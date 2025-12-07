double closure #1 in DOCFileProviderSyncStateHeaderViewModel.refreshInAppMessage()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 80);
    *(Strong + 80) = a1;
    v6 = a1;

    DOCFileProviderSyncStateHeaderViewModel.syncStateDidChange()();
  }

  return result;
}

void DOCFileProviderSyncStateHeaderViewModel.syncStateDidChange()()
{
  v1 = (*(*v0 + 176))();
  v2 = v1;
  v3 = v0[11];
  if (v3 == 1)
  {
    goto LABEL_2;
  }

  if (!v1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_2;
  }

  if (!v3)
  {
LABEL_2:
    v0[11] = v2;
    v9 = v2;
    outlined consume of DOCProgressCollectionIndicatorView??(v3);
    if ((*(*v0 + 120))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v2, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    goto LABEL_4;
  }

  v7 = v0;
  type metadata accessor for NSObject();
  outlined copy of DOCProgressCollectionIndicatorView??(v3);
  v9 = v2;
  v8 = static NSObject.== infix(_:_:)();
  outlined consume of DOCProgressCollectionIndicatorView??(v3);

  if ((v8 & 1) == 0)
  {
    v0 = v7;
    v3 = v7[11];
    goto LABEL_2;
  }

LABEL_4:
}

id *DOCFileProviderSyncStateHeaderViewModel.deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?((v0 + 2));

  outlined destroy of DOCFileProviderSyncStateProviding?((v0 + 5));
  outlined consume of DOCProgressCollectionIndicatorView??(v0[11]);
  return v0;
}

uint64_t DOCFileProviderSyncStateHeaderViewModel.__deallocating_deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?((v0 + 2));

  outlined destroy of DOCFileProviderSyncStateProviding?((v0 + 5));
  outlined consume of DOCProgressCollectionIndicatorView??(v0[11]);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DOCFileProviderSyncStateHeaderViewModel.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCFileProviderSyncStateHeaderViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DOCFileProviderSyncStateHeaderViewModel.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

char *static DOCVibrancy.Style.stroke(_:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  a2[1] = v2;
  return result;
}

uint64_t static DOCVibrancy.ConfigurationTrait.name.getter()
{
  swift_beginAccess();
  v0 = *static DOCVibrancy.ConfigurationTrait.name;

  return v0;
}

double static DOCVibrancy.ConfigurationTrait.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static DOCVibrancy.ConfigurationTrait.name = a1;
  *&static DOCVibrancy.ConfigurationTrait.name[8] = a2;

  return result;
}

double key path setter for static DOCVibrancy.ConfigurationTrait.name : DOCVibrancy.ConfigurationTrait.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *static DOCVibrancy.ConfigurationTrait.name = v2;
  *&static DOCVibrancy.ConfigurationTrait.name[8] = v1;

  return result;
}

uint64_t protocol witness for static UITraitDefinition.name.getter in conformance DOCVibrancy.ConfigurationTrait()
{
  swift_beginAccess();
  v0 = *static DOCVibrancy.ConfigurationTrait.name;

  return v0;
}

void *UIMutableTraits.doc_vibrancyConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait);
  }

  return result;
}

uint64_t (*UIMutableTraits.doc_vibrancyConfiguration.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return UIMutableTraits.doc_vibrancyConfiguration.modify;
}

uint64_t UIMutableTraits.doc_vibrancyConfiguration.modify(uint64_t *a1)
{
  *(a1 + 24) = 3;
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

void *UITraitCollection.doc_vibrancyConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCVibrancy.ConfigurationTrait and conformance DOCVibrancy.ConfigurationTrait();

  return UITraitCollection.subscript.getter();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCVibrancy.Style.Category(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819044198;
  }

  else
  {
    v3 = 0x656B6F727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819044198;
  }

  else
  {
    v5 = 0x656B6F727473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCVibrancy.Style.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCVibrancy.Style.Category(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCVibrancy.Style.Category(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance DOCVibrancy.Style.Category(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCVibrancy.Style.Category.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCVibrancy.Style.Category(uint64_t *a1@<X8>)
{
  v2 = 1819044198;
  if (!*v1)
  {
    v2 = 0x656B6F727473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

DocumentManagerExecutables::DOCVibrancy::Style::Weight_optional __swiftcall DOCVibrancy.Style.Weight.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCVibrancy.Style.Weight.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t DOCVibrancy.Style.Weight.rawValue.getter()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCVibrancy.Style.Weight(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x7972616974726574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCVibrancy.Style.Weight()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCVibrancy.Style.Weight(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCVibrancy.Style.Weight(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCVibrancy.Style.Weight(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x7972616974726574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *static DOCVibrancy.Style.fill(_:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 1;
  a2[1] = v2;
  return result;
}

uint64_t DOCVibrancy.Style.description.getter()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 1);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCVibrancy.Style()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 1);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

BOOL static DOCVibrancy.Configuration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCVibrancy.Configuration(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

Swift::Int DOCVibrancy.Environment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t specialized static DOCVibrancy.Style.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 1819044198;
  }

  else
  {
    v5 = 0x656B6F727473;
  }

  if (v4)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (*a2)
  {
    v7 = 1819044198;
  }

  else
  {
    v7 = 0x656B6F727473;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = 0x7261646E6F636573;
  v13 = 0xE900000000000079;
  if (v2 != 1)
  {
    v12 = 0x7972616974726574;
    v13 = 0xE800000000000000;
  }

  if (v2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x7972616D697270;
  }

  if (v2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v16 = 0xE900000000000079;
      if (v14 != 0x7261646E6F636573)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = 0xE800000000000000;
      if (v14 != 0x7972616974726574)
      {
LABEL_37:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_38;
      }
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    if (v14 != 0x7972616D697270)
    {
      goto LABEL_37;
    }
  }

  if (v15 != v16)
  {
    goto LABEL_37;
  }

  v11 = 1;
LABEL_38:

  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.Style.Weight and conformance DOCVibrancy.Style.Weight);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.Environment and conformance DOCVibrancy.Environment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCVibrancy.Style(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for DOCVibrancy.Style(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for DOCVibrancy.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTag for DOCVibrancy.Configuration(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for DOCVibrancy.Configuration(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category()
{
  result = lazy protocol witness table cache variable for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category;
  if (!lazy protocol witness table cache variable for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVibrancy.Style.Category and conformance DOCVibrancy.Style.Category);
  }

  return result;
}

void __swiftcall DOCItemInfoContentViewController.contextMenuForItems(nodes:)(UIMenu_optional *__return_ptr retstr, Swift::OpaquePointer nodes)
{
  if (!(nodes._rawValue >> 62))
  {
    if (*((nodes._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return;
    }

    goto LABEL_3;
  }

  rawValue = nodes._rawValue;
  v7 = __CocoaSet.count.getter();
  nodes._rawValue = rawValue;
  if (v7 == 1)
  {
LABEL_3:
    v3 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
    v4 = nodes._rawValue;
    swift_beginAccess();
    v5 = *(v2 + v3);
    specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(v4, 0);
  }
}

void *contextMenuActionOverrider #1 (_:) in DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    v13 = v3;
    return v3;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1FC540](0, a2);
    goto LABEL_13;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(a2 + 32);
    swift_unknownObjectRetain();
LABEL_13:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = (*((*MEMORY[0x277D85000] & *static DOCOpenWithMenuController.shared) + 0x90))(v12, 0);
    swift_unknownObjectRelease();
    return v3;
  }

  __break(1u);
  return result;
}

void *DOCItemInfoContentViewController.iCloudLinkAction()()
{
  specialized DOCItemInfoContentViewController.createiCloudLinkBrowserAction()();
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = partial apply for closure #1 in DOCItemInfoContentViewController.iCloudLinkAction();
  v14 = v2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v12 = &block_descriptor_31_1;
  v3 = _Block_copy(&v9);

  [v1 setUnresolvedHandler_];
  _Block_release(v3);
  v4 = MEMORY[0x24C1FAD20](1802398060, 0xE400000000000000);
  v5 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  [v1 setAvailability_];
  [v1 setSupportsMultipleItems_];
  [v1 setMenuSortOrder_];
  v13 = specialized closure #1 in static NSPredicate.validateAction(_:);
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v12 = &block_descriptor_34_3;
  v6 = _Block_copy(&v9);
  v7 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v6);

  [v1 setFilteringPredicate_];

  return v1;
}

uint64_t filteredActions #1 (by:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4;
    v9 = v4 + 32;
    v4 = a1 + 56;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x24C1FC540](v6, v21);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(v9 + 8 * v6);
      }

      v11 = v10;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v13 = [v10 menuSortOrder];
      if (*(a1 + 16) && (v14 = v13, Hasher.init(_seed:)(), MEMORY[0x24C1FCBD0](v14), v15 = Hasher._finalize()(), v16 = -1 << *(a1 + 32), v17 = v15 & ~v16, ((*(v4 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (*(*(a1 + 48) + 8 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v4 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v6 == i)
        {
LABEL_19:
          v19 = v22;
          goto LABEL_21;
        }
      }

      else
      {
LABEL_5:

        if (v6 == i)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:

  return v19;
}

uint64_t closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(void **a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  v6 = v4 == 0;
  if (v4)
  {
    v7 = 0;
    v8 = *a1;
    while (1)
    {
      v9 = *(v5 + 8 * v7);
      if (v9 == [v8 menuSortOrder])
      {
        break;
      }

      v6 = v4 == ++v7;
      if (v4 == v7)
      {
        v7 = 0;
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v4 != 0;
  if (v4)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(v5 + 8 * v11);
      if (v12 == [v3 menuSortOrder])
      {
        break;
      }

      v10 = v4 != ++v11;
      if (v4 == v11)
      {
        v11 = 0;
        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v10 & (v7 < v11);
  }
}

void closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    v10 = DOCNode.fpfs_syncFetchFPItem()();
    if (v10)
    {
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So6FPItemCtGMd, &_ss23_ContiguousArrayStorageCySS_So6FPItemCtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = 0xD000000000000039;
      *(inited + 40) = 0x8000000249BF1650;
      *(inited + 48) = v11;
      v27 = v11;
      v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So6FPItemCTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSS_So6FPItemCtMd, &_sSS_So6FPItemCtMR);
      v14 = v9;
      v15 = [v14 effectiveAppearance];
      v16 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
      swift_beginAccess();
      v17 = *&v14[v16];
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      v19 = v17;
      v20 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

      v21 = type metadata accessor for DOCActionContext();
      v22 = objc_allocWithZone(v21);
      v26 = a5;
      swift_unknownObjectWeakInit();
      *&v22[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
      *&v22[OBJC_IVAR___DOCActionContext_appearance] = v15;
      *&v22[OBJC_IVAR___DOCActionContext_configuration] = v19;
      *&v22[OBJC_IVAR___DOCActionContext_presentingViewController] = v14;
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      *&v22[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
      *&v22[OBJC_IVAR___DOCActionContext_actionReporting] = v18;
      *&v22[OBJC_IVAR___DOCActionContext_userInfo] = v20;
      v28.receiver = v22;
      v28.super_class = v21;
      v23 = objc_msgSendSuper2(&v28, sel_init);
      (*((*MEMORY[0x277D85000] & *v23) + 0xC8))(a1);
      v24 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
      swift_beginAccess();
      v25 = *&v14[v24];
      specialized DOCActionManager.perform(_:on:actionContext:)(a4, v26, v23);

      if ([a4 performActionExitsEditMode])
      {
        [v14 setEditing:0 animated:1];
      }

      v9 = v27;
    }
  }
}

void closure #2 in DOCItemInfoContentViewController.shareAction()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (specialized Array<A>.fpfs_syncFetchAllFPItems()(a1))
    {

      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      *(v6 + 24) = v5;

      v7 = v5;
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in DOCItemInfoContentViewController.shareAction()(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() defaultPermission];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v8[4] = partial apply for closure #1 in closure #1 in closure #2 in DOCItemInfoContentViewController.shareAction();
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v8[3] = &block_descriptor_53_1;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v3 adoptPersonaFromNodes:isa andPerformBlock:v6];
  _Block_release(v6);
}

void closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (specialized Array<A>.fpfs_syncFetchAllFPItems()(a1))
  {

    if (a1 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v5 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [objc_opt_self() defaultManager];
      v8[4] = partial apply for closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction();
      v8[5] = a3;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v8[3] = &block_descriptor_37_2;
      v7 = _Block_copy(v8);

      [v6 fetchURLForItem:v5 completionHandler:v7];
      _Block_release(v7);
    }
  }
}

void closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  outlined init with copy of URL?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = a2;
      v33 = v24;
      *v23 = 136315138;
      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_2493AC000, v21, v22, "No node url found. Failed to handle create iCloud link action. Error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C1FE850](v24, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }
  }

  else
  {
    v29 = *(v11 + 32);
    v29(v18, v9, v10);
    (*(v11 + 16))(v14, v18, v10);
    v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v31 = swift_allocObject();
    v29((v31 + v30), v14, v10);
    *(v31 + ((v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

    DOCRunInMainThread(_:)();

    (*(v11 + 8))(v18, v10);
  }
}

void closure #1 in closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CreateiCloudLinkView();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v28[-v10];
  v12 = type metadata accessor for URL();
  v14 = MEMORY[0x28223BE20](v12, v13);
  (*(v16 + 16))(&v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v14);
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for CreateiCloudLinkViewModel();
  swift_allocObject();
  CreateiCloudLinkViewModel.init(fileURL:optionsGroups:dismissAction:)();

  CreateiCloudLinkView.init(viewModel:)();
  (*(v4 + 16))(v7, v11, v3);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy012CloudSharingB007CreateiE8LinkViewVGMd, _s7SwiftUI19UIHostingControllerCy012CloudSharingB007CreateiE8LinkViewVGMR));
  v19 = UIHostingController.init(rootView:)();
  [v19 setModalPresentationStyle_];
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v20 presentViewController:v19 animated:1 completion:0];
  }

  v22 = [v19 presentationController];

  if (v22)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_249BA1010;
      v26 = objc_opt_self();
      *(v25 + 32) = [v26 mediumDetent];
      *(v25 + 40) = [v26 largeDetent];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, 0x277D75A28);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v24 setDetents_];
    }

    else
    {
    }

    (*(v4 + 8))(v11, v3);
  }

  else
  {
    (*(v4 + 8))(v11, v3);
  }
}

uint64_t closure #2 in DOCItemInfoContentViewController.iCloudLinkAction()(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_19:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        swift_getObjectType();
        if ([v4 isShared] & 1) != 0 || (objc_msgSend(v4, sel_doc_isCollaborationInvitation) & 1) != 0 || (DOCNode.doc_isAppContainerRoot.getter())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isTrashed];
          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        specialized Array.remove(at:)(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 menuSortOrder];
      v103 = [v14 menuSortOrder];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 menuSortOrder];
        v7 = [v18 menuSortOrder];

        v21 = v20 >= v7;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v105 < v103)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        specialized Array.remove(at:)(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 menuSortOrder];
    v41 = [v39 menuSortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v106 + 1);
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, unint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = v6 + 1;
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if ((v18 - v20) >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 menuSortOrder];
          v35 = [v33 menuSortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 menuSortOrder];
          v20 = [v18 menuSortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_130;
  }

  v104 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_20;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    v113 = *(*a3 + 8 * v11);
    v15 = v113;
    v114 = v14;
    v16 = v14;
    v17 = v15;
    LODWORD(__dst) = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v114, &v113, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    v18 = v11 + 2;
    v105 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (v8 != v18)
    {
      v21 = *v20;
      v113 = *(v20 - 1);
      v22 = v113;
      v114 = v21;
      v23 = v21;
      v24 = v22;
      LODWORD(v22) = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v114, &v113, a5);

      ++v18;
      ++v20;
      if ((__dst ^ v22))
      {
        v8 = v18 - 1;
        break;
      }
    }

    if ((__dst & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = v105;
    if (v8 < v105)
    {
      goto LABEL_124;
    }

    if (v105 < v8)
    {
      v26 = 8 * v8 - 8;
      v27 = v8;
      do
      {
        if (v25 != --v27)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v29 = *(v28 + v19);
          *(v28 + v19) = *(v28 + v26);
          *(v28 + v26) = v29;
        }

        ++v25;
        v26 -= 8;
        v19 += 8;
      }

      while (v25 < v27);
LABEL_18:
      v12 = v8;
      v11 = v105;
      goto LABEL_20;
    }

    v12 = v8;
    v11 = v105;
LABEL_20:
    v30 = a3[1];
    if (v12 >= v30)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_120;
    }

    if (v12 - v11 >= v104)
    {
      goto LABEL_133;
    }

    v31 = v11 + v104;
    if (__OFADD__(v11, v104))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_127;
    }

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v11)
    {
      goto LABEL_123;
    }

    if (v12 == v31)
    {
LABEL_133:
      if (v12 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v82 = *a3;
      v83 = *a3 + 8 * v12 - 8;
      v106 = v11;
      v84 = v11 - v12;
      v102 = v31;
      do
      {
        v109 = v12;
        __dst = v83;
        v85 = *(v82 + 8 * v12);
        v103 = v84;
        v86 = v84;
        do
        {
          v113 = *v83;
          v87 = v113;
          v114 = v85;
          v88 = v85;
          v89 = v87;
          v90 = closure #1 in overrideSortOrder #1 (by:actions:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(&v114, &v113, a5);
          if (v6)
          {
            swift_bridgeObjectRelease_n();

            return;
          }

          v91 = v90;

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_126;
          }

          v92 = *v83;
          v85 = *(v83 + 8);
          *v83 = v85;
          *(v83 + 8) = v92;
          v83 -= 8;
        }

        while (!__CFADD__(v86++, 1));
        v12 = v109 + 1;
        v83 = __dst + 8;
        v84 = v103 - 1;
      }

      while (v109 + 1 != v102);
      v12 = v102;
      v11 = v106;
      if (v102 < v106)
      {
        goto LABEL_119;
      }
    }

    v108 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v11;
    *(v35 + 5) = v108;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v33)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v108;
    if (v108 >= v8)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v36 = v34 - 1;
    if (v34 >= 4)
    {
      v41 = &v10[16 * v34 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v10[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v37 = *(v10 + 4);
      v38 = *(v10 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_48:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v10[16 * v34];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v10[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v63 = &v10[16 * v34];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_62:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v10[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_69:
    v74 = v36 - 1;
    if (v36 - 1 >= v34)
    {
      break;
    }

    v75 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v76 = *&v10[16 * v74 + 32];
    v77 = *&v10[16 * v36 + 40];
    v78 = (v75 + 8 * v76);
    v79 = (v75 + 8 * *&v10[16 * v36 + 32]);
    v80 = (v75 + 8 * v77);

    specialized _merge<A>(low:mid:high:buffer:by:)(v78, v79, v80, __dst, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();

      return;
    }

    if (v77 < v76)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (v74 >= *(v10 + 2))
    {
      goto LABEL_105;
    }

    v81 = &v10[16 * v74];
    *(v81 + 4) = v76;
    *(v81 + 5) = v77;
    v115 = v10;
    specialized Array.remove(at:)(v36);
    v10 = v115;
    v34 = *(v115 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
LABEL_91:
  v115 = v10;
  v94 = *(v10 + 2);
  if (v94 < 2)
  {
LABEL_99:

    swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v95 = *a3;
      if (!*a3)
      {
        break;
      }

      v96 = *&v10[16 * v94];
      v97 = *&v10[16 * v94 + 24];
      v98 = (v95 + 8 * v96);
      v99 = (v95 + 8 * *&v10[16 * v94 + 16]);
      v100 = (v95 + 8 * v97);

      specialized _merge<A>(low:mid:high:buffer:by:)(v98, v99, v100, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      if (v94 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v10[16 * v94];
      *v101 = v96;
      *(v101 + 1) = v97;
      v115 = v10;
      specialized Array.remove(at:)(v94 - 1);
      v10 = v115;
      v94 = *(v115 + 2);
      if (v94 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);

  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

void specialized DOCItemInfoContentViewController.createiCloudLinkBrowserAction()()
{
  v0 = *MEMORY[0x277D05F88];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v11._object = 0x8000000249BDCB60;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x8000000249BDCB40;
    v4._countAndFlagsBits = 0x1000000000000015;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000033;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v11);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    aBlock[4] = DOCGridLayout.specIconWidth.modify;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_44_6;
    v9 = _Block_copy(aBlock);
    [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);
  }

  else
  {

    __break(1u);
  }
}

void specialized DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v11 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v12 = *(v6 + v11);
  v13 = OBJC_IVAR___DOCItemInfoContentViewController_configuration;
  swift_beginAccess();
  v14 = *(v7 + v13);
  v15 = v12;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = [v15 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v7 + v11);
  v21 = DOCActionManager.collaborationActions(for:presentingViewController:availability:)(a1, v7, 1);

  v289 = v19;
  specialized Array.append<A>(contentsOf:)(v21);
  v22 = *(v7 + v13);
  v23 = *(v7 + v11);
  v24 = v22;
  v25 = specialized DOCActionManager.smartMoveActions(forMovingNodes:in:to:currentConfiguration:)(a1, a3);

  specialized Array.append<A>(contentsOf:)(v25);
  v26 = *(v7 + v13);
  v27 = *(v7 + v11);
  v28 = v26;
  v275 = a1;
  v29 = specialized DOCActionManager.openWithAppActions(for:currentConfiguration:)(a1, v28);

  specialized Array.append<A>(contentsOf:)(v29);
  v30 = v19;
  aBlock = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_189;
  }

  v31 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v32 = &selRef__setLocationsInBrowseTab_;
  if (v31)
  {
    v33 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x24C1FC540](v33, v30);
      }

      else
      {
        if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_181;
        }

        v34 = *(v30 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_180;
      }

      v37 = [v34 identifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v33;
    }

    while (v36 != v31);
    v32 = &selRef__setLocationsInBrowseTab_;
  }

  aBlock = specialized Array._copyToContiguousArray()(v45, v44);
  specialized MutableCollection<>.sort(by:)(&aBlock);
  v46 = swift_allocObject();

  v30 = aBlock;
  v254 = v46;
  *(v46 + 16) = aBlock;
  v47 = (v30 & 0x4000000000000000) != 0 || v30 < 0;
  v48 = !v47;
  v278 = v48;
  if (v47)
  {
    v49 = __CocoaSet.count.getter();
  }

  else
  {
    v49 = *(v30 + 16);
  }

  v50 = -v49;
  v51 = 4;
  while (v50 + v51 != 4)
  {
    v52 = v51 - 4;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x24C1FC540](v51 - 4, v30);
    }

    else
    {
      if (v52 >= *(v30 + 16))
      {
        goto LABEL_182;
      }

      v53 = *(v30 + 8 * v51);
    }

    v54 = v53;
    v55 = [v53 v32[466]];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
    {

      goto LABEL_45;
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {

LABEL_45:
      v32 = &selRef__setLocationsInBrowseTab_;
      v62 = specialized static UIDocumentBrowserAction.shareAction(unresolvedHandler:)(DOCGridLayout.specIconWidth.modify, 0);
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v287 = partial apply for closure #2 in DOCItemInfoContentViewController.shareAction();
      v288 = v63;
      aBlock = MEMORY[0x277D85DD0];
      v284 = 1107296256;
      v285 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v286 = &block_descriptor_120;
      v64 = _Block_copy(&aBlock);

      [v62 setUnresolvedHandler_];
      _Block_release(v64);
      if ((v278 & swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      v65 = v30 & 0xFFFFFFFFFFFFFF8;
      if (v52 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v66 = *(v65 + 8 * v51);
        *(v65 + 8 * v51) = v62;

        *(v254 + 16) = v30;
        goto LABEL_49;
      }

      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      v272 = MEMORY[0x24C1FC540](0);
      goto LABEL_77;
    }

    ++v51;
    v32 = &selRef__setLocationsInBrowseTab_;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_184;
    }
  }

LABEL_49:
  v67 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    v68 = __CocoaSet.count.getter();
  }

  else
  {
    v68 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = -v68;
  v70 = 4;
  while (1)
  {
    if (v69 + v70 == 4)
    {

      goto LABEL_72;
    }

    v71 = v70 - 4;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x24C1FC540](v70 - 4, v30);
    }

    else
    {
      if (v71 >= *(v67 + 16))
      {
        goto LABEL_183;
      }

      v72 = *(v30 + 8 * v70);
    }

    v73 = v72;
    v74 = [v72 v32[466]];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
    {
      break;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v80)
    {
      goto LABEL_67;
    }

    ++v70;
    v32 = &selRef__setLocationsInBrowseTab_;
    v67 = v30 & 0xFFFFFFFFFFFFFF8;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_185;
    }
  }

LABEL_67:
  v81 = v30 & 0xFFFFFFFFFFFFFF8;

  v82 = DOCItemInfoContentViewController.iCloudLinkAction()();
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v30 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew()();
    v81 = v30 & 0xFFFFFFFFFFFFFF8;
  }

  if (v71 >= *(v81 + 16))
  {
    goto LABEL_195;
  }

  v84 = *(v81 + 8 * v70);
  *(v81 + 8 * v70) = v82;

  *(v254 + 16) = v30;
LABEL_72:
  v85 = v275;
  if (v275 >> 62)
  {
    v192 = __CocoaSet.count.getter();
    v85 = v275;
    if (v192 >= 1)
    {
      goto LABEL_74;
    }

LABEL_193:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    v193._countAndFlagsBits = 0;
    v193._object = 0xE000000000000000;
    v290.value.super.isa = 0;
    v290.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x277D84F90], v193, 0, v290, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x277D84F90], v238);

    return;
  }

  if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_193;
  }

LABEL_74:
  if ((v85 & 0xC000000000000001) != 0)
  {
    goto LABEL_196;
  }

  if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_238;
  }

  v272 = *(v85 + 32);
  swift_unknownObjectRetain();
LABEL_77:
  v86 = a6;
  if (a6 >> 62)
  {
    v87 = __CocoaSet.count.getter();
    v86 = a6;
    if (v87)
    {
LABEL_79:
      v88 = 0;
      v245 = v86 & 0xC000000000000001;
      v242 = v86 + 32;
      v243 = v86 & 0xFFFFFFFFFFFFFF8;
      v244 = v87;
      while (1)
      {
        if (v245)
        {
          v89 = v88;
          v90 = MEMORY[0x24C1FC540](v88);
          v91 = __OFADD__(v89, 1);
          v30 = v89 + 1;
          if (v91)
          {
            goto LABEL_188;
          }
        }

        else
        {
          if (v88 >= *(v243 + 16))
          {
            goto LABEL_239;
          }

          v90 = *(v242 + 8 * v88);
          v92 = v88;

          v91 = __OFADD__(v92, 1);
          v30 = v92 + 1;
          if (v91)
          {
            goto LABEL_188;
          }
        }

        v246 = v30;
        v93 = (*(*v90 + 152))();
        v94 = filteredActions #1 (by:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v93, v254);

        v95 = *(*v90 + 208);
        v96 = v95(v94);
        v97 = (*(*v90 + 176))(v96);
        if (v97)
        {
          v98 = v97;
          (*(*v90 + 200))();

          aBlock = specialized Array._copyToContiguousArray()(v100, v99);
          specialized MutableCollection<>.sort(by:)(&aBlock, v98);

          swift_bridgeObjectRelease_n();
          v97 = v95(aBlock);
        }

        v247 = v90;
        v101 = (*(*v90 + 200))(v97);
        v102 = v101;
        v30 = MEMORY[0x277D84F90];
        v280 = MEMORY[0x277D84F90];
        v261 = v101 & 0xFFFFFFFFFFFFFF8;
        v267 = v101 >> 62 ? __CocoaSet.count.getter() : *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v103 = 0;
        v263 = v102 & 0xC000000000000001;
        v257 = v30;
        v259 = v102;
        while (v267 != v103)
        {
          if (v263)
          {
            v104 = MEMORY[0x24C1FC540](v103, v102);
          }

          else
          {
            if (v103 >= *(v261 + 16))
            {
              goto LABEL_179;
            }

            v104 = *(v102 + 8 * v103 + 32);
          }

          v105 = v104;
          if (__OFADD__(v103, 1))
          {
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            v31 = __CocoaSet.count.getter();
            goto LABEL_3;
          }

          v265 = v103 + 1;
          v106 = [v104 identifier];
          if (!v106)
          {
            v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = MEMORY[0x24C1FAD20](v107);
          }

          v108 = [objc_opt_self() isDestructiveActionIdentifier_];

          if (v108)
          {
            v109 = 2;
          }

          else
          {
            v109 = 0;
          }

          UIDocumentBrowserAction.preferredLocalizedTitleForMenus.getter();
          if (![v105 imageOnlyForContextMenu])
          {
            v110 = [v105 image];
          }

          v111 = [v105 identifier];
          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v112 && v115 == v114)
          {
          }

          else
          {
            v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v116 & 1) == 0)
            {
              v127 = [v105 identifier];
              v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v125 = v128;

              goto LABEL_111;
            }
          }

          v117 = [v105 identifier];
          v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v120 = v119;

          v121 = [v105 localizedTitle];
          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          aBlock = v118;
          v284 = v120;

          MEMORY[0x24C1FAEA0](v122, v124);

          v126 = aBlock;
          v125 = v284;
LABEL_111:
          v102 = v259;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
          MEMORY[0x24C1FAD20](v126, v125);

          v129 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v130 = swift_allocObject();
          v130[2] = v129;
          v130[3] = v272;
          v130[4] = v105;
          v130[5] = v275;
          swift_unknownObjectRetain();
          v131 = v105;

          v240 = partial apply for closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:);
          v241 = v130;
          v238._rawValue = v109;
          v239 = 0;
          preferredElementSize = UIMenuElementSizeSmall;
          v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          if (a4)
          {

            v132 = a4(v30);

            v133 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4, a5);
            ++v103;
            if (v132)
            {
              v30 = v132;
              goto LABEL_115;
            }
          }

          else
          {

LABEL_115:
            MEMORY[0x24C1FB090](v133);
            if (*((v280 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v257 = v280;
            v103 = v265;
          }
        }

        v134 = (*(*v247 + 232))(v257);
        v135 = (*(*v247 + 344))(v134);
        if (!v135)
        {
          goto LABEL_81;
        }

        v30 = v135;
        v136 = v135 & 0xFFFFFFFFFFFFFF8;
        if (v135 >> 62)
        {
          break;
        }

        v137 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v137)
        {
          goto LABEL_122;
        }

LABEL_80:

LABEL_81:

        v88 = v246;
        v86 = a6;
        if (v246 == v244)
        {
          goto LABEL_198;
        }
      }

      v137 = __CocoaSet.count.getter();
      if (!v137)
      {
        goto LABEL_80;
      }

LABEL_122:
      v138 = 0;
      v252 = v30 + 32;
      v253 = v30 & 0xC000000000000001;
      v250 = v136;
      v251 = v30;
      v249 = v137;
LABEL_124:
      if (v253)
      {
        v256 = MEMORY[0x24C1FC540](v138, v30);
        v91 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v91)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v138 >= *(v136 + 16))
        {
          goto LABEL_187;
        }

        v256 = *(v252 + 8 * v138);

        v91 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v91)
        {
          goto LABEL_186;
        }
      }

      v255 = v139;
      v140 = (*(*v256 + 152))();
      v141 = filteredActions #1 (by:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v140, v254);

      v142 = *(*v256 + 208);
      v143 = v142(v141);
      v144 = (*(*v256 + 176))(v143);
      if (v144)
      {
        v145 = v144;
        (*(*v256 + 200))();

        aBlock = specialized Array._copyToContiguousArray()(v147, v146);
        specialized MutableCollection<>.sort(by:)(&aBlock, v145);

        swift_bridgeObjectRelease_n();
        v144 = v142(aBlock);
      }

      v148 = (*(*v256 + 200))(v144);
      v149 = v148;
      v30 = MEMORY[0x277D84F90];
      v281 = MEMORY[0x277D84F90];
      v150 = &selRef__setLocationsInBrowseTab_;
      v262 = v148 & 0xFFFFFFFFFFFFFF8;
      if (v148 >> 62)
      {
        v268 = __CocoaSet.count.getter();
      }

      else
      {
        v268 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v151 = 0;
      v264 = v149 & 0xC000000000000001;
      v258 = v30;
      v260 = v149;
      while (1)
      {
        if (v268 == v151)
        {

          (*(*v256 + 232))(v258);

          v136 = v250;
          v138 = v255;
          v30 = v251;
          if (v255 == v249)
          {
            goto LABEL_80;
          }

          goto LABEL_124;
        }

        if (v264)
        {
          v152 = MEMORY[0x24C1FC540](v151, v149);
        }

        else
        {
          if (v151 >= *(v262 + 16))
          {
            goto LABEL_177;
          }

          v152 = *(v149 + 8 * v151 + 32);
        }

        v30 = v152;
        if (__OFADD__(v151, 1))
        {
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v266 = v151 + 1;
        v153 = [v152 v150[466]];
        if (!v153)
        {
          v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v153 = MEMORY[0x24C1FAD20](v154);
        }

        v155 = [objc_opt_self() isDestructiveActionIdentifier_];

        v156 = v155 ? 2 : 0;
        v157 = [v30 v150[466]];
        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v160 = v159;

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v158 && v161 == v160)
        {
          break;
        }

        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v162)
        {
          goto LABEL_146;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v158 && v183 == v160)
        {
          break;
        }

        v184 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v184)
        {
          goto LABEL_147;
        }

LABEL_148:
        v163 = [v30 localizedTitle];
LABEL_149:
        v164 = v163;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (![v30 imageOnlyForContextMenu])
        {
          v165 = [v30 image];
        }

        v166 = [v30 v150[466]];
        v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v168;

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v167 && v170 == v169)
        {
          v171 = v156;
        }

        else
        {
          v171 = v156;
          v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v172 & 1) == 0)
          {
            v185 = [v30 v150[466]];
            v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v181 = v186;

            goto LABEL_161;
          }
        }

        v173 = [v30 v150[466]];
        v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v175;

        v177 = [v30 localizedTitle];
        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        aBlock = v174;
        v284 = v176;

        MEMORY[0x24C1FAEA0](v178, v180);

        v182 = aBlock;
        v181 = v284;
LABEL_161:
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
        MEMORY[0x24C1FAD20](v182, v181);

        v187 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v188 = swift_allocObject();
        v188[2] = v187;
        v188[3] = v272;
        v188[4] = v30;
        v188[5] = v275;
        swift_unknownObjectRetain();

        v189 = v30;
        v240 = closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)partial apply;
        v241 = v188;
        v238._rawValue = v171;
        v239 = 0;
        preferredElementSize = UIMenuElementSizeSmall;
        v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        if (a4)
        {

          v190 = a4(v30);

          v191 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4, a5);
          ++v151;
          v150 = &selRef__setLocationsInBrowseTab_;
          v149 = v260;
          if (v190)
          {
            v30 = v190;
            goto LABEL_165;
          }
        }

        else
        {

          v150 = &selRef__setLocationsInBrowseTab_;
          v149 = v260;
LABEL_165:
          MEMORY[0x24C1FB090](v191);
          if (*((v281 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v281 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v258 = v281;
          v151 = v266;
        }
      }

LABEL_146:

LABEL_147:
      v163 = [v30 localizedCompactTitle];
      if (v163)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }
  }

  else
  {
    v87 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_79;
    }
  }

LABEL_198:
  if (a6 >> 62)
  {
    v194 = __CocoaSet.count.getter();
  }

  else
  {
    v194 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v195 = MEMORY[0x277D84F90];
  if (!v194)
  {
    goto LABEL_233;
  }

  aBlock = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v194 & 0x8000000000000000) == 0)
  {
    v196 = 0;
    v269 = v194;
    do
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v199 = MEMORY[0x24C1FC540](v196, a6);
      }

      else
      {
        v199 = *(a6 + 32 + 8 * v196);
      }

      v282 = v195;
      v200 = (*(*v199 + 224))();
      specialized Array.append<A>(contentsOf:)(v200);
      v201 = (*(*v199 + 344))();
      if (v201)
      {
        v202 = v201;
        v203 = v201 & 0xFFFFFFFFFFFFFF8;
        if (v201 >> 62)
        {
          v204 = __CocoaSet.count.getter();
        }

        else
        {
          v204 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v271 = v199;
        v274 = v196;
        if (v204)
        {
          v205 = 0;
          v277 = v204;
          v279 = v202 & 0xC000000000000001;
          v276 = v202;
          do
          {
            if (v279)
            {
              v206 = MEMORY[0x24C1FC540](v205, v202);
              v207 = v205 + 1;
              if (__OFADD__(v205, 1))
              {
                goto LABEL_236;
              }
            }

            else
            {
              if (v205 >= *(v203 + 16))
              {
                goto LABEL_237;
              }

              v206 = *(v202 + 8 * v205 + 32);

              v207 = v205 + 1;
              if (__OFADD__(v205, 1))
              {
LABEL_236:
                __break(1u);
LABEL_237:
                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

                v233 = _bridgeCocoaArray<A>(_:)();

                goto LABEL_235;
              }
            }

            v208 = (*(*v206 + 296))();
            if (!v209)
            {
              goto LABEL_242;
            }

            v210 = v208;
            v211 = v209;
            v212 = (*(*v206 + 320))();
            if (!v213)
            {
              goto LABEL_243;
            }

            v214 = v212;
            v215 = v213;
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
            v216 = MEMORY[0x24C1FAD20](v214, v215);

            v217 = [objc_opt_self() systemImageNamed_];

            preferredElementSizea = (*(*v206 + 224))();
            v218._countAndFlagsBits = v210;
            v218._object = v211;
            v292.value.super.isa = v217;
            v292.is_nil = 0;
            UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v219, v218, 0, v292, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, v238);
            v221 = v220;
            MEMORY[0x24C1FB090]();
            if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            ++v205;
            v202 = v276;
          }

          while (v207 != v277);
        }

        v195 = MEMORY[0x277D84F90];
        v194 = v269;
        v196 = v274;
        v199 = v271;
      }

      if ((*(*v199 + 248))())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
        v197 = (*(*v199 + 272))();
        v198._countAndFlagsBits = 0;
        v198._object = 0xE000000000000000;
        v291.value.super.isa = 0;
        v291.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v282, v198, 0, v291, 1, v197, v282, v238);
      }

      else
      {
        v222 = (*(*v199 + 296))();
        if (!v223)
        {
          goto LABEL_245;
        }

        v224 = v222;
        v225 = v223;
        v226 = (*(*v199 + 320))();
        if (!v227)
        {
          goto LABEL_244;
        }

        v228 = v226;
        v229 = v227;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
        v230 = MEMORY[0x24C1FAD20](v228, v229);

        v231 = [objc_opt_self() systemImageNamed_];

        v232._countAndFlagsBits = v224;
        v232._object = v225;
        v293.value.super.isa = v231;
        v293.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v282, v232, 0, v293, 0, 0xFFFFFFFFFFFFFFFFLL, v282, v238);
      }

      ++v196;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v196 != v194);
    v195 = aBlock;
LABEL_233:
    if (v195 >> 62)
    {
      goto LABEL_240;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
    v233 = v195;
LABEL_235:

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    v234._countAndFlagsBits = 0;
    v234._object = 0xE000000000000000;
    v294.value.super.isa = 0;
    v294.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v235, v234, 0, v294, 1, 0xFFFFFFFFFFFFFFFFLL, v233, v238);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);

  __break(1u);
}

id specialized DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v58._object = 0x8000000249BF15F0;
  v7._countAndFlagsBits = 0x6F5420646441;
  v7._object = 0xE600000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0x6F5420646441;
  v9._object = 0xE600000000000000;
  v58._countAndFlagsBits = 0xD000000000000020;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v58);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = result;
  v59._object = 0x8000000249BF1620;
  v12._countAndFlagsBits = 0x6341206B63697551;
  v12._object = 0xED0000736E6F6974;
  v59._countAndFlagsBits = 0xD000000000000027;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0x6341206B63697551;
  v14._object = 0xED0000736E6F6974;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v59);

  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v18 = v17;
  swift_beginAccess();
  *(v18 + 16) = v16;

  swift_beginAccess();
  *(v18 + 48) = 0;
  swift_beginAccess();
  *(v18 + 64) = v15;

  swift_beginAccess();
  *(v18 + 80) = xmmword_249BB6110;

  swift_beginAccess();
  *(v18 + 56) = 2;
  swift_beginAccess();
  *(v18 + 24) = 0;

  swift_beginAccess();
  *(v18 + 96) = 0;

  v19 = OBJC_IVAR___DOCItemInfoContentViewController_actionManager;
  swift_beginAccess();
  v20 = *(v3 + v19);
  LOBYTE(v16) = specialized DOCActionManager.shouldShowAddToSubmenu(for:)(a1);

  if (v16)
  {
    v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
    swift_allocObject();
    DOCItemCollectionViewController._DOCSectionDescriptor.init()();
    v23 = v22;
    swift_beginAccess();
    *(v23 + 16) = v21;

    swift_beginAccess();
    *(v23 + 48) = 0;
    swift_beginAccess();
    *(v23 + 64) = v10;

    swift_beginAccess();
    *(v23 + 80) = xmmword_249BA62B0;

    swift_beginAccess();
    *(v23 + 56) = 2;
    swift_beginAccess();
    *(v23 + 24) = 0;

    swift_beginAccess();
    *(v23 + 96) = 0;

    v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_249BA1010;
    *(v25 + 32) = v23;
    *(v25 + 40) = v18;
  }

  else
  {

    v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #3 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_249BA0290;
    *(v25 + 32) = v18;
  }

  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v27 = v26;
  swift_beginAccess();
  *(v27 + 16) = v24;

  swift_beginAccess();
  *(v27 + 48) = 1;
  swift_beginAccess();
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;

  swift_beginAccess();
  *(v27 + 80) = 0;
  *(v27 + 88) = 0;

  swift_beginAccess();
  *(v27 + 56) = 2;
  swift_beginAccess();
  *(v27 + 24) = 0;

  swift_beginAccess();
  *(v27 + 96) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BB6120;
  v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #4 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v31 = v30;
  swift_beginAccess();
  *(v31 + 16) = v29;

  swift_beginAccess();
  *(v31 + 48) = 1;
  swift_beginAccess();
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;

  swift_beginAccess();
  *(v31 + 80) = 0;
  *(v31 + 88) = 0;

  swift_beginAccess();
  *(v31 + 56) = 1;
  swift_beginAccess();
  *(v31 + 24) = &outlined read-only object #5 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:);

  swift_beginAccess();
  *(v31 + 96) = 0;

  *(inited + 32) = v31;
  v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #6 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v34 = v33;
  swift_beginAccess();
  *(v34 + 16) = v32;

  swift_beginAccess();
  *(v34 + 48) = 1;
  swift_beginAccess();
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;

  swift_beginAccess();
  *(v34 + 80) = 0;
  *(v34 + 88) = 0;

  swift_beginAccess();
  *(v34 + 56) = 2;
  swift_beginAccess();
  *(v34 + 24) = 0;

  swift_beginAccess();
  *(v34 + 96) = 0;

  *(inited + 40) = v34;
  v35 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #7 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v37 = v36;
  swift_beginAccess();
  *(v37 + 16) = v35;

  swift_beginAccess();
  *(v37 + 48) = 1;
  swift_beginAccess();
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;

  swift_beginAccess();
  *(v37 + 80) = 0;
  *(v37 + 88) = 0;

  swift_beginAccess();
  *(v37 + 56) = 2;
  swift_beginAccess();
  *(v37 + 24) = 0;

  swift_beginAccess();
  *(v37 + 96) = 0;

  *(inited + 48) = v37;
  v38 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #8 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v40 = v39;
  swift_beginAccess();
  *(v40 + 16) = v38;

  swift_beginAccess();
  *(v40 + 48) = 1;
  swift_beginAccess();
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;

  swift_beginAccess();
  *(v40 + 80) = 0;
  *(v40 + 88) = 0;

  swift_beginAccess();
  *(v40 + 56) = 2;
  swift_beginAccess();
  *(v40 + 24) = 0;

  swift_beginAccess();
  *(v40 + 96) = 0;

  *(inited + 56) = v40;
  v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #9 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v43 = v42;
  swift_beginAccess();
  *(v43 + 16) = v41;

  swift_beginAccess();
  *(v43 + 48) = 1;
  swift_beginAccess();
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;

  swift_beginAccess();
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;

  swift_beginAccess();
  *(v43 + 56) = 2;
  swift_beginAccess();
  *(v43 + 24) = 0;

  swift_beginAccess();
  *(v43 + 96) = 0;

  *(inited + 64) = v43;
  v44 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #10 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v46 = v45;
  swift_beginAccess();
  *(v46 + 16) = v44;

  swift_beginAccess();
  *(v46 + 48) = 1;
  swift_beginAccess();
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;

  swift_beginAccess();
  *(v46 + 80) = 0;
  *(v46 + 88) = 0;

  swift_beginAccess();
  *(v46 + 56) = 2;
  swift_beginAccess();
  *(v46 + 24) = 0;

  swift_beginAccess();
  *(v46 + 96) = 0;

  *(inited + 72) = v46;
  v47 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #11 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v49 = v48;
  swift_beginAccess();
  *(v49 + 16) = v47;

  swift_beginAccess();
  *(v49 + 48) = 1;
  swift_beginAccess();
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;

  swift_beginAccess();
  *(v49 + 80) = 0;
  *(v49 + 88) = 0;

  swift_beginAccess();
  *(v49 + 56) = 2;
  swift_beginAccess();
  *(v49 + 24) = 0;

  swift_beginAccess();
  *(v49 + 96) = 0;

  *(inited + 80) = v49;
  *(inited + 88) = v27;
  v50 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #12 of DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:));
  swift_allocObject();
  DOCItemCollectionViewController._DOCSectionDescriptor.init()();
  v52 = v51;
  swift_beginAccess();
  *(v52 + 16) = v50;

  swift_beginAccess();
  *(v52 + 48) = 1;
  swift_beginAccess();
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;

  swift_beginAccess();
  *(v52 + 80) = 0;
  *(v52 + 88) = 0;

  swift_beginAccess();
  *(v52 + 56) = 2;
  swift_beginAccess();
  *(v52 + 24) = 0;

  swift_beginAccess();
  *(v52 + 96) = 0;

  *(inited + 96) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = a1;

  specialized DOCItemInfoContentViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v54, a2, MEMORY[0x277D84F90], partial apply for contextMenuActionOverrider #1 (_:) in DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:), v53, inited);
  v56 = v55;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v56;
}

uint64_t objectdestroy_21Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in closure #1 in DOCItemInfoContentViewController.iCloudLinkAction()(v0 + v2, v3);
}

Swift::String *DOCViewOptionsViewModel.__allocating_init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19)
{
  v70 = a8;
  v68 = a5;
  v69 = a7;
  v66 = a3;
  v67 = a6;
  v65 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v71 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v62 - v27;
  v29 = swift_allocObject();
  v30 = *a4;
  v63 = *a2;
  v64 = v30;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v32 = result;
  v74._object = 0x8000000249BE0C60;
  v33._countAndFlagsBits = 0x74704F2077656956;
  v33._object = 0xEC000000736E6F69;
  v74._countAndFlagsBits = 0xD000000000000025;
  v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v34.value._object = 0xEB00000000656C62;
  v35._countAndFlagsBits = 0x74704F2077656956;
  v35._object = 0xEC000000736E6F69;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v74);

  v29[1] = v36;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v37 = result;
  v75._object = 0x8000000249BE0C90;
  v38._countAndFlagsBits = 0x79422070756F7247;
  v75._countAndFlagsBits = 0xD00000000000003CLL;
  v38._object = 0xE800000000000000;
  v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v39.value._object = 0xEB00000000656C62;
  v40._countAndFlagsBits = 0x79422070756F7247;
  v40._object = 0xE800000000000000;
  v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v75);

  v29[2] = v41;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v42 = result;
  v76._object = 0x8000000249BE0CD0;
  v43._countAndFlagsBits = 0x79422074726F53;
  v76._countAndFlagsBits = 0xD00000000000003BLL;
  v43._object = 0xE700000000000000;
  v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v44.value._object = 0xEB00000000656C62;
  v45._countAndFlagsBits = 0x79422074726F53;
  v45._object = 0xE700000000000000;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v76);

  v29[3] = v46;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v47 = result;
  v62 = v21;
  v77._object = 0x8000000249BE0D30;
  v48._object = 0x8000000249BE0D10;
  v49._object = 0x8000000249BE0D10;
  v77._countAndFlagsBits = 0xD000000000000042;
  v48._countAndFlagsBits = 0xD000000000000012;
  v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v50.value._object = 0xEB00000000656C62;
  v49._countAndFlagsBits = 0xD000000000000012;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v50, v47, v49, v77);

  v29[4] = v51;
  result = _DocumentManagerBundle();
  if (result)
  {
    v52 = result;
    v78._object = 0x8000000249BE0DA0;
    v53._countAndFlagsBits = 0xD00000000000001CLL;
    v53._object = 0x8000000249BE0D80;
    v54._countAndFlagsBits = 0xD00000000000001CLL;
    v54._object = 0x8000000249BE0D80;
    v78._countAndFlagsBits = 0xD00000000000004ELL;
    v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v55.value._object = 0xEB00000000656C62;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v55, v52, v54, v78);

    v29[5] = v56;
    v57 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
    v73 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    Published.init(initialValue:)();
    *(&v29->_object + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate) = 0;
    swift_unknownObjectWeakInit();
    v58 = v66;
    *(&v29->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_groupingBehaviors) = v65;
    *(&v29->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sortModes) = v58;
    *(&v29->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sizeSettings) = v67;
    swift_beginAccess();
    LOBYTE(v72) = v63;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v72) = v64;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v29->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending) = v68 & 1;
    swift_beginAccess();
    LOBYTE(v72) = v69;
    Published.init(initialValue:)();
    swift_endAccess();
    v59 = v70;
    swift_beginAccess();
    v72 = v59;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v72) = a17 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
    (*(*(v60 - 8) + 8))(v29 + v57, v60);
    LOBYTE(v72) = a19;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v29->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_availableSections) = &outlined read-only object #0 of DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:);
    v72 = a18;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
    Published.projectedValue.getter();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>();
    Publisher<>.assign(to:)();
    v61 = v62;
    (*(v22 + 16))(v71, v28, v62);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    (*(v22 + 8))(v28, v61);

    return v29;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t DOCViewOptionsViewModel.isInPopover.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DOCViewOptionsViewModel.isInPopover.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::String *DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double d0_0, double d1_0, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a9, double a10, unsigned __int8 a19)
{
  v19 = specialized DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(a1, a2, a3, a4, a5, a6, a7, a8, d0_0, d1_0, a11, a12, a13, a14, a15, a16, a9, a10, a19);

  return v19;
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedGroupingBehavior.didset();
}

uint64_t DOCViewOptionsViewModel.selectedSortMode.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSortMode.didset();
}

uint64_t DOCViewOptionsViewModel.selectedSizeSetting.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSetting.didset();
}

void DOCViewOptionsViewModel.selectedSizeSliderValue.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensions.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v2 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCViewOptionsViewModel.$showFilenameExtensions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t DOCViewOptionsViewModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCViewOptionsViewModel.groupByRowTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DOCViewOptionsViewModel.sortByRowTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DOCViewOptionsViewModel.sizeSettingsTitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensionsTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

Swift::String __swiftcall DOCViewOptionsViewModel.sizeSettingMenuItemAXIdentifier(for:)(DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting a1)
{
  if (a1)
  {
    if (a1 == DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_regular)
    {
      v1 = 0x72616C75676572;
    }

    else
    {
      v1 = 0x6D6F74737563;
    }

    if (a1 == DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_regular)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x746361706D6F63;
  }

  v3 = objc_opt_self();
  v4 = MEMORY[0x24C1FAD20](v1, v2);

  v5 = [v3 sizeSettingMenuItemForSize_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensionsAXIdentifier.getter(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void key path getter for DOCViewOptionsViewModel.isInPopover : DOCViewOptionsViewModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for DOCViewOptionsViewModel.isInPopover : DOCViewOptionsViewModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*DOCViewOptionsViewModel.isInPopover.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ObservableString.value.modify;
}

uint64_t key path setter for DOCViewOptionsViewModel.$isInPopover : DOCViewOptionsViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd, &_s7Combine9PublishedV9PublisherVySbSg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v12, v3);
}

uint64_t DOCViewOptionsViewModel.$isInPopover.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd, &_s7Combine9PublishedV9PublisherVySbSg_GMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$isInPopover.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd, &_s7Combine9PublishedV9PublisherVySbSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ObservableString.$value.modify;
}

uint64_t DOCViewOptionsViewModel.showFilenameExtensions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for DOCViewOptionsViewModel.showFilenameExtensions : DOCViewOptionsViewModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void (*DOCViewOptionsViewModel.showFilenameExtensions.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4[56] = *v4;
  return DOCViewOptionsViewModel.showFilenameExtensions.modify;
}

void DOCViewOptionsViewModel.showFilenameExtensions.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[56];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2[6];
  *v2 = v3;

  static Published.subscript.setter();
  v5 = v4 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t key path setter for DOCViewOptionsViewModel.$showFilenameExtensions : DOCViewOptionsViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v12, v3);
}

uint64_t (*DOCViewOptionsViewModel.$showFilenameExtensions.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__showFilenameExtensions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

double DOCViewOptionsViewModel.selectedGroupingBehavior.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

void key path getter for DOCViewOptionsViewModel.selectedGroupingBehavior : DOCViewOptionsViewModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for DOCViewOptionsViewModel.selectedGroupingBehavior : DOCViewOptionsViewModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedGroupingBehavior.didset();
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5[0] = v5[1];
    (*(v3 + 8))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedGroupingBehavior.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return DOCViewOptionsViewModel.selectedGroupingBehavior.modify;
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedGroupingBehavior : DOCViewOptionsViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v12, v3);
}

uint64_t DOCViewOptionsViewModel.$selectedGroupingBehavior.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedGroupingBehavior.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables23DOCItemGroupingBehaviorO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedGroupingBehavior;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

double DOCViewOptionsViewModel.selectedSortMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

void key path getter for DOCViewOptionsViewModel.selectedSortMode : DOCViewOptionsViewModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t DOCViewOptionsViewModel.selectedSortMode.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5[0] = v5[1];
    (*(v3 + 16))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedSortMode.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return DOCViewOptionsViewModel.selectedSortMode.modify;
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedSortMode : DOCViewOptionsViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v12, v3);
}

uint64_t DOCViewOptionsViewModel.$selectedSortMode.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedSortMode.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables15DOCItemSortModeO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSortMode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t DOCViewOptionsViewModel.selectedSizeSetting.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for DOCViewOptionsViewModel.selectedSizeSetting : DOCViewOptionsViewModel(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for DOCViewOptionsViewModel.selectedSortMode : DOCViewOptionsViewModel(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = static Published.subscript.setter();
  return a7(v8);
}

uint64_t DOCViewOptionsViewModel.selectedSizeSetting.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v3 + 24))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*DOCViewOptionsViewModel.selectedSizeSetting.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = *(a1 + 9);
  return DOCViewOptionsViewModel.selectedSizeSetting.modify;
}

uint64_t DOCViewOptionsViewModel.selectedGroupingBehavior.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v7;

  v8 = static Published.subscript.setter();
  return a5(v8);
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedSizeSetting : DOCViewOptionsViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v12, v3);
}

uint64_t DOCViewOptionsViewModel.$selectedSizeSetting.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedSizeSetting.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMd, &_s7Combine9PublishedV9PublisherVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSetting;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

double DOCViewOptionsViewModel.selectedSizeSliderValue.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for DOCViewOptionsViewModel.selectedSizeSliderValue : DOCViewOptionsViewModel@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

void key path setter for DOCViewOptionsViewModel.selectedSizeSliderValue : DOCViewOptionsViewModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

void DOCViewOptionsViewModel.selectedSizeSliderValue.didset()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        (*(v2 + 32))(v0, v4, ObjectType, v2);
        swift_unknownObjectRelease();
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t (*DOCViewOptionsViewModel.selectedSizeSliderValue.modify(void *a1))()
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return DOCViewOptionsViewModel.selectedSizeSliderValue.modify;
}

void DOCViewOptionsViewModel.selectedSizeSliderValue.modify(void *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v2;

  static Published.subscript.setter();
  DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

double key path getter for DOCViewOptionsViewModel.$isInPopover : DOCViewOptionsViewModel(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  swift_endAccess();
  return result;
}

uint64_t key path setter for DOCViewOptionsViewModel.$selectedSizeSliderValue : DOCViewOptionsViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v12, v3);
}

uint64_t DOCViewOptionsViewModel.$selectedSizeSliderValue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DOCViewOptionsViewModel.$selectedSizeSliderValue.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSliderValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return USBEraseViewModel.$name.modify;
}

uint64_t DOCViewOptionsViewModel.selectedSortOrderAscending.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCViewOptionsViewModel.selectedSortOrderAscending.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCViewOptionsViewModel.forwardingDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCViewOptionsViewModel.forwardingDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

char *DOCViewOptionsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__showFilenameExtensions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedGroupingBehavior;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables23DOCItemGroupingBehaviorOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSortMode;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables15DOCItemSortModeOGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSetting;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMd, &_s7Combine9PublishedVy26DocumentManagerExecutables29DOCBrowserLayoutConfigurationV11SizeSettingOGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__selectedSizeSliderValue;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate);

  return v0;
}

uint64_t DOCViewOptionsViewModel.__deallocating_deinit()
{
  DOCViewOptionsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DOCViewOptionsViewModelable.groupByRowTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.sortByRowTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.sizeSettingsTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.showFilenameExtensionsTitle.getter in conformance DOCViewOptionsViewModel()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.isInPopover.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.isInPopover.setter in conformance DOCViewOptionsViewModel(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*protocol witness for DOCViewOptionsViewModelable.isInPopover.modify in conformance DOCViewOptionsViewModel(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return USBEraseViewModel.name.modify;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.sizeSettingMenuItemAXIdentifier(for:) in conformance DOCViewOptionsViewModel(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x72616C75676572;
    }

    else
    {
      v1 = 0x6D6F74737563;
    }

    if (a1 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x746361706D6F63;
  }

  v3 = objc_opt_self();
  v4 = MEMORY[0x24C1FAD20](v1, v2);

  v5 = [v3 sizeSettingMenuItemForSize_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.groupByMenuPresentingButtonAXIdentifier.getter in conformance DOCViewOptionsViewModel(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.showFilenameExtensions.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void (*protocol witness for DOCViewOptionsViewModelable.showFilenameExtensions.modify in conformance DOCViewOptionsViewModel(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.showFilenameExtensions.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

double protocol witness for DOCViewOptionsViewModelable.selectedGroupingBehavior.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedGroupingBehavior.setter in conformance DOCViewOptionsViewModel(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedGroupingBehavior.didset();
}

void (*protocol witness for DOCViewOptionsViewModelable.selectedGroupingBehavior.modify in conformance DOCViewOptionsViewModel(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.selectedGroupingBehavior.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

double protocol witness for DOCViewOptionsViewModelable.selectedSortMode.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSortMode.setter in conformance DOCViewOptionsViewModel(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSortMode.didset();
}

void (*protocol witness for DOCViewOptionsViewModelable.selectedSortMode.modify in conformance DOCViewOptionsViewModel(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.selectedSortMode.modify(v2);
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSortOrderAscending.getter in conformance DOCViewOptionsViewModel()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  swift_beginAccess();
  return *(v0 + v1);
}

void protocol witness for DOCViewOptionsViewModelable.selectedSortOrderAscending.setter in conformance DOCViewOptionsViewModel(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSizeSetting.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.selectedSizeSetting.setter in conformance DOCViewOptionsViewModel(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return DOCViewOptionsViewModel.selectedSizeSetting.didset();
}

void (*protocol witness for DOCViewOptionsViewModelable.selectedSizeSetting.modify in conformance DOCViewOptionsViewModel(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DOCViewOptionsViewModel.selectedSizeSetting.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

double protocol witness for DOCViewOptionsViewModelable.selectedSizeSliderValue.getter in conformance DOCViewOptionsViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void protocol witness for DOCViewOptionsViewModelable.selectedSizeSliderValue.setter in conformance DOCViewOptionsViewModel(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DOCViewOptionsViewModel.selectedSizeSliderValue.didset();
}

void (*protocol witness for DOCViewOptionsViewModelable.selectedSizeSliderValue.modify in conformance DOCViewOptionsViewModel(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DOCViewOptionsViewModel.selectedSizeSliderValue.modify(v2);
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t protocol witness for DOCViewOptionsViewModelable.forwardingDelegate.setter in conformance DOCViewOptionsViewModel(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*protocol witness for DOCViewOptionsViewModelable.forwardingDelegate.modify in conformance DOCViewOptionsViewModel(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance DOCViewOptionsViewModel@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t specialized DOCViewOptionsViewModel.groupByMenuItemAXIdentifier(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    if (*a1 <= 2u)
    {
      if (v1 >= 2)
      {
        v3 = 0xE400000000000000;
        v2 = 1701667182;
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    v4 = v1 == 3;
    v5 = 0xE300000000000000;
    v6 = 6775156;
    v7 = 0xE400000000000000;
    v8 = 1702521203;
  }

  else
  {
    if (*a1 > 6u)
    {
      if (v1 - 7 >= 2)
      {
        if (v1 == 9)
        {
          v2 = 0x732064756F6C6369;
        }

        else
        {
          v2 = 1701736302;
        }

        if (v1 == 9)
        {
          v3 = 0xED00007375746174;
        }

        else
        {
          v3 = 0xE400000000000000;
        }

        goto LABEL_21;
      }

LABEL_12:
      v3 = 0xE400000000000000;
      v2 = 1702125924;
      goto LABEL_21;
    }

    v4 = v1 == 5;
    v5 = 0xE400000000000000;
    v6 = 1684957547;
    v7 = 0xE800000000000000;
    v8 = 0x7942646572616873;
  }

  if (v4)
  {
    v2 = v6;
  }

  else
  {
    v2 = v8;
  }

  if (v4)
  {
    v3 = v5;
  }

  else
  {
    v3 = v7;
  }

LABEL_21:
  v9 = objc_opt_self();
  v10 = MEMORY[0x24C1FAD20](v2, v3);

  v11 = [v9 groupByMenuItemForGrouping_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

Swift::String *specialized DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned __int8 a17, double a18, unsigned __int8 a19)
{
  v20 = v19;
  v78 = a8;
  v76 = a5;
  v77 = a7;
  v74 = a3;
  v75 = a6;
  v73 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v81 = *(v23 - 8);
  v82 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v80 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v67 - v28;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
  v30 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v31);
  v33 = &v67 - v32;
  LODWORD(v32) = *a4;
  v71 = *a2;
  v72 = v32;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = result;
  v85._object = 0x8000000249BE0C60;
  v36._countAndFlagsBits = 0x74704F2077656956;
  v36._object = 0xEC000000736E6F69;
  v85._countAndFlagsBits = 0xD000000000000025;
  v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v37.value._object = 0xEB00000000656C62;
  v38._countAndFlagsBits = 0x74704F2077656956;
  v38._object = 0xEC000000736E6F69;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v85);

  v19[1] = v39;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v40 = result;
  v86._object = 0x8000000249BE0C90;
  v41._countAndFlagsBits = 0x79422070756F7247;
  v86._countAndFlagsBits = 0xD00000000000003CLL;
  v41._object = 0xE800000000000000;
  v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v42.value._object = 0xEB00000000656C62;
  v43._countAndFlagsBits = 0x79422070756F7247;
  v43._object = 0xE800000000000000;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v86);

  v19[2] = v44;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v45 = result;
  v87._object = 0x8000000249BE0CD0;
  v46._countAndFlagsBits = 0x79422074726F53;
  v87._countAndFlagsBits = 0xD00000000000003BLL;
  v46._object = 0xE700000000000000;
  v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v47.value._object = 0xEB00000000656C62;
  v48._countAndFlagsBits = 0x79422074726F53;
  v48._object = 0xE700000000000000;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v87);

  v19[3] = v49;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v50 = result;
  v88._object = 0x8000000249BE0D30;
  v51._object = 0x8000000249BE0D10;
  v52._object = 0x8000000249BE0D10;
  v88._countAndFlagsBits = 0xD000000000000042;
  v51._countAndFlagsBits = 0xD000000000000012;
  v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v53.value._object = 0xEB00000000656C62;
  v52._countAndFlagsBits = 0xD000000000000012;
  v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v53, v50, v52, v88);

  v19[4] = v54;
  result = _DocumentManagerBundle();
  if (result)
  {
    v55 = result;
    v70 = a18;
    v68 = a17;
    v69 = a19;
    v89._object = 0x8000000249BE0DA0;
    v56._countAndFlagsBits = 0xD00000000000001CLL;
    v56._object = 0x8000000249BE0D80;
    v57._countAndFlagsBits = 0xD00000000000001CLL;
    v57._object = 0x8000000249BE0D80;
    v89._countAndFlagsBits = 0xD00000000000004ELL;
    v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v58.value._object = 0xEB00000000656C62;
    v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v58, v55, v57, v89);

    v19[5] = v59;
    v60 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
    v84 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    Published.init(initialValue:)();
    v61 = v33;
    v62 = v79;
    (*(v30 + 32))(v20 + v60, v61, v79);
    *(&v20->_object + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate) = 0;
    swift_unknownObjectWeakInit();
    v63 = v74;
    *(&v20->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_groupingBehaviors) = v73;
    *(&v20->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sortModes) = v63;
    *(&v20->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sizeSettings) = v75;
    swift_beginAccess();
    LOBYTE(v83) = v71;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v83) = v72;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v20->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending) = v76 & 1;
    swift_beginAccess();
    LOBYTE(v83) = v77;
    Published.init(initialValue:)();
    swift_endAccess();
    v64 = v78;
    swift_beginAccess();
    v83 = v64;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v83) = v68 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    (*(v30 + 8))(v20 + v60, v62);
    LOBYTE(v83) = v69;
    Published.init(initialValue:)();
    swift_endAccess();
    *(&v20->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_availableSections) = &outlined read-only object #0 of DOCViewOptionsViewModel.init(groupingBehaviors:selectedGroupingBehavior:sortModes:selectedSortMode:selectedSortOrderAscending:sizeSettings:selectedSizeSetting:selectedSizeSliderValue:showFilenameExtensions:showFilenameExtensionsPublisher:isInPopover:);
    v83 = v70;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
    Published.projectedValue.getter();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>();
    Publisher<>.assign(to:)();
    v65 = v81;
    v66 = v82;
    (*(v81 + 16))(v80, v29, v82);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    (*(v65 + 8))(v29, v66);
    return v20;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

uint64_t specialized DOCViewOptionsViewModel.sortByMenuItemAXIdentifier(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    v8 = 0xEB00000000646574;
    v9 = 0x6165724365746164;
    v10 = 0xE900000000000064;
    v11 = 0x6564644165746164;
    if (v1 != 8)
    {
      v11 = 0x745364756F6C6369;
      v10 = 0xEC00000073757461;
    }

    if (v1 != 7)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = 0xE400000000000000;
    v13 = 1684957547;
    if (v1 != 5)
    {
      v13 = 0x7942646572616873;
      v12 = 0xE800000000000000;
    }

    if (*a1 <= 6u)
    {
      v6 = v13;
    }

    else
    {
      v6 = v9;
    }

    if (*a1 <= 6u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v2 = 0xEC00000064656966;
    v3 = 0x69646F4D65746164;
    v4 = 1701667182;
    v5 = 1936154996;
    if (v1 != 3)
    {
      v5 = 1702521203;
    }

    if (v1 != 2)
    {
      v4 = v5;
    }

    if (*a1)
    {
      v3 = 0x7473614C65746164;
      v2 = 0xEE0064656E65704FLL;
    }

    if (*a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if (*a1 <= 1u)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  v14 = objc_opt_self();
  v15 = MEMORY[0x24C1FAD20](v6, v7);

  v16 = [v14 sortByMenuItemForSortMode_];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

unint64_t instantiation function for generic protocol witness table for DOCViewOptionsViewModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DOCViewOptionsViewModel and conformance DOCViewOptionsViewModel();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DOCViewOptionsViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCViewOptionsViewModel;
  if (!type metadata singleton initialization cache for DOCViewOptionsViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DOCViewOptionsViewModel(uint64_t a1)
{
  type metadata accessor for Published<Bool?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<DOCItemGroupingBehavior>, &type metadata for DOCItemGroupingBehavior);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<DOCItemSortMode>, &type metadata for DOCItemSortMode);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<DOCBrowserLayoutConfiguration.SizeSetting>, &type metadata for DOCBrowserLayoutConfiguration.SizeSetting);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Bool?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd, &_sSbSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Bool?>);
    }
  }
}

double specialized DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(uint64_t a1)
{
  v2 = v1;
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for propertiesAffectingChildCount != -1)
  {
    v7 = a1;
    swift_once();
    LODWORD(a1) = v7;
  }

  if (specialized Set.contains(_:)(a1, static Property.propertiesAffectingChildCount))
  {
LABEL_5:
    objc_sync_enter(v2);
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo6FINodeC_Tt1B5(v2, static FINode.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*MEMORY[0x277D85000] & *v4) + 0x60))(&v8);

    objc_sync_exit(v2);
    v5 = v8;
    if (v8)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 1;

      ReadWriteLock.withWriteLock(_:)(closure #1 in FINodeItemCountFetcher.isStale.setterpartial apply, v6);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_startObserving()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x270))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(*static DOCFileSystemCollectionManager.shared + 136);

  v1();
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_stopObserving()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(*static DOCFileSystemCollectionManager.shared + 144);

  v1();

  (*((*MEMORY[0x277D85000] & *v0) + 0x280))(v2);
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_startObservationIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1D8))() & 1) == 0)
  {
    (*((*v1 & *v0) + 0x270))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = *(*static DOCFileSystemCollectionManager.shared + 136);

    v2();
  }
}

Swift::Void __swiftcall DOCFileSystemCollection.doc_restartObservation()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1D8))();
  if (v2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = *(*static DOCFileSystemCollectionManager.shared + 144);

    v3();

    v2 = (*((*v1 & *v0) + 0x280))(v4);
  }

  (*((*v1 & *v0) + 0x270))(v2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *(*static DOCFileSystemCollectionManager.shared + 136);

  v5();
}

uint64_t DOCFileSystemCollectionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DOCFileSystemCollectionManager.init()();
  return v0;
}

uint64_t *DOCFileSystemCollectionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCFileSystemCollectionManager.shared;
}

double static DOCFileSystemCollectionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static DOCFileSystemCollectionManager.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileSystemCollectionManager.shared = a1;

  return result;
}

uint64_t (*static DOCFileSystemCollectionManager.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

double key path getter for static DOCFileSystemCollectionManager.shared : DOCFileSystemCollectionManager.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCFileSystemCollectionManager.shared;

  return result;
}

double key path setter for static DOCFileSystemCollectionManager.shared : DOCFileSystemCollectionManager.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCFileSystemCollectionManager.shared = v1;

  return result;
}

id DOCFileSystemCollectionManager.activeCollections.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void DOCFileSystemCollectionManager.activeCollections.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void DOCFileSystemCollectionManager.observingCollections.getter()
{
  v1 = v0;
  v7 = 0;
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = &v7;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.observingCollections.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_121;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v7)
  {

    return;
  }

  __break(1u);
}

double closure #1 in DOCFileSystemCollectionManager.observingCollections.getter(uint64_t *a1, uint64_t a2)
{
  v3 = (*(*a2 + 96))();
  v4 = [v3 allObjects];

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized _arrayForceCast<A, B>(_:)(v5);

  *a1 = v6;

  return result;
}

uint64_t DOCFileSystemCollectionManager.init()()
{
  v1 = v0;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCA940]) initWithCapacity_];
  v14[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  [v11 addObserver:v1 selector:sel_applicationDidEnterBackgroundWithSender_ name:*MEMORY[0x277D76660] object:0];

  v12 = [v10 defaultCenter];
  [v12 addObserver:v1 selector:sel_applicationWillEnterForegroundWithSender_ name:*MEMORY[0x277D76758] object:0];

  return v1;
}

void DOCFileSystemCollectionManager.collectionDidStartObserving(_:)(void *a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.collectionDidStartObserving(_:);
  *(v5 + 24) = v4;
  v8[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_13_4;
  v6 = _Block_copy(v8);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void DOCFileSystemCollectionManager.collectionDidStopObserving(_:)(void *a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in DOCFileSystemCollectionManager.collectionDidStopObserving(_:);
  *(v5 + 24) = v4;
  v8[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_23_1;
  v6 = _Block_copy(v8);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void closure #1 in DOCFileSystemCollectionManager.collectionDidStartObserving(_:)(void *a1, uint64_t a2, const char *a3, SEL *a4)
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Enumeration);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v12 = 136315138;
    v13 = [(*((*MEMORY[0x277D85000] & *v9) + 0x118))() displayName];
    swift_unknownObjectRelease();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a3;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_2493AC000, v10, v11, v15, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  v20 = (*(*a2 + 96))();
  [v20 *a4];
}

double closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v15 = (*(*a2 + 120))(result);
    v16 = v15;
    if (v15 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v21 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      aBlock[4] = partial apply for closure #1 in closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_272_0;
      v18 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v19 = v21;
      MEMORY[0x24C1FB9A0](0, v14, v8, v18);
      _Block_release(v18);

      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v14, v20);
      return result;
    }
  }

  return result;
}

void closure #1 in closure #1 in DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v2 = 0;
    v3 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D85000];
    v19 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v5 = MEMORY[0x24C1FC540](v2, v1);
      }

      else
      {
        if (v2 >= *(v22 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v2 + 32);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.Enumeration);
      v9 = v6;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v12 = 136315138;
        v20 = v11;
        v13 = [(*((*v4 & *v9) + 0x118))() displayName];
        swift_unknownObjectRelease();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v1;
        v17 = v16;

        v7 = v2 + 1;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v24);
        v1 = v15;
        v3 = v19;

        *(v12 + 4) = v18;
        _os_log_impl(&dword_2493AC000, v10, v20, "DOCFileSystemCollectionManager:      stopping collection: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      (*((*v4 & *v9) + 0x280))();
      ++v2;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void closure #1 in DOCFileSystemCollectionManager.applicationWillEnterForeground(sender:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v2 = 0;
    v3 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D85000];
    v19 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v5 = MEMORY[0x24C1FC540](v2, v1);
      }

      else
      {
        if (v2 >= *(v22 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v2 + 32);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.Enumeration);
      v9 = v6;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v12 = 136315138;
        v20 = v11;
        v13 = [(*((*v4 & *v9) + 0x118))() displayName];
        swift_unknownObjectRelease();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v1;
        v17 = v16;

        v7 = v2 + 1;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v24);
        v1 = v15;
        v3 = v19;

        *(v12 + 4) = v18;
        _os_log_impl(&dword_2493AC000, v10, v20, "DOCFileSystemCollectionManager:      re-starting collection: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      (*((*v4 & *v9) + 0x270))();
      ++v2;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

double @objc DOCFileSystemCollectionManager.applicationDidEnterBackground(sender:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(v5);
  swift_unknownObjectRelease();

  return result;
}

uint64_t DOCFileSystemCollectionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static FileSystemCollectionError.needsAuthenticationError()()
{
  v0 = *MEMORY[0x277CC6300];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:-1000 userInfo:0];
}

uint64_t one-time initialization function for fsCollectionLogHandle()
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  result = OS_os_log.init(subsystem:category:)();
  fsCollectionLogHandle = result;
  return result;
}

uint64_t DOCFileSystemCollection.observedNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observedNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCFileSystemCollection.isGathering.didset(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x160))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCFileSystemCollection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCFileSystemCollection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t DOCFileSystemCollection.nodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

double DOCFileSystemCollection.nodes.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v2 + 4);

  return result;
}

double (*DOCFileSystemCollection.nodes.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v7);
  a1[3] = 0;
  os_unfair_lock_unlock(v4 + 4);
  v5 = v7;

  *a1 = v5;
  return DOCFileSystemCollection.nodes.modify;
}

double DOCFileSystemCollection.nodes.modify(uint64_t *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {

    os_unfair_lock_lock(v2 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v2 + 4);
  }

  return result;
}

uint64_t DOCFileSystemCollection.isObserving.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

double DOCFileSystemCollection.isObserving.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);

  return result;
}

uint64_t (*DOCFileSystemCollection.isObserving.modify(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v7);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);
  v5 = v7;

  *(a1 + 24) = v5;
  return DOCFileSystemCollection.isObserving.modify;
}

double DOCFileSystemCollection.isObserving.modify(void *a1)
{
  v1 = *(*a1 + a1[1]);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);

  return result;
}

uint64_t DOCFileSystemCollection.__allocating_init(for:configuration:source:extraOptions:)(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t (*a5)(uint64_t, void *, void *, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v5, ObjectType);

  return v12;
}

void closure #1 in DOCFileSystemCollection.startObserving()(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1E0))(1);
    v9 = static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    v10 = updatePointsOfInterestHandler;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v9, &dword_2493AC000, v10, "Files-DOCFileSystemCollection", 29, 2, v5, "StartObserving", 14, 2, MEMORY[0x277D84F90]);
    v11 = (*(v2 + 8))(v5, v1);
    (*((*v8 & *v7) + 0x118))(v11);
    type metadata accessor for DOCICloudRootNode();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.Enumeration);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = v18;
        *v17 = 136446210;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, &v33);
        _os_log_impl(&dword_2493AC000, v15, v16, "[DSEnumeration] %{public}s: node is DOCICloudRootNode", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x24C1FE850](v18, -1, -1);
        MEMORY[0x24C1FE850](v17, -1, -1);
      }

      v19 = *((*v8 & *v13) + 0x78);
      v20 = v19();
      if (v20)
      {

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v33 = v24;
          *v23 = 136446210;
          *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, &v33);
          _os_log_impl(&dword_2493AC000, v21, v22, "[DSEnumeration] %{public}s: DOCICloudRootNode: main container is ready, startObserving", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x24C1FE850](v24, -1, -1);
          MEMORY[0x24C1FE850](v23, -1, -1);
        }

        v25 = v19();
        if (v25)
        {
          v26 = v25;
          v27 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v28 = v26;
          LOBYTE(v26) = DOCNode.isEqualTo(node:)(v28);

          swift_unknownObjectRelease();
          if ((v26 & 1) == 0)
          {
            *(v7 + v27) = v28;
            v29 = v28;
            swift_unknownObjectRelease();
          }

          DOCFileSystemCollection.startObservingNow()();
        }
      }

      else
      {
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v13;
        v32 = *((*v8 & *v13) + 0x98);

        swift_unknownObjectRetain();
        v32(partial apply for closure #1 in closure #1 in DOCFileSystemCollection.startObserving(), v31);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      DOCFileSystemCollection.startObservingNow()();
    }
  }
}

double closure #1 in closure #1 in DOCFileSystemCollection.startObserving()(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23[1] = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
    v25 = Strong;
    v17 = swift_allocObject();
    v23[0] = v6;
    v24 = v10;
    v18 = v17;
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCFileSystemCollection.startObserving();
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_253_1;
    v20 = _Block_copy(aBlock);
    v21 = a1;
    v22 = a3;

    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v14, v9, v20);
    _Block_release(v20);
    (*(v23[0] + 8))(v9, v5);
    (*(v11 + 8))(v14, v24);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCFileSystemCollection.startObserving()(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = one-time initialization token for Enumeration;
      v8 = a2;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.Enumeration);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136446210;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, &v15);
        _os_log_impl(&dword_2493AC000, v10, v11, "[DSEnumeration] %{public}s: DOCICloudRootNode: main container became ready, start Observing", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x24C1FE850](v13, -1, -1);
        MEMORY[0x24C1FE850](v12, -1, -1);
      }

      *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] = v8;
      v14 = v8;
      swift_unknownObjectRelease();
      DOCFileSystemCollection.startObservingNow()();
      (*((*MEMORY[0x277D85000] & *a3) + 0x98))(0, 0);
    }
  }
}

void DOCFileSystemCollection.startObservingNow()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v112[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v112[-v7];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v112[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v112[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x277D85200], v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if (v20)
  {
    v14 = static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v14, &dword_2493AC000, v22, "Files-DOCFileSystemCollection", 29, 2, v13, "StartObservingNOW", 17, 2, MEMORY[0x277D84F90]);
  (*(v10 + 8))(v13, v9);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.Enumeration);
  v24 = v0;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock[0] = v116;
    *v27 = 136315138;
    v28 = [*&v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] displayName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, aBlock);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2493AC000, v25, v26, "[DSEnumeration] startObserving: DOCNode %s", v27, 0xCu);
    v33 = v116;
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x24C1FE850](v33, -1, -1);
    MEMORY[0x24C1FE850](v27, -1, -1);
  }

  v34 = *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source];
  if (v34)
  {
    v35 = *(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    v36 = v35;
  }

  else
  {
    v35 = 0;
  }

  DOCFileSystemCollection.receivedDomainUpdate(for:)(v35);

  v37 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode;
  objc_opt_self();
  v38 = [swift_dynamicCastObjCClassUnconditional() fileURL];
  if (v38)
  {
    v39 = v38;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = type metadata accessor for URL();
  v42 = *(v41 - 8);
  (*(v42 + 56))(v4, v40, 1, v41);
  outlined init with take of URL?(v4, v8);
  if ((*(v42 + 48))(v8, 1, v41) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v43 = 0;
  }

  else
  {
    v43 = URL.startAccessingSecurityScopedResource()();
    (*(v42 + 8))(v8, v41);
  }

  v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing] = v43;
  v44 = *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver];
  if (v44)
  {
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.startObservingNow();
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_200_0;
    v46 = _Block_copy(aBlock);

    v47 = [v44 addSubscriber_];
    _Block_release(v46);
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken];
  *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken] = v47;

  [v44 startObservingSources];
  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (v49)
  {
    v50 = [v49 fpDomain];
    if (v50)
    {
      v51 = v50;
      v52 = v50;
      DOCFileSystemCollection.receivedDomainUpdate(for:)(v51);
    }
  }

  v53 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer;
  v54 = *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer];
  if (v54)
  {
    v55 = v24;
    v56 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 136446466;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
      *(v59 + 12) = 2080;
      v61 = [*&v24[v37] displayName];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, aBlock);

      *(v59 + 14) = v65;
      _os_log_impl(&dword_2493AC000, v57, v58, "[DSEnumeration] %{public}s: observer already exists, start observing %s again", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v60, -1, -1);
      MEMORY[0x24C1FE850](v59, -1, -1);
    }

    [v56 startObserving_];
    DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(1);
  }

  else
  {
    v66 = *&v24[v37];
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    if (v67)
    {
      v68 = v67;
      v69 = v24;
      v116 = v66;
      swift_unknownObjectRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock[0] = v114;
        *v72 = 136446466;
        *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        *(v72 + 12) = 2080;
        v73 = [*&v24[v37] displayName];
        v115 = v69;
        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v71;
        v77 = v76;

        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, aBlock);

        *(v72 + 14) = v78;
        v69 = v115;
        _os_log_impl(&dword_2493AC000, v70, v113, "[DSEnumeration] %{public}s: Creating Observer with DOCNode %s)", v72, 0x16u);
        v79 = v114;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v79, -1, -1);
        MEMORY[0x24C1FE850](v72, -1, -1);
      }

      v80 = [objc_opt_self() observerForFINode:v68 withObserver:v69];
      v81 = *&v24[v53];
      *&v24[v53] = v80;
      v82 = v80;

      v83 = v69;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v114 = v83;
        v87 = v86;
        v88 = swift_slowAlloc();
        v115 = v82;
        v89 = v88;
        aBlock[0] = v88;
        *v87 = 136446466;
        *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        *(v87 + 12) = 2080;
        v90 = [*&v24[v37] displayName];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, aBlock);

        *(v87 + 14) = v94;
        _os_log_impl(&dword_2493AC000, v84, v85, "[DSEnumeration] %{public}s: Starting Observer with DOCNode %s", v87, 0x16u);
        swift_arrayDestroy();
        v95 = v89;
        v82 = v115;
        MEMORY[0x24C1FE850](v95, -1, -1);
        v96 = v87;
        v83 = v114;
        MEMORY[0x24C1FE850](v96, -1, -1);
      }

      v97 = *&v24[v53];
      if (v97)
      {
        [v97 startObserving_];
      }

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        aBlock[0] = v101;
        *v100 = 136446210;
        *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        _os_log_impl(&dword_2493AC000, v98, v99, "[DSEnumeration] %{public}s: start refreshing items", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        MEMORY[0x24C1FE850](v101, -1, -1);
        MEMORY[0x24C1FE850](v100, -1, -1);
      }

      DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(1);
      DOCFileSystemCollection.flushPendingNodesUpdates()();
      swift_unknownObjectRelease();
    }

    else
    {
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        aBlock[0] = v105;
        *v104 = 136446210;
        *(v104 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BF1EB0, aBlock);
        _os_log_impl(&dword_2493AC000, v102, v103, "[DSEnumeration] %{public}s: Error Cannot observe a non FINode from Desktop Services", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x24C1FE850](v105, -1, -1);
        MEMORY[0x24C1FE850](v104, -1, -1);
      }

      v106 = MEMORY[0x277D85000];
      if ((*((*MEMORY[0x277D85000] & *v24) + 0x160))())
      {
        v108 = v107;
        ObjectType = swift_getObjectType();
        lazy protocol witness table accessor for type FileSystemCollectionError and conformance FileSystemCollectionError();
        v110 = swift_allocError();
        *v111 = 0xD00000000000002CLL;
        *(v111 + 8) = 0x8000000249BF1E80;
        *(v111 + 16) = 1;
        (*(v108 + 32))(v24, v110, ObjectType, v108);
        swift_unknownObjectRelease();
      }

      (*((*v106 & *v24) + 0x280))();
    }
  }
}

void closure #1 in DOCFileSystemCollection.startObservingNow()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = v5;
    v42 = v4;
    v39 = v8;
    v40 = v9;
    v37 = v13;
    v38 = v10;
    if (a1 >> 62)
    {
LABEL_25:
      v14 = __CocoaSet.count.getter();
      v15 = Strong;
      if (v14)
      {
LABEL_4:
        v16 = 0;
        v46 = a1 & 0xC000000000000001;
        v44 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source;
        v45 = (a1 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v46)
          {
            v17 = MEMORY[0x24C1FC540](v16, a1);
          }

          else
          {
            if (v16 >= v45[2])
            {
              goto LABEL_24;
            }

            v17 = *(a1 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          type metadata accessor for DOCFileProviderSource();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            v21 = *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
            if (v21)
            {
              v22 = *&v15[v44];
              if (v22)
              {
                v23 = *(v22 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
                if (v23)
                {
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
                  v24 = v21;
                  v25 = v23;
                  v26 = static NSObject.== infix(_:_:)();

                  v15 = Strong;
                  if (v26)
                  {
                    break;
                  }
                }
              }
            }
          }

          ++v16;
          if (v19 == v14)
          {
            goto LABEL_21;
          }
        }

        v27 = swift_dynamicCastClass();
        if (v27)
        {
          v28 = *(v27 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
          if (v28)
          {
            v46 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
            v29 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v30 = swift_allocObject();
            *(v30 + 16) = v29;
            *(v30 + 24) = v28;
            aBlock[4] = partial apply for closure #2 in closure #1 in DOCFileSystemCollection.startObservingNow();
            aBlock[5] = v30;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            aBlock[3] = &block_descriptor_207_0;
            v31 = _Block_copy(aBlock);
            v45 = v28;

            v32 = v37;
            static DispatchQoS.unspecified.getter();
            v47 = MEMORY[0x277D84F90];
            _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            v33 = v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
            v34 = v39;
            v35 = v42;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x24C1FB9A0](0, v32, v34, v31);
            _Block_release(v31);

            (*(v41 + 8))(v34, v35);
            (*(v38 + 8))(v32, v40);

            return;
          }
        }
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = Strong;
      if (v14)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }
}

void closure #2 in closure #1 in DOCFileSystemCollection.startObservingNow()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCFileSystemCollection.receivedDomainUpdate(for:)(a2);
  }
}

double DOCFileSystemCollection.startObserving()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v5);
  (*(v9 + 8))(v12, v17);

  return result;
}

void closure #1 in DOCFileSystemCollection.stopObserving()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v34 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))())
    {
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.Enumeration);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v35 = v8;
        v17 = v16;
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136315138;
        v19 = [*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v36);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_2493AC000, v14, v15, "[DSEnumeration] stopObserving: DOCNode %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        v24 = v18;
        v11 = MEMORY[0x277D85000];
        MEMORY[0x24C1FE850](v24, -1, -1);
        v25 = v17;
        v8 = v35;
        MEMORY[0x24C1FE850](v25, -1, -1);
      }

      v26 = *(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer);
      if (v26)
      {
        [v26 stopObserving_];
      }

      v27 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken;
      if (*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken))
      {
        [*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver) removeSubscriberForToken_];
        v28 = *(v13 + v27);
        *(v13 + v27) = 0;
      }

      [*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver) stopObservingSources];
      (*((*v11 & *v13) + 0x1E0))(0);
      [v13 setIsGathering_];
      if (*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing) == 1)
      {
        v29 = [*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) nodeURL];
        if (v29)
        {
          v30 = v29;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v32 = type metadata accessor for URL();
        v33 = *(v32 - 8);
        (*(v33 + 56))(v4, v31, 1, v32);
        outlined init with take of URL?(v4, v8);
        if ((*(v33 + 48))(v8, 1, v32) == 1)
        {

          outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }

        else
        {
          URL.stopAccessingSecurityScopedResource()();

          (*(v33 + 8))(v8, v32);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void DOCFileSystemCollection.receivedDomainUpdate(for:)(id a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 1);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (!a1)
  {
    return;
  }

  a1 = a1;
  if (![a1 isUsingFPFS])
  {
LABEL_22:

    return;
  }

  if ([a1 needsAuthentication] && v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] != 2)
  {
    v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 2;
    *(swift_allocObject() + 16) = v1;
    v23 = v1;
    DOCRunInMainThread(_:)();

    goto LABEL_22;
  }

  if (([a1 needsAuthentication] & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState;
    if (v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] == 2)
    {
      v4 = v1;
      if (one-time initialization token for Enumeration == -1)
      {
LABEL_9:
        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.Enumeration);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v25[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF1E40, v25);
          _os_log_impl(&dword_2493AC000, v13, v14, "[DSEnumeration] %{public}s: Domain became authenticated, restarting observation", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x24C1FE850](v16, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
        }

        *(v4 + v2) = 1;
        v17 = MEMORY[0x277D85000];
        v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x1D8))();
        if (v18)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v19 = *(*static DOCFileSystemCollectionManager.shared + 144);

          v19(v4);

          v18 = (*((*v17 & *v4) + 0x280))(v20);
        }

        (*((*v17 & *v4) + 0x270))(v18);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v21 = *(*static DOCFileSystemCollectionManager.shared + 136);

        v21(v4);

        return;
      }

LABEL_25:
      swift_once();
      goto LABEL_9;
    }
  }

  v22 = [a1 needsAuthentication];

  if ((v22 & 1) == 0 && !v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState])
  {
    v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 1;
  }
}

uint64_t closure #1 in DOCFileSystemCollection.receivedDomainUpdate(for:)(void *a1)
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF1E40, &v14);
    _os_log_impl(&dword_2493AC000, v3, v4, "[DSEnumeration] %{public}s: Domain needs authentication", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *a1) + 0x160))();
  if (v8)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CC6300] code:-1000 userInfo:0];
    (*(v10 + 32))(a1, v12, ObjectType, v10);

    v8 = swift_unknownObjectRelease();
  }

  result = (*((*v7 & *a1) + 0x1D8))(v8);
  if (result)
  {
    return (*((*v7 & *a1) + 0x280))();
  }

  return result;
}

void *DOCFileSystemCollection.itemFilteringPredicate.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCFileSystemCollection.itemFilteringPredicate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double key path setter for DOCFileSystemCollection.sortDescriptors : DOCFileSystemCollection(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t DOCFileSystemCollection.observedNode.getter(uint64_t *a1, uint64_t (*a2)(void, __n128))
{
  v4 = *a1;
  swift_beginAccess();
  return (a2)(*(v2 + v4));
}

double DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_56_1;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);

  return result;
}

void closure #1 in DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1C0))();
    v9 = specialized _arrayConditionalCast<A, B>(_:)(v8);

    if (v9)
    {
      if (a2 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.Enumeration);
      v12 = v6;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v26 = v10;
        v15 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28[0] = v27;
        *v15 = 136446722;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BF1F20, v28);
        *(v15 + 12) = 2080;
        v16 = [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
        v17 = a3;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v7 = MEMORY[0x277D85000];
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v28);

        *(v15 + 14) = v21;
        a3 = v17;
        *(v15 + 22) = 2048;
        *(v15 + 24) = v26;
        _os_log_impl(&dword_2493AC000, v13, v14, "%{public}s: with DOCNode %s : %ld descriptors", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v15, -1, -1);
      }

      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors;
      swift_beginAccess();
      *(v12 + v22) = a2;

      *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_propertiesImpactingSort) = a3;

      v23 = DOCFileSystemCollection.sort(nodes:)();

      if (v23 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        v24 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v24 = v23;
      }

      (*((*v7 & *v12) + 0x1C8))(v24);
      if (*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState) == 2 || ([v12 isGathering] & 1) != 0 || ((*((*v7 & *v12) + 0x1D8))() & 1) == 0)
      {
      }

      else
      {
        *(swift_allocObject() + 16) = v12;
        v25 = v12;
        DOCRunInMainThread(_:)();
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in DOCFileSystemCollection.reorderItems(with:propertiesImpactingSort:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v8 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v7, &dword_2493AC000, v8, "Files-DOCFileSystemCollection", 29, 2, v6, "reorder data(forFileSystemCollectionShouldBeReloaded)", 53, 2, MEMORY[0x277D84F90]);
  v9 = (*(v3 + 8))(v6, v2);
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x160))(v9);
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a1, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

double DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_193_0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v16, v9, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v2);
  (*(v6 + 8))(v9, v14);

  return result;
}

void closure #1 in DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    v9 = updatePointsOfInterestHandler;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v8, &dword_2493AC000, v9, "Files-DOCFileSystemCollection", 29, 2, v5, "Sent Update", 11, 2, MEMORY[0x277D84F90]);
    (*(v2 + 8))(v5, v1);
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Enumeration);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136446210;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BF1E10, &v15);
      _os_log_impl(&dword_2493AC000, v11, v12, "[DSEnumeration] %{public}s: FlushingNodesUpdates", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    DOCFileSystemCollection.flushPendingNodesUpdates()();
  }
}

uint64_t DOCFileSystemCollection.flushPendingNodesUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v47 - v6;
  v51 = type metadata accessor for DispatchTime();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v47 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 1);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = (&v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  *v25 = v26;
  (*(v21 + 104))(v25, *MEMORY[0x277D85200], v20, v23);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v25, v20);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  static DispatchTime.now()();
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesWithPendingUpdates;
  swift_beginAccess();
  v29 = *(v0 + v28);
  if ((v29 & 0xC000000000000001) == 0)
  {
    if (*(v29 + 16) >= 1)
    {
      goto LABEL_4;
    }

    return (*(v8 + 8))(v19, v51);
  }

  v30 = __CocoaSet.count.getter();

  if (v30 < 1)
  {
    return (*(v8 + 8))(v19, v51);
  }

LABEL_4:
  v25 = v51;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState) == 2)
  {
    return (*(v8 + 8))(v19, v25);
  }

  if ([v0 isGathering])
  {
    return (*(v8 + 8))(v19, v25);
  }

  v20 = v0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1D8))() & 1) == 0 || (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending))
  {
    return (*(v8 + 8))(v19, v25);
  }

  v49 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending;
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  swift_beginAccess();
  v48 = v31;
  outlined init with copy of DispatchTime?(v0 + v31, v7);
  if ((*(v8 + 48))(v7, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    goto LABEL_17;
  }

  (*(v8 + 32))(v15, v7, v25);
  DispatchTime.advanced(by:)();
  if ((static DispatchTime.< infix(_:_:)() & 1) == 0)
  {
    v35 = *(v8 + 8);
    v35(v11, v25);
    v35(v15, v25);
LABEL_17:

    v15 = specialized _copyCollectionToContiguousArray<A>(_:)(v36);

    if (one-time initialization token for Enumeration == -1)
    {
LABEL_18:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.Enumeration);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52[0] = v41;
        *v40 = 136446466;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF1DD0, v52);
        *(v40 + 12) = 2048;
        if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
        {
          v42 = __CocoaSet.count.getter();
        }

        else
        {
          v42 = *(v15 + 16);
        }

        *(v40 + 14) = v42;

        _os_log_impl(&dword_2493AC000, v38, v39, "[DSEnumeration] %{public}s: updated %ld nodes", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x24C1FE850](v41, -1, -1);
        MEMORY[0x24C1FE850](v40, -1, -1);

        v25 = v51;
      }

      else
      {
      }

      *(v20 + v28) = MEMORY[0x277D84FA0];

      v43 = v50;
      (*(v8 + 16))(v50, v19, v25);
      (*(v8 + 56))(v43, 0, 1, v25);
      v44 = v48;
      swift_beginAccess();
      outlined assign with take of DispatchTime?(v43, v20 + v44);
      swift_endAccess();
      *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate) = 0;
      *(v20 + v49) = 1;
      v45 = swift_allocObject();
      *(v45 + 16) = v15;
      *(v45 + 24) = v20;
      v46 = v20;
      DOCRunInMainThread(_:)();

      return (*(v8 + 8))(v19, v25);
    }

LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate) != 1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate) = 1;
    v33.n128_f64[0] = DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(v11);
  }

  v34 = *(v8 + 8);
  v34(v11, v25, v33);
  (v34)(v15, v25);
  return (v34)(v19, v25);
}

uint64_t closure #1 in DOCFileSystemCollection.flushPendingNodesUpdates()(unint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35 - v6;
  v35 = type metadata accessor for DispatchTime();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v18 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v17, &dword_2493AC000, v18, "UpdateWatch", 11, 2, v16, "Sent Update", 11, 2, MEMORY[0x277D84F90]);
  (*(v13 + 8))(v16, v12);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.Enumeration);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v22 = a1 >> 62;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    if (v22)
    {
      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v23 + 4) = v24;

    _os_log_impl(&dword_2493AC000, v20, v21, "[DSEnumeration] MainThread updating %ld nodes", v23, 0xCu);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  else
  {
  }

  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending) = 0;
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x160))(v25))
  {
    v27 = v26;

    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v34 = _bridgeCocoaArray<A>(_:)();

      a1 = v34;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    ObjectType = swift_getObjectType();
    (*(v27 + 48))(a2, a1, MEMORY[0x277D84F90], ObjectType, v27);

    swift_unknownObjectRelease();
  }

  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  swift_beginAccess();
  outlined init with copy of DispatchTime?(a2 + v29, v7);
  v30 = v35;
  result = (*(v8 + 48))(v7, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    DispatchTime.advanced(by:)();
    v32 = *(v8 + 8);
    v32(v7, v30);
    v33 = DOCFileSystemCollection.scheduleNodesUpdatesFlush(time:)(v11);
    return (v32)(v11, v30, v33);
  }

  return result;
}

void DOCFileSystemCollection.purgeCachedDataInNodes()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = (*((*MEMORY[0x277D85000] & *v0) + 0x1C0))(v9);
    v1 = v10;
    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_12:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v12, v1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v12;
      swift_getObjectType();
      v13[12] = 1;
      DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(0x100000000);
      swift_unknownObjectRelease();
    }

    while (v11 != v12);
    goto LABEL_12;
  }

  __break(1u);
}

double DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(int a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue];
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x277D85200], v8, v11);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    if (one-time initialization token for Enumeration == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.Enumeration);
  v18 = v1;
  v121 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v119 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v120 = v18;
    v24 = v23;
    v122 = v23;
    *v22 = 136446466;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
    *(v22 + 12) = 2080;
    v25 = [*&v120[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] displayName];
    v26 = v7;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v4;
    v29 = v3;
    v31 = v30;

    v32 = v27;
    v7 = v26;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v122);
    v3 = v29;
    v4 = v28;

    *(v22 + 14) = v33;
    _os_log_impl(&dword_2493AC000, v19, v20, "[DSEnumeration] %{public}s: DOCNode %s", v22, 0x16u);
    swift_arrayDestroy();
    v34 = v24;
    v18 = v120;
    MEMORY[0x24C1FE850](v34, -1, -1);
    MEMORY[0x24C1FE850](v22, -1, -1);
  }

  if ((*((*MEMORY[0x277D85000] & *v18) + 0x1D8))())
  {
    v36 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode;
    v37 = *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode];
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v38;
      v117 = v37;
      swift_unknownObjectRetain();
      v40 = static os_signpost_type_t.begin.getter();
      if (one-time initialization token for fsCollectionLogHandle != -1)
      {
        swift_once();
      }

      v41 = fsCollectionLogHandle;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)(v40, &dword_2493AC000, v41, "Files-buildingNodes", 19, 2, v7, "Iterating, filtering, sorting", 29, 2, MEMORY[0x277D84F90]);
      v42 = *(v4 + 8);
      v114 = v4 + 8;
      v115 = v42;
      v42(v7, v3);
      v43 = specialized DOCFileSystemCollection.iterator(for:)(v39);
      if (v43)
      {
        v44 = v43;
        v112 = v41;
        swift_unknownObjectRetain_n();
        v45 = v18;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        v118 = v45;

        v48 = os_log_type_enabled(v46, v47);
        v116 = v44;
        v113 = v7;
        v120 = v18;
        if (v48)
        {
          v49 = v18;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v122 = v51;
          *v50 = 136446722;
          *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
          *(v50 + 12) = 2080;
          v52 = [*(v49 + v36) displayName];
          v53 = v3;
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = v54;
          v3 = v53;
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, &v122);

          *(v50 + 14) = v58;
          *(v50 + 22) = 2080;
          v59 = [v116 fullyPopulated];
          v60 = v59 == 0;
          if (v59)
          {
            v61 = 0;
          }

          else
          {
            v61 = 1953459744;
          }

          if (v60)
          {
            v62 = 0xE400000000000000;
          }

          else
          {
            v62 = 0xE000000000000000;
          }

          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v122);

          *(v50 + 24) = v63;
          _os_log_impl(&dword_2493AC000, v46, v47, "[DSEnumeration] %{public}s: iterator for %s%s fully populated", v50, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v51, -1, -1);
          MEMORY[0x24C1FE850](v50, -1, -1);
        }

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v122 = v67;
          *v66 = 136446210;
          *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
          _os_log_impl(&dword_2493AC000, v64, v65, "[DSEnumeration] %{public}s: starting iteration", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x24C1FE850](v67, -1, -1);
          MEMORY[0x24C1FE850](v66, -1, -1);
        }

        v81 = v116;
        swift_unknownObjectRetain();
        v82 = specialized DOCFileSystemCollection.iterateChildren(of:iterator:)(v39, v81);
        swift_unknownObjectRelease();

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v122 = v86;
          *v85 = 136446466;
          *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
          *(v85 + 12) = 2048;
          if (v82 >> 62)
          {
            v87 = __CocoaSet.count.getter();
          }

          else
          {
            v87 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v85 + 14) = v87;

          _os_log_impl(&dword_2493AC000, v83, v84, "[DSEnumeration] %{public}s: iteratedNodes count = %ld", v85, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x24C1FE850](v86, -1, -1);
          MEMORY[0x24C1FE850](v85, -1, -1);
        }

        else
        {
        }

        v88 = DOCFileSystemCollection.filter(nodes:)(v82);

        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v122 = v92;
          *v91 = 136446466;
          *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
          *(v91 + 12) = 2048;
          if (v88 >> 62)
          {
            v93 = __CocoaSet.count.getter();
          }

          else
          {
            v93 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v91 + 14) = v93;

          _os_log_impl(&dword_2493AC000, v89, v90, "[DSEnumeration] %{public}s: filteredNodes count = %ld", v91, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v92);
          MEMORY[0x24C1FE850](v92, -1, -1);
          MEMORY[0x24C1FE850](v91, -1, -1);
        }

        else
        {
        }

        v94 = DOCFileSystemCollection.sort(nodes:)();

        if (v94 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
          v109 = _bridgeCocoaArray<A>(_:)();

          v95 = v109;
        }

        else
        {
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v95 = v94;
        }

        (*((*MEMORY[0x277D85000] & *v118) + 0x1C8))(v95);

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v122 = v99;
          *v98 = 136446466;
          *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
          *(v98 + 12) = 2048;
          if (v94 >> 62)
          {
            v100 = __CocoaSet.count.getter();
          }

          else
          {
            v100 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v101 = v113;

          *(v98 + 14) = v100;

          _os_log_impl(&dword_2493AC000, v96, v97, "[DSEnumeration] %{public}s: sorted nodes count = %ld", v98, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v99);
          MEMORY[0x24C1FE850](v99, -1, -1);
          MEMORY[0x24C1FE850](v98, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v101 = v113;
        }

        v102 = static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        LOBYTE(v110) = 2;
        os_signpost(_:dso:log:name:signpostID:_:_:)(v102, &dword_2493AC000, v112, "Files-buildingNodes", 19, 2, v101, "Iterating, filtering, sorting", 29, v110, MEMORY[0x277D84F90]);
        v115(v101, v3);
        if (v119)
        {
          DOCFileSystemCollection.purgeCachedDataInNodes()();
        }

        v103 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated;
        v104 = v118;
        v105 = v118[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated];
        v106 = [v116 fullyPopulated];
        v104[v103] = v106;
        [v104 setIsGathering_];
        v107 = swift_allocObject();
        *(v107 + 16) = v104;
        *(v107 + 24) = v105;
        v108 = v104;
        DOCRunInMainThread(_:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        v68 = MEMORY[0x277D84F90];
        (*((*MEMORY[0x277D85000] & *v18) + 0x1C8))(MEMORY[0x277D84F90]);
        v18[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated] = 1;
        [v18 setIsGathering_];
        v69 = v18;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v122 = v121;
          *v72 = 136446466;
          *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v122);
          *(v72 + 12) = 2080;
          v73 = [*&v18[v36] displayName];
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          v77 = v74;
          v68 = MEMORY[0x277D84F90];
          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, &v122);

          *(v72 + 14) = v78;
          _os_log_impl(&dword_2493AC000, v70, v71, "[DSEnumeration] %{public}s: %s does not support iteration. Is it a file?", v72, 0x16u);
          v79 = v121;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v79, -1, -1);
          MEMORY[0x24C1FE850](v72, -1, -1);
        }

        v80 = static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        LOBYTE(v110) = 2;
        os_signpost(_:dso:log:name:signpostID:_:_:)(v80, &dword_2493AC000, v41, "Files-buildingNodes", 19, 2, v7, "Iterating, filtering, sorting -- node does not support enumeration.", 67, v110, v68);
        swift_unknownObjectRelease();
        v115(v7, v3);
      }
    }
  }

  return result;
}

uint64_t closure #1 in DOCFileSystemCollection.refreshNodesAndNotifyDelegate(_:)(void *a1, int a2)
{
  LODWORD(v49) = a2;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v9 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  v46 = v9;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v8, &dword_2493AC000, v9, "Files-DOCFileSystemCollection", 29, 2, v7, "refresh node data(forFileSystemCollectionShouldBeReloaded)", 58, 2, MEMORY[0x277D84F90]);
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v45 = v11;
  v11(v7, v3);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.Enumeration);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v47 = v10;
  v48 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v50 = v18;
    *v17 = 136446466;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v50);
    *(v17 + 12) = 2080;
    v19 = [*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v50);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_2493AC000, v14, v15, "[DSEnumeration] %{public}s: DOCNode %s : data(forFileSystemCollectionShouldBeReloaded:)", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v18, -1, -1);
    MEMORY[0x24C1FE850](v17, -1, -1);
  }

  v24 = *((*MEMORY[0x277D85000] & *v13) + 0x160);
  result = v24();
  if (result)
  {
    v27 = v26;
    ObjectType = swift_getObjectType();
    (*(v27 + 24))(v13, ObjectType, v27);
    result = swift_unknownObjectRelease();
  }

  if ((v49 & 1) == 0 && *(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated) == 1)
  {
    v29 = v13;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v32 = 136446466;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BF1D20, &v50);
      *(v32 + 12) = 2080;
      v33 = [*(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode) displayName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v50);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_2493AC000, v30, v31, "[DSEnumeration] %{public}s: DOCNode %s : calling fileSystemCollectionDidFinishGathering", v32, 0x16u);
      v38 = v49;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);
    }

    v39 = static os_signpost_type_t.event.getter();
    static OSSignpostID.exclusive.getter();
    LOBYTE(v44) = 2;
    os_signpost(_:dso:log:name:signpostID:_:_:)(v39, &dword_2493AC000, v46, "Files-DOCFileSystemCollection", 29, 2, v7, "refresh node didFinishGathering", 31, v44, MEMORY[0x277D84F90]);
    v40 = v45(v7, v48);
    result = (v24)(v40);
    if (result)
    {
      v42 = v41;
      v43 = swift_getObjectType();
      (*(v42 + 16))(v29, v43, v42);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}