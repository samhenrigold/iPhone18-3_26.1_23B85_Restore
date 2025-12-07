uint64_t UTType.identifier.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id static UTType.content.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D50];
  *a1 = *MEMORY[0x1E6982D50];
  return v1;
}

id static UTType.item.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E48];
  *a1 = *MEMORY[0x1E6982E48];
  return v1;
}

id static UTType.folder.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DC8];
  *a1 = *MEMORY[0x1E6982DC8];
  return v1;
}

id static UTType.url.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983030];
  *a1 = *MEMORY[0x1E6983030];
  return v1;
}

UniformTypeIdentifiers::UTType_optional __swiftcall UTType.init(filenameExtension:conformingTo:)(Swift::String filenameExtension, UniformTypeIdentifiers::UTType conformingTo)
{
  UTType.init(filenameExtension:conformingTo:)(conformingTo._type.super.isa, &selRef_typeWithFilenameExtension_conformingToType_, v2);
  result.value._type.super.isa = v3;
  result.is_nil = v4;
  return result;
}

id static UTType.data.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D60];
  *a1 = *MEMORY[0x1E6982D60];
  return v1;
}

id static UTType.jpeg.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E58];
  *a1 = *MEMORY[0x1E6982E58];
  return v1;
}

id static UTType.heic.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E00];
  *a1 = *MEMORY[0x1E6982E00];
  return v1;
}

void UTType.init(exportedAs:conformingTo:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, SEL *a4@<X3>, SEL *a5@<X4>, void *a6@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    v9 = MEMORY[0x1BFB0EF60](a1, a2);

    v10 = [objc_opt_self() *a4];
  }

  else
  {
    v7 = MEMORY[0x1BFB0EF60](a1, a2);

    v10 = [objc_opt_self() *a5];
  }

  *a6 = v10;
}

id static UTType.image.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E30];
  *a1 = *MEMORY[0x1E6982E30];
  return v1;
}

id static UTType.movie.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EE8];
  *a1 = *MEMORY[0x1E6982EE8];
  return v1;
}

void UTType.init(filenameExtension:conformingTo:)(void **a2@<X2>, SEL *a3@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = MEMORY[0x1BFB0EF60]();

  v8 = [objc_opt_self() *a3];

  *a4 = v8;
}

id static UTType.audio.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CD0];
  *a1 = *MEMORY[0x1E6982CD0];
  return v1;
}

id static UTType.video.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983080];
  *a1 = *MEMORY[0x1E6983080];
  return v1;
}

uint64_t URLResourceValues.contentType.getter@<X0>(void *a1@<X8>)
{
  v2 = URLResourceValues.allValues.getter();
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E695DAA0]), (v4 & 1) == 0))
  {

    goto LABEL_6;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v6);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UTType(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UTType(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UTType(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

id static UTType._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, void *a3)
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

id static UTType.sourceCode.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FD8];
  *a1 = *MEMORY[0x1E6982FD8];
  return v1;
}

id static UTType.script.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FC8];
  *a1 = *MEMORY[0x1E6982FC8];
  return v1;
}

id static UTType.json.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E68];
  *a1 = *MEMORY[0x1E6982E68];
  return v1;
}

id static UTType.xmlPropertyList.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830B8];
  *a1 = *MEMORY[0x1E69830B8];
  return v1;
}

id static UTType.propertyList.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F68];
  *a1 = *MEMORY[0x1E6982F68];
  return v1;
}

id static UTType.binaryPropertyList.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CF0];
  *a1 = *MEMORY[0x1E6982CF0];
  return v1;
}

id static UTType.symbolicLink.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FF8];
  *a1 = *MEMORY[0x1E6982FF8];
  return v1;
}

id static UTType.archive.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CC0];
  *a1 = *MEMORY[0x1E6982CC0];
  return v1;
}

id static UTType.executable.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DB0];
  *a1 = *MEMORY[0x1E6982DB0];
  return v1;
}

id static UTType.text.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983020];
  *a1 = *MEMORY[0x1E6983020];
  return v1;
}

id static UTType.audiovisualContent.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CD8];
  *a1 = *MEMORY[0x1E6982CD8];
  return v1;
}

id static UTType.webArchive.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983098];
  *a1 = *MEMORY[0x1E6983098];
  return v1;
}

id static UTType.playlist.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F50];
  *a1 = *MEMORY[0x1E6982F50];
  return v1;
}

id static UTType.pdf.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F10];
  *a1 = *MEMORY[0x1E6982F10];
  return v1;
}

id static UTType.rtfd.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F98];
  *a1 = *MEMORY[0x1E6982F98];
  return v1;
}

id static UTType.flatRTFD.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DC0];
  *a1 = *MEMORY[0x1E6982DC0];
  return v1;
}

id static UTType.presentation.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F60];
  *a1 = *MEMORY[0x1E6982F60];
  return v1;
}

id static UTType.spreadsheet.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FE8];
  *a1 = *MEMORY[0x1E6982FE8];
  return v1;
}

unint64_t lazy protocol witness table accessor for type UTType and conformance UTType()
{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType and conformance UTType;
  if (!lazy protocol witness table cache variable for type UTType and conformance UTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType and conformance UTType);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UTType(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void URL.appendingPathExtension(for:)(uint64_t *a1@<X0>, NSURL *a2@<X8>)
{
  v2 = *a1;
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [v3 URLByAppendingPathExtensionForType_];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t UTType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGSgMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGSgMR);
  MEMORY[0x1EEE9AC00]();
  v5 = &v20[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v20[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UTType._CodingKeys and conformance UTType._CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    outlined destroy of KeyedDecodingContainer<UTType._CodingKeys>?(v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v11 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v14 = -1;
  }

  else
  {
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
    LOBYTE(v20[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v10;
    LOBYTE(v20[0]) = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    if (v16)
    {
      v14 = -1;
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UTType, 0x1E6982C40);
  v17 = @nonobjc UTType.init(_identifier:constantIndex:)(v11, v13, v14);
  *v21 = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type UTType._CodingKeys and conformance UTType._CodingKeys()
{
  result = lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTType._CodingKeys and conformance UTType._CodingKeys);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id @nonobjc UTType.init(_identifier:constantIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1BFB0EF60](a1);

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() _typeWithIdentifier_constantIndex_error_];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t storeEnumTagSinglePayload for UTType._CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UTType._CodingKeys()
{
  if (*v0)
  {
    return 0x746E6174736E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UTHardwareColor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

id UTType._preferredEnclosureColor.getter@<X0>(uint64_t a1@<X8>)
{

  return UTType._preferredEnclosureColor.getter(&selRef__getPreferredEnclosureColor_, a1);
}

id UTType._preferredEnclosureColor.getter@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v7[0] = 0;
  result = [v4 *a1];
  if (result)
  {
    v6 = HIDWORD(v7[0]) & 0xFFFFFF;
    if (LOBYTE(v7[0]) == 1)
    {
      v6 = HIDWORD(v7[0]) | 0x100000000;
    }
  }

  else
  {
    v6 = 0xFF00000000;
  }

  *a2 = v6;
  *(a2 + 4) = BYTE4(v6);
  return result;
}

uint64_t sub_1BB537310()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s22UniformTypeIdentifiers10UTTagClassVs28CustomDebugStringConvertibleAAsADP16debugDescriptionSSvgTW_0()
{
  v1 = *v0;

  return v1;
}

id _UTSwiftOverlayRuntimeIssuesAssistant.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _UTSwiftOverlayRuntimeIssuesAssistant();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for UTHardwareColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UTHardwareColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSURLResourceKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UTHardwareColor.__Unnamed_union___Anonymous_field2(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UTHardwareColor.__Unnamed_union___Anonymous_field2(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for UTHardwareColor(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void URL.appendingPathComponent(_:conformingTo:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, NSURL *a4@<X8>)
{
  v6 = *a3;
  URL._bridgeToObjectiveC()(a4);
  v8 = v7;
  v9 = MEMORY[0x1BFB0EF60](a1, a2);
  v10 = [v8 URLByAppendingPathComponent:v9 conformingToType:v6];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

Swift::Void __swiftcall URL.appendPathComponent(_:conformingTo:)(Swift::String _, UniformTypeIdentifiers::UTType conformingTo)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *conformingTo._type.super.isa;
  (*(v8 + 32))(v10, v3, v7);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = MEMORY[0x1BFB0EF60](countAndFlagsBits, object);
  v16 = [v14 URLByAppendingPathComponent:v15 conformingToType:v11];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v8 + 8))(v10, v7);
}

Swift::Void __swiftcall URL.appendPathExtension(for:)(UniformTypeIdentifiers::UTType a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1._type.super.isa;
  (*(v5 + 32))(v7, v2, v4);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v10 URLByAppendingPathExtensionForType_];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = MEMORY[0x1BFB0EF60](a1, a2);
  HashCode = _UTIdentifierGetHashCode();

  MEMORY[0x1BFB0F1B0](HashCode);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      v12 = MEMORY[0x1BFB0EF60](v10, v11);
      v13 = MEMORY[0x1BFB0EF60](a1, a2);
      LODWORD(v10) = _UTIdentifiersAreEqual();

      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

UniformTypeIdentifiers::UTType_optional __swiftcall UTType.init(_rawBluetoothProductID:rawVendorID:)(Swift::UInt32 _rawBluetoothProductID, Swift::UInt16 rawVendorID)
{
  v3 = v2;
  v4 = [objc_opt_self() _typeWithBluetoothProductID_vendorID_];
  *v3 = v4;
  result.value._type.super.isa = v4;
  result.is_nil = v5;
  return result;
}

UniformTypeIdentifiers::UTType_optional __swiftcall UTType.init(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = MEMORY[0x1BFB0EF60](a1._countAndFlagsBits);

  v4 = [objc_opt_self() typeWithIdentifier_];

  *v2 = v4;
  result.value._type.super.isa = v5;
  result.is_nil = v6;
  return result;
}

UniformTypeIdentifiers::UTType_optional __swiftcall UTType.init(mimeType:conformingTo:)(Swift::String mimeType, UniformTypeIdentifiers::UTType conformingTo)
{
  UTType.init(filenameExtension:conformingTo:)(conformingTo._type.super.isa, &selRef_typeWithMIMEType_conformingToType_, v2);
  result.value._type.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t UTType.preferredFilenameExtension.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id UTType.version.getter()
{
  v1 = [*v0 version];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t UTType.referenceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 referenceURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t UTType.supertypes.getter()
{
  v1 = [*v0 supertypes];
  lazy protocol witness table accessor for type UTType and conformance UTType();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

UniformTypeIdentifiers::UTType_optional __swiftcall UTType.init(tag:tagClass:conformingTo:)(Swift::String tag, UniformTypeIdentifiers::UTTagClass tagClass, UniformTypeIdentifiers::UTType_optional conformingTo)
{
  v4 = v3;
  v5 = *tagClass.rawValue._countAndFlagsBits;
  v6 = *(tagClass.rawValue._countAndFlagsBits + 8);
  v7 = *tagClass.rawValue._object;
  v8 = MEMORY[0x1BFB0EF60](tag._countAndFlagsBits);

  v9 = MEMORY[0x1BFB0EF60](v5, v6);

  v10 = [objc_opt_self() typeWithTag:v8 tagClass:v9 conformingToType:v7];

  *v4 = v10;
  result.value._type.super.isa = v11;
  result.is_nil = v12;
  return result;
}

uint64_t static UTType.types(tag:tagClass:conformingTo:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a4;
  v7 = MEMORY[0x1BFB0EF60](a1, a2);
  v8 = MEMORY[0x1BFB0EF60](v4, v5);
  v9 = [objc_opt_self() typesWithTag:v7 tagClass:v8 conformingToType:v6];

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t UTType.tags.getter()
{
  v1 = [*v0 tags];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSaySSGG_22UniformTypeIdentifiers10UTTagClassV_AFts5NeverOTg5012_sSSSaySSG22de13Identifiers10gh34VAAIgggro_SS3key_AA5valuetAD_AAts5I92OIegnrzr_TR04_s22ab31Identifiers6UTTypeV4tagsSDyAA10de19VSaySSGGvgAF_AGtSS_R5XEfU_Tf3nnnpf_nTf1cn_n(v2);

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy22UniformTypeIdentifiers10UTTagClassVSaySSGGMd, &_ss18_DictionaryStorageCy22UniformTypeIdentifiers10UTTagClassVSaySSGGMR);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v7 = v4;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, 1, &v7);

  return v7;
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSaySSGG_22UniformTypeIdentifiers10UTTagClassV_AFts5NeverOTg5012_sSSSaySSG22de13Identifiers10gh34VAAIgggro_SS3key_AA5valuetAD_AAts5I92OIegnrzr_TR04_s22ab31Identifiers6UTTypeV4tagsSDyAA10de19VSaySSGGvgAF_AGtSS_R5XEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = outlined consume of [String : [String]].Index._Variant(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : [String]].Index._Variant(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Int UTType.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UTType()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

id static UTType._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static UTType._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UTType@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UTType._CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB0F1B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UTType._CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB0F1B0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UTType._CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xED00007865646E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UTType._CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UTType._CodingKeys and conformance UTType._CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UTType._CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UTType._CodingKeys and conformance UTType._CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UTType.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGMd, &_ss22KeyedEncodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGMR);
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = v18 - v5;
  v7 = *v1;
  v20 = [*v1 _constantIndex];
  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v18[0] = v4;
  v10 = a1[3];
  v19 = a1[4];
  v18[1] = __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = [v7 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v21[0] = v12;
  v21[1] = v14;
  v15 = Encoder.encodeSingleValueSafely<A>(_:)(v21, v10, MEMORY[0x1E69E6158], v19, MEMORY[0x1E69E6160]);
  if (v2)
  {
  }

  v17 = v15;

  v4 = v18[0];
  if ((v17 & 1) == 0)
  {
LABEL_2:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type UTType._CodingKeys and conformance UTType._CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v8 = [v7 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v21[0]) = 0;
    v9 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      (*(v4 + 8))(v6, v9);
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      LOBYTE(v21[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    return (*(v4 + 8))(v6, v9);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 8 * v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1BFB0EFA0](0xD00000000000001BLL, 0x80000001BB540B90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1BFB0EFA0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 8 * v27) = v6;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t outlined destroy of KeyedDecodingContainer<UTType._CodingKeys>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGSgMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers6UTTypeV11_CodingKeys33_69DEE751C5463127999ABD487FB5EFE8LLOGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for UTType(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for UTType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UTType._CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy22UniformTypeIdentifiers10UTTagClassVSaySSGGMd, &_ss18_DictionaryStorageCy22UniformTypeIdentifiers10UTTagClassVSaySSGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy22UniformTypeIdentifiers10UTTagClassVSaySSGGMd, &_ss18_DictionaryStorageCy22UniformTypeIdentifiers10UTTagClassVSaySSGGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      v25 = v23;
      v26 = MEMORY[0x1BFB0EF60](v23, v22);
      HashCode = _UTIdentifierGetHashCode();

      MEMORY[0x1BFB0F1B0](HashCode);
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t static UTTagClass._deviceModelCode.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id static UTType.compositeContent.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D40];
  *a1 = *MEMORY[0x1E6982D40];
  return v1;
}

id static UTType.diskImage.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D88];
  *a1 = *MEMORY[0x1E6982D88];
  return v1;
}

id static UTType.directory.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D80];
  *a1 = *MEMORY[0x1E6982D80];
  return v1;
}

id static UTType.resolvable.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FA8];
  *a1 = *MEMORY[0x1E6982FA8];
  return v1;
}

id static UTType.mountPoint.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EE0];
  *a1 = *MEMORY[0x1E6982EE0];
  return v1;
}

id static UTType.aliasFile.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C80];
  *a1 = *MEMORY[0x1E6982C80];
  return v1;
}

id static UTType.urlBookmarkData.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983038];
  *a1 = *MEMORY[0x1E6983038];
  return v1;
}

id static UTType.fileURL.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DB8];
  *a1 = *MEMORY[0x1E6982DB8];
  return v1;
}

id static UTType.plainText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F40];
  *a1 = *MEMORY[0x1E6982F40];
  return v1;
}

id static UTType.utf8PlainText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983060];
  *a1 = *MEMORY[0x1E6983060];
  return v1;
}

id static UTType.utf16ExternalPlainText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983050];
  *a1 = *MEMORY[0x1E6983050];
  return v1;
}

id static UTType.utf16PlainText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983058];
  *a1 = *MEMORY[0x1E6983058];
  return v1;
}

id static UTType.delimitedText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D70];
  *a1 = *MEMORY[0x1E6982D70];
  return v1;
}

id static UTType.commaSeparatedText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D38];
  *a1 = *MEMORY[0x1E6982D38];
  return v1;
}

id static UTType.tabSeparatedText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983010];
  *a1 = *MEMORY[0x1E6983010];
  return v1;
}

id static UTType.utf8TabSeparatedText.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983068];
  *a1 = *MEMORY[0x1E6983068];
  return v1;
}

id static UTType.rtf.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F90];
  *a1 = *MEMORY[0x1E6982F90];
  return v1;
}

id static UTType.html.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E18];
  *a1 = *MEMORY[0x1E6982E18];
  return v1;
}

id static UTType.xml.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830B0];
  *a1 = *MEMORY[0x1E69830B0];
  return v1;
}

id static UTType.yaml.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830C8];
  *a1 = *MEMORY[0x1E69830C8];
  return v1;
}

id static UTType.css.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D20];
  *a1 = *MEMORY[0x1E6982D20];
  return v1;
}

id static UTType.assemblyLanguageSource.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CC8];
  *a1 = *MEMORY[0x1E6982CC8];
  return v1;
}

id static UTType.cSource.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D28];
  *a1 = *MEMORY[0x1E6982D28];
  return v1;
}

id static UTType.objectiveCSource.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F08];
  *a1 = *MEMORY[0x1E6982F08];
  return v1;
}

id static UTType.swiftSource.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FF0];
  *a1 = *MEMORY[0x1E6982FF0];
  return v1;
}

id static UTType.cPlusPlusSource.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D18];
  *a1 = *MEMORY[0x1E6982D18];
  return v1;
}

id static UTType.objectiveCPlusPlusSource.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F00];
  *a1 = *MEMORY[0x1E6982F00];
  return v1;
}

id static UTType.cHeader.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D08];
  *a1 = *MEMORY[0x1E6982D08];
  return v1;
}

id static UTType.cPlusPlusHeader.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D10];
  *a1 = *MEMORY[0x1E6982D10];
  return v1;
}

id static UTType.appleScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CA0];
  *a1 = *MEMORY[0x1E6982CA0];
  return v1;
}

id static UTType.osaScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EF0];
  *a1 = *MEMORY[0x1E6982EF0];
  return v1;
}

id static UTType.osaScriptBundle.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EF8];
  *a1 = *MEMORY[0x1E6982EF8];
  return v1;
}

id static UTType.javaScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E70];
  *a1 = *MEMORY[0x1E6982E70];
  return v1;
}

id static UTType.shellScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FD0];
  *a1 = *MEMORY[0x1E6982FD0];
  return v1;
}

id static UTType.perlScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F38];
  *a1 = *MEMORY[0x1E6982F38];
  return v1;
}

id static UTType.pythonScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F70];
  *a1 = *MEMORY[0x1E6982F70];
  return v1;
}

id static UTType.rubyScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FB0];
  *a1 = *MEMORY[0x1E6982FB0];
  return v1;
}

id static UTType.phpScript.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F18];
  *a1 = *MEMORY[0x1E6982F18];
  return v1;
}

id static UTType.makefile.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982ED0];
  *a1 = *MEMORY[0x1E6982ED0];
  return v1;
}

id static UTType.tiff.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983008];
  *a1 = *MEMORY[0x1E6983008];
  return v1;
}

id static UTType.gif.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DE8];
  *a1 = *MEMORY[0x1E6982DE8];
  return v1;
}

id static UTType.png.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F28];
  *a1 = *MEMORY[0x1E6982F28];
  return v1;
}

id static UTType.icns.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E20];
  *a1 = *MEMORY[0x1E6982E20];
  return v1;
}

id static UTType.bmp.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CE0];
  *a1 = *MEMORY[0x1E6982CE0];
  return v1;
}

id static UTType.ico.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E28];
  *a1 = *MEMORY[0x1E6982E28];
  return v1;
}

id static UTType.rawImage.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F88];
  *a1 = *MEMORY[0x1E6982F88];
  return v1;
}

id static UTType.svg.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FB8];
  *a1 = *MEMORY[0x1E6982FB8];
  return v1;
}

id static UTType.livePhoto.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E80];
  *a1 = *MEMORY[0x1E6982E80];
  return v1;
}

id static UTType.heif.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E10];
  *a1 = *MEMORY[0x1E6982E10];
  return v1;
}

id static UTType.heics.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E08];
  *a1 = *MEMORY[0x1E6982E08];
  return v1;
}

id static UTType.webP.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830A0];
  *a1 = *MEMORY[0x1E69830A0];
  return v1;
}

id static UTType.exr.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DA0];
  *a1 = *MEMORY[0x1E6982DA0];
  return v1;
}

id static UTType.dng.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D58];
  *a1 = *MEMORY[0x1E6982D58];
  return v1;
}

id static UTType.jpegxl.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E60];
  *a1 = *MEMORY[0x1E6982E60];
  return v1;
}

id static UTType.threeDContent.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C58];
  *a1 = *MEMORY[0x1E6982C58];
  return v1;
}

id static UTType.usd.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983040];
  *a1 = *MEMORY[0x1E6983040];
  return v1;
}

id static UTType.usdz.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983048];
  *a1 = *MEMORY[0x1E6983048];
  return v1;
}

id static UTType.realityFile.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FA0];
  *a1 = *MEMORY[0x1E6982FA0];
  return v1;
}

id static UTType.sceneKitScene.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FC0];
  *a1 = *MEMORY[0x1E6982FC0];
  return v1;
}

id static UTType.arReferenceObject.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C70];
  *a1 = *MEMORY[0x1E6982C70];
  return v1;
}

id static UTType.quickTimeMovie.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F80];
  *a1 = *MEMORY[0x1E6982F80];
  return v1;
}

id static UTType.mpeg.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EA8];
  *a1 = *MEMORY[0x1E6982EA8];
  return v1;
}

id static UTType.mpeg2Video.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EB8];
  *a1 = *MEMORY[0x1E6982EB8];
  return v1;
}

id static UTType.mpeg2TransportStream.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EB0];
  *a1 = *MEMORY[0x1E6982EB0];
  return v1;
}

id static UTType.mp3.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EA0];
  *a1 = *MEMORY[0x1E6982EA0];
  return v1;
}

id static UTType.mpeg4Movie.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EC8];
  *a1 = *MEMORY[0x1E6982EC8];
  return v1;
}

id static UTType.mpeg4Audio.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982EC0];
  *a1 = *MEMORY[0x1E6982EC0];
  return v1;
}

id static UTType.appleProtectedMPEG4Audio.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C90];
  *a1 = *MEMORY[0x1E6982C90];
  return v1;
}

id static UTType.appleProtectedMPEG4Video.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C98];
  *a1 = *MEMORY[0x1E6982C98];
  return v1;
}

id static UTType.avi.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C78];
  *a1 = *MEMORY[0x1E6982C78];
  return v1;
}

id static UTType.aiff.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C68];
  *a1 = *MEMORY[0x1E6982C68];
  return v1;
}

id static UTType.wav.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983090];
  *a1 = *MEMORY[0x1E6983090];
  return v1;
}

id static UTType.midi.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E98];
  *a1 = *MEMORY[0x1E6982E98];
  return v1;
}

id static UTType.m3uPlaylist.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E90];
  *a1 = *MEMORY[0x1E6982E90];
  return v1;
}

id static UTType.volume.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983088];
  *a1 = *MEMORY[0x1E6983088];
  return v1;
}

id static UTType.package.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F30];
  *a1 = *MEMORY[0x1E6982F30];
  return v1;
}

id static UTType.bundle.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D00];
  *a1 = *MEMORY[0x1E6982D00];
  return v1;
}

id static UTType.pluginBundle.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F58];
  *a1 = *MEMORY[0x1E6982F58];
  return v1;
}

id static UTType.spotlightImporter.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982FE0];
  *a1 = *MEMORY[0x1E6982FE0];
  return v1;
}

id static UTType.quickLookGenerator.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F78];
  *a1 = *MEMORY[0x1E6982F78];
  return v1;
}

id static UTType.xpcService.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830C0];
  *a1 = *MEMORY[0x1E69830C0];
  return v1;
}

id static UTType.framework.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DE0];
  *a1 = *MEMORY[0x1E6982DE0];
  return v1;
}

id static UTType.application.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CA8];
  *a1 = *MEMORY[0x1E6982CA8];
  return v1;
}

id static UTType.applicationBundle.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CB0];
  *a1 = *MEMORY[0x1E6982CB0];
  return v1;
}

id static UTType.applicationExtension.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CB8];
  *a1 = *MEMORY[0x1E6982CB8];
  return v1;
}

id static UTType.unixExecutable.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983070];
  *a1 = *MEMORY[0x1E6983070];
  return v1;
}

id static UTType.exe.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D98];
  *a1 = *MEMORY[0x1E6982D98];
  return v1;
}

id static UTType.systemPreferencesPane.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983000];
  *a1 = *MEMORY[0x1E6983000];
  return v1;
}

id static UTType.gzip.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DF0];
  *a1 = *MEMORY[0x1E6982DF0];
  return v1;
}

id static UTType.bz2.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CE8];
  *a1 = *MEMORY[0x1E6982CE8];
  return v1;
}

id static UTType.zip.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830D0];
  *a1 = *MEMORY[0x1E69830D0];
  return v1;
}

id static UTType.appleArchive.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C88];
  *a1 = *MEMORY[0x1E6982C88];
  return v1;
}

id static UTType.tarArchive.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983018];
  *a1 = *MEMORY[0x1E6983018];
  return v1;
}

id static UTType.database.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D68];
  *a1 = *MEMORY[0x1E6982D68];
  return v1;
}

id static UTType.message.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982ED8];
  *a1 = *MEMORY[0x1E6982ED8];
  return v1;
}

id static UTType.contact.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D48];
  *a1 = *MEMORY[0x1E6982D48];
  return v1;
}

id static UTType.vCard.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983078];
  *a1 = *MEMORY[0x1E6983078];
  return v1;
}

id static UTType.toDoItem.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983028];
  *a1 = *MEMORY[0x1E6983028];
  return v1;
}

id static UTType.calendarEvent.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D30];
  *a1 = *MEMORY[0x1E6982D30];
  return v1;
}

id static UTType.emailMessage.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DA8];
  *a1 = *MEMORY[0x1E6982DA8];
  return v1;
}

id static UTType.internetLocation.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E38];
  *a1 = *MEMORY[0x1E6982E38];
  return v1;
}

id static UTType.internetShortcut.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E40];
  *a1 = *MEMORY[0x1E6982E40];
  return v1;
}

id static UTType.font.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DD8];
  *a1 = *MEMORY[0x1E6982DD8];
  return v1;
}

id static UTType.bookmark.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982CF8];
  *a1 = *MEMORY[0x1E6982CF8];
  return v1;
}

id static UTType.pkcs12.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982F20];
  *a1 = *MEMORY[0x1E6982F20];
  return v1;
}

id static UTType.x509Certificate.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830A8];
  *a1 = *MEMORY[0x1E69830A8];
  return v1;
}

id static UTType.epub.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982D90];
  *a1 = *MEMORY[0x1E6982D90];
  return v1;
}

id static UTType.log.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E88];
  *a1 = *MEMORY[0x1E6982E88];
  return v1;
}

id static UTType.ahap.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982C60];
  *a1 = *MEMORY[0x1E6982C60];
  return v1;
}

id static UTType.geoJSON.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982DF8];
  *a1 = *MEMORY[0x1E6982DF8];
  return v1;
}

id static UTType.linkPresentationMetadata.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6982E78];
  *a1 = *MEMORY[0x1E6982E78];
  return v1;
}

char *static UTType._namedConstants_UTCoreTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E6982E48];
  *(v0 + 16) = xmmword_1BB540550;
  v2 = *v1;
  v3 = *MEMORY[0x1E6982D50];
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  v4 = *MEMORY[0x1E6982D40];
  v5 = *MEMORY[0x1E6982D88];
  *(v0 + 48) = *MEMORY[0x1E6982D40];
  *(v0 + 56) = v5;
  v6 = *MEMORY[0x1E6982D60];
  v7 = *MEMORY[0x1E6982D80];
  v8 = MEMORY[0x1E6982FA8];
  *(v0 + 64) = *MEMORY[0x1E6982D60];
  *(v0 + 72) = v7;
  v9 = *v8;
  v10 = *MEMORY[0x1E6982FF8];
  *(v0 + 80) = *v8;
  *(v0 + 88) = v10;
  v11 = *MEMORY[0x1E6982DB0];
  v244 = *MEMORY[0x1E6982EE0];
  v12 = *MEMORY[0x1E6982EE0];
  *(v0 + 96) = *MEMORY[0x1E6982DB0];
  *(v0 + 104) = v12;
  v240 = *MEMORY[0x1E6982C80];
  v243 = *MEMORY[0x1E6983038];
  v13 = *MEMORY[0x1E6983038];
  v14 = MEMORY[0x1E6983030];
  *(v0 + 112) = *MEMORY[0x1E6982C80];
  *(v0 + 120) = v13;
  v15 = *v14;
  v247 = *MEMORY[0x1E6982DB8];
  v16 = *MEMORY[0x1E6982DB8];
  *(v0 + 128) = v15;
  *(v0 + 136) = v16;
  v242 = *MEMORY[0x1E6983020];
  v250 = *MEMORY[0x1E6982F40];
  v17 = *MEMORY[0x1E6982F40];
  *(v0 + 144) = *MEMORY[0x1E6983020];
  *(v0 + 152) = v17;
  v241 = *MEMORY[0x1E6983060];
  v249 = *MEMORY[0x1E6983050];
  v18 = *MEMORY[0x1E6983050];
  v19 = MEMORY[0x1E6983058];
  *(v0 + 160) = *MEMORY[0x1E6983060];
  *(v0 + 168) = v18;
  v245 = *v19;
  v252 = *MEMORY[0x1E6982D70];
  v20 = *MEMORY[0x1E6982D70];
  *(v0 + 176) = v245;
  *(v0 + 184) = v20;
  v248 = *MEMORY[0x1E6982D38];
  v255 = *MEMORY[0x1E6983010];
  v21 = *MEMORY[0x1E6983010];
  *(v0 + 192) = *MEMORY[0x1E6982D38];
  *(v0 + 200) = v21;
  v246 = *MEMORY[0x1E6983068];
  v254 = *MEMORY[0x1E6982F90];
  v22 = *MEMORY[0x1E6982F90];
  v23 = MEMORY[0x1E6982E18];
  *(v0 + 208) = *MEMORY[0x1E6983068];
  *(v0 + 216) = v22;
  v251 = *v23;
  v258 = *MEMORY[0x1E69830B0];
  v24 = *MEMORY[0x1E69830B0];
  *(v0 + 224) = v251;
  *(v0 + 232) = v24;
  v253 = *MEMORY[0x1E69830C8];
  v261 = *MEMORY[0x1E6982FD8];
  v25 = *MEMORY[0x1E6982FD8];
  *(v0 + 240) = *MEMORY[0x1E69830C8];
  *(v0 + 248) = v25;
  v257 = *MEMORY[0x1E6982CC8];
  v260 = *MEMORY[0x1E6982D28];
  v26 = *MEMORY[0x1E6982D28];
  *(v0 + 256) = *MEMORY[0x1E6982CC8];
  v27 = MEMORY[0x1E6982F08];
  *(v0 + 264) = v26;
  v256 = *v27;
  v264 = *MEMORY[0x1E6982FF0];
  v28 = *MEMORY[0x1E6982FF0];
  *(v0 + 272) = v256;
  *(v0 + 280) = v28;
  v259 = *MEMORY[0x1E6982D18];
  v267 = *MEMORY[0x1E6982F00];
  v29 = *MEMORY[0x1E6982F00];
  *(v0 + 288) = *MEMORY[0x1E6982D18];
  *(v0 + 296) = v29;
  v263 = *MEMORY[0x1E6982D08];
  v266 = *MEMORY[0x1E6982D10];
  v30 = *MEMORY[0x1E6982D10];
  *(v0 + 304) = *MEMORY[0x1E6982D08];
  v31 = MEMORY[0x1E6982FC8];
  *(v0 + 312) = v30;
  v262 = *v31;
  v270 = *MEMORY[0x1E6982CA0];
  v32 = *MEMORY[0x1E6982CA0];
  *(v0 + 320) = v262;
  *(v0 + 328) = v32;
  v265 = *MEMORY[0x1E6982EF0];
  v273 = *MEMORY[0x1E6982EF8];
  v33 = *MEMORY[0x1E6982EF8];
  *(v0 + 336) = *MEMORY[0x1E6982EF0];
  *(v0 + 344) = v33;
  v269 = *MEMORY[0x1E6982E70];
  v272 = *MEMORY[0x1E6982FD0];
  v34 = *MEMORY[0x1E6982FD0];
  *(v0 + 352) = *MEMORY[0x1E6982E70];
  v35 = MEMORY[0x1E6982F38];
  *(v0 + 360) = v34;
  v268 = *v35;
  v276 = *MEMORY[0x1E6982F70];
  v36 = *MEMORY[0x1E6982F70];
  *(v0 + 368) = v268;
  *(v0 + 376) = v36;
  v271 = *MEMORY[0x1E6982FB0];
  v279 = *MEMORY[0x1E6982F18];
  v37 = *MEMORY[0x1E6982F18];
  *(v0 + 384) = *MEMORY[0x1E6982FB0];
  *(v0 + 392) = v37;
  v275 = *MEMORY[0x1E6982E68];
  v278 = *MEMORY[0x1E6982F68];
  v38 = *MEMORY[0x1E6982F68];
  *(v0 + 400) = *MEMORY[0x1E6982E68];
  v39 = MEMORY[0x1E69830B8];
  *(v0 + 408) = v38;
  v274 = *v39;
  v282 = *MEMORY[0x1E6982CF0];
  v40 = *MEMORY[0x1E6982CF0];
  *(v0 + 416) = v274;
  *(v0 + 424) = v40;
  v277 = *MEMORY[0x1E6982F10];
  v285 = *MEMORY[0x1E6982F98];
  v41 = *MEMORY[0x1E6982F98];
  *(v0 + 432) = *MEMORY[0x1E6982F10];
  *(v0 + 440) = v41;
  v281 = *MEMORY[0x1E6982DC0];
  v284 = *MEMORY[0x1E6983098];
  v42 = *MEMORY[0x1E6983098];
  *(v0 + 448) = *MEMORY[0x1E6982DC0];
  v43 = MEMORY[0x1E6982E30];
  *(v0 + 456) = v42;
  v280 = *v43;
  v287 = *MEMORY[0x1E6982E58];
  v44 = *MEMORY[0x1E6982E58];
  *(v0 + 464) = v280;
  *(v0 + 472) = v44;
  v283 = *MEMORY[0x1E6983008];
  v289 = *MEMORY[0x1E6982DE8];
  v45 = *MEMORY[0x1E6982DE8];
  *(v0 + 480) = *MEMORY[0x1E6983008];
  *(v0 + 488) = v45;
  v286 = *MEMORY[0x1E6982F28];
  v288 = *MEMORY[0x1E6982E20];
  v46 = *MEMORY[0x1E6982E20];
  *(v0 + 496) = *MEMORY[0x1E6982F28];
  v290 = *MEMORY[0x1E6982CE0];
  v47 = *MEMORY[0x1E6982CE0];
  *(v0 + 504) = v46;
  *(v0 + 512) = v47;
  v292 = *MEMORY[0x1E6982E28];
  *(v0 + 520) = *MEMORY[0x1E6982E28];
  v291 = *MEMORY[0x1E6982F88];
  v48 = MEMORY[0x1E6982FB8];
  *(v0 + 528) = *MEMORY[0x1E6982F88];
  v293 = *v48;
  *(v0 + 536) = *v48;
  v295 = *MEMORY[0x1E6982E80];
  *(v0 + 544) = *MEMORY[0x1E6982E80];
  v294 = *MEMORY[0x1E6982E10];
  v49 = MEMORY[0x1E6982E00];
  *(v0 + 552) = *MEMORY[0x1E6982E10];
  v296 = *v49;
  *(v0 + 560) = *v49;
  v298 = *MEMORY[0x1E69830A0];
  *(v0 + 568) = *MEMORY[0x1E69830A0];
  v297 = *MEMORY[0x1E6982C58];
  v50 = MEMORY[0x1E6983040];
  *(v0 + 576) = *MEMORY[0x1E6982C58];
  v299 = *v50;
  *(v0 + 584) = *v50;
  v301 = *MEMORY[0x1E6983048];
  *(v0 + 592) = *MEMORY[0x1E6983048];
  v300 = *MEMORY[0x1E6982FA0];
  v51 = MEMORY[0x1E6982FC0];
  *(v0 + 600) = *MEMORY[0x1E6982FA0];
  v302 = *v51;
  *(v0 + 608) = *v51;
  v304 = *MEMORY[0x1E6982C70];
  *(v0 + 616) = *MEMORY[0x1E6982C70];
  v303 = *MEMORY[0x1E6982CD8];
  v52 = MEMORY[0x1E6982EE8];
  *(v0 + 624) = *MEMORY[0x1E6982CD8];
  v305 = *v52;
  *(v0 + 632) = *v52;
  v307 = *MEMORY[0x1E6983080];
  *(v0 + 640) = *MEMORY[0x1E6983080];
  v306 = *MEMORY[0x1E6982CD0];
  v53 = MEMORY[0x1E6982F80];
  *(v0 + 648) = *MEMORY[0x1E6982CD0];
  v308 = *v53;
  *(v0 + 656) = *v53;
  v310 = *MEMORY[0x1E6982EA8];
  *(v0 + 664) = *MEMORY[0x1E6982EA8];
  v309 = *MEMORY[0x1E6982EB8];
  v54 = MEMORY[0x1E6982EB0];
  *(v0 + 672) = *MEMORY[0x1E6982EB8];
  v311 = *v54;
  *(v0 + 680) = *v54;
  v313 = *MEMORY[0x1E6982EA0];
  *(v0 + 688) = *MEMORY[0x1E6982EA0];
  v312 = *MEMORY[0x1E6982EC8];
  v55 = MEMORY[0x1E6982EC0];
  *(v0 + 696) = *MEMORY[0x1E6982EC8];
  v314 = *v55;
  *(v0 + 704) = *v55;
  v316 = *MEMORY[0x1E6982C90];
  *(v0 + 712) = *MEMORY[0x1E6982C90];
  v315 = *MEMORY[0x1E6982C98];
  v56 = MEMORY[0x1E6982C78];
  *(v0 + 720) = *MEMORY[0x1E6982C98];
  v317 = *v56;
  *(v0 + 728) = *v56;
  v319 = *MEMORY[0x1E6982C68];
  *(v0 + 736) = *MEMORY[0x1E6982C68];
  v318 = *MEMORY[0x1E6983090];
  v57 = MEMORY[0x1E6982E98];
  *(v0 + 744) = *MEMORY[0x1E6983090];
  v320 = *v57;
  *(v0 + 752) = *v57;
  v322 = *MEMORY[0x1E6982F50];
  *(v0 + 760) = *MEMORY[0x1E6982F50];
  v321 = *MEMORY[0x1E6982E90];
  v58 = MEMORY[0x1E6982DC8];
  *(v0 + 768) = *MEMORY[0x1E6982E90];
  v323 = *v58;
  *(v0 + 776) = *v58;
  v325 = *MEMORY[0x1E6983088];
  *(v0 + 784) = *MEMORY[0x1E6983088];
  v324 = *MEMORY[0x1E6982F30];
  v59 = MEMORY[0x1E6982D00];
  *(v0 + 792) = *MEMORY[0x1E6982F30];
  v326 = *v59;
  *(v0 + 800) = *v59;
  v328 = *MEMORY[0x1E6982F58];
  *(v0 + 808) = *MEMORY[0x1E6982F58];
  v327 = *MEMORY[0x1E6982FE0];
  v60 = MEMORY[0x1E6982F78];
  *(v0 + 816) = *MEMORY[0x1E6982FE0];
  v329 = *v60;
  *(v0 + 824) = *v60;
  v331 = *MEMORY[0x1E69830C0];
  *(v0 + 832) = *MEMORY[0x1E69830C0];
  v330 = *MEMORY[0x1E6982DE0];
  v61 = MEMORY[0x1E6982CA8];
  *(v0 + 840) = *MEMORY[0x1E6982DE0];
  v332 = *v61;
  *(v0 + 848) = *v61;
  v334 = *MEMORY[0x1E6982CB0];
  *(v0 + 856) = *MEMORY[0x1E6982CB0];
  v333 = *MEMORY[0x1E6982CB8];
  v62 = MEMORY[0x1E6983070];
  *(v0 + 864) = *MEMORY[0x1E6982CB8];
  v335 = *v62;
  *(v0 + 872) = *v62;
  v337 = *MEMORY[0x1E6982D98];
  *(v0 + 880) = *MEMORY[0x1E6982D98];
  v336 = *MEMORY[0x1E6983000];
  v63 = MEMORY[0x1E6982CC0];
  *(v0 + 888) = *MEMORY[0x1E6983000];
  v338 = *v63;
  *(v0 + 896) = *v63;
  v340 = *MEMORY[0x1E6982DF0];
  *(v0 + 904) = *MEMORY[0x1E6982DF0];
  v339 = *MEMORY[0x1E6982CE8];
  v64 = MEMORY[0x1E69830D0];
  *(v0 + 912) = *MEMORY[0x1E6982CE8];
  v341 = *v64;
  *(v0 + 920) = *v64;
  v343 = *MEMORY[0x1E6982C88];
  *(v0 + 928) = *MEMORY[0x1E6982C88];
  v342 = *MEMORY[0x1E6982FE8];
  v65 = MEMORY[0x1E6982F60];
  *(v0 + 936) = *MEMORY[0x1E6982FE8];
  v344 = *v65;
  *(v0 + 944) = *v65;
  v346 = *MEMORY[0x1E6982D68];
  *(v0 + 952) = *MEMORY[0x1E6982D68];
  v345 = *MEMORY[0x1E6982ED8];
  v66 = MEMORY[0x1E6982D48];
  *(v0 + 960) = *MEMORY[0x1E6982ED8];
  v347 = *v66;
  *(v0 + 968) = *v66;
  v349 = *MEMORY[0x1E6983078];
  *(v0 + 976) = *MEMORY[0x1E6983078];
  v348 = *MEMORY[0x1E6983028];
  v67 = MEMORY[0x1E6982D30];
  *(v0 + 984) = *MEMORY[0x1E6983028];
  v350 = *v67;
  *(v0 + 992) = *v67;
  v352 = *MEMORY[0x1E6982DA8];
  *(v0 + 1000) = *MEMORY[0x1E6982DA8];
  v351 = *MEMORY[0x1E6982E38];
  v68 = MEMORY[0x1E6982E40];
  *(v0 + 1008) = *MEMORY[0x1E6982E38];
  v353 = *v68;
  *(v0 + 1016) = *v68;
  v355 = *MEMORY[0x1E6982DD8];
  *(v0 + 1024) = *MEMORY[0x1E6982DD8];
  v354 = *MEMORY[0x1E6982CF8];
  v69 = MEMORY[0x1E6982F20];
  *(v0 + 1032) = *MEMORY[0x1E6982CF8];
  v356 = *v69;
  *(v0 + 1040) = *v69;
  v358 = *MEMORY[0x1E69830A8];
  *(v0 + 1048) = *MEMORY[0x1E69830A8];
  v357 = *MEMORY[0x1E6982D90];
  v70 = MEMORY[0x1E6982E88];
  *(v0 + 1056) = *MEMORY[0x1E6982D90];
  v359 = *v70;
  *(v0 + 1064) = *v70;
  v360 = *MEMORY[0x1E6982ED0];
  v71 = v2;
  v72 = v3;
  v73 = v4;
  v74 = v5;
  v75 = v6;
  v76 = v7;
  v77 = v9;
  v78 = v10;
  v79 = v11;
  v80 = v244;
  v81 = v240;
  v82 = v243;
  v83 = v15;
  v84 = v247;
  v85 = v242;
  v86 = v250;
  v87 = v241;
  v88 = v249;
  v89 = v245;
  v90 = v252;
  v91 = v248;
  v92 = v255;
  v93 = v246;
  v94 = v254;
  v95 = v251;
  v96 = v258;
  v97 = v253;
  v98 = v261;
  v99 = v257;
  v100 = v260;
  v101 = v256;
  v102 = v264;
  v103 = v259;
  v104 = v267;
  v105 = v263;
  v106 = v266;
  v107 = v262;
  v108 = v270;
  v109 = v265;
  v110 = v273;
  v111 = v269;
  v112 = v272;
  v113 = v268;
  v114 = v276;
  v115 = v271;
  v116 = v279;
  v117 = v275;
  v118 = v278;
  v119 = v274;
  v120 = v282;
  v121 = v277;
  v122 = v285;
  v123 = v281;
  v124 = v284;
  v125 = v280;
  v126 = v287;
  v127 = v283;
  v128 = v289;
  v129 = v286;
  v130 = v288;
  v131 = v290;
  v132 = v292;
  v133 = v291;
  v134 = v293;
  v135 = v295;
  v136 = v294;
  v137 = v296;
  v138 = v298;
  v139 = v297;
  v140 = v299;
  v141 = v301;
  v142 = v300;
  v143 = v302;
  v144 = v304;
  v145 = v303;
  v146 = v305;
  v147 = v307;
  v148 = v306;
  v149 = v308;
  v150 = v310;
  v151 = v309;
  v152 = v311;
  v153 = v313;
  v154 = v312;
  v155 = v314;
  v156 = v316;
  v157 = v315;
  v158 = v317;
  v159 = v319;
  v160 = v318;
  v161 = v320;
  v162 = v322;
  v163 = v321;
  v164 = v323;
  v165 = v325;
  v166 = v324;
  v167 = v326;
  v168 = v328;
  v169 = v327;
  v170 = v329;
  v171 = v331;
  v172 = v330;
  v173 = v332;
  v174 = v334;
  v175 = v333;
  v176 = v335;
  v177 = v337;
  v178 = v336;
  v179 = v338;
  v180 = v340;
  v181 = v339;
  v182 = v341;
  v183 = v343;
  v184 = v342;
  v185 = v344;
  v186 = v346;
  v187 = v345;
  v188 = v347;
  v189 = v349;
  v190 = v348;
  v191 = v350;
  v192 = v352;
  v193 = v351;
  v194 = v353;
  v195 = v355;
  v196 = v354;
  v197 = v356;
  v198 = v358;
  v199 = v357;
  v200 = v359;
  v201 = v360;
  v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 131, 1, v0);
  *(v202 + 2) = 131;
  *(v202 + 134) = v201;
  v203 = *(v202 + 3);
  v204 = *MEMORY[0x1E6982D20];
  if (v203 <= 0x107)
  {
    v222 = v203 > 1;
    v223 = v204;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v222, 132, 1, v202);
    v204 = v223;
  }

  *(v202 + 2) = 132;
  *(v202 + 135) = v204;
  v205 = *(v202 + 3);
  v206 = *MEMORY[0x1E6982E08];
  if (v205 <= 0x109)
  {
    v224 = v205 > 1;
    v225 = v206;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v224, 133, 1, v202);
    v206 = v225;
  }

  *(v202 + 2) = 133;
  *(v202 + 136) = v206;
  v207 = *(v202 + 3);
  v208 = *MEMORY[0x1E6982DA0];
  if (v207 <= 0x10B)
  {
    v226 = v207 > 1;
    v227 = v208;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v226, 134, 1, v202);
    v208 = v227;
  }

  *(v202 + 2) = 134;
  *(v202 + 137) = v208;
  v209 = *(v202 + 3);
  v210 = *MEMORY[0x1E6982D58];
  if (v209 <= 0x10D)
  {
    v228 = v209 > 1;
    v229 = v210;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v228, 135, 1, v202);
    v210 = v229;
  }

  *(v202 + 2) = 135;
  *(v202 + 138) = v210;
  v211 = *(v202 + 3);
  v212 = *MEMORY[0x1E6983018];
  if (v211 <= 0x10F)
  {
    v230 = v211 > 1;
    v231 = v212;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v230, 136, 1, v202);
    v212 = v231;
  }

  *(v202 + 2) = 136;
  *(v202 + 139) = v212;
  v213 = *(v202 + 3);
  v214 = *MEMORY[0x1E6982DF8];
  if (v213 <= 0x111)
  {
    v232 = v213 > 1;
    v233 = v214;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v232, 137, 1, v202);
    v214 = v233;
  }

  *(v202 + 2) = 137;
  *(v202 + 140) = v214;
  v215 = *(v202 + 3);
  v216 = *MEMORY[0x1E6982E78];
  if (v215 <= 0x113)
  {
    v234 = v215 > 1;
    v235 = v216;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v234, 138, 1, v202);
    v216 = v235;
  }

  *(v202 + 2) = 138;
  *(v202 + 141) = v216;
  v217 = *(v202 + 3);
  v218 = *MEMORY[0x1E6982E60];
  if (v217 <= 0x115)
  {
    v236 = v217 > 1;
    v237 = v218;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v236, 139, 1, v202);
    v218 = v237;
  }

  *(v202 + 2) = 139;
  *(v202 + 142) = v218;
  v219 = *(v202 + 3);
  v220 = *MEMORY[0x1E6982C60];
  if (v219 <= 0x117)
  {
    v238 = v219 > 1;
    v239 = v220;
    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v238, 140, 1, v202);
    v220 = v239;
  }

  *(v202 + 2) = 140;
  *(v202 + 143) = v220;
  return v202;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id NSItemProvider.init(contentsOf:contentType:openInPlace:coordinated:visibility:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, NSURL *a6@<X8>)
{
  v10 = *a2;
  URL._bridgeToObjectiveC()(a6);
  v12 = v11;
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentsOfURL:v11 contentType:v10 openInPlace:a3 & 1 coordinated:a4 & 1 visibility:a5];

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

void NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v9[3] = &block_descriptor;
  v7 = _Block_copy(v9);
  v8 = v6;

  [v4 registerDataRepresentationForContentType:v8 visibility:a2 loadHandler:v7];
  _Block_release(v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void NSItemProvider.registerFileRepresentation(for:visibility:openInPlace:loadHandler:)(void **a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
  v11[3] = &block_descriptor_3;
  v9 = _Block_copy(v11);
  v10 = v8;

  [v5 registerFileRepresentationForContentType:v10 visibility:a2 openInPlace:a3 & 1 loadHandler:v9];
  _Block_release(v9);
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = v5(a4, v7);

  return v8;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned Bool, @unowned NSError?) -> ()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00]();
  v9 = &v16 - v8;
  outlined init with copy of URL?(a1, &v16 - v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a3)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  (*(a4 + 16))(a4, v13, a2 & 1, v15);
}

id NSItemProvider.loadDataRepresentation(for:completionHandler:)(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_6;
  v5 = _Block_copy(v9);
  v6 = v4;

  v7 = [v3 loadDataRepresentationForContentType:v6 completionHandler:v5];
  _Block_release(v5);

  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  outlined consume of Data?(v4, v8);
}

id NSItemProvider.loadFileRepresentation(for:openInPlace:completionHandler:)(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_9;
  v7 = _Block_copy(v11);
  v8 = v6;

  v9 = [v4 loadFileRepresentationForContentType:v8 openInPlace:a2 & 1 completionHandler:v7];
  _Block_release(v7);

  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a4;
  v10(v9, a3, a4);

  return outlined destroy of URL?(v9);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Encoder.encodeSingleValueSafely<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(dispatch thunk of Encoder.codingPath.getter() + 16);

  if (!v5)
  {
    v10[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v6 = String.init<A>(describing:)();
    v8 = specialized Sequence<>.starts<A>(with:)(0x457473696C505F5FLL, 0xEE007265646F636ELL, v6, v7);

    if (v8)
    {
      return 0;
    }
  }

  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return 1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t static UTType._enumerateAllDeclaredTypes(using:)(uint64_t a1, uint64_t a2)
{
  return specialized static UTType._enumerateAllDeclaredTypes(using:)(a1, a2);
}

{
  v3[2] = a1;
  v3[3] = a2;
  return specialized static UTType._enumerateAllDeclaredTypes(using:)(partial apply for closure #1 in static UTType._enumerateAllDeclaredTypes(using:), v3);
}

uint64_t closure #1 in static UTType._enumerateAllDeclaredTypes(using:)(uint64_t *a1, _BYTE *a2, uint64_t (*a3)(uint64_t *, char *))
{
  v4 = *a1;
  v7 = 0;
  v6 = v4;
  result = a3(&v6, &v7);
  *a2 = v7;
  return result;
}

void thunk for @escaping @callee_guaranteed (@in_guaranteed UTType, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = a2;
  v4(&v7, a3);
  v6 = v7;
}

uint64_t static UTType._types(identifiers:)()
{
  v0 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v2 = [v0 _typesWithIdentifiers_];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

Swift::String_optional __swiftcall UTType._localizedDescription(using:)(Swift::OpaquePointer using)
{
  v1 = UTType._localizedDescription(using:)(using._rawValue, &selRef__localizedDescriptionWithPreferredLocalizations_);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t UTType._kindString.getter()
{
  v1 = [*v0 _kindString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::String_optional __swiftcall UTType._kindString(using:)(Swift::OpaquePointer using)
{
  v1 = UTType._localizedDescription(using:)(using._rawValue, &selRef__kindStringWithPreferredLocalizations_);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t UTType._localizedDescription(using:)(uint64_t a1, SEL *a2)
{
  v4 = *v2;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v4 *a2];

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t UTType._localizedDescriptionDictionary.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t UTType.init(_ofItemAt:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UTType();
  (*(v6 + 16))(v8, a1, v5);
  v9 = @nonobjc UTType.init(_ofItemAt:)(v8);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  v11 = v9;
  result = (*(v6 + 8))(a1, v5);
  *a2 = v11;
  return result;
}

id @nonobjc UTType.init(_ofItemAt:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() _typeOfItemAtFileURL_error_];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

char *UTType._parentTypes.getter()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*v0 _parentTypes];
  NSOrderedSet.makeIterator()();
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
  dispatch thunk of IteratorProtocol.next()();
  if (v17)
  {
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with take of Any(v16, &v14);
      if (swift_dynamicCast())
      {
        v7 = v15;
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
          }

          v9 = *(v6 + 2);
          v8 = *(v6 + 3);
          v10 = v9 + 1;
          if (v9 >= v8 >> 1)
          {
            v13 = v9 + 1;
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
            v10 = v13;
            v6 = v11;
          }

          *(v6 + 2) = v10;
          *&v6[8 * v9 + 32] = v7;
        }
      }

      else
      {
        v15 = 0;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v17);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t UTType._childTypes.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  lazy protocol witness table accessor for type UTType and conformance UTType();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void UTType.init(_exportedAs:from:conformingTo:)(void *a2@<X2>, void **a3@<X3>, SEL *a4@<X4>, void *a5@<X8>)
{
  v8 = *a3;
  v9 = MEMORY[0x1BFB0EF60]();

  v10 = [objc_opt_self() *a4];

  *a5 = v10;
}

UniformTypeIdentifiers::UTType_optional __swiftcall UTType.init(_identifier:allowUndeclared:)(Swift::String _identifier, Swift::Bool allowUndeclared)
{
  v4 = v2;
  v5 = MEMORY[0x1BFB0EF60](_identifier._countAndFlagsBits);

  v6 = [objc_opt_self() _typeWithIdentifier_allowUndeclared_];

  *v4 = v6;
  result.value._type.super.isa = v7;
  result.is_nil = v8;
  return result;
}

uint64_t UTType.referenceAccessoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 referenceAccessoryURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void UTType.setDefaultHandler(to:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_0;
  v6 = _Block_copy(v7);

  [v5 _setDefaultHandlerToApplicationRecord_completionHandler_];
  _Block_release(v6);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t specialized static UTType._enumerateAllDeclaredTypes(using:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in static UTType._enumerateAllDeclaredTypes(using:);
  *(v6 + 24) = v5;
  v9[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed UTType, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed UTType, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v9[3] = &block_descriptor_6_0;
  v7 = _Block_copy(v9);

  [v4 _enumerateAllDeclaredTypesUsingBlock_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (v10)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in static UTType._enumerateAllDeclaredTypes(using:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t type metadata accessor for UTType()
{
  result = lazy cache variable for type metadata for UTType;
  if (!lazy cache variable for type metadata for UTType)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UTType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator()
{
  result = lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator;
  if (!lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static UTHardwareColor.currentEnclosureColor.getter@<X0>(uint64_t a1@<X8>)
{
  result = _UTHardwareColorGetCurrentEnclosureColor();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0xFF00000000;
  }

  *a1 = v3;
  *(a1 + 4) = BYTE4(v3);
  return result;
}

void UTHardwareColor.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4))
  {
    MEMORY[0x1BFB0F1B0](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1BFB0F1B0](0);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(BYTE1(v1));
    Hasher._combine(_:)(BYTE2(v1));
  }
}

Swift::Int UTHardwareColor.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1BFB0F1B0](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1BFB0F1B0](0);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(BYTE1(v1));
    Hasher._combine(_:)(BYTE2(v1));
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UTHardwareColor()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1BFB0F1B0](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1BFB0F1B0](0);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(BYTE1(v1));
    Hasher._combine(_:)(BYTE2(v1));
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance UTHardwareColor()
{
  v1 = *v0;
  if (*(v0 + 4))
  {
    MEMORY[0x1BFB0F1B0](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1BFB0F1B0](0);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(BYTE1(v1));
    Hasher._combine(_:)(BYTE2(v1));
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UTHardwareColor(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1BFB0F1B0](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x1BFB0F1B0](0);
    Hasher._combine(_:)(v2);
    Hasher._combine(_:)(BYTE1(v2));
    Hasher._combine(_:)(BYTE2(v2));
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UTHardwareColor._CodingKey()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 6449010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UTHardwareColor._CodingKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6449010 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UTHardwareColor._CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UTHardwareColor._CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UTHardwareColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers15UTHardwareColorO10_CodingKey33_1E36A38C3724EA4FE2A14BF669E4DE51LLOGMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers15UTHardwareColorO10_CodingKey33_1E36A38C3724EA4FE2A14BF669E4DE51LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v14[15] = 0;
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E69E7528], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v15;
    if (!v15)
    {
      v14[14] = 1;
      v13 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      goto LABEL_9;
    }

    if (*(v15 + 16) == 3)
    {
      v11 = *(v15 + 34);
      v12 = *(v15 + 32);

      (*(v6 + 8))(v8, v5);
      v13 = v12 | (v11 << 16);
LABEL_9:
      *a2 = v13;
      *(a2 + 4) = v10 == 0;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v14[13] = 0;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<UTHardwareColor._CodingKey> and conformance KeyedDecodingContainer<A>();
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UTHardwareColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy22UniformTypeIdentifiers15UTHardwareColorO10_CodingKey33_1E36A38C3724EA4FE2A14BF669E4DE51LLOGMd, &_ss22KeyedEncodingContainerVy22UniformTypeIdentifiers15UTHardwareColorO10_CodingKey33_1E36A38C3724EA4FE2A14BF669E4DE51LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v8)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BB540590;
    *(v9 + 32) = v7;
    *(v9 + 34) = BYTE2(v7);
    v11[1] = v9;
    v12 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x1E69E7510], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t specialized static UTHardwareColor.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (a1[1])
  {
    if (v2 == v3)
    {
      return *(a2 + 4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != v3)
    {
      v4 = 1;
    }

    return (v4 & 1) == 0 && BYTE2(v2) == BYTE2(v3);
  }
}

unint64_t lazy protocol witness table accessor for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey()
{
  result = lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey;
  if (!lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey;
  if (!lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey;
  if (!lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey;
  if (!lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTHardwareColor._CodingKey and conformance UTHardwareColor._CodingKey);
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

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<UTHardwareColor._CodingKey> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<UTHardwareColor._CodingKey> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<UTHardwareColor._CodingKey> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers15UTHardwareColorO10_CodingKey33_1E36A38C3724EA4FE2A14BF669E4DE51LLOGMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers15UTHardwareColorO10_CodingKey33_1E36A38C3724EA4FE2A14BF669E4DE51LLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<UTHardwareColor._CodingKey> and conformance KeyedDecodingContainer<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UTHardwareColor and conformance UTHardwareColor()
{
  result = lazy protocol witness table cache variable for type UTHardwareColor and conformance UTHardwareColor;
  if (!lazy protocol witness table cache variable for type UTHardwareColor and conformance UTHardwareColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTHardwareColor and conformance UTHardwareColor);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UTHardwareColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance UTTagClass@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UTTagClass@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static UTTagClass.filenameExtension.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static UTTagClass.mimeType.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static UTTagClass.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = MEMORY[0x1BFB0EF60](*a1, a1[1]);
  v5 = MEMORY[0x1BFB0EF60](v2, v3);
  v6 = _UTIdentifiersAreEqual();

  return v6;
}

uint64_t UTTagClass.hash(into:)()
{
  v1 = MEMORY[0x1BFB0EF60](*v0, v0[1]);
  HashCode = _UTIdentifierGetHashCode();

  return MEMORY[0x1BFB0F1B0](HashCode);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UTTagClass(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = MEMORY[0x1BFB0EF60](*a1, a1[1]);
  v5 = MEMORY[0x1BFB0EF60](v2, v3);
  v6 = _UTIdentifiersAreEqual();

  return v6;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UTTagClass()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  v3 = MEMORY[0x1BFB0EF60](v1, v2);
  HashCode = _UTIdentifierGetHashCode();

  MEMORY[0x1BFB0F1B0](HashCode);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UTTagClass()
{
  v1 = MEMORY[0x1BFB0EF60](*v0, v0[1]);
  HashCode = _UTIdentifierGetHashCode();

  return MEMORY[0x1BFB0F1B0](HashCode);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UTTagClass(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  v4 = MEMORY[0x1BFB0EF60](v2, v3);
  HashCode = _UTIdentifierGetHashCode();

  MEMORY[0x1BFB0F1B0](HashCode);
  return Hasher._finalize()();
}

uint64_t UTTagClass.description.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UTTagClass._CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB0F1B0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UTTagClass._CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB0F1B0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UTTagClass._CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7373616C43676174 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UTTagClass._CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UTTagClass._CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UTTagClass.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGMd, &_ss22KeyedEncodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v13[0] = v8;
  v13[1] = v9;
  result = Encoder.encodeSingleValueSafely<A>(_:)(v13, v10, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69E6160]);
  if (!v2 && (result & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys()
{
  result = lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys;
  if (!lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys);
  }

  return result;
}

uint64_t UTTagClass.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGSgMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGSgMR);
  MEMORY[0x1EEE9AC00]();
  v5 = &v17[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v17[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UTTagClass._CodingKeys and conformance UTTagClass._CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    outlined destroy of KeyedDecodingContainer<UTTagClass._CodingKeys>?(v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v10 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v13;
    (*(v7 + 8))(v9, v6);
  }

  v14 = v18;
  *v18 = v10;
  v14[1] = v12;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t outlined destroy of KeyedDecodingContainer<UTTagClass._CodingKeys>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGSgMd, &_ss22KeyedDecodingContainerVy22UniformTypeIdentifiers10UTTagClassV11_CodingKeys33_6A910D5F85C8C37FBC9BC447E96EB0F9LLOGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UTTagClass and conformance UTTagClass()
{
  result = lazy protocol witness table cache variable for type UTTagClass and conformance UTTagClass;
  if (!lazy protocol witness table cache variable for type UTTagClass and conformance UTTagClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UTTagClass and conformance UTTagClass);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UTTagClass(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UTTagClass(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UTTagClass._CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UTTagClass._CodingKeys(_WORD *result, int a2, int a3)
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

id static UTType._currentDevice.getter@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() _typeOfCurrentDevice];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UTType.init(_deviceModelCode:enclosureColor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 4) == 255)
  {
    v6 = MEMORY[0x1BFB0EF60](a1, a2);

    v7 = [objc_opt_self() _typeWithDeviceModelCode_];
  }

  else
  {
    if (((*(a3 + 4) << 32) & 0x100000000) != 0)
    {
      v9 = _UTHardwareColorMakeWithIndex();
    }

    else
    {
      v9 = _UTHardwareColorMakeWithRGBComponents();
    }

    v10 = v9;
    v6 = MEMORY[0x1BFB0EF60](a1, a2);

    v7 = [objc_opt_self() _typeWithDeviceModelCode_enclosureColor_];
  }

  v11 = v7;

  *a4 = v11;
}

id UTType._enclosureColors.getter()
{
  v1 = *v0;
  v2 = [*v0 tags];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v9 = *(*(v3 + 56) + 8 * v6);

  v10 = *(v9 + 16);

  if (v10)
  {
    type metadata accessor for UTHardwareColor(0);
    v11 = v1;
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = v10;
    goto LABEL_8;
  }

LABEL_7:
  v13 = v1;
  v10 = 0;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
  result = [v1 _getEnclosureColors_count_];
  if (v10 < result)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = result;

    v15 = *(v12 + 16);
    if (v15)
    {
      v25 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v16 = 0;
      v17 = v25;
      v18 = *(v25 + 16);
      v19 = 8 * v18;
      do
      {
        v20 = *(v12 + v16 + 32);
        if (v20 == 1)
        {
          v21 = *(v12 + v16 + 36);
        }

        else
        {
          v21 = *(v12 + v16 + 36) & 0xFFFFFF;
        }

        v22 = *(v25 + 24);
        v23 = v18 + 1;
        if (v18 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v18 + 1, 1);
        }

        *(v25 + 16) = v23;
        v24 = v25 + v19 + v16;
        *(v24 + 32) = v21;
        *(v24 + 36) = v20 == 1;
        v16 += 8;
        v18 = v23;
        --v15;
      }

      while (v15);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v17;
  }

  return result;
}

id UTType._enclosureColor.getter@<X0>(uint64_t a1@<X8>)
{

  return UTType._preferredEnclosureColor.getter(&selRef__getEnclosureColor_, a1);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers10UTTagClassV_SaySSGtGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers10UTTagClassV_SaySSGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers10UTTagClassV_SaySSGtMd, &_s22UniformTypeIdentifiers10UTTagClassV_SaySSGtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers15UTHardwareColorOGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers15UTHardwareColorOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

id static UTType._blockSpecial.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983108];
  *a1 = *MEMORY[0x1E6983108];
  return v1;
}

id static UTType._characterSpecial.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983110];
  *a1 = *MEMORY[0x1E6983110];
  return v1;
}

id static UTType._namedPipeOrFIFO.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983188];
  *a1 = *MEMORY[0x1E6983188];
  return v1;
}

id static UTType._socket.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831A8];
  *a1 = *MEMORY[0x1E69831A8];
  return v1;
}

id static UTType._device.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983120];
  *a1 = *MEMORY[0x1E6983120];
  return v1;
}

id static UTType._computer.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983118];
  *a1 = *MEMORY[0x1E6983118];
  return v1;
}

id static UTType._genericPC.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983130];
  *a1 = *MEMORY[0x1E6983130];
  return v1;
}

id static UTType._speaker.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831B0];
  *a1 = *MEMORY[0x1E69831B0];
  return v1;
}

id static UTType._display.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983128];
  *a1 = *MEMORY[0x1E6983128];
  return v1;
}

id static UTType._appleDevice.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830E0];
  *a1 = *MEMORY[0x1E69830E0];
  return v1;
}

id static UTType._mac.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983150];
  *a1 = *MEMORY[0x1E6983150];
  return v1;
}

id static UTType._iMac.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831B8];
  *a1 = *MEMORY[0x1E69831B8];
  return v1;
}

id static UTType._macPro.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983180];
  *a1 = *MEMORY[0x1E6983180];
  return v1;
}

id static UTType._macMini.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983178];
  *a1 = *MEMORY[0x1E6983178];
  return v1;
}

id static UTType._macLaptop.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983170];
  *a1 = *MEMORY[0x1E6983170];
  return v1;
}

id static UTType._macBook.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983158];
  *a1 = *MEMORY[0x1E6983158];
  return v1;
}

id static UTType._macBookAir.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983160];
  *a1 = *MEMORY[0x1E6983160];
  return v1;
}

id static UTType._macBookPro.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983168];
  *a1 = *MEMORY[0x1E6983168];
  return v1;
}

id static UTType._iOSDevice.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831C0];
  *a1 = *MEMORY[0x1E69831C0];
  return v1;
}

id static UTType._iPhone.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831D8];
  *a1 = *MEMORY[0x1E69831D8];
  return v1;
}

id static UTType._iPad.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831D0];
  *a1 = *MEMORY[0x1E69831D0];
  return v1;
}

id static UTType._iPodTouch.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831E0];
  *a1 = *MEMORY[0x1E69831E0];
  return v1;
}

id static UTType._iOSSimulator.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831C8];
  *a1 = *MEMORY[0x1E69831C8];
  return v1;
}

id static UTType._appleWatch.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983100];
  *a1 = *MEMORY[0x1E6983100];
  return v1;
}

id static UTType._appleTV.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830F0];
  *a1 = *MEMORY[0x1E69830F0];
  return v1;
}

id static UTType._homePod.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983140];
  *a1 = *MEMORY[0x1E6983140];
  return v1;
}

id static UTType._appleVisionPro.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830F8];
  *a1 = *MEMORY[0x1E69830F8];
  return v1;
}

id static UTType._passBundle.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983190];
  *a1 = *MEMORY[0x1E6983190];
  return v1;
}

id static UTType._passData.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983198];
  *a1 = *MEMORY[0x1E6983198];
  return v1;
}

id static UTType._passesData.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69831A0];
  *a1 = *MEMORY[0x1E69831A0];
  return v1;
}

id static UTType._heifStandard.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6983138];
  *a1 = *MEMORY[0x1E6983138];
  return v1;
}

id static UTType._appleEncryptedArchive.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E69830E8];
  *a1 = *MEMORY[0x1E69830E8];
  return v1;
}

void static UTType._mxiFile.getter(void *a1@<X8>)
{
  v2 = MEMORY[0x1BFB0EF60](0xD000000000000012, 0x80000001BB540CF0);
  v3 = [objc_opt_self() typeWithIdentifier_];

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void static UTType._remoteApplicationPlaceholder.getter(void *a1@<X8>)
{
  v2 = MEMORY[0x1BFB0EF60](0xD000000000000028, 0x80000001BB540D10);
  v3 = [objc_opt_self() typeWithIdentifier_];

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }
}

char *static UTType._namedConstants_UTCoreTypesPriv.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB540AB0;
  v1 = *MEMORY[0x1E6983108];
  v2 = *MEMORY[0x1E6983110];
  *(inited + 32) = *MEMORY[0x1E6983108];
  *(inited + 40) = v2;
  v3 = *MEMORY[0x1E6983188];
  v4 = *MEMORY[0x1E69831A8];
  v5 = MEMORY[0x1E6983120];
  *(inited + 48) = *MEMORY[0x1E6983188];
  *(inited + 56) = v4;
  v6 = *v5;
  v7 = *MEMORY[0x1E6983118];
  *(inited + 64) = *v5;
  *(inited + 72) = v7;
  v8 = *MEMORY[0x1E6983130];
  v9 = *MEMORY[0x1E69831B0];
  *(inited + 80) = *MEMORY[0x1E6983130];
  *(inited + 88) = v9;
  v10 = *MEMORY[0x1E6983128];
  v72 = *MEMORY[0x1E69830E0];
  v11 = *MEMORY[0x1E69830E0];
  v12 = MEMORY[0x1E6983150];
  *(inited + 96) = *MEMORY[0x1E6983128];
  *(inited + 104) = v11;
  v13 = *v12;
  v75 = *MEMORY[0x1E69831B8];
  v14 = *MEMORY[0x1E69831B8];
  *(inited + 112) = v13;
  *(inited + 120) = v14;
  v71 = *MEMORY[0x1E6983180];
  v78 = *MEMORY[0x1E6983178];
  v15 = *MEMORY[0x1E6983178];
  *(inited + 128) = *MEMORY[0x1E6983180];
  *(inited + 136) = v15;
  v70 = *MEMORY[0x1E6983170];
  v77 = *MEMORY[0x1E6983158];
  v16 = *MEMORY[0x1E6983158];
  v17 = MEMORY[0x1E6983160];
  *(inited + 144) = *MEMORY[0x1E6983170];
  *(inited + 152) = v16;
  v73 = *v17;
  v81 = *MEMORY[0x1E6983168];
  v18 = *MEMORY[0x1E6983168];
  *(inited + 160) = v73;
  *(inited + 168) = v18;
  v76 = *MEMORY[0x1E69831C0];
  v84 = *MEMORY[0x1E69831D8];
  v19 = *MEMORY[0x1E69831D8];
  *(inited + 176) = *MEMORY[0x1E69831C0];
  *(inited + 184) = v19;
  v74 = *MEMORY[0x1E69831D0];
  v83 = *MEMORY[0x1E69831E0];
  v20 = *MEMORY[0x1E69831E0];
  v21 = MEMORY[0x1E69831C8];
  *(inited + 192) = *MEMORY[0x1E69831D0];
  *(inited + 200) = v20;
  v79 = *v21;
  v85 = *MEMORY[0x1E6983100];
  v22 = *MEMORY[0x1E6983100];
  *(inited + 208) = v79;
  *(inited + 216) = v22;
  v82 = *MEMORY[0x1E69830F0];
  v87 = *MEMORY[0x1E6983140];
  v23 = *MEMORY[0x1E6983140];
  *(inited + 224) = *MEMORY[0x1E69830F0];
  *(inited + 232) = v23;
  v80 = *MEMORY[0x1E6983190];
  v86 = *MEMORY[0x1E6983198];
  v24 = *MEMORY[0x1E6983198];
  v25 = MEMORY[0x1E6983138];
  *(inited + 240) = *MEMORY[0x1E6983190];
  *(inited + 248) = v24;
  v88 = *v25;
  *(inited + 256) = *v25;
  v89 = *MEMORY[0x1E69831A0];
  v26 = v1;
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v72;
  v36 = v13;
  v37 = v75;
  v38 = v71;
  v39 = v78;
  v40 = v70;
  v41 = v77;
  v42 = v73;
  v43 = v81;
  v44 = v76;
  v45 = v84;
  v46 = v74;
  v47 = v83;
  v48 = v79;
  v49 = v85;
  v50 = v82;
  v51 = v87;
  v52 = v80;
  v53 = v86;
  v54 = v88;
  v55 = v89;
  v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 30, 1, inited);
  *(v56 + 2) = 30;
  *(v56 + 33) = v55;
  v57 = *(v56 + 3);
  v58 = *MEMORY[0x1E69830E8];
  if (v57 <= 0x3D)
  {
    v66 = v57 > 1;
    v67 = v58;
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66, 31, 1, v56);
    v58 = v67;
  }

  *(v56 + 2) = 31;
  *(v56 + 34) = v58;
  v59 = *(v56 + 3);
  v60 = *MEMORY[0x1E69830F8];
  if (v59 <= 0x3F)
  {
    v68 = v59 > 1;
    v69 = v60;
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68, 32, 1, v56);
    v60 = v69;
  }

  *(v56 + 2) = 32;
  *(v56 + 35) = v60;
  v61 = MEMORY[0x1BFB0EF60](0xD000000000000012, 0x80000001BB540CF0);
  v62 = [objc_opt_self() typeWithIdentifier_];

  if (!v62)
  {
    __break(1u);
  }

  v64 = *(v56 + 2);
  v63 = *(v56 + 3);
  if (v64 >= v63 >> 1)
  {
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v56);
  }

  *(v56 + 2) = v64 + 1;
  *&v56[8 * v64 + 32] = v62;
  return v56;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x1EEE68FC8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6AD10]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE48]();
}