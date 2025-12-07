id specialized implicit closure #1 in UIView.ancestors.getter@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 superview];
  *a2 = result;
  return result;
}

void specialized UIView.forEachDescendant(_:)(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v6 = a1;
    a2();
  }

  v7 = [a1 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    specialized UIView.forEachDescendant(_:)(v11, a2, a3);
  }

LABEL_13:
}

double KeyPress.init(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _Benchmark(a1, v18);
  type metadata accessor for EventType();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    outlined destroy of KeyEvent?(&v11);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_6;
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v21 = v13;
  v22 = v14;
  v19 = v11;
  v20 = v12;
  if (!*(&v13 + 1))
  {
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of KeyEvent?(&v19);
    goto LABEL_7;
  }

  v30 = v23;
  v31 = v24;
  v32 = v25;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  outlined init with copy of KeyEvent(&v26, &v19);
  v4 = specialized Collection.first.getter(v21, *(&v21 + 1));
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined destroy of KeyEvent(&v19);
  if (v6)
  {
    v7 = qword_18CDE8488[v26];
    v8 = v28;
    v9 = *(&v27 + 1);

    outlined destroy of KeyEvent(&v26);
    *a2 = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    return result;
  }

  outlined destroy of KeyEvent(&v26);
LABEL_7:
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t View.onKeyPress(_:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyEquivalent>, &type metadata for KeyEquivalent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = v12;
  v15 = inited + 32;
  *(inited + 40) = v13;
  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI13KeyEquivalentV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of KeyEquivalent(v15);
  *v11 = v16;
  swift_storeEnumTagMultiPayload();
  v21 = 3;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  View.onKeyPress(subject:phases:action:)(v11, &v21, partial apply for closure #1 in View.onKeyPress(_:action:), v17, a4, v20);

  return outlined destroy of KeyPress.Handler.Subject(v11, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t View.onKeyPress(subject:phases:action:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPressModifier(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  outlined init with copy of KeyPress.Handler(a1, v14, type metadata accessor for KeyPress.Handler.Subject);
  v16 = type metadata accessor for KeyPress.Handler(0);
  *&v14[*(v16 + 20)] = v15;
  v17 = &v14[*(v16 + 24)];
  *v17 = a3;
  *(v17 + 1) = a4;

  MEMORY[0x18D00A570](v14, a5, v12, a6);
  return outlined destroy of KeyPress.Handler.Subject(v14, type metadata accessor for KeyPressModifier);
}

uint64_t View.onKeyPress(_:phases:action:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v20 = a5;
  v10 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  v15 = *a2;
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyEquivalent>, &type metadata for KeyEquivalent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = v13;
  v17 = inited + 32;
  *(inited + 40) = v14;
  v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI13KeyEquivalentV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of KeyEquivalent(v17);
  *v12 = v18;
  swift_storeEnumTagMultiPayload();
  v22 = v15;
  View.onKeyPress(subject:phases:action:)(v12, &v22, a3, a4, v20, v21);
  return outlined destroy of KeyPress.Handler.Subject(v12, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t View.onKeyPress(phases:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_storeEnumTagMultiPayload();
  v16 = v13;
  View.onKeyPress(subject:phases:action:)(v12, &v16, a2, a3, a4, a5);
  return outlined destroy of KeyPress.Handler.Subject(v12, type metadata accessor for KeyPress.Handler.Subject);
}

double KeyPress.key.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t KeyPress.characters.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t KeyPress.Phases.debugDescription.getter()
{
  v1 = *v0;
  if (*v0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v5;
    v6 = &v2[16 * v4];
    v7 = 1819042094;
    v8 = 0xE400000000000000;
    goto LABEL_23;
  }

  if (v1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0x6E776F642ELL;
    *(v15 + 5) = 0xE500000000000000;
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v20 = *(v2 + 2);
      v19 = *(v2 + 3);
      v5 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v2);
      }

      *(v2 + 2) = v5;
      v6 = &v2[16 * v20];
      v7 = 7370030;
      v8 = 0xE300000000000000;
LABEL_23:
      *(v6 + 4) = v7;
      *(v6 + 5) = v8;
      if (v5 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0x7461657065722ELL;
  *(v18 + 5) = 0xE700000000000000;
  if ((v1 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (*(v2 + 2) == 1)
  {
LABEL_24:
    v12 = *(v2 + 4);

    return v12;
  }

LABEL_9:
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();

  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;

  MEMORY[0x18D00C9B0](v9, v11);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);

  return 91;
}

Swift::Int KeyPress.Result.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t KeyPress.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _StringGuts.grow(_:)(18);
  MEMORY[0x18D00C9B0](0x737365725079654BLL, 0xE900000000000028);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](2236460, 0xE300000000000000);
  MEMORY[0x18D00C9B0](v1, v2);
  MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
  return 0;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance KeyPressModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance KeyPressModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance KeyPressModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance KeyPressModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(&lazy protocol witness table cache variable for type KeyPressModifier and conformance KeyPressModifier, type metadata accessor for KeyPressModifier, protocol conformance descriptor for KeyPressModifier);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

void specialized implicit closure #1 in _GraphInputs.keyPressHandlers.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

uint64_t View.onKeyPress(keys:phases:action:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  *v14 = a1;
  swift_storeEnumTagMultiPayload();
  v18 = v15;

  View.onKeyPress(subject:phases:action:)(v14, &v18, a3, a4, a5, a6);
  return outlined destroy of KeyPress.Handler.Subject(v14, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t View.onKeyPress(characters:phases:action:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = type metadata accessor for CharacterSet();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  swift_storeEnumTagMultiPayload();
  v19 = v15;
  View.onKeyPress(subject:phases:action:)(v14, &v19, a3, a4, a5, a6);
  return outlined destroy of KeyPress.Handler.Subject(v14, type metadata accessor for KeyPress.Handler.Subject);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _SetStorage<NSURLResourceKey>(0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19UIGestureRecognizerC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      type metadata accessor for _SetStorage<UIGestureRecognizer>(0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x18D00E9C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for UIGestureRecognizer();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for UIGestureRecognizer();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<PresentationDetent>, lazy protocol witness table accessor for type PresentationDetent and conformance PresentationDetent, &type metadata for PresentationDetent);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v34 = a1 + 32;
    while (1)
    {
      v10 = v34 + 16 * v4;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          MEMORY[0x18D00F6F0](4);
          v15 = *&v11;
        }

        else if (*&v11 | v12 ^ 0xC000000000000000)
        {
          v17 = v12 == 0xC000000000000000 && *&v11 == 1;
          v15 = v17 ? 1 : 5;
        }

        else
        {
          v15 = 0;
        }

        MEMORY[0x18D00F6F0](v15);
      }

      else
      {
        v14 = v13 ? 3 : 2;
        MEMORY[0x18D00F6F0](v14);
        v16 = (*&v11 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? *&v11 : 0;
        MEMORY[0x18D00F730](v16);
      }

      result = Hasher._finalize()();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = *(v5 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      v24 = *(v3 + 48);
      if (((1 << v20) & v22) != 0)
      {
        break;
      }

LABEL_3:
      *(v5 + 8 * v21) = v22 | v23;
      v6 = v24 + 16 * v20;
      *v6 = v11;
      *(v6 + 8) = v12;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v9;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v25 = ~v19;
    v26 = *&v11 != 2;
    v27 = *&v11 != 1;
    v28 = *&v11 != 0;
    if (v12 != 0xC000000000000000)
    {
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }

    if (v13 != 3)
    {
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }

    while (1)
    {
      v29 = v24 + 16 * v20;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 == 2)
        {
          if (v13 == 2 && *&v30 == *&v11)
          {
            goto LABEL_5;
          }
        }

        else if (*&v30 | v31 ^ 0xC000000000000000)
        {
          if (v31 == 0xC000000000000000 && *&v30 == 1)
          {
            if (!v27)
            {
              goto LABEL_5;
            }
          }

          else if (!v26)
          {
            goto LABEL_5;
          }
        }

        else if (!v28)
        {
          goto LABEL_5;
        }
      }

      else if (v32)
      {
        if (v13 == 1)
        {
LABEL_31:
          if (v30 == v11)
          {
            goto LABEL_5;
          }
        }
      }

      else if (!v13)
      {
        goto LABEL_31;
      }

      v20 = (v20 + 1) & v25;
      v21 = v20 >> 6;
      v22 = *(v5 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if ((v22 & (1 << v20)) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI13KeyEquivalentV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<KeyEquivalent>, lazy protocol witness table accessor for type KeyEquivalent and conformance KeyEquivalent, &type metadata for KeyEquivalent);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 == v9 && v14[1] == v8)
        {
          goto LABEL_3;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyPress.Phases and conformance KeyPress.Phases()
{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyPress.Phases, &type metadata for KeyPress.Phases, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyPress.Phases, &type metadata for KeyPress.Phases, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyPress.Phases, &type metadata for KeyPress.Phases, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases;
  if (!lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyPress.Phases, &type metadata for KeyPress.Phases, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Phases and conformance KeyPress.Phases);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyPress.Result and conformance KeyPress.Result()
{
  result = lazy protocol witness table cache variable for type KeyPress.Result and conformance KeyPress.Result;
  if (!lazy protocol witness table cache variable for type KeyPress.Result and conformance KeyPress.Result)
  {
    result = swift_getWitnessTable("a\v\vb\bP\b", &type metadata for KeyPress.Result, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyPress.Result and conformance KeyPress.Result);
  }

  return result;
}

uint64_t destroy for KeyPress()
{
}

uint64_t initializeWithCopy for KeyPress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for KeyPress(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for KeyPress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyPressModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for CharacterSet();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    v11 = *(v6 + 24);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

double destroy for KeyPressModifier(uint64_t a1)
{
  type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v3 = type metadata accessor for CharacterSet();
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  type metadata accessor for KeyPress.Handler(0);

  return result;
}

void *initializeWithCopy for KeyPressModifier(void *a1, void *a2)
{
  v4 = type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for CharacterSet();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  else
  {
    *a1 = *a2;

    swift_storeEnumTagMultiPayload();
  }

  v7 = type metadata accessor for KeyPress.Handler(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

void *assignWithCopy for KeyPressModifier(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v4 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for CharacterSet();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }
  }

  v7 = type metadata accessor for KeyPress.Handler(0);
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

char *initializeWithTake for KeyPressModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for KeyPress.Handler.Subject(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CharacterSet();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v4 - 8) + 64));
  }

  v6 = type metadata accessor for KeyPress.Handler(0);
  *&a1[*(v6 + 20)] = *&a2[*(v6 + 20)];
  *&a1[*(v6 + 24)] = *&a2[*(v6 + 24)];
  return a1;
}

char *assignWithTake for KeyPressModifier(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v4 = type metadata accessor for KeyPress.Handler.Subject(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for CharacterSet();
      (*(*(v5 - 8) + 32))(a1, a2, v5);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }
  }

  v6 = type metadata accessor for KeyPress.Handler(0);
  *&a1[*(v6 + 20)] = *&a2[*(v6 + 20)];
  *&a1[*(v6 + 24)] = *&a2[*(v6 + 24)];

  return a1;
}

uint64_t type metadata completion function for KeyPressModifier(uint64_t a1)
{
  result = type metadata accessor for KeyPress.Handler(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyPress.Handler(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for CharacterSet();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }

    v11 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

double destroy for KeyPress.Handler(uint64_t a1)
{
  type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v3 = type metadata accessor for CharacterSet();
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return result;
}

void *initializeWithCopy for KeyPress.Handler(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPress.Handler.Subject(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for CharacterSet();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  return a1;
}

void *assignWithCopy for KeyPress.Handler(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v6 = type metadata accessor for KeyPress.Handler.Subject(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for CharacterSet();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;

      swift_storeEnumTagMultiPayload();
    }
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v9 = *(a3 + 24);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  return a1;
}

char *initializeWithTake for KeyPress.Handler(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPress.Handler.Subject(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for CharacterSet();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *assignWithTake for KeyPress.Handler(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
    v6 = type metadata accessor for KeyPress.Handler.Subject(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for CharacterSet();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v8] = *&a2[v8];

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyPress.Handler.Subject(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for CharacterSet();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;

LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for KeyPress.Handler.Subject(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = type metadata accessor for CharacterSet();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  else if (!result)
  {
  }

  return result;
}

void *initializeWithCopy for KeyPress.Handler.Subject(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for CharacterSet();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;

LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithCopy for KeyPress.Handler.Subject(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for CharacterSet();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;

LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for KeyPress.Handler.Subject(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CharacterSet();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for KeyPress.Handler.Subject(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of KeyPress.Handler.Subject(a1, type metadata accessor for KeyPress.Handler.Subject);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CharacterSet();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void type metadata accessor for _SetStorage<NSURLResourceKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>)
  {
    type metadata accessor for NSURLResourceKey(255);
    lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, protocol conformance descriptor for NSURLResourceKey);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double specialized static KeyPressModifier.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for KeyPress.Handler(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyPressModifier(0);
  Value = AGGraphGetValue();
  outlined init with copy of KeyPress.Handler(Value, v6, type metadata accessor for KeyPress.Handler);
  v8 = a2[1];
  type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();
  if (v8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v9 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  outlined init with take of KeyPress.Handler(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  v14 = v9;
  type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v8)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for _SetStorage<UIGestureRecognizer>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<UIGestureRecognizer>)
  {
    type metadata accessor for UIGestureRecognizer();
    lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(&lazy protocol witness table cache variable for type UIGestureRecognizer and conformance NSObject, type metadata accessor for UIGestureRecognizer, MEMORY[0x1E69E81B8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<UIGestureRecognizer>);
    }
  }
}

unint64_t type metadata accessor for UIGestureRecognizer()
{
  result = lazy cache variable for type metadata for UIGestureRecognizer;
  if (!lazy cache variable for type metadata for UIGestureRecognizer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIGestureRecognizer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyEquivalent and conformance KeyEquivalent()
{
  result = lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent;
  if (!lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyEquivalent, &type metadata for KeyEquivalent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent;
  if (!lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyEquivalent, &type metadata for KeyEquivalent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent;
  if (!lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyEquivalent, &type metadata for KeyEquivalent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyEquivalent and conformance KeyEquivalent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationDetent and conformance PresentationDetent()
{
  result = lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent;
  if (!lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationDetent, &type metadata for PresentationDetent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent;
  if (!lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationDetent, &type metadata for PresentationDetent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent);
  }

  return result;
}

uint64_t Gauge.init<A>(value:in:label:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v46 = a7;
  v47 = a4;
  v51 = a5;
  v48 = a3;
  v49 = a9;
  v43 = a8;
  v12 = *(a8 + 16);
  v44 = *(*(*(v12 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v42 = v12;
  v22 = type metadata accessor for ClosedRange();
  v50 = a1;
  v52 = v22;
  v23 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    v24 = static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v24, &dword_18BD4A000, v25, "Gauge initialized with an out-of-bounds progress amount. The amount will be clamped to the nearest bound.", 105, 2, MEMORY[0x1E69E7CC0]);
  }

  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v26 = dispatch thunk of static Comparable.> infix(_:_:)();
  v27 = v45;
  v28 = *(v45 + 8);
  v28(v18, a6);
  if (v26)
  {
    v29 = v50;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v30 = v23;
    v31 = v41;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v28(v18, a6);
    (*(v27 + 16))(v18, v31, a6);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v28(v31, a6);
    v32 = v21;
    v33 = v30;
    v28(v32, a6);
    v34 = v53[0];
    if (v53[0] < 0.0)
    {
      v34 = 0.0;
    }

    if (v34 > 1.0)
    {
      v34 = 1.0;
    }
  }

  else
  {
    v28(v21, a6);
    v34 = 1.0;
    v29 = v50;
    v33 = v23;
  }

  v35 = v49;
  *v49 = v34;
  v36 = v51;
  v53[0] = v51;
  *&v53[1] = MEMORY[0x1E6981E70];
  *&v53[2] = MEMORY[0x1E6981E70];
  *&v53[3] = MEMORY[0x1E6981E70];
  v53[4] = v46;
  *&v53[5] = MEMORY[0x1E6981E60];
  *&v53[6] = MEMORY[0x1E6981E60];
  *&v53[7] = MEMORY[0x1E6981E60];
  v37 = type metadata accessor for Gauge(0, v53);
  v38 = v37[21];
  v48();
  (*(*(v52 - 8) + 8))(v33);
  v28(v29, a6);
  result = (*(*(*&v36 - 8) + 56))(v35 + v38, 0, 1, COERCE_DOUBLE(*&v36));
  *(v35 + v37[22]) = 1;
  *(v35 + v37[23]) = 1;
  *(v35 + v37[24]) = 1;
  *(v35 + v37[25]) = 1;
  return result;
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, double a7@<X6>, double a8@<X7>, double *a9@<X8>, uint64_t a10, double a11, double a12, uint64_t a13)
{
  v53 = a5;
  v54 = a8;
  v51 = a7;
  v52 = a6;
  v49 = a4;
  v50 = a3;
  v48 = a9;
  v42[2] = a13;
  v15 = *(a13 + 16);
  v44 = *(*(*(v15 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v42 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v42 - v23;
  v42[1] = v15;
  v25 = type metadata accessor for ClosedRange();
  v55 = a1;
  v56 = v25;
  v26 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    v27 = static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v27, &dword_18BD4A000, v28, "Gauge initialized with an out-of-bounds progress amount. The amount will be clamped to the nearest bound.", 105, 2, MEMORY[0x1E69E7CC0]);
  }

  v45 = a11;
  v46 = a12;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v29 = dispatch thunk of static Comparable.> infix(_:_:)();
  v30 = v47;
  v31 = *(v47 + 8);
  v31(v21, a10);
  v43 = v26;
  if (v29)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v32 = v42[0];
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v31(v21, a10);
    (*(v30 + 16))(v21, v32, a10);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v31(v32, a10);
    v31(v24, a10);
    v33 = v57[0];
    if (v57[0] < 0.0)
    {
      v33 = 0.0;
    }

    if (v33 > 1.0)
    {
      v33 = 1.0;
    }
  }

  else
  {
    v31(v24, a10);
    v33 = 1.0;
  }

  v34 = v48;
  *v48 = v33;
  v35 = v51;
  v36 = v54;
  v57[0] = v51;
  v57[1] = v54;
  *&v57[2] = MEMORY[0x1E6981E70];
  *&v57[3] = MEMORY[0x1E6981E70];
  v57[4] = v45;
  v57[5] = v46;
  *&v57[6] = MEMORY[0x1E6981E60];
  *&v57[7] = MEMORY[0x1E6981E60];
  v37 = type metadata accessor for Gauge(0, v57);
  v38 = v37[21];
  v50();
  v39 = (*(*(*&v35 - 8) + 56))(v34 + v38, 0, 1, COERCE_DOUBLE(*&v35));
  v40 = v37[22];
  v53(v39);
  (*(*(v56 - 8) + 8))(v43);
  v31(v55, a10);
  result = (*(*(*&v36 - 8) + 56))(v34 + v40, 0, 1, COERCE_DOUBLE(*&v36));
  *(v34 + v37[23]) = 1;
  *(v34 + v37[24]) = 1;
  *(v34 + v37[25]) = 1;
  return result;
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, void (*a10)(uint64_t), uint64_t a11, double a12, double a13, double a14, uint64_t a15, double a16, double a17, double a18, uint64_t a19)
{
  v68 = a8;
  v69 = a7;
  v65 = a6;
  v66 = a5;
  v62 = a4;
  v63 = a3;
  v67 = a13;
  v64 = a12;
  v70 = a11;
  v71 = a10;
  v72 = a14;
  v54[2] = a19;
  v22 = *(a19 + 16);
  v57 = *(*(*(v22 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v54[0] = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v54 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v54 - v30;
  v54[1] = v22;
  v56 = *(*(v22 + 24) + 8);
  v32 = type metadata accessor for ClosedRange();
  v73 = a1;
  v74 = v32;
  v33 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    v34 = static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v34, &dword_18BD4A000, v35, "Gauge initialized with an out-of-bounds progress amount. The amount will be clamped to the nearest bound.", 105, 2, MEMORY[0x1E69E7CC0]);
  }

  v60 = a18;
  v59 = a17;
  v58 = a16;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v36 = dispatch thunk of static Comparable.> infix(_:_:)();
  v37 = v61;
  v38 = *(v61 + 8);
  v38(v28, a15);
  v55 = v33;
  if (v36)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v39 = v54[0];
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v38(v28, a15);
    (*(v37 + 16))(v28, v39, a15);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v38(v39, a15);
    v38(v31, a15);
    v40 = v75[0];
    if (v75[0] < 0.0)
    {
      v40 = 0.0;
    }

    if (v40 > 1.0)
    {
      v40 = 1.0;
    }
  }

  else
  {
    v38(v31, a15);
    v40 = 1.0;
  }

  *a9 = v40;
  v41 = v64;
  v42 = v67;
  v75[0] = v64;
  v75[1] = v67;
  v43 = v72;
  v75[2] = v72;
  *&v75[3] = MEMORY[0x1E6981E70];
  v75[4] = v58;
  v75[5] = v59;
  v75[6] = v60;
  *&v75[7] = MEMORY[0x1E6981E60];
  v44 = type metadata accessor for Gauge(0, v75);
  v45 = v44[21];
  v63();
  v46 = (*(*(*&v41 - 8) + 56))(a9 + v45, 0, 1, COERCE_DOUBLE(*&v41));
  v47 = v44[22];
  v66(v46);
  v48 = (*(*(*&v42 - 8) + 56))(a9 + v47, 0, 1, COERCE_DOUBLE(*&v42));
  v49 = v44[23];
  v69(v48);
  v50 = *(*(*&v43 - 8) + 56);
  v51 = v50(a9 + v49, 0, 1, *&v43);
  v52 = v44[24];
  v71(v51);
  (*(*(v74 - 8) + 8))(v55);
  v38(v73, a15);
  result = v50(a9 + v52, 0, 1, *&v43);
  *(a9 + v44[25]) = 1;
  return result;
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:markedValueLabels:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10, double a11, double a12, uint64_t a13, double a14, double a15, double a16, uint64_t a17)
{
  v62 = a8;
  v63 = a7;
  v59 = a6;
  v60 = a5;
  v56 = a4;
  v57 = a3;
  v64 = a12;
  v61 = a11;
  v58 = a10;
  v49[2] = a17;
  v20 = *(a17 + 16);
  v66 = *(*(*(v20 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v49[0] = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v49 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v49 - v28;
  v49[1] = v20;
  v51 = *(*(v20 + 24) + 8);
  v30 = type metadata accessor for ClosedRange();
  v65 = a1;
  v67 = v30;
  v31 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    v32 = static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v32, &dword_18BD4A000, v33, "Gauge initialized with an out-of-bounds progress amount. The amount will be clamped to the nearest bound.", 105, 2, MEMORY[0x1E69E7CC0]);
  }

  v54 = a16;
  v53 = a15;
  v52 = a14;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v34 = dispatch thunk of static Comparable.> infix(_:_:)();
  v35 = v55;
  v66 = *(v55 + 8);
  v66(v26, a13);
  v50 = v31;
  if (v34)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v36 = v49[0];
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v37 = v66;
    v66(v26, a13);
    (*(v35 + 16))(v26, v36, a13);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v37(v36, a13);
    v37(v29, a13);
    v38 = v68[0];
    if (v68[0] < 0.0)
    {
      v38 = 0.0;
    }

    if (v38 > 1.0)
    {
      v38 = 1.0;
    }
  }

  else
  {
    v66(v29, a13);
    v38 = 1.0;
  }

  *a9 = v38;
  v39 = v58;
  v40 = v61;
  v68[0] = v58;
  v68[1] = v61;
  v41 = v64;
  *&v68[2] = MEMORY[0x1E6981E70];
  v68[3] = v64;
  v68[4] = v52;
  v68[5] = v53;
  *&v68[6] = MEMORY[0x1E6981E60];
  v68[7] = v54;
  v42 = type metadata accessor for Gauge(0, v68);
  v43 = v42[21];
  v57();
  v44 = (*(*(*&v39 - 8) + 56))(a9 + v43, 0, 1, COERCE_DOUBLE(*&v39));
  v45 = v42[22];
  v60(v44);
  v46 = (*(*(*&v40 - 8) + 56))(a9 + v45, 0, 1, COERCE_DOUBLE(*&v40));
  *(a9 + v42[23]) = 1;
  *(a9 + v42[24]) = 1;
  v47 = v42[25];
  v63(v46);
  (*(*(v67 - 8) + 8))(v50);
  v66(v65, a13);
  return (*(*(*&v41 - 8) + 56))(a9 + v47, 0, 1, COERCE_DOUBLE(*&v41));
}

uint64_t Gauge.init<A>(value:in:label:currentValueLabel:minimumValueLabel:maximumValueLabel:markedValueLabels:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, void (*a10)(uint64_t), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, double a14, double a15, double a16, double a17, uint64_t a18, double a19, double a20, double a21, double a22, uint64_t a23)
{
  v81 = a8;
  v82 = a7;
  v78 = a6;
  v79 = a5;
  v75 = a4;
  v76 = a3;
  v88 = a17;
  v85 = a16;
  v80 = a15;
  v77 = a14;
  v86 = a13;
  v87 = a12;
  v83 = a11;
  v84 = a10;
  v65 = a23;
  v26 = *(a23 + 16);
  v68 = *(*(v26 + 16) + 8);
  v74 = *(v68 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = *(a18 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v63 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v62 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v62 - v34;
  v64 = v26;
  v67 = *(*(v26 + 24) + 8);
  v36 = type metadata accessor for ClosedRange();
  v89 = a1;
  v90 = v36;
  v37 = a2;
  if ((ClosedRange.contains(_:)() & 1) == 0)
  {
    v38 = static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v38, &dword_18BD4A000, v39, "Gauge initialized with an out-of-bounds progress amount. The amount will be clamped to the nearest bound.", 105, 2, MEMORY[0x1E69E7CC0]);
  }

  v72 = a22;
  v71 = a21;
  v70 = a20;
  v69 = a19;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v40 = dispatch thunk of static Comparable.> infix(_:_:)();
  v41 = v73;
  v42 = *(v73 + 8);
  v42(v32, a18);
  v74 = v42;
  v66 = v37;
  if (v40)
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v43 = v41;
    v44 = v63;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v42(v32, a18);
    (*(v43 + 16))(v32, v44, a18);
    lazy protocol witness table accessor for type Double and conformance Double();
    BinaryFloatingPoint.init<A>(_:)();
    v42(v44, a18);
    v42(v35, a18);
    v45 = v91[0];
    if (v91[0] < 0.0)
    {
      v45 = 0.0;
    }

    if (v45 > 1.0)
    {
      v45 = 1.0;
    }
  }

  else
  {
    v42(v35, a18);
    v45 = 1.0;
  }

  *a9 = v45;
  v46 = v77;
  v47 = v80;
  v91[0] = v77;
  v91[1] = v80;
  v48 = v85;
  v49 = v88;
  v91[2] = v85;
  v91[3] = v88;
  v91[4] = v69;
  v91[5] = v70;
  v91[6] = v71;
  v91[7] = v72;
  v50 = type metadata accessor for Gauge(0, v91);
  v51 = v50[21];
  v76();
  v52 = (*(*(*&v46 - 8) + 56))(a9 + v51, 0, 1, COERCE_DOUBLE(*&v46));
  v53 = v50[22];
  v79(v52);
  v54 = (*(*(*&v47 - 8) + 56))(a9 + v53, 0, 1, COERCE_DOUBLE(*&v47));
  v55 = v50[23];
  v82(v54);
  v56 = *(*(*&v48 - 8) + 56);
  v57 = v56(a9 + v55, 0, 1, *&v48);
  v58 = v50[24];
  v84(v57);
  v59 = v56(a9 + v58, 0, 1, *&v48);
  v60 = v50[25];
  v87(v59);
  (*(*(v90 - 8) + 8))(v66);
  v74(v89, a18);
  return (*(*(*&v49 - 8) + 56))(a9 + v60, 0, 1, COERCE_DOUBLE(*&v49));
}

uint64_t Gauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = *(a1 + 32);
  v4 = v42;
  v47 = type metadata accessor for Optional();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v34 - v7;
  v41 = *(a1 + 24);
  v8 = v41;
  v43 = type metadata accessor for Optional();
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v34 - v10;
  v40 = *(a1 + 16);
  v12 = v40;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v35 = &v34 - v15;
  v17 = *(a1 + 56);
  v39 = *(a1 + 48);
  v36 = *(a1 + 64);
  v37 = v17;
  v49[0] = v12;
  v49[1] = v8;
  v49[2] = v4;
  v49[3] = v39;
  v49[4] = v17;
  v49[5] = v36;
  v18 = type metadata accessor for BaseGauge(0, v49);
  v38 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v25 = *v2;
  (*(v14 + 16))(v16, v2 + *(a1 + 84), v13, v22);
  v26 = v11;
  (*(v9 + 16))(v11, v2 + *(a1 + 88), v43);
  v27 = v45;
  v28 = *(v44 + 16);
  v29 = v47;
  v28(v45, v2 + *(a1 + 92), v47);
  v30 = v2 + *(a1 + 96);
  v31 = v46;
  v28(v46, v30, v29);
  BaseGauge.init(value:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)(v35, v26, v27, v31, v40, v41, v42, v39, v20, v25, v37, v36);
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v38 + 8);
  v32(v20, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v32)(v24, v18);
}

uint64_t BaseGauge.init(value:label:currentValueLabel:minimumValueLabel:maximumValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  *a9 = a10;
  v26[0] = a5;
  v26[1] = a6;
  v26[2] = a7;
  v26[3] = a8;
  v26[4] = a11;
  v26[5] = a12;
  v17 = type metadata accessor for BaseGauge(0, v26);
  v18 = v17[17];
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 32))(a9 + v18, a1, v19);
  v20 = v17[18];
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = v17[19];
  v23 = type metadata accessor for Optional();
  v24 = *(*(v23 - 8) + 32);
  v24(a9 + v22, a3, v23);
  return (v24)(a9 + v17[20], a4, v23);
}

uint64_t type metadata completion function for Gauge(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Optional();
        if (v5 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Gauge(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v4 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = *(v4 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(*(v4 - 8) + 64);
  }

  else
  {
    v11 = *(*(v4 - 8) + 64) + 1;
  }

  v12 = a3[4];
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v14;
  __n = v11;
  if (*(v13 + 84))
  {
    v16 = *(v13 + 64);
  }

  else
  {
    v16 = *(v13 + 64) + 1;
  }

  v17 = a3[5];
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  if (*(v18 + 84))
  {
    v20 = *(*(v17 - 8) + 64);
  }

  else
  {
    v20 = *(*(v17 - 8) + 64) + 1;
  }

  v21 = v10 | v7 | v14 | v19;
  if (v21 > 7 || ((*(v9 + 80) | *(v6 + 80) | v14 | *(v18 + 80)) & 0x100000) != 0 || v20 + ((v16 + v19 + ((v16 + v14 + ((v11 + v14 + ((v8 + v10 + ((v7 + 8) & ~v7)) & ~v10)) & ~v14)) & ~v14)) & ~v19) > 0x18)
  {
    v24 = *a2;
    *a1 = *a2;
    v25 = v24 + ((v21 & 0xF8 ^ 0x1F8) & (v21 + 16));
  }

  else
  {
    v50 = v16 + v14;
    v56 = v16;
    v51 = *(v12 - 8);
    v52 = v12;
    v53 = *(v17 - 8);
    v54 = v17;
    v48 = v20;
    v49 = ~v10;
    *a1 = *a2;
    v26 = a1;
    v27 = ((a1 + v7 + 8) & ~v7);
    v28 = ((a2 + v7 + 8) & ~v7);
    v55 = v26;
    if ((*(v6 + 48))(v28, 1, v5))
    {
      memcpy(v27, v28, v8);
    }

    else
    {
      (*(v6 + 16))(v27, v28, v5);
      (*(v6 + 56))(v27, 0, 1, v5);
    }

    v29 = ~v15;
    v30 = &v28[v8];
    v31 = ((v27 + v8 + v10) & v49);
    v32 = (&v30[v10] & v49);
    if ((*(v9 + 48))(v32, 1, v4))
    {
      v33 = __n;
      memcpy(v31, v32, __n);
      v35 = v51;
      v34 = v52;
    }

    else
    {
      (*(v9 + 16))(v31, v32, v4);
      (*(v9 + 56))(v31, 0, 1, v4);
      v35 = v51;
      v34 = v52;
      v33 = __n;
    }

    v36 = ((v31 + v33 + v15) & v29);
    v37 = ((v32 + v33 + v15) & v29);
    v38 = *(v35 + 48);
    if (v38(v37, 1, v34))
    {
      memcpy(v36, v37, v56);
    }

    else
    {
      (*(v35 + 16))(v36, v37, v34);
      (*(v35 + 56))(v36, 0, 1, v34);
    }

    v39 = ~v19;
    v40 = ((v36 + v50) & v29);
    v41 = ((v37 + v50) & v29);
    if (v38(v41, 1, v34))
    {
      v42 = v56;
      memcpy(v40, v41, v56);
      v43 = v54;
    }

    else
    {
      (*(v35 + 16))(v40, v41, v34);
      (*(v35 + 56))(v40, 0, 1, v34);
      v43 = v54;
      v42 = v56;
    }

    v44 = &v41[v42];
    v45 = &v40[v42 + v19];
    v46 = &v44[v19];
    if ((*(v53 + 48))(v46 & v39, 1, v43))
    {
      memcpy((v45 & v39), (v46 & v39), v48);
    }

    else
    {
      (*(v53 + 16))(v45 & v39, v46 & v39, v43);
      (*(v53 + 56))(v45 & v39, 0, 1, v43);
    }

    return v55;
  }

  return v25;
}

uint64_t destroy for Gauge(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(v3 - 8);
  v5 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, v3))
  {
    (*(v4 + 8))(v5, v3);
  }

  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  v8 = a2[3];
  v9 = *(v8 - 8);
  v10 = v7 + v5;
  if (!v6)
  {
    ++v10;
  }

  v11 = (v10 + *(v9 + 80)) & ~*(v9 + 80);
  if (!(*(*(a2[3] - 8) + 48))(v11, 1, v8))
  {
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v9 + 64);
  v13 = a2[4];
  v14 = *(v13 - 8);
  v15 = *(v9 + 84) == 0;
  v16 = *(v14 + 80);
  v17 = v12 + v11;
  if (v15)
  {
    ++v17;
  }

  v18 = (v17 + v16) & ~v16;
  v19 = *(*(a2[4] - 8) + 48);
  if (!v19(v18, 1, v13))
  {
    (*(v14 + 8))(v18, v13);
  }

  if (*(v14 + 84))
  {
    v20 = *(v14 + 64);
  }

  else
  {
    v20 = *(v14 + 64) + 1;
  }

  v21 = (v18 + v16 + v20) & ~v16;
  if (!v19(v21, 1, v13))
  {
    (*(v14 + 8))(v21, v13);
  }

  v22 = a2[5];
  v27 = *(v22 - 8);
  v23 = *(v27 + 80);
  v24 = v21 + v20 + v23;
  result = (*(v27 + 48))(v24 & ~v23, 1, v22);
  if (!result)
  {
    v26 = *(v27 + 8);

    return v26(v24 & ~v23, v22);
  }

  return result;
}

void *initializeWithCopy for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 16))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v49 = a3;
  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 16))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = ((v32 + v29 + v38) & v31);
  v40 = ((v33 + v29 + v38) & v31);
  if (v34(v40, 1, v27))
  {
    memcpy(v39, v40, v38);
  }

  else
  {
    (*(v28 + 16))(v39, v40, v27);
    (*(v28 + 56))(v39, 0, 1, v27);
  }

  v41 = &v40[v38];
  v42 = v49[5];
  v43 = *(v42 - 8);
  v44 = *(v43 + 80);
  v45 = &v39[v38 + v44];
  v46 = &v41[v44];
  if ((*(v43 + 48))(&v41[v44] & ~v44, 1, v42))
  {
    if (*(v43 + 84))
    {
      v47 = *(v43 + 64);
    }

    else
    {
      v47 = *(v43 + 64) + 1;
    }

    memcpy((v45 & ~v44), (v46 & ~v44), v47);
  }

  else
  {
    (*(v43 + 16))(v45 & ~v44, v46 & ~v44, v42);
    (*(v43 + 56))(v45 & ~v44, 0, 1, v42);
  }

  return a1;
}

void *assignWithCopy for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  v15 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v15;
  }

  v16 = a3[3];
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v15 + v18;
  v20 = ((v7 + v19) & ~v18);
  v21 = ((v8 + v19) & ~v18);
  v22 = *(v17 + 48);
  v23 = v22(v20, 1, v16);
  v24 = v22(v21, 1, v16);
  if (v23)
  {
    if (!v24)
    {
      (*(v17 + 16))(v20, v21, v16);
      (*(v17 + 56))(v20, 0, 1, v16);
      goto LABEL_25;
    }

    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v17 + 24))(v20, v21, v16);
      goto LABEL_25;
    }

    (*(v17 + 8))(v20, v16);
    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v20, v21, v27);
LABEL_25:
  v28 = *(v17 + 64);
  if (!*(v17 + 84))
  {
    ++v28;
  }

  v29 = a3[4];
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + v31;
  v33 = ~v31;
  v34 = ((v20 + v32) & ~v31);
  v35 = ((v21 + v32) & ~v31);
  v36 = *(v30 + 48);
  v37 = v36(v34, 1, v29);
  v38 = v36(v35, 1, v29);
  if (v37)
  {
    if (!v38)
    {
      (*(v30 + 16))(v34, v35, v29);
      (*(v30 + 56))(v34, 0, 1, v29);
      goto LABEL_38;
    }

    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  else
  {
    if (!v38)
    {
      (*(v30 + 24))(v34, v35, v29);
      goto LABEL_38;
    }

    (*(v30 + 8))(v34, v29);
    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = v40 + 1;
  }

  memcpy(v34, v35, v41);
LABEL_38:
  if (*(v30 + 84))
  {
    v42 = *(v30 + 64);
  }

  else
  {
    v42 = *(v30 + 64) + 1;
  }

  v43 = ((v34 + v31 + v42) & v33);
  v44 = ((v35 + v31 + v42) & v33);
  v45 = v36(v43, 1, v29);
  v46 = v36(v44, 1, v29);
  if (v45)
  {
    if (!v46)
    {
      (*(v30 + 16))(v43, v44, v29);
      (*(v30 + 56))(v43, 0, 1, v29);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v46)
  {
    (*(v30 + 8))(v43, v29);
LABEL_46:
    memcpy(v43, v44, v42);
    goto LABEL_47;
  }

  (*(v30 + 24))(v43, v44, v29);
LABEL_47:
  v47 = &v43[v42];
  v48 = &v44[v42];
  v49 = a3[5];
  v50 = *(v49 - 8);
  v51 = *(v50 + 80);
  v52 = &v43[v42 + v51];
  v53 = &v48[v51];
  v54 = *(v50 + 48);
  v55 = v54(&v47[v51] & ~v51, 1, v49);
  v56 = v54(v53 & ~v51, 1, v49);
  if (v55)
  {
    if (!v56)
    {
      (*(v50 + 16))(v52 & ~v51, v53 & ~v51, v49);
      (*(v50 + 56))(v52 & ~v51, 0, 1, v49);
      return a1;
    }

    v57 = *(v50 + 84);
    v58 = *(v50 + 64);
  }

  else
  {
    if (!v56)
    {
      (*(v50 + 24))(v52 & ~v51, v53 & ~v51, v49);
      return a1;
    }

    v60 = *(v50 + 8);
    v59 = v50 + 8;
    v60(v52 & ~v51, v49);
    v57 = *(v59 + 76);
    v58 = *(v59 + 56);
  }

  if (v57)
  {
    v61 = v58;
  }

  else
  {
    v61 = v58 + 1;
  }

  memcpy((v52 & ~v51), (v53 & ~v51), v61);
  return a1;
}

void *initializeWithTake for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 32))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v49 = a3;
  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 32))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = ((v32 + v29 + v38) & v31);
  v40 = ((v33 + v29 + v38) & v31);
  if (v34(v40, 1, v27))
  {
    memcpy(v39, v40, v38);
  }

  else
  {
    (*(v28 + 32))(v39, v40, v27);
    (*(v28 + 56))(v39, 0, 1, v27);
  }

  v41 = &v40[v38];
  v42 = v49[5];
  v43 = *(v42 - 8);
  v44 = *(v43 + 80);
  v45 = &v39[v38 + v44];
  v46 = &v41[v44];
  if ((*(v43 + 48))(&v41[v44] & ~v44, 1, v42))
  {
    if (*(v43 + 84))
    {
      v47 = *(v43 + 64);
    }

    else
    {
      v47 = *(v43 + 64) + 1;
    }

    memcpy((v45 & ~v44), (v46 & ~v44), v47);
  }

  else
  {
    (*(v43 + 32))(v45 & ~v44, v46 & ~v44, v42);
    (*(v43 + 56))(v45 & ~v44, 0, 1, v42);
  }

  return a1;
}

void *assignWithTake for Gauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, v4);
  v11 = v9(v8, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7, v8, v4);
      (*(v5 + 56))(v7, 0, 1, v4);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7, v8, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  v15 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v15;
  }

  v16 = a3[3];
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v15 + v18;
  v20 = ((v7 + v19) & ~v18);
  v21 = ((v8 + v19) & ~v18);
  v22 = *(v17 + 48);
  v23 = v22(v20, 1, v16);
  v24 = v22(v21, 1, v16);
  if (v23)
  {
    if (!v24)
    {
      (*(v17 + 32))(v20, v21, v16);
      (*(v17 + 56))(v20, 0, 1, v16);
      goto LABEL_25;
    }

    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v17 + 40))(v20, v21, v16);
      goto LABEL_25;
    }

    (*(v17 + 8))(v20, v16);
    v25 = *(v17 + 84);
    v26 = *(v17 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v20, v21, v27);
LABEL_25:
  v28 = *(v17 + 64);
  if (!*(v17 + 84))
  {
    ++v28;
  }

  v29 = a3[4];
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + v31;
  v33 = ~v31;
  v34 = ((v20 + v32) & ~v31);
  v35 = ((v21 + v32) & ~v31);
  v36 = *(v30 + 48);
  v37 = v36(v34, 1, v29);
  v38 = v36(v35, 1, v29);
  if (v37)
  {
    if (!v38)
    {
      (*(v30 + 32))(v34, v35, v29);
      (*(v30 + 56))(v34, 0, 1, v29);
      goto LABEL_38;
    }

    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  else
  {
    if (!v38)
    {
      (*(v30 + 40))(v34, v35, v29);
      goto LABEL_38;
    }

    (*(v30 + 8))(v34, v29);
    v39 = *(v30 + 84);
    v40 = *(v30 + 64);
  }

  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = v40 + 1;
  }

  memcpy(v34, v35, v41);
LABEL_38:
  if (*(v30 + 84))
  {
    v42 = *(v30 + 64);
  }

  else
  {
    v42 = *(v30 + 64) + 1;
  }

  v43 = ((v34 + v31 + v42) & v33);
  v44 = ((v35 + v31 + v42) & v33);
  v45 = v36(v43, 1, v29);
  v46 = v36(v44, 1, v29);
  if (v45)
  {
    if (!v46)
    {
      (*(v30 + 32))(v43, v44, v29);
      (*(v30 + 56))(v43, 0, 1, v29);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v46)
  {
    (*(v30 + 8))(v43, v29);
LABEL_46:
    memcpy(v43, v44, v42);
    goto LABEL_47;
  }

  (*(v30 + 40))(v43, v44, v29);
LABEL_47:
  v47 = &v43[v42];
  v48 = &v44[v42];
  v49 = a3[5];
  v50 = *(v49 - 8);
  v51 = *(v50 + 80);
  v52 = &v43[v42 + v51];
  v53 = &v48[v51];
  v54 = *(v50 + 48);
  v55 = v54(&v47[v51] & ~v51, 1, v49);
  v56 = v54(v53 & ~v51, 1, v49);
  if (v55)
  {
    if (!v56)
    {
      (*(v50 + 32))(v52 & ~v51, v53 & ~v51, v49);
      (*(v50 + 56))(v52 & ~v51, 0, 1, v49);
      return a1;
    }

    v57 = *(v50 + 84);
    v58 = *(v50 + 64);
  }

  else
  {
    if (!v56)
    {
      (*(v50 + 40))(v52 & ~v51, v53 & ~v51, v49);
      return a1;
    }

    v60 = *(v50 + 8);
    v59 = v50 + 8;
    v60(v52 & ~v51, v49);
    v57 = *(v59 + 76);
    v58 = *(v59 + 56);
  }

  if (v57)
  {
    v61 = v58;
  }

  else
  {
    v61 = v58 + 1;
  }

  memcpy((v52 & ~v51), (v53 & ~v51), v61);
  return a1;
}

uint64_t getEnumTagSinglePayload for Gauge(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3[3];
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v15 = a3[4];
  v14 = a3[5];
  v16 = *(v15 - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v14 - 8);
  if (v19 <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = v19;
  }

  v22 = *(v20 + 84);
  v23 = v22 - 1;
  if (!v22)
  {
    v23 = 0;
  }

  if (v23 > v21)
  {
    v21 = v23;
  }

  v24 = *(v4 + 64);
  if (v6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (v11)
  {
    v26 = *(v9 + 64);
  }

  else
  {
    v26 = *(v9 + 64) + 1;
  }

  if (v18)
  {
    v27 = *(v16 + 64);
  }

  else
  {
    v27 = *(v16 + 64) + 1;
  }

  v28 = *(v5 + 80);
  v29 = *(v9 + 80);
  v30 = *(v17 + 80);
  v31 = *(v20 + 80);
  if (v22)
  {
    v32 = *(v20 + 64);
  }

  else
  {
    v32 = *(v20 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v33 = v26 + v30;
  v34 = v27 + v30;
  v35 = v27 + v31;
  v36 = a2 - v21;
  if (a2 <= v21)
  {
LABEL_56:
    v45 = (a1 + v28 + 8) & ~v28;
    if (v7 == v21)
    {
      v46 = (*(v5 + 48))(v45);
    }

    else
    {
      v48 = (v45 + v25 + v29) & ~v29;
      if (v12 == v21)
      {
        v46 = (*(v10 + 48))(v48, v11, v8);
      }

      else
      {
        v49 = (v33 + v48) & ~v30;
        if (v19 == v21)
        {
          v46 = (*(v17 + 48))(v49, v18, v15);
        }

        else
        {
          v46 = (*(*(v14 - 8) + 48))((v35 + ((v34 + v49) & ~v30)) & ~v31, v22);
        }
      }
    }

    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  v37 = (v35 + ((v34 + ((v33 + ((v25 + v29 + ((v28 + 8) & ~v28)) & ~v29)) & ~v30)) & ~v30)) & ~v31;
  v38 = v32 + v37;
  v39 = 8 * (v32 + v37);
  if (v38 <= 3)
  {
    v41 = ((v36 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 > 0xFF)
    {
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 < 2)
    {
LABEL_55:
      if (v21)
      {
        goto LABEL_56;
      }

      return 0;
    }
  }

  v40 = *(a1 + v38);
  if (!*(a1 + v38))
  {
    goto LABEL_55;
  }

LABEL_42:
  v42 = (v40 - 1) << v39;
  if (v38 > 3)
  {
    v42 = 0;
  }

  if (v38)
  {
    if (v38 <= 3)
    {
      v43 = v38;
    }

    else
    {
      v43 = 4;
    }

    if (v43 > 2)
    {
      if (v43 == 3)
      {
        v44 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v44 = *a1;
      }
    }

    else if (v43 == 1)
    {
      v44 = *a1;
    }

    else
    {
      v44 = *a1;
    }
  }

  else
  {
    v44 = 0;
  }

  return v21 + (v44 | v42) + 1;
}

void storeEnumTagSinglePayload for Gauge(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v9 = a4[4];
  v59 = v9;
  v60 = a4[3];
  v10 = *(v60 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v60 - 8);
  v13 = *(v10 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v58 = a4[5];
  v20 = *(v58 - 8);
  v21 = *(v20 + 84);
  v22 = *(v10 + 64);
  v23 = *(v7 + 80);
  v24 = *(v12 + 80);
  v25 = *(v16 + 80);
  v26 = *(v20 + 80);
  v27 = v21 - 1;
  if (!v21)
  {
    v27 = 0;
  }

  if (v27 <= v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = v27;
  }

  if (v8)
  {
    v29 = *(*(a4[2] - 8) + 64);
  }

  else
  {
    v29 = *(*(a4[2] - 8) + 64) + 1;
  }

  if (v13)
  {
    v30 = v22;
  }

  else
  {
    v30 = v22 + 1;
  }

  if (v17)
  {
    v31 = *(*(v9 - 8) + 64);
  }

  else
  {
    v31 = *(*(v9 - 8) + 64) + 1;
  }

  v32 = v30 + v25;
  v33 = v31 + v25;
  v34 = v31 + v26;
  v35 = (v31 + v26 + ((v31 + v25 + ((v30 + v25 + ((v29 + v24 + ((v23 + 8) & ~v23)) & ~v24)) & ~v25)) & ~v25)) & ~v26;
  if (v21)
  {
    v36 = *(*(v58 - 8) + 64);
  }

  else
  {
    v36 = *(*(v58 - 8) + 64) + 1;
  }

  v37 = v35 + v36;
  v38 = a3 >= v28;
  v39 = a3 - v28;
  if (v39 == 0 || !v38)
  {
LABEL_45:
    if (v28 < a2)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  if (v37 > 3)
  {
    v6 = 1;
    if (v28 < a2)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v40 = ((v39 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
  if (!HIWORD(v40))
  {
    if (v40 < 0x100)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    if (v40 >= 2)
    {
      v6 = v41;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_45;
  }

  v6 = 4;
  if (v28 < a2)
  {
LABEL_46:
    v42 = ~v28 + a2;
    if (v37 < 4)
    {
      v43 = (v42 >> (8 * v37)) + 1;
      if (v37)
      {
        v44 = v42 & ~(-1 << (8 * v37));
        bzero(a1, v37);
        if (v37 != 3)
        {
          if (v37 == 2)
          {
            *a1 = v44;
            if (v6 > 1)
            {
LABEL_81:
              if (v6 == 2)
              {
                *&a1[v37] = v43;
              }

              else
              {
                *&a1[v37] = v43;
              }

              return;
            }
          }

          else
          {
            *a1 = v42;
            if (v6 > 1)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_78;
        }

        *a1 = v44;
        a1[2] = BYTE2(v44);
      }

      if (v6 > 1)
      {
        goto LABEL_81;
      }
    }

    else
    {
      bzero(a1, v37);
      *a1 = v42;
      v43 = 1;
      if (v6 > 1)
      {
        goto LABEL_81;
      }
    }

LABEL_78:
    if (v6)
    {
      a1[v37] = v43;
    }

    return;
  }

LABEL_55:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v37] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_62;
    }

    *&a1[v37] = 0;
  }

  else if (v6)
  {
    a1[v37] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    return;
  }

LABEL_62:
  v45 = &a1[v23 + 8] & ~v23;
  if (v11 == v28)
  {
    v46 = *(v7 + 56);
    v47 = a2 + 1;

    v46(v45, v47);
    return;
  }

  v48 = (v45 + v29 + v24) & ~v24;
  if (v14 == v28)
  {
    v49 = *(v12 + 56);
    v50 = a2 + 1;
    v51 = v13;
    v52 = v60;

LABEL_98:
    v49(v48, v50, v51, v52);
    return;
  }

  v48 = (v32 + v48) & ~v25;
  if (v18 == v28)
  {
    v49 = *(v16 + 56);
    v50 = a2 + 1;
    v51 = v17;
    v52 = v59;

    goto LABEL_98;
  }

  v53 = ~v25;
  v54 = (v34 + ((v33 + v48) & ~v25)) & ~v26;
  if (v27 >= a2)
  {
    v49 = *(v20 + 56);
    v50 = a2 + 1;
    v48 = (v34 + ((v33 + v48) & v53)) & ~v26;
    v51 = v21;
    v52 = v58;

    goto LABEL_98;
  }

  if (v36 <= 3)
  {
    v55 = ~(-1 << (8 * v36));
  }

  else
  {
    v55 = -1;
  }

  if (v36)
  {
    v56 = v55 & (~v27 + a2);
    if (v36 <= 3)
    {
      v57 = v36;
    }

    else
    {
      v57 = 4;
    }

    bzero(((v34 + ((v33 + v48) & v53)) & ~v26), v36);
    if (v57 > 2)
    {
      if (v57 == 3)
      {
        *v54 = v56;
        *(v54 + 2) = BYTE2(v56);
      }

      else
      {
        *v54 = v56;
      }
    }

    else if (v57 == 1)
    {
      *v54 = v56;
    }

    else
    {
      *v54 = v56;
    }
  }
}

uint64_t type metadata completion function for BaseGauge(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BaseGauge(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v4 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = *(v4 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(*(v4 - 8) + 64);
  }

  else
  {
    v11 = *(*(v4 - 8) + 64) + 1;
  }

  v12 = *(a3[4] - 8);
  v13 = *(v12 + 80);
  v14 = v13;
  if (*(v12 + 84))
  {
    v15 = *(v12 + 64);
  }

  else
  {
    v15 = *(v12 + 64) + 1;
  }

  v16 = v10 | v7 | v13;
  if (v16 > 7 || ((*(v9 + 80) | *(v6 + 80) | v13) & 0x100000) != 0 || ((v15 + v13 + ((v11 + v13 + ((v8 + v10 + ((v7 + 8) & ~v7)) & ~v10)) & ~v13)) & ~v13) + v15 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = (v19 + ((v16 & 0xF8 ^ 0x1F8) & (v16 + 16)));
  }

  else
  {
    v33 = a3[3];
    v34 = v15 + v13;
    __n = v15;
    v35 = a3[4];
    v32 = ~v10;
    *a1 = *a2;
    v21 = ((a1 + v7 + 8) & ~v7);
    v22 = ((a2 + v7 + 8) & ~v7);
    if ((*(v6 + 48))(v22, 1, v5))
    {
      memcpy(v21, v22, v8);
    }

    else
    {
      (*(v6 + 16))(v21, v22, v5);
      (*(v6 + 56))(v21, 0, 1, v5);
    }

    v23 = ~v14;
    v24 = ((v21 + v8 + v10) & v32);
    v25 = ((v22 + v8 + v10) & v32);
    if ((*(v9 + 48))(v25, 1, v33))
    {
      memcpy(v24, v25, v11);
    }

    else
    {
      (*(v9 + 16))(v24, v25, v33);
      (*(v9 + 56))(v24, 0, 1, v33);
    }

    v20 = a1;
    v26 = ((v24 + v11 + v14) & v23);
    v27 = ((v25 + v11 + v14) & v23);
    v28 = *(v12 + 48);
    if (v28(v27, 1, v35))
    {
      memcpy(v26, v27, __n);
    }

    else
    {
      (*(v12 + 16))(v26, v27, v35);
      (*(v12 + 56))(v26, 0, 1, v35);
    }

    v29 = &v26[v34];
    v30 = &v27[v34];
    if (v28((v30 & v23), 1, v35))
    {
      memcpy((v29 & v23), (v30 & v23), __n);
    }

    else
    {
      (*(v12 + 16))(v29 & v23, v30 & v23, v35);
      (*(v12 + 56))(v29 & v23, 0, 1, v35);
    }
  }

  return v20;
}

uint64_t destroy for BaseGauge(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(v3 - 8);
  v5 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, v3))
  {
    (*(v4 + 8))(v5, v3);
  }

  v6 = *(v4 + 84);
  v7 = *(v4 + 64);
  v8 = a2[3];
  v9 = *(v8 - 8);
  v10 = v7 + v5;
  if (!v6)
  {
    ++v10;
  }

  v11 = (v10 + *(v9 + 80)) & ~*(v9 + 80);
  if (!(*(*(a2[3] - 8) + 48))(v11, 1, v8))
  {
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v9 + 64);
  v13 = a2[4];
  v14 = *(v9 + 84) == 0;
  v24 = *(v13 - 8);
  v15 = *(v24 + 80);
  v16 = v12 + v11;
  if (v14)
  {
    ++v16;
  }

  v17 = ~v15;
  v18 = (v16 + v15) & ~v15;
  v19 = *(*(v13 - 8) + 48);
  if (!v19(v18, 1, v13))
  {
    (*(v24 + 8))(v18, v13);
  }

  v20 = *(v24 + 64);
  if (*(v24 + 84))
  {
    v21 = v18 + v15 + v20;
  }

  else
  {
    v21 = v18 + v15 + v20 + 1;
  }

  result = v19(v21 & v17, 1, v13);
  if (!result)
  {
    v23 = *(v24 + 8);

    return v23(v21 & v17, v13);
  }

  return result;
}

void *initializeWithCopy for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = *(v16 + 64);
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 16))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 16))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = &v32[v29 + v38];
  v40 = &v33[v29 + v38];
  if (v34((v40 & v31), 1, v27))
  {
    memcpy((v39 & v31), (v40 & v31), v38);
  }

  else
  {
    (*(v28 + 16))(v39 & v31, v40 & v31, v27);
    (*(v28 + 56))(v39 & v31, 0, 1, v27);
  }

  return a1;
}

void *assignWithCopy for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  v10 = *(v6 + 48);
  v11 = v10(v8, 1, v5);
  v12 = v10(v9, 1, v5);
  if (v11)
  {
    if (!v12)
    {
      (*(v6 + 16))(v8, v9, v5);
      (*(v6 + 56))(v8, 0, 1, v5);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v6 + 24))(v8, v9, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, v5);
    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v8, v9, v15);
LABEL_12:
  v16 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v16;
  }

  v17 = a3[3];
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = ((v8 + v20) & ~v19);
  v22 = ((v9 + v20) & ~v19);
  v23 = *(v18 + 48);
  v24 = v23(v21, 1, v17);
  v25 = v23(v22, 1, v17);
  if (v24)
  {
    if (!v25)
    {
      (*(v18 + 16))(v21, v22, v17);
      (*(v18 + 56))(v21, 0, 1, v17);
      goto LABEL_25;
    }

    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v18 + 24))(v21, v22, v17);
      goto LABEL_25;
    }

    (*(v18 + 8))(v21, v17);
    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v21, v22, v28);
LABEL_25:
  v29 = *(v18 + 64);
  if (!*(v18 + 84))
  {
    ++v29;
  }

  v30 = a3[4];
  v31 = *(v30 - 8);
  v32 = *(v31 + 80);
  v33 = v29 + v32;
  v34 = ~v32;
  v35 = ((v21 + v33) & ~v32);
  v36 = ((v22 + v33) & ~v32);
  v37 = *(v31 + 48);
  v38 = v37(v35, 1, v30);
  v39 = v37(v36, 1, v30);
  if (v38)
  {
    if (!v39)
    {
      (*(v31 + 16))(v35, v36, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      goto LABEL_38;
    }

    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  else
  {
    if (!v39)
    {
      (*(v31 + 24))(v35, v36, v30);
      goto LABEL_38;
    }

    (*(v31 + 8))(v35, v30);
    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = v41 + 1;
  }

  memcpy(v35, v36, v42);
LABEL_38:
  if (*(v31 + 84))
  {
    v43 = *(v31 + 64);
  }

  else
  {
    v43 = *(v31 + 64) + 1;
  }

  v44 = &v35[v32 + v43];
  v45 = &v36[v32 + v43];
  v46 = v37((v44 & v34), 1, v30);
  v47 = v37((v45 & v34), 1, v30);
  if (!v46)
  {
    if (!v47)
    {
      (*(v31 + 24))(v44 & v34, v45 & v34, v30);
      return a1;
    }

    (*(v31 + 8))(v44 & v34, v30);
    goto LABEL_46;
  }

  if (v47)
  {
LABEL_46:
    memcpy((v44 & v34), (v45 & v34), v43);
    return a1;
  }

  (*(v31 + 16))(v44 & v34, v45 & v34, v30);
  (*(v31 + 56))(v44 & v34, 0, 1, v30);
  return a1;
}

void *initializeWithTake for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    memcpy(v7, v8, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    v13 = *(v5 + 56);
    v12 = v5 + 56;
    v13(v7, 0, 1, v4);
    v9 = *(v12 + 28);
    v10 = *(v12 + 8);
  }

  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  v15 = a3[3];
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = v14 + v17;
  v19 = ((v7 + v18) & ~v17);
  v20 = ((v8 + v18) & ~v17);
  if ((*(v16 + 48))(v20, 1, v15))
  {
    v21 = *(v16 + 84);
    v22 = *(v16 + 64);
    if (v21)
    {
      v23 = *(v16 + 64);
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v16 + 32))(v19, v20, v15);
    v25 = *(v16 + 56);
    v24 = v16 + 56;
    v25(v19, 0, 1, v15);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = a3[4];
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29;
  v31 = ~v29;
  v32 = ((v19 + v30) & ~v29);
  v33 = ((v20 + v30) & ~v29);
  v34 = *(v28 + 48);
  if (v34(v33, 1, v27))
  {
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
    if (v35)
    {
      v37 = *(v28 + 64);
    }

    else
    {
      v37 = v36 + 1;
    }

    memcpy(v32, v33, v37);
  }

  else
  {
    (*(v28 + 32))(v32, v33, v27);
    (*(v28 + 56))(v32, 0, 1, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = &v32[v29 + v38];
  v40 = &v33[v29 + v38];
  if (v34((v40 & v31), 1, v27))
  {
    memcpy((v39 & v31), (v40 & v31), v38);
  }

  else
  {
    (*(v28 + 32))(v39 & v31, v40 & v31, v27);
    (*(v28 + 56))(v39 & v31, 0, 1, v27);
  }

  return a1;
}

void *assignWithTake for BaseGauge(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((a1 + v7 + 8) & ~v7);
  v9 = ((a2 + v7 + 8) & ~v7);
  v10 = *(v6 + 48);
  v11 = v10(v8, 1, v5);
  v12 = v10(v9, 1, v5);
  if (v11)
  {
    if (!v12)
    {
      (*(v6 + 32))(v8, v9, v5);
      (*(v6 + 56))(v8, 0, 1, v5);
      goto LABEL_12;
    }

    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v6 + 40))(v8, v9, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v8, v5);
    v13 = *(v6 + 84);
    v14 = *(v6 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(v8, v9, v15);
LABEL_12:
  v16 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v16;
  }

  v17 = a3[3];
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = ((v8 + v20) & ~v19);
  v22 = ((v9 + v20) & ~v19);
  v23 = *(v18 + 48);
  v24 = v23(v21, 1, v17);
  v25 = v23(v22, 1, v17);
  if (v24)
  {
    if (!v25)
    {
      (*(v18 + 32))(v21, v22, v17);
      (*(v18 + 56))(v21, 0, 1, v17);
      goto LABEL_25;
    }

    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v18 + 40))(v21, v22, v17);
      goto LABEL_25;
    }

    (*(v18 + 8))(v21, v17);
    v26 = *(v18 + 84);
    v27 = *(v18 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v21, v22, v28);
LABEL_25:
  v29 = *(v18 + 64);
  if (!*(v18 + 84))
  {
    ++v29;
  }

  v30 = a3[4];
  v31 = *(v30 - 8);
  v32 = *(v31 + 80);
  v33 = v29 + v32;
  v34 = ~v32;
  v35 = ((v21 + v33) & ~v32);
  v36 = ((v22 + v33) & ~v32);
  v37 = *(v31 + 48);
  v38 = v37(v35, 1, v30);
  v39 = v37(v36, 1, v30);
  if (v38)
  {
    if (!v39)
    {
      (*(v31 + 32))(v35, v36, v30);
      (*(v31 + 56))(v35, 0, 1, v30);
      goto LABEL_38;
    }

    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  else
  {
    if (!v39)
    {
      (*(v31 + 40))(v35, v36, v30);
      goto LABEL_38;
    }

    (*(v31 + 8))(v35, v30);
    v40 = *(v31 + 84);
    v41 = *(v31 + 64);
  }

  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = v41 + 1;
  }

  memcpy(v35, v36, v42);
LABEL_38:
  if (*(v31 + 84))
  {
    v43 = *(v31 + 64);
  }

  else
  {
    v43 = *(v31 + 64) + 1;
  }

  v44 = &v35[v32 + v43];
  v45 = &v36[v32 + v43];
  v46 = v37((v44 & v34), 1, v30);
  v47 = v37((v45 & v34), 1, v30);
  if (!v46)
  {
    if (!v47)
    {
      (*(v31 + 40))(v44 & v34, v45 & v34, v30);
      return a1;
    }

    (*(v31 + 8))(v44 & v34, v30);
    goto LABEL_46;
  }

  if (v47)
  {
LABEL_46:
    memcpy((v44 & v34), (v45 & v34), v43);
    return a1;
  }

  (*(v31 + 32))(v44 & v34, v45 & v34, v30);
  (*(v31 + 56))(v44 & v34, 0, 1, v30);
  return a1;
}

uint64_t getEnumTagSinglePayload for BaseGauge(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3[3];
  v8 = a3[4];
  v9 = *(v7 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 > v13)
  {
    v13 = v16;
  }

  if (v5)
  {
    v17 = *(*(a3[2] - 8) + 64);
  }

  else
  {
    v17 = *(*(a3[2] - 8) + 64) + 1;
  }

  if (v11)
  {
    v18 = *(v9 + 64);
  }

  else
  {
    v18 = *(v9 + 64) + 1;
  }

  v19 = *(v4 + 80);
  v20 = *(v9 + 80);
  v21 = *(v14 + 80);
  if (v15)
  {
    v22 = *(*(v8 - 8) + 64);
  }

  else
  {
    v22 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + v21;
  v24 = a2 - v13;
  if (a2 <= v13)
  {
LABEL_47:
    v32 = (a1 + v19 + 8) & ~v19;
    if (v6 == v13)
    {
      v33 = (*(v4 + 48))(v32);
    }

    else
    {
      v35 = (v32 + v17 + v20) & ~v20;
      if (v12 == v13)
      {
        v33 = (*(v10 + 48))(v35, v11, v7);
      }

      else
      {
        v33 = (*(v14 + 48))((v23 + v35) & ~v21, v15, v8);
      }
    }

    if (v33 >= 2)
    {
      return v33 - 1;
    }

    else
    {
      return 0;
    }
  }

  v25 = ((v22 + v21 + ((v23 + ((v17 + v20 + ((v19 + 8) & ~v19)) & ~v20)) & ~v21)) & ~v21) + v22;
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v28 = ((v24 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (v28 < 2)
    {
LABEL_46:
      if (v13)
      {
        goto LABEL_47;
      }

      return 0;
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_46;
  }

LABEL_33:
  v29 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v29 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v30 = v25;
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

  else
  {
    v31 = 0;
  }

  return v13 + (v31 | v29) + 1;
}

void storeEnumTagSinglePayload for BaseGauge(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4[3];
  v11 = a4[4];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v7 + 80);
  v19 = *(v12 + 80);
  v20 = *(v16 + 80);
  v21 = v17 - 1;
  if (!v17)
  {
    v21 = 0;
  }

  if (v21 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  if (v8)
  {
    v23 = *(*(a4[2] - 8) + 64);
  }

  else
  {
    v23 = *(*(a4[2] - 8) + 64) + 1;
  }

  if (v13)
  {
    v24 = *(*(v10 - 8) + 64);
  }

  else
  {
    v24 = *(*(v10 - 8) + 64) + 1;
  }

  v25 = v24 + v20;
  v26 = (v24 + v20 + ((v23 + v19 + ((v18 + 8) & ~v18)) & ~v19)) & ~v20;
  if (v17)
  {
    v27 = *(*(v11 - 8) + 64);
  }

  else
  {
    v27 = *(*(v11 - 8) + 64) + 1;
  }

  v28 = ((v27 + v20 + v26) & ~v20) + v27;
  v29 = a3 >= v22;
  v30 = a3 - v22;
  if (v30 == 0 || !v29)
  {
LABEL_35:
    if (v22 < a2)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (v28 > 3)
  {
    v6 = 1;
    if (v22 < a2)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  v31 = ((v30 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
  if (!HIWORD(v31))
  {
    if (v31 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v31 < 2)
    {
      v6 = 0;
    }

    goto LABEL_35;
  }

  v6 = 4;
  if (v22 < a2)
  {
LABEL_36:
    v32 = ~v22 + a2;
    if (v28 < 4)
    {
      v33 = (v32 >> (8 * v28)) + 1;
      if (v28)
      {
        v34 = v32 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v34;
            if (v6 > 1)
            {
LABEL_78:
              if (v6 == 2)
              {
                *&a1[v28] = v33;
              }

              else
              {
                *&a1[v28] = v33;
              }

              return;
            }
          }

          else
          {
            *a1 = v32;
            if (v6 > 1)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_75;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v6 > 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v32;
      v33 = 1;
      if (v6 > 1)
      {
        goto LABEL_78;
      }
    }

LABEL_75:
    if (v6)
    {
      a1[v28] = v33;
    }

    return;
  }

LABEL_45:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    *&a1[v28] = 0;
  }

  else if (v6)
  {
    a1[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_52;
  }

  if (!a2)
  {
    return;
  }

LABEL_52:
  v35 = &a1[v18 + 8] & ~v18;
  if (v9 == v22)
  {
    v36 = *(v7 + 56);
    v37 = a2 + 1;

    v36(v35, v37);
    return;
  }

  v38 = (v35 + v23 + v19) & ~v19;
  if (v14 == v22)
  {
    v39 = *(v12 + 56);
    v40 = a2 + 1;
    v41 = v13;
    v42 = v10;

LABEL_59:
    v39(v38, v40, v41, v42);
    return;
  }

  v43 = (v25 + v38) & ~v20;
  if (v21 >= a2)
  {
    v39 = *(v16 + 56);
    v40 = a2 + 1;
    v38 = (v25 + v38) & ~v20;
    v41 = v17;
    v42 = v11;

    goto LABEL_59;
  }

  if (v27 <= 3)
  {
    v44 = ~(-1 << (8 * v27));
  }

  else
  {
    v44 = -1;
  }

  if (v27)
  {
    v45 = v44 & (~v21 + a2);
    if (v27 <= 3)
    {
      v46 = v27;
    }

    else
    {
      v46 = 4;
    }

    bzero(((v25 + v38) & ~v20), v27);
    if (v46 > 2)
    {
      if (v46 == 3)
      {
        *v43 = v45;
        *(v43 + 2) = BYTE2(v45);
      }

      else
      {
        *v43 = v45;
      }
    }

    else if (v46 == 1)
    {
      *v43 = v45;
    }

    else
    {
      *v43 = v45;
    }
  }
}

double static BaseGauge._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v15 = *a1;
  v16 = a2[3];
  v73 = a2[2];
  v74 = v16;
  v75 = a2[4];
  v76 = *(a2 + 20);
  v17 = a2[1];
  v71 = *a2;
  v72 = v17;
  LODWORD(v68) = v15;
  *&v62 = a3;
  *(&v62 + 1) = a4;
  *&v63 = a5;
  *(&v63 + 1) = a6;
  *&v64 = a7;
  *(&v64 + 1) = a8;
  type metadata accessor for BaseGauge(255, &v62);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static BaseGauge._makeView(view:inputs:)(1, a3, a4, a5, a6, a7, a8);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v42 = v15;
  LODWORD(v62) = v15;
  _GraphValue.value.getter();
  v51 = a7;
  v52 = a3;
  v50 = a6;
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #2 in static BaseGauge._makeView(view:inputs:)(1, a3, a4, a5, a6, a7, a8);
  }

  v18 = AGGraphCreateOffsetAttribute2();
  LODWORD(v62) = v15;
  _GraphValue.value.getter();
  v19 = a4;
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    v20 = a4;
    v21 = a8;
    closure #3 in static BaseGauge._makeView(view:inputs:)(1, v52, v20, a5, v50, a7, a8);
  }

  else
  {
    v21 = a8;
  }

  v22 = AGGraphCreateOffsetAttribute2();
  LODWORD(v62) = v15;
  _GraphValue.value.getter();
  v23 = *(*(type metadata accessor for Optional() - 8) + 64);
  if (v23)
  {
    closure #4 in static BaseGauge._makeView(view:inputs:)(1, v52, v19, a5, v50, v51, v21);
  }

  v48 = v18;
  v46 = AGGraphCreateOffsetAttribute2();
  LODWORD(v62) = v42;
  _GraphValue.value.getter();
  v47 = v22;
  v45 = a5;
  if (v23)
  {
    v24 = v52;
    v25 = a5;
    v26 = v50;
    v27 = v51;
    closure #5 in static BaseGauge._makeView(view:inputs:)(1, v52, v19, v25, v50, v51, v21);
  }

  else
  {
    v27 = v51;
    v24 = v52;
    v26 = v50;
  }

  v28 = AGGraphCreateOffsetAttribute2();
  v29 = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  *&v62 = &type metadata for GaugeStyleConfiguration.Label;
  *(&v62 + 1) = v24;
  *&v63 = v29;
  *(&v63 + 1) = v26;
  type metadata accessor for OptionalSourceWriter(255, &v62);
  v43 = type metadata accessor for ModifiedContent();
  v30 = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  *&v62 = &type metadata for GaugeStyleConfiguration.CurrentValueLabel;
  *(&v62 + 1) = v19;
  *&v63 = v30;
  *(&v63 + 1) = v27;
  type metadata accessor for OptionalSourceWriter(255, &v62);
  v41 = type metadata accessor for ModifiedContent();
  v31 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  *&v62 = &type metadata for GaugeStyleConfiguration.MinimumValueLabel;
  *(&v62 + 1) = v45;
  *&v63 = v31;
  *(&v63 + 1) = v21;
  type metadata accessor for OptionalSourceWriter(255, &v62);
  v39 = type metadata accessor for ModifiedContent();
  v32 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  *&v62 = &type metadata for GaugeStyleConfiguration.MaximumValueLabel;
  *(&v62 + 1) = v45;
  *&v63 = v32;
  *(&v63 + 1) = v21;
  type metadata accessor for OptionalSourceWriter(255, &v62);
  v33 = type metadata accessor for ModifiedContent();
  v40 = type metadata accessor for ModifiedContent();
  v34 = type metadata accessor for ModifiedContent();
  v68 = __PAIR64__(v48, OffsetAttribute2);
  v69 = COERCE_DOUBLE(__PAIR64__(v46, v47));
  v70 = v28;
  *&v62 = v24;
  *(&v62 + 1) = v19;
  *&v63 = v45;
  *(&v63 + 1) = v26;
  *&v64 = v27;
  *(&v64 + 1) = v21;
  v35 = type metadata accessor for BaseGauge.Child(0, &v62);
  swift_getWitnessTable(protocol conformance descriptor for BaseGauge<A, B, C>.Child, v35);
  _GraphValue.init<A>(_:)();
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v62 = v71;
  v63 = v72;
  v61[0] = lazy protocol witness table accessor for type ResolvedGauge and conformance ResolvedGauge();
  v61[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v36 = MEMORY[0x1E697E858];
  v60[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v43, v61);
  v60[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v59[0] = swift_getWitnessTable(v36, v41, v60);
  v59[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v58[0] = swift_getWitnessTable(v36, v39, v59);
  v58[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v57[0] = swift_getWitnessTable(v36, v33, v58);
  v57[1] = &protocol witness table for IgnoreViewRespondersModifier;
  v56[0] = swift_getWitnessTable(v36, v40, v57);
  v56[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(v36, v34, v56);
  static View.makeDebuggableView(view:inputs:)();
  *&v62 = v74;
  DWORD2(v62) = DWORD2(v74);
  v54 = v74;
  v55 = DWORD2(v74);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v37 = PreferencesOutputs.subscript.setter();
    v54 = v62;
    v55 = DWORD2(v62);
    MEMORY[0x1EEE9AC00](v37);
    outlined init with copy of PreferencesInputs(&v62, &v53);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *a9 = v68;
  result = v69;
  a9[1] = v69;
  return result;
}

uint64_t closure #1 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v12[2] = type metadata accessor for BaseGauge(0, v13);
  v8 = MEMORY[0x1E69E63B0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #2 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for BaseGauge(0, v15);
  v9 = *(v8 + 68);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[0];
}

uint64_t closure #3 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for BaseGauge(0, v15);
  v9 = *(v8 + 72);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[0];
}

uint64_t closure #4 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for BaseGauge(0, v15);
  v9 = *(v8 + 76);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[0];
}

uint64_t closure #5 in static BaseGauge._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for BaseGauge(0, v15);
  v9 = *(v8 + 80);
  v13[2] = v8;
  v14 = type metadata accessor for Optional();
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15[0];
}

uint64_t implicit closure #1 in static BaseGauge._makeView(view:inputs:)(int a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v59 = a11;
  v57 = a10;
  v101 = *MEMORY[0x1E69E9840];
  v14 = a3[3];
  v89 = a3[2];
  v90 = v14;
  v91 = a3[4];
  LODWORD(v92) = *(a3 + 20);
  v15 = a3[1];
  v87 = *a3;
  v88 = v15;
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v16, &a10);
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a2, &v87, &v94);
  v20 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage(0, v16, WitnessTable, v19);
  v74 = v20;
  v75 = swift_getWitnessTable(protocol conformance descriptor for LazyWidgetAuxiliaryMetadataTextImage<A>, v20);
  outlined init with copy of _ViewInputs(a3, &v87);
  type metadata accessor for Attribute<WidgetAuxiliaryTextImagePreference?>(0);
  v22 = v21;
  v23 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v94, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11, v73, v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v24);
  v83[4] = v98;
  v83[5] = v99;
  v84 = v100;
  v83[0] = v94;
  v83[1] = v95;
  v83[2] = v96;
  v83[3] = v97;
  (*(*(v20 - 8) + 8))(v83, v20);
  v54 = v87;
  v25 = a3[3];
  v89 = a3[2];
  v90 = v25;
  v91 = a3[4];
  LODWORD(v92) = *(a3 + 20);
  v26 = a3[1];
  v87 = *a3;
  v88 = v26;
  v27 = type metadata accessor for Optional();
  v28 = swift_getWitnessTable(v17, v27, &a10 + 8);
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a4, &v87, &v94);
  v30 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage(0, v27, v28, v29);
  v71 = v30;
  v72 = swift_getWitnessTable(protocol conformance descriptor for LazyWidgetAuxiliaryMetadataTextImage<A>, v30);
  outlined init with copy of _ViewInputs(a3, &v87);
  v31 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v94, closure #1 in Attribute.init<A>(_:)partial apply, v70, v30, v23, v22, MEMORY[0x1E69E7410], v32);
  v85[4] = v98;
  v85[5] = v99;
  v86 = v100;
  v85[0] = v94;
  v85[1] = v95;
  v85[2] = v96;
  v85[3] = v97;
  (*(*(v30 - 8) + 8))(v85, v30);
  v51 = v87;
  v33 = a3[3];
  v89 = a3[2];
  v90 = v33;
  v91 = a3[4];
  LODWORD(v92) = *(a3 + 20);
  v34 = a3[1];
  v87 = *a3;
  v88 = v34;
  v35 = type metadata accessor for Optional();
  v36 = swift_getWitnessTable(v17, v35, &a11);
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a5, &v87, &v94);
  v38 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage(0, v35, v36, v37);
  v68 = v38;
  v39 = swift_getWitnessTable(protocol conformance descriptor for LazyWidgetAuxiliaryMetadataTextImage<A>, v38);
  v69 = v39;
  outlined init with copy of _ViewInputs(a3, &v87);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v94, closure #1 in Attribute.init<A>(_:)partial apply, v67, v38, v23, v22, v31, v40);
  v91 = v98;
  v92 = v99;
  v93 = v100;
  v87 = v94;
  v88 = v95;
  v89 = v96;
  v90 = v97;
  v41 = *(*(v38 - 8) + 8);
  v41(&v87, v38);
  LODWORD(v23) = v77;
  v42 = a3[3];
  v96 = a3[2];
  v97 = v42;
  v98 = a3[4];
  LODWORD(v99) = *(a3 + 20);
  v43 = a3[1];
  v94 = *a3;
  v95 = v43;
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a6, &v94, &v77);
  v65 = v38;
  v66 = v39;
  outlined init with copy of _ViewInputs(a3, &v94);
  v44 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v77, closure #1 in Attribute.init<A>(_:)partial apply, v64, v38, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v45);
  v98 = v80;
  v99 = v81;
  v100 = v82;
  v94 = v77;
  v95 = *v78;
  v96 = *&v78[16];
  v97 = v79;
  v41(&v94, v38);
  LODWORD(v39) = v76[0];
  v46 = *(a3 + 2);
  swift_beginAccess();
  v47 = *(v46 + 16);
  v60[0] = a1;
  v60[1] = v54;
  v60[2] = v51;
  v60[3] = v23;
  v60[4] = v39;
  v60[5] = v47;
  *&v77 = a7;
  *(&v77 + 1) = a8;
  *&v78[8] = v57;
  *v78 = a9;
  *&v78[24] = v59;
  v62 = type metadata accessor for BaseGauge.WidgetMetadataWriter(0, &v77);
  v63 = swift_getWitnessTable(protocol conformance descriptor for BaseGauge<A, B, C>.WidgetMetadataWriter, v62);
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for Attribute<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v60, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_10, v61, v62, v44, v48, MEMORY[0x1E69E7410], v49);
  return v77;
}

uint64_t BaseGauge.Child.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v83 = a3;
  v85 = a2;
  v75 = a9;
  v15 = HIDWORD(a1);
  v82 = HIDWORD(a2);
  v66 = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  v116 = &type metadata for GaugeStyleConfiguration.Label;
  v117 = a4;
  v118 = v66;
  v119 = a7;
  type metadata accessor for OptionalSourceWriter(255, &v116);
  v62 = type metadata accessor for ModifiedContent();
  v70 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v84 = &v58 - v17;
  v67 = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  v116 = &type metadata for GaugeStyleConfiguration.CurrentValueLabel;
  v117 = a5;
  v77 = a8;
  v78 = a5;
  v118 = v67;
  v119 = a8;
  type metadata accessor for OptionalSourceWriter(255, &v116);
  v63 = type metadata accessor for ModifiedContent();
  v72 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v80 = &v58 - v18;
  v68 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  v116 = &type metadata for GaugeStyleConfiguration.MinimumValueLabel;
  v117 = a6;
  v118 = v68;
  v119 = a10;
  type metadata accessor for OptionalSourceWriter(255, &v116);
  v65 = type metadata accessor for ModifiedContent();
  v73 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v81 = &v58 - v19;
  v69 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  v116 = &type metadata for GaugeStyleConfiguration.MaximumValueLabel;
  v117 = a6;
  v118 = v69;
  v119 = a10;
  v79 = a10;
  type metadata accessor for OptionalSourceWriter(255, &v116);
  v71 = type metadata accessor for ModifiedContent();
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v58 - v20;
  v76 = a1;
  v116 = *AGGraphGetValue();
  LOWORD(v117) = 0;
  BYTE2(v117) = 0;
  v104[2] = a4;
  v104[3] = a5;
  v104[4] = a6;
  v21 = a6;
  v59 = a6;
  v22 = a7;
  v104[5] = a7;
  v104[6] = a8;
  v104[7] = a10;
  v105 = a1;
  v106 = v15;
  LODWORD(a8) = v85;
  v107 = v85;
  v23 = v82;
  v108 = v82;
  LODWORD(a7) = v83;
  v109 = v83;
  v24 = lazy protocol witness table accessor for type ResolvedGauge and conformance ResolvedGauge();
  v61 = v22;
  v60 = a4;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.Label, partial apply for closure #1 in BaseGauge.Child.value.getter, v104, &unk_1F0000060, &type metadata for GaugeStyleConfiguration.Label, a4, v24, v66, v22);
  v25 = v78;
  v98[2] = a4;
  v98[3] = v78;
  v98[4] = v21;
  v98[5] = v22;
  LODWORD(a4) = v76;
  v26 = v77;
  v98[6] = v77;
  v98[7] = v79;
  v99 = v76;
  v100 = v15;
  LODWORD(v22) = v15;
  v58 = v15;
  v101 = a8;
  v102 = v23;
  v103 = a7;
  v115[0] = v24;
  v115[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v27 = MEMORY[0x1E697E858];
  v66 = MEMORY[0x1E697E858];
  v28 = v62;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v62, v115);
  v30 = v25;
  v31 = v25;
  v32 = v84;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.CurrentValueLabel, partial apply for closure #2 in BaseGauge.Child.value.getter, v98, v28, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, v31, WitnessTable, v67, v26);
  (*(v70 + 8))(v32, v28);
  v33 = v59;
  v34 = v60;
  v92[2] = v60;
  v92[3] = v30;
  v35 = v61;
  v92[4] = v59;
  v92[5] = v61;
  v36 = v79;
  v92[6] = v26;
  v92[7] = v79;
  v93 = a4;
  v94 = v22;
  v95 = v85;
  LODWORD(v26) = v82;
  v96 = v82;
  LODWORD(v22) = v83;
  v97 = v83;
  v114[0] = WitnessTable;
  v114[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v37 = v63;
  v38 = swift_getWitnessTable(v27, v63, v114);
  v57 = v36;
  v39 = v36;
  v40 = v33;
  v41 = v33;
  v42 = v80;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.MinimumValueLabel, partial apply for closure #3 in BaseGauge.Child.value.getter, v92, v37, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, v40, v38, v68, v57);
  (*(v72 + 8))(v42, v37);
  v86[2] = v34;
  v86[3] = v78;
  v86[4] = v41;
  v86[5] = v35;
  v86[6] = v77;
  v86[7] = v39;
  v87 = v76;
  v88 = v58;
  v89 = v85;
  v90 = v26;
  v91 = v22;
  v113[0] = v38;
  v113[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v44 = v65;
  v43 = v66;
  v45 = swift_getWitnessTable(v66, v65, v113);
  v46 = v64;
  v47 = v81;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GaugeStyleConfiguration.MaximumValueLabel, partial apply for closure #4 in BaseGauge.Child.value.getter, v86, v44, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, v41, v45, v69, v39);
  (*(v73 + 8))(v47, v44);
  AGGraphGetValue();
  v112[0] = v45;
  v112[1] = &protocol witness table for OptionalSourceWriter<A, B>;
  v48 = v71;
  v49 = swift_getWitnessTable(v43, v71, v112);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v116 = v50;
  v52 = type metadata accessor for AccessibilityGaugeModifier(0, v48, v49, v51);
  v53 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGaugeModifier<A>, v52);
  v54 = type metadata accessor for ModifiedContent();
  v55 = type metadata accessor for ModifiedContent();
  v111[0] = v49;
  v111[1] = &protocol witness table for IgnoreViewRespondersModifier;
  v110[0] = swift_getWitnessTable(v43, v54, v111);
  v110[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(v43, v55, v110);
  View.accessibilityConfiguration<A>(_:)(&v116, v48, v52, v49, v53);
  return (*(v74 + 8))(v46, v48);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance BaseGauge<A, B, C>.Child@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  v6 = a1[5];
  v16 = &type metadata for GaugeStyleConfiguration.Label;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  type metadata accessor for OptionalSourceWriter(255, &v16);
  type metadata accessor for ModifiedContent();
  v7 = a1[3];
  v8 = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  v9 = a1[6];
  v16 = &type metadata for GaugeStyleConfiguration.CurrentValueLabel;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  type metadata accessor for OptionalSourceWriter(255, &v16);
  type metadata accessor for ModifiedContent();
  v10 = a1[4];
  v11 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  v12 = a1[7];
  v16 = &type metadata for GaugeStyleConfiguration.MinimumValueLabel;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  type metadata accessor for OptionalSourceWriter(255, &v16);
  type metadata accessor for ModifiedContent();
  v13 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  v16 = &type metadata for GaugeStyleConfiguration.MaximumValueLabel;
  v17 = v10;
  v18 = v13;
  v19 = v12;
  type metadata accessor for OptionalSourceWriter(255, &v16);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

uint64_t BaseGauge.WidgetMetadataWriter.value.getter@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v113 = a3;
  v109 = a2;
  v104 = a4;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = v102 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v102 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v122 = v102 - v16;
  v17 = MEMORY[0x1E69E6720];
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v102 - v19;
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v17);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v107 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = v102 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v105 = v102 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v102 - v28;
  v30 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v31 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v112 = (v102 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v111 = (v102 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v110 = (v102 - v39);
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference);
  v108 = v40;
  v41 = *AGGraphGetValue();
  v102[0] = v33;
  v102[1] = a1;
  if (v41 == 1)
  {
    goto LABEL_4;
  }

  if (!v41)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
LABEL_4:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v41);
    v42 = type metadata accessor for PlatformItemList.Item(0);
    (*(*(v42 - 8) + 56))(v29, 1, 1, v42);
    goto LABEL_6;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(v41);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v43);
  PlatformItemList.mergedContentItem.getter(v41, v29);

  v44 = type metadata accessor for PlatformItemList.Item(0);
  (*(*(v44 - 8) + 56))(v29, 0, 1, v44);
LABEL_6:
  v45 = type metadata accessor for URL();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v118 = v45;
  v120 = v46 + 56;
  v121 = v47;
  (v47)(v20, 1, 1);
  v48 = *(v31 + 56);
  v119 = xmmword_18CD633F0;
  v133 = xmmword_18CD633F0;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v49 = v122;
  v117 = v31 + 56;
  v50 = v48;
  v48(v122, 1, 1, v30);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v29, v20, &v133, v49, v110);
  v51 = *AGGraphGetValue();
  v114 = v11;
  v115 = v14;
  if (v51 == 1)
  {
LABEL_9:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v51);
    v52 = 1;
    goto LABEL_11;
  }

  if (!v51)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
    goto LABEL_9;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(v51);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v53);
  PlatformItemList.mergedContentItem.getter(v51, v105);

  v52 = 0;
LABEL_11:
  v54 = type metadata accessor for PlatformItemList.Item(0);
  v55 = *(*(v54 - 8) + 56);
  v56 = v105;
  v55(v105, v52, 1, v54);
  v121(v20, 1, 1, v118);
  v133 = v119;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v57 = v122;
  v50(v122, 1, 1, v30);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v56, v20, &v133, v57, v111);
  Value = AGGraphGetValue();
  v59 = *Value;
  if (*Value == 1)
  {
LABEL_14:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v59);
    v60 = 1;
    goto LABEL_16;
  }

  if (!v59)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
    goto LABEL_14;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(*Value);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v61);
  PlatformItemList.mergedContentItem.getter(v59, v106);

  v60 = 0;
LABEL_16:
  v62 = v106;
  v55(v106, v60, 1, v54);
  v121(v20, 1, 1, v118);
  v133 = v119;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v63 = v122;
  v50(v122, 1, 1, v30);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v62, v20, &v133, v63, v112);
  v64 = AGGraphGetValue();
  v65 = *v64;
  if (*v64 != 1)
  {
    if (v65)
    {
      outlined copy of WidgetAuxiliaryTextImagePreference?(*v64);

      outlined consume of WidgetAuxiliaryTextImagePreference?(v67);
      PlatformItemList.mergedContentItem.getter(v65, v107);

      v66 = 0;
      goto LABEL_21;
    }

    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
  }

  outlined consume of WidgetAuxiliaryTextImagePreference?(v65);
  v66 = 1;
LABEL_21:
  v68 = v107;
  v55(v107, v66, 1, v54);
  v121(v20, 1, 1, v118);
  v133 = v119;
  v134 = 0u;
  memset(v135, 0, sizeof(v135));
  v69 = v122;
  v50(v122, 1, 1, v30);
  v70 = v102[0];
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v68, v20, &v133, v69, v102[0]);
  v71 = *AGGraphGetValue();
  v72 = v110;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v110, v69);
  v50(v69, 0, 1, v30);
  v73 = v111;
  v74 = v115;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v111, v115);
  v50(v74, 0, 1, v30);
  v75 = v112;
  v76 = v114;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v112, v114);
  v50(v76, 0, 1, v30);
  v77 = v116;
  outlined init with copy of WidgetAuxiliaryViewMetadata(v70, v116);
  v50(v77, 0, 1, v30);
  v78 = AGGraphGetValue();
  v79 = *v78;
  v80 = v78[1];

  *&v133 = v79;
  *(&v133 + 1) = v80;
  static WidgetAuxiliaryViewMetadata.tint(from:)(&v133, v123);

  outlined destroy of WidgetAuxiliaryViewMetadata(v70);
  outlined destroy of WidgetAuxiliaryViewMetadata(v75);
  outlined destroy of WidgetAuxiliaryViewMetadata(v73);
  outlined destroy of WidgetAuxiliaryViewMetadata(v72);
  v112 = v123[1];
  v113 = v123[0];
  LODWORD(v111) = v124;
  v81 = v103;
  v50(v103, 1, 1, v30);
  _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E697DAC0]);
  v82 = swift_allocObject();
  v83 = MEMORY[0x1E697DAC8];
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v82 + *(*v82 + *MEMORY[0x1E697DAC8] + 8));
  v50(v81, 1, 1, v30);
  v84 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v84 + *(*v84 + *v83 + 8));
  v50(v81, 1, 1, v30);
  v85 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v85 + *(*v85 + *v83 + 8));
  v50(v81, 1, 1, v30);
  v86 = swift_allocObject();
  outlined init with take of WidgetAuxiliaryViewMetadata?(v81, v86 + *(*v86 + *v83 + 8));
  v125[0] = v71;
  v125[1] = v82;
  v125[2] = v84;
  v125[3] = v85;
  v125[4] = v86;
  v125[5] = 0;
  v125[6] = 0;
  v126 = 0;
  v87 = v83;
  v88 = *(*v82 + *v83 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v125, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v122, v82 + v88);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v125);
  v127[0] = v71;
  v127[1] = v82;
  v127[2] = v84;
  v127[3] = v85;
  v127[4] = v86;
  v127[5] = 0;
  v127[6] = 0;
  v128 = 0;
  v89 = *(*v84 + *v87 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v127, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v115, v84 + v89);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v127);
  v129[0] = v71;
  v129[1] = v82;
  v129[2] = v84;
  v129[3] = v85;
  v129[4] = v86;
  v129[5] = 0;
  v129[6] = 0;
  v130 = 0;
  v90 = *(*v85 + *v87 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v129, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v114, v85 + v90);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v129);
  v131[0] = v71;
  v131[1] = v82;
  v131[2] = v84;
  v131[3] = v85;
  v131[4] = v86;
  v131[5] = 0;
  v131[6] = 0;
  v132 = 0;
  v91 = *(*v86 + *v87 + 8);
  swift_beginAccess();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Gauge(v131, &v133);
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v116, v86 + v91);
  swift_endAccess();
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge(v131);

  v92 = v104;
  *v104 = 0;
  *(v92 + 1) = 0;
  v93 = v30[6];
  v94 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v94 - 8) + 56))(&v92[v93], 1, 1, v94);
  *&v92[v30[7]] = 0;
  v95 = v30[8];
  v96 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v96 - 8) + 56))(&v92[v95], 1, 1, v96);
  v97 = &v92[v30[9]];
  *(v97 + 41) = 0u;
  *(v97 + 1) = 0u;
  *(v97 + 2) = 0u;
  *v97 = 0u;
  v121(&v92[v30[10]], 1, 1, v118);
  v98 = &v92[v30[11]];
  *v98 = v119;
  v98[1] = 0u;
  v98[2] = 0u;
  v98[3] = 0u;
  v99 = *(v97 + 1);
  v133 = *v97;
  v134 = v99;
  v135[0] = *(v97 + 2);
  *(v135 + 9) = *(v97 + 41);
  outlined destroy of WidgetAuxiliaryViewMetadata.Gauge?(&v133);
  *v97 = v71;
  *(v97 + 1) = v82;
  *(v97 + 2) = v84;
  *(v97 + 3) = v85;
  *(v97 + 4) = v86;
  v100 = v112;
  *(v97 + 5) = v113;
  *(v97 + 6) = v100;
  v97[56] = v111;
  return (v50)(v92, 0, 1, v30);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BaseGauge<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for BaseGauge<A, B, C>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t ResolvedGauge.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = (result & 1) == 0;
  *(a2 + 9) = (result & 0x100) == 0;
  *(a2 + 10) = (result & 0x10000) == 0;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ResolvedGauge@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return ResolvedGauge.body.getter(v3 | v4, a1, *v1);
}

unint64_t lazy protocol witness table accessor for type ResolvedGauge and conformance ResolvedGauge()
{
  result = lazy protocol witness table cache variable for type ResolvedGauge and conformance ResolvedGauge;
  if (!lazy protocol witness table cache variable for type ResolvedGauge and conformance ResolvedGauge)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedGauge, &unk_1F0000060, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGauge and conformance ResolvedGauge);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in static BaseGauge._makeView(view:inputs:)()
{
  *&v2[16] = *(v0 + 48);
  *v2 = *(v0 + 32);
  return implicit closure #1 in static BaseGauge._makeView(view:inputs:)(*(v0 + 64), *(v0 + 68), *(v0 + 72), *(v0 + 80), *(v0 + 84), *(v0 + 88), *(v0 + 16), *(v0 + 24), *(v0 + 32), *&v2[8], *(v0 + 56));
}

uint64_t getEnumTagSinglePayload for ResolvedGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for ResolvedGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t partial apply for closure #2 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t partial apply for closure #3 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t partial apply for closure #4 in BaseGauge.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

void _s7SwiftUI10MutableBoxCyAA27WidgetAuxiliaryViewMetadataVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata(uint64_t a1)
{
  v2 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata.Gauge?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Gauge?, &type metadata for WidgetAuxiliaryViewMetadata.Gauge);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedGaugeStyle, &type metadata for ResolvedGaugeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedGaugeStyle, &type metadata for ResolvedGaugeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle);
  }

  return result;
}

uint64_t assignWithCopy for NavigationLinkDisabledModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 33);
  v11 = *(a2 + 32);
  outlined copy of Environment<Binding<EditMode>?>.Content(v8, v9, v11, v10);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 33);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v15 = *(a1 + 32);
  *(a1 + 32) = v11;
  *(a1 + 33) = v10;
  v16.n128_f64[0] = outlined consume of Environment<Binding<Visibility>?>.Content(v12, v13, v15, v14);
  v17 = *(a1 + 64);
  v18 = *(a2 + 64);
  if (v17 == 1)
  {
    if (v18 <= 1)
    {
LABEL_3:
      v19 = *(a2 + 40);
      v20 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v20;
      *(a1 + 40) = v19;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v18 == 1)
  {
    outlined destroy of NavigationLinkPresentedValue(a1 + 40);
    goto LABEL_6;
  }

  if (v17)
  {
    v23 = (a1 + 40);
    if (v18)
    {
      __swift_assign_boxed_opaque_existential_1(v23, (a2 + 40));
      goto LABEL_12;
    }

    outlined destroy of AnyNavigationLinkPresentedValue(v23);
LABEL_6:
    v21 = *(a2 + 72);
    v22 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v22;
    *(a1 + 72) = v21;
    goto LABEL_12;
  }

  if (!v18)
  {
    goto LABEL_3;
  }

LABEL_11:
  *(a1 + 64) = v18;
  *(a1 + 72) = *(a2 + 72);
  (**(v18 - 8))(a1 + 40, a2 + 40, v16);
LABEL_12:
  v24 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v24;
  v25 = *(a2 + 104);
  v26 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v26;
  *(a1 + 104) = v25;
  v27 = *(a2 + 160);
  if (*(a1 + 160) == 1)
  {
    if (v27 == 1)
    {
      v28 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v28;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v27 == 1)
  {
    outlined destroy of NavigationAuthority(a1 + 152);
    v29 = *(a2 + 168);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = v29;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 160) = *(a2 + 160);

    *(a1 + 168) = *(a2 + 168);
  }

  return a1;
}

uint64_t assignWithTake for NavigationLinkDisabledModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 33);
  *(a1 + 16) = *(a2 + 1);
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  *(a1 + 33) = v9;
  outlined consume of Environment<Binding<Visibility>?>.Content(v10, v11, v13, v12);
  v14 = *(a1 + 64);
  if (v14 != 1)
  {
    v15 = a2[8];
    if (v15 == 1)
    {
      outlined destroy of NavigationLinkPresentedValue(a1 + 40);
    }

    else if (v14)
    {
      v16 = (a1 + 40);
      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        outlined destroy of AnyNavigationLinkPresentedValue(v16);
      }
    }
  }

  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  v17 = a2[20];
  v18 = *(a1 + 160);
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  v19 = (a1 + 152);
  v20 = a2 + 19;
  *(a1 + 136) = *(a2 + 17);
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      *v19 = *v20;
      *(a1 + 168) = a2[21];
    }

    else
    {
      swift_weakTakeInit();
      *(a1 + 160) = *(a2 + 10);
    }
  }

  else if (v17 == 1)
  {
    outlined destroy of NavigationAuthority(v19);
    *(a1 + 152) = *v20;
    *(a1 + 168) = a2[21];
  }

  else
  {
    swift_weakTakeAssign();
    *(a1 + 160) = a2[20];

    *(a1 + 168) = a2[21];
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationLinkDisabledModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 176))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationLinkDisabledModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0;
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t static SystemTabViewStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v8 = a2[1];
  v20 = *a2;
  v21 = v8;
  v9 = type metadata accessor for SystemTabView(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v10);
  v11 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255);
  v12 = type metadata accessor for ModifiedContent();
  v19 = v6;
  v18[0] = &type metadata for SystemTabViewStyle;
  v18[1] = a3;
  v18[2] = &protocol witness table for SystemTabViewStyle;
  v18[3] = a4;
  type metadata accessor for _TabViewValue(255, v18);
  type metadata accessor for _GraphValue();
  LODWORD(v18[0]) = _GraphValue.value.getter();
  v14 = type metadata accessor for SystemTabViewStyle.Body(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for SystemTabViewStyle.Body<A>, v14);
  _GraphValue.init<A>(_:)();
  v17[0] = swift_getWitnessTable("}N\tbpP\b", v9);
  v17[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v11, v17);
  v16[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v16);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static SystemTabViewStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for SystemTabView(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v8);
  v9 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255);
  v10 = type metadata accessor for ModifiedContent();
  v17 = v6;
  v16[0] = &type metadata for SystemTabViewStyle;
  v16[1] = a3;
  v16[2] = &protocol witness table for SystemTabViewStyle;
  v16[3] = a4;
  type metadata accessor for _TabViewValue(255, v16);
  type metadata accessor for _GraphValue();
  LODWORD(v16[0]) = _GraphValue.value.getter();
  v12 = type metadata accessor for SystemTabViewStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for SystemTabViewStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  v15[0] = swift_getWitnessTable("}N\tbpP\b", v7);
  v15[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v9, v15);
  v14[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v14);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t SystemTabViewStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for SystemTabViewStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for SystemTabViewStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t SystemTabViewStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v25 = a4;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v30[0] = &type metadata for SystemTabViewStyle;
  v30[1] = a2;
  v30[2] = &protocol witness table for SystemTabViewStyle;
  v30[3] = a3;
  v10 = type metadata accessor for _TabViewValue(0, v30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v14 = type metadata accessor for SystemTabView(0, a2, a3, v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  type metadata accessor for TabViewStyleConfiguration.Content(255, a2, a3, v17);
  v18 = type metadata accessor for _VariadicView.Tree();
  v22 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v22 - v19;
  SystemTabViewStyle.Body.base.getter(a2, a3, v12);
  (*(v23 + 32))(v9, v12, v24);
  UniversalList.init(selection:)(v9, v16);
  v26 = a2;
  v27 = a3;
  v28 = v6;
  _VariadicView.Tree.init(_:content:)();
  v29[0] = swift_getWitnessTable("}N\tbpP\b", v14);
  v29[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable(MEMORY[0x1E697E308], v18, v29);
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  View.input<A>(_:)();
  return (*(v22 + 8))(v20, v18);
}

uint64_t closure #1 in SystemTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = &type metadata for SystemTabViewStyle;
  v11[1] = a2;
  v11[2] = &protocol witness table for SystemTabViewStyle;
  v11[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v11);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  SystemTabViewStyle.Body.base.getter(a2, a3, v11 - v7);
  (*(v6 + 8))(v8, v5);
  type metadata accessor for TabViewStyleConfiguration.Content(0, a2, a3, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SystemTabViewStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for SystemTabView(255, v4, v5, a3);
  type metadata accessor for TabViewStyleConfiguration.Content(255, v4, v5, v6);
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

void type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>)
  {
    lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for SystemTabView<A>(uint64_t a1)
{
  result = swift_getWitnessTable("}N\tbpP\b");
  *(a1 + 8) = result;
  return result;
}

uint64_t SystemTabView.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  outlined init with copy of _VariadicView_Children(a1, v19);
  (*(v10 + 16))(v12, v4, v9);
  v13 = *(a2 + 24);
  v14 = default argument 0 of SystemTabView.BodyContent.init(clientSidebarVisibility:children:selection:)();
  return SystemTabView.BodyContent.init(clientSidebarVisibility:children:selection:)(v14, v16, v15 & 0x1FF, v19, v12, v8, v13, a3);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance SystemTabView<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SystemTabView<A>, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for BadgeViewStyleConfiguration.Content;
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<BadgeTraitKey>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _TraitWritingModifier<BadgeTraitKey>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<BadgeTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<BadgeTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<BadgeTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<BadgeTraitKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<BadgeTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

SwiftUI::UnifiedWindowToolbarStyle __swiftcall UnifiedWindowToolbarStyle.init()()
{
  result.showsTitle = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::UnifiedWindowToolbarStyle __swiftcall UnifiedWindowToolbarStyle.init(showsTitle:)(Swift::Bool showsTitle)
{
  result.showsTitle = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

void SnapshotResponse.init(restoredDefaultState:estimatedSnapshotExpiration:identifier:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason()
{
  result = lazy protocol witness table cache variable for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason;
  if (!lazy protocol witness table cache variable for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnapshotData.SnapshotReason, &type metadata for SnapshotData.SnapshotReason, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SnapshotData.SnapshotReason and conformance SnapshotData.SnapshotReason);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SnapshotResponse(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      type metadata accessor for Date?(0);
      memcpy(&v4[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = *(a3 + 24);
    v13 = &v4[v12];
    v14 = &a2[v12];
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  return v4;
}

uint64_t destroy for SnapshotResponse(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v3, 1, v4))
  {
    (*(v5 + 8))(a1 + v3, v4);
  }
}

_BYTE *initializeWithCopy for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

_BYTE *assignWithCopy for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v14[1] = v15[1];

  return a1;
}

_BYTE *initializeWithTake for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

_BYTE *assignWithTake for SnapshotResponse(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for Date?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = &a2[v13];
  v17 = *v15;
  v16 = v15[1];
  *v14 = v17;
  v14[1] = v16;

  return a1;
}

uint64_t type metadata accessor for SnapshotResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for SnapshotResponse;
  if (!type metadata singleton initialization cache for SnapshotResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SnapshotResponse(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SnapshotData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for SnapshotData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SnapshotData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t ListRowSeparatorVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2)
{
  if (*(v2 + 96))
  {
    if (*(v2 + 96) == 1)
    {
      v3 = *(v2 + 104);
      if (v3)
      {
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined consume of ListRowSeparatorVisitor.Neighbor?(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
        *v2 = v5;
        *(v2 + 8) = v6;
        *(v2 + 16) = v7;
        *(v2 + 24) = v8;
      }

      ViewTraitCollection.value<A>(for:defaultValue:)();

      *(v2 + 32) = v5;
      *(v2 + 40) = v6;
      *(v2 + 48) = v7;
      *(v2 + 56) = v8;
      *(v2 + 96) = 2;
      if ((v3 & 2) != 0)
      {
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined consume of ListRowSeparatorVisitor.Neighbor?(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
        result = 0;
        *(v2 + 64) = v5;
        *(v2 + 72) = v6;
        *(v2 + 80) = v7;
        *(v2 + 88) = v8;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined consume of ListRowSeparatorVisitor.Neighbor?(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
      result = 0;
      *(v2 + 64) = v5;
      *(v2 + 72) = v6;
      *(v2 + 80) = v7 | 0x8000000000000000;
      *(v2 + 88) = v8;
    }
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of ListRowSeparatorVisitor.Neighbor?(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    *v2 = v5;
    *(v2 + 8) = v6;
    *(v2 + 16) = v7 | 0x8000000000000000;
    *(v2 + 24) = v8;
    result = 1;
    *(v2 + 96) = 1;
  }

  return result;
}

double outlined copy of ListRowSeparatorVisitor.Neighbor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

uint64_t initializeWithCopy for ListRowSeparatorVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*a2 >> 2 != 0xFFFFFFFFLL || v5 >= 4)
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    outlined copy of ListRowSeparatorVisitor.Neighbor(*a2, v7, v5, v8);
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    *(a1 + 24) = v8;
  }

  else
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
  }

  v10 = *(a2 + 64);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 80);

  if (v10 >> 2 == 0xFFFFFFFF && v11 < 4)
  {
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
  }

  else
  {
    v13 = *(a2 + 72);
    v14 = *(a2 + 88);
    outlined copy of ListRowSeparatorVisitor.Neighbor(v10, v13, v11, v14);
    *(a1 + 64) = v10;
    *(a1 + 72) = v13;
    *(a1 + 80) = v11;
    *(a1 + 88) = v14;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithCopy for ListRowSeparatorVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v7 = *a2 >> 2 == 0xFFFFFFFFLL && v5 < 4;
  if (*a1 >> 2 != 0xFFFFFFFFLL || *(a1 + 16) >= 4uLL)
  {
    if (v7)
    {
      outlined destroy of ListRowSeparatorVisitor.Neighbor(a1);
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
    }

    else
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 24);
      outlined copy of ListRowSeparatorVisitor.Neighbor(*a2, v11, v5, v12);
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 24);
      *a1 = v4;
      *(a1 + 8) = v11;
      *(a1 + 16) = v5;
      *(a1 + 24) = v12;
      outlined consume of ListRowSeparatorVisitor.Neighbor(v13, v14, v15, v16);
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a2 + 24);
    outlined copy of ListRowSeparatorVisitor.Neighbor(*a2, v17, v5, v18);
    *a1 = v4;
    *(a1 + 8) = v17;
    *(a1 + 16) = v5;
    *(a1 + 24) = v18;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v19 = (a1 + 64);
  v21 = (a2 + 64);
  v20 = *(a2 + 64);
  v22 = *(a2 + 80);
  v24 = v20 >> 2 == 0xFFFFFFFF && v22 < 4;
  if (*(a1 + 64) >> 2 == 0xFFFFFFFFLL && *(a1 + 80) < 4uLL)
  {
    if (v24)
    {
      v25 = *(a2 + 80);
      *v19 = *v21;
      *(a1 + 80) = v25;
    }

    else
    {
      v33 = *(a2 + 72);
      v34 = *(a2 + 88);
      outlined copy of ListRowSeparatorVisitor.Neighbor(*(a2 + 64), v33, *(a2 + 80), v34);
      *(a1 + 64) = v20;
      *(a1 + 72) = v33;
      *(a1 + 80) = v22;
      *(a1 + 88) = v34;
    }
  }

  else if (v24)
  {
    outlined destroy of ListRowSeparatorVisitor.Neighbor((a1 + 64));
    v26 = *(a2 + 80);
    *v19 = *v21;
    *(a1 + 80) = v26;
  }

  else
  {
    v27 = *(a2 + 72);
    v28 = *(a2 + 88);
    outlined copy of ListRowSeparatorVisitor.Neighbor(*(a2 + 64), v27, *(a2 + 80), v28);
    v29 = *(a1 + 64);
    v30 = *(a1 + 72);
    v31 = *(a1 + 80);
    v32 = *(a1 + 88);
    *(a1 + 64) = v20;
    *(a1 + 72) = v27;
    *(a1 + 80) = v22;
    *(a1 + 88) = v28;
    outlined consume of ListRowSeparatorVisitor.Neighbor(v29, v30, v31, v32);
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for ListRowSeparatorVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v4 >> 2 == 0xFFFFFFFF && v5 < 4)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 16);
  if (*a2 >> 2 == 0xFFFFFFFFLL && v7 < 4)
  {
    outlined destroy of ListRowSeparatorVisitor.Neighbor(a1);
LABEL_12:
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    goto LABEL_13;
  }

  v9 = *(a2 + 8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 8) = v9;
  *(a1 + 16) = v7;
  *(a1 + 24) = v10;
  outlined consume of ListRowSeparatorVisitor.Neighbor(v4, v11, v5, v12);
LABEL_13:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  v16 = *(a1 + 80);
  v17 = *(a2 + 80);
  if (v14 >> 2 != 0xFFFFFFFF || v16 >= 4)
  {
    if (v15 >> 2 != 0xFFFFFFFF || v17 >= 4)
    {
      v19 = *(a2 + 72);
      v20 = *(a2 + 88);
      v21 = *(a1 + 72);
      v22 = *(a1 + 88);
      *(a1 + 64) = v15;
      *(a1 + 72) = v19;
      *(a1 + 80) = v17;
      *(a1 + 88) = v20;
      outlined consume of ListRowSeparatorVisitor.Neighbor(v14, v21, v16, v22);
      goto LABEL_20;
    }

    outlined destroy of ListRowSeparatorVisitor.Neighbor((a1 + 64));
  }

  v18 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v18;
LABEL_20:
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowSeparatorVisitor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1 >> 2;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ListRowSeparatorVisitor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = 4 * ~a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for ListRowSeparatorVisitor.Neighbor(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of ListRowSeparatorVisitor.Neighbor(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for ListRowSeparatorVisitor.Neighbor(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of ListRowSeparatorVisitor.Neighbor(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of ListRowSeparatorVisitor.Neighbor(v7, v8, v9, v10);
  return a1;
}

uint64_t *assignWithTake for ListRowSeparatorVisitor.Neighbor(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v7;
  outlined consume of ListRowSeparatorVisitor.Neighbor(v3, v5, v4, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowSeparatorVisitor.Neighbor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ListRowSeparatorVisitor.Neighbor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ListRowSeparatorVisitor.Neighbor(void *result, uint64_t a2)
{
  v2 = result[2] & 3 | (a2 << 63);
  *result &= 3uLL;
  result[2] = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps()
{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowSeparatorVisitor.Steps, &unk_1F0000520, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Steps and conformance ListRowSeparatorVisitor.Steps);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options()
{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowSeparatorVisitor.Options, &type metadata for ListRowSeparatorVisitor.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowSeparatorVisitor.Options, &type metadata for ListRowSeparatorVisitor.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowSeparatorVisitor.Options, &type metadata for ListRowSeparatorVisitor.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options;
  if (!lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowSeparatorVisitor.Options, &type metadata for ListRowSeparatorVisitor.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowSeparatorVisitor.Options and conformance ListRowSeparatorVisitor.Options);
  }

  return result;
}

uint64_t static Animation.timingCurve(_:duration:)(double *a1, double a2)
{
  UnitCurve.CubicSolver.init(startControlPoint:endControlPoint:)();
  lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation();
  return Animation.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation()
{
  result = lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation;
  if (!lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E618], MEMORY[0x1E697E620], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BezierAnimation and conformance BezierAnimation);
  }

  return result;
}

void BezierTimingCurve.init(startControlPoint:endControlPoint:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

int8x16_t BezierTimingCurve.inverse.getter@<Q0>(int8x16_t *a1@<X8>)
{
  result = vextq_s8(*v1, *v1, 8uLL);
  v3 = vextq_s8(v1[1], v1[1], 8uLL);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static BezierTimingCurve.== infix(_:_:)(double *a1, double *a2)
{
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UnitPoint.== infix(_:_:)();
}

uint64_t BezierTimingCurve.hash(into:)(uint64_t a1)
{
  UnitPoint.hash(into:)();

  return UnitPoint.hash(into:)();
}

Swift::Int BezierTimingCurve.hashValue.getter()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BezierTimingCurve()
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance BezierTimingCurve(uint64_t a1)
{
  UnitPoint.hash(into:)();

  UnitPoint.hash(into:)();
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezierTimingCurve(uint64_t a1)
{
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  UnitPoint.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BezierTimingCurve(double *a1, double *a2)
{
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UnitPoint.== infix(_:_:)();
}

double one-time initialization function for easeInEaseOut()
{
  result = 0.42;
  static BezierTimingCurve.easeInEaseOut = xmmword_18CDE8D50;
  unk_1EAA37600 = xmmword_18CDE8D60;
  return result;
}

double one-time initialization function for easeIn()
{
  result = 0.42;
  __asm { FMOV            V1.2D, #1.0 }

  static BezierTimingCurve.easeIn = xmmword_18CDE8D50;
  unk_1EAA37620 = _Q1;
  return result;
}

double one-time initialization function for easeOut()
{
  static BezierTimingCurve.easeOut = 0;
  *algn_1EAA37638 = 0;
  result = 0.58;
  xmmword_1EAA37640 = xmmword_18CDE8D60;
  return result;
}

__n128 one-time initialization function for linear()
{
  static BezierTimingCurve.linear = 0;
  *algn_1EAA37658 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EAA37660 = result;
  return result;
}

__n128 static BezierTimingCurve.easeInEaseOut.getter@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a5@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a5;
    swift_once();
    a2 = v7;
    a5 = v9;
    a3 = v8;
  }

  result = *a2;
  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type BezierTimingCurve and conformance BezierTimingCurve()
{
  result = lazy protocol witness table cache variable for type BezierTimingCurve and conformance BezierTimingCurve;
  if (!lazy protocol witness table cache variable for type BezierTimingCurve and conformance BezierTimingCurve)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BezierTimingCurve, &type metadata for BezierTimingCurve, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BezierTimingCurve and conformance BezierTimingCurve);
  }

  return result;
}

void EnvironmentValues.textInputValidation.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance TextInputValidationKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of TextInputValidation?(&static TextInputValidationKey.defaultValue, v2);
}

uint64_t EnvironmentValues.textInputValidation.setter(uint64_t a1)
{
  outlined init with copy of TextInputValidation?(a1, v5);
  outlined init with copy of TextInputValidation?(v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of TextInputValidation?(a1);
  return outlined destroy of TextInputValidation?(v5);
}

uint64_t View.textInputValidation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  if (a1)
  {
    v6 = &protocol witness table for CustomTextInputValidation;
    v7 = a1;
    v8 = a2;
    v9 = &unk_1F0000618;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v11[2] = 0;
  }

  v11[0] = v7;
  v11[1] = v8;
  v11[3] = v9;
  v11[4] = v6;
  outlined copy of AppIntentExecutor?(a1, a2);
  View.environment<A>(_:_:)();

  return outlined destroy of TextInputValidation?(v11);
}

void key path getter for EnvironmentValues.textInputValidation : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

uint64_t outlined destroy of TextInputValidation?(uint64_t a1)
{
  type metadata accessor for TextInputValidation?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for TextInputValidation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of TextInputValidation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextInputValidation?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<TextInputValidationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t View.hidden(_:allowingDisplayList:)(char a1, char a2, uint64_t a3)
{
  v3 = 16;
  if ((a2 & 1) == 0)
  {
    v3 = 0;
  }

  v5[0] = a1;
  v6 = v3;
  return MEMORY[0x18D00A570](v5, a3, &type metadata for DynamicHiddenModifier);
}

uint64_t _ViewInputs.requestedDynamicHiddenRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();

  PropertyList.subscript.getter();

  return v1;
}

uint64_t (*DynamicHiddenModifier.DynamicTransform.value.getter(int a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  return partial apply for closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter;
}

uint64_t closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = DynamicHiddenModifier.DynamicTransform.includeKey.getter(a2, a3);
    if ((result & 1) == 0)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
      return (*(a4 + 16))(a3, a4);
    }
  }

  return result;
}

uint64_t DynamicHiddenModifier.DynamicTransform.includeKey.getter(uint64_t a1, ValueMetadata *a2)
{
  v3 = *(AGGraphGetValue() + 8);
  v4 = (v3 >> 3) & 1;
  if (a2 != MEMORY[0x1E697F3E8])
  {
    LODWORD(v4) = 0;
  }

  if (a2 == &type metadata for AccessibilityNodesKey)
  {
    v5 = v3 & 1;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == MEMORY[0x1E697F318])
  {
    v6 = (v3 >> 2) & 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = (v3 >> 4) & 1;
  if (a2 == MEMORY[0x1E697DC60])
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t (*protocol witness for Rule.value.getter in conformance DynamicHiddenModifier.DynamicTransform<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  DynamicHiddenModifier.DynamicTransform.value.getter(v4, v5, v6);
  v8 = v7;
  result = swift_allocObject();
  *(result + 2) = v5;
  *(result + 3) = v6;
  *(result + 4) = partial apply for closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter;
  *(result + 5) = v8;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout A.PreferenceKey.Value) -> ();
  a2[1] = result;
  return result;
}

uint64_t View.hiddenAllowingHostPreferences(_:allowingDisplayList:)(char a1, char a2, uint64_t a3)
{
  v3 = 8;
  if (a2)
  {
    v3 = 24;
  }

  v5[0] = a1;
  v6 = v3;
  return MEMORY[0x18D00A570](v5, a3, &type metadata for DynamicHiddenModifier);
}

uint64_t _GraphInputs.requestedDynamicHiddenRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t (*_ViewInputs.requestedDynamicHiddenRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _ViewInputs.requestedDynamicHiddenRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedDynamicHiddenRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _GraphInputs.requestedDynamicHiddenRepresentation.modify;
}

void _ViewInputs.requestedDynamicHiddenRepresentation.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  PropertyList.subscript.setter();

  free(v1);
}

unint64_t type metadata accessor for PlatformDynamicHiddenRepresentable.Type()
{
  result = lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable.Type;
  if (!lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable.Type)
  {
    type metadata accessor for PlatformDynamicHiddenRepresentable();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable.Type);
  }

  return result;
}

unint64_t type metadata accessor for PlatformDynamicHiddenRepresentable()
{
  result = lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable;
  if (!lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDynamicHiddenRepresentable);
  }

  return result;
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA013_SymbolEffectD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD581D0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014_SymbolEffectsD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD581B0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA021_SymbolEffectsRemovedD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD58190);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_FlipForRTLEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD58170);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized ViewModifier.bodyError()()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD58150);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD58120);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0x646F4D6B7361545FLL, 0xED00007265696669);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA30_LayoutDirectionBehaviorEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD58100);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA012_HoverRegionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD580E0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA17_ProjectionEffectV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD580C0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA012_LayoutScaleD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD580A0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA023_ReclaimForEachElementscD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD58070);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA033_AccessibilityIgnoresInvertColorscD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD00000000000002DLL, 0x800000018CD58040);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014_GridCellRangeD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD58020);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA013_GridCellSizeD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD58000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA011_GridAnchorD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000013, 0x800000018CD57FE0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA014_GridAlignmentD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD57FC0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA016_GridUnsizedAxesD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD57FA0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI12ViewModifierPAAE9bodyErrors5NeverOyFAA07_HiddenD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0x4D6E65646469485FLL, 0xEF7265696669646FLL);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for PlatformDynamicHiddenRepresentable.Type?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *(a5 + 104) = a2;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4 & 1;
  *(a5 + 128) = a6;
  outlined init with copy of _VariadicView_Children(a1, v10);
  Sections.init(from:useFooters:)(v10, a2 != 0, a5);
  return outlined destroy of _VariadicView_Children(a1);
}

uint64_t TableViewListDataSource.sectionIDs.getter()
{
  v1 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
  }

  else
  {
  }

  return v1;
}

Swift::Bool __swiftcall TableViewListDataSource.hasHeader(forSectionAt:)(Swift::Int forSectionAt)
{
  if (*(v1 + 72) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
    goto LABEL_5;
  }

  if (forSectionAt < 0)
  {
    __break(1u);
    return forSectionAt;
  }

  v3 = v2 + 16 * forSectionAt;
  if ((*(v3 + 40) & 1) == 0)
  {
    LOBYTE(forSectionAt) = *(v3 + 41);
  }

  else
  {
LABEL_5:
    LOBYTE(forSectionAt) = 0;
  }

  return forSectionAt;
}

uint64_t TableViewListDataSource.spacing(forSectionAt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 88);
  if (*(v4 + 16) && (v5 = result, result = MEMORY[0x18D00F6C0](*(v4 + 40), result), v6 = -1 << *(v4 + 32), v7 = result & ~v6, ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = v9 == v5;
      v11 = v9 != v5;
      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        goto LABEL_9;
      }
    }

    v12 = 1;
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v11 = 1;
  }

LABEL_9:
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 9) = v11;
  return result;
}

void *TableViewListDataSource.configureHeader(_:transaction:forSectionAt:)(void *result, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3[8] + 16) > a3)
  {
    v6 = result;
    v7 = v3[16];
    v8 = v3[13];
    TableViewListDataSource.sectionIDs.getter();

    v12 = v6;
    v13 = a2;
    v14 = v7;
    v15 = v8;
    v16 = 1;
    v17 = a3 == 0;
    outlined init with copy of _VariadicView_Children(v3, v11);
    v10[0] = v11[0];
    v10[1] = v11[1];
    v10[2] = v11[2];
    v10[3] = v11[3];
    v9 = v6;
    outlined copy of Transaction?(a2);
    lazy protocol witness table accessor for type HeaderFooterVisitor and conformance HeaderFooterVisitor();
    _ViewList_Backing.visitViews<A>(applying:from:)();
    outlined destroy of _ViewList_Backing(v10);

    return outlined consume of ListItemTint?(v13);
  }

  __break(1u);
  return result;
}

uint64_t TableViewListDataSource.configureFooter(_:transaction:forSectionAt:)(void *a1, uint64_t a2, Swift::Int a3)
{
  v7 = *(v3 + 128);
  v8 = *(v3 + 104);
  v13 = a1;
  v14 = a2;
  v15 = v7;
  v16 = v8;
  v17 = 0;
  outlined init with copy of _VariadicView_Children(v3, v12);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  v9 = a1;
  outlined copy of Transaction?(a2);
  Sections.footerOffset(forSectionAt:)(a3);
  lazy protocol witness table accessor for type HeaderFooterVisitor and conformance HeaderFooterVisitor();
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v11);

  return outlined consume of ListItemTint?(v14);
}

double TableViewListDataSource.rowIDs(forSectionAt:)@<D0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  Sections.rowIDs(forSectionAt:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t TableViewListDataSource.configureCell(_:transaction:context:)(char *a1, unint64_t a2, Swift::Int *a3)
{
  v4 = v3;
  outlined init with copy of _ViewList_View((a3 + 2), v60);
  v7 = v61;
  v8 = v62;
  v9 = v63;
  v10 = *(v63 + 16);
  swift_bridgeObjectRetain_n();
  if (v10)
  {
    v10 = *(v9 + 32);
    v11 = *(v9 + 52);

    if (v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {

    v12 = v8;
  }

  v35 = v7;
  v57[0] = v7;
  v57[1] = v12;
  v58 = v10;
  v59 = 1;
  *&v45[0] = a3[14];
  *&v54 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v13 = TableViewListDataSource.separatorConfiguration(forRowAt:)(*a3, a3[1]);
  v36 = v14;
  v16 = v15;
  v38 = v17;
  v40 = a3[14];
  ViewTraitCollection.listRowInsets.getter();
  v39[0] = a3[14];
  *&v45[0] = 1;
  BYTE8(v45[0]) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(1);
  v18 = *(v4 + 120);
  if (v18)
  {
    [a1 swiftui_defaultRowHeight];
    v20 = v19;
  }

  else
  {
    v20 = *(v4 + 112);
  }

  outlined init with copy of AccessibilityScrollableContext(v57, v52);
  v45[0] = v54;
  v45[1] = v55;
  v46[0] = v56[0];
  *(v46 + 9) = *(v56 + 9);
  v47 = v42;
  v48 = v42;
  v49 = v43;
  v50 = v20;
  v51 = v18;
  v52[9] = swift_getKeyPath();
  v53 = 0;
  v21 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_disclosureIndent];
  *v21 = v42;
  v21[8] = 0;
  v22 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_separatorConfiguration];
  v23 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_separatorConfiguration];
  v24 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_separatorConfiguration + 8];
  *v22 = v13;
  *(v22 + 1) = v36;
  *(v22 + 2) = v16;
  *(v22 + 3) = v38;

  outlined consume of ListSeparatorConfiguration?(v23, v24);
  v42 = a3[14];
  LOBYTE(v39[0]) = 2;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  LODWORD(v23) = v40;
  v25 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_cellConfiguration];
  swift_beginAccess();
  v26 = *(type metadata accessor for CellConfiguration(0) + 28);
  v27 = v25[v26];
  v25[v26] = v40;
  specialized CellConfiguration.updateValues<A>(pre:post:)(v27, v23);
  swift_endAccess();
  v28 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
  if (v28)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0);
    lazy protocol witness table accessor for type _ViewList_ID_Views and conformance _ViewList_ID_Views(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v29 = v28;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v30 = &a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_viewListID];
  *v30 = v35 | (v8 << 32);
  *(v30 + 1) = v9;

  outlined init with copy of _ViewList_View(v60, &v42);
  outlined init with copy of ListTableCellModifier(v45, &v44);
  specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(&v42, a2);
  v40 = a3[14];
  LOBYTE(v39[0]) = 0;

  ViewTraitCollection.listItemBackground(kind:)(v39);

  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0d5TableE4CellC_Tt0g5(v31, a2);

  v32 = a3[14];
  v39[1] = 0;
  v39[2] = v32;
  v39[0] = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();

  outlined destroy of ModifiedContent<_ViewList_View, ListTableCellModifier>(&v42);
  outlined destroy of ListTableCellModifier(v45);
  outlined destroy of AccessibilityScrollableContext(v57);
  result = outlined destroy of _ViewList_View(v60);
  v34 = v40;
  if (v40)
  {
    result = outlined consume of TriggerSubmitAction?(v40, v41);
  }

  a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_hasItemProviderTrait] = v34 != 0;
  return result;
}

Swift::Int TableViewListDataSource.separatorConfiguration(forRowAt:)(Swift::Int a1, uint64_t a2)
{
  result = Sections.startOffset(forSectionAt:)(a1);
  if (result == a2)
  {
    v6 = 1;
  }

  else
  {
    if (__OFSUB__(a2, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v6 = 0;
  }

  result = Sections.hasFooter(at:)(a1);
  v7 = 1;
  if (result)
  {
    v7 = 2;
  }

  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v2 + 64);
  if (v10 >= *(v11 + 16))
  {
    v12 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
    goto LABEL_13;
  }

  if (v10 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = *(v11 + 16 * v10 + 32);
LABEL_13:
  v13 = v6 | 2;
  v23 = 0x3FFFFFFFCuLL;
  if (v12 != v9)
  {
    v13 = v6;
  }

  v24 = 0uLL;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = 0;
  v26[0] = 0;
  *&v26[8] = xmmword_18CD6BBA0;
  v27 = 0uLL;
  *&v26[24] = 0;
  LOBYTE(v28) = v13 & 1;
  *(&v28 + 1) = v13;
  outlined init with copy of _VariadicView_Children(v2, &v16);
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  lazy protocol witness table accessor for type ListRowSeparatorVisitor and conformance ListRowSeparatorVisitor();
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v15);
  v14 = specialized static ListRowSeparatorVisitor.effectiveConfigurationForRow(above:this:below:)(v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26[0], *&v26[8], *&v26[16], *&v26[24], v27, *(&v27 + 1));
  v20 = *&v26[16];
  v21 = v27;
  v22 = v28;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v19 = *v26;
  outlined destroy of ListRowSeparatorVisitor(&v16);
  return v14;
}

uint64_t TableViewListDataSource.firstIndexPath(viewListID:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v10 = 0;
  memset(&v9[1], 0, 32);
  *&v9[0] = *a1;
  *(&v9[0] + 1) = v5;
  outlined init with copy of _VariadicView_Children(v3, v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  lazy protocol witness table accessor for type ExplicitIDFromViewListIDVisitor and conformance ExplicitIDFromViewListIDVisitor();

  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v7);
  v8[0] = v9[0];

  Sections.firstIndexPath(of:)(v8, a2);

  return outlined destroy of ExplicitIDFromViewListIDVisitor(v9);
}

uint64_t TableViewListDataSource.firstCollectionViewIndex(of:)(unsigned int *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 1);
  outlined init with copy of _VariadicView_Children(v1, v24);
  outlined init with copy of _Benchmark(v24, &v14);
  outlined destroy of _VariadicView_Children(v24);
  v5 = *(&v15 + 1);
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  if ((*(v6 + 40))(v5, v6))
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
    *&v24[0] = __PAIR64__(v2, v3);
    *(&v24[0] + 1) = v4;

    v7 = 0;
    if (dispatch thunk of _ViewList_ID_Views.endIndex.getter())
    {
      while (1)
      {
        dispatch thunk of _ViewList_ID_Views.subscript.getter();
        v8 = v14;
        v9 = DWORD1(v14);
        if (*(*(&v14 + 1) + 16))
        {
          v10 = *(*(&v14 + 1) + 32);
          v11 = *(*(&v14 + 1) + 52);

          if (v11)
          {
            v9 = -1;
          }
        }

        else
        {

          v10 = 0;
        }

        *&v14 = __PAIR64__(v9, v8);
        *(&v14 + 1) = v10;
        v12 = MEMORY[0x18D003E10](&v14, v24);

        if (v12)
        {
          break;
        }

        result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
        if (v7 >= result)
        {
          __break(1u);
          return result;
        }

        if (++v7 == dispatch thunk of _ViewList_ID_Views.endIndex.getter())
        {
          v7 = 0;
          break;
        }
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v18 = 0;
    v23 = 1;
    v19 = v3;
    v20 = v2;
    v21 = v4;
    v22 = 0;
    outlined init with copy of _VariadicView_Children(v1, v24);
    v14 = v24[0];
    v15 = v24[1];
    v16 = v24[2];
    v17 = v24[3];
    lazy protocol witness table accessor for type ExplicitIDOffsetVisitor and conformance ExplicitIDOffsetVisitor();

    _ViewList_Backing.visitViews<A>(applying:from:)();
    outlined destroy of _ViewList_Backing(&v14);
    v7 = v22;
  }

  return v7;
}

void TableViewListDataSource.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  closure #1 in TableViewListDataSource.applyCollectionViewIDs(from:to:)(_s7SwiftUI12_ViewList_IDV9CanonicalVSbIgnl_AESbIegnl_TRTA_0, v7, v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

BOOL closure #1 in TableViewListDataSource.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = a2;
  v9 = 0;
  outlined init with copy of _VariadicView_Children(a3, v6);
  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  v5[3] = v6[3];
  lazy protocol witness table accessor for type ApplyCollectionViewIDsVisitor and conformance ApplyCollectionViewIDsVisitor();

  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(v5);
  v3 = v9;

  return (v3 & 1) == 0;
}

uint64_t TableViewListDataSource.contextForItem(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableViewListDataSource<A>, a3);
  v12 = type metadata accessor for ListContentVisitor(0, a3, WitnessTable, v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  *&v19[0] = a1;
  ListContentVisitor.init(index:)(v19, a2, a3, WitnessTable, &v18 - v13);
  outlined init with copy of _VariadicView_Children(v5, v19);
  swift_getWitnessTable(protocol conformance descriptor for ListContentVisitor<A>, v12, v19[0], v19[1], v19[2], v19[3]);
  v20 = a2;
  _ViewList_Backing.visitViews<A>(applying:from:)();
  outlined destroy of _ViewList_Backing(&v18);
  type metadata accessor for _RowVisitationContext(255, a3, WitnessTable, v15);
  v16 = type metadata accessor for Optional();
  return (*(*(v16 - 8) + 32))(a4, v14, v16);
}

uint64_t protocol witness for ListDiffable.sectionIDs.getter in conformance TableViewListDataSource<A>@<X0>(uint64_t *a1@<X8>)
{
  result = TableViewListDataSource.sectionIDs.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

double protocol witness for ListDiffable.rowIDs(forSectionAt:) in conformance TableViewListDataSource<A>@<D0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  TableViewListDataSource.rowIDs(forSectionAt:)(*a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

BOOL HeaderFooterVisitor.HeaderContent.isHeader.getter()
{
  v1 = v0[4];
  v11[4] = v0[3];
  v12[0] = v1;
  *(v12 + 9) = *(v0 + 73);
  v2 = v0[2];
  v11[2] = v0[1];
  v11[3] = v2;
  specialized Environment.wrappedValue.getter(v13);
  outlined destroy of HeaderFooterConfiguration(v13);
  if (v13[0])
  {
    return 0;
  }

  v4 = v0[4];
  v10 = v0[3];
  v11[0] = v4;
  *(v11 + 9) = *(v0 + 73);
  v5 = v0[2];
  v8 = v0[1];
  v9 = v5;
  specialized Environment.wrappedValue.getter(v6);
  outlined destroy of HeaderFooterConfiguration(v6);
  return v7 != 0;
}

double HeaderFooterVisitor.HeaderContent.legacyInsets.getter(uint64_t a1)
{
  v2 = OptionalEdgeInsets.top.getter();
  if (v3)
  {
    v4 = *(v1 + 112);
  }

  else
  {
    v4 = *&v2;
  }

  OptionalEdgeInsets.leading.getter();
  if (v5)
  {
    specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  }

  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  if (v6)
  {
    specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  }

  return v4;
}

uint64_t HeaderFooterVisitor.HeaderContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8], MEMORY[0x1E6980B20]);
  v57 = type metadata accessor for ModifiedContent();
  v61 = *(v57 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v57);
  v73 = &v54 - v10;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>(255, v9);
  v58 = v11;
  v60 = type metadata accessor for ModifiedContent();
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v54 - v12;
  type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E6980A08]);
  v63 = type metadata accessor for ModifiedContent();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v54 - v13;
  v66 = type metadata accessor for ModifiedContent();
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v54 - v14;
  v69 = type metadata accessor for ModifiedContent();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v54 - v17;
  v54 = *(a1 + 64);
  swift_getKeyPath();
  (*(v4 + 16))(v6, v2, a1);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = *(a1 + 24);
  *(v19 + 16) = v8;
  *(v19 + 24) = v20;
  v21 = *(v4 + 32);
  v55 = a1;
  v21(v19 + v18, v6, a1);
  v22 = v2;
  View.transformEnvironment<A>(_:transform:)();

  v23 = *(v2 + 136);
  v85 = *(v2 + 120);
  v86 = v23;
  v87[0] = *(v2 + 152);
  *(v87 + 9) = *(v2 + 161);
  LOBYTE(v4) = *(v2 + 192);
  KeyPath = swift_getKeyPath();
  v88 = 0;
  v25 = swift_getKeyPath();
  v77.n128_u8[0] = 0;
  v26 = swift_getKeyPath();
  LOBYTE(v89[0]) = 0;
  *(v84 + 7) = v85;
  *(&v84[1] + 7) = v86;
  *(&v84[2] + 7) = v87[0];
  v84[3] = *(v87 + 9);
  LOBYTE(v8) = v77.n128_u8[0];
  v27 = HeaderFooterVisitor.HeaderContent.legacyInsets.getter(a1);
  *&v81[41] = v84[0];
  *&v81[57] = v84[1];
  *&v81[73] = v84[2];
  v77.n128_u64[0] = KeyPath;
  v81[8] = 0;
  *&v81[16] = v25;
  v81[24] = v8;
  *&v81[32] = v26;
  v81[40] = 0;
  *&v81[89] = v84[3];
  v81[105] = v4;
  *&v81[112] = xmmword_18CDE9320;
  *&v81[128] = v27;
  *&v81[136] = v28;
  *&v81[144] = v29;
  *&v81[152] = v30;
  v31 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>();
  v83[0] = v20;
  v83[1] = v31;
  v32 = MEMORY[0x1E697E858];
  v33 = v57;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v57, v83);
  v35 = v56;
  v36 = v73;
  MEMORY[0x18D00A570](&v77, v33, v58, WitnessTable);
  v89[10] = *&v81[96];
  v89[11] = *&v81[112];
  v89[12] = *&v81[128];
  v89[13] = *&v81[144];
  v89[6] = *&v81[32];
  v89[7] = *&v81[48];
  v89[8] = *&v81[64];
  v89[9] = *&v81[80];
  v89[2] = v79;
  v89[3] = v80;
  v89[4] = *v81;
  v89[5] = *&v81[16];
  v89[0] = v77;
  v89[1] = v78;
  outlined destroy of StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>(v89, v77);
  (*(v61 + 8))(v36, v33);
  swift_getKeyPath();
  v37 = v55;
  HeaderFooterVisitor.HeaderContent.resolvedConfiguration.getter(&v77);
  v39 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>(v38);
  v82[0] = WitnessTable;
  v82[1] = v39;
  v40 = v60;
  v41 = swift_getWitnessTable(v32, v60, v82);
  v42 = v59;
  View.environment<A>(_:_:)();

  v90[2] = v79;
  v90[3] = v80;
  v91 = *v81;
  v90[0] = v77;
  v90[1] = v78;
  outlined destroy of HeaderFooterConfiguration(v90);
  (*(v65 + 8))(v35, v40);
  outlined init with copy of AccessibilityScrollableContext(v22 + *(v37 + 68), &v77);
  v43 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>();
  memset(&v81[8], 0, 296);
  v76[0] = v41;
  v76[1] = v43;
  v44 = v63;
  v45 = swift_getWitnessTable(v32, v63, v76);
  v46 = v62;
  MEMORY[0x18D00A570](&v77, v44, &type metadata for AccessibilityScrollableContextModifier, v45);
  outlined destroy of AccessibilityScrollableContextModifier(&v77);
  (*(v67 + 8))(v42, v44);
  static Alignment.top.getter();
  v75[0] = v45;
  v75[1] = &protocol witness table for AccessibilityScrollableContextModifier;
  v52 = v66;
  v53 = swift_getWitnessTable(v32, v66, v75);
  v47 = v64;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v70 + 8))(v46, v52);
  v74[0] = v53;
  v74[1] = MEMORY[0x1E697EBF8];
  v48 = v69;
  swift_getWitnessTable(v32, v69, v74);
  v49 = v68;
  static ViewBuilder.buildExpression<A>(_:)();
  v50 = *(v71 + 8);
  v50(v47, v48);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v50)(v49, v48);
}

void closure #1 in HeaderFooterVisitor.HeaderContent.body.getter(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderFooterVisitor.HeaderContent(0, a3, a4, a4);
  if (HeaderFooterVisitor.HeaderContent.isHeader.getter())
  {
    v6 = *(a2 + 105);
    if (v6 == 2)
    {
      specialized Environment.wrappedValue.getter(*(a2 + 96), *(a2 + 104), &v8);
      LOBYTE(v6) = v8;
    }

    if ((v6 & 1) == 0)
    {
      type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGACyxGAA0cD0AAWlTm_0(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, MEMORY[0x1E697EC30], v7);
      if (static SemanticFeature.isEnabled.getter())
      {
        *a1 = 0;
      }
    }
  }
}

__n128 key path getter for EnvironmentValues.headerFooterConfiguration : EnvironmentValues@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  result = v6;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

double key path setter for EnvironmentValues.headerFooterConfiguration : EnvironmentValues(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v11 = v15;
  v12 = v6;
  v17 = *(a1 + 64);
  v13 = *(a1 + 64);
  v9 = v14[0];
  v10 = v3;
  type metadata accessor for ModifiedContent<_ViewList_View, ListTableCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);

  outlined init with copy of HeaderFooterConfiguration(v14, v8);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void HeaderFooterVisitor.HeaderContent.resolvedConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 73);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  specialized Environment.wrappedValue.getter(a1);
  v5 = *(v1 + 105);
  if (v5 == 2)
  {
    specialized Environment.wrappedValue.getter(*(v1 + 96), *(v1 + 104), &v6);
    LOBYTE(v5) = v6;
  }

  *(a1 + 16) = v5 & 1;
}

void HeaderFooterVisitor.DefaultForegroundColorModifier.body(content:)(void *a1@<X8>)
{
  v3 = [objc_opt_self() _defaultTextColorForTableViewStyle_isSectionHeader_];
  Color.Resolved.init(platformColor:)();
  if ((v4 & 1) == 0)
  {
    Color.init(_:)();
  }

  type metadata accessor for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier>, lazy protocol witness table accessor for type HeaderFooterVisitor.DefaultForegroundColorModifier and conformance HeaderFooterVisitor.DefaultForegroundColorModifier, &unk_1F00009C0);
  lazy protocol witness table accessor for type _ViewModifier_Content<HeaderFooterVisitor.DefaultForegroundColorModifier> and conformance _ViewModifier_Content<A>();
  View.defaultForegroundColor(_:)();

  *a1 = v5;
  a1[1] = v6;
}

void protocol witness for ViewModifier.body(content:) in conformance HeaderFooterVisitor.LegacyModifier(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  KeyPath = swift_getKeyPath();
  v8 = static Edge.Set.all.getter();
  *a1 = KeyPath;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
}

double HeaderFooterVisitor.IOSMultiColumnModifier.insets.getter()
{
  v1 = v0[3];
  v21 = v0[2];
  v22[0] = v1;
  *(v22 + 9) = *(v0 + 57);
  v2 = v0[1];
  v19 = *v0;
  v20 = v2;
  v3 = *(v0 + 10);
  v4 = *(v0 + 88);
  specialized Environment.wrappedValue.getter(&v15);
  v5 = specialized Environment.wrappedValue.getter(v3, v4);
  HeaderFooterConfiguration.defaultEdgeInsets(for:)(v6, v5);
  v8 = v7;
  v23[2] = *v17;
  v23[3] = *&v17[16];
  v24 = v18;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of HeaderFooterConfiguration(v23);
  v9 = v0[8];
  v15 = v0[7];
  v16 = v9;
  *v17 = v0[9];
  *&v17[9] = *(v0 + 153);
  v10 = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if ((v11 & 1) == 0)
  {
    v8 = v10;
  }

  v12 = v0[8];
  v15 = v0[7];
  v16 = v12;
  *v17 = v0[9];
  *&v17[9] = *(v0 + 153);
  OptionalEdgeInsets.leading.getter();
  v13 = v0[8];
  v15 = v0[7];
  v16 = v13;
  *v17 = v0[9];
  *&v17[9] = *(v0 + 153);
  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  return v8;
}