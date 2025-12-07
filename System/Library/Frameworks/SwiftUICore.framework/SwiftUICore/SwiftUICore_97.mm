uint64_t closure #1 in variable initialization expression of static UniversalGestureRelationshipsFeature.userDefaultsValue()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x193ABEC20](0xD00000000000002FLL, 0x800000018DD79710);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v8, v9);
    outlined destroy of Any?(v9);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x193ABEC20](0xD00000000000002FLL, 0x800000018DD79710);
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    outlined destroy of Any?(v9);
    return 2;
  }

  return v6;
}

uint64_t specialized static UnifiedHitTestingFeature.isEnabled.getter()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v1 = 1;
    return v1 & 1;
  }

  if (static Semantics.forced >= v0)
  {
    goto LABEL_11;
  }

LABEL_7:
  swift_beginAccess();
  v1 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_9:
      v1 = 0;
      return v1 & 1;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v1 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v1 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v5[3] = &type metadata for GestureContainerFeature.IOSFeature;
        lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v5[4] = v3;
        v4 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v5);
        if ((v4 & 1) == 0)
        {
          goto LABEL_9;
        }

        if (byte_1ED53C51C)
        {
          v1 = dyld_program_sdk_at_least();
        }

        else
        {
          v1 = static Semantics.forced >= v0;
        }
      }
    }
  }

  return v1 & 1;
}

BOOL specialized static SimultaneousGestureAppliesToChildrenOnlyFeature.isEnabled.getter()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (static Semantics.forced < v0)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < static Semantics.v7)
    {
      goto LABEL_15;
    }

LABEL_17:
    v1 = 0;
    return (v1 & 1) == 0;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_17;
  }

LABEL_15:
  swift_beginAccess();
  v1 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride == 2)
  {
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_17;
    }

    if (one-time initialization token for envValue != -1)
    {
      swift_once();
    }

    v1 = static GestureContainerFeature.envValue;
    if (static GestureContainerFeature.envValue == 2)
    {
      if (one-time initialization token for userDefaultsValue != -1)
      {
        swift_once();
      }

      v1 = static GestureContainerFeature.userDefaultsValue;
      if (static GestureContainerFeature.userDefaultsValue == 2)
      {
        v5[3] = &type metadata for GestureContainerFeature.IOSFeature;
        lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
        v5[4] = v3;
        v4 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v5);
        if ((v4 & 1) == 0)
        {
          goto LABEL_17;
        }

        if (byte_1ED53C51C)
        {
          v1 = dyld_program_sdk_at_least();
        }

        else
        {
          v1 = static Semantics.forced >= v0;
        }
      }
    }
  }

  return (v1 & 1) == 0;
}

double static KeyframesBuilder.buildArray<A>(_:)@<D0>(void *a2@<X8>)
{
  _ViewInputs.base.modify();
  *a2 = v3;

  return result;
}

uint64_t static KeyframesBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return KeyframeTrackContentBuilder.Conditional.init(first:)(v15, a2, a2, a3, a4, AssociatedConformanceWitness, a5, a6, a7);
}

uint64_t static KeyframesBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return KeyframeTrackContentBuilder.Conditional.init(second:)(v15, a2, a2, a3, a4, AssociatedConformanceWitness, a5, a6, a7);
}

uint64_t static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(a1, a2, a3, a4, a5, a6, a7, MergedKeyframeTrackContent.init(first:second:));
}

{
  return static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(a1, a2, a3, a4, a5, a6, a7, CombinedKeyframes.init(first:second:));
}

uint64_t closure #1 in static KeyframesBuilder.buildFinalResult<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)(v10, v11, v9);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)(v9, a3, x8_0);
  return (*(v7 + 8))(v9, a3);
}

uint64_t static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a8;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  (*(v14 + 16))(v16, a2, a5);
  return v24(v20, v16, a3, a4, a5, a6, a7);
}

uint64_t CombinedKeyframes.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for CombinedKeyframes(0, v17);
  return (*(*(a5 - 8) + 32))(a8 + *(v15 + 60), a2, a5);
}

uint64_t *initializeBufferWithCopyOfBuffer for CombinedKeyframes(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t assignWithTake for CombinedKeyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

Swift::Int ButtonSizing.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void EnvironmentValues.buttonSizing.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I13_buttonSizing014_B3F6B53DB8F35N17F9F84F34C99C79B2CLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(v2, a1);
  }
}

void key path getter for EnvironmentValues.buttonSizing : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I13_buttonSizing014_B3F6B53DB8F35N17F9F84F34C99C79B2CLLVG_Tt1g5(v3, &v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(*a1, &v4);
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.buttonSizing : EnvironmentValues(unsigned __int8 *a1, Swift::UInt *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K13_buttonSizing014_B3F6B53DB8F35P17F9F84F34C99C79B2CLLVG_Ttg5(v3, *a2);
  }

  return result;
}

double View.buttonSizing(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

uint64_t FlexibleButtonFrameLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 17);
  v9 = *v5;
  LODWORD(v19) = *a5;
  v20 = v6;
  LOBYTE(v21) = v7;
  BYTE1(v21) = v8;
  if (*(v6 + 16))
  {
    v13 = result;
    LayoutSubviews.subscript.getter(0, &v23);
    v14 = v23;
    v15 = v24;
    v16 = v25;
    if (v9 == 2)
    {
      if (a2)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = *&v13;
      }

      v19 = 0;
      a4 = 1;
      LOBYTE(v20) = 1;
      v21 = 0;
      v22 = 1;
      LayoutProxy.size(in:)(&v19);
      a2 = 0;
      a3 = 0;
      if (v18 >= v17)
      {
        v18 = v17;
      }

      *&v13 = v18;
    }

    v23 = v14;
    v24 = v15;
    v25 = v16;
    v19 = v13;
    LOBYTE(v20) = a2 & 1;
    v21 = a3;
    v22 = a4 & 1;
    return LayoutProxy.size(in:)(&v19);
  }

  return result;
}

uint64_t FlexibleButtonFrameModifier.init(defaultSizing:)@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 9) = v4;
  return result;
}

void FlexibleButtonFrameModifier.body(content:)(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  specialized Environment.wrappedValue.getter(v3, v4, &v7);
  v6 = v7;
  if (!v7)
  {
    v6 = v5;
  }

  *a1 = v6;
}

void protocol witness for ViewModifier.body(content:) in conformance FlexibleButtonFrameModifier(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  specialized Environment.wrappedValue.getter(v3, v4, &v7);
  v6 = v7;
  if (!v7)
  {
    v6 = v5;
  }

  *a1 = v6;
}

double View.flexibleButtonFrame(default:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  View.modifier<A>(_:)();
  return outlined consume of Environment<ButtonSizing>.Content(KeyPath, 0);
}

double View._controlSizingBehavior(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  return View.buttonSizing(_:)(&v6, a2, a3);
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 34) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 24);
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = v3;
    *(a1 + 32) = v2 & 1;
    *(a1 + 33) = HIBYTE(v2) & 1;
    outlined init with copy of Environment<OpenURLAction>(v1, &v9);
  }

  else
  {
    outlined init with copy of Environment<OpenURLAction>(v1, &v9);
    v5 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v6 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x414C52556E65704FLL, 0xED00006E6F697463, &v9);
      _os_log_impl(&dword_18D018000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AC4820](v8, -1, -1);
      MEMORY[0x193AC4820](v7, -1, -1);
    }

    EnvironmentValues.init()(&v9);
    swift_getAtKeyPath();
    outlined destroy of Environment<EdgeInsets>(v1, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata for OpenURLAction);
  }

  return result;
}

void *specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v6 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD79790, &v11);
      _os_log_impl(&dword_18D018000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AC4820](v8, -1, -1);
      MEMORY[0x193AC4820](v7, -1, -1);
    }

    EnvironmentValues.init()(&v10);
    swift_getAtKeyPath();
    outlined consume of Environment<String?>.Content(a1, a2, 0);

    return v11;
  }

  return a1;
}

double specialized Environment.wrappedValue.getter()
{
  if (v0[32] == 1)
  {
    return *v0;
  }

  v2 = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  v3 = static Log.runtimeIssuesLog;
  if (os_log_type_enabled(static Log.runtimeIssuesLog, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = *&v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736E4965676445, 0xEA00000000007374, &v7);
    _os_log_impl(&dword_18D018000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x193AC4820](v5, -1, -1);
    MEMORY[0x193AC4820](v4, -1, -1);
  }

  EnvironmentValues.init()(&v6);
  swift_getAtKeyPath();
  outlined destroy of Environment<EdgeInsets>(v0, &lazy cache variable for type metadata for Environment<EdgeInsets>, &type metadata for EdgeInsets);

  return v7;
}

void specialized FlexibleButtonFrameLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  LODWORD(v17) = *a1;
  *(&v17 + 1) = v5;
  LOBYTE(v18) = v6;
  BYTE1(v18) = v7;
  if (*(v5 + 16))
  {
    LayoutSubviews.subscript.getter(0, &v12);
    v20 = v12;
    v21 = v13;
    v15 = v12;
    v16 = DWORD2(v12);
    *&v12 = a4;
    BYTE8(v12) = 0;
    *&v13 = a5;
    BYTE8(v13) = 0;
    LayoutProxy.dimensions(in:)(&v12, &v17);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    LayoutSubview.place(at:anchor:dimensions:)(&v12, a2, a3, 0.0, 0.0);
  }
}

void lazy protocol witness table accessor for type ButtonSizing and conformance ButtonSizing()
{
  if (!lazy protocol witness table cache variable for type ButtonSizing and conformance ButtonSizing)
  {
    swift_getWitnessTable(protocol conformance descriptor for ButtonSizing, &type metadata for ButtonSizing, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ButtonSizing and conformance ButtonSizing);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for FlexibleButtonFrameModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithCopy for FlexibleButtonFrameModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<ButtonSizing>.Content(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for FlexibleButtonFrameModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<ButtonSizing>.Content(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for FlexibleButtonFrameModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for FlexibleButtonFrameModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>()
{
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(255);
    v4[0] = &protocol witness table for _LayoutRoot<A>;
    v4[1] = &protocol witness table for _ViewModifier_Content<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>> and conformance <> _VariadicView.Tree<A, B>);
  }
}

void lazy protocol witness table accessor for type ButtonSizing.Value and conformance ButtonSizing.Value()
{
  if (!lazy protocol witness table cache variable for type ButtonSizing.Value and conformance ButtonSizing.Value)
  {
    swift_getWitnessTable(protocol conformance descriptor for ButtonSizing.Value, &unk_1F0060370, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ButtonSizing.Value and conformance ButtonSizing.Value);
  }
}

void lazy protocol witness table accessor for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value()
{
  if (!lazy protocol witness table cache variable for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value)
  {
    swift_getWitnessTable(protocol conformance descriptor for ControlSizingBehavior_v0.Value, &unk_1F00602E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ControlSizingBehavior_v0.Value and conformance ControlSizingBehavior_v0.Value);
  }
}

uint64_t outlined init with copy of Environment<OpenURLAction>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(0, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata for OpenURLAction, type metadata accessor for Environment);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of Environment<EdgeInsets>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(0, a2, a3, type metadata accessor for Environment);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static AnyTransition.move(edge:)(char a1)
{
  type metadata accessor for TransitionBox<MoveTransition>(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void type metadata accessor for TransitionBox<MoveTransition>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TransitionBox<MoveTransition>)
  {
    lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
    v4 = type metadata accessor for TransitionBox(a1, &type metadata for MoveTransition, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransitionBox<MoveTransition>);
    }
  }
}

void lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition()
{
  if (!lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition)
  {
    swift_getWitnessTable(protocol conformance descriptor for MoveTransition, &type metadata for MoveTransition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition);
  }
}

CGSize __swiftcall Edge.offsetForCanvasSize(_:)(CGSize a1)
{
  if (v1 == 2)
  {
    width = 0.0;
  }

  else
  {
    width = a1.width;
  }

  if (v1 == 2)
  {
    height = a1.height;
  }

  else
  {
    height = 0.0;
  }

  v4 = -a1.height;
  v5 = -a1.width;
  if (v1)
  {
    v4 = 0.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v1 > 1u)
  {
    v5 = width;
    v4 = height;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

void MoveTransition.MoveLayout.placement(of:in:)(unsigned int *a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 48);
  v8 = 0.0;
  if (a2 == 4)
  {
LABEL_2:
    v9 = 0.0;
    goto LABEL_3;
  }

  if (a1[12])
  {
    v13 = a1;
    v14 = a2;
    InputValue = AGGraphGetInputValue();
    a2 = v14;
    a1 = v13;
    v9 = *InputValue;
    v16 = InputValue[1];
  }

  else
  {
    v9 = *(a1 + 2);
    v16 = *(a1 + 3);
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = -v9;
      goto LABEL_3;
    }

    v8 = -v16;
    goto LABEL_2;
  }

  if (a2 == 2)
  {
    v9 = 0.0;
    v8 = v16;
  }

LABEL_3:
  v21 = v4;
  v22 = *(a1 + 1);
  v23 = a1[3];
  v24 = v5;
  v25 = v6;
  v26 = *(a1 + 2);
  v27 = v7;
  PlacementContext.proposedSize.getter(&v17);
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *a3 = v17;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = v8;
}

void MoveTransition.body(content:phase:)(char a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
}

void MoveTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v7 = *v1;
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18DDA6EB0;
    if (v7 == 2)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }

    if (v7 == 2)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = -v5;
    v12 = -v6;
    if (v7)
    {
      v11 = 0.0;
    }

    else
    {
      v12 = 0.0;
    }

    if (v7 <= 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    if (v7 <= 1)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    v4 = v8;
    v15 = v13;
    v16 = v14;
    *(v8 + 32) = 3;
    *(v8 + 36) = v15;
    *(v8 + 40) = 0;
    *(v8 + 44) = v16;
    *(v8 + 48) = 0;
    *(v8 + 52) = 0x3F80000000000000;
    *(v8 + 60) = 3;
    v3 = 1;
  }

  outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
}

void protocol witness for Transition.body(content:phase:) in conformance MoveTransition(char a1@<W1>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
}

void lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>(255);
    v4[0] = &protocol witness table for PlaceholderContentView<A>;
    v4[1] = &protocol witness table for MoveTransition.MoveLayout;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<MoveTransition>, &type metadata for MoveTransition, type metadata accessor for PlaceholderContentView);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for MoveTransition.MoveLayout, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<MoveTransition>, MoveTransition.MoveLayout>);
    }
  }
}

uint64_t getEnumTagSinglePayload for MoveTransition.MoveLayout(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

double HitTestableEvent.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for HitTestableEventType, &protocol descriptor for HitTestableEventType);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v12);
    outlined init with copy of AnyTrackedValue(v12, v6);
    HitTestableEvent.init(_:)(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v4 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v8[0];
    result = *(v8 + 9);
    *(a2 + 41) = *(v8 + 9);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of HitTestableEventType?(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t outlined destroy of HitTestableEventType?(uint64_t a1)
{
  type metadata accessor for HitTestableEventType?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HitTestableEventType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HitTestableEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for HitTestableEventType, &protocol descriptor for HitTestableEventType);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HitTestableEventType?);
    }
  }
}

double HitTestableEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double HitTestableEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double HitTestableEvent.binding.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void HitTestableEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void HitTestableEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t HitTestableEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t HitTestableEvent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 1;
  v8 = *(a3 + 8);
  v8[1](&v12, a2, v8);
  *a4 = v12;
  v8[2](&v12, a2, v8);
  *(a4 + 8) = v12;
  v8[3](&v12, a2, v8);
  *(a4 + 16) = v12;
  *(a4 + 24) = (*(a3 + 16))(a2, a3);
  *(a4 + 32) = v9;
  *(a4 + 40) = (*(a3 + 24))(a2, a3);
  v8[6](&v12, a2, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v11 = v13;
  *(a4 + 48) = v12;
  *(a4 + 56) = v11;
  return result;
}

uint64_t HitTestableEvent.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v29, v5);
  v6 = v29;
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(*(v7 + 8) + 16))(&v29, v8);
  v9 = v29;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(*(v10 + 8) + 24))(&v29, v11);
  v12 = v29;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v17 = v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 24))(v18, v19);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(*(v21 + 8) + 48))(&v29, v22);
  v23 = v29;
  LOBYTE(v22) = v30;
  LOBYTE(v26) = v6;
  *(&v26 + 1) = v9;
  *&v27 = v12;
  *(&v27 + 1) = v15;
  *v28 = v17;
  *&v28[8] = v20;
  *&v28[16] = v29;
  v28[24] = v30;
  v24 = v27;
  *a2 = v26;
  a2[1] = v24;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  outlined init with copy of HitTestableEvent(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v29) = v6;
  v30 = v9;
  v31 = v12;
  v32 = v15;
  v33 = v17;
  v34 = v20;
  v35 = v23;
  v36 = v22;
  return outlined destroy of HitTestableEvent(&v29);
}

uint64_t outlined init with copy of HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v4;

  return a2;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance HitTestableEvent(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t specialized static HitTestableEvent.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return result;
  }

  v4 = *(a1 + 2);
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 6);
  v9 = *(a1 + 56);
  v10 = *(a2 + 2);
  v12 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  if (!v4)
  {
    if (!v10)
    {
      if (v6 != v12 || v5 != v11 || v7 != v13)
      {
        return 0;
      }

      goto LABEL_26;
    }

LABEL_15:

    return 0;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  result = 0;
  if (v4 == v10)
  {
    v14 = v6 == v12 && v5 == v11;
    if (v14 && v7 == v13)
    {
LABEL_26:
      if (v9)
      {
        if (a2[7])
        {
          return 1;
        }
      }

      else
      {
        if (v8 == *(a2 + 6))
        {
          v18 = *(a2 + 56);
        }

        else
        {
          v18 = 1;
        }

        if ((v18 & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t assignWithTake for HitTestableEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for HitTestableEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for HitTestableEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void one-time initialization function for moduleLookupCache()
{
  type metadata accessor for ThreadSpecific<[UnsafeRawPointer : String]>(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  pthread_key_create((v0 + 16), @objc closure #1 in ThreadSpecific.init(_:));
  swift_endAccess();
  static Tracing.moduleLookupCache = v0;
}

uint64_t traceBody<A>(_:body:)@<X0>(unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v77 = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for OSSignpostID();
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v55 = static Signpost.bodyInvoke;
    v72 = static Signpost.bodyInvoke;
    v53 = *(&static Signpost.bodyInvoke + 1);
    v52 = word_1ED539040;
    v73 = word_1ED539040;
    v54 = HIBYTE(word_1ED539040);
    v74 = byte_1ED539042;
    v12 = Signpost.isEnabled.getter();
    if ((v12 & 1) == 0)
    {
      return (a2)(v12);
    }

    v49 = a4;
    v50 = a3;
    v51 = a2;
    static OSSignpostID.exclusive.getter();
    v13 = static os_signpost_type_t.begin.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    a3 = swift_allocObject();
    *(a3 + 1) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    a3[7] = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    a3[8] = v18;
    a3[4] = v14;
    a3[5] = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    a3[12] = v17;
    a3[13] = v19;
    a3[9] = v20;
    a3[10] = v21;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v54)
    {
      break;
    }

    v46 = _signpostLog;
    v24 = v55;
    if (v55 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    a4 = bswap32(v55) | (4 * WORD1(v55));
    a2 = v13;
    v48 = v7;
    v27 = v7 + 16;
    v26 = *(v7 + 16);
    v47 = v11;
    v28 = v11;
    v11 = v25;
    v56 = v26;
    v29 = v26(v64, v28, v63);
    v7 = 0;
    LOBYTE(v67[0]) = 1;
    v61 = 16 * v11;
    v57 = v27;
    v62 = (v27 - 8);
    v59 = v24;
    v60 = a3 + 4;
    v58 = v11;
LABEL_12:
    v65 = &v46;
    MEMORY[0x1EEE9AC00](v29);
    v31 = &v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v31 + 8;
    v33 = v11;
    v34 = v31 + 8;
    do
    {
      *(v34 - 1) = 0;
      *v34 = 0;
      v34 += 16;
      --v33;
    }

    while (v33);
    v35 = &v60[5 * v7];
    while (1)
    {
      v36 = a3[2];
      if (v7 == v36)
      {
        LOBYTE(v67[0]) = 0;
LABEL_20:
        v40 = v59;
        if (v59 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v31[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v40 != 20 && v31[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v41 = v63;
        v42 = *v62;
        v43 = v64;
        (*v62)(v64, v63);
        v44 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
        v29 = v56(v43, v44, v41);
        v11 = v58;
        if ((v67[0] & 1) == 0)
        {
          v42(v64, v63);

          v7 = v48;
          v11 = v47;
          (v51)(v45);
          goto LABEL_35;
        }

        goto LABEL_12;
      }

      if (v7 >= v36)
      {
        break;
      }

      ++v7;
      outlined init with copy of AnyTrackedValue(v35, &v72);
      v37 = v75;
      v38 = v76;
      __swift_project_boxed_opaque_existential_1(&v72, v75);
      *(v32 - 1) = CVarArg.kdebugValue(_:)(a4 | a2, v37, v38);
      *v32 = v39 & 1;
      v32 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v72);
      v35 += 40;
      if (!--v11)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v71 = v13;
  v69 = _signpostLog;
  v70 = &dword_18D018000;
  *&v72 = v55;
  *(&v72 + 1) = v53;
  LOBYTE(v73) = v52;
  v67[0] = "%{public}@.body [in %{public}@]";
  v67[1] = 31;
  v68 = 2;
  v66 = a3;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v71, &v70, &v69, &v72, v11, v67, &v66);

  (v51)(v22);
LABEL_35:
  static os_signpost_type_t.end.getter();
  if (v54)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  return (*(v7 + 8))(v11, v63);
}

uint64_t traceRuleBody<A>(_:body:)@<X0>(void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v60 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v49 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v12 = static Signpost.bodyInvoke;
  v13 = word_1ED539040;
  v14 = HIBYTE(word_1ED539040);
  v15 = byte_1ED539042;
  LODWORD(v61) = static os_signpost_type_t.begin.getter();
  v68 = v12;
  v69 = v13;
  v70 = v14;
  v71 = v15;
  if (Signpost.isEnabled.getter())
  {
    v49[0] = a4;
    v49[1] = a3;
    v50 = a2;
    static OSSignpostID.exclusive.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDAB4C0;
    v17 = AGTypeID.description.getter();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v22 = v21;
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v23 = specialized static Tracing.libraryName(defining:)();
    *(v16 + 96) = v20;
    *(v16 + 104) = v22;
    *(v16 + 72) = v23;
    *(v16 + 80) = v24;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v14)
      {
LABEL_6:
        v67 = v61;
        v65 = _signpostLog;
        v66 = &dword_18D018000;
        v68 = v12;
        v69 = v13;
        v63[0] = "%{public}@.body [in %{public}@]";
        v63[1] = 31;
        v64 = 2;
        v62 = v16;
        v25 = v51;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v67, &v66, &v65, &v68, v51, v63, &v62);
        (*(v59 + 8))(v25, v58);
LABEL_35:

        a2 = v50;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    if (v12 == 20)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    v27 = bswap32(v12) | (4 * WORD1(v12));
    v28 = v61;
    v29 = v59 + 16;
    v52 = *(v59 + 16);
    v30 = v52(v60, v51, v58);
    v31 = 0;
    LOBYTE(v63[0]) = 1;
    v59 = v29;
    v56 = 16 * v26;
    v57 = (v29 - 8);
    v54 = *(&v12 + 1);
    v55 = v16 + 32;
    v53 = v26;
    do
    {
      v61 = v49;
      MEMORY[0x1EEE9AC00](v30);
      v33 = v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v33 + 8;
      v35 = v26;
      v36 = v33 + 8;
      do
      {
        *(v36 - 1) = 0;
        *v36 = 0;
        v36 += 16;
        --v35;
      }

      while (v35);
      v37 = v55 + 40 * v31;
      while (1)
      {
        v38 = *(v16 + 16);
        if (v31 == v38)
        {
          break;
        }

        if (v31 >= v38)
        {
          __break(1u);
        }

        ++v31;
        outlined init with copy of AnyTrackedValue(v37, &v68);
        v39 = v72;
        v40 = v73;
        __swift_project_boxed_opaque_existential_1(&v68, v72);
        *(v34 - 1) = CVarArg.kdebugValue(_:)(v27 | v28, v39, v40);
        *v34 = v41 & 1;
        v34 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v37 += 40;
        if (!--v26)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v63[0]) = 0;
LABEL_20:
      v42 = v54;
      if (v54 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v26 = v53;
      if (v33[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v33[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v33[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v42 != 20 && v33[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v43 = v58;
      v44 = *v57;
      v45 = v60;
      (*v57)(v60, v58);
      v46 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
      v30 = v52(v45, v46, v43);
    }

    while ((v63[0] & 1) != 0);
    v47 = v58;
    v44(v60, v58);
    v44(v51, v47);
    goto LABEL_35;
  }

LABEL_36:
  a2();
  return $defer #1 <A>() in traceRuleBody<A>(_:body:)();
}

uint64_t ViewGraph.graphIdentity.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return AGGraphGetCounter();
  }

  __break(1u);
  return result;
}

uint64_t DynamicProperty.instrumentsLinkValueDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(v14 - v9, v1, a1, v7);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty, &protocol descriptor for InstrumentsDescriptiveDynamicProperty);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = InstrumentsDescriptiveDynamicProperty.instrumentsLinkValueDescription.getter(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    outlined destroy of InstrumentsDescriptiveDynamicProperty?(v14);
    (v8)(v5, v1, a1);
    return String.init<A>(describing:)();
  }
}

uint64_t InstrumentsDescriptiveDynamicProperty.instrumentsLinkValueDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4(v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty, &protocol descriptor for InstrumentsDescriptiveDynamicProperty);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = InstrumentsDescriptiveDynamicProperty.instrumentsLinkValueDescription.getter(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of InstrumentsDescriptiveDynamicProperty?(v9);
    (v4)(v12, a1, a2);
    return String.init<A>(describing:)();
  }
}

uint64_t State._instrumentsLinkValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, v3);
}

double Environment._instrumentsLinkValue.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = *(a1 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return Environment.wrappedValue.getter(a1, v4, v5, boxed_opaque_existential_1);
}

uint64_t Binding._instrumentsLinkValue.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, v2 + v3, v4);
}

const char *specialized static Tracing.libraryName(defining:)()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = 0x206E776F6E6B6E55;
  v1 = MEMORY[0x193AC2090]();
  if (!v1)
  {
    return v0;
  }

  v2 = v1;
  if (one-time initialization token for moduleLookupCache != -1)
  {
    swift_once();
  }

  v3 = static Tracing.moduleLookupCache;
  swift_beginAccess();
  v4 = pthread_getspecific(*(v3 + 2));
  if (!v4)
  {
    v5 = swift_slowAlloc();
    pthread_setspecific(*(v3 + 2), v5);
    type metadata accessor for [UnsafeRawPointer : String]();
    v27.dli_saddr = v6;
    v27.dli_fname = *(v3 + 3);
    outlined init with take of Any(&v27, v5);

    v4 = v5;
  }

  outlined init with copy of Any(v4, &v27);
  type metadata accessor for [UnsafeRawPointer : String]();
  v8 = v7;
  swift_dynamicCast();
  if (*(v25 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v10)
    {
      v0 = *(*(v25 + 56) + 16 * v9);

LABEL_16:

      return v0;
    }
  }

  memset(&v27, 0, sizeof(v27));
  if (!dladdr(v2, &v27))
  {
    return v0;
  }

  result = v27.dli_fname;
  if (v27.dli_fname)
  {
    v12 = String.init(cString:)();
    v13 = MEMORY[0x193ABEC20](v12);

    v14 = [v13 lastPathComponent];

    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = *(v3 + 2);

    v18 = pthread_getspecific(v17);
    if (!v18)
    {
      v19 = swift_slowAlloc();
      pthread_setspecific(*(v3 + 2), v19);
      v26 = v8;
      *&v25 = *(v3 + 3);
      outlined init with take of Any(&v25, v19);

      v18 = v19;
    }

    outlined init with copy of Any(v18, &v25);
    swift_dynamicCast();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0, v16, v2, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    v22 = pthread_getspecific(*(v3 + 2));
    if (!v22)
    {
      v23 = swift_slowAlloc();
      pthread_setspecific(*(v3 + 2), v23);
      v26 = v8;
      *&v25 = *(v3 + 3);
      outlined init with take of Any(&v25, v23);

      v22 = v23;
    }

    *v22 = v21;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of InstrumentsDescriptiveDynamicProperty?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty?, &lazy cache variable for type metadata for InstrumentsDescriptiveDynamicProperty, &protocol descriptor for InstrumentsDescriptiveDynamicProperty, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double CGSize.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double CGSize.flushingNegatives.getter(double result)
{
  if (result <= 0.0)
  {
    return 0.0;
  }

  return result;
}

Swift::Bool __swiftcall CGSize.contains(point:)(CGPoint point)
{
  v3 = fmin(point.x, point.y);
  v4 = point.x < v1;
  if (point.y >= v2)
  {
    v4 = 0;
  }

  return v3 >= 0.0 && v4;
}

double CGSize.scaled(by:)(double a1, double a2)
{
  v2 = a1 * a2;
  if (a2 == 0.0)
  {
    return 0.0;
  }

  return v2;
}

CGSize __swiftcall CGSize.scaled(by:)(CGSize by)
{
  v3 = by.width * v1;
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = by.height * v2;
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

double CGSize.flushingNaNs.getter(int8x16_t a1, double a2)
{
  *&a1.i64[1] = a2;
  v2 = vdupq_n_s64(0x7FF0000000000000uLL);
  a1.i64[0] = vbslq_s8(vceqq_s64(vandq_s8(a1, v2), v2), vandq_s8(a1, vceqzq_s64(vandq_s8(a1, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), a1).u64[0];
  return *a1.i64;
}

double (*CGSize.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

double CGSize.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

double static CGSize.invalidValue.getter()
{
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  return *&static CGSize.invalidValue;
}

__n128 (*HashableSize.value.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CGPoint;
}

uint64_t HashableSize.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

Swift::Int HashableSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableSize(uint64_t a1)
{
  Hasher.init(_seed:)();
  HashableSize.hash(into:)();
  return Hasher._finalize()();
}

double (*CGSize.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return CGPoint.animatableData.modify;
}

double *CGSize.encode(to:)(double *result, double a2, double a3)
{
  v4 = result;
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = fabs(a2);
  if (v6 >= 65536.0)
  {
    v7 = 9;
  }

  else
  {
    v7 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v7);
  if (v6 >= 65536.0)
  {
    v9 = *(v4 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v4 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
      }

      else
      {
        *(v4 + 1) = result;
        *(*v4 + v9) = v5;
      }

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v4 + 1);
  result = (v8 + 4);
  if (__OFADD__(v8, 4))
  {
    __break(1u);
    goto LABEL_25;
  }

  *&v5 = v5;
  if (*(v4 + 2) < result)
  {
    goto LABEL_28;
  }

  *(v4 + 1) = result;
  *(*v4 + v8) = LODWORD(v5);
LABEL_12:
  while (a3 != 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 65536.0)
    {
      v10 = 17;
    }

    else
    {
      v10 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v5 >= 65536.0)
    {
      v13 = *(v4 + 1);
      result = (v13 + 8);
      if (!__OFADD__(v13, 8))
      {
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = a3;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v13) = a3;
        }

        return result;
      }
    }

    else
    {
      v11 = *(v4 + 1);
      result = (v11 + 4);
      if (!__OFADD__(v11, 4))
      {
        v12 = a3;
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v11) = v12;
        }

        return result;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v5);
  }

  return result;
}

void lazy protocol witness table accessor for type HashableSize and conformance HashableSize()
{
  if (!lazy protocol witness table cache variable for type HashableSize and conformance HashableSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for HashableSize, &type metadata for HashableSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HashableSize and conformance HashableSize);
  }
}

double LazySubviewPrefetcher.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;

  return result;
}

void closure #1 in LazySubviewPrefetcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v10 = *(a1 + 44);
  v11 = type metadata accessor for LazySubviewPrefetcher(0, a5, a6, a4);
  type metadata accessor for LazyLayoutViewCache();
  if (v10 != *(*AGGraphGetValue() + 228))
  {
    *(a1 + 44) = *(*AGGraphGetValue() + 228);
    LazyPrefetchState.reset()();
  }

  v12 = *MEMORY[0x1E698D3F8];
  while (1)
  {
    v14[0] = a2;
    v14[1] = a3;
    v15 = v6;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v12)
    {
      break;
    }

    LazySubviewPrefetcher.update(info:owner:)(v14, CurrentAttribute, v11);
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t LazyPrefetchState.reset()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v2 + 2));
    v3 = *v0;
  }

  else
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI21LazyPrefetchOperation33_903609954F063220F2F0A01B453B6D0BLLO_Tt1g5(0, *(v2 + 3) >> 1);

    *v0 = v3;
  }

  *(v0 + 8) = xmmword_18DD85550;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v7;
  v3[v6 + 32] = 0;
  *v0 = v3;
  v8 = *(v3 + 3);
  v9 = v6 + 2;
  if (v9 > (v8 >> 1))
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v9;
  v3[v7 + 32] = 2;
  *v0 = v3;
  return result;
}

void LazySubviewPrefetcher.update(info:owner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v292 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for OSSignpostID();
  v282 = *(v8 - 8);
  v283 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v256 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v256 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v278 = &v256 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v281 = &v256 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v256 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v256 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v279 = &v256 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v256 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v277 = (&v256 - v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v280 = &v256 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v256 - v40;
  v42 = *a1;
  v43 = *(a1 + 8);
  v44 = *(a1 + 16);
  v45 = *(v4 + 48);
  *(v4 + 72) = 0;
  if (*(v45 + 16))
  {
    v268 = v41;
    v269 = v39;
    v265 = v44;
    v266 = v43;
    v267 = v42;
    v263 = v38;
    v264 = v37;
    v46 = specialized Array._customRemoveLast()();
    if (v46 == 4)
    {
      v46 = specialized Array.remove(at:)(*(*(v4 + 48) + 16) - 1);
    }

    v286[0] = 1;
    v276 = a3;
    v275 = v46;
    if (v46 > 1u)
    {
      LOBYTE(v287) = 0;
      if (v46 == 2)
      {
        type metadata accessor for LazyLayoutViewCache();
        AGGraphGetValue();

        specialized LazyLayoutViewCache.advancePrefetchPhaseForRemoval(notify:)(v57, a2, &v287, &v285);
      }

      else
      {
        type metadata accessor for LazyLayoutViewCache();
        AGGraphGetValue();

        specialized LazyLayoutViewCache.advancePrefetchPhaseForDisplay(notify:)(v64, a2, &v287, &v285);
      }

      if (v285 == 1)
      {
        v286[0] = 0;
      }

      if ((v287 & 1) == 0)
      {
        *(v4 + 72) = 1;
      }

      goto LABEL_269;
    }

    v260 = v13;
    v261 = (v4 + 48);
    v47 = &v287;
    if (v46)
    {
      v268 = v10;
      if (one-time initialization token for prefetchOutputs != -1)
      {
        swift_once();
      }

      v48 = &static Signpost.prefetchOutputs;
      v58 = *(&static Signpost.prefetchOutputs + 1);
      v50 = static Signpost.prefetchOutputs;
      LOBYTE(v49) = word_1EAB0EAE0;
      LOBYTE(v47) = HIBYTE(word_1EAB0EAE0);
      v59 = byte_1EAB0EAE2;
      LODWORD(a3) = static os_signpost_type_t.begin.getter();
      v287 = v50;
      v288 = v58;
      v289 = v49;
      v290 = v47;
      v291 = v59;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
LABEL_56:
        v272 = *(v4 + 48);
        type metadata accessor for LazyLayoutViewCache();
        AGGraphGetValue();

        LazyLayoutViewCache.prefetchOutputs()();

        v84 = v287;
        v85 = v48;
        v86 = *v48;
        v87 = *(v48 + 1);
        v88 = *(v85 + 16);
        LOBYTE(v89) = *(v85 + 17);
        v90 = *(v85 + 18);
        LOBYTE(v49) = static os_signpost_type_t.end.getter();
        if (v84 == 1)
        {
          v287 = v86;
          v288 = v87;
          v289 = v88;
          v290 = v89;
          v291 = v90;
          if ((Signpost.isEnabled.getter() & 1) == 0)
          {
            goto LABEL_205;
          }

          static OSSignpostID.exclusive.getter();
          type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDAB4C0;
          *(inited + 32) = a2;
          v92 = (inited + 32);
          v93 = MEMORY[0x1E69E76D0];
          *(inited + 56) = MEMORY[0x1E69E7668];
          *(inited + 64) = v93;
          v94 = MEMORY[0x1E69E7358];
          *(inited + 96) = MEMORY[0x1E69E72F0];
          *(inited + 104) = v94;
          v284 = inited;
          *(inited + 72) = 0;
          if (one-time initialization token for _signpostLog == -1)
          {
            if ((v89 & 1) == 0)
            {
              goto LABEL_113;
            }

            goto LABEL_60;
          }

LABEL_112:
          swift_once();
          if ((v89 & 1) == 0)
          {
LABEL_113:
            v259 = v4;
            v148 = v49;
            LOBYTE(v49) = v86;
            if (v86 == 20)
            {
              v149 = 3;
            }

            else
            {
              v149 = 4;
            }

            v4 = bswap32(v86) | (4 * (v86 >> 16));
            v150 = v148;
            v152 = v282 + 16;
            v151 = *(v282 + 2);
            v271 = v92;
            v272 = v151;
            (v151)(v278, v264, v283);
            LOBYTE(v287) = 1;
            v282 = v152;
            v279 = (16 * v149);
            v280 = v152 - 8;

            v97 = 0;
            v277 = (v153 + 32);
            v273 = v149;
            v274 = v86;
            do
            {
              v281 = &v256;
              MEMORY[0x1EEE9AC00](v153);
              v89 = &v256 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
              v86 = (v89 + 8);
              v155 = v149;
              v156 = (v89 + 8);
              do
              {
                *(v156 - 1) = 0;
                *v156 = 0;
                v156 += 16;
                --v155;
              }

              while (v155);
              v157 = &v277[5 * v97];
              while (1)
              {
                v158 = *(v284 + 16);
                if (v97 == v158)
                {
                  break;
                }

                if (v97 >= v158)
                {
                  __break(1u);
                  goto LABEL_141;
                }

                ++v97;
                v159 = v157[3];
                v49 = v157[4];
                __swift_project_boxed_opaque_existential_1(v157, v159);
                *(v86 - 1) = CVarArg.kdebugValue(_:)(v4 | v150, v159, v49);
                *v86 = v160 & 1;
                v86 += 16;
                v157 += 5;
                if (!--v149)
                {
                  goto LABEL_125;
                }
              }

              LOBYTE(v287) = 0;
LABEL_125:
              v49 = v274;
              if (v274 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (*(v89 + 8) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v89 + 24) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v89 + 40) == 1)
              {
                kdebug_trace_string();
              }

              if (v49 != 20 && *(v89 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v161 = *v280;
              v162 = v278;
              v163 = v283;
              (*v280)(v278, v283);
              v164 = __swift_project_value_buffer(v163, static OSSignpostID.continuation);
              v153 = (v272)(v162, v164, v163);
              v149 = v273;
            }

            while ((v287 & 1) != 0);

            v165 = v283;
            (v161)(v278, v283);
            (v161)(v264, v165);
            swift_setDeallocating();
            type metadata accessor for CVarArg();
            swift_arrayDestroy();
LABEL_204:
            v4 = v259;
            goto LABEL_205;
          }

LABEL_60:
          swift_setDeallocating();
          type metadata accessor for CVarArg();
          swift_arrayDestroy();
          v95 = v264;
          os_signpost(_:dso:log:name:signpostID:)();
          (*(v282 + 1))(v95, v283);
LABEL_102:
          v286[0] = 0;
LABEL_269:
          $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(v286, v4, v275);
          return;
        }

        v287 = v86;
        v288 = v87;
        v289 = v88;
        v290 = v89;
        v291 = v90;
        v96 = Signpost.isEnabled.getter();
        v97 = v261;
        if ((v96 & 1) == 0)
        {
LABEL_170:
          v176 = v272;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_171:
            v188 = *(v176 + 2);
            v187 = *(v176 + 3);
            if (v188 >= v187 >> 1)
            {
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v187 > 1), v188 + 1, 1, v176);
            }

            *(v176 + 2) = v188 + 1;
            v176[v188 + 32] = 3;
            *v97 = v176;
            goto LABEL_269;
          }

LABEL_175:
          v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v176 + 2) + 1, 1, v176);
          goto LABEL_171;
        }

        static OSSignpostID.exclusive.getter();
        type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v98 = swift_initStackObject();
        *(v98 + 32) = a2;
        v271 = (v98 + 32);
        *(v98 + 16) = xmmword_18DDAB4C0;
        v99 = MEMORY[0x1E69E76D0];
        *(v98 + 56) = MEMORY[0x1E69E7668];
        *(v98 + 64) = v99;
        v100 = MEMORY[0x1E69E7358];
        *(v98 + 96) = MEMORY[0x1E69E72F0];
        *(v98 + 104) = v100;
        v284 = v98;
        *(v98 + 72) = 1;
        if (one-time initialization token for _signpostLog == -1)
        {
          if (v89)
          {
LABEL_64:
            swift_setDeallocating();
            type metadata accessor for CVarArg();
            swift_arrayDestroy();
            v101 = v260;
            os_signpost(_:dso:log:name:signpostID:)();
            (*(v282 + 1))(v101, v283);
            goto LABEL_170;
          }
        }

        else
        {
LABEL_141:
          swift_once();
          if (v89)
          {
            goto LABEL_64;
          }
        }

        v259 = v4;
        if (v86 == 20)
        {
          v166 = 3;
        }

        else
        {
          v166 = 4;
        }

        v4 = bswap32(v86) | (4 * (v86 >> 16));
        v97 = v49;
        v167 = v282 + 16;
        v273 = *(v282 + 2);
        v273(v268, v260, v283);
        LOBYTE(v287) = 1;
        v281 = v166;
        v282 = v167;
        v278 = (16 * v166);
        v279 = v167 - 8;

        v169 = 0;
        v277 = (v168 + 32);
        v274 = v86;
LABEL_146:
        v280 = &v256;
        MEMORY[0x1EEE9AC00](v168);
        v171 = &v256 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
        v172 = v171 + 8;
        v173 = v281;
        v174 = v171 + 8;
        do
        {
          *(v174 - 1) = 0;
          *v174 = 0;
          v174 += 16;
          --v173;
        }

        while (v173);
        v175 = &v277[5 * v169];
        v176 = v281;
        while (1)
        {
          v177 = *(v284 + 16);
          if (v169 == v177)
          {
            LOBYTE(v287) = 0;
LABEL_154:
            v181 = v274;
            if (v274 == 20)
            {
              v182 = v268;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v182 = v268;
            }

            if (v171[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v171[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v171[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v181 != 20 && v171[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v183 = *v279;
            v184 = v283;
            (*v279)(v182, v283);
            v185 = __swift_project_value_buffer(v184, static OSSignpostID.continuation);
            v168 = (v273)(v182, v185, v184);
            if ((v287 & 1) == 0)
            {

              v186 = v283;
              v183(v182, v283);
              v183(v260, v186);
              swift_setDeallocating();
              type metadata accessor for CVarArg();
              swift_arrayDestroy();
              v4 = v259;
              v97 = v261;
              goto LABEL_170;
            }

            goto LABEL_146;
          }

          if (v169 >= v177)
          {
            break;
          }

          ++v169;
          v178 = v175[3];
          v179 = v175[4];
          __swift_project_boxed_opaque_existential_1(v175, v178);
          *(v172 - 1) = CVarArg.kdebugValue(_:)(v4 | v97, v178, v179);
          *v172 = v180 & 1;
          v172 += 16;
          v175 += 5;
          if (!--v176)
          {
            goto LABEL_154;
          }
        }

        __break(1u);
        goto LABEL_175;
      }

      static OSSignpostID.exclusive.getter();
      type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v60 = swift_initStackObject();
      *(v60 + 32) = a2;
      v267 = v60 + 32;
      v61 = MEMORY[0x1E69E7668];
      v62 = MEMORY[0x1E69E76D0];
      *(v60 + 16) = xmmword_18DDA6EB0;
      *(v60 + 56) = v61;
      *(v60 + 64) = v62;
      v284 = v60;
      if (one-time initialization token for _signpostLog == -1)
      {
        LODWORD(v280) = a3;
        if ((v47 & 1) == 0)
        {
LABEL_29:
          v262 = a2;
          v259 = v4;
          if (v50 == 20)
          {
            v53 = 3;
          }

          else
          {
            v53 = 4;
          }

          v4 = bswap32(v50) | (4 * WORD1(v50));
          v65 = v280;
          v66 = v282 + 16;
          v270 = *(v282 + 2);
          v270(v281, v269, v283);
          LOBYTE(v287) = 1;
          v280 = v53;
          v274 = 16 * v53;
          v271 = v66;
          v277 = (v66 - 8);

          v68 = 0;
          v272 = v50;
          v273 = (v67 + 32);
LABEL_33:
          v279 = &v256;
          MEMORY[0x1EEE9AC00](v67);
          v70 = &v256 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
          v48 = (v70 + 8);
          v71 = v280;
          v72 = v70 + 8;
          do
          {
            *(v72 - 1) = 0;
            *v72 = 0;
            v72 += 16;
            --v71;
          }

          while (v71);
          v50 = v273 + 40 * v68;
          v73 = v280;
          while (1)
          {
            v74 = *(v284 + 16);
            if (v68 == v74)
            {
              LOBYTE(v287) = 0;
LABEL_41:
              v79 = v272;
              if (v272 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v48 = &static Signpost.prefetchOutputs;
              if (v70[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v70[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v70[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v79 != 20 && v70[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v53 = *v277;
              v80 = v281;
              v81 = v283;
              (*v277)(v281, v283);
              v82 = __swift_project_value_buffer(v81, static OSSignpostID.continuation);
              v67 = v270(v80, v82, v81);
              if ((v287 & 1) == 0)
              {

                v83 = v283;
                (v53)(v281, v283);
                (v53)(v269, v83);
                swift_setDeallocating();
                type metadata accessor for CVarArg();
                swift_arrayDestroy();
                v4 = v259;
                LODWORD(a2) = v262;
                goto LABEL_56;
              }

              goto LABEL_33;
            }

            if (v68 >= v74)
            {
              break;
            }

            ++v68;
            v75 = *(v50 + 24);
            v49 = *(v50 + 32);
            v76 = __swift_project_boxed_opaque_existential_1(v50, v75);
            v77 = v75;
            v53 = v76;
            *(v48 - 1) = CVarArg.kdebugValue(_:)(v4 | v65, v77, v49);
            *v48++ = v78 & 1;
            v50 += 40;
            if (!--v73)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
          goto LABEL_66;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v264 = v22;
      v257 = v30;
      v258 = v25;
      v262 = a2;
      v260 = *(v4 + 56);
      if (one-time initialization token for prefetchMakeView != -1)
      {
        swift_once();
      }

      a2 = *(&static Signpost.prefetchMakeView + 1);
      v48 = static Signpost.prefetchMakeView;
      LOBYTE(v49) = word_1EAB0EAB8;
      LODWORD(v50) = HIBYTE(word_1EAB0EAB8);
      v51 = byte_1EAB0EABA;
      LODWORD(v281) = static os_signpost_type_t.begin.getter();
      v287 = v48;
      v288 = a2;
      v289 = v49;
      v290 = v50;
      v291 = v51;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
LABEL_96:
        AGGraphClearUpdate();
        v120 = *(a3 + 16);
        v121 = *(a3 + 24);
        v287 = v267;
        v288 = v266;
        v289 = v265;
        v122 = *(v4 + 56);
        v124 = type metadata accessor for LazySubviewPrefetcher(0, v120, v121, v123);
        v125 = v262;
        LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:)(&v287, v122, v262, v124, &v285);
        AGGraphSetUpdate();
        v126 = v285;
        v128 = *(&static Signpost.prefetchMakeView + 1);
        v127 = static Signpost.prefetchMakeView;
        v129 = word_1EAB0EAB8;
        LOBYTE(v130) = HIBYTE(word_1EAB0EAB8);
        v131 = byte_1EAB0EABA;
        v132 = static os_signpost_type_t.end.getter();
        if (!v126)
        {
          v287 = v127;
          v288 = v128;
          v289 = v129;
          v290 = v130;
          v291 = v131;
          if ((Signpost.isEnabled.getter() & 1) == 0)
          {
            goto LABEL_269;
          }

          LODWORD(v281) = v132;
          static OSSignpostID.exclusive.getter();
          type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_18DDAB4C0;
          *(v138 + 32) = v125;
          v139 = v138 + 32;
          v140 = MEMORY[0x1E69E76D0];
          *(v138 + 56) = MEMORY[0x1E69E7668];
          *(v138 + 64) = v140;
          v141 = MEMORY[0x1E69E7358];
          *(v138 + 96) = MEMORY[0x1E69E72F0];
          *(v138 + 104) = v141;
          v284 = v138;
          *(v138 + 72) = 0;
          if (one-time initialization token for _signpostLog == -1)
          {
            if ((v130 & 1) == 0)
            {
LABEL_208:
              v271 = v139;
              v259 = v4;
              if (v127 == 20)
              {
                v143 = 3;
              }

              else
              {
                v143 = 4;
              }

              v4 = bswap32(v127) | (4 * (v127 >> 16));
              v145 = v281;
              v211 = v282 + 16;
              v272 = *(v282 + 2);
              (v272)(v277, v263, v283);
              LOBYTE(v287) = 1;
              v282 = v211;
              v279 = (16 * v143);
              v280 = v211 - 8;

              v213 = 0;
              v278 = (v212 + 32);
              v273 = v143;
              v274 = v127;
LABEL_212:
              v281 = &v256;
              MEMORY[0x1EEE9AC00](v212);
              v130 = &v256 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
              v127 = v130 + 8;
              v215 = v143;
              v216 = v130 + 8;
              do
              {
                *(v216 - 1) = 0;
                *v216 = 0;
                v216 += 16;
                --v215;
              }

              while (v215);
              v217 = &v278[40 * v213];
              while (1)
              {
                v218 = *(v284 + 16);
                if (v213 == v218)
                {
                  LOBYTE(v287) = 0;
LABEL_220:
                  v222 = v274;
                  if (v274 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v130[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v130[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v130[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v222 != 20 && v130[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v223 = *v280;
                  v224 = v277;
                  v225 = v283;
                  (*v280)(v277, v283);
                  v226 = __swift_project_value_buffer(v225, static OSSignpostID.continuation);
                  v212 = (v272)(v224, v226, v225);
                  v143 = v273;
                  if ((v287 & 1) == 0)
                  {

                    v227 = v283;
                    (v223)(v277, v283);
                    (v223)(v263, v227);
                    swift_setDeallocating();
                    type metadata accessor for CVarArg();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    v4 = v259;
                    goto LABEL_269;
                  }

                  goto LABEL_212;
                }

                if (v213 >= v218)
                {
                  break;
                }

                ++v213;
                v219 = *(v217 + 3);
                v220 = *(v217 + 4);
                __swift_project_boxed_opaque_existential_1(v217, v219);
                *(v127 - 1) = CVarArg.kdebugValue(_:)(v4 | v145, v219, v220);
                *v127 = v221 & 1;
                v127 += 16;
                v217 += 40;
                if (!--v143)
                {
                  goto LABEL_220;
                }
              }

              __break(1u);
              goto LABEL_236;
            }

LABEL_106:
            swift_setDeallocating();
            type metadata accessor for CVarArg();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v142 = v263;
            os_signpost(_:dso:log:name:signpostID:)();
            (*(v282 + 1))(v142, v283);
            goto LABEL_269;
          }

LABEL_207:
          swift_once();
          if ((v130 & 1) == 0)
          {
            goto LABEL_208;
          }

          goto LABEL_106;
        }

        if (v126 != 1)
        {
          v287 = v127;
          v288 = v128;
          v289 = v129;
          v290 = v130;
          v291 = v131;
          if ((Signpost.isEnabled.getter() & 1) == 0)
          {
            goto LABEL_265;
          }

          LODWORD(v281) = v132;
          v143 = v258;
          static OSSignpostID.exclusive.getter();
          type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v144 = swift_allocObject();
          *(v144 + 32) = v125;
          v145 = v144 + 32;
          *(v144 + 16) = xmmword_18DDAB4C0;
          v146 = MEMORY[0x1E69E76D0];
          *(v144 + 56) = MEMORY[0x1E69E7668];
          *(v144 + 64) = v146;
          v147 = MEMORY[0x1E69E7358];
          *(v144 + 96) = MEMORY[0x1E69E72F0];
          *(v144 + 104) = v147;
          v284 = v144;
          *(v144 + 72) = 1;
          if (one-time initialization token for _signpostLog == -1)
          {
            if ((v130 & 1) == 0)
            {
LABEL_237:
              v259 = v4;
              v228 = v127;
              if (v127 == 20)
              {
                v229 = 3;
              }

              else
              {
                v229 = 4;
              }

              v4 = bswap32(v127) | (4 * (v127 >> 16));
              v230 = v281;
              v232 = v282 + 16;
              v231 = *(v282 + 2);
              v233 = v143;
              v234 = v229;
              v272 = v145;
              v273 = v231;
              (v231)(v264, v233, v283);
              LOBYTE(v287) = 1;
              v282 = v232;
              v279 = (16 * v234);
              v280 = v232 - 8;

              v236 = 0;
              v277 = v228;
              v278 = (v235 + 32);
              v274 = v234;
LABEL_241:
              v281 = &v256;
              MEMORY[0x1EEE9AC00](v235);
              v238 = &v256 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
              v239 = v238 + 8;
              v240 = v234;
              v241 = v238 + 8;
              do
              {
                *(v241 - 1) = 0;
                *v241 = 0;
                v241 += 16;
                --v240;
              }

              while (v240);
              v242 = &v278[40 * v236];
              while (1)
              {
                v243 = *(v284 + 16);
                if (v236 == v243)
                {
                  LOBYTE(v287) = 0;
LABEL_249:
                  v249 = v277;
                  if (v277 == 20)
                  {
                    v250 = v264;
                    OSSignpostID.rawValue.getter();
                    kdebug_trace();
                  }

                  else
                  {
                    kdebug_trace();
                    v250 = v264;
                  }

                  if (v238[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v238[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v238[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v249 != 20 && v238[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v232 = *v280;
                  v251 = v283;
                  (*v280)(v250, v283);
                  v252 = __swift_project_value_buffer(v251, static OSSignpostID.continuation);
                  v235 = (v273)(v250, v252, v251);
                  v234 = v274;
                  if ((v287 & 1) == 0)
                  {

                    v253 = v283;
                    (v232)(v250, v283);
                    (v232)(v258, v253);
                    swift_setDeallocating();
                    type metadata accessor for CVarArg();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    v4 = v259;
                    goto LABEL_265;
                  }

                  goto LABEL_241;
                }

                if (v236 >= v243)
                {
                  break;
                }

                ++v236;
                v244 = *(v242 + 3);
                v245 = *(v242 + 4);
                v246 = __swift_project_boxed_opaque_existential_1(v242, v244);
                v247 = v244;
                v232 = v246;
                *(v239 - 1) = CVarArg.kdebugValue(_:)(v4 | v230, v247, v245);
                *v239 = v248 & 1;
                v239 += 16;
                v242 += 40;
                if (!--v234)
                {
                  goto LABEL_249;
                }
              }

              __break(1u);
              goto LABEL_272;
            }

            goto LABEL_110;
          }

LABEL_236:
          swift_once();
          if ((v130 & 1) == 0)
          {
            goto LABEL_237;
          }

LABEL_110:
          swift_setDeallocating();
          type metadata accessor for CVarArg();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          os_signpost(_:dso:log:name:signpostID:)();
          (*(v282 + 1))(v143, v283);
LABEL_265:
          *(v4 + 56) = v260 + 1;
          v232 = *(v4 + 48);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_266:
            v255 = *(v232 + 2);
            v254 = *(v232 + 3);
            if (v255 >= v254 >> 1)
            {
              v232 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v254 > 1), v255 + 1, 1, v232);
            }

            *(v232 + 2) = v255 + 1;
            v232[v255 + 32] = 1;
            *v261 = v232;
            goto LABEL_269;
          }

LABEL_272:
          v232 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v232 + 2) + 1, 1, v232);
          goto LABEL_266;
        }

        v287 = v127;
        v288 = v128;
        v289 = v129;
        v290 = v130;
        v291 = v131;
        if (Signpost.isEnabled.getter())
        {
          LODWORD(v281) = v132;
          v133 = v257;
          static OSSignpostID.exclusive.getter();
          type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v134 = swift_allocObject();
          *(v134 + 16) = xmmword_18DDAB4C0;
          *(v134 + 32) = v125;
          v135 = v134 + 32;
          v136 = MEMORY[0x1E69E76D0];
          *(v134 + 56) = MEMORY[0x1E69E7668];
          *(v134 + 64) = v136;
          v137 = MEMORY[0x1E69E7358];
          *(v134 + 96) = MEMORY[0x1E69E72F0];
          *(v134 + 104) = v137;
          v284 = v134;
          *(v134 + 72) = 0;
          if (one-time initialization token for _signpostLog == -1)
          {
            if (v130)
            {
LABEL_101:
              swift_setDeallocating();
              type metadata accessor for CVarArg();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v282 + 1))(v133, v283);
              goto LABEL_102;
            }
          }

          else
          {
            swift_once();
            if (v130)
            {
              goto LABEL_101;
            }
          }

          v259 = v4;
          v189 = v127;
          if (v127 == 20)
          {
            v190 = 3;
          }

          else
          {
            v190 = 4;
          }

          v4 = bswap32(v127) | (4 * (v127 >> 16));
          LODWORD(v127) = v281;
          v192 = v282 + 16;
          v191 = *(v282 + 2);
          v193 = v133;
          v194 = v190;
          v271 = v135;
          v272 = v191;
          (v191)(v279, v193, v283);
          LOBYTE(v287) = 1;
          v278 = (16 * v194);
          v282 = v192;
          v280 = v192 - 8;

          v139 = 0;
          v277 = (v195 + 32);
          v273 = v194;
          v274 = v189;
LABEL_181:
          v281 = &v256;
          MEMORY[0x1EEE9AC00](v195);
          v130 = &v256 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
          v197 = v130 + 8;
          v198 = v194;
          v199 = v130 + 8;
          do
          {
            *(v199 - 1) = 0;
            *v199 = 0;
            v199 += 16;
            --v198;
          }

          while (v198);
          v200 = &v277[5 * v139];
          while (1)
          {
            v201 = *(v284 + 16);
            if (v139 == v201)
            {
              LOBYTE(v287) = 0;
LABEL_189:
              v205 = v274;
              if (v274 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v130[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v130[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v130[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v205 != 20 && v130[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v206 = v279;
              v207 = *v280;
              v208 = v283;
              (*v280)(v279, v283);
              v209 = __swift_project_value_buffer(v208, static OSSignpostID.continuation);
              v195 = (v272)(v206, v209, v208);
              v194 = v273;
              if ((v287 & 1) == 0)
              {

                v210 = v283;
                (v207)(v279, v283);
                (v207)(v257, v210);
                swift_setDeallocating();
                type metadata accessor for CVarArg();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                goto LABEL_204;
              }

              goto LABEL_181;
            }

            if (v139 >= v201)
            {
              break;
            }

            ++v139;
            v202 = v200[3];
            v203 = v200[4];
            __swift_project_boxed_opaque_existential_1(v200, v202);
            *(v197 - 1) = CVarArg.kdebugValue(_:)(v4 | v127, v202, v203);
            *v197 = v204 & 1;
            v197 += 16;
            v200 += 5;
            if (!--v194)
            {
              goto LABEL_189;
            }
          }

          __break(1u);
          goto LABEL_207;
        }

LABEL_205:
        v286[0] = 0;
        goto LABEL_269;
      }

      static OSSignpostID.exclusive.getter();
      type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_18DDAB4C0;
      *(v52 + 32) = v262;
      v53 = v52 + 32;
      v54 = MEMORY[0x1E69E76D0];
      *(v52 + 56) = MEMORY[0x1E69E7668];
      *(v52 + 64) = v54;
      v55 = MEMORY[0x1E69E7358];
      *(v52 + 96) = MEMORY[0x1E69E72F0];
      *(v52 + 104) = v55;
      v284 = v52;
      if (v260 >= 0xFFFFFFFF80000000)
      {
        if (v260 <= 0x7FFFFFFF)
        {
          *(v284 + 72) = v260;
          if (one-time initialization token for _signpostLog == -1)
          {
            v256 = v52 + 32;
            if (v50)
            {
              goto LABEL_13;
            }

LABEL_68:
            v259 = v4;
            v102 = v48;
            if (v48 == 20)
            {
              v89 = 3;
            }

            else
            {
              v89 = 4;
            }

            v4 = bswap32(v48) | (4 * (v48 >> 16));
            LODWORD(v86) = v281;
            v103 = v282 + 16;
            v269 = *(v282 + 2);
            v269(v280, v268, v283);
            LOBYTE(v287) = 1;
            v274 = 16 * v89;
            v270 = v103;
            v278 = v103 - 8;

            v105 = 0;
            v272 = v102;
            v273 = (v104 + 32);
            v271 = v89;
LABEL_72:
            v281 = &v256;
            MEMORY[0x1EEE9AC00](v104);
            v92 = &v256 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
            v107 = v92 + 8;
            v108 = v89;
            v109 = v92 + 8;
            do
            {
              *(v109 - 1) = 0;
              *v109 = 0;
              v109 += 16;
              --v108;
            }

            while (v108);
            v110 = v273 + 40 * v105;
            while (1)
            {
              v111 = *(v284 + 16);
              if (v105 == v111)
              {
                LOBYTE(v287) = 0;
LABEL_80:
                v114 = v272;
                if (v272 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (v92[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v92[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v92[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v114 != 20 && v92[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v115 = *v278;
                v116 = v280;
                v117 = v283;
                (*v278)(v280, v283);
                v118 = __swift_project_value_buffer(v117, static OSSignpostID.continuation);
                v104 = (v269)(v116, v118, v117);
                v89 = v271;
                if ((v287 & 1) == 0)
                {

                  v119 = v283;
                  v115(v280, v283);
                  v115(v268, v119);
                  swift_setDeallocating();
                  type metadata accessor for CVarArg();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v4 = v259;
                  goto LABEL_95;
                }

                goto LABEL_72;
              }

              if (v105 >= v111)
              {
                break;
              }

              ++v105;
              v112 = *(v110 + 3);
              v49 = *(v110 + 4);
              __swift_project_boxed_opaque_existential_1(v110, v112);
              *(v107 - 1) = CVarArg.kdebugValue(_:)(v4 | v86, v112, v49);
              *v107 = v113 & 1;
              v107 += 16;
              v110 += 40;
              if (!--v89)
              {
                goto LABEL_80;
              }
            }

            __break(1u);
            goto LABEL_112;
          }

LABEL_67:
          swift_once();
          v256 = v53;
          if (v50)
          {
LABEL_13:
            swift_setDeallocating();
            type metadata accessor for CVarArg();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v56 = v268;
            os_signpost(_:dso:log:name:signpostID:)();
            (*(v282 + 1))(v56, v283);
LABEL_95:
            a3 = v276;
            goto LABEL_96;
          }

          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      __break(1u);
    }

    swift_once();
    LODWORD(v280) = a3;
    if ((v47 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_21:
    swift_setDeallocating();
    type metadata accessor for CVarArg();
    swift_arrayDestroy();
    v63 = v269;
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v282 + 1))(v63, v283);
    goto LABEL_56;
  }
}

uint64_t $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(uint64_t result, uint64_t a2, char a3)
{
  if ((*result & 1) == 0)
  {
    v5 = *(a2 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 48) = v5;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
      *(a2 + 48) = result;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
      v5 = result;
      *(a2 + 48) = result;
    }

    *(v5 + 16) = v7 + 1;
    *(v5 + v7 + 32) = a3;
  }

  return result;
}

void LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(v9 + 32);
  v12 = byte_1F0045218;
  v11(&v20, v10, v9);
  if (((v20 >> v12) & 1) == 0 || ((v8 >> (v12 ^ 1)) & 1) == 0 && (!v12 ? (v14 = -9) : (v14 = -5), (v14 | v8) != 0xFFFFFFFF) || (v20 = v7, v21 = v6, v22 = v8, LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(&v20, a2, v12, a3, a4, &v23), (v13 = v23) == 0))
  {
    v15 = byte_1F0045219;
    v11(&v20, v10, v9);
    if (((v20 >> v15) & 1) != 0 && (((v8 >> (v15 ^ 1)) & 1) != 0 || (!v15 ? (v16 = -9) : (v16 = -5), (v16 | v8) == 0xFFFFFFFF)))
    {
      v20 = v7;
      v21 = v6;
      v22 = v8;
      LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(&v20, a2, v15, a3, a4, &v23);
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }
  }

  *a5 = v13;
}

uint64_t closure #2 in LazySubviewPrefetcher.update(info:owner:)(uint64_t a1, _BYTE *a2)
{

  return closure #2 in LazySubviewPrefetcher.update(info:owner:)(a1, a2, 1);
}

uint64_t closure #3 in LazySubviewPrefetcher.update(info:owner:)(uint64_t a1, _BYTE *a2)
{

  return closure #2 in LazySubviewPrefetcher.update(info:owner:)(a1, a2, 0);
}

uint64_t closure #2 in LazySubviewPrefetcher.update(info:owner:)(int a1, _BYTE *a2, int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for OSSignpostID();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  if (one-time initialization token for prefetchNotifyRender != -1)
  {
    swift_once();
  }

  v10 = static Signpost.prefetchNotifyRender;
  v11 = word_1EAB0EA98;
  v12 = HIBYTE(word_1EAB0EA98);
  v13 = byte_1EAB0EA9A;
  v14 = static os_signpost_type_t.event.getter();
  v57 = v10;
  v58 = v11;
  v59 = v12;
  v60 = v13;
  result = Signpost.isEnabled.getter();
  if (result)
  {
    LODWORD(v56) = v14;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for Logger?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDAB4C0;
    *(inited + 32) = a1;
    v46 = inited + 32;
    v17 = MEMORY[0x1E69E76D0];
    *(inited + 56) = MEMORY[0x1E69E7668];
    *(inited + 64) = v17;
    v18 = MEMORY[0x1E69E7358];
    *(inited + 96) = MEMORY[0x1E69E72F0];
    *(inited + 104) = v18;
    *(inited + 72) = a3;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v12)
      {
LABEL_6:
        swift_setDeallocating();
        type metadata accessor for CVarArg();
        swift_arrayDestroy();
        os_signpost(_:dso:log:name:signpostID:)();
        result = (*(v54 + 8))(v9, v53);
        goto LABEL_35;
      }
    }

    else
    {
      swift_once();
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v45 = a2;
    if (v10 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = v19;
    v21 = v9;
    v22 = bswap32(v10) | (4 * WORD1(v10));
    v23 = v56;
    v25 = v54 + 16;
    v24 = *(v54 + 16);
    v44 = v21;
    v47 = v24;
    (v24)(v55);
    LOBYTE(v57) = 1;
    v51 = 16 * v20;
    v54 = v25;
    v52 = (v25 - 8);

    v27 = 0;
    v50 = inited + 32;
    v49 = v10;
    v48 = v20;
    do
    {
      v56 = &v44;
      MEMORY[0x1EEE9AC00](v26);
      v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v29 + 8;
      v31 = v20;
      v32 = v29 + 8;
      do
      {
        *(v32 - 1) = 0;
        *v32 = 0;
        v32 += 16;
        --v31;
      }

      while (v31);
      v33 = (v50 + 40 * v27);
      while (1)
      {
        v34 = *(inited + 16);
        if (v27 == v34)
        {
          break;
        }

        if (v27 >= v34)
        {
          __break(1u);
        }

        ++v27;
        v35 = v33[3];
        v36 = v33[4];
        __swift_project_boxed_opaque_existential_1(v33, v35);
        *(v30 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
        *v30 = v37 & 1;
        v30 += 16;
        v33 += 5;
        if (!--v20)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v57) = 0;
LABEL_20:
      v38 = v49;
      if (v49 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v20 = v48;
      if (v29[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v38 != 20 && v29[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v39 = *v52;
      v40 = v55;
      v41 = v53;
      (*v52)(v55, v53);
      v42 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
      v26 = v47(v40, v42, v41);
    }

    while ((v57 & 1) != 0);

    v43 = v53;
    v39(v55, v53);
    v39(v44, v43);
    swift_setDeallocating();
    type metadata accessor for CVarArg();
    result = swift_arrayDestroy();
    a2 = v45;
  }

LABEL_35:
  *a2 = 1;
  return result;
}

void LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v197 = a4;
  v202 = a3;
  v203 = a2;
  v206 = a6;
  v9 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = *(AssociatedTypeWitness - 8);
  v200 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v201 = &v155 - v12;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v198 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v155 - v18;
  v20 = *(a1 + 16);
  (*(v10 + 32))(&v213, v9, v10, v17);
  v204 = *(v7 + 8);
  type metadata accessor for LazyLayoutViewCache();
  Value = AGGraphGetValue();
  v22 = *(*Value + 280);
  v205 = *(*Value + 288);
  v196 = *(v7 + 4);
  v195 = *(v7 + 7);
  v23 = floor(*(*AGGraphGetValue() + 296));
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_205;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  if (v23 >= 9.22337204e18)
  {
    goto LABEL_206;
  }

  if (v22 < 0 || v205 < 0)
  {
    goto LABEL_11;
  }

  if ((v203 * v204) >> 64 != (v203 * v204) >> 63)
  {
    goto LABEL_208;
  }

  v24 = v23 * 0.75;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v203 * v204 > v24)
  {
LABEL_11:
    *v206 = 0;
    return;
  }

  v178 = v203 * v204;
  if (v202)
  {
    if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical) || (v20 & 5) == 0)
    {
      goto LABEL_11;
    }

    v175 = v22;
    v25 = SwiftUI_Edge_bottom;
  }

  else
  {
    if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal) || (v20 & 0xA) == 0)
    {
      goto LABEL_11;
    }

    v175 = v22;
    v25 = SwiftUI_Edge_trailing;
  }

  LODWORD(v177) = Edge.Set.contains(_:)(v25);
  AGGraphGetValue();

  v176 = *AGGraphGetValue();

  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  *&v27 = *v26;
  v192 = v27;
  *&v27 = v26[1];
  v191 = v27;
  v28 = AGGraphGetValue();
  *&v29 = *v28;
  v194 = v29;
  *&v29 = v28[1];
  v193 = v29;
  v30 = v7[2];
  v31 = v7[3];
  v32 = *v7;
  v254 = v7[1];
  v255 = v30;
  v256[0] = v31;
  *(v256 + 9) = *(v7 + 57);
  v253 = v32;
  LazySubviewPrefetcher.transform.getter(v252);
  v33 = v252[0];
  v174 = v252[1];
  v34 = *&v252[2];
  v35 = *&v252[3];
  v36 = *&v252[4];
  v37 = *&v252[5];
  AGGraphGetValue();

  v38 = *AGGraphGetValue();

  v39 = AGGraphGetValue();
  v170 = *(v13 + 16);
  v171 = v13 + 16;
  v170(v19, v39, v9);
  (*(v10 + 120))(&v251, v9, v10);
  v40 = v19;
  v41 = v174;
  v172 = *(v13 + 8);
  v173 = v13 + 8;
  v172(v40, v9);
  v169 = v251;
  v257 = 1;
  v42 = v36 - (*&v192 - v34);
  v213 = 0u;
  v43 = v37 - (*&v191 - v35);
  v214 = 0u;
  v215 = 0u;
  memset(v216, 0, sizeof(v216));
  v217 = 0u;
  v218 = 0u;
  LOBYTE(v219) = 1;
  v44 = v33;
  v244 = v33;
  v245 = v41;
  v246 = v192;
  v247 = v191;
  v248 = v42;
  v249 = v43;
  specialized ViewTransform.forEach(inverted:_:)(0, &v244, &v213, *&v191);
  v45 = *&v214;
  if (LOBYTE(v219))
  {
    v45 = *&v194;
  }

  v190 = v45;
  if (LOBYTE(v219))
  {
    v46 = *&v193;
  }

  else
  {
    v46 = *(&v214 + 1);
  }

  v47 = 0.0;
  if (LOBYTE(v219))
  {
    v48 = 0.0;
  }

  else
  {
    v48 = *&v215;
  }

  if (LOBYTE(v219))
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *(&v215 + 1);
  }

  v185 = v49;
  v186 = v48;
  if (LOBYTE(v219))
  {
    v50 = 0.0;
  }

  else
  {
    v50 = *v216;
  }

  if (LOBYTE(v219))
  {
    v51 = 0.0;
  }

  else
  {
    v51 = *(v216 + 1);
  }

  v183 = v51;
  v184 = v50;
  if (LOBYTE(v219))
  {
    v52 = *&v194;
  }

  else
  {
    v52 = *&v218;
  }

  if (LOBYTE(v219))
  {
    v53 = *&v193;
  }

  else
  {
    v53 = *(&v218 + 1);
  }

  v187 = v53;
  v188 = v52;
  if (LOBYTE(v219))
  {
    v54 = 0.0;
  }

  else
  {
    v54 = *(&v217 + 1);
  }

  if (LOBYTE(v219))
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *&v217;
  }

  if (LOBYTE(v219))
  {
    v56 = *&v194;
  }

  else
  {
    v56 = *&v216[1];
  }

  if (LOBYTE(v219))
  {
    v57 = *&v193;
  }

  else
  {
    v57 = *(&v216[1] + 1);
  }

  if (LOBYTE(v219))
  {
    v58 = 0.0;
  }

  else
  {
    v58 = *&v213;
  }

  if (LOBYTE(v219))
  {
    v59 = 0.0;
  }

  else
  {
    v59 = *(&v213 + 1);
  }

  v60 = v38;
  v181 = v57;
  v182 = v56;
  *(&v180 + 1) = v59;
  if (v38 == 1)
  {
    v61 = v58;
    v62 = v59;
    v63 = *&v194 - CGRectGetMaxX(*(&v56 - 2));
    v55 = v55 + v63 - v58;
    v54 = v54 + v59 - v59;
    *&v180 = v63;
  }

  else
  {
    *&v180 = v58;
  }

  *&v189 = v55;
  *(&v189 + 1) = v54;
  v217 = 0u;
  v218 = 0u;
  memset(v216, 0, sizeof(v216));
  v214 = 0u;
  v215 = 0u;
  v213 = 0u;
  LOBYTE(v219) = 1;
  v244 = v44;
  v245 = v41;
  v246 = v192;
  v247 = v191;
  v248 = v42;
  v249 = v43;
  specialized ViewTransform.forEach(inverted:_:)(0, &v244, &v213, *&v191);
  v64 = *&v214;
  if (LOBYTE(v219))
  {
    v64 = *&v194;
  }

  v165 = v64;
  if (LOBYTE(v219))
  {
    v65 = *&v193;
  }

  else
  {
    v65 = *(&v214 + 1);
  }

  v164 = v65;
  if (LOBYTE(v219))
  {
    v66 = 0.0;
  }

  else
  {
    v66 = *&v215;
  }

  if (LOBYTE(v219))
  {
    v67 = 0.0;
  }

  else
  {
    v67 = *(&v215 + 1);
  }

  v162 = v67;
  v163 = v66;
  if (LOBYTE(v219))
  {
    v68 = 0.0;
  }

  else
  {
    v68 = *v216;
  }

  if (LOBYTE(v219))
  {
    v69 = 0.0;
  }

  else
  {
    v69 = *(v216 + 1);
  }

  v160 = v69;
  v161 = v68;
  if (LOBYTE(v219))
  {
    v70 = *&v194;
  }

  else
  {
    v70 = *&v218;
  }

  if (LOBYTE(v219))
  {
    v71 = *&v193;
  }

  else
  {
    v71 = *(&v218 + 1);
  }

  v167 = v71;
  v168 = v70;
  if (LOBYTE(v219))
  {
    v72 = 0.0;
  }

  else
  {
    v72 = *(&v217 + 1);
  }

  if (LOBYTE(v219))
  {
    v73 = 0.0;
  }

  else
  {
    v73 = *&v217;
  }

  if (LOBYTE(v219))
  {
    v74 = *&v194;
  }

  else
  {
    v74 = *&v216[1];
  }

  if (LOBYTE(v219))
  {
    v75 = *&v193;
  }

  else
  {
    v75 = *(&v216[1] + 1);
  }

  if (LOBYTE(v219))
  {
    v76 = 0.0;
  }

  else
  {
    v76 = *&v213;
  }

  if ((LOBYTE(v219) & 1) == 0)
  {
    v47 = *(&v213 + 1);
  }

  v77 = v175;
  v157 = v75;
  v158 = v74;
  v156 = v47;
  if (v60)
  {
    v78 = v76;
    v79 = v47;
    v80 = *&v194 - CGRectGetMaxX(*(&v74 - 2));
    v159 = v73 + v80 - v76;
    v166 = v72 + v47 - v47;
    v155 = v80;
  }

  else
  {
    v155 = v76;
    v159 = v73;
    v166 = v72;
  }

  v81 = LOBYTE(v177);

  v250 = v176;
  v82 = AGGraphGetValue();
  v84 = *(*v82 + 232);
  v83 = *(*v82 + 240);
  v86 = *(*v82 + 248);
  v85 = *(*v82 + 256);
  v213 = v180;
  v87 = *(&v189 + 1);
  *&v214 = v190;
  v177 = v46;
  *(&v214 + 1) = v46;
  *&v215 = v186;
  *(&v215 + 1) = v185;
  *v216 = v184;
  *(v216 + 1) = v183;
  *&v216[1] = v182;
  *(&v216[1] + 1) = v181;
  v88 = *&v189;
  v217 = v189;
  v89 = v187;
  v90 = v188;
  *&v218 = v188;
  *(&v218 + 1) = v187;
  if (v250 == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v193, v194));
    v87 = *(&v217 + 1);
    v88 = *&v217;
    v89 = *(&v218 + 1);
    v90 = *&v218;
  }

  v258.origin.x = v84;
  v258.origin.y = v83;
  v258.size.width = v86;
  v258.size.height = v85;
  IsNull = CGRectIsNull(v258);
  v92 = 0.0;
  if (v81)
  {
    if (!IsNull)
    {
      if (v202)
      {
        v93 = v85;
      }

      else
      {
        v93 = v86;
      }

      if (v202)
      {
        v94 = v83;
      }

      else
      {
        v94 = v84;
      }

      v95 = v94 + v93;
      if (v95 >= v94)
      {
        v96 = v94;
      }

      else
      {
        v96 = v95;
      }

      if (v94 > v95)
      {
        v95 = v94;
      }

      v92 = 0.0;
      if (v96 <= v95)
      {
        v92 = v95;
      }
    }

    v97 = v92;
    v259.origin.x = v88;
    v259.origin.y = v87;
    v259.size.width = v90;
    v259.size.height = v89;
    if (CGRectIsNull(v259))
    {
      v99 = *(&v189 + 1);
      v98 = v190;
      v100 = v177;
      v101 = v189;
      v102 = 0.0;
    }

    else
    {
      if (v202)
      {
        v111 = v89;
      }

      else
      {
        v111 = v90;
      }

      if (v202)
      {
        v112 = v87;
      }

      else
      {
        v112 = v88;
      }

      v113 = v112 + v111;
      if (v113 >= v112)
      {
        v114 = v112;
      }

      else
      {
        v114 = v113;
      }

      if (v112 > v113)
      {
        v113 = v112;
      }

      v99 = *(&v189 + 1);
      v98 = v190;
      v100 = v177;
      v101 = v189;
      v102 = 0.0;
      if (v114 <= v113)
      {
        v102 = v113;
      }
    }

    v109 = v77;
    if (v102 >= v97)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!IsNull)
    {
      if (v202)
      {
        v103 = v85;
      }

      else
      {
        v103 = v86;
      }

      if (v202)
      {
        v104 = v83;
      }

      else
      {
        v104 = v84;
      }

      v105 = v104 + v103;
      if (v104 + v103 >= v104)
      {
        v106 = v104;
      }

      else
      {
        v106 = v104 + v103;
      }

      if (v104 <= v105)
      {
        v104 = v105;
      }

      v107 = v106 > v104;
      v92 = 0.0;
      if (!v107)
      {
        v92 = v106;
      }
    }

    v108 = v92;
    v260.origin.x = v88;
    v260.origin.y = v87;
    v260.size.width = v90;
    v260.size.height = v89;
    v109 = v77;
    if (CGRectIsNull(v260))
    {
      v99 = *(&v189 + 1);
      v98 = v190;
      v100 = v177;
      v101 = v189;
      v110 = 0.0;
    }

    else
    {
      if (v202)
      {
        v115 = v89;
      }

      else
      {
        v115 = v90;
      }

      if (v202)
      {
        v116 = v87;
      }

      else
      {
        v116 = v88;
      }

      v117 = v116 + v115;
      if (v116 + v115 >= v116)
      {
        v118 = v116;
      }

      else
      {
        v118 = v116 + v115;
      }

      if (v116 <= v117)
      {
        v116 = v117;
      }

      v107 = v118 > v116;
      v99 = *(&v189 + 1);
      v98 = v190;
      v100 = v177;
      v101 = v189;
      v110 = 0.0;
      if (!v107)
      {
        v110 = v118;
      }
    }

    if (v108 >= v110)
    {
      goto LABEL_11;
    }
  }

  v119 = *MEMORY[0x1E698D3F8];
  AGGraphGetValue();

  v202 = v119;
  LazyLayoutViewCache.subviews(context:)(v119, &v244);

  v120 = *(**AGGraphGetValue() + 400);

  v120(v200, v200);

  if (v81)
  {
    v121 = v178 + v205 + 1;
    v122 = v201;
LABEL_174:
    v243 = MEMORY[0x1E69E7CC0];
    v124 = AGGraphGetValue();
    v125 = v198;
    v170(v198, v124, v9);
    *&v213 = __PAIR64__(v197, v202);
    *&v126 = v192;
    *(&v126 + 1) = v191;
    *(&v213 + 1) = __PAIR64__(v195, v196);
    *&v127 = v194;
    *(&v127 + 1) = v193;
    v214 = v126;
    v215 = v127;
    LODWORD(v216[0]) = v169;
    *(v216 + 8) = v180;
    *(&v216[1] + 1) = v98;
    *&v217 = v100;
    *(&v217 + 1) = v186;
    *&v218 = v185;
    *(&v218 + 1) = v184;
    v219 = v183;
    v220 = v182;
    v221 = v181;
    v222 = v101;
    v223 = v99;
    v224 = v188;
    v225 = v187;
    v226 = v155;
    v227 = v156;
    v228 = v165;
    v229 = v164;
    v230 = v163;
    v231 = v162;
    v232 = v161;
    v233 = v160;
    v234 = v158;
    v235 = v157;
    v236 = v159;
    v237 = v166;
    v238 = v168;
    v239 = v167;
    v240 = v194;
    v241 = v193;
    v242 = v250;
    (*(v10 + 80))(v121, &v244, &v213, v122, &v243, v9, v10);
    v172(v125, v9);
    v128 = v243;
    v129 = *(v243 + 16);
    if (v129)
    {
      if (v204 != v129)
      {
        *(v7 + 8) = v129;
      }

      v130 = 0;
      v131 = (v128 + 64);
      v179 = v7;
      while (1)
      {
        if (v130 >= *(v128 + 16))
        {
          goto LABEL_207;
        }

        v133 = *(v131 - 4);
        if (*(v133 + 224))
        {
          break;
        }

LABEL_181:
        ++v130;
        v131 += 48;
        if (v129 == v130)
        {

          v150 = AGGraphGetValue();
          v151 = *v150;
          v152 = *(*v150 + 156);
          swift_beginAccess();
          v153 = *(v151 + 32);

          LOBYTE(v153) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v153);
          swift_endAccess();
          LOBYTE(v207[0]) = 10;
          v154 = swift_allocObject();
          *(v154 + 16) = v152;
          *(v154 + 24) = v153 & 1;
          static Update.enqueueAction(reason:_:)(v207, partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch(), v154);

          (*(v199 + 8))(v201, v200);
          outlined destroy of _LazyLayout_Subviews(&v244);
          *v206 = 2;
          return;
        }
      }

      v134 = (v133 + 264);
      v135 = (v133 + 257);
      v136 = 0uLL;
      v137 = 0uLL;
      if ((*(v133 + 296) & 1) == 0)
      {
        v136 = *v134;
        v137 = *(v133 + 280);
        v211[0] = *(v133 + 241);
        *(v211 + 3) = *(v133 + 244);
        v209[0] = *v135;
        *(v209 + 3) = *(v133 + 260);
      }

      v138 = *(v131 - 3);
      v140 = *(v131 - 1);
      v141 = *v131;
      v212 = *(v131 - 16);
      v139 = v212;
      v210 = v141;
      v208 = 0;
      *(v133 + 232) = v138;
      *(v133 + 240) = v139;
      *(v133 + 241) = v211[0];
      *(v133 + 244) = *(v211 + 3);
      *(v133 + 248) = v140;
      *(v133 + 256) = v141;
      *v135 = v209[0];
      *(v133 + 260) = *(v209 + 3);
      *v134 = v136;
      *(v133 + 280) = v137;
      *(v133 + 296) = 0;
      swift_beginAccess();
      v142 = *(v133 + 16);
      swift_unownedRetainStrong();
      if (!v142)
      {
        goto LABEL_213;
      }

      v143 = *(v142 + 228);
      swift_retain_n();

      *(v133 + 208) = v143;
      v144 = *(v133 + 16);
      v145 = swift_unownedRetainStrong();
      if (!v144)
      {
        goto LABEL_214;
      }

      if (((*(*v144 + 360))(v145) & 1) == 0)
      {
        goto LABEL_195;
      }

      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v146 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
LABEL_195:

LABEL_196:
          v132 = 0;
          goto LABEL_180;
        }
      }

      else if (static Semantics.forced < v146)
      {
        goto LABEL_195;
      }

      swift_beginAccess();
      v147 = v144[4];
      BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
      v148 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v147, v207[0]);
      if (v148)
      {
        v149 = *(v148 + 72);

        if (v149)
        {
          goto LABEL_196;
        }
      }

      else
      {
      }

      v132 = 1;
LABEL_180:
      *(v133 + 212) = v132;

      goto LABEL_181;
    }

LABEL_203:
    (*(v199 + 8))(v122, v200);
    outlined destroy of _LazyLayout_Subviews(&v244);
    goto LABEL_11;
  }

  v123 = (v203 + 1) * v204;
  if (((v203 + 1) * v204) >> 64 == v123 >> 63)
  {
    v121 = v109 - v123;
    v122 = v201;
    if (v109 - v123 < 0)
    {
      goto LABEL_203;
    }

    goto LABEL_174;
  }

LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
}

uint64_t LazyPrefetchState.description.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD797C0);
  lazy protocol witness table accessor for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0x74657366666F202CLL, 0xEA0000000000203ALL);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0x74657366666F202CLL, 0xEF203A746E756F43);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LazyPrefetchOperation()
{
  v1 = 0x77656956656B616DLL;
  if (*v0)
  {
    v1 = 0x6863746566657270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x5265726170657270;
  }
}

void lazy protocol witness table accessor for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack()
{
  if (!lazy protocol witness table cache variable for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyPrefetchOperationStack, &unk_1F0060810, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyPrefetchOperationStack and conformance LazyPrefetchOperationStack);
  }
}

uint64_t assignWithCopy for LazySubviewPrefetcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for LazySubviewPrefetcher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazySubviewPrefetcher(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for LazySubviewPrefetcher(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for LazyPrefetchState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyPrefetchState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for LazyPrefetchState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type LazyPrefetchOperation and conformance LazyPrefetchOperation()
{
  if (!lazy protocol witness table cache variable for type LazyPrefetchOperation and conformance LazyPrefetchOperation)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyPrefetchOperation, &type metadata for LazyPrefetchOperation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyPrefetchOperation and conformance LazyPrefetchOperation);
  }
}

uint64_t ResolvedColorProvider.colorDescription.getter()
{
  v1 = *v0;
  LODWORD(v2) = HIDWORD(*v0);
  if (COERCE_FLOAT(*v0) != 0.0 || v2 != 0.0 || *(&v1 + 2) != 0.0 || *(&v1 + 3) == 0.0 || *(&v1 + 3) != 1.0)
  {
    __asm { FMOV            V2.4S, #1.0 }
  }

  Color.Resolved.description.getter(*&v1, v2, *(&v1 + 2), *(&v1 + 3));
  v10 = v8;
  MEMORY[0x193ABEDD0](94, 0xE100000000000000);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v10;
}

void ResolvedColorProvider.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  Hasher._combine(_:)(LODWORD(v9));
}

Swift::Int ResolvedColorProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  Hasher._combine(_:)(LODWORD(v6));
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  Hasher._combine(_:)(LODWORD(v9));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedColorProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  Hasher._combine(_:)(LODWORD(v9));
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  Hasher._combine(_:)(LODWORD(v10));
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  Hasher._combine(_:)(LODWORD(v11));
  return Hasher._finalize()();
}

Swift::Int Color.RGBColorSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void one-time initialization function for p3ColorSpace()
{
  v0 = *MEMORY[0x1E695F0B8];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    static Color.DisplayP3.p3ColorSpace = v1;
  }

  else
  {
    __break(1u);
  }
}

CGColorRef Color.DisplayP3.staticColor.getter(CGFloat a1, CGFloat a2, CGFloat a3, float a4)
{
  if (one-time initialization token for p3ColorSpace != -1)
  {
    v5 = a3;
    v6 = a4;
    v7 = a2;
    v8 = a1;
    swift_once();
    a1 = v8;
    a2 = v7;
    a4 = v6;
    a3 = v5;
  }

  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  result = CGColorCreate(static Color.DisplayP3.p3ColorSpace, v9);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void Color.DisplayP3.hash(into:)(double a1, double a2, double a3, float a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x193AC11E0](*&v8);
  v9 = 0.0;
  if (a4 != 0.0)
  {
    v9 = a4;
  }

  Hasher._combine(_:)(LODWORD(v9));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.DisplayP3()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Color.DisplayP3.hash(into:)(v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.DisplayP3(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  Color.DisplayP3.hash(into:)(v2, v3, v4, v5);
  return Hasher._finalize()();
}

uint64_t Color.init(hue:saturation:brightness:opacity:)(Swift::Double a1, Swift::Double a2, Swift::Double a3, double a4)
{
  v20 = HSBToRGB(_:_:_:)(a1, a2, a3);
  blue = v20.blue;
  red = v20.red;
  v7 = -red;
  if (red > 0.0)
  {
    v7 = red;
  }

  if (v7 <= 0.04045)
  {
    v8 = v7 * 0.077399;
  }

  else
  {
    v8 = 1.0;
    if (v7 != 1.0)
    {
      green = v20.green;
      v10 = powf((v7 * 0.94787) + 0.052133, 2.4);
      v20.green = green;
      v8 = v10;
    }
  }

  v11 = v20.green;
  v12 = -v11;
  if (v11 > 0.0)
  {
    v12 = v20.green;
  }

  if (v12 <= 0.04045)
  {
    v13 = v12 * 0.077399;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = powf((v12 * 0.94787) + 0.052133, 2.4);
    }
  }

  v14 = blue;
  if (v14 <= 0.0)
  {
    v15 = -v14;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0.04045)
  {
    v16 = v15 * 0.077399;
  }

  else
  {
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v16 = powf((v15 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (v11 <= 0.0)
  {
    v13 = -v13;
  }

  if (red <= 0.0)
  {
    v8 = -v8;
  }

  if (v14 <= 0.0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = v16;
  }

  type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider);
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 20) = v13;
  *(result + 24) = v17;
  v18 = a4;
  *(result + 28) = v18;
  *(result + 32) = 2143289344;
  return result;
}

Swift::tuple_red_Double_green_Double_blue_Double __swiftcall HSBToRGB(_:_:_:)(Swift::Double a1, Swift::Double a2, Swift::Double a3)
{
  v3 = a1 * 6.0;
  v4 = COERCE__INT64(fabs(a1 * 6.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v5 = a1 == 1.0;
  v6 = 0.0;
  if (!v5)
  {
    v6 = v3;
    if (v4)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = v6 - v6;
  v9 = (1.0 - a2) * a3;
  v10 = (1.0 - v8 * a2) * a3;
  v11 = (1.0 - (1.0 - v8) * a2) * a3;
  if (v7 <= 1)
  {
    if (!v7)
    {
      v6 = a3;
      a2 = v11;
      a3 = v9;
      goto LABEL_20;
    }

    if (v7 == 1)
    {
      v6 = (1.0 - v8 * a2) * a3;
      a2 = a3;
      a3 = v9;
      goto LABEL_20;
    }

LABEL_16:
    v6 = a3;
    a2 = (1.0 - a2) * a3;
    a3 = v10;
    goto LABEL_20;
  }

  if (v7 == 2)
  {
    v6 = (1.0 - a2) * a3;
    a2 = a3;
    a3 = v11;
    goto LABEL_20;
  }

  if (v7 == 3)
  {
    v6 = (1.0 - a2) * a3;
    a2 = v10;
    goto LABEL_20;
  }

  if (v7 != 4)
  {
    goto LABEL_16;
  }

  v6 = (1.0 - (1.0 - v8) * a2) * a3;
  a2 = (1.0 - a2) * a3;
LABEL_20:
  result.blue = a3;
  result.green = a2;
  result.red = v6;
  return result;
}

void lazy protocol witness table accessor for type Color.RGBColorSpace and conformance Color.RGBColorSpace()
{
  if (!lazy protocol witness table cache variable for type Color.RGBColorSpace and conformance Color.RGBColorSpace)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.RGBColorSpace, &type metadata for Color.RGBColorSpace, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.RGBColorSpace and conformance Color.RGBColorSpace);
  }
}

unint64_t AccessibilityAnnouncementPriority.platformRawValue.getter()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

Swift::Int AccessibilityAnnouncementPriority.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AccessibilitySpeechAttributes.adjustedPitch.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AccessibilitySpeechAttributes.phoneticRepresentation.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void AccessibilitySpeechAttributes.phoneticRepresentation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void AccessibilitySpeechAttributes.init(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *a2 = 514;
  *(a2 + 8) = 0;
  *(a2 + 16) = 769;
  *(a2 + 24) = 0;
  v5 = (a2 + 24);
  *(a2 + 32) = 0;

  if (v3)
  {

    v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV038AccessibilitySpeechSpellsOutCharactersI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);

    v8 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV032AccessibilitySpeechAdjustedPitchI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4);
    v10 = v9;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV040AccessibilitySpeechAnnouncementsPriorityI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v4, v18);

    v11 = v18[0];
  }

  else
  {
    v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v8 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v4);
    v10 = v12;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>(0, v12, v13, v14);
    BloomFilter.init(hashValue:)(v15);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v17);
    if (v16)
    {
      v11 = *(v16 + 72);
    }

    else
    {
      v11 = 3;
    }
  }

  *a2 = v6;
  *(a2 + 1) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 17) = v11;
  *v5 = 0;
  *(a2 + 32) = 0;
}

void __swiftcall AccessibilitySpeechAttributes.init(alwaysIncludesPunctuation:spellsOutCharacters:adjustedPitch:announcementsPriority:phoneticRepresentation:)(SwiftUI::AccessibilitySpeechAttributes *__return_ptr retstr, Swift::Bool_optional alwaysIncludesPunctuation, Swift::Bool_optional spellsOutCharacters, Swift::Double_optional adjustedPitch, SwiftUI::AccessibilityAnnouncementPriority_optional announcementsPriority, Swift::String_optional phoneticRepresentation)
{
  v7 = *phoneticRepresentation.value._countAndFlagsBits;
  retstr->alwaysIncludesPunctuation = alwaysIncludesPunctuation;
  retstr->spellsOutCharacters = spellsOutCharacters;
  retstr->adjustedPitch.value = *&adjustedPitch.is_nil;
  retstr->adjustedPitch.is_nil = announcementsPriority.value & 1;
  retstr->announcementsPriority.value = v7;
  retstr->phoneticRepresentation.value._countAndFlagsBits = phoneticRepresentation.value._object;
  retstr->phoneticRepresentation.value._object = v6;
}

double AccessibilitySpeechAttributes.applyTo(environment:)(Swift::UInt *a1)
{
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = v1[16];
  v6 = v1[17];
  v7 = *a1;
  v8 = *v1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, v8);

  v9 = a1[1];
  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v7, *a1);
  }

  v10 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, v3);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV038AccessibilitySpeechSpellsOutCharactersK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v10, *a1);
  }

  v11 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, v4, v5);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV032AccessibilitySpeechAdjustedPitchK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v11, *a1);
  }

  v12 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2B5(a1, v6);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV040AccessibilitySpeechAnnouncementsPriorityK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v12, *a1);
  }

  return result;
}

void __swiftcall AccessibilitySpeechAttributes.combined(with:)(SwiftUI::AccessibilitySpeechAttributes *__return_ptr retstr, SwiftUI::AccessibilitySpeechAttributes *with)
{
  value = with->spellsOutCharacters.value;
  v5 = with->adjustedPitch.value;
  v18 = with->alwaysIncludesPunctuation.value;
  is_nil = with->adjustedPitch.is_nil;
  v6 = with->announcementsPriority.value;
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 1);
  v10 = v2[16];
  v11 = v2[17];
  if (*(v2 + 4))
  {
    countAndFlagsBits = *(v2 + 3);
  }

  else
  {
    countAndFlagsBits = with->phoneticRepresentation.value._countAndFlagsBits;
  }

  if (v11 == 3)
  {
    v14 = v6;
  }

  else
  {
    v14 = v11;
  }

  if (v10)
  {
    v15 = v5;
  }

  else
  {
    v15 = v9;
  }

  if (v8 == 2)
  {
    v16 = value;
  }

  else
  {
    v16 = v8;
  }

  v17 = v18;
  if (v7 != 2)
  {
    v17 = v7;
  }

  retstr->alwaysIncludesPunctuation.value = v17;
  retstr->spellsOutCharacters.value = v16;
  retstr->adjustedPitch.value = v15;
  retstr->adjustedPitch.is_nil = v10 & is_nil;
  retstr->announcementsPriority.value = v14;
  retstr->phoneticRepresentation.value._countAndFlagsBits = countAndFlagsBits;
  retstr->phoneticRepresentation.value._object = v13;
}

double Text.Style.resolveAccessibilitySpeechAttributes(into:environment:options:)(uint64_t a1, void *a2, int *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = *(v4 + 248);
  if (v8 != 1)
  {
    v9 = *(v4 + 233);
    if (v9 != 3)
    {
      goto LABEL_5;
    }
  }

  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV040AccessibilitySpeechAnnouncementsPriorityI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v5, v24);

    LOBYTE(v9) = v24[0];
LABEL_5:
    v10 = *(v4 + 216);
    if (v8 != 1 && *(v4 + 216) != 2)
    {
      goto LABEL_18;
    }

    if (v6)
    {

      v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v5);

      if (v8 == 1)
      {
        goto LABEL_22;
      }

LABEL_21:
      v15 = v10 >> 8;
      if (v15 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

LABEL_20:
    v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v5);
    if (v8 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>(0, a2, a3, a4);
  BloomFilter.init(hashValue:)(v13);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v5, v25);
  if (v14)
  {
    LOBYTE(v9) = *(v14 + 72);
  }

  else
  {
    LOBYTE(v9) = 3;
  }

  v10 = *(v4 + 216);
  if (v8 == 1 || *(v4 + 216) == 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  v12 = v10;
  if (v8 != 1)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v6)
  {

    LOBYTE(v15) = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV038AccessibilitySpeechSpellsOutCharactersI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v5);

    if (v8 == 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v15) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v5);
    if (v8 == 1)
    {
      goto LABEL_27;
    }
  }

LABEL_26:
  if ((*(v4 + 232) & 1) == 0)
  {
    v18 = 0;
    v16 = *(v4 + 224);
    goto LABEL_31;
  }

LABEL_27:
  if (v6)
  {

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV032AccessibilitySpeechAdjustedPitchI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v5);
    v18 = v17;
  }

  else
  {
    v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v5);
    v18 = v19;
  }

LABEL_31:
  v25 = v5;
  v26 = v6;
  if (EnvironmentValues.accessibilityTextAttributeResolver.getter())
  {
    LOBYTE(v25) = v12;
    BYTE1(v25) = v15;
    v26 = v16;
    v27 = v18 & 1;
    v28 = v9;
    v29 = 0;
    v30 = 0;
    v24[0] = v5;
    v24[1] = v6;
    v23 = v7;
    (*(v20 + 24))(a1, &v25, v24, &v23);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>);
    }
  }
}

BOOL specialized static AccessibilitySpeechAttributes.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  if (v4 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v11 == 2 || ((v11 ^ v4) & 1) != 0)
    {
      return v18;
    }
  }

  if (v5 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v12 == 2 || ((v12 ^ v5) & 1) != 0)
    {
      return v18;
    }
  }

  if (v7)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v8 == 3)
  {
    if (v15 != 3)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    if (v15 == 3 || v8 != v15)
    {
      return v18;
    }
  }

  if (v10)
  {
    return v17 && (v9 == v16 && v10 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v17;
}

void lazy protocol witness table accessor for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority()
{
  if (!lazy protocol witness table cache variable for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityAnnouncementPriority, &type metadata for AccessibilityAnnouncementPriority, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityAnnouncementPriority and conformance AccessibilityAnnouncementPriority);
  }
}

uint64_t initializeWithCopy for AccessibilitySpeechAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for AccessibilitySpeechAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for AccessibilitySpeechAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t static HVStack._makeView(root:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v10[4] = *(a2 + 64);
  v11 = *(a2 + 80);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v12 = v6;
  return (*(*(a6 + 8) + 88))(&v12, v10, a3, a4, a5);
}

uint64_t static HVStack.layoutProperties.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 56))();
  *a2 = result & 1;
  *(a2 + 1) = 256;
  return result;
}

__n128 HVStack.makeCache(subviews:)@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v22 - v10;
  v26 = *a1;
  v24 = *(a1 + 1);
  v23 = *(a1 + 16);
  v25 = *(a1 + 17);
  v12 = *(a3 + 56);

  v13 = v12(a2, a3);
  (*(a3 + 48))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v16 = (*(a3 + 40))(a2, a3);
  LOBYTE(AssociatedTypeWitness) = v17;
  v18 = (*(a3 + 64))(a2, a3);
  v30 = AssociatedTypeWitness & 1;
  v29 = 0;
  v28 = 0;
  v27 = v23;
  *&v31 = v15;
  *(&v31 + 1) = v16;
  LOBYTE(v32) = AssociatedTypeWitness & 1;
  BYTE1(v32) = v13 & 1;
  WORD3(v32) = v40;
  *(&v32 + 2) = *&v39[7];
  *(&v32 + 1) = 0;
  *&v33 = 0xFFF0000000000000;
  BYTE8(v33) = 0;
  HIDWORD(v33) = *&v39[3];
  *(&v33 + 9) = *v39;
  v34.n128_u64[0] = 0xFFF0000000000000;
  v34.n128_u8[8] = 0;
  v34.n128_u32[3] = *&v38[3];
  *(&v34.n128_u32[2] + 1) = *v38;
  v35 = 0uLL;
  LODWORD(v36) = v26;
  *(&v36 + 1) = v24;
  LOBYTE(v37) = v23;
  BYTE1(v37) = v25;
  BYTE2(v37) = v18 & 1;
  *(&v37 + 1) = MEMORY[0x1E69E7CC0];
  StackLayout.makeChildren()();
  v19 = v36;
  *(a4 + 64) = v35;
  *(a4 + 80) = v19;
  *(a4 + 96) = v37;
  v20 = v32;
  *a4 = v31;
  *(a4 + 16) = v20;
  result = v34;
  *(a4 + 32) = v33;
  *(a4 + 48) = result;
  return result;
}

char *HVStack.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v30 - v11;
  v34 = *a2;
  v32 = *(a2 + 1);
  v31 = *(a2 + 16);
  v33 = *(a2 + 17);
  v13 = (*(a4 + 56))(a3, a4, v10);
  (*(a4 + 48))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v16 = (*(a4 + 40))(a3, a4);
  LOBYTE(a4) = *(a1 + 98);
  LOBYTE(v9) = v17 & 1;
  v38 = v17 & 1;
  v18 = v13 & 1;
  v37 = 0;
  v36 = 0;
  v35 = v31;
  LOBYTE(v12) = v31;
  v19 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v19;
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  *&v43[15] = *(a1 + 95);
  v42[4] = v22;
  *v43 = v23;
  v42[2] = v20;
  v42[3] = v21;
  v24 = v32;

  outlined destroy of StackLayout.Header(v42);
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v9;
  *(a1 + 17) = v18;
  *(a1 + 18) = *&v40[7];
  *(a1 + 22) = v41;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 41) = *v40;
  *(a1 + 44) = *&v40[3];
  *(a1 + 48) = 0xFFF0000000000000;
  *(a1 + 56) = 0;
  v25 = *v39;
  *(a1 + 60) = *&v39[3];
  *(a1 + 57) = v25;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  LOBYTE(v25) = v33;
  *(a1 + 80) = v34;
  *(a1 + 88) = v24;
  *(a1 + 96) = v12;
  *(a1 + 97) = v25;
  *(a1 + 98) = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + 104);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v27 + 16));
  }

  else
  {
    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11StackLayoutV5Child33_00690F480F8D293143B214DBE6D72CD0LLV_Tt1g5(0, *(v27 + 24) >> 1);

    *(a1 + 104) = v28;
  }

  return StackLayout.makeChildren()();
}

void HVStack.spacing(subviews:cache:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  StackLayout.UnmanagedImplementation.spacing()(a1, &v6);
  v5 = *(a1 + 97);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a1 + 104) = v4;
}

double HVStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, __n128 *a6)
{
  v11 = a6[6].n128_u64[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v12 = *(v11 + 2);
  v14.n128_u8[0] = a2 & 1;
  closure #1 in StackLayout.sizeThatFits(_:)(a6, (v11 + 32), v12, *&a1, a2 & 1, *&a3, a4 & 1, &v14);
  result = v14.n128_f64[0];
  a6[6].n128_u64[1] = v11;
  return result;
}

uint64_t HVStack.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a10 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
  }

  result = StackLayout.UnmanagedImplementation.commitPlacements(in:proposedSize:)(a1, a2 & 1, a3, a4 & 1, a10, v19 + 2, *(v19 + 2), a5, a6, a7, a8);
  *(a10 + 104) = v19;
  return result;
}

uint64_t assignWithCopy for _StackLayoutCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  LOBYTE(v6) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;

  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

double (*_BlurEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

uint64_t _BlurEffect.descriptionAttributes.getter(char a1, double a2)
{
  type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18DDAB4C0;
  *(v3 + 32) = 0x737569646172;
  *(v3 + 40) = 0xE600000000000000;
  *(v3 + 48) = Double.description.getter();
  *(v3 + 56) = v4;
  *(v3 + 64) = 0x65757161704F7369;
  *(v3 + 72) = 0xE800000000000000;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v5, v6);

  *(v3 + 80) = 0;
  *(v3 + 88) = 0xE000000000000000;
  return v3;
}

double _BlurEffect.effectValue(size:)@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D2>)
{
  v6 = swift_allocObject();
  *v11 = a3;
  WORD4(v11[0]) = a1;
  _s7SwiftUI14GraphicsFilterOWOi_(v11);
  v7 = v15;
  v6[5] = v14;
  v6[6] = v7;
  v6[7] = v16[0];
  *(v6 + 124) = *(v16 + 12);
  v8 = v11[1];
  v6[1] = v11[0];
  v6[2] = v8;
  result = *&v12;
  v10 = v13;
  v6[3] = v12;
  v6[4] = v10;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 12) = 10;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _BlurEffect(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _BlurEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *&v10[0] = v3;
  WORD4(v10[0]) = v4;
  _s7SwiftUI14GraphicsFilterOWOi_(v10);
  v6 = v14;
  v5[5] = v13;
  v5[6] = v6;
  v5[7] = v15[0];
  *(v5 + 124) = *(v15 + 12);
  v7 = v10[1];
  v5[1] = v10[0];
  v5[2] = v7;
  result = *&v11;
  v9 = v12;
  v5[3] = v11;
  v5[4] = v9;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

uint64_t VisualEffect.blur(radius:opaque:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  v9 = a4;
  v10 = a1;
  lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect();
  return VisualEffect.rendererEffect<A>(_:)(&v9, a2, &type metadata for _BlurEffect, a3, a5);
}

uint64_t getEnumTagSinglePayload for _BlurEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _BlurEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for RendererVisualEffect<_BlurEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_BlurEffect>)
  {
    lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect();
    v4 = type metadata accessor for RendererVisualEffect(a1, &type metadata for _BlurEffect, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for RendererVisualEffect<_BlurEffect>);
    }
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>()
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_BlurEffect>(255);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>);
  }
}

SwiftUI::AccessibilityTextContentType::RawValue_optional __swiftcall AccessibilityTextContentType.RawValue.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t View.concentricPadding<A>(_:of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v12[3] = a4;
  v12[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v11[0] = v8;
  View.modifier<A>(_:)();
  return outlined destroy of _AnyAnimatableData(v11);
}

uint64_t View._concentricPadding<A>(corner:in:minimum:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a6;
  v24[1] = a4;
  v9 = a1;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ConcentricCornerPaddingModifier(0, v14, v15, v13);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - v19;
  LOBYTE(v9) = *v9;
  (*(v10 + 16))(v12, a2, a5, v18);
  *v20 = v9;
  (*(v10 + 32))(&v20[*(v16 + 36)], v12, a5);
  v21 = &v20[*(v16 + 40)];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 1) = v22;
  v21[32] = *(a3 + 32);
  View.modifier<A>(_:)();
  return (*(v17 + 8))(v20, v16);
}

double get_witness_table_7SwiftUI4ViewRzAA27CornerConfigurationShape_v1Rd__r__lAA15ModifiedContentVyxAA010ConcentricD15PaddingModifier33_7079FF89BCF97F81EB250A589B9A5CEDLLVyqd__GGAaBHPxAaBHD1__AiA0cL0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t *initializeBufferWithCopyOfBuffer for ConcentricEdgePaddingModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 1) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 1) & ~v5;
    v11 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 32);
    v15 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v15;
    *(v12 + 32) = v14;
  }

  return v3;
}

_BYTE *initializeWithCopy for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

_BYTE *assignWithCopy for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

_BYTE *initializeWithTake for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

_BYTE *assignWithTake for ConcentricEdgePaddingModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcentricEdgePaddingModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
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

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
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

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 > 0xFB)
  {
    return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
  }

  v17 = *a1;
  v18 = v17 >= 4;
  v19 = v17 - 4;
  if (!v18)
  {
    v19 = -1;
  }

  if (v19 + 1 >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ConcentricEdgePaddingModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 1) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
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
            return;
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
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFB)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 1] & ~v9;

        v17(v18);
      }

      else
      {
        *a1 = a2 + 4;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
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
    a1[v10] = v16;
  }
}

uint64_t initializeWithCopy for ConcentricPaddingLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

uint64_t assignWithCopy for ConcentricPaddingLayout(uint64_t a1, uint64_t a2, __n128 a3)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8), a3);
  return a1;
}

uint64_t assignWithTake for ConcentricPaddingLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcentricPaddingLayout(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConcentricPaddingLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ConcentricCornerPaddingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v69 = *a2;
  v8 = *(a2 + 2);
  v53 = *(a2 + 3);
  v9 = *(a2 + 9);
  v54 = *(a2 + 8);
  v67 = *(a2 + 40);
  v10 = *(a2 + 15);
  v68 = *(a2 + 14);
  v11 = *(a2 + 16);
  v12 = *(a2 + 18);
  v13 = *(a2 + 76);
  if ((v9 & 0x22) == 0)
  {
    return (a3)();
  }

  v44 = *(a2 + 17);
  v46 = v13;
  v43 = a5;
  v47 = a6;
  v48 = a3;
  v49 = a4;
  v50 = a7;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v15 = *MEMORY[0x1E698D3F8];
  *&v55 = __PAIR64__(v12, v11);
  v45 = v12;
  *(&v55 + 1) = __PAIR64__(v14, v10);
  v56 = v15;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy();
  v41 = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for containerShape != -1)
  {
    swift_once();
  }

  v16 = static CachedEnvironment.ID.containerShape;
  swift_beginAccess();
  v17 = specialized CachedEnvironment.attribute<A>(id:_:)(v16, closure #1 in _GraphInputs.containerShape.getter, 0);
  swift_endAccess();
  if (one-time initialization token for defaultPadding != -1)
  {
    swift_once();
  }

  v42 = v10;
  v18 = static CachedEnvironment.ID.defaultPadding;
  swift_beginAccess();
  v19 = specialized CachedEnvironment.attribute<A>(id:_:)(v18, key path getter for EnvironmentValues.defaultPadding : EnvironmentValues, 0);
  swift_endAccess();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v20 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v22 = swift_endAccess();
  v23 = v7;
  *&v55 = __PAIR64__(v17, v7);
  *(&v55 + 1) = __PAIR64__(v21, v19);
  v56 = __PAIR64__(v15, v41);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v43;
  v25 = v47;
  v39 = type metadata accessor for ConcentricCornerPaddingModifier.CornerPadding(0, v43, v47, v26);
  swift_getWitnessTable(protocol conformance descriptor for ConcentricCornerPaddingModifier<A>.CornerPadding, v39);
  v40 = v27;
  type metadata accessor for Attribute<EdgeInsets>(0, &lazy cache variable for type metadata for Attribute<EdgeInsets>, &type metadata for EdgeInsets, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v55, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v38, v39, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
  v30 = v52[0];
  type metadata accessor for ConcentricCornerPaddingModifier(0, v24, v25, v31);
  v51 = v23;
  v55 = v69;
  v56 = v8;
  v57 = v53;
  v58 = v54;
  v59 = v9;
  v60 = v67;
  v61 = v68;
  v62 = v42;
  v63 = v11;
  v64 = v44;
  v65 = v45;
  v66 = v46;
  v32 = static ViewModifier.makeConcentricLayout(padding:modifier:inputs:body:)(v52, v30, &v51, &v55, v48);
  v33 = v52[0];
  v34 = v52[1];
  MEMORY[0x1EEE9AC00](v32);
  v38[0] = v24;
  v38[1] = v25;
  LODWORD(v39) = v35;
  BYTE4(v39) = BYTE4(v35) & 1;
  MEMORY[0x1EEE9AC00](v35);
  result = AGGraphMutateAttribute();
  v37 = v50;
  *v50 = v33;
  v37[1] = v34;
  return result;
}

uint64_t ConcentricCornerPaddingModifier.CornerPadding.value.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  v119 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v118 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConcentricCornerPaddingModifier(0, v15, v16, v15);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  *&v105 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v106 = a2;
  ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v10, a5, type metadata accessor for ConcentricCornerPaddingModifier, &v90 - v24);
  v26 = *v25;
  v28 = *(v18 + 8);
  *&v27 = v18 + 8;
  v104 = *&v28;
  result = v28(v25, v17);
  if (v26 >= 4)
  {
    v57 = 0.0;
    if (v26 == 4)
    {
      return result;
    }

    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v102 = *Value;
    v101 = Value[1];
    v100 = Value[2];
    *&v117 = Value[3];
    v44 = *(Value + 2);
    v143 = *(Value + 1);
    v144 = v44;
    v145 = Value[12];
    v97 = v27;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v10, a5, type metadata accessor for ConcentricCornerPaddingModifier, v22);
    (*(v119 + 32))(v118, &v22[*(v17 + 36)], v10);
    v45 = AGGraphGetValue();
    v46 = *(v45 + 8);
    v115 = *v45;
    *&v116 = v46;
    v114 = *(v45 + 16);
    v113 = *(v45 + 20);
    v111 = *(v45 + 24);
    v47 = *(v45 + 32);
    v109 = *(v45 + 36);
    v110 = v47;
    v48 = *(v45 + 40);
    v107 = *(v45 + 44);
    v108 = v48;
    LODWORD(v46) = *(v45 + 52);
    v99 = *(v45 + 48);
    v112 = v46;
    v49 = a5;
    LODWORD(a5) = v26;
    LODWORD(v98) = *(v45 + 56);
    v50 = *&v105;
    v95 = a1;
    v96 = a3;
    v103 = v10;
    v94 = v49;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v10, v49, type metadata accessor for ConcentricCornerPaddingModifier, *&v105);
    v51 = v50 + *(v17 + 40);
    v52 = *v51;
    v53 = *(v51 + 32);
    (*&v104)(v50, v17);
    if (v53)
    {
      v52 = *AGGraphGetValue();
    }

    v5 = 0.0;
    if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
    {
      v52 = 0.0;
    }

    Edge.Set.contains(_:)(SwiftUI_Edge_leading);
    Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
    Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
    *&v139 = __PAIR64__(v101, v102);
    *(&v139 + 1) = __PAIR64__(v117, v100);
    v140 = v143;
    v141 = v144;
    v142 = v145;
    v128 = *&v115;
    v129 = *&v116;
    *&v130 = COERCE_DOUBLE(__PAIR64__(v113, v114));
    v131 = v111;
    v132 = v110;
    v133 = v109;
    v134 = v108;
    v135 = v107;
    v54 = v99;
    v136 = v99;
    v137 = v112;
    v138 = LOBYTE(v98);
    GeometryProxy.containerBoundsChildFrame(containerShape:)(&v128, v146);
    if (v147)
    {
      return (*(v119 + 8))(v118, v103);
    }

    v97 = *&v146[2];
    v98 = *&v146[1];
    v6 = *&v146[5];
    v104 = *v146;
    v105 = *&v146[4];
    v92 = *&v146[6];
    v93 = *&v146[3];
    v90 = v52;
    v91 = *&v146[7];
    v10 = v103;
    v55 = v94;
    ConcentricCornerPaddingModifier.CornerPadding.layoutComputer.getter(v96, &v128);
    v56 = *&v128;
    if (v128 == 0.0)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v56 = static LayoutComputer.defaultValue;
    }

    *&v139 = v111;
    *(&v139 + 1) = __PAIR64__(v109, v110);
    *&v140 = __PAIR64__(v107, v108);
    *(&v140 + 1) = __PAIR64__(v112, v54);
    (*(v116 + 24))(&v128, 0, 0, 1, v114 | (v113 << 32), &v139);
    v57 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v132 & 1) == 0)
    {
      v57 = v128;
      v7 = v129;
      v8 = *&v130;
      v5 = v131;
    }

    specialized static Update.begin()();
    Attribute = AGWeakAttributeGetAttribute();
    v59 = 0uLL;
    v60 = 0uLL;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v59 = *InputValue;
      v60 = InputValue[1];
    }

    v116 = v60;
    v117 = v59;
    static Update.end()();
    v140 = v116;
    v139 = v117;
    ViewSize.proposal.getter(&v124);
    v62 = v124;
    v63 = v125;
    v64 = v126;
    v65 = v127;
    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    v120 = v62;
    v121 = v63;
    v122 = v64;
    v123 = v65;
    (*(*v56 + 120))(&v120);
    v25 = v118;
    CornerConfigurationShape_v1.resolvedRadii(size:)(v10, v55);
    v66 = v31;
    v67 = v57;
    if (a5)
    {
      v66 = v32;
      v67 = v7;
      if (a5 != 1)
      {
        v66 = v34;
        v67 = v5;
        if (a5 != 2)
        {
          v66 = v33;
          v67 = v8;
        }
      }
    }

    v42 = v98;
    v38 = v98 + v93;
    v35 = v6 + v91;
    v41 = v104;
    *&v40 = v105;
    v37 = v104 + v97;
    v36 = v105 + v92;
    v39 = v67 - v66;
    if (v39 <= 0.0)
    {
      goto LABEL_59;
    }

    v30 = byte_1F0045240;
    if (a5 <= 1)
    {
      if (a5)
      {
        if (byte_1F0045240)
        {
          v68 = v98;
        }

        else
        {
          v68 = v104 + v97;
        }

        v69 = v105 + v92;
      }

      else
      {
        if (byte_1F0045240)
        {
          v68 = v98;
        }

        else
        {
          v68 = v104;
        }

        v69 = v105;
      }

      v70 = v6;
      goto LABEL_50;
    }
  }

  if (a5 == 3)
  {
    if (v30)
    {
      v68 = v38;
    }

    else
    {
      v68 = v37;
    }

    v69 = v36;
  }

  else
  {
    if (v30)
    {
      v68 = v38;
    }

    else
    {
      v68 = v41;
    }

    v69 = *&v40;
  }

  v70 = v35;
LABEL_50:
  if (v30)
  {
    v69 = v70;
  }

  v71 = v39 - vabdd_f64(v68, v69);
  if (v71 < 0.0)
  {
    goto LABEL_59;
  }

  if (a5 > 1)
  {
    v72 = v5;
    if (a5 != 2)
    {
      v72 = v8;
    }
  }

  else
  {
    v72 = v57;
    if (a5)
    {
      v72 = v7;
    }
  }

  if (v71 >= v72)
  {
LABEL_59:
    if (byte_1F0045241)
    {
      v73 = v38;
    }

    else
    {
      v73 = v41;
    }

    if (byte_1F0045241)
    {
      v74 = v38;
    }

    else
    {
      v74 = v37;
    }

    if (byte_1F0045241)
    {
      v75 = v42;
    }

    else
    {
      v75 = v37;
    }

    if (byte_1F0045241)
    {
      v76 = v42;
    }

    else
    {
      v76 = v41;
    }

    v77 = v31;
    v78 = v57;
    if (a5)
    {
      v77 = v32;
      v78 = v7;
      if (a5 != 1)
      {
        v77 = v34;
        v78 = v5;
        if (a5 != 2)
        {
          v77 = v33;
          v78 = v8;
        }
      }
    }

    v79 = v78 - v77;
    if (v79 > 0.0)
    {
      if (a5 > 1)
      {
        v75 = v73;
        v80 = v40;
        v81 = v35;
        if (a5 != 2)
        {
          v75 = v74;
          *&v80 = v36;
          v81 = v35;
        }
      }

      else
      {
        *&v80 = v36;
        v81 = v6;
        if (!a5)
        {
          v75 = v76;
          v80 = v40;
          v81 = v6;
        }
      }

      v82 = byte_1F0045241 ? v81 : *&v80;
      v83 = v79 - vabdd_f64(v75, v82);
      if (v83 >= 0.0)
      {
        if (a5 > 1)
        {
          v84 = v5;
          if (a5 != 2)
          {
            v84 = v8;
          }
        }

        else
        {
          v84 = v57;
          if (a5)
          {
            v84 = v7;
          }
        }

        if (v83 < v84)
        {
LABEL_125:

          return (*(v119 + 8))(v25, v10);
        }
      }
    }

    goto LABEL_126;
  }

  v85 = v57;
  if (a5)
  {
    v31 = v34;
    v85 = v5;
    if (a5 != 2)
    {
      v31 = v32;
      v85 = v7;
      if (a5 != 1)
      {
        v31 = v33;
        v85 = v8;
      }
    }
  }

  v86 = v85 - v31;
  if (v86 > 0.0)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v87 = byte_1F0045241 ? v38 : v41;
      }

      else
      {
        v87 = byte_1F0045241 ? v38 : v37;
        *&v40 = v36;
      }

      v6 = v35;
    }

    else if (a5)
    {
      v87 = byte_1F0045241 ? v42 : v37;
      *&v40 = v36;
    }

    else
    {
      v87 = byte_1F0045241 ? v42 : v41;
    }

    v88 = byte_1F0045241 ? v6 : *&v40;
    v89 = v86 - vabdd_f64(v87, v88);
    if (v89 >= 0.0)
    {
      if (a5 > 1)
      {
        v57 = v5;
        if (a5 != 2)
        {
          v57 = v8;
        }
      }

      else if (a5)
      {
        v57 = v7;
      }

      if (v89 < v57)
      {
        goto LABEL_125;
      }
    }
  }

LABEL_126:

  return (*(v119 + 8))(v25, v10);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ConcentricCornerPaddingModifier<A>.CornerPadding(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ConcentricCornerPaddingModifier<A>.CornerPadding, a1);

  return static AsyncAttribute.flags.getter();
}

double protocol witness for static StatefulRule.initialValue.getter in conformance ConcentricProxy@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return result;
}

double protocol witness for Rule.value.getter in conformance ConcentricPosition@<D0>(double *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = AGGraphGetValue();
  result = v4 + *v5;
  *a1 = v3 + v5[1];
  a1[1] = result;
  return result;
}

double protocol witness for Rule.value.getter in conformance ConcentricSize@<D0>(_OWORD *a1@<X8>)
{
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v3.f64[0] = Value[1];
  v4.f64[0] = Value[3];
  ViewSize.inset(by:)(v7, *Value, v3, Value[2], v4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

void ConcentricPaddingLayout.placement(of:in:)(uint64_t InputValue, __int128 *a2)
{
  if (a2[3])
  {
    InputValue = AGGraphGetInputValue();
  }

  MEMORY[0x1EEE9AC00](InputValue);
  MEMORY[0x1EEE9AC00](v3);
  AGGraphWithUpdate();
  __break(1u);
}

int8x16_t closure #1 in ConcentricPaddingLayout.placement(of:in:)@<Q0>(__int128 *a1@<X0>, int8x16_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1[1];
  v22 = *a1;
  v23 = v9;
  v24 = a1[2];
  v25 = *(a1 + 48);
  swift_getAtKeyPath();

  v14 = v19;
  v15 = v20;
  v16 = v21;
  (*(v17 + 24))(v26, *&a4, *&a5, 0, v18, &v14);
  if (v27)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  result = vbicq_s8(v26[0], v11);
  v13 = vbicq_s8(v26[1], v11);
  *a3 = result;
  a3[1] = v13;
  return result;
}

double key path getter for PlacementContext.subscript<A>(dynamicMember:) : PlacementContextContainerShapeData@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + 8);
  type metadata accessor for Attribute<EdgeInsets>(0, &lazy cache variable for type metadata for EnvironmentFetch<ContainerShapeData>, &type metadata for ContainerShapeData, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  type metadata accessor for LayoutEngineBox<ConcentricLayoutComputer.Engine>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, ContainerShapeData>, &type metadata for EnvironmentValues, &type metadata for ContainerShapeData, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  lazy protocol witness table accessor for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>);
  v5 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
  v7 = *v5;
  v8 = v5[1];
  *v9 = v5[2];
  *&v9[9] = *(v5 + 41);

  *a3 = v7;
  a3[1] = v8;
  a3[2] = *v9;
  result = *&v9[9];
  *(a3 + 41) = *&v9[9];
  return result;
}

double protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance ConcentricPaddingLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  LayoutProxy.size(in:)(&v9);
  if (!v4)
  {
    return v3;
  }

  return result;
}

double specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);
  *a1 = v4;

  return result;
}

void lazy protocol witness table accessor for type EnvironmentFetch<ContainerShapeData> and conformance EnvironmentFetch<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for Attribute<EdgeInsets>(255, &lazy cache variable for type metadata for EnvironmentFetch<ContainerShapeData>, &type metadata for ContainerShapeData, type metadata accessor for EnvironmentFetch);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

uint64_t assignWithCopy for ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 160) = v10;
  return a1;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v6 = *(a2 + 160);
  v7 = *(a2 + 176);
  v8 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v7;
  *(a1 + 192) = v8;
  *(a1 + 160) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcentricLayoutComputer.Engine(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ConcentricLayoutComputer.Engine(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  swift_weakCopyAssign();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return a1;
}

uint64_t initializeWithTake for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t static GeometryEffect._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

__n128 ProjectionTransform.flipRTL(width:)(double a1)
{
  v16 = 0xBFF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v3 = *v1;
  v14[1] = v1[1];
  v4 = v1[3];
  v14[2] = v1[2];
  v20 = xmmword_18DDAA020;
  v21 = a1;
  v14[3] = v4;
  v22 = xmmword_18DDAB500;
  v15 = *(v1 + 8);
  v14[0] = v3;
  ProjectionTransform.concatenating(_:)(v14, v7);
  v10[0] = 0xBFF0000000000000;
  memset(&v10[1], 0, 24);
  v11 = xmmword_18DDAA020;
  v12 = a1;
  v13 = xmmword_18DDAB500;
  ProjectionTransform.concatenating(_:)(v10, v8);
  v5 = v8[3];
  v1[2] = v8[2];
  v1[3] = v5;
  *(v1 + 8) = v9;
  result = v8[1];
  *v1 = v8[0];
  v1[1] = result;
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA17_Rotation3DEffectV_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v74[1] = *(a2 + 16);
  v74[2] = v5;
  v74[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v70 = *(a2 + 32);
    v71 = v7;
    v72 = *(a2 + 64);
    v73 = *(a2 + 80);
    v8 = *(a2 + 16);
    v68 = *a2;
    v69 = v8;
    return (a3)(a1, &v68);
  }

  LODWORD(v68) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_Rotation3DEffectV_Tt1B5(&v68, v74);
  v10 = v68;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v66 = *a2;
  v67 = v12;
  v50 = *(a2 + 32);
  v64 = *(a2 + 36);
  v65 = *(a2 + 52);
  v54 = *(a2 + 76);
  v13 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v13;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v14 = *(a2 + 16);
  v68 = *a2;
  v69 = v14;
  outlined init with copy of _ViewInputs(a2, v61);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v68);
  v16 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v16;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v17 = *(a2 + 16);
  v68 = *a2;
  v69 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v68);
  swift_endAccess();
  v19 = *(a2 + 60);
  v47 = v11;
  v48 = v10;
  *&v68 = __PAIR64__(v15, v10);
  *(&v68 + 1) = __PAIR64__(v19, v18);
  LODWORD(v69) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_Rotation3DEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v68 = __PAIR64__(v23, v22);
  DWORD2(v68) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v50 | 0x1C;
  v61[0] = v66;
  v61[1] = v67;
  *&v62[4] = v64;
  *&v62[20] = v65;
  *v62 = v50 | 0x1C;
  *&v62[28] = v20;
  *v63 = v21;
  *&v63[4] = v21;
  *&v63[8] = v26;
  *&v63[12] = v54;
  *v59 = *v62;
  *&v59[16] = *&v62[16];
  *v60 = *v63;
  *&v60[16] = HIDWORD(v54);
  v57 = v66;
  v58 = v67;
  v28 = outlined init with copy of _ViewInputs(v61, &v68);
  a3(v55, v28, &v57);
  v70 = *v59;
  v71 = *&v59[16];
  v72 = *v60;
  v73 = *&v60[16];
  v68 = v57;
  v69 = v58;
  outlined destroy of _ViewInputs(&v68);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v54;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v53 = v20;
  v31 = ++lastIdentity;
  v51 = *&v74[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v33;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v57 = *a2;
    v58 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v57);
    v36 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v36;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v57 = *a2;
    v58 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v57);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v57);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v57 = __PAIR64__(v48, v31);
    *(&v57 + 1) = __PAIR64__(v38, v35);
    *&v58 = __PAIR64__(v43, v47);
    DWORD2(v58) = v40;
    BYTE12(v58) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectDisplayList<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for GeometryEffectDisplayList);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<_Rotation3DEffect> and conformance GeometryEffectDisplayList<A>();
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v54;
    v20 = v53;
LABEL_17:
    v57 = v66;
    v58 = v67;
    *v59 = v27;
    *&v59[4] = v64;
    *&v59[20] = v65;
    *&v59[28] = v20;
    *v60 = v21;
    *&v60[4] = v21;
    *&v60[8] = v26;
    *&v60[12] = v30;
    result = outlined destroy of _ViewInputs(&v57);
    *a4 = v55[0];
    a4[1] = v55[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v74[0], &v57);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v56[0] = v31;
    v45 = Attribute<A>.subscript.modify(&v57, result);
    v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
    (v45)(&v57, 0, v46);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n46VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D15AVLLVGA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v66[1] = *(a2 + 16);
  v66[2] = v6;
  v66[0] = *a2;
  v7 = WORD2(v6);
  if ((BYTE4(v6) & 0x20) != 0)
  {
    v53 = a3;
    LODWORD(v67) = a1;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt1B5(&v67, v66);
    v9 = v67;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v10 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v10) = specialized CachedEnvironment.attribute<A>(id:_:)(v10, closure #1 in _GraphInputs.layoutDirection.getter, 0);
    v11 = *(a2 + 16);
    v63 = *a2;
    v64 = v11;
    v51 = *(a2 + 32);
    v61 = *(a2 + 36);
    v62 = *(a2 + 52);
    v55 = *(a2 + 76);
    v12 = *(a2 + 48);
    *v69 = *(a2 + 32);
    *&v69[16] = v12;
    *v70 = *(a2 + 64);
    *&v70[16] = *(a2 + 80);
    v13 = *(a2 + 16);
    v67 = *a2;
    v68 = v13;
    outlined init with copy of _ViewInputs(a2, &v57);
    v14 = CachedEnvironment.animatedCGSize(for:)(&v67);
    v15 = *(a2 + 48);
    *v69 = *(a2 + 32);
    *&v69[16] = v15;
    *v70 = *(a2 + 64);
    *&v70[16] = *(a2 + 80);
    v16 = *(a2 + 16);
    v67 = *a2;
    v68 = v16;
    v17 = CachedEnvironment.animatedPosition(for:)(&v67);
    swift_endAccess();
    v18 = *(a2 + 60);
    v48 = v10;
    v49 = v9;
    *&v67 = __PAIR64__(v14, v9);
    *(&v67 + 1) = __PAIR64__(v18, v17);
    LODWORD(v68) = v10;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>();
    v19 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v20 = *(swift_dynamicCastClassUnconditional() + 248);

    v21 = *(a2 + 64);
    v22 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v23 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v24 = specialized CachedEnvironment.attribute<A>(id:_:)(v23, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    *&v67 = __PAIR64__(v22, v21);
    DWORD2(v67) = v24;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    v67 = v63;
    v68 = v64;
    *&v69[4] = v61;
    *&v69[20] = v62;
    *v69 = v51 | 0x1C;
    *&v69[28] = v19;
    *v70 = v20;
    *&v70[4] = v20;
    *&v70[8] = v25;
    *&v70[12] = v55;
    outlined init with copy of _ViewInputs(&v67, &v57);
    (a4)(v56, &v67, v53);
    outlined destroy of _ViewInputs(&v67);
    v26 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v27 = v55;
    v28 = v19;
    if (v26)
    {
      v29 = lastIdentity + 1;
      lastIdentity = v29;
      v30 = *&v66[0];
      v47 = v28;
      v54 = v29;
      if ((v7 & 0x100) != 0)
      {
        v44 = *&v66[0];
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v66[0], &v57);
        result = AGWeakAttributeGetAttribute();
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v31 = *MEMORY[0x1E698D3F8];
        v65[0] = v29;
        v45 = Attribute<A>.subscript.modify(&v57, result);
        v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v65);
        (v45)(&v57, 0, v46);
        v30 = v44;
      }

      else
      {
        v31 = *MEMORY[0x1E698D3F8];
      }

      v32 = *(a2 + 48);
      *v59 = *(a2 + 32);
      *&v59[16] = v32;
      *v60 = *(a2 + 64);
      *&v60[16] = *(a2 + 80);
      v33 = *(a2 + 16);
      v57 = *a2;
      v58 = v33;
      swift_beginAccess();
      v34 = CachedEnvironment.animatedPosition(for:)(&v57);
      v35 = *(a2 + 48);
      *v59 = *(a2 + 32);
      *&v59[16] = v35;
      *v60 = *(a2 + 64);
      *&v60[16] = *(a2 + 80);
      v36 = *(a2 + 16);
      v57 = *a2;
      v58 = v36;
      v37 = CachedEnvironment.animatedCGSize(for:)(&v57);
      swift_endAccess();
      v38 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v56[0]);
      if ((v38 & 0x100000000) != 0)
      {
        v39 = v31;
      }

      else
      {
        v39 = v38;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v40 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v30, v57);
      if (v40)
      {
        v41 = *(v40 + 72);
      }

      else
      {
        v41 = 0;
      }

      v42 = *(a2 + 68);
      *&v57 = __PAIR64__(v49, v54);
      *(&v57 + 1) = __PAIR64__(v37, v34);
      *&v58 = __PAIR64__(v42, v48);
      DWORD2(v58) = v39;
      BYTE12(v58) = v41;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>(0);
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>);
      v43 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v57) = 0;
      PreferencesOutputs.subscript.setter(v43, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v27 = v55;
      v28 = v47;
    }

    v57 = v63;
    v58 = v64;
    *v59 = v51 | 0x1C;
    *&v59[4] = v61;
    *&v59[20] = v62;
    *&v59[28] = v28;
    *v60 = v20;
    *&v60[4] = v20;
    *&v60[8] = v25;
    *&v60[12] = v27;
    result = outlined destroy of _ViewInputs(&v57);
    *a5 = v56[0];
    a5[1] = v56[1];
    return result;
  }

  return a4(a2, a3);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n43VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D12AVLLVG_A_TG5AKyAA15ModifiedContentVyA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA010pq6F033_5rstuvwxyz15LLVySiGG_AA0nO6D8AVLLVTG5AKyAA15ModifiedContentVyAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n49VtFZAjA01_K0V_APtcfU0_ACyACyACyAA01_ef1_D0VyAA010pq6F033_5rstuvwxyz14LLVySiGGAA0nO6D18AVLLVGA_GA_G_A_TG5AKyAA15ModifiedContentVyA_yA_yA_yAA01_J16Modifier_ContentVyAA0pQ8ModifierAVLLVySiGGAWGAWGAWGAWGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v74[1] = *(a2 + 16);
  v74[2] = v5;
  v74[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v70 = *(a2 + 32);
    v71 = v7;
    v72 = *(a2 + 64);
    v73 = *(a2 + 80);
    v8 = *(a2 + 16);
    v68 = *a2;
    v69 = v8;
    return a3(a1, &v68);
  }

  LODWORD(v68) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt1B5(&v68, v74);
  v10 = v68;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v66 = *a2;
  v67 = v12;
  v50 = *(a2 + 32);
  v64 = *(a2 + 36);
  v65 = *(a2 + 52);
  v54 = *(a2 + 76);
  v13 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v13;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v14 = *(a2 + 16);
  v68 = *a2;
  v69 = v14;
  outlined init with copy of _ViewInputs(a2, v61);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v68);
  v16 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v16;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v17 = *(a2 + 16);
  v68 = *a2;
  v69 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v68);
  swift_endAccess();
  v19 = *(a2 + 60);
  v47 = v11;
  v48 = v10;
  *&v68 = __PAIR64__(v15, v10);
  *(&v68 + 1) = __PAIR64__(v19, v18);
  LODWORD(v69) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<ScalePulseEffect>, lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect, &type metadata for ScalePulseEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<ScalePulseEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v68 = __PAIR64__(v23, v22);
  DWORD2(v68) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v50 | 0x1C;
  v61[0] = v66;
  v61[1] = v67;
  *&v62[4] = v64;
  *&v62[20] = v65;
  *v62 = v50 | 0x1C;
  *&v62[28] = v20;
  *v63 = v21;
  *&v63[4] = v21;
  *&v63[8] = v26;
  *&v63[12] = v54;
  *v59 = *v62;
  *&v59[16] = *&v62[16];
  *v60 = *v63;
  *&v60[16] = HIDWORD(v54);
  v57 = v66;
  v58 = v67;
  v28 = outlined init with copy of _ViewInputs(v61, &v68);
  (a3)(v55, v28, &v57);
  v70 = *v59;
  v71 = *&v59[16];
  v72 = *v60;
  v73 = *&v60[16];
  v68 = v57;
  v69 = v58;
  outlined destroy of _ViewInputs(&v68);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v54;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v53 = v20;
  v31 = ++lastIdentity;
  v51 = *&v74[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v33;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v57 = *a2;
    v58 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v57);
    v36 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v36;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v57 = *a2;
    v58 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v57);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v57);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v57 = __PAIR64__(v48, v31);
    *(&v57 + 1) = __PAIR64__(v38, v35);
    *&v58 = __PAIR64__(v43, v47);
    DWORD2(v58) = v40;
    BYTE12(v58) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>(0);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<ScalePulseEffect>>);
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v54;
    v20 = v53;
LABEL_17:
    v57 = v66;
    v58 = v67;
    *v59 = v27;
    *&v59[4] = v64;
    *&v59[20] = v65;
    *&v59[28] = v20;
    *v60 = v21;
    *&v60[4] = v21;
    *&v60[8] = v26;
    *&v60[12] = v30;
    result = outlined destroy of _ViewInputs(&v57);
    *a4 = v55[0];
    a4[1] = v55[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v74[0], &v57);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v56[0] = v31;
    v45 = Attribute<A>.subscript.modify(&v57, result);
    v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
    (v45)(&v57, 0, v46);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *_s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j7RzAA0E8r8R_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA015p21InteractionF0VG_AA0n5q8F033_404stuvW7CLLVTG5AKyAA0Z7ContentVyAA01_jR8_ContentVyAA0p11InteractionR0VGAWGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = (a2 + 36);
  v5 = *(a2 + 36);
  if ((v5 & 0x20) != 0)
  {
    v45 = *a2;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v9 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v9) = specialized CachedEnvironment.attribute<A>(id:_:)(v9, closure #1 in _GraphInputs.layoutDirection.getter, 0);
    v10 = *(a2 + 16);
    v56 = *a2;
    v57 = v10;
    v47 = *(a2 + 32);
    v54 = *v6;
    v55 = *(v6 + 2);
    v48 = *(a2 + 76);
    v11 = *(a2 + 48);
    *v61 = *(a2 + 32);
    *&v61[16] = v11;
    *v62 = *(a2 + 64);
    *&v62[16] = *(a2 + 80);
    v12 = *(a2 + 16);
    v59 = *a2;
    v60 = v12;
    outlined init with copy of _ViewInputs(a2, &v50);
    v13 = CachedEnvironment.animatedCGSize(for:)(&v59);
    v14 = *(a2 + 48);
    *v61 = *(a2 + 32);
    *&v61[16] = v14;
    *v62 = *(a2 + 64);
    *&v62[16] = *(a2 + 80);
    v15 = *(a2 + 16);
    v59 = *a2;
    v60 = v15;
    v16 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v17 = *(a2 + 60);
    v43 = v9;
    v44 = a1;
    *&v59 = __PAIR64__(v13, a1);
    *(&v59 + 1) = __PAIR64__(v17, v16);
    LODWORD(v60) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v19 = *(swift_dynamicCastClassUnconditional() + 248);

    v20 = *(a2 + 64);
    v21 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v22 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    *&v59 = __PAIR64__(v21, v20);
    DWORD2(v59) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v24 = Attribute.init<A>(body:value:flags:update:)();
    v59 = v56;
    v60 = v57;
    *&v61[4] = v54;
    *&v61[20] = v55;
    *v61 = v47 | 0x1C;
    *&v61[28] = v18;
    *v62 = v19;
    *&v62[4] = v19;
    *&v62[8] = v24;
    *&v62[12] = v48;
    outlined init with copy of _ViewInputs(&v59, &v50);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v59, v49);
    outlined destroy of _ViewInputs(&v59);
    v25 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v26 = v48;
    if (v25)
    {
      v27 = ++lastIdentity;
      v42 = v18;
      if ((v5 & 0x100) != 0)
      {
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v45, &v50);
        result = AGWeakAttributeGetAttribute();
        v28 = *MEMORY[0x1E698D3F8];
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v58[0] = v27;
        v40 = Attribute<A>.subscript.modify(&v50, result);
        v41 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
        (v40)(&v50, 0, v41);
      }

      else
      {
        v28 = *MEMORY[0x1E698D3F8];
      }

      v29 = *(a2 + 48);
      *v52 = *(a2 + 32);
      *&v52[16] = v29;
      *v53 = *(a2 + 64);
      *&v53[16] = *(a2 + 80);
      v30 = *(a2 + 16);
      v50 = *a2;
      v51 = v30;
      swift_beginAccess();
      v31 = CachedEnvironment.animatedPosition(for:)(&v50);
      v32 = *(a2 + 48);
      *v52 = *(a2 + 32);
      *&v52[16] = v32;
      *v53 = *(a2 + 64);
      *&v53[16] = *(a2 + 80);
      v33 = *(a2 + 16);
      v50 = *a2;
      v51 = v33;
      v34 = CachedEnvironment.animatedCGSize(for:)(&v50);
      swift_endAccess();
      v35 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v49[0]);
      if ((v35 & 0x100000000) == 0)
      {
        v28 = v35;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v36 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v45, v50);
      if (v36)
      {
        v37 = *(v36 + 72);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(a2 + 68);
      *&v50 = __PAIR64__(v44, v27);
      *(&v50 + 1) = __PAIR64__(v34, v31);
      *&v51 = __PAIR64__(v38, v43);
      DWORD2(v51) = v28;
      BYTE12(v51) = v37;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>(0);
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>);
      v39 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v50) = 0;
      PreferencesOutputs.subscript.setter(v39, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v26 = v48;
      v18 = v42;
    }

    v50 = v56;
    v51 = v57;
    *v52 = v47 | 0x1C;
    *&v52[4] = v54;
    *&v52[20] = v55;
    *&v52[28] = v18;
    *v53 = v19;
    *&v53[4] = v19;
    *&v53[8] = v24;
    *&v53[12] = v26;
    result = outlined destroy of _ViewInputs(&v50);
    *a4 = v49[0];
    a4[1] = v49[1];
    return result;
  }

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a4);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = (a2 + 36);
  v5 = *(a2 + 36);
  if ((v5 & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v67 = *(a2 + 32);
    v68 = v7;
    v69 = *(a2 + 64);
    v70 = *(a2 + 80);
    v8 = *(a2 + 16);
    v65 = *a2;
    v66 = v8;
    return a3(a1, &v65);
  }

  v10 = a1;
  v46 = *a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v63 = *a2;
  v64 = v12;
  v48 = *(a2 + 32);
  v61 = *v6;
  v62 = *(v6 + 2);
  v50 = *(a2 + 76);
  v13 = *(a2 + 48);
  v67 = *(a2 + 32);
  v68 = v13;
  v69 = *(a2 + 64);
  v70 = *(a2 + 80);
  v14 = *(a2 + 16);
  v65 = *a2;
  v66 = v14;
  outlined init with copy of _ViewInputs(a2, v58);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v65);
  v16 = *(a2 + 48);
  v67 = *(a2 + 32);
  v68 = v16;
  v69 = *(a2 + 64);
  v70 = *(a2 + 80);
  v17 = *(a2 + 16);
  v65 = *a2;
  v66 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v65);
  swift_endAccess();
  v19 = *(a2 + 60);
  v44 = v11;
  v45 = v10;
  *&v65 = __PAIR64__(v15, v10);
  *(&v65 + 1) = __PAIR64__(v19, v18);
  LODWORD(v66) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<FlexStateModifier>, lazy protocol witness table accessor for type FlexStateModifier and conformance FlexStateModifier, &type metadata for FlexStateModifier, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<FlexStateModifier> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v65 = __PAIR64__(v23, v22);
  DWORD2(v65) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v48 | 0x1C;
  v58[0] = v63;
  v58[1] = v64;
  *&v59[4] = v61;
  *&v59[20] = v62;
  *v59 = v48 | 0x1C;
  v49 = v20;
  *&v59[28] = v20;
  *v60 = v21;
  *&v60[4] = v21;
  *&v60[8] = v26;
  *&v60[12] = v50;
  *v56 = *v59;
  *&v56[16] = *&v59[16];
  *v57 = *v60;
  *&v57[16] = HIDWORD(v50);
  v54 = v63;
  v55 = v64;
  v28 = outlined init with copy of _ViewInputs(v58, &v65);
  (a3)(v52, v28, &v54);
  v67 = *v56;
  v68 = *&v56[16];
  v69 = *v57;
  v70 = *&v57[16];
  v65 = v54;
  v66 = v55;
  outlined destroy of _ViewInputs(&v65);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = ++lastIdentity;
  if ((v5 & 0x100) == 0)
  {
    v30 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v31 = *(a2 + 48);
    *v56 = *(a2 + 32);
    *&v56[16] = v31;
    *v57 = *(a2 + 64);
    *&v57[16] = *(a2 + 80);
    v32 = *(a2 + 16);
    v54 = *a2;
    v55 = v32;
    swift_beginAccess();
    v33 = CachedEnvironment.animatedPosition(for:)(&v54);
    v34 = *(a2 + 48);
    *v56 = *(a2 + 32);
    *&v56[16] = v34;
    *v57 = *(a2 + 64);
    *&v57[16] = *(a2 + 80);
    v35 = *(a2 + 16);
    v54 = *a2;
    v55 = v35;
    v36 = CachedEnvironment.animatedCGSize(for:)(&v54);
    swift_endAccess();
    v37 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v52[0]);
    if ((v37 & 0x100000000) == 0)
    {
      v30 = v37;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v38 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v46, v54);
    if (v38)
    {
      v39 = *(v38 + 72);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a2 + 68);
    *&v54 = __PAIR64__(v45, v29);
    *(&v54 + 1) = __PAIR64__(v36, v33);
    *&v55 = __PAIR64__(v40, v44);
    DWORD2(v55) = v30;
    BYTE12(v55) = v39;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>(0);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>>);
    v41 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v54) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_16:
    v54 = v63;
    v55 = v64;
    *v56 = v27;
    *&v56[4] = v61;
    *&v56[20] = v62;
    *&v56[28] = v49;
    *v57 = v21;
    *&v57[4] = v21;
    *&v57[8] = v26;
    *&v57[12] = v50;
    result = outlined destroy of _ViewInputs(&v54);
    *a4 = v52[0];
    a4[1] = v52[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v46, &v54);
  result = AGWeakAttributeGetAttribute();
  v30 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v53[0] = v29;
    v42 = Attribute<A>.subscript.modify(&v54, result);
    v43 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v53);
    (v42)(&v54, 0, v43);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *_s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA020GlassAppearanceScaleD033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt3B503_s7a24UI15ModifiedContentVA2A4j23RzAA0E8ModifierR_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n46VtFZAjA01_K0V_APtcfU0_ACyACyAA01_ef1_D0VyAA020p20TransitionStateF033_stuvwxyz18DFLLVGAA14_Opacityd11VGAA11_Blurd9VG_AA0N21qrD8AVLLVTG5AKyAA15ModifiedContentVyA_yA_yAA01_J16Modifier_ContentVyAA0P23TransitionStateModifierAVLLVGAA08_OpacityD0VGAA05_BlurD0VGAWGGTf1nnnc_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v63[1] = *(a2 + 16);
  v63[2] = v5;
  v63[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) != 0)
  {
    LODWORD(v64) = a1;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(&v64, v63);
    v8 = v64;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v9 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    LODWORD(v9) = specialized CachedEnvironment.attribute<A>(id:_:)(v9, closure #1 in _GraphInputs.layoutDirection.getter, 0);
    v10 = *(a2 + 16);
    v60 = *a2;
    v61 = v10;
    v50 = *(a2 + 32);
    v58 = *(a2 + 36);
    v59 = *(a2 + 52);
    v52 = *(a2 + 76);
    v11 = *(a2 + 48);
    *v66 = *(a2 + 32);
    *&v66[16] = v11;
    *v67 = *(a2 + 64);
    *&v67[16] = *(a2 + 80);
    v12 = *(a2 + 16);
    v64 = *a2;
    v65 = v12;
    outlined init with copy of _ViewInputs(a2, &v54);
    v13 = CachedEnvironment.animatedCGSize(for:)(&v64);
    v14 = *(a2 + 48);
    *v66 = *(a2 + 32);
    *&v66[16] = v14;
    *v67 = *(a2 + 64);
    *&v67[16] = *(a2 + 80);
    v15 = *(a2 + 16);
    v64 = *a2;
    v65 = v15;
    v16 = CachedEnvironment.animatedPosition(for:)(&v64);
    swift_endAccess();
    v17 = *(a2 + 60);
    v47 = v9;
    v48 = v8;
    *&v64 = __PAIR64__(v13, v8);
    *(&v64 + 1) = __PAIR64__(v17, v16);
    LODWORD(v65) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for GeometryEffectTransform);
    lazy protocol witness table accessor for type GeometryEffectTransform<GlassAppearanceScaleEffect> and conformance GeometryEffectTransform<A>();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v19 = *(swift_dynamicCastClassUnconditional() + 248);

    v20 = *(a2 + 64);
    v21 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v22 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    *&v64 = __PAIR64__(v21, v20);
    DWORD2(v64) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v24 = Attribute.init<A>(body:value:flags:update:)();
    v64 = v60;
    v65 = v61;
    *&v66[4] = v58;
    *&v66[20] = v59;
    *v66 = v50 | 0x1C;
    *&v66[28] = v18;
    *v67 = v19;
    *&v67[4] = v19;
    *&v67[8] = v24;
    *&v67[12] = v52;
    outlined init with copy of _ViewInputs(&v64, &v54);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v64, v53);
    outlined destroy of _ViewInputs(&v64);
    v25 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
    v26 = v52;
    v27 = v18;
    if (v25)
    {
      v28 = lastIdentity + 1;
      lastIdentity = v28;
      v29 = *&v63[0];
      v46 = v27;
      v51 = v28;
      if ((v6 & 0x100) != 0)
      {
        v43 = *&v63[0];
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v63[0], &v54);
        result = AGWeakAttributeGetAttribute();
        if (result == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
          return result;
        }

        v30 = *MEMORY[0x1E698D3F8];
        v62[0] = v28;
        v44 = Attribute<A>.subscript.modify(&v54, result);
        v45 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v62);
        (v44)(&v54, 0, v45);
        v29 = v43;
      }

      else
      {
        v30 = *MEMORY[0x1E698D3F8];
      }

      v31 = *(a2 + 48);
      *v56 = *(a2 + 32);
      *&v56[16] = v31;
      *v57 = *(a2 + 64);
      *&v57[16] = *(a2 + 80);
      v32 = *(a2 + 16);
      v54 = *a2;
      v55 = v32;
      swift_beginAccess();
      v33 = CachedEnvironment.animatedPosition(for:)(&v54);
      v34 = *(a2 + 48);
      *v56 = *(a2 + 32);
      *&v56[16] = v34;
      *v57 = *(a2 + 64);
      *&v57[16] = *(a2 + 80);
      v35 = *(a2 + 16);
      v54 = *a2;
      v55 = v35;
      v36 = CachedEnvironment.animatedCGSize(for:)(&v54);
      swift_endAccess();
      v37 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v53[0]);
      if ((v37 & 0x100000000) != 0)
      {
        v38 = v30;
      }

      else
      {
        v38 = v37;
      }

      BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
      v39 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v29, v54);
      if (v39)
      {
        v40 = *(v39 + 72);
      }

      else
      {
        v40 = 0;
      }

      v41 = *(a2 + 68);
      *&v54 = __PAIR64__(v48, v51);
      *(&v54 + 1) = __PAIR64__(v36, v33);
      *&v55 = __PAIR64__(v41, v47);
      DWORD2(v55) = v38;
      BYTE12(v55) = v40;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>(0);
      lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<GlassAppearanceScaleEffect>>);
      v42 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v54) = 0;
      PreferencesOutputs.subscript.setter(v42, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      v26 = v52;
      v27 = v46;
    }

    v54 = v60;
    v55 = v61;
    *v56 = v50 | 0x1C;
    *&v56[4] = v58;
    *&v56[20] = v59;
    *&v56[28] = v27;
    *v57 = v19;
    *&v57[4] = v19;
    *&v57[8] = v24;
    *&v57[12] = v26;
    result = outlined destroy of _ViewInputs(&v54);
    *a4 = v53[0];
    a4[1] = v53[1];
    return result;
  }

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a4);
}