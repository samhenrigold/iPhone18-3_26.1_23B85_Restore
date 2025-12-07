uint64_t closure #3 in PresentationDetent.uiSheetDetent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v5 = *(a3 + 8);
  swift_unknownObjectRetain();
  v6 = v5(&v9, a2, a3);
  LOBYTE(a2) = v7;
  swift_unknownObjectRelease();
  if (a2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

double PresentationDetent.Context.subscript.getter()
{
  v3 = [*v2 containerTraitCollection];
  EnvironmentValues.init()();
  v5 = v6;
  UITraitCollection.resolvedEnvironment(base:)(&v5, &v7);

  v6 = v7;
  swift_getAtKeyPath();

  return result;
}

uint64_t PresentationDetent.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x18D00F6F0](4);
      v5 = v2;
    }

    else if (v2 | v1 ^ 0xC000000000000000)
    {
      if (v1 == 0xC000000000000000 && v2 == 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x18D00F6F0](v5);
  }

  else
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x18D00F6F0](v4);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x18D00F730](v6);
  }
}

Swift::Int PresentationDetent.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  PresentationDetent.Identifier.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationDetent.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  PresentationDetent.Identifier.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationDetent.Identifier(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  PresentationDetent.Identifier.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

double static PresentationBackgroundInteraction.automatic.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CDFAD60;
  return result;
}

double static PresentationBackgroundInteraction.enabled.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CDE1060;
  return result;
}

__n128 static PresentationBackgroundInteraction.enabled(upThrough:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double static PresentationBackgroundInteraction.disabled.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CDFAD70;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PresentationDimmingBehavior(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v7 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v10 & 1;
  }

  return 1;
}

uint64_t PresentationOptionsPreference.merge(_:)(uint64_t *a1)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
  }

  else
  {
  }

  *v1 = v3;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v4;
  v7 = v5;
  v8 = a1[3];
  v9 = a1[4];
  if (!v5)
  {
    v6 = *(v1 + 8);
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    v10 = a1[1];
    outlined copy of Binding<Int>?(v6, v7);
    v4 = v10;
  }

  v11 = v6;
  v12 = v7;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  outlined copy of Binding<Int>?(v4, v5);
  outlined consume of Binding<NavigationSplitViewColumn>?(v13, v14);
  *(v1 + 8) = v11;
  *(v1 + 16) = v12;
  *(v1 + 24) = v8;
  *(v1 + 32) = v9;
  v15 = a1[6];
  v16 = v15;
  if (v15 == 2)
  {
    v16 = *(v1 + 48);
    outlined copy of PresentationDimmingBehavior?(v16);
  }

  v17 = *(v1 + 48);
  outlined copy of PresentationDimmingBehavior?(v15);
  outlined consume of PresentationDimmingBehavior?(v17);
  *(v1 + 48) = v16;
  v18 = *(a1 + 40);
  if (v18 == 6)
  {
    LOBYTE(v18) = *(v1 + 40);
  }

  *(v1 + 40) = v18;
  v19 = *(a1 + 41);
  if (v19 == 6)
  {
    LOBYTE(v19) = *(v1 + 41);
  }

  *(v1 + 41) = v19;
  if (*(a1 + 56))
  {
    v20 = a1;
  }

  else
  {
    v20 = v1;
  }

  *(v1 + 56) = *(v20 + 56);
  v21 = *(a1 + 57);
  if (!v21)
  {
    v21 = *(v1 + 57);
  }

  *(v1 + 57) = v21;
  v22 = *(a1 + 58);
  if (!v22)
  {
    v22 = *(v1 + 58);
  }

  *(v1 + 58) = v22;
  if (*(a1 + 72) == 1)
  {
    v23 = *(v1 + 72);
    v24 = v1;
  }

  else
  {
    v23 = 0;
    v24 = a1;
  }

  *(v1 + 64) = v24[8];
  *(v1 + 72) = v23;
  if (*(a1 + 88) == 1)
  {
    v25 = *(v1 + 88);
    v26 = v1;
  }

  else
  {
    v25 = 0;
    v26 = a1;
  }

  *(v1 + 80) = v26[10];
  *(v1 + 88) = v25;
  outlined init with copy of PresentationSizing?((a1 + 12), &v30);
  if (v31)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, v32);
  }

  else
  {
    outlined init with copy of PresentationSizing?(v1 + 96, v32);
    if (v31)
    {
      _s7SwiftUI18PresentationSizing_pSgWOhTm_0(&v30, type metadata accessor for PresentationSizing?);
    }
  }

  result = outlined assign with take of PresentationSizing?(v32, v1 + 96);
  if (*(v1 + 136))
  {
    v28 = 1;
  }

  else
  {
    v28 = *(a1 + 136);
  }

  *(v1 + 136) = v28;
  v29 = *(v1 + 137);
  if (v29 == 2)
  {
    LOBYTE(v29) = *(a1 + 137);
  }

  *(v1 + 137) = v29;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance PresentationOptionsPreferenceKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v3);
  PresentationOptionsPreference.merge(_:)(v3);
  return outlined destroy of PresentationOptionsPreference(v3);
}

uint64_t PresentationOptionsPreference.description.getter()
{
  v1 = v0;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(138);
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x18D00C9B0](0xD00000000000002ELL, 0x800000018CD5B450);
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (!v3)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v8 = MEMORY[0x18D00CC60](v4, &type metadata for PresentationDetent);
    v10 = v9;

    MEMORY[0x18D00C9B0](v8, v10);

    MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD5B480);
    v11 = v1[2];
    v12 = v1[3];
    v13 = v1[4];
    v19 = v1[1];
    v20 = v11;
    v21 = v12;
    v22 = v13;
    outlined copy of Binding<Int>?(v19, v11);
    type metadata accessor for Binding<PresentationDetent>?(0);
    v14 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v14);

    MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD5B4A0);
    LOBYTE(v19) = *(v1 + 40);
    v15 = MEMORY[0x1E69E6720];
    _sSbSgMaTm_1(0, &lazy cache variable for type metadata for PresentationAdaptation.Kind?, &type metadata for PresentationAdaptation.Kind, MEMORY[0x1E69E6720]);
    v16 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v16);

    MEMORY[0x18D00C9B0](0xD000000000000019, 0x800000018CD5B4C0);
    LOBYTE(v19) = *(v1 + 41);
    _sSbSgMaTm_1(0, &lazy cache variable for type metadata for PresentationAdaptation?, &type metadata for PresentationAdaptation, v15);
    v17 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v17);

    MEMORY[0x18D00C9B0](0x6D6964202020200ALL, 0xEE00203A676E696DLL);
    v19 = v1[6];
    outlined copy of PresentationDimmingBehavior?(v19);
    _sSbSgMaTm_1(0, &lazy cache variable for type metadata for PresentationDimmingBehavior?, &type metadata for PresentationDimmingBehavior, v15);
    v18 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v18);

    return v23;
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI18PresentationDetentV_Tt1g5(*(*v0 + 16), 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v19, v4 + 2, v3, v2);
  v6 = v19;

  result = outlined consume of Set<UIPress>.Iterator._Variant(v6);
  if (v5 == v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t specialized static PresentationDetent.Identifier.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      if (a4 >> 62 == 2)
      {
        return a1 == a3;
      }
    }

    else if (a1 | a2 ^ 0xC000000000000000)
    {
      if (a2 == 0xC000000000000000 && a1 == 1)
      {
        if (a4 >> 62 == 3 && a3 == 1 && a4 == 0xC000000000000000)
        {
          return 1;
        }
      }

      else if (a4 >> 62 == 3 && a3 == 2 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    else if (a4 >> 62 == 3 && !a3 && a4 == 0xC000000000000000)
    {
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    if (!(a4 >> 62))
    {
      v5 = *&a1;
      v6 = *&a3;
      LODWORD(v7) = 1;
      goto LABEL_10;
    }

    return 0;
  }

  v7 = a4 >> 62;
  if (a4 >> 62 != 1)
  {
    return 0;
  }

  v5 = *&a1;
  v6 = *&a3;
LABEL_10:
  if (v5 == v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL specialized static PresentationDetent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (v4 >> 62 != 2 || *&v2 != *&v5)
      {
        return 0;
      }
    }

    else if (*&v2 | v3 ^ 0xC000000000000000)
    {
      if (v3 == 0xC000000000000000 && *&v2 == 1)
      {
        if (v4 >> 62 != 3 || *&v5 != 1 || v4 != 0xC000000000000000)
        {
          return 0;
        }
      }

      else if (v4 >> 62 != 3 || *&v5 != 2 || v4 != 0xC000000000000000)
      {
        return 0;
      }
    }

    else if (v4 >> 62 != 3 || *&v5 != 0 || v4 != 0xC000000000000000)
    {
      return 0;
    }

    return 1;
  }

  v7 = v4 >> 62;
  if (v6)
  {
    return v7 == 1 && v2 == v5;
  }

  return !v7 && v2 == v5;
}

uint64_t *assignWithCopy for PresentationDetent.Context(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t *assignWithTake for PresentationDetent.Context(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationBackgroundInteraction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 16))
  {
    return (*a1 + 122);
  }

  v3 = *(a1 + 8);
  v4 = (v3 >> 57) & 0x18 | v3 & 7;
  v5 = ((v3 >> 57) >> 5) | (4 * v4);
  if (-v5 < -125 || v5 == 125)
  {
    v6 = -125;
  }

  else
  {
    v6 = -v5;
  }

  v7 = v6 + 124;
  if (!v4)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationBackgroundInteraction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((125 - a2) >> 2) | (32 * (125 - a2)) | ((((125 - a2) >> 2) | (32 * (125 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationBackgroundInteraction.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 16))
  {
    return (*a1 + 122);
  }

  v3 = *(a1 + 8);
  v4 = (v3 >> 57) & 0x18 | v3 & 7;
  v5 = (((v3 >> 57) >> 5) | (4 * v4)) ^ 0x7F;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PresentationBackgroundInteraction.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((125 - a2) >> 2) | (32 * (125 - a2)) | ((((125 - a2) >> 2) | (32 * (125 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTag for PresentationBackgroundInteraction.Kind(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (v1 >> 57) & 0x18 | v1 & 7;
  v3 = (((v1 >> 57) >> 5) | (4 * v2)) ^ 0x7F;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for PresentationBackgroundInteraction.Kind(void *result, unsigned int a2)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = ((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2) | (((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2)) << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationDetent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PresentationDetent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTag for PresentationDetent.Identifier(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void *destructiveInjectEnumTag for PresentationDetent.Identifier(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t assignWithCopy for PresentationOptionsPreference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Binding<PresentationDetent>(a1 + 8);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  v7 = (a1 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v9 = *(a2 + 48);
  if (v8 == 2)
  {
    if (v9 < 2)
    {
LABEL_15:
      *v7 = v9;
      goto LABEL_16;
    }

    if (v9 == 2)
    {
      v9 = 2;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (v9 == 2)
  {
    outlined destroy of PresentationDimmingBehavior(a1 + 48);
LABEL_14:
    v9 = *(a2 + 48);
    goto LABEL_15;
  }

  if (v8 < 2)
  {
    if (v9 < 2)
    {
      goto LABEL_15;
    }

LABEL_23:
    *v7 = v9;
    v14 = v9;
    goto LABEL_16;
  }

  if (v9 < 2)
  {
    _s7SwiftUI18PresentationSizing_pSgWOhTm_0(a1 + 48, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
    goto LABEL_14;
  }

  *v7 = v9;
  v18 = v9;

LABEL_16:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v10 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v10;
  v11 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v11;
  v12 = *(a2 + 120);
  if (!*(a1 + 120))
  {
    if (v12)
    {
      *(a1 + 120) = v12;
      *(a1 + 128) = *(a2 + 128);
      (**(v12 - 8))(a1 + 96, a2 + 96);
      goto LABEL_26;
    }

LABEL_25:
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v15;
    *(a1 + 112) = v16;
    goto LABEL_26;
  }

  v13 = (a1 + 96);
  if (!v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_25;
  }

  __swift_assign_boxed_opaque_existential_1(v13, (a2 + 96));
LABEL_26:
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  return a1;
}

uint64_t _s7SwiftUI18PresentationSizing_pSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy138_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for PresentationOptionsPreference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (*(a1 + 16))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = v4;

      goto LABEL_6;
    }

    outlined destroy of Binding<PresentationDetent>(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v5 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_15;
    }

LABEL_11:
    *v6 = 2;
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    outlined destroy of PresentationDimmingBehavior(a1 + 48);
    goto LABEL_11;
  }

  if (v5 < 2)
  {
LABEL_15:
    *v6 = v7;
    goto LABEL_16;
  }

  if (v7 < 2)
  {
    _s7SwiftUI18PresentationSizing_pSgWOhTm_0(a1 + 48, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
    goto LABEL_15;
  }

  *v6 = v7;

LABEL_16:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 96));
  }

  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  return a1;
}

void destroy for PresentationDimmingBehavior(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for PresentationDimmingBehavior(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for PresentationDimmingBehavior(void **result, void **a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationDimmingBehavior(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type PresentationDetent.Identifier and conformance PresentationDetent.Identifier()
{
  result = lazy protocol witness table cache variable for type PresentationDetent.Identifier and conformance PresentationDetent.Identifier;
  if (!lazy protocol witness table cache variable for type PresentationDetent.Identifier and conformance PresentationDetent.Identifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationDetent.Identifier, &type metadata for PresentationDetent.Identifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationDetent.Identifier and conformance PresentationDetent.Identifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationAdaptation.Kind and conformance PresentationAdaptation.Kind()
{
  result = lazy protocol witness table cache variable for type PresentationAdaptation.Kind and conformance PresentationAdaptation.Kind;
  if (!lazy protocol witness table cache variable for type PresentationAdaptation.Kind and conformance PresentationAdaptation.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationAdaptation.Kind, &type metadata for PresentationAdaptation.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAdaptation.Kind and conformance PresentationAdaptation.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationPassthroughBehavior.Kind and conformance PresentationPassthroughBehavior.Kind()
{
  result = lazy protocol witness table cache variable for type PresentationPassthroughBehavior.Kind and conformance PresentationPassthroughBehavior.Kind;
  if (!lazy protocol witness table cache variable for type PresentationPassthroughBehavior.Kind and conformance PresentationPassthroughBehavior.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationPassthroughBehavior.Kind, &type metadata for PresentationPassthroughBehavior.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationPassthroughBehavior.Kind and conformance PresentationPassthroughBehavior.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationContentInteraction.Kind and conformance PresentationContentInteraction.Kind()
{
  result = lazy protocol witness table cache variable for type PresentationContentInteraction.Kind and conformance PresentationContentInteraction.Kind;
  if (!lazy protocol witness table cache variable for type PresentationContentInteraction.Kind and conformance PresentationContentInteraction.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationContentInteraction.Kind, &type metadata for PresentationContentInteraction.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationContentInteraction.Kind and conformance PresentationContentInteraction.Kind);
  }

  return result;
}

void type metadata accessor for Binding<PresentationDetent>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<PresentationDetent>?)
  {
    _sSbSgMaTm_1(255, &lazy cache variable for type metadata for Binding<PresentationDetent>, &type metadata for PresentationDetent, MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<PresentationDetent>?);
    }
  }
}

unint64_t type metadata accessor for UISheetPresentationControllerDetent()
{
  result = lazy cache variable for type metadata for UISheetPresentationControllerDetent;
  if (!lazy cache variable for type metadata for UISheetPresentationControllerDetent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
  }

  return result;
}

double partial apply for closure #1 in PresentationDetent.uiSheetDetent.getter(void *a1)
{
  v2 = *(v1 + 16);
  [a1 maximumDetentValue];
  return v2 * v3;
}

unint64_t lazy protocol witness table accessor for type PresentationDetent.CustomPresentationDetentWrapper and conformance PresentationDetent.CustomPresentationDetentWrapper()
{
  result = lazy protocol witness table cache variable for type PresentationDetent.CustomPresentationDetentWrapper and conformance PresentationDetent.CustomPresentationDetentWrapper;
  if (!lazy protocol witness table cache variable for type PresentationDetent.CustomPresentationDetentWrapper and conformance PresentationDetent.CustomPresentationDetentWrapper)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationDetent.CustomPresentationDetentWrapper, &type metadata for PresentationDetent.CustomPresentationDetentWrapper, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationDetent.CustomPresentationDetentWrapper and conformance PresentationDetent.CustomPresentationDetentWrapper);
  }

  return result;
}

void *UIKitGestureRecognizer.convert(touches:with:)(uint64_t a1, void *a2)
{
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC05TouchE0VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    Set.Iterator.init(_cocoa:)();
    a1 = v88;
    v4 = v89;
    v6 = v90;
    v5 = v91;
    v7 = v92;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v5 = 0;
  }

  v11 = (v6 + 64) >> 6;
  v76 = v4;
  v75 = v11;
  while (a1 < 0)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28 || (*&v80[0] = v28, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190), swift_dynamicCast(), v27 = v82, v25 = v5, v26 = v7, !v82))
    {
LABEL_32:
      outlined consume of Set<UIPress>.Iterator._Variant(a1);
      return v3;
    }

LABEL_19:
    v79 = v26;
    v29 = a1;
    type metadata accessor for (UITransformEvent, TransformEvent)(0, &lazy cache variable for type metadata for (UITouch, TouchEvent), &lazy cache variable for type metadata for UITouch, 0x1E69DD190, &type metadata for TouchEvent);
    v31 = v30;
    v32 = [v78 view];
    v33 = [v27 phase];
    v34 = v27;
    [v34 locationInView_];
    v36 = v35;
    v38 = v37;
    [v34 timestamp];
    v40 = v39;
    [v34 majorRadius];
    v42 = v41;
    [v34 force];
    v44 = v43;
    [v34 maximumPossibleForce];
    v46 = v45;
    v47 = specialized EventModifiers.init(_:)([a2 modifierFlags]);
    [v34 altitudeAngle];
    v49 = v48;
    [v34 azimuthAngleInView_];
    v51 = v50;
    v52 = [v34 type];

    if (v52 >= 4)
    {
      goto LABEL_36;
    }

    *&v82 = v40;
    v53 = 0x201010302010100uLL >> (8 * v33);
    if (v33 >= 8)
    {
      LOBYTE(v53) = 3;
    }

    BYTE8(v82) = v53;
    *&v84 = 0;
    v83 = 0uLL;
    *(&v84 + 1) = v36;
    *&v85 = v38;
    *(&v85 + 1) = v42;
    *&v86 = v44;
    *(&v86 + 1) = v46;
    *v87 = v47;
    *&v87[8] = v49;
    *&v87[16] = v51;
    v87[24] = v52;
    outlined init with copy of TouchEvent(&v82, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v27);
    v57 = v3[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_34;
    }

    v61 = v56;
    if (v3[3] < v60)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, isUniquelyReferenced_nonNull_native);
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v27);
      v63 = v79;
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_37;
      }

LABEL_27:
      if (v61)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }

    v63 = v79;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v73 = v55;
    specialized _NativeDictionary.copy()();
    v55 = v73;
    if (v61)
    {
LABEL_8:
      v12 = (v3[7] + 112 * v55);
      v14 = v12[1];
      v13 = v12[2];
      v80[0] = *v12;
      v80[1] = v14;
      v80[2] = v13;
      v16 = v12[4];
      v15 = v12[5];
      v17 = v12[3];
      *&v81[9] = *(v12 + 89);
      v80[4] = v16;
      *v81 = v15;
      v80[3] = v17;
      v18 = v82;
      v19 = v84;
      v12[1] = v83;
      v12[2] = v19;
      *v12 = v18;
      v20 = v85;
      v21 = v86;
      v22 = *v87;
      *(v12 + 89) = *&v87[9];
      v12[4] = v21;
      v12[5] = v22;
      v12[3] = v20;
      outlined destroy of TouchEvent(v80);
      outlined destroy of TouchEvent(&v82);

      goto LABEL_9;
    }

LABEL_28:
    v3[(v55 >> 6) + 8] |= 1 << v55;
    v64 = (v3[6] + 16 * v55);
    *v64 = v31;
    v64[1] = v27;
    v65 = (v3[7] + 112 * v55);
    v66 = *&v87[9];
    v67 = *v87;
    v68 = v86;
    v65[3] = v85;
    v65[4] = v68;
    v65[5] = v67;
    *(v65 + 89) = v66;
    v69 = v84;
    v70 = v83;
    *v65 = v82;
    v65[1] = v70;
    v65[2] = v69;
    outlined destroy of TouchEvent(&v82);

    v71 = v3[2];
    v59 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v59)
    {
      goto LABEL_35;
    }

    v3[2] = v72;
LABEL_9:
    v5 = v25;
    v7 = v63;
    a1 = v29;
    v11 = v75;
    v4 = v76;
  }

  v23 = v5;
  v24 = v7;
  v25 = v5;
  if (v7)
  {
LABEL_15:
    v26 = (v24 - 1) & v24;
    v27 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v27)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v11)
    {
      goto LABEL_32;
    }

    v24 = *(v4 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id UIKitGestureRecognizer.init()()
{
  swift_weakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialScale] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialAngle] = 0;
  v1 = &v0[OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_scrollConverter];
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_gestureCategory] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for UIKitGestureRecognizer();
  v2 = objc_msgSendSuper2(&v8, sel_initWithTarget_action_, 0, 0);
  v3 = one-time initialization token for back;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static UIPressType.back;
  specialized ContiguousArray.reserveCapacity(_:)();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setAllowedPressTypes_];

  [v4 setDelaysTouchesEnded_];
  return v4;
}

Swift::Void __swiftcall UIKitGestureRecognizer.reset()()
{
  if (swift_weakLoadStrong())
  {
    lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer();
    dispatch thunk of EventBindingBridge.reset(eventSource:resetForwardedEventDispatchers:)();
  }

  v1 = v0 + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_scrollConverter;
  swift_beginAccess();
  if (*v1 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }
}

void @objc UIKitGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v7 = a1;
  v8 = UIKitGestureRecognizer.convert(touches:with:)(v6, v9);
  if (swift_weakLoadStrong())
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

    lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer();
    dispatch thunk of EventBindingBridge.send(_:source:)();
  }

  else
  {
  }
}

void @objc UIKitGestureRecognizer.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
  lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v7 = a1;
  v8 = specialized UIKitGestureRecognizer.convert(buttonEvents:with:)(v6);
  if (swift_weakLoadStrong())
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

    lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer();
    dispatch thunk of EventBindingBridge.send(_:source:)();
  }

  else
  {
  }
}

id UIKitGestureRecognizer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UIKitGestureRecognizer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double protocol witness for EventBindingSource.attach(to:) in conformance UIKitGestureRecognizer(uint64_t a1)
{
  swift_weakAssign();
  swift_weakLoadStrong();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();

  return result;
}

uint64_t UIKitGestureRecognizer._transformChanged(with:)(void *a1)
{
  if ([a1 phase] == 1)
  {
    [a1 scale];
    *(v1 + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialScale) = v3;
    [a1 rotation];
    *(v1 + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialAngle) = -v4;
  }

  type metadata accessor for (UITransformEvent, TransformEvent)(0, &lazy cache variable for type metadata for (UITransformEvent, TransformEvent), &lazy cache variable for type metadata for UITransformEvent, 0x1E69DD220, &type metadata for TransformEvent);
  v6 = v5;
  [a1 locationInView_];
  v8 = v7;
  v10 = v9;
  [a1 timestamp];
  v12 = v11;
  v13 = [a1 phase];
  if (v13 >= 5)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0x302010003uLL >> (8 * v13);
  }

  v15 = *(v1 + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialScale);
  [a1 scale];
  v17 = v16;
  v18 = OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialAngle;
  v19 = *(v1 + OBJC_IVAR____TtC7SwiftUI22UIKitGestureRecognizer_initialAngle);
  [a1 rotation];
  v21 = v20 * -128.0 + *(v1 + v18) * -128.0;
  *&v28 = v12;
  BYTE8(v28) = v14;
  *&v29 = 0;
  *(&v29 + 1) = v8;
  *&v30 = v10;
  *(&v30 + 1) = v8;
  *&v31 = v10;
  *(&v31 + 1) = v15;
  *&v32 = v17;
  *(&v32 + 1) = v19;
  v33 = v21 * 0.0078125;
  if (!swift_weakLoadStrong())
  {
    return outlined destroy of TransformEvent(&v28);
  }

  type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = v6;
  *(inited + 40) = a1;
  *(inited + 72) = &type metadata for TransformEvent;
  *(inited + 80) = lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent();
  v23 = swift_allocObject();
  *(inited + 48) = v23;
  v24 = v29;
  *(v23 + 16) = v28;
  *(v23 + 32) = v24;
  v25 = v31;
  *(v23 + 48) = v30;
  *(v23 + 64) = v25;
  *(v23 + 80) = v32;
  *(v23 + 96) = v33;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined init with copy of TransformEvent(&v28, v27);
  outlined destroy of (EventID, EventType)(inited + 32);
  lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer();
  dispatch thunk of EventBindingBridge.send(_:source:)();

  outlined destroy of TransformEvent(&v28);
}

uint64_t UIKitGestureRecognizer._scrollingChanged(with:)(unint64_t a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v6 = ScrollEventConverter.convert(_:in:)(a1, v5);
  swift_endAccess();

  if (swift_weakLoadStrong())
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

    lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer();
    dispatch thunk of EventBindingBridge.send(_:source:)();
  }
}

void *specialized UIKitGestureRecognizer.convert(buttonEvents:with:)(uint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC014PhysicalButtonE0VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
    Set.Iterator.init(_cocoa:)();
    a1 = v45;
    v3 = v46;
    v4 = v47;
    v5 = v48;
    v6 = v49;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v42 = v3;
  v43 = a1;
  v41 = v10;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0), swift_dynamicCast(), v16 = v44, v14 = v5, v15 = v6, !v44))
    {
LABEL_56:
      outlined consume of Set<UIPress>.Iterator._Variant(a1);
      return v2;
    }

LABEL_19:
    type metadata accessor for (UITransformEvent, TransformEvent)(0, &lazy cache variable for type metadata for (UIPress, PhysicalButtonEvent), &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0, MEMORY[0x1E697F768]);
    v18 = v17;
    [v16 timestamp];
    v20 = v19;
    v21 = [v16 phase];
    if (v21 >= 5)
    {
      v22 = 3;
    }

    else
    {
      v22 = 0x302010100uLL >> (8 * v21);
    }

    v23 = [v16 type];
    if (v23 <= 3)
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = 2;
        }

        else
        {
          v24 = 3;
        }

        goto LABEL_45;
      }

      if (!v23)
      {
        v24 = 0;
        goto LABEL_45;
      }

      if (v23 == 1)
      {
        v24 = 1;
        goto LABEL_45;
      }
    }

    else
    {
      if (v23 <= 5)
      {
        if (v23 == 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = 5;
        }

        goto LABEL_45;
      }

      switch(v23)
      {
        case 6:
          v24 = 6;
          goto LABEL_45;
        case 30:
          v24 = 7;
          goto LABEL_45;
        case 31:
          v24 = 8;
          goto LABEL_45;
      }
    }

    if (one-time initialization token for back != -1)
    {
      v39 = v23;
      swift_once();
      v23 = v39;
    }

    if (static UIPressType.back != v23)
    {
      goto LABEL_61;
    }

    v24 = 9;
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v2;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v16);
    v28 = v2[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_58;
    }

    v31 = v26;
    if (v2[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_8;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v31)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v16);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_60;
      }

      v27 = v32;
      if (v31)
      {
LABEL_8:
        v11 = v2[7] + 32 * v27;
        *v11 = v20;
        *(v11 + 8) = v22;
        *(v11 + 16) = 0;
        *(v11 + 24) = v24;

        goto LABEL_9;
      }
    }

    v2[(v27 >> 6) + 8] |= 1 << v27;
    v34 = (v2[6] + 16 * v27);
    *v34 = v18;
    v34[1] = v16;
    v35 = v2[7] + 32 * v27;
    *v35 = v20;
    *(v35 + 8) = v22;
    *(v35 + 16) = 0;
    *(v35 + 24) = v24;

    v36 = v2[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_59;
    }

    v2[2] = v38;
LABEL_9:
    v5 = v14;
    a1 = v43;
    v6 = v15;
    v10 = v41;
    v3 = v42;
  }

  v12 = v5;
  v13 = v6;
  v14 = v5;
  if (v6)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_56;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_56;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_61:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id specialized UIKitGestureRecognizer.didUpdate(phase:in:)(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = [v1 state];
  v4 = 3;
  v5 = 5;
  v6 = 4;
  if (v3 == 5)
  {
    v6 = 5;
  }

  if (v3)
  {
    v5 = v6;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  v7 = 1;
  if (v3)
  {
    v7 = 2;
  }

  if (!v2)
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  return [v1 setState_];
}

unint64_t lazy protocol witness table accessor for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer()
{
  result = lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer;
  if (!lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer)
  {
    v3 = type metadata accessor for UIKitGestureRecognizer();
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitGestureRecognizer, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(EventID, EventType)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>)
  {
    type metadata accessor for (EventID, EventType)(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>);
    }
  }
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1)
{
  type metadata accessor for (EventID, EventType)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (UITransformEvent, TransformEvent)(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for NSObject(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double DefaultStepperStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  KeyPath = swift_getKeyPath();

  outlined copy of AppIntentExecutor?(v4, v5);
  outlined copy of AppIntentExecutor?(v6, v7);

  outlined copy of Environment<Selector?>.Content(KeyPath, 0);
  outlined consume of Environment<Selector?>.Content(KeyPath, 0);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v12[4] = v4;
    v12[5] = v5;
    type metadata accessor for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>(255, a2, a3, a4);
    v8 = v7;
    v12[0] = lazy protocol witness table accessor for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(v7, v9, v10, v11);
    v12[1] = &protocol witness table for StepperStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v12);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>)
  {
    type metadata accessor for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>(255, a2, a3, a4);
    type metadata accessor for StepperStyleModifier<MenuStepperStyle>(255, &lazy cache variable for type metadata for StepperStyleModifier<SegmentedButtonStepperStyle>, lazy protocol witness table accessor for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle, &type metadata for SegmentedButtonStepperStyle);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>, StepperStyleModifier<SegmentedButtonStepperStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>)
  {
    type metadata accessor for Stepper<StepperStyleConfiguration.Label>(255, a2, a3, a4);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Stepper<StepperStyleConfiguration.Label>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Stepper<StepperStyleConfiguration.Label>)
  {
    v4 = type metadata accessor for Stepper(0, &type metadata for StepperStyleConfiguration.Label, &protocol witness table for StepperStyleConfiguration.Label, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Stepper<StepperStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for StepperStyleModifier<MenuStepperStyle>(255, &lazy cache variable for type metadata for StepperStyleModifier<MenuStepperStyle>, lazy protocol witness table accessor for type MenuStepperStyle and conformance MenuStepperStyle, &type metadata for MenuStepperStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuStepperStyle and conformance MenuStepperStyle()
{
  result = lazy protocol witness table cache variable for type MenuStepperStyle and conformance MenuStepperStyle;
  if (!lazy protocol witness table cache variable for type MenuStepperStyle and conformance MenuStepperStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStepperStyle, &type metadata for MenuStepperStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStepperStyle and conformance MenuStepperStyle);
  }

  return result;
}

void type metadata accessor for StepperStyleModifier<MenuStepperStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for StepperStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle()
{
  result = lazy protocol witness table cache variable for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle;
  if (!lazy protocol witness table cache variable for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SegmentedButtonStepperStyle, &type metadata for SegmentedButtonStepperStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentedButtonStepperStyle and conformance SegmentedButtonStepperStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v9[4] = v4;
    v9[5] = v5;
    type metadata accessor for ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>>(255, a2, a3, a4);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(&lazy protocol witness table cache variable for type Stepper<StepperStyleConfiguration.Label> and conformance Stepper<A>, type metadata accessor for Stepper<StepperStyleConfiguration.Label>, protocol conformance descriptor for Stepper<A>);
    v9[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Stepper<StepperStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type GroupBox<GroupBoxStyleConfiguration.Label, ModifiedContent<GroupBoxStyleConfiguration.Content, GroupBoxStyleModifier<DefaultGroupBoxStyle>>> and conformance GroupBox<A, B>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E69808F0]);
    v5[1] = &protocol witness table for StepperStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, StepperStyleModifier<MenuStepperStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabPlacementModifier and conformance TabPlacementModifier()
{
  result = lazy protocol witness table cache variable for type TabPlacementModifier and conformance TabPlacementModifier;
  if (!lazy protocol witness table cache variable for type TabPlacementModifier and conformance TabPlacementModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabPlacementModifier, &unk_1F000E640, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlacementModifier and conformance TabPlacementModifier);
  }

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance TabPlacementModifier()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for _ViewModifier_Content<TabPlacementModifier>(0);
  lazy protocol witness table accessor for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>();
  View.transformTrait<A>(_:transform:)();

  return result;
}

void type metadata accessor for _ViewModifier_Content<TabPlacementModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<TabPlacementModifier>)
  {
    lazy protocol witness table accessor for type TabPlacementModifier and conformance TabPlacementModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<TabPlacementModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabPlacementModifier>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

SwiftUI::BorderedTableStyle __swiftcall BorderedTableStyle.init()()
{
  result.alternatingRowBackgrounds.guts = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::BorderedTableStyle __swiftcall BorderedTableStyle.init(alternatesRowBackgrounds:)(Swift::Bool alternatesRowBackgrounds)
{
  result.alternatingRowBackgrounds.guts = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t View.buttonRepeatBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  v9 = *a1;
  swift_getKeyPath();
  v14 = v9;
  View.environment<A>(_:_:)();

  v10 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>, MEMORY[0x1E6980A18]);
  v13[0] = a3;
  v13[1] = v10;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v13);
  lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>);
    }
  }
}

void EnvironmentValues.buttonRepeatTiming.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.buttonRepeatTiming : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.buttonRepeatTiming : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.buttonRepeatTiming.setter(uint64_t *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void EnvironmentValues.effectiveButtonRepeatTiming.getter(uint64_t *a1@<X8>)
{
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    PropertyList.subscript.getter();
    if (v5 == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
      PropertyList.subscript.getter();
      v3 = v4;
      goto LABEL_7;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);

  PropertyList.Tracker.value<A>(_:for:)();

  if (v5 != 1)
  {
    goto LABEL_6;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

  PropertyList.Tracker.value<A>(_:for:)();

  v3 = v4;
LABEL_7:
  *a1 = v3;
}

Swift::Int ButtonRepeatBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

void EnvironmentValues.buttonRepeatBehavior.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.buttonRepeatBehavior : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.buttonRepeatBehavior : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatBehavior.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatBehavior.Key>, &type metadata for ButtonRepeatBehavior.Key, &protocol witness table for ButtonRepeatBehavior.Key);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Double_optional __swiftcall ButtonRepeatTiming.Iterator.next()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    if (v0[1] != *(v1 + 48))
    {
      goto LABEL_5;
    }

    LOBYTE(v3) = specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v1 = *v0;
    v2 = *(*v0 + 16);
  }

  if (!v2)
  {
    LOBYTE(v3) = 0;
    goto LABEL_9;
  }

LABEL_5:
  v5 = v0[1];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 40);
    v0[1] = v7;
  }

LABEL_9:
  result.value = v4;
  result.is_nil = v3;
  return result;
}

uint64_t (*EnvironmentValues.buttonRepeatTiming.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v4 = v1[1];
  v3[4] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.buttonRepeatTiming.modify;
}

void EnvironmentValues.buttonRepeatTiming.modify(void **a1, char a2)
{
  v3 = *a1;
  (*a1)[1] = **a1;
  v4 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonRepeatTiming.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonRepeatTiming.Key>, &type metadata for ButtonRepeatTiming.Key, &protocol witness table for ButtonRepeatTiming.Key);

  if (a2)
  {

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

unint64_t lazy protocol witness table accessor for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior()
{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior, &type metadata for ButtonRepeatBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior and conformance ButtonRepeatBehavior);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>)
  {
    lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior.Guts, &type metadata for ButtonRepeatBehavior.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.Guts and conformance ButtonRepeatBehavior.Guts);
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ButtonRepeatTiming.Key@<D0>(void *a1@<X8>)
{
  *a1 = &outlined read-only object #0 of one-time initialization function for iOSStepper;

  return result;
}

uint64_t GlassButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = a2;
  outlined copy of AppIntentExecutor?(v3, v4);

  return outlined copy of AppIntentExecutor?(v5, v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>(255);
    type metadata accessor for MenuStyleModifier<_BorderedButtonMenuStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for MenuStyleModifier<_BorderedButtonMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>);
    }
  }
}

void type metadata accessor for MenuStyleModifier<_BorderedButtonMenuStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>();
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<_BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double View.buttonOutset(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path setter for _ButtonGesture.action : _ButtonGesture(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  a2[1] = v5;
}

uint64_t _ButtonGesture.action.getter()
{
  v1 = *v0;

  return v1;
}

void _ButtonGesture.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t key path getter for _ButtonGesture.pressingAction : _ButtonGesture@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

uint64_t key path setter for _ButtonGesture.pressingAction : _ButtonGesture(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined copy of AppIntentExecutor?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t _ButtonGesture.pressingAction.getter()
{
  v1 = *(v0 + 16);
  outlined copy of AppIntentExecutor?(v1, *(v0 + 24));
  return v1;
}

uint64_t _ButtonGesture.pressingAction.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _ButtonGesture.init(action:pressing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  return result;
}

uint64_t _ButtonGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7 = *v1;
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 25);
  closure #1 in _ButtonGesture.internalBody.getter(&v7, a1);
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  v4 = v8[0];
  *(a1 + 88) = v7;
  *(a1 + 104) = v4;
  *(a1 + 113) = *(v8 + 9);
  return outlined init with copy of _ButtonGesture(&v7, &v6);
}

__n128 closure #1 in _ButtonGesture.internalBody.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    v7 = 0;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v8 = partial apply for closure #1 in closure #1 in closure #1 in _ButtonGesture.internalBody.getter;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = -1;
  }

  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  *(v9 + 41) = *(a1 + 25);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  outlined copy of AppIntentExecutor?(v4, v5);
  outlined init with copy of _ButtonGesture(a1, v14);
  MapGesture.init(_:)();
  result = v14[0];
  *a2 = v8;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = partial apply for closure #2 in closure #1 in _ButtonGesture.internalBody.getter;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = result;
  return result;
}

void closure #1 in closure #1 in closure #1 in _ButtonGesture.internalBody.getter(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 == 2;
  type metadata accessor for MainActor();
  v7[2] = a2;
  v7[3] = a3;
  v8 = v5;
  specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in _ButtonGesture.internalBody.getter, v7, "SwiftUI/ButtonGesture.swift", 27, 2u, 52, v6);
}

void closure #2 in closure #1 in _ButtonGesture.internalBody.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v6[2] = a4;
  specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #2 in closure #1 in _ButtonGesture.internalBody.getter, v6, "SwiftUI/ButtonGesture.swift", 27, 2u, 57, v5);
}

double _ButtonGesture.LegacyBody.body.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 9) << 8));
  if (v15)
  {
    v25 = v4;
    *&v26 = a1;
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v16 = v27;
    v32 = v27;
    v17 = 25.0;
    if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
    {
      v32 = v16;
      if (AnyInterfaceIdiom.accepts<A>(_:)())
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 70.0;
      }
    }

    v4 = v25;
    a1 = v26;
  }

  else
  {
    v17 = *&v14;
  }

  if (v13)
  {
    v12 = 0.0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *&v27 = v17;
  *(&v27 + 1) = v12;
  v28 = v10;
  v29 = v11;
  v30 = partial apply for closure #1 in Gesture<>.callbacks(pressing:pressed:);
  v31 = v18;
  outlined copy of AppIntentExecutor?(v10, v11);
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>(0);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>, MEMORY[0x1E697E860]);

  Gesture.cancellable()();
  v19 = v30;
  v20 = v31;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28, v29);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19, v20);
  MapGesture.init(_:)();
  v21 = *(v5 + 32);
  v26 = v27;
  v21(a1, v7, v4);
  type metadata accessor for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>(0);
  result = *&v26;
  *(a1 + *(v22 + 52)) = v26;
  return result;
}

uint64_t EnvironmentValues.buttonOutset.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.buttonOutset : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.buttonOutset : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ButtonGesture and conformance _ButtonGesture()
{
  result = lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture;
  if (!lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ButtonGesture, &type metadata for _ButtonGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture;
  if (!lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ButtonGesture, &type metadata for _ButtonGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ButtonGesture and conformance _ButtonGesture);
  }

  return result;
}

double EnvironmentValues.buttonOutset.setter(uint64_t a1, char a2)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for PubliclyPrimitiveGesture.internalBody.getter in conformance _ButtonGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7 = *v1;
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 25);
  closure #1 in _ButtonGesture.internalBody.getter(&v7, a1);
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  v4 = v8[0];
  *(a1 + 88) = v7;
  *(a1 + 104) = v4;
  *(a1 + 113) = *(v8 + 9);
  return outlined init with copy of _ButtonGesture(&v7, &v6);
}

uint64_t ButtonActionModifier.PlatformAction.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for ButtonActionModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t ButtonActionModifier.PlatformAction.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ButtonActionModifier(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  ButtonActionModifier.PlatformAction.modifier.getter(a2, a3, v10, &v14 - v8);
  v11 = *&v9[*(v6 + 36)];
  v12 = *(v7 + 8);

  v12(v9, v6);
  return v11;
}

uint64_t protocol witness for Rule.value.getter in conformance ButtonActionModifier<A>.PlatformAction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>)
{
  result = ButtonActionModifier.PlatformAction.value.getter(*v3, *(a1 + 16), *(a1 + 24), a2);
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = v8;
    v9 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t protocol witness for static PressableEventValue.isPressing(_:) in conformance LegacyButtonGesture.Value(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 25) == 2)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 25) > 1u)
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t LegacyButtonGesture.body.getter(double a2, double a3)
{
  type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v19 = partial apply for closure #1 in LegacyButtonGesture.body.getter;
  v20 = v13;
  v18[15] = 3;
  type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(0);
  v15 = v14;
  v16 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, MEMORY[0x1E697DD28]);
  Gesture.dependency(_:)();

  v19 = v15;
  v20 = v16;
  swift_getOpaqueTypeConformance2();
  Gesture.eventFilter<A>(forType:_:)();
  (*(v7 + 8))(v9, v6);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>, MEMORY[0x1E697E860]);
  Gesture.eventFilter<A>(forType:_:)();
  return outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(v12, type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
}

uint64_t closure #2 in closure #1 in LegacyButtonGesture.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = *(result + 16);
  v63 = *result;
  v64 = v6;
  v68 = *(result + 80);
  v7 = *(result + 48);
  v65 = *(result + 32);
  v66 = v7;
  v67 = *(result + 64);
  v8 = v63;
  v9 = v64;
  if (HIBYTE(v68) > 1u)
  {
    if (HIBYTE(v68) != 2)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v10 = 768;
      goto LABEL_16;
    }

    v11 = -a3;
    v12 = 0;
    v13 = 0;
    v14 = result;
    v71 = CGRectInset(*(&a4 - 2), v11, v11);
    x = v71.origin.x;
    y = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    v50 = v63;
    v51 = v64;
    v52 = *(v14 + 24);
    v53 = *(v14 + 40);
    v54[0] = *(v14 + 56);
    *(v54 + 9) = *(v14 + 65);
    SpatialEvent.location.getter();
    v46 = v20;
    v48 = v19;
    v55 = v63;
    v56 = v64;
    v57 = *(v14 + 24);
    v58 = *(v14 + 40);
    v59[0] = *(v14 + 56);
    *(v59 + 9) = *(v14 + 65);
    SpatialEvent.location.getter();
    v69.x = v21;
    v69.y = v22;
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    result = CGRectContainsPoint(v72, v69);
    if (result)
    {
      *&v23 = v48;
      *(&v23 + 1) = v46;
      v24 = *(&v63 + 1);
      v25 = 2;
      v26 = 1;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v23 = 0uLL;
      v25 = 3;
    }

    *a2 = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = v26;
    *(a2 + 25) = v25;
  }

  else
  {
    if (!HIBYTE(v68) && v64 == 1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v10 = 2;
LABEL_16:
      *(a2 + 24) = v10;
      return result;
    }

    v27 = *(result + 40);
    v60 = *(result + 24);
    v61 = v27;
    v62[0] = *(result + 56);
    *(v62 + 9) = *(result + 65);
    v28 = -a3;
    v29 = MEMORY[0x1E697DF80];
    v30 = MEMORY[0x1E697DE58];
    outlined init with copy of ButtonPressingAction?(&v63, &v50, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697DE58]);
    v73.origin.x = 0.0;
    v73.origin.y = 0.0;
    v73.size.width = a4;
    v73.size.height = a5;
    v74 = CGRectInset(v73, v28, v28);
    v33 = v74.origin.x;
    v34 = v74.origin.y;
    v35 = v74.size.width;
    v36 = v74.size.height;
    v52 = v60;
    v50 = v8;
    v51 = v9;
    v53 = v61;
    v54[0] = v62[0];
    *(v54 + 9) = *(v62 + 9);
    SpatialEvent.location.getter();
    v47 = v38;
    v49 = v37;
    v55 = v8;
    v56 = v9;
    v57 = v60;
    v58 = v61;
    v59[0] = v62[0];
    *(v59 + 9) = *(v62 + 9);
    SpatialEvent.location.getter();
    v70.x = v39;
    v70.y = v40;
    v75.origin.x = v33;
    v75.origin.y = v34;
    v75.size.width = v35;
    v75.size.height = v36;
    v41 = CGRectContainsPoint(v75, v70);
    result = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_2(&v63, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, v29, v30);
    v42.i64[0] = v49;
    v42.i64[1] = v47;
    v43 = *(&v8 + 1);
    if (v41)
    {
      v44 = -1;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *a2 = vandq_s8(v42, vdupq_n_s64(v44));
    *(a2 + 16) = v43;
    if (v41)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    *(a2 + 24) = v45;
    *(a2 + 25) = 0;
  }

  return result;
}

uint64_t (*EnvironmentValues.buttonOutset.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues.buttonOutset.modify;
}

void EnvironmentValues.buttonOutset.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t assignWithTake for _ButtonGesture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v4;
      *(a1 + 24) = v6;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>)
  {
    v7[5] = v0;
    v7[6] = v1;
    type metadata accessor for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<PrimitiveButtonGesture, ()> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<PrimitiveButtonGesture, ()>, MEMORY[0x1E697DDD8]);
    v6 = lazy protocol witness table accessor for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody();
    v7[0] = MEMORY[0x1E69808D8];
    v7[1] = v5;
    v7[2] = v6;
    result = swift_getWitnessTable(MEMORY[0x1E6981CF0], v4, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>)
  {
    type metadata accessor for _MapGesture<PrimitiveButtonGesture, ()>();
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ImprovedButtonGestureFeature, _MapGesture<PrimitiveButtonGesture, ()>, _ButtonGesture.LegacyBody>);
    }
  }
}

void type metadata accessor for _MapGesture<PrimitiveButtonGesture, ()>()
{
  if (!lazy cache variable for type metadata for _MapGesture<PrimitiveButtonGesture, ()>)
  {
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<PrimitiveButtonGesture, ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody()
{
  result = lazy protocol witness table cache variable for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody;
  if (!lazy protocol witness table cache variable for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ButtonGesture.LegacyBody, &unk_1F000EAD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ButtonGesture.LegacyBody and conformance _ButtonGesture.LegacyBody);
  }

  return result;
}

double destroy for _ButtonGesture.LegacyBody(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));

  if (*(a1 + 32))
  {
  }

  return result;
}

uint64_t initializeWithCopy for _ButtonGesture.LegacyBody(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = *(a2 + 32);
  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;

  if (v7)
  {
    v9 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v9;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for _ButtonGesture.LegacyBody(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 9);
  *a1 = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
  v10 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v10;

  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v11)
    {
      v13 = *(a2 + 40);
      *(a1 + 32) = v11;
      *(a1 + 40) = v13;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v11)
  {

    goto LABEL_7;
  }

  v12 = *(a2 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;

LABEL_8:
  v14 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v14;
  return a1;
}

uint64_t assignWithTake for _ButtonGesture.LegacyBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *a1;
  v7 = *(a1 + 9);
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = *(a2 + 16);

  v9 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v9)
    {
      v11 = *(a2 + 40);
      *(a1 + 32) = v9;
      *(a1 + 40) = v11;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_8;
  }

  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = *(a2 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;

LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ButtonGesture.LegacyBody(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for _ButtonGesture.LegacyBody(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveButtonGesture(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v6);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for PrimitiveButtonGesture(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) == 255)
  {
    if (v4 == 255)
    {
      v14 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v14;
    }

    else
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      v12 = v4 & 1;
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v11);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v6);
    v8 = *a1;
    v9 = *(a1 + 8);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v8, v9);
  }

  v15 = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = v15;

  v16 = *(a2 + 5);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v16;
  return a1;
}

uint64_t assignWithTake for PrimitiveButtonGesture(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 255)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4 & 1;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v5, v6);
LABEL_6:
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void specialized implicit closure #1 in _GraphInputs.buttonOutset.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonOutsetKey>, &unk_1F000EC68, &protocol witness table for ButtonOutsetKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonOutsetKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t static PrimitiveButtonGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[5];
  v25 = a2[4];
  v26 = v5;
  v27[0] = a2[6];
  *(v27 + 12) = *(a2 + 108);
  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  v7 = a2[3];
  v23 = a2[2];
  v24 = v7;
  type metadata accessor for <<opaque return type of Gesture.requiredTapCount(_:)>>.0(0);
  outlined init with copy of _GraphInputs(&v21, v15);
  if (one-time initialization token for buttonOutset != -1)
  {
    swift_once();
  }

  *&v11 = static CachedEnvironment.ID.buttonOutset;
  swift_beginAccess();
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v8 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *v15 = v21;
  *&v15[16] = v22;
  v16 = v23;
  _GraphInputs.interfaceIdiom.getter();
  *v15 = v4;
  *&v15[4] = v8;
  *&v15[8] = v11;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child();
  Attribute.init<A>(body:value:flags:update:)();
  v18 = v25;
  v19 = v26;
  v20[0] = v27[0];
  *(v20 + 12) = *(v27 + 12);
  *v15 = v21;
  *&v15[16] = v22;
  v16 = v23;
  v17 = v24;
  type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>(255);
  v12 = v9;
  v13 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>, MEMORY[0x1E697E860]);
  swift_getOpaqueTypeConformance2();
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  *v15 = v12;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DE58]);
  lazy protocol witness table accessor for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase();
  Attribute.init<A>(body:value:flags:update:)();

  _GestureOutputs.init(phase:)();
  outlined destroy of _GraphInputs(&v21);
  *(a3 + 4) = HIDWORD(v12);

  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  return result;
}

uint64_t PrimitiveButtonGesture.Child.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  if (*(Value + 8))
  {
    *&v20[0] = v1;
    *(&v20[0] + 1) = v2;
    v4 = 25.0;
    if ((AnyInterfaceIdiom.accepts<A>(_:)() & 1) == 0)
    {
      *&v20[0] = v1;
      *(&v20[0] + 1) = v2;
      if (AnyInterfaceIdiom.accepts<A>(_:)())
      {
        v4 = 0.0;
      }

      else
      {
        v4 = 70.0;
      }
    }
  }

  else
  {
    v4 = *Value;
  }

  v5 = AGGraphGetValue();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of ButtonPressingAction?(*v8, v10, v11);
  v12 = AGGraphGetValue();
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  v21 = v7;
  outlined copy of ButtonPressingAction?(v9, v10, v11);

  outlined consume of ButtonPressingAction?(v9, v10, v11);
  *&v16 = v4;
  *(&v16 + 1) = v6;
  LOBYTE(v17) = v7;
  *(&v17 + 1) = v9;
  *&v18 = v10;
  BYTE8(v18) = v11;
  *&v19 = v14;
  *(&v19 + 1) = v13;
  type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>(0);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>, MEMORY[0x1E697E860]);
  Gesture.requiredTapCount(_:)();
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v19;
  return _s7SwiftUI16PlatformItemListV0D0VWOhTm_4(v20, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PrimitiveButtonGesture.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Gesture.requiredTapCount(_:)>>.0(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance PrimitiveButtonGesture.Phase()
{
  type metadata accessor for CGFloat?(0, &lazy cache variable for type metadata for GesturePhase<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DE58]);
  AGGraphGetValue();
  return GesturePhase.withValue<A>(_:)();
}

void type metadata accessor for <<opaque return type of Gesture.requiredTapCount(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PrimitiveButtonGestureCallbacks>, PrimitiveButtonGestureCore>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TappableSpatialEvent>, ModifierGesture<RepeatGesture<TappableSpatialEvent>, SingleTapGesture<TappableSpatialEvent>>>(255);
    lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TappableSpatialEvent>, ModifierGesture<RepeatGesture<TappableSpatialEvent>, SingleTapGesture<TappableSpatialEvent>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TappableSpatialEvent>, ModifierGesture<RepeatGesture<TappableSpatialEvent>, SingleTapGesture<TappableSpatialEvent>>>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.requiredTapCount(_:)>>.0);
    }
  }
}

uint64_t PrimitiveButtonGestureCore.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v24[2] = a3;
  type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(0, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>(0);
  v24[1] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2 & 1;
  v26 = partial apply for closure #1 in PrimitiveButtonGestureCore.body.getter;
  v27 = v18;
  v25 = 3;
  type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(0);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, MEMORY[0x1E697DD28]);
  Gesture.dependency(_:)();

  v26 = v20;
  v27 = v21;
  swift_getOpaqueTypeConformance2();
  Gesture.eventFilter<A>(forType:_:)();
  (*(v9 + 8))(v11, v8);
  v22 = MEMORY[0x1E697E860];
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>, MEMORY[0x1E697E860]);
  Gesture.eventFilter<A>(forType:_:)();
  outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(v14, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>, v22);
  Gesture.cancellable()();
  return outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(v17, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
}

void closure #2 in closure #1 in PrimitiveButtonGestureCore.body.getter(uint64_t *result@<X0>, uint64_t a4@<X8>, double a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>)
{
  v12 = *result;
  v13 = result[1];
  v14 = result[2];
  if (*(result + 81) > 1u)
  {
    if (*(result + 81) == 3)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v15 = 768;
      goto LABEL_7;
    }

    v33 = *result;
    v34 = v13;
    v35 = v14;
    v17 = *(result + 5);
    v36 = *(result + 3);
    origin = v17;
    v38[0] = *(result + 7);
    *(v38 + 9) = *(result + 65);
    SpatialEvent.location.getter();
    v39.x = v18;
    v39.y = v19;
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    v41.size.width = a6;
    v41.size.height = a7;
    if (CGRectContainsPoint(v41, v39))
    {
      v20 = 0;
    }

    else
    {
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = a6;
      v42.size.height = a7;
      v43 = CGRectInset(v42, -a5, -a5);
      x = v43.origin.x;
      y = v43.origin.y;
      width = v43.size.width;
      height = v43.size.height;
      v33 = v12;
      v34 = v13;
      v35 = v14;
      v43.origin = *(result + 5);
      v36 = *(result + 3);
      origin = v43.origin;
      v38[0] = *(result + 7);
      *(v38 + 9) = *(result + 65);
      SpatialEvent.location.getter();
      v40.x = v26;
      v40.y = v27;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      if (CGRectContainsPoint(v44, v40))
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    v33 = v12;
    v34 = v13;
    v35 = v14;
    v28 = *(result + 5);
    v36 = *(result + 3);
    origin = v28;
    v38[0] = *(result + 7);
    *(v38 + 9) = *(result + 65);
    SpatialEvent.location.getter();
    if (v20 > 1u)
    {
      v31 = 0;
      v20 = 0;
      v29 = 0uLL;
      v32 = 3;
    }

    else
    {
      *(&v29 + 1) = v30;
      v31 = v13;
      v32 = 2;
    }

    *a4 = v29;
    *(a4 + 16) = v31;
    *(a4 + 24) = v20;
    *(a4 + 25) = v32;
  }

  else if (*(result + 81))
  {
    v16 = *(result + 5);
    v36 = *(result + 3);
    origin = v16;
    v38[0] = *(result + 7);
    *(v38 + 9) = *(result + 65);
    v33 = v12;
    v34 = v13;
    v35 = v14;
    PrimitiveButtonGestureCore.makeValue(event:size:)(&v33, a4, a6, a7, a5);
    *(a4 + 25) = 1;
  }

  else
  {
    if (v14 == 1)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v15 = 3;
LABEL_7:
      *(a4 + 24) = v15;
      return;
    }

    v21 = *(result + 5);
    v36 = *(result + 3);
    origin = v21;
    v38[0] = *(result + 7);
    *(v38 + 9) = *(result + 65);
    v33 = v12;
    v34 = v13;
    v35 = v14;
    PrimitiveButtonGestureCore.makeValue(event:size:)(&v33, a4, a6, a7, a5);
    *(a4 + 25) = 0;
  }
}

void PrimitiveButtonGestureCore.makeValue(event:size:)(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>)
{
  v9 = *(a1 + 8);
  SpatialEvent.location.getter();
  v21.x = v10;
  v21.y = v11;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = a3;
  v23.size.height = a4;
  if (CGRectContainsPoint(v23, v21))
  {
    v12 = 0;
  }

  else
  {
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = a3;
    v24.size.height = a4;
    v25 = CGRectInset(v24, -a5, -a5);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    SpatialEvent.location.getter();
    v22.x = v17;
    v22.y = v18;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (CGRectContainsPoint(v26, v22))
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  SpatialEvent.location.getter();
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
}

uint64_t (*PrimitiveButtonGestureCallbacks.dispatch(phase:state:)(uint64_t *a1, _BYTE *a2))()
{
  v4 = *(a1 + 24);
  result = *(a1 + 25);
  if (result > 1)
  {
    if (result == 2)
    {
      v9 = a1[1];
      v8 = a1[2];
      v10 = *a1;
      v33 = *v2;
      v34 = *(v2 + 16);
      v11 = v34;
      if (v34 != 255)
      {
        v12 = v33;
        v13 = *a2;
        if (v34)
        {
          if ((v13 - 1) >= 2)
          {
            goto LABEL_10;
          }
        }

        else if (v13 != 2)
        {
          goto LABEL_10;
        }

        v22 = swift_allocObject();
        v23 = v2[1];
        *(v22 + 40) = *v2;
        *(v22 + 16) = v12;
        *(v22 + 32) = v11 & 1;
        *(v22 + 56) = v23;
        *(v22 + 72) = *(v2 + 4);
        *(v22 + 80) = v10;
        *(v22 + 88) = v9;
        *(v22 + 96) = v8;
        *(v22 + 104) = v4;
        *a2 = 0;
        v24 = MEMORY[0x1E69E6720];
        outlined init with copy of ButtonPressingAction?(&v33, v32, &lazy cache variable for type metadata for ButtonPressingAction?, &type metadata for ButtonPressingAction, MEMORY[0x1E69E6720]);
        outlined init with copy of ButtonPressingAction?(&v33, v32, &lazy cache variable for type metadata for ButtonPressingAction?, &type metadata for ButtonPressingAction, v24);

        return partial apply for closure #2 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
      }

LABEL_10:
      v15 = swift_allocObject();
      v16 = v2[1];
      *(v15 + 16) = *v2;
      *(v15 + 32) = v16;
      *(v15 + 48) = *(v2 + 4);
      *(v15 + 56) = v10;
      *(v15 + 64) = v9;
      *(v15 + 72) = v8;
      *(v15 + 80) = v4;
      *a2 = 0;
      outlined init with copy of ButtonPressingAction?(&v33, v32, &lazy cache variable for type metadata for ButtonPressingAction?, &type metadata for ButtonPressingAction, MEMORY[0x1E69E6720]);

      return partial apply for closure #3 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
    }

    v17 = *(v2 + 16);
    if (v17 != 255)
    {
      v18 = *v2;
      v19 = *(v2 + 1);
      v20 = *a2;
      if (v17)
      {
        if ((v20 - 1) >= 2)
        {
          goto LABEL_14;
        }
      }

      else if (v20 != 2)
      {
        goto LABEL_14;
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v18;
      *(v26 + 24) = v19;
      *(v26 + 32) = v17 & 1;
      *a2 = 0;
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v18, v19);
      return partial apply for closure #1 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
    }

LABEL_14:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (!result)
  {
    return result;
  }

  v6 = *a2;
  if (v4 >= 2)
  {
    if (v6 != 1)
    {
      v7 = 1;
      goto LABEL_22;
    }

    return 0;
  }

  if (v6 == 2)
  {
    return 0;
  }

  v7 = 2;
LABEL_22:
  v27 = *(v2 + 16);
  if (v27 == 255 || v6 == v7 || (((v6 - 1) < 2) & v27) != 0)
  {
    result = 0;
    *a2 = v7;
  }

  else
  {
    v28 = *v2;
    v29 = *(v2 + 1);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    *(v31 + 32) = v27 & 1;
    *(v31 + 33) = v7;
    *a2 = v7;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v28, v29);
    return partial apply for closure #4 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:);
  }

  return result;
}

uint64_t (*protocol witness for GestureCallbacks.cancel(state:) in conformance PrimitiveButtonGestureCallbacks(unsigned __int8 *a1))()
{
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  if (v2)
  {
    if ((v3 - 1) > 1)
    {
      return 0;
    }
  }

  else if (v3 != 2)
  {
    return 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2 & 1;
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v4, v5);
  return partial apply for closure #1 in PrimitiveButtonGestureCallbacks.cancel(state:);
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonGesture.Child, &unk_1EFF89680, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonGesture.Child and conformance PrimitiveButtonGesture.Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonGesture.Phase, &unk_1F000EDF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonGesture.Phase and conformance PrimitiveButtonGesture.Phase);
  }

  return result;
}

uint64_t outlined copy of ButtonPressingAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of TransferableDropAction<A>.UserActionStorage<A>(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of ButtonPressingAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(a1, a2);
  }

  return a1;
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, MEMORY[0x1E697E958]);
    lazy protocol witness table accessor for type LegacyButtonGesture and conformance LegacyButtonGesture();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>);
    }
  }
}

void type metadata accessor for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>)
  {
    _s7SwiftUI16CallbacksGestureVyAA015PrimitiveButtondC033_2218E1141B3D7C3A65B6697591AFB638LLVGMaTm_0(255, &lazy cache variable for type metadata for PressableGestureCallbacks<LegacyButtonGesture.Value>, lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value, &unk_1F000EFF8, type metadata accessor for PressableGestureCallbacks);
    lazy protocol witness table accessor for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>();
    v1 = type metadata accessor for CallbacksGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>);
    }
  }
}

void _s7SwiftUI16CallbacksGestureVyAA015PrimitiveButtondC033_2218E1141B3D7C3A65B6697591AFB638LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value()
{
  result = lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value;
  if (!lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LegacyButtonGesture.Value, &unk_1F000EFF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value;
  if (!lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LegacyButtonGesture.Value, &unk_1F000EFF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>()
{
  result = lazy protocol witness table cache variable for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>;
  if (!lazy protocol witness table cache variable for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>)
  {
    _s7SwiftUI16CallbacksGestureVyAA015PrimitiveButtondC033_2218E1141B3D7C3A65B6697591AFB638LLVGMaTm_0(255, &lazy cache variable for type metadata for PressableGestureCallbacks<LegacyButtonGesture.Value>, lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value, &unk_1F000EFF8, type metadata accessor for PressableGestureCallbacks);
    result = swift_getWitnessTable(protocol conformance descriptor for PressableGestureCallbacks<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PressableGestureCallbacks<LegacyButtonGesture.Value> and conformance PressableGestureCallbacks<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LegacyButtonGesture and conformance LegacyButtonGesture()
{
  result = lazy protocol witness table cache variable for type LegacyButtonGesture and conformance LegacyButtonGesture;
  if (!lazy protocol witness table cache variable for type LegacyButtonGesture and conformance LegacyButtonGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LegacyButtonGesture, &unk_1F000EF78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyButtonGesture and conformance LegacyButtonGesture);
  }

  return result;
}

void type metadata accessor for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<LegacyButtonGesture.Value, ()>, &unk_1F000EFF8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA98]);
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255);
    lazy protocol witness table accessor for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>();
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<MapGesture<LegacyButtonGesture.Value, ()>, <<opaque return type of Gesture.truePreference<A>(_:)>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<LegacyButtonGesture.Value, ()>, &unk_1F000EFF8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<LegacyButtonGesture.Value, ()> and conformance MapGesture<A, B>);
  }

  return result;
}

uint64_t specialized static LegacyButtonGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PrimitiveButtonGestureCore.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PrimitiveButtonGestureCore.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double destroy for PrimitiveButtonGesture(uint64_t a1)
{
  if (*(a1 + 16) != 255)
  {
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*a1, *(a1 + 8));
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveButtonGestureCallbacks(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v6);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;

  return a1;
}

uint64_t assignWithCopy for PrimitiveButtonGestureCallbacks(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) == 255)
  {
    if (v4 == 255)
    {
      v14 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v14;
    }

    else
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      v12 = v4 & 1;
      outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v11);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = v4 & 1;
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v6);
    v8 = *a1;
    v9 = *(a1 + 8);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v8, v9);
  }

  v15 = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = v15;

  return a1;
}

uint64_t assignWithTake for PrimitiveButtonGestureCallbacks(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 255)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    outlined destroy of ButtonPressingAction(a1);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4 & 1;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v5, v6);
LABEL_6:
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyButtonGesture.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacyButtonGesture.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for _MapGesture<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, ()>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, ()>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for _MapGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _MapGesture<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonPressPhase and conformance ButtonPressPhase()
{
  result = lazy protocol witness table cache variable for type ButtonPressPhase and conformance ButtonPressPhase;
  if (!lazy protocol witness table cache variable for type ButtonPressPhase and conformance ButtonPressPhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonPressPhase, &type metadata for ButtonPressPhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonPressPhase and conformance ButtonPressPhase);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LegacyButtonGesture.Value(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LegacyButtonGesture.Value and conformance LegacyButtonGesture.Value();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #4 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 33);
  if (*(v0 + 32) == 1)
  {
    return v1((v2 - 1) < 2);
  }

  else
  {
    return v1(v2);
  }
}

uint64_t partial apply for closure #2 in PrimitiveButtonGestureCallbacks.dispatch(phase:state:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  (*(v0 + 16))(0);
  return (*(v0 + 64))(v1, v2, 0);
}

uint64_t objectdestroy_75Tm_0(uint64_t a1)
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v1 + 16), *(v1 + 24));

  return swift_deallocObject();
}

void type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(a4, a5, MEMORY[0x1E697E860]);
    v8 = type metadata accessor for SizeGesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>)
  {
    v1 = MEMORY[0x1E697DF80];
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for DelayedGesture<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697E340]);
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for EventListener<SpatialEvent>, v1, MEMORY[0x1E697DF78], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>();
    lazy protocol witness table accessor for type EventListener<SpatialEvent> and conformance EventListener<A>();
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>()
{
  result = lazy protocol witness table cache variable for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>;
  if (!lazy protocol witness table cache variable for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for DelayedGesture<SpatialEvent>, MEMORY[0x1E697DF80], MEMORY[0x1E697E340]);
    result = swift_getWitnessTable(MEMORY[0x1E697E348], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DelayedGesture<SpatialEvent> and conformance DelayedGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, MEMORY[0x1E697DF80], &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value> and conformance MapGesture<A, B>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<PrimitiveButtonGestureCore.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value);
    type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, MEMORY[0x1E697DD28]);
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGFloat?(255, a2, a3, MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable(MEMORY[0x1E697DCE0], v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value, MEMORY[0x1E697DCD8]);
    type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(255);
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<PrimitiveButtonGestureCore.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<PrimitiveButtonGestureCore.Value>, &type metadata for PrimitiveButtonGestureCore.Value);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
    }
  }
}

uint64_t partial apply for closure #1 in PrimitiveButtonGestureCore.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = v9;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 16) = closure #1 in closure #1 in PrimitiveButtonGestureCore.body.getter;
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in closure #1 in PrimitiveButtonGestureCore.body.getter;
  *(a1 + 40) = result;
  return result;
}

void type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(a4, a5, MEMORY[0x1E697DD28]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, PrimitiveButtonGestureCore.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, a3, MEMORY[0x1E697DF80], a4, MEMORY[0x1E697DA98]);
    type metadata accessor for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>(255);
    a5();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>, MEMORY[0x1E697E860]);
    v7 = type metadata accessor for ModifierGesture();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for MapGesture<SpatialEvent, LegacyButtonGesture.Value>, MEMORY[0x1E697DF80], &unk_1F000EFF8, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<SpatialEvent, LegacyButtonGesture.Value> and conformance MapGesture<A, B>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8, MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, &lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>);
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8);
    type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<ModifierGesture<MapGesture<SpatialEvent, LegacyButtonGesture.Value>, ModifierGesture<DelayedGesture<SpatialEvent>, EventListener<SpatialEvent>>>>, MEMORY[0x1E697DD28]);
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    }
  }
}

uint64_t partial apply for closure #1 in LegacyButtonGesture.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *a1 = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = closure #1 in closure #1 in PrimitiveButtonGestureCore.body.getter;
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in closure #1 in LegacyButtonGesture.body.getter;
  *(a1 + 40) = result;
  return result;
}

uint64_t outlined destroy of ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ButtonPressingAction?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for CGFloat?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>)
  {
    type metadata accessor for CGFloat?(255, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8, MEMORY[0x1E697DCD8]);
    type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>(255);
    lazy protocol witness table accessor for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>(&lazy protocol witness table cache variable for type EventFilter<LegacyButtonGesture.Value> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<LegacyButtonGesture.Value>, &unk_1F000EFF8);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonGestureCore.LocationInBounds, &unk_1F000F328, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonGestureCore.LocationInBounds and conformance PrimitiveButtonGestureCore.LocationInBounds);
  }

  return result;
}

uint64_t specialized SearchBoundProperty.update(external:)(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  type metadata accessor for TextSelection?(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a1, v10, type metadata accessor for TextSelection?);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v10, type metadata accessor for TextSelection?);
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  v12 = *(v1 + *(v11 + 36));
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a1, v5, type metadata accessor for TextSelection?);
  (*(v8 + 56))(v5, 0, 1, v7);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  outlined assign with take of TextSelection??(v5, v12 + v13);
  result = swift_endAccess();
  ++*(v12 + *(*v12 + 104));
  return result;
}

uint64_t closure #1 in UIKitSearchFieldAdaptor.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a2, v8, type metadata accessor for Binding<SearchFieldState>);
  v9 = a1[15];
  v37 = a1[14];
  v38 = v9;
  v39 = a1[16];
  v10 = a1[11];
  v33 = a1[10];
  v34 = v10;
  v11 = a1[13];
  v35 = a1[12];
  v36 = v11;
  v12 = a1[7];
  v29 = a1[6];
  v30 = v12;
  v13 = a1[9];
  v31 = a1[8];
  v32 = v13;
  v14 = a1[3];
  v25 = a1[2];
  v26 = v14;
  v15 = a1[5];
  v27 = a1[4];
  v28 = v15;
  v16 = 0;
  v17 = 0;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v25) != 1)
  {
    v24[12] = v37;
    v24[13] = v38;
    v24[14] = v39;
    v24[8] = v33;
    v24[9] = v34;
    v24[10] = v35;
    v24[11] = v36;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v18 = PlatformItem.PrimaryContent.text.getter();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 string];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v21;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  outlined init with take of SearchBoundProperty<TextSelection?>(v8, a3, type metadata accessor for Binding<SearchFieldState>);
  result = type metadata accessor for KitRepresentable(0);
  v23 = (a3 + *(result + 20));
  *v23 = v16;
  v23[1] = v17;
  return result;
}

double closure #2 in UIKitSearchFieldAdaptor.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SearchFieldConfiguration(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  outlined copy of Text.Storage(v4, v5, v6);

  return result;
}

double protocol witness for View.body.getter in conformance UIKitSearchFieldAdaptor@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v2, &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for UIKitSearchFieldAdaptor);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  outlined init with take of SearchBoundProperty<TextSelection?>(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for UIKitSearchFieldAdaptor);
  v12 = v2;
  type metadata accessor for KitRepresentable(0);
  PlatformItemsReader.init(for:content:source:)();
  v8 = v14;
  *a2 = v13;
  a2[1] = v8;
  result = *&v15;
  v10 = v16;
  a2[2] = v15;
  a2[3] = v10;
  return result;
}

id KitRepresentable.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF28]) init];
  [v2 setDelegate_];
  [v2 addTarget:v1 action:sel_textDidChange_ forControlEvents:0x20000];
  [v2 addTarget:v1 action:sel_editingDidBegin_ forControlEvents:0x10000];
  [v2 addTarget:v1 action:sel_editingDidEnd_ forControlEvents:0x40000];
  return v2;
}

uint64_t KitRepresentable.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v3 = v2;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v71 - v13;
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  v83 = v14;
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchEnvironmentStorage.BoundProperties?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v78 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v80 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v71 - v21;
  v76 = type metadata accessor for AttributedString();
  v22 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *(a2 + 32);
  v28 = *(a2 + 5);
  v29 = a2[1];
  v88 = *a2;
  v89 = v29;
  v90 = v26;
  RepresentableContextValues.environment.getter();
  v31 = v91;
  v30 = v92;
  specialized UIKitTextInput<>.update(in:)(v91, v92);
  specialized UIKitTextInputTraits.updateTraits(in:)(v31, v30);
  v77 = v31;
  v82 = v30;
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v31, v30);
  v84 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating;
  v85 = v28;
  *(v28 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating) = 1;
  v32 = (v3 + *(type metadata accessor for KitRepresentable(0) + 20));
  v33 = v32[1];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = *v32;
  v35 = [a1 placeholder];
  if (v35)
  {
    v36 = v35;
    v71 = a1;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v37 == v34 && v33 == v39)
    {

      a1 = v71;
LABEL_7:
      [a1 setPlaceholder_];
      goto LABEL_9;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v71;
    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = MEMORY[0x18D00C850](v34, v33);
  [a1 setPlaceholder_];

LABEL_9:
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  (*(v22 + 32))(v24, &v27[*(v25 + 36)], v76);
  String.init(_:)();
  v42 = v77;
  v43 = v82;
  *&v88 = v77;
  *(&v88 + 1) = v82;
  v91 = 0;
  v92 = 0;
  v87 = 128;
  v44 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();

  v45 = v85;
  v46 = v81;
  v47 = v79;
  if (!v44)
  {
    goto LABEL_16;
  }

  v48 = [a1 attributedText];
  if (v48)
  {
    v49 = v48;
    type metadata accessor for NSAttributedString();
    v50 = v44;
    v51 = static NSObject.== infix(_:_:)();

    if (v51)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v52 = v44;
  }

  [a1 setAttributedText_];
LABEL_15:

LABEL_16:
  *&v88 = v42;
  *(&v88 + 1) = v43;
  v53 = v78;
  EnvironmentValues.searchBoundProperties.getter(v78);
  v54 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
  {
    _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v53, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
    v55 = v83;
    (*(v46 + 56))(v47, 1, 1, v83);
    v56 = v86;
  }

  else
  {
    outlined init with copy of SearchBoundProperty<TextSelection?>?(v53 + *(v54 + 24), v47, type metadata accessor for SearchBoundProperty<TextSelection?>?);
    _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v53, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    v56 = v86;
    v55 = v83;
  }

  v57 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection;
  swift_beginAccess();
  outlined assign with take of SearchBoundProperty<TextSelection?>?(v47, v45 + v57);
  swift_endAccess();
  v58 = v45 + v57;
  v59 = v80;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v58, v80, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  if ((*(v46 + 48))(v59, 1, v55) != 1)
  {
    v62 = v75;
    outlined init with take of SearchBoundProperty<TextSelection?>(v59, v75, type metadata accessor for SearchBoundProperty<TextSelection?>);
    v63 = *(v62 + *(v55 + 40));
    if (v63 != -1)
    {
      v64 = *(v62 + *(v55 + 36));
      v65 = *(v64 + *(*v64 + 104));
      if (v65 != -1 && v63 == v65)
      {
        _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
        v66 = v73;
        MEMORY[0x18D00ACC0]();
        SelectionRanges<>.init(_:)(v66, v56);
        v67 = v74;
        UITextField.selection.getter(v74);
        v68 = v67;
        LOBYTE(v67) = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v56, v67);
        outlined destroy of SelectionRanges<String.Index>(v68);
        if ((v67 & 1) == 0)
        {
          outlined init with copy of SelectionRanges<String.Index>(v56, v68);
          v70 = v72;
          outlined init with copy of SelectionRanges<String.Index>(v68, v72);
          UITextField.selection.setter(v70);

          outlined destroy of SelectionRanges<String.Index>(v68);
          outlined destroy of SelectionRanges<String.Index>(v56);
          goto LABEL_27;
        }

        outlined destroy of SelectionRanges<String.Index>(v56);
      }
    }

LABEL_27:
    v60 = type metadata accessor for SearchBoundProperty<TextSelection?>;
    v61 = v62;
    goto LABEL_28;
  }

  v60 = type metadata accessor for SearchBoundProperty<TextSelection?>?;
  v61 = v59;
LABEL_28:
  result = _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v61, v60);
  *(v45 + v84) = 0;
  return result;
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance KitRepresentable@<X0>(void *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v2, v6, type metadata accessor for Binding<SearchFieldState>);
  v7 = type metadata accessor for Coordinator(0);
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating] = 0;
  v9 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection;
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *&v8[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_expectedSelectionVersion] = 0;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v6, &v8[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state], type metadata accessor for Binding<SearchFieldState>);
  v13.receiver = v8;
  v13.super_class = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  result = _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v6, type metadata accessor for Binding<SearchFieldState>);
  *a1 = v11;
  return result;
}

double protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance KitRepresentable(uint64_t a1, id a2)
{
  [a2 sizeThatFits_];
  static _LayoutTraits.Dimension.fixed(_:)();
  result = v5;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  return result;
}

void Coordinator.textDidChange(_:)(void *a1)
{
  v35 = a1;
  v2 = type metadata accessor for AttributedString.CharacterView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  type metadata accessor for Binding<SearchFieldState>(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_isViewUpdating))
  {
    return;
  }

  v33 = v3;
  v34 = v2;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v1 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state, v17, type metadata accessor for Binding<SearchFieldState>);
  v18 = [v35 text];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  AttributeContainer.init()();
  v32 = v13;
  AttributedString.init(_:attributes:)();
  v20 = v38;
  v35 = v17;
  MEMORY[0x18D00ACC0](v15);
  v21 = *(v37 + 36);
  (*(v8 + 16))(v10, &v20[v21], v7);
  (*(v8 + 24))(&v20[v21], v13, v7);
  v22 = v36;
  AttributedString.characters.getter();
  v37 = AttributedString.CharacterView._count.getter();
  v23 = v34;
  v24 = *(v33 + 8);
  v24(v22, v34);
  AttributedString.characters.getter();
  v25 = AttributedString.CharacterView._count.getter();
  v24(v22, v23);
  v26 = *(v8 + 8);
  v26(v10, v7);
  v26(v32, v7);
  v27 = v25 - v37;
  if (__OFSUB__(v25, v37))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v28 = v35;
  if (v27 < 0)
  {
    v29 = __OFSUB__(0, v27);
    v27 = v37 - v25;
    if (v29)
    {
      goto LABEL_17;
    }
  }

  if (v27 == 1 && v25 >= 1 && *v20 != 2)
  {
    v30 = v20[2];
    if (v30 != 2 || (v30 = v20[3], v30 != 2))
    {
      if (v30)
      {
        *v20 = 1;
      }
    }
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v20, type metadata accessor for SearchFieldState);
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v28, type metadata accessor for Binding<SearchFieldState>);
}

uint64_t closure #1 in Coordinator.editingDidBegin(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(a1 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state, v11, type metadata accessor for Binding<SearchFieldState>);
  MEMORY[0x18D00ACC0](v9);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v7, v4, type metadata accessor for SearchFieldState);
  v12 = *v4;
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v13 = v4[2];
    if (v13 == 2)
    {
      v13 = v4[3];
      if (v13 == 2)
      {
        LOBYTE(v13) = 0;
      }
    }

    *v4 = v13 & 1;
    v4[*(v2 + 40)] = 1;
  }

  if (!specialized static SearchFieldState.== infix(_:_:)(v7, v4))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v4, type metadata accessor for SearchFieldState);
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v7, type metadata accessor for SearchFieldState);
  return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v11, type metadata accessor for Binding<SearchFieldState>);
}

uint64_t closure #1 in Coordinator.editingDidEnd(_:)(unsigned __int8 *a1)
{
  v34 = a1;
  v32 = type metadata accessor for AttributedString.CharacterView();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  type metadata accessor for Binding<SearchFieldState>(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<TextSelection?>?(&v34[OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state], v19, type metadata accessor for Binding<SearchFieldState>);
  v31 = v19;
  MEMORY[0x18D00ACC0](v17);
  v34 = v15;
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v15, v12, type metadata accessor for SearchFieldState);
  *v12 = 2;
  v29 = v9;
  AttributedString.init(stringLiteral:)();
  v33 = v10;
  v20 = *(v10 + 36);
  v21 = v6;
  (*(v4 + 16))(v6, &v12[v20], v3);
  (*(v4 + 24))(&v12[v20], v9, v3);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v22 = *(v30 + 8);
  v23 = v32;
  v22(v2, v32);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v22(v2, v23);
  v24 = *(v4 + 8);
  v24(v21, v3);
  v24(v29, v3);
  if ((v12[8] & 1) == 0)
  {
    *(v12 + 1) = 0;
    v12[8] = 1;
  }

  v25 = v34;
  v12[*(v33 + 40)] = 0;
  v26 = specialized static SearchFieldState.== infix(_:_:)(v25, v12);
  v27 = v31;
  if (!v26)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v25, type metadata accessor for SearchFieldState);
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v12, type metadata accessor for SearchFieldState);
  return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v27, type metadata accessor for Binding<SearchFieldState>);
}

void type metadata completion function for Coordinator(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Coordinator.textFieldDidChangeSelection(_:)()
{
  v1 = v0;
  type metadata accessor for TextSelection?(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v31 - v5;
  type metadata accessor for SearchBoundProperty<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  UITextField.selection.getter(&v31 - v20);
  v22 = OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection;
  swift_beginAccess();
  outlined init with copy of SearchBoundProperty<TextSelection?>?(v1 + v22, v8, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    outlined destroy of SelectionRanges<String.Index>(v21);
    return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v8, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  }

  else
  {
    outlined init with take of SearchBoundProperty<TextSelection?>(v8, v15, type metadata accessor for SearchBoundProperty<TextSelection?>);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v24 = v34;
    MEMORY[0x18D00ACC0]();
    SelectionRanges<>.init(_:)(v24, v18);
    v25 = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v18, v21);
    outlined destroy of SelectionRanges<String.Index>(v18);
    if ((v25 & 1) == 0)
    {
      outlined init with copy of SelectionRanges<String.Index>(v21, v18);
      TextSelection.init(_:)(v18, v24);
      v35 = 17;
      v26 = v31;
      outlined init with copy of SearchBoundProperty<TextSelection?>?(v15, v31, type metadata accessor for SearchBoundProperty<TextSelection?>);
      v27 = v33;
      outlined init with copy of SearchBoundProperty<TextSelection?>?(v24, v33, type metadata accessor for TextSelection?);
      v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v29 = (v12 + *(v32 + 80) + v28) & ~*(v32 + 80);
      v30 = swift_allocObject();
      outlined init with take of SearchBoundProperty<TextSelection?>(v26, v30 + v28, type metadata accessor for SearchBoundProperty<TextSelection?>);
      outlined init with take of SearchBoundProperty<TextSelection?>(v27, v30 + v29, type metadata accessor for TextSelection?);
      static Update.enqueueAction(reason:_:)();

      _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v24, type metadata accessor for TextSelection?);
    }

    _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v15, type metadata accessor for SearchBoundProperty<TextSelection?>);
    return outlined destroy of SelectionRanges<String.Index>(v21);
  }
}

uint64_t _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined assign with take of TextSelection??(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = a1 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v31 = *(*(v14 - 8) + 16);

    v31(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v15 = v12[11];
    v16 = &v10[v15];
    v17 = &v11[v15];
    *v16 = *v17;
    v16[4] = v17[4];
    v18 = v7[6];
    v19 = a1 + v18;
    v20 = a2 + v18;
    v21 = v20[8];
    if (v21 == 255)
    {
      *v19 = *v20;
      v19[8] = v20[8];
    }

    else
    {
      v22 = *v20;
      v23 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(*v20, v21 & 1);
      *v19 = v22;
      v19[8] = v23;
    }

    *(a1 + v7[7]) = *(a2 + v7[7]);
    v24 = v7[8];
    v25 = a1 + v24;
    v26 = a2 + v24;
    v27 = *(a2 + v24);
    v28 = *(v26 + 1);
    v29 = v26[16];
    outlined copy of Text.Storage(v27, v28, v29);
    *v25 = v27;
    *(v25 + 1) = v28;
    v25[16] = v29;
    *(v25 + 3) = *(v26 + 3);
  }

  return a1;
}

void *initializeWithCopy for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<SearchFieldState>(0);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 16);

  v12(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v13 = v9[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

void *assignWithCopy for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  v6[2] = *(a2 + v5 + 2);
  v6[3] = *(a2 + v5 + 3);
  LODWORD(v5) = *(a2 + v5 + 4);
  v6[8] = v7[8];
  *(v6 + 1) = v5;
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 24))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  v19 = *(a2 + v15 + 8);
  if (v18 == 255)
  {
    if (v19 == 255)
    {
      v27 = *v17;
      v16[8] = v17[8];
      *v16 = v27;
    }

    else
    {
      v24 = *v17;
      v25 = v19 & 1;
      outlined copy of PlatformItemCollection.Storage(v24, v19 & 1);
      *v16 = v24;
      v16[8] = v25;
    }
  }

  else if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
    v26 = v17[8];
    *v16 = *v17;
    v16[8] = v26;
  }

  else
  {
    v20 = *v17;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v19 & 1);
    v22 = *v16;
    v23 = v16[8];
    *v16 = v20;
    v16[8] = v21;
    outlined consume of PlatformItemCollection.Storage(v22, v23);
  }

  *(a1 + v14[7]) = *(a2 + v14[7]);
  v28 = v14[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(a2 + v28);
  v32 = *(v30 + 1);
  v33 = v30[16];
  outlined copy of Text.Storage(v31, v32, v33);
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  *v29 = v31;
  *(v29 + 1) = v32;
  v29[16] = v33;
  outlined consume of Text.Storage(v34, v35, v36);
  *(v29 + 3) = *(v30 + 3);

  return a1;
}

void *initializeWithTake for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  type metadata accessor for Binding<SearchFieldState>(0);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v12 = v9[11];
  v13 = &v7[v12];
  v14 = &v8[v12];
  v13[4] = v14[4];
  *v13 = *v14;
  v15 = type metadata accessor for SearchFieldConfiguration(0);
  v16 = v15[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  *v17 = *v18;
  v17[8] = v18[8];
  *(a1 + v15[7]) = *(a2 + v15[7]);
  v19 = v15[8];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  return a1;
}

void *assignWithTake for UIKitSearchFieldAdaptor(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  *(v6 + 1) = *(a2 + v5 + 2);
  v6[8] = *(a2 + v5 + 8);
  *(v6 + 1) = *(a2 + v5 + 4);
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 40))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  if (v18 == 255)
  {
    goto LABEL_5;
  }

  v19 = v17[8];
  if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
LABEL_5:
    *v16 = *v17;
    v16[8] = v17[8];
    goto LABEL_6;
  }

  v20 = *v16;
  *v16 = *v17;
  v16[8] = v19 & 1;
  outlined consume of PlatformItemCollection.Storage(v20, v18 & 1);
LABEL_6:
  *(a1 + v14[7]) = *(a2 + v14[7]);
  v21 = v14[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  LOBYTE(v21) = v23[16];
  v24 = *v22;
  v25 = *(v22 + 1);
  v26 = v22[16];
  *v22 = *v23;
  v22[16] = v21;
  outlined consume of Text.Storage(v24, v25, v26);
  *(v22 + 3) = *(v23 + 3);

  return a1;
}

uint64_t outlined init with copy of SearchBoundProperty<TextSelection?>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in UIKitSearchFieldAdaptor.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UIKitSearchFieldAdaptor(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in UIKitSearchFieldAdaptor.body.getter(a1, v6, a2);
}

uint64_t outlined init with take of SearchBoundProperty<TextSelection?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v9 = *(v8 + 32);
    v10 = v6 + v9;
    v11 = a2 + v9;
    *v10 = *(a2 + v9);
    v10[1] = *(a2 + v9 + 1);
    *(v10 + 1) = *(a2 + v9 + 2);
    v10[8] = *(a2 + v9 + 8);
    *(v10 + 1) = *(a2 + v9 + 4);
    v12 = type metadata accessor for SearchFieldState(0);
    v13 = v12[9];
    v14 = type metadata accessor for AttributedString();
    v15 = *(*(v14 - 8) + 16);

    v15(&v10[v13], &v11[v13], v14);
    v10[v12[10]] = v11[v12[10]];
    v16 = v12[11];
    v17 = &v10[v16];
    v18 = &v11[v16];
    v17[4] = v18[4];
    *v17 = *v18;
    v19 = *(a3 + 20);
    v20 = (v6 + v19);
    v21 = (a2 + v19);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
  }

  return v6;
}

uint64_t destroy for KitRepresentable(uint64_t a1)
{

  type metadata accessor for Binding<SearchFieldState>(0);
  v3 = a1 + *(v2 + 32);
  v4 = *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
}

void *initializeWithCopy for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = *(a3 + 20);
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

void *assignWithCopy for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = *(a3 + 20);
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  *v17 = *v18;
  v17[1] = v18[1];

  return a1;
}

void *initializeWithTake for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v14 = v11[11];
  v15 = &v9[v14];
  v16 = &v10[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithTake for KitRepresentable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = *(a3 + 20);
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v20 = *v18;
  v19 = v18[1];
  *v17 = v20;
  v17[1] = v19;

  return a1;
}

void type metadata completion function for KitRepresentable(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t _s7SwiftUI13TextSelectionVACSQAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for PlatformItemsReader<TextPlatformItemsStrategy, KitRepresentable, Text>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, KitRepresentable, Text>)
  {
    type metadata accessor for KitRepresentable(255);
    v1 = type metadata accessor for PlatformItemsReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, KitRepresentable, Text>);
    }
  }
}

uint64_t outlined assign with take of SearchBoundProperty<TextSelection?>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<TextSelection?>?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double View.onPhysicalButtonPress(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  outlined copy of AppIntentExecutor?(a2, a3);
  lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
  Gesture.onEnded(_:)();

  type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>(0);
  _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(&lazy protocol witness table cache variable for type _EndedGesture<PhysicalButtonPressGesture> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>, MEMORY[0x1E697E238]);
  View.gesture<A>(_:including:)();

  return result;
}

uint64_t closure #1 in PhysicalButtonPressGesture.body.getter@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v3 = *(result + 24);
  v4 = *(result + 25);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_64;
    }

    if (*(result + 24) > 4u)
    {
      if (*(result + 24) <= 6u)
      {
        if (v3 == 5)
        {
          if ((a2 & 0x20) != 0)
          {
            LOBYTE(v4) = 2;
            v5 = 5;
            goto LABEL_64;
          }
        }

        else if ((a2 & 0x40) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 6;
          goto LABEL_64;
        }
      }

      else if (v3 == 7)
      {
        if ((a2 & 0x80) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 7;
          goto LABEL_64;
        }
      }

      else if (v3 == 8)
      {
        if ((a2 & 0x100) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 8;
          goto LABEL_64;
        }
      }

      else if ((a2 & 0x200) != 0)
      {
        LOBYTE(v4) = 2;
        v5 = 9;
        goto LABEL_64;
      }
    }

    else if (*(result + 24) <= 1u)
    {
      if (*(result + 24))
      {
        if ((a2 & 2) != 0)
        {
          LOBYTE(v4) = 2;
          v5 = 1;
          goto LABEL_64;
        }
      }

      else if (a2)
      {
        v5 = 0;
        LOBYTE(v4) = 2;
        goto LABEL_64;
      }
    }

    else if (v3 == 2)
    {
      if ((a2 & 4) != 0)
      {
        v5 = 2;
        LOBYTE(v4) = 2;
        goto LABEL_64;
      }
    }

    else if (v3 == 3)
    {
      if ((a2 & 8) != 0)
      {
        LOBYTE(v4) = 2;
        v5 = 3;
        goto LABEL_64;
      }
    }

    else if ((a2 & 0x10) != 0)
    {
      LOBYTE(v4) = 2;
      v5 = 4;
      goto LABEL_64;
    }

    v5 = 0;
    LOBYTE(v4) = 3;
    goto LABEL_64;
  }

  if (!*(result + 25))
  {
LABEL_61:
    v5 = 10;
    goto LABEL_64;
  }

  if (*(result + 24) > 4u)
  {
    if (*(result + 24) <= 6u)
    {
      if (v3 == 5)
      {
        if ((a2 & 0x20) != 0)
        {
          LOBYTE(v4) = 1;
          v5 = 5;
          goto LABEL_64;
        }
      }

      else if ((a2 & 0x40) != 0)
      {
        LOBYTE(v4) = 1;
        v5 = 6;
        goto LABEL_64;
      }
    }

    else if (v3 == 7)
    {
      if ((a2 & 0x80) != 0)
      {
        LOBYTE(v4) = 1;
        v5 = 7;
        goto LABEL_64;
      }
    }

    else if (v3 == 8)
    {
      if ((a2 & 0x100) != 0)
      {
        LOBYTE(v4) = 1;
        v5 = 8;
        goto LABEL_64;
      }
    }

    else if ((a2 & 0x200) != 0)
    {
      LOBYTE(v4) = 1;
      v5 = 9;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (*(result + 24) <= 1u)
  {
    if (*(result + 24))
    {
      if ((a2 & 2) != 0)
      {
        v5 = 1;
        LOBYTE(v4) = 1;
        goto LABEL_64;
      }
    }

    else if (a2)
    {
      v5 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (v3 == 2)
  {
    if ((a2 & 4) != 0)
    {
      LOBYTE(v4) = 1;
      v5 = 2;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if (v3 != 3)
  {
    if ((a2 & 0x10) != 0)
    {
      LOBYTE(v4) = 1;
      v5 = 4;
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  if ((a2 & 8) == 0)
  {
LABEL_60:
    LOBYTE(v4) = 0;
    goto LABEL_61;
  }

  LOBYTE(v4) = 1;
  v5 = 3;
LABEL_64:
  *a3 = v5;
  a3[1] = v4;
  return result;
}

BOOL PhysicalButtonPressGesture.AllowedButtonTypes.insert(_:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  v4 = qword_18CDFC238[*a2];
  v5 = *v2 & v4;
  if (!v5)
  {
    *v2 |= v4;
  }

  *a1 = v3;
  return v5 == 0;
}

char *PhysicalButtonPressGesture.AllowedButtonTypes.remove(_:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = qword_18CDFC238[v3];
  if ((*v2 & v4) == 0)
  {
    LOBYTE(v3) = 10;
  }

  *v2 &= ~v4;
  *a2 = v3;
  return result;
}

char *PhysicalButtonPressGesture.AllowedButtonTypes.update(with:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = qword_18CDFC238[v3];
  v5 = *v2;
  *v2 |= v4;
  if ((v5 & v4) == 0)
  {
    LOBYTE(v3) = 10;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PhysicalButtonPressGesture.AllowedButtonTypes@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a2);

  *a1 = v3;
  return result;
}

double protocol witness for Gesture.body.getter in conformance PhysicalButtonPressGesture()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>(0);
  _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>, MEMORY[0x1E697E860]);
  Gesture.dependency(_:)();

  return result;
}

void type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>)
  {
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, MEMORY[0x1E697F750], MEMORY[0x1E697DA98]);
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for EventListener<PhysicalButtonEvent>, MEMORY[0x1E697F760], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>);
    }
  }
}

void type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E697F768], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>)
  {
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, MEMORY[0x1E697F750], MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType> and conformance MapGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>)
  {
    type metadata accessor for MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>(255, &lazy cache variable for type metadata for EventListener<PhysicalButtonEvent>, MEMORY[0x1E697F760], MEMORY[0x1E697E120]);
    result = swift_getWitnessTable(MEMORY[0x1E697E128], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<PhysicalButtonEvent> and conformance EventListener<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes()
{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicalButtonPressGesture.AllowedButtonTypes, &type metadata for PhysicalButtonPressGesture.AllowedButtonTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicalButtonPressGesture.AllowedButtonTypes, &type metadata for PhysicalButtonPressGesture.AllowedButtonTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicalButtonPressGesture.AllowedButtonTypes, &type metadata for PhysicalButtonPressGesture.AllowedButtonTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicalButtonPressGesture.AllowedButtonTypes, &type metadata for PhysicalButtonPressGesture.AllowedButtonTypes, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture.AllowedButtonTypes and conformance PhysicalButtonPressGesture.AllowedButtonTypes);
  }

  return result;
}

unint64_t _s7SwiftUI31AccessibilityAttachmentModifierV04makeC19PropertiesTransform_5value6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgxm_13PropertyValueQzAA11_ViewInputsVAA01_R7OutputsVtAA0cG3KeyRzlFZAA0cG0VAAE013TemporalStateU0V_Ttt3B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  __src[0] = *(a4 + 48);
  LODWORD(__src[1]) = *(a4 + 56);
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v12)
  {
    __src[0] = a1;
    __src[1] = a2;
    LODWORD(__src[2]) = a3;
    BYTE4(__src[2]) = BYTE4(a3) & 1;
    lazy protocol witness table accessor for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey();
    AccessibilityProperties.init<A>(_:_:)();
    outlined init with copy of AccessibilityProperties(v20, v18);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(v20);
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v13 = swift_allocObject();
    memcpy((v13 + 16), __src, 0x128uLL);
    __src[0] = v13;
    __src[1] = 0;

    v14 = Attribute.init<A>(body:value:flags:update:)();

    v15 = _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5(v14, a4, a5, a6, 1, 0, 0, 0, 0, 0);

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16 | (((v12 & 1) == 0) << 32);
}

uint64_t TemporalStack.init(states:alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v22[0] = a6;
  v22[1] = a7;
  v22[2] = a8;
  v23 = a10;
  v24 = a11;
  result = type metadata accessor for TemporalStack(0, v22);
  v20 = (a9 + *(result + 68));
  *v20 = a2;
  v20[1] = a3;
  v21 = (a9 + *(result + 72));
  *v21 = a4;
  v21[1] = a5;
  return result;
}

uint64_t type metadata completion function for TemporalStack(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TemporalStack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
  }

  return v3;
}

double destroy for TemporalStack(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for TemporalStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

uint64_t assignWithCopy for TemporalStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

uint64_t assignWithTake for TemporalStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStack(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for TemporalStack(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
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

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

double static TemporalStack._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, double *a9@<X8>)
{
  v82 = a3;
  v83 = a8;
  v115 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v111 = a2[2];
  v112 = v14;
  v113 = a2[4];
  v114 = *(a2 + 20);
  v15 = a2[1];
  v109 = *a2;
  v110 = v15;
  v16 = v14;
  *&v95 = v14;
  DWORD2(v95) = DWORD2(v14);
  v105 = v111;
  v106 = v14;
  v107 = v113;
  v108 = v114;
  v103 = v109;
  v104 = v15;
  v77 = a9;
  v75 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v75)
  {
    v97 = v111;
    v98 = v112;
    v99 = v113;
    LODWORD(v100) = v114;
    v95 = v109;
    v96 = v110;
    outlined init with copy of _ViewInputs(&v109, v89);
    _ViewInputs.animatedPosition()();
    _ViewInputs.containerPosition.setter();
  }

  else
  {
    outlined init with copy of _ViewInputs(&v109, &v95);
  }

  v76 = v16;
  v72 = v13;
  LODWORD(v89[0]) = v13;
  v17 = v82;
  *&v95 = v82;
  *(&v95 + 1) = a4;
  *&v96 = a5;
  *(&v96 + 1) = a6;
  *&v97 = a7;
  *(&v97 + 1) = v83;
  type metadata accessor for TemporalStack(255, &v95);
  v71 = type metadata accessor for _GraphValue();
  v18 = _GraphValue.value.getter();
  v93[2] = v105;
  v93[3] = v106;
  v93[4] = v107;
  v94 = v108;
  v93[0] = v103;
  v93[1] = v104;
  outlined init with copy of _ViewInputs(v93, &v95);
  v79 = a7;
  v19 = default argument 3 of TemporalStackChildren.init(view:inputs:childGeometries:children:nextID:)(v82, a4, a5);
  *&v92[36] = v105;
  *&v92[52] = v106;
  *&v92[68] = v107;
  *&v92[84] = v108;
  *&v92[4] = v103;
  *&v92[20] = v104;
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
  }

  v81 = &v71;
  *(&v89[5] + 4) = *&v92[80];
  v21 = *MEMORY[0x1E698D3F8];
  *(&v89[2] + 4) = *&v92[32];
  *(&v89[3] + 4) = *&v92[48];
  *(&v89[4] + 4) = *&v92[64];
  *(v89 + 4) = *v92;
  *(&v89[1] + 4) = *&v92[16];
  LODWORD(v89[0]) = v18;
  *&v90 = v20;
  *(&v90 + 1) = v19;
  HIDWORD(v89[5]) = v21;
  v91 = 0;
  MEMORY[0x1EEE9AC00](v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TemporalStackChild(255, AssociatedTypeWitness, v23, v24);
  v70[2] = type metadata accessor for Array();
  *&v95 = v17;
  *(&v95 + 1) = a4;
  v78 = a4;
  v73 = a5;
  v74 = a6;
  *&v96 = a5;
  *(&v96 + 1) = a6;
  *&v97 = v79;
  *(&v97 + 1) = v83;
  v25 = type metadata accessor for TemporalStackChildren(0, &v95);
  v70[3] = v25;
  v70[4] = swift_getWitnessTable(protocol conformance descriptor for TemporalStackChildren<A, B>, v25);
  v26 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v89, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v70, v25, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v99 = v89[4];
  v100 = v89[5];
  v101 = v90;
  v102 = v91;
  v95 = v89[0];
  v96 = v89[1];
  v97 = v89[2];
  v98 = v89[3];
  (*(*(v25 - 8) + 8))(&v95, v25);
  v28 = v88[0];
  _ViewOutputs.init()();
  v81 = AssociatedTypeWitness;
  v80 = v28;
  if (v75)
  {
    _DisplayList_Identity.init()();
    v29 = v89[0];
    v89[2] = v111;
    v89[3] = v112;
    v89[4] = v113;
    LODWORD(v89[5]) = v114;
    v89[0] = v109;
    v89[1] = v110;
    *v92 = v29;
    _ViewInputs.pushIdentity(_:)();
    v89[2] = v111;
    v89[3] = v112;
    v89[4] = v113;
    LODWORD(v89[5]) = v114;
    v89[0] = v109;
    v89[1] = v110;
    swift_beginAccess();
    v30 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v89[2] = v111;
    v89[3] = v112;
    v89[4] = v113;
    LODWORD(v89[5]) = v114;
    v89[0] = v109;
    v89[1] = v110;
    v31 = _ViewInputs.animatedPosition()();
    v89[2] = v111;
    v89[3] = v112;
    v89[4] = v113;
    LODWORD(v89[5]) = v114;
    v89[0] = v109;
    v89[1] = v110;
    v32 = _ViewInputs.containerPosition.getter();
    *&v89[0] = __PAIR64__(v28, v29);
    *(&v89[0] + 1) = __PAIR64__(v31, v30);
    LODWORD(v89[1]) = v32;
    MEMORY[0x1EEE9AC00](v32);
    v35 = type metadata accessor for TemporalStackDisplayList(0, AssociatedTypeWitness, v33, v34);
    v70[-2] = v35;
    v70[-1] = swift_getWitnessTable(protocol conformance descriptor for TemporalStackDisplayList<A>, v35);
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<DisplayList>, MEMORY[0x1E697DCB0], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v89, closure #1 in Attribute.init<A>(_:)partial apply, &v70[-4], v35, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
    LOBYTE(v89[0]) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v38 = v76;
  v39 = BYTE4(v111);
  v40 = v78;
  if ((BYTE4(v111) & 0x22) != 0)
  {
    v41 = v110;
    LODWORD(v89[0]) = v72;
    _GraphValue.value.getter();
    v42 = v83;
    closure #1 in static TemporalStack._makeView(view:inputs:)(1, v82, v40, v73, v74, v79, v83);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v44 = swift_beginAccess();
    v45 = *(v41 + 16);
    *&v89[0] = __PAIR64__(OffsetAttribute2, v80);
    DWORD2(v89[0]) = v45;
    MEMORY[0x1EEE9AC00](v44);
    v48 = type metadata accessor for TemporalStackLayoutComputer(0, v81, v46, v47);
    v70[-2] = v48;
    v70[-1] = swift_getWitnessTable(protocol conformance descriptor for TemporalStackLayoutComputer<A>, v48);
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, MEMORY[0x1E697E3B8], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v89, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_21, &v70[-4], v48, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v50);
    if ((v39 & 0x20) != 0)
    {
      v89[2] = v111;
      v89[3] = v112;
      v89[4] = v113;
      LODWORD(v89[5]) = v114;
      v89[0] = v109;
      v89[1] = v110;
      _ViewInputs.position.getter();
      LayoutChildGeometries.init(parentSize:parentPosition:layoutComputer:)();
      *&v89[0] = *v92;
      DWORD2(v89[0]) = *&v92[8];
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], MEMORY[0x1E697DFB8], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
      v51 = Attribute.init<A>(body:value:flags:update:)();
      MEMORY[0x1EEE9AC00](v51);
      v52 = v78;
      v70[-8] = v82;
      v70[-7] = v52;
      v53 = v74;
      v70[-6] = v73;
      v70[-5] = v53;
      v70[-4] = v79;
      v70[-3] = v42;
      LODWORD(v70[-2]) = v54;
      MEMORY[0x1EEE9AC00](v54);
      v70[-4] = v25;
      v70[-3] = partial apply for closure #2 in static TemporalStack._makeView(view:inputs:);
      v70[-2] = v55;
      AGGraphMutateAttribute();
    }

    LOBYTE(v89[0]) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v84 = v38;
  v85 = 0;
  v56 = *(v38 + 16);
  v57 = v81;
  if (v56)
  {
    v83 = lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v82 = -v56;
    v58 = 1;
    do
    {
      v59 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v62 = *v60;
      v61 = v60[1];
      v63 = v59(v89, 0);
      v85 = v58;
      if (v62 != MEMORY[0x1E697DC60])
      {
        LODWORD(v89[0]) = v80;
        MEMORY[0x1EEE9AC00](v63);
        v70[-4] = swift_getAssociatedTypeWitness();
        v64 = type metadata accessor for TemporalStackPreference(0, v57, v62, v61);
        v70[-3] = v64;
        v70[-2] = swift_getWitnessTable(protocol conformance descriptor for TemporalStackPreference<A, B>, v64);
        v65 = type metadata accessor for Attribute();
        v66 = v64;
        v57 = v81;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v89, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, &v70[-6], v66, MEMORY[0x1E69E73E0], v65, MEMORY[0x1E69E7410], v67);
        swift_beginAccess();
        v92[0] = 0;
        PreferencesOutputs.subscript.setter();
        swift_endAccess();
      }

      ++v58;
    }

    while (v82 + v58 != 1);
  }

  else
  {
  }

  v89[2] = v105;
  v89[3] = v106;
  v89[4] = v107;
  LODWORD(v89[5]) = v108;
  v89[0] = v103;
  v89[1] = v104;
  outlined destroy of _ViewInputs(v89);

  swift_beginAccess();
  v68 = v77;
  *v77 = v86;
  result = v87;
  v68[1] = v87;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TemporalStack<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for TemporalStack<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t default argument 3 of TemporalStackChildren.init(view:inputs:childGeometries:children:nextID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for TemporalStackChild(0, AssociatedTypeWitness, v4, v5);

  return Array.init()();
}

uint64_t closure #1 in static TemporalStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v8 = type metadata accessor for TemporalStack(0, v15);
  v9 = *(v8 + 68);
  v14[2] = v8;
  v10 = MEMORY[0x1E6981D58];
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

double TemporalStackChild.init(state:hash:subgraph:outputs:id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a2 + 16);
  v14 = *a4;
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v17 = type metadata accessor for TemporalStackChild(0, a6, v15, v16);
  v18 = a7 + v17[7];
  *v18 = *a2;
  *(v18 + 16) = v13;
  *(a7 + v17[8]) = a3;
  v19 = a7 + v17[9];
  *v19 = v14;
  result = a4[1];
  *(v19 + 8) = result;
  *(a7 + v17[10]) = a5;
  return result;
}

uint64_t TemporalStackChildren.view.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v7[0] = a1[1];
  v7[1] = v3;
  v7[2] = a1[3];
  v4 = type metadata accessor for TemporalStack(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

uint64_t TemporalStackChildren.updateValue()(uint64_t a1)
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v98 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for TemporalStackChild(0, AssociatedTypeWitness, v6, v7);
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - v9;
  v99 = AssociatedTypeWitness;
  v91 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v74 - v14;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v74 - v16;
  v93 = swift_getAssociatedTypeWitness();
  v77 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v74 - v17;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  *&v21 = v4;
  v82 = *(a1 + 24);
  *(&v21 + 1) = v82;
  v83 = v3;
  *&v22 = v3;
  v81 = v18;
  *(&v22 + 1) = v18;
  v105 = v21;
  v106 = v22;
  v97 = v19;
  *&v107 = v19;
  *(&v107 + 1) = v20;
  v80 = v20;
  v95 = type metadata accessor for TemporalStack(0, &v105);
  v94 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95);
  v24 = &v74 - v23;
  v25 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v26);
  AssociatedConformanceWitness = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  v31 = v1[5];
  v109 = v1[4];
  v110 = v31;
  v32 = *(v1 + 12);
  v33 = v1[1];
  v105 = *v1;
  v106 = v33;
  v34 = v1[3];
  v107 = v1[2];
  v108 = v34;
  v35 = v1 + 13;
  v36 = *(v1 + 13);
  v84 = v1;
  v37 = *(v1 + 28);
  v111 = v32;
  v112 = v36;
  v113 = v37;
  v74 = a1;
  TemporalStackChildren.view.getter(a1, v24);
  v76 = v25;
  v38 = v25;
  v39 = v90;
  v40 = *(v38 + 16);
  v40(v30, v24, v4);
  v94[1](v24, v95);
  v104 = 0;
  *&v105 = 0;
  v41 = v36;
  v42 = v100;
  v103 = MEMORY[0x18D00CD40](v41, v8);
  v75 = v30;
  v40(AssociatedConformanceWitness, v30, v4);
  v43 = v99;
  dispatch thunk of Sequence.makeIterator()();
  v85 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v44 = v91;
  v45 = *(v91 + 48);
  v88 = v91 + 48;
  v87 = v45;
  v46 = 0;
  if (v45(v39, 1, v43) != 1)
  {
    v46 = 0;
    v55 = *(v44 + 32);
    v54 = v44 + 32;
    v86 = v55;
    v95 = (v54 - 16);
    v94 = (v78 + 8);
    v91 = v54;
    v98 = (v54 - 24);
    v79 = *MEMORY[0x1E698D3F8];
    for (i = v55(v42, v39, v43); ; i = v86(v56, v58, v57))
    {
      v59 = v103;
      if (v103 < v46)
      {
        break;
      }

      v60 = -1;
      while (v46 != v59)
      {
        Array.subscript.getter();
        v61 = v96;
        v62 = v99;
        (*v95)(v96, v10, v99);
        (*v94)(v10, v8);
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        v64 = *v98;
        (*v98)(v61, v62);
        ++v60;
        --v59;
        if (v63)
        {
          if (v60)
          {
            v102 = v46;
            v101 = v46 + v60;
            v65 = type metadata accessor for Array();
            swift_getWitnessTable(MEMORY[0x1E69E6318], v65);
            MutableCollection.swapAt(_:_:)();
            v104 = 1;
          }

          v56 = v100;
          goto LABEL_11;
        }
      }

      i = AGGraphGetCurrentAttribute();
      v56 = v100;
      if (i == v79)
      {
        goto LABEL_23;
      }

      v66 = i;
      v67 = v84;
      v68 = AGSubgraphGetGraph();
      v69 = AGSubgraphCreate();

      AGSubgraphAddChild();
      AGGraphClearUpdate();
      v70 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      *(&v72 + 1) = v80;
      *&v72 = v97;
      *(&v71 + 1) = v81;
      *&v71 = v83;
      closure #1 in TemporalStackChildren.updateValue()(v67, v66, v56, v69, &v105, &v104, &v103, v85, v82, v71, v72);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v64 = *v98;
LABEL_11:
      *&v105 = ++v46;
      v57 = v99;
      v64(v56, v99);
      v58 = v90;
      dispatch thunk of IteratorProtocol.next()();
      if (v87(v58, 1, v57) == 1)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_22;
  }

LABEL_2:
  i = (*(v77 + 8))(v92, v93);
  v48 = v103;
  if (v103 < v46)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v103 != v46)
  {
    v49 = (v78 + 8);
    while (v46 < v48)
    {
      --v48;
      type metadata accessor for Array();
      Array.remove(at:)();
      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
      i = (*v49)(v10, v8);
      if (v46 == v48)
      {
        v104 = 1;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  if ((v104 & 1) == 0)
  {
    type metadata accessor for Array();
    i = AGGraphGetOutputValue();
    if (i)
    {
      return (*(v76 + 8))(v75, v85);
    }
  }

LABEL_8:
  v102 = *v35;
  v50 = MEMORY[0x1EEE9AC00](i);
  *(&v72 + 1) = v74;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStackChildren<A, B>, v50);
  v51 = type metadata accessor for Array();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v102, partial apply for closure #1 in StatefulRule.value.setter, &v71 + 8, v51, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v52);

  return (*(v76 + 8))(v75, v85);
}

uint64_t closure #1 in TemporalStackChildren.updateValue()(unsigned int *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t *a5, _BYTE *a6, void *a7, _BYTE *a8, uint64_t a9, __int128 a10, __int128 a11)
{
  v82 = a6;
  v83 = a7;
  v80 = a5;
  v81 = a4;
  v74 = a3;
  v65 = a2;
  v84 = 0;
  *&v88 = *(&a11 + 1);
  v66 = a11;
  v122 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for TemporalStackChild(0, AssociatedTypeWitness, v14, v15);
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v64[-v19];
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v64[-v21];
  *&v115 = a8;
  *(&v115 + 1) = a9;
  v116 = a10;
  v117 = a11;
  v71 = type metadata accessor for TemporalStackChildView(0, &v115);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v64[-v22];
  v23 = a1[28];
  a1[28] = v23 + 1;
  v24 = *(a1 + 6);
  v25 = *(a1 + 14);
  v117 = *(a1 + 10);
  v118 = v25;
  v119 = *(a1 + 18);
  v120 = a1[22];
  v115 = *(a1 + 2);
  v116 = v24;
  v26 = v24;
  v106 = v25;
  v107 = v119;
  v104 = v24;
  v105 = v117;
  v108 = v120;
  v103 = v115;
  swift_beginAccess();
  v27 = v26[3];
  v121[1] = v26[2];
  v121[2] = v27;
  v28 = v26[5];
  v121[3] = v26[4];
  v121[4] = v28;
  v121[0] = v26[1];
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v29 = swift_allocObject();
  memmove((v29 + 16), v26 + 1, 0x50uLL);
  *&v104 = v29;
  outlined init with copy of _ViewInputs(&v115, &v109);
  outlined init with copy of CachedEnvironment(v121, &v109);

  _GraphInputs.pushStableIndex(_:)(0);
  v72 = a10;
  v73 = a8;
  *&v109 = a8;
  v30 = v66;
  v70 = a9;
  *(&v109 + 1) = a9;
  v87 = *(&a10 + 1);
  v110 = a10;
  *&v111 = v66;
  *(&v111 + 1) = v88;
  v31 = type metadata accessor for TemporalStackChildren(0, &v109);
  v86 = a1;
  v32 = a1[23];
  v33 = *MEMORY[0x1E698D3F8];
  v89 = AssociatedTypeWitness;
  v75 = v23;
  if (v32 != v33)
  {
    *&v109 = __PAIR64__(v23, v65);
    DWORD2(v109) = v32;
    MEMORY[0x1EEE9AC00](v31);
    v36 = type metadata accessor for TemporalStackChildGeometry(0, v89, v34, v35);
    *&v64[-16] = v36;
    *&v64[-8] = swift_getWitnessTable(protocol conformance descriptor for TemporalStackChildGeometry<A>, v36);
    AssociatedTypeWitness = v89;
    type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>, MEMORY[0x1E697DFB8], MEMORY[0x1E698D388]);
    v37 = v84;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v109, closure #1 in Attribute.init<A>(_:)partial apply, &v64[-32], v36, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);
    v84 = v37;
    Attribute<A>.size()();
    _ViewInputs.size.setter();
    Attribute<A>.origin()();
    _ViewInputs.position.setter();
  }

  v40 = v85;
  v41 = *v86;
  v42 = *(v67 + 16);
  v43 = v74;
  v42(v85, v74, AssociatedTypeWitness);
  v44 = v68;
  v45 = v41;
  v46 = v70;
  v47 = TemporalStackChildView.init(view:state:)(v45, v40, v73, v70, v72, v87, v30, v88, v68);
  v73 = v64;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = v71;
  *&v64[-32] = v46;
  *&v64[-24] = v49;
  *&v64[-16] = swift_getWitnessTable(protocol conformance descriptor for TemporalStackChildView<A, B>, v49, v48);
  v50 = type metadata accessor for Attribute();
  v51 = v42;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v44, closure #1 in Attribute.init<A>(_:)partial apply, &v64[-48], v49, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v52);
  (*(v69 + 8))(v44, v49);
  v53 = v85;
  v54 = v89;
  _GraphValue.init(_:)();
  v99[2] = v105;
  v99[3] = v106;
  v99[4] = v107;
  v100 = v108;
  v99[0] = v103;
  v99[1] = v104;
  v111 = v105;
  v112 = v106;
  v113 = v107;
  v114 = v108;
  v109 = v103;
  v110 = v104;
  outlined init with copy of _ViewInputs(v99, v101);
  static View.makeDebuggableView(view:inputs:)();
  v101[2] = v111;
  v101[3] = v112;
  v101[4] = v113;
  v102 = v114;
  v101[0] = v109;
  v101[1] = v110;
  outlined destroy of _ViewInputs(v101);
  *&v109 = v106;
  DWORD2(v109) = DWORD2(v106);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v51(v53, v43, v54);
    StrongHash.init<A>(of:)();
    v111 = v105;
    v112 = v106;
    v113 = v107;
    v114 = v108;
    v109 = v103;
    v110 = v104;
    LOBYTE(v90[0]) = 0;
    _s7SwiftUI31AccessibilityAttachmentModifierV04makeC19PropertiesTransform_5value6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgxm_13PropertyValueQzAA11_ViewInputsVAA01_R7OutputsVtAA0cG3KeyRzlFZAA0cG0VAAE013TemporalStateU0V_Ttt3B5(v93, *(&v93 + 1), v94, &v109, v91, v92);
    PreferencesOutputs.subscript.setter();
  }

  v51(v53, v43, v54);
  StrongHash.init<A>(of:)();
  v55 = v94;
  v88 = v93;
  v51(v53, v43, v54);
  v93 = v88;
  LODWORD(v94) = v55;
  *&v90[0] = v91;
  *&v90[1] = v92;
  v56 = v77;
  v57 = v81;
  v58 = TemporalStackChild.init(state:hash:subgraph:outputs:id:)(v53, &v93, v81, v90, v75, v54, v77);
  v60 = v78;
  v59 = v79;
  (*(v78 + 16))(v76, v56, v79, v58);
  type metadata accessor for Array();
  v61 = v57;
  Array.insert(_:at:)();
  (*(v60 + 8))(v56, v59);
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v93 = v103;
  v94 = v104;
  result = outlined destroy of _ViewInputs(&v93);
  v63 = v83;
  *v82 = 1;
  ++*v63;
  return result;
}

uint64_t TemporalStackChildView.init(view:state:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v12 = *(type metadata accessor for TemporalStackChildView(0, v15) + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v12], a2, AssociatedTypeWitness);
}

double TemporalStackChildView.value.getter(uint64_t a1)
{
  v4 = *(a1 + 24);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStackChildView<A, B>, a1);
  MEMORY[0x18D000B90](a1, v4, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  return result;
}

double closure #1 in TemporalStackChildView.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[0] = a1;
  v23[1] = a8;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v14 = type metadata accessor for TemporalStack(0, &v24);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v18 = type metadata accessor for TemporalStackChildView(0, &v24);
  v19 = v23[0];
  TemporalStackChildren.view.getter(v18, v17);
  v20 = *&v17[*(v14 + 72)];
  v21 = *(v15 + 8);

  v21(v17, v14);
  v20(v19 + *(v18 + 68));

  return result;
}

void *TemporalStackChildGeometry.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>, uint64_t a5@<X3>)
{
  v31 = a4;
  v32 = HIDWORD(a1);
  v8 = type metadata accessor for TemporalStackChild(0, a3, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v33 = a1;
  v34 = a3;
  v35 = a2;
  v36[0] = specialized TemporalStackChildGeometry.children.getter(a1, a2, a3, v12);
  v13 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6338], v13);
  result = RandomAccessCollection<>.indices.getter();
  v16 = v37[0];
  v17 = (v9 + 8);
  if (*(&v37[0] + 1) <= *&v37[0])
  {
    v18 = *&v37[0];
  }

  else
  {
    v18 = *(&v37[0] + 1);
  }

  v19 = (*&v37[0] << 6) - 32;
  v20 = *&v37[0];
  do
  {
    if (*(&v16 + 1) == v20)
    {
      return static ViewGeometry.zero.getter();
    }

    if (*(&v16 + 1) < v16)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v18 == v20)
    {
      goto LABEL_15;
    }

    v21 = v20 + 1;
    specialized TemporalStackChildGeometry.children.getter(v33, v35, v34, v15);

    Array.subscript.getter();

    v22 = *&v11[*(v8 + 40)];
    result = (*v17)(v11, v8);
    v19 += 64;
    ++v20;
  }

  while (v22 != v32);
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], MEMORY[0x1E697DFB8], MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (v21 - 1 < 0)
  {
    goto LABEL_16;
  }

  if ((v21 - 1) < *(*result + 16))
  {
    v23 = (*result + v19);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[3];
    v37[2] = v23[2];
    v37[3] = v26;
    v37[0] = v24;
    v37[1] = v25;
    v27 = v23[1];
    v28 = v31;
    *v31 = *v23;
    v28[1] = v27;
    v29 = v23[3];
    v28[2] = v23[2];
    v28[3] = v29;
    return outlined init with copy of ViewGeometry(v37, v36);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t TemporalStackLayoutComputer.updateValue()(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = *(a1 + 16);
  *&v25 = specialized TemporalStackChildGeometry.children.getter(v7 | (v8 << 32), v9, v10, a5);
  v19[2] = v10;
  type metadata accessor for TemporalStackChild(255, v10, v11, v12);
  v13 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v13);
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TemporalStackLayoutComputer.updateValue(), v19, v13, MEMORY[0x1E697FC70], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v25 = *AGGraphGetValue();
    v22 = v18;
    v23 = v18;
    v24 = v9;
    v20 = v18;
    v21 = v16;
    lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout();
    swift_getWitnessTable(protocol conformance descriptor for TemporalStackLayoutComputer<A>, a1);
    Layout.updateLayoutComputer<A>(rule:layoutContext:children:)();
  }

  return result;
}

uint64_t closure #1 in TemporalStackLayoutComputer.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TemporalStackChild(0, a2, a3, a4);
  _ViewOutputs.layoutComputer.getter();
  return LayoutProxyAttributes.init(layoutComputer:traitsList:)();
}

uint64_t TemporalStackDisplayList.value.getter(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  DisplayList.Version.init(forUpdate:)();
  type metadata accessor for CGPoint(0);
  v20 = *v1;
  AGGraphGetValue();
  AGGraphGetValue();
  *&v23 = v20;
  *(&v23 + 1) = __PAIR64__(v4, v3);
  LODWORD(v24) = v5;
  v26 = specialized TemporalStackDisplayList.children.getter(a1, v6, v7, v8);
  v22 = *(a1 + 16);
  type metadata accessor for TemporalStackChild(255, v22, v9, v10);
  v11 = type metadata accessor for Array();
  type metadata accessor for (StrongHash, DisplayList)();
  v13 = v12;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v11);
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TemporalStackDisplayList.value.getter, v21, v11, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  v26 = v16;
  v27 = 0;
  v28 = 0;
  v29 = 0x80000000;
  Value = AGGraphGetValue();
  v18 = Value[1];
  v23 = *Value;
  v24 = v18;
  MEMORY[0x18D00B390]();
  v25 = v20;
  DisplayList.Item.init(_:frame:identity:version:)();
  return DisplayList.init(_:)();
}

void closure #1 in TemporalStackDisplayList.value.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = a1 + *(type metadata accessor for TemporalStackChild(0, a2, a4, a5) + 28);
  v7 = *(v6 + 16);
  *a3 = *v6;
  *(a3 + 16) = v7;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
  {
    DisplayList.init()();
  }

  else
  {
    Value = AGGraphGetValue();
    v9 = *(Value + 8);
    v10 = *(Value + 12);
    *(a3 + 24) = *Value;
    *(a3 + 32) = v9;
    *(a3 + 36) = v10;
  }
}

uint64_t TemporalStackPreference.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v47 - v11;
  v14 = type metadata accessor for TemporalStackChild(0, a2, v12, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  v20 = *(a4 + 16);
  v56 = a5;
  v20(a3, a4, v17);
  v21 = a4;
  v55 = a2;
  v61 = a3;
  v22 = specialized TemporalStackPreference.children.getter(a1, a2, a3, a4);

  if (MEMORY[0x18D00CDE0](v23, v14))
  {
    v24 = v10;
    v25 = 0;
    v26 = &v19[*(v14 + 36)];
    v58 = (v15 + 8);
    v59 = (v15 + 16);
    v60 = v21;
    v50 = (v24 + 16);
    v51 = v21 + 24;
    v49 = (v24 + 8);
    v47 = v16;
    v48 = (v24 + 32);
    v57 = 1;
    v27 = v19;
    v52 = v15;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v15 + 16))(v27, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, v14);
        v36 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v47 != 8)
        {
          __break(1u);
          return result;
        }

        v62[0] = result;
        (*v59)(v27, v62, v14);
        swift_unknownObjectRelease();
        v36 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      v37 = *v26;
      v38 = *v58;

      v39 = *(v26 + 1);
      v38(v27, v14);
      v62[0] = v37;
      v62[1] = v39;
      v40 = _ViewOutputs.subscript.getter();

      if ((v40 & 0x100000000) == 0)
      {
        if (v57)
        {
          v28 = AssociatedTypeWitness;
          Value = AGGraphGetValue();
          v30 = v26;
          v31 = v27;
          v32 = v53;
          (*v50)(v53, Value, v28);
          v33 = v56;
          (*v49)(v56, v28);
          v34 = v32;
          v27 = v31;
          v26 = v30;
          v15 = v52;
          (*v48)(v33, v34, v28);
        }

        else
        {
          v42 = MEMORY[0x1EEE9AC00](v41);
          v43 = v56;
          v45 = v60;
          v44 = v61;
          *(&v47 - 4) = v55;
          *(&v47 - 3) = v44;
          *(&v47 - 2) = v45;
          *(&v47 - 2) = v40;
          (*(v45 + 24))(v43, partial apply for closure #1 in TemporalStackPreference.value.getter, v42);
        }

        v57 = 0;
      }

      ++v25;
      if (v36 == MEMORY[0x18D00CDE0](v22, v14))
      {
      }
    }
  }
}

uint64_t closure #1 in TemporalStackPreference.value.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TemporalStackPreference<A, B>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TemporalStackPreference<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStackPreference<A, B>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 104);
  v4 = (result + 104);
  while (v2)
  {
    v5 = *(v3 - 5);
    v6 = *v3;
    v3 += 20;
    result = *v4 == v6 && *(v4 - 5) == v5;
    v8 = result != 1 || v2-- == 1;
    v4 += 20;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static TemporalState.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  v2 = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    v3 = a2[2].i32[1];
    v4 = a2[2].u16[0];
    v5 = a1[2].i32[1];
    v6 = a1[2].u16[0];
    LODWORD(v2) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(a1[1].i64[1], a2[1].i64[1]) & (v6 == v4);
    if (v5 == v3)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries()
{
  result = lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries;
  if (!lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FC50], MEMORY[0x1E697FC60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries);
  }

  return result;
}

uint64_t partial apply for closure #2 in static TemporalStack._makeView(view:inputs:)(uint64_t a1)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v4;
  v6[2] = *(v1 + 48);
  result = type metadata accessor for TemporalStackChildren(0, v6);
  *(a1 + 92) = v3;
  return result;
}

uint64_t assignWithTake for TemporalState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t destroy for TemporalStackChildren(uint64_t a1)
{
}

uint64_t initializeWithCopy for TemporalStackChildren(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v6 = *(a2 + 96);
  v5 = *(a2 + 104);
  *(a1 + 96) = v6;
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);

  v7 = v6;

  return a1;
}

uint64_t assignWithCopy for TemporalStackChildren(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy116_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TemporalStackChildren(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStackChildren(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TemporalStackChildren(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for TemporalStackChild(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TemporalStackChild(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *v11;
    *(v10 + 16) = *(v11 + 16);
    *v10 = v12;
    v13 = ((v10 + 27) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 27) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v14;
    *v13 = *v14;
    v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
    *(v16 + 12) = *(v17 + 12);
    *((v16 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 19) & 0xFFFFFFFFFFFFFFF8);
    v18 = v15;
  }

  return v3;
}

uint64_t destroy for TemporalStackChild(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
}

uint64_t initializeWithCopy for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v10 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  *v10 = *v11;
  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  *((v13 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 19) & 0xFFFFFFFFFFFFFFF8);
  v15 = v12;

  return a1;
}

uint64_t assignWithCopy for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v9 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *v9;
  *v9 = *v10;
  v13 = v11;

  v14 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  *(v14 + 12) = *(v15 + 12);
  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v10 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TemporalStackChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v9 = ((v7 + 27) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 27) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v9;
  *v9 = *v10;

  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStackChild(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v7 < a2 && *(a1 + ((((((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *((((a1 + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void storeEnumTagSinglePayload for TemporalStackChild(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v13 = (((&a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 27) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v14 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v14 = a2 - 1;
        }

        *v13 = v14;
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t specialized TemporalStackChildGeometry.children.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TemporalStackChild(255, a3, a3, a4);
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

uint64_t specialized TemporalStackDisplayList.children.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TemporalStackChild(255, *(a1 + 16), a3, a4);
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

uint64_t specialized TemporalStackPreference.children.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TemporalStackChild(255, a2, a3, a4);
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

unint64_t lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout()
{
  result = lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout;
  if (!lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E318], MEMORY[0x1E697E330], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ZStackLayout and conformance _ZStackLayout);
  }

  return result;
}

void type metadata accessor for (StrongHash, DisplayList)()
{
  if (!lazy cache variable for type metadata for (StrongHash, DisplayList))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StrongHash, DisplayList));
    }
  }
}

uint64_t type metadata completion function for TemporalStackChildView(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for TemporalStackChildView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-5 - v7) | v7) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v6 + 16))((a1 + v7 + 4) & ~v7, (a2 + v7 + 4) & ~v7, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 & 0xFC ^ 0x1FC) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for TemporalStackChildView(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 4) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for TemporalStackChildView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))((a1 + *(v6 + 80) + 4) & ~*(v6 + 80), (a2 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithCopy for TemporalStackChildView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 4) & ~*(v6 + 80), (a2 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for TemporalStackChildView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))((a1 + *(v6 + 80) + 4) & ~*(v6 + 80), (a2 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithTake for TemporalStackChildView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 4) & ~*(v6 + 80), (a2 + *(v6 + 80) + 4) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TemporalStackChildView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v14 = *(v6 + 48);

    return v14((a1 + v8 + 4) & ~v8);
  }

  v9 = ((v8 + 4) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
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

  return v7 + (v9 | v13) + 1;
}

void storeEnumTagSinglePayload for TemporalStackChildView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 4) & ~v9) + *(v7 + 64);
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v8 < a2)
  {
    v12 = ~v8 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v7 + 56);

  v17(&a1[v9 + 4] & ~v9, a2);
}

unint64_t SelectionBasedStorage.$menu.getter(unsigned int a1)
{
  v1 = a1;
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v1 = 0;
  }

  return v1 | ((*MEMORY[0x1E698D3F8] == a1) << 32);
}

unint64_t SelectionBasedStorage.$action.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v2 = 0;
  }

  return v2 | ((*MEMORY[0x1E698D3F8] == a2) << 32);
}

unint64_t SelectionBasedStorage.$isSelectionEnabled.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a2))
  {
    v2 = 0;
  }

  return v2 | ((*MEMORY[0x1E698D3F8] == HIDWORD(a2)) << 32);
}

uint64_t _GraphInputs.setSelectionStorage<A>(_:forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = a2;
  v5 = type metadata accessor for _GraphInputs.SelectionBasedStorageKey(0, a4, a5, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.SelectionBasedStorageKey<A>, v5, v8, v9);
  return specialized _GraphInputs.subscript.setter(&v8, v5, v5, WitnessTable);
}

unint64_t WeakSelectionBasedStorage.$menu.getter(uint64_t a1)
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  else
  {
    v2 = Attribute;
  }

  return v2 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t (*WeakSelectionBasedStorage.action.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 1;
  }

  v9 = *WeakValue;
  if (!*WeakValue)
  {
    return 0;
  }

  v10 = WeakValue[1];
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = v9;
  v11[5] = v10;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A>) -> (@out ())partial apply;
}

unint64_t WeakSelectionBasedStorage.$isSelectionEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v5 = 0;
  }

  else
  {
    v5 = Attribute;
  }

  return v5 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

unint64_t WeakSelectionBasedStorage.$action.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  return v4 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t SelectionMenuModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v33[0] = a2;
  *(&v33[0] + 1) = a3;

  *&v37 = a4;
  *(&v37 + 1) = a5;
  *&v38 = a6;
  *(&v38 + 1) = a7;
  v11 = type metadata accessor for SelectionMenuModifier(255, &v37);
  swift_getWitnessTable(protocol conformance descriptor for SelectionMenuModifier<A, B>, v11);
  v12 = type metadata accessor for _ViewModifier_Content();
  *&v37 = a4;
  *(&v37 + 1) = a5;
  *&v38 = a6;
  *(&v38 + 1) = a7;
  v13 = type metadata accessor for SelectionMenuModifierCore(0, &v37);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v12);
  MEMORY[0x18D00A570](v35, v33, v12, v13, WitnessTable);

  v33[0] = v35[0];
  v15 = type metadata accessor for ModifiedContent();
  v32[0] = WitnessTable;
  v32[1] = &protocol witness table for SelectionMenuModifierCore<A, B>;
  v16 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v32);
  View.sharingPickerHost()(v15, v17);

  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  v22 = v37;
  v23 = v38;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v18 = type metadata accessor for ModifiedContent();
  v21[0] = v17;
  v21[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable(v16, v18, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v35[6] = v28;
  v35[7] = v29;
  v35[8] = v30;
  v36 = v31;
  v35[2] = v24;
  v35[3] = v25;
  v35[4] = v26;
  v35[5] = v27;
  v35[0] = v22;
  v35[1] = v23;
  v19 = *(*(v18 - 8) + 8);
  v19(v35, v18);
  v28 = v33[6];
  v29 = v33[7];
  v30 = v33[8];
  v31 = v34;
  v24 = v33[2];
  v25 = v33[3];
  v26 = v33[4];
  v27 = v33[5];
  v22 = v33[0];
  v23 = v33[1];
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v37 = v22;
  v38 = v23;
  return v19(&v37, v18);
}

uint64_t static SelectionMenuModifierCore._makeInputs(modifier:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a2[1];
  v52[0] = *a2;
  v52[1] = v11;
  v13 = *a2;
  v12 = a2[1];
  v52[2] = a2[2];
  v14 = *a1;
  v36 = v13;
  v37 = v12;
  v38 = a2[2];
  outlined init with copy of _GraphInputs(v52, v35);
  _ViewInputs.init(withoutGeometry:)();
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(0);
  v34 = v14;
  *&v36 = a3;
  *(&v36 + 1) = a4;
  *&v37 = a5;
  *(&v37 + 1) = a6;
  type metadata accessor for SelectionMenuModifierCore(255, &v36);
  type metadata accessor for _GraphValue();
  v15 = _GraphValue.value.getter();
  v53[2] = v48;
  v53[3] = v49;
  v53[4] = v50;
  v54 = v51;
  v53[0] = v46;
  v53[1] = v47;
  v16 = AGSubgraphGetCurrent();
  if (!v16)
  {
    __break(1u);
  }

  v33[1] = v33;
  *&v45[36] = v48;
  *&v45[52] = v49;
  *&v45[68] = v50;
  *&v45[4] = v46;
  *&v45[20] = v47;
  *&v35[44] = *&v45[32];
  *&v35[60] = *&v45[48];
  *&v35[76] = *&v45[64];
  *&v35[12] = *v45;
  *&v45[84] = v51;
  *v35 = v16;
  *&v35[8] = v15;
  *&v35[92] = *&v45[80];
  *&v35[28] = *&v45[16];
  MEMORY[0x1EEE9AC00](v16);
  type metadata accessor for Set();
  v32[2] = swift_getFunctionTypeMetadata1();
  *&v36 = a3;
  *(&v36 + 1) = a4;
  *&v37 = a5;
  *(&v37 + 1) = a6;
  v17 = type metadata accessor for SelectionMenuModifierCore.Child(0, &v36);
  v32[3] = v17;
  v32[4] = swift_getWitnessTable(protocol conformance descriptor for SelectionMenuModifierCore<A, B>.Child, v17);
  outlined init with copy of _ViewInputs(v53, &v36);
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v35, closure #1 in Attribute.init<A>(_:)partial apply, v32, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v40 = *&v35[64];
  v41 = *&v35[80];
  v42 = *&v35[96];
  v36 = *v35;
  v37 = *&v35[16];
  v38 = *&v35[32];
  v39 = *&v35[48];
  (*(*(v17 - 8) + 8))(&v36, v17);
  v20 = LODWORD(v44[0]);
  v21 = a2[1];
  v43[0] = *a2;
  v43[1] = v21;
  v23 = *a2;
  v22 = a2[1];
  v43[2] = a2[2];
  *v35 = v23;
  *&v35[16] = v22;
  *&v35[32] = a2[2];
  v24 = outlined init with copy of _GraphInputs(v43, v44);
  v26 = _GraphInputs.selectionStorage<A>(forType:)(v24, a3, a5, v25);
  v28 = v27;
  v29 = v26 & 0xFFFFFFFF00000000;
  v44[0] = *v35;
  v44[1] = *&v35[16];
  v44[2] = *&v35[32];
  outlined destroy of _GraphInputs(v44);
  _GraphInputs.setSelectionStorage<A>(_:forType:)(v29 | v20, v28, v30, a3, a5);
  *&v35[32] = v48;
  *&v35[48] = v49;
  *&v35[64] = v50;
  *&v35[80] = v51;
  *v35 = v46;
  *&v35[16] = v47;
  return outlined destroy of _ViewInputs(v35);
}

uint64_t (*SelectionMenuModifierCore.Child.value.getter(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v3;
  v14 = *(v1 + 96);
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(v1 + 80);
  *(v6 + 112) = *(v1 + 64);
  *(v6 + 128) = v8;
  *(v6 + 144) = *(v1 + 96);
  v9 = *(v1 + 16);
  *(v6 + 48) = *v1;
  *(v6 + 64) = v9;
  v10 = *(v1 + 48);
  *(v6 + 80) = *(v1 + 32);
  *(v6 + 96) = v10;
  (*(*(a1 - 8) + 16))(v12, v13, a1);
  return partial apply for closure #1 in SelectionMenuModifierCore.Child.value.getter;
}