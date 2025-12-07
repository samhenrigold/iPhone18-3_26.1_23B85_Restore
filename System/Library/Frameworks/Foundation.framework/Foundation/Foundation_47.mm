uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (a2)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v12 = (*(a3 + 48) + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    if (v14 == 1)
    {
      if (a2 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v12, 1);
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, 1);
        outlined consume of AttributedString.AttributeRunBoundaries?(v13, 1);
        return a2;
      }

      goto LABEL_10;
    }

    if (a2 != 1)
    {
      break;
    }

LABEL_10:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v12, v12[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
    outlined consume of AttributedString.AttributeRunBoundaries?(v13, v14);
    v10 = a1;
    v11 = a2;
LABEL_11:
    outlined consume of AttributedString.AttributeRunBoundaries?(v10, v11);
    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (v14)
  {
    if (a2)
    {
      if (v13 == a1 && v14 == a2)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
        outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);

        v13 = a1;
        goto LABEL_32;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v13, v14);
      outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);
      outlined copy of AttributedString.AttributeRunBoundaries?(v13, v14);

      if (v16)
      {
        a2 = v14;
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v12, v12[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(a1, 0);
    outlined copy of AttributedString.AttributeRunBoundaries?(v13, v14);

LABEL_25:

LABEL_26:
    v10 = v13;
    v11 = v14;
    goto LABEL_11;
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v12, 0);
  if (a2)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(a1, a2);

    goto LABEL_25;
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(a1, 0);
  swift_bridgeObjectRelease_n();
LABEL_32:
  outlined consume of AttributedString.AttributeRunBoundaries?(v13, a2);
  return 1;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x1865CD060](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = (*(a3 + 48) + 16 * v9);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else
      {

        if (!a2)
        {
          return 1;
        }
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Collection<>._containsScalarConstraint.getter(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
    v12 = v11[1];
    if (v12 != 1)
    {
      if (v12)
      {
        v13 = 1;
LABEL_13:

        return v13;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(*v11, 0);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

CFMutableCharacterSetRef CharacterSet.init()@<X0>(CFMutableCharacterSetRef *a1@<X8>)
{
  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v3 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 2) = v3;
    *(result + 24) = 1;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CharacterSet.insert(charactersIn:)(uint64_t a1)
{
  return CharacterSet.insert(charactersIn:)(a1, MEMORY[0x1E695D738], __CharacterSetStorage.insert(charactersIn:));
}

{
  return CharacterSet.insert(charactersIn:)(a1, MEMORY[0x1E695D738], __CharacterSetStorage.insert(charactersIn:));
}

uint64_t CharacterSet.insert(charactersIn:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = __CharacterSetStorage.mutableCopy()();

    *v6 = v8;
  }

  return a3(a1, a2);
}

void *__PlistReferencingEncoderBPlist.deinit()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0 + 2;
  v4 = *(v3 + 16);
  if (v4 == 1)
  {
    v5 = specialized ContiguousArray._customRemoveLast()(specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    if (!v5)
    {
      v5 = specialized ContiguousArray.remove(at:)(*(*v2 + 16) - 1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }

    v6 = v5;
  }

  else
  {
    if (v4)
    {
      goto LABEL_24;
    }

    v7 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v9 = v8;
    v11 = v10;
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v6 = swift_allocObject();
    *(v6 + 16) = v7;
    *(v6 + 24) = v9;
    *(v6 + 32) = v11;
    *(v6 + 40) = 96;
    *(v6 + 48) = -1;
  }

  v13 = v1[13];
  v12 = v1[14];
  v14 = v1[15];
  if (v13 < 0)
  {
    v24 = v1[12];
    outlined copy of __PlistReferencingEncoderBPlist.Reference(v1[13], v1[14], v1[15]);

    v47 = v6;
    if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v12, v14))
    {

      v25 = MEMORY[0x1865CB280](v12, v14);
      v26 = 1;
    }

    else
    {
      v27 = String._bridgeToObjectiveCImpl()();

      v25 = [v27 hash];
      swift_unknownObjectRelease();
      v26 = 0;
    }

    v28 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    v29 = *(v24 + 88);
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v32 = v24;
    v33 = *(v29 + 32);
    *(v29 + 16) = v12;
    *(v29 + 24) = v14;
    *(v29 + 32) = v25;
    v34 = *(v29 + 40);
    *(v29 + 40) = v26;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v30, v31, v33, v34);

    v35 = specialized Set._Variant.insert(_:)(&v48, v29);

    v36 = v48;
    if (v35)
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v37 = swift_allocObject();
      *(v37 + 24) = 0;
      *(v37 + 32) = 0;
      *(v37 + 16) = 2;
      *(v37 + 40) = -112;
      *(v37 + 48) = -1;

      *(v32 + 88) = v37;
    }

    v38 = *(v28 + 40);
    if ((v38 & 0xF0) == 0x60)
    {
      v40 = *(v28 + 24);
      v39 = *(v28 + 32);
      v48 = *(v28 + 16);
      v41 = v48;
      *&v49 = v40;
      *(&v49 + 1) = v39;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      *(v28 + 16) = 2;
      *(v28 + 40) = -112;

      outlined consume of _BPlistEncodingFormat.Reference.Backing(v41, v40, v39, v38);
      specialized OrderedDictionary.subscript.setter(v47, v36);
      v42 = *(v28 + 16);
      v43 = *(v28 + 24);
      v44 = *(v28 + 32);
      *(v28 + 16) = v48;
      *(v28 + 24) = v49;
      v45 = *(v28 + 40);
      *(v28 + 40) = 96;
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v42, v43, v44, v45);

      goto LABEL_19;
    }
  }

  else
  {
    v15 = *(v13 + 40);
    if ((v15 & 0xF0) == 0x50)
    {
      v17 = *(v13 + 24);
      v16 = *(v13 + 32);
      v48 = *(v13 + 16);
      v18 = v48;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 2;
      *(v13 + 40) = -112;
      outlined copy of __PlistReferencingEncoderBPlist.Reference(v13, v12, v14);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(v18, v17, v16, v15);
      outlined consume of _BPlistEncodingFormat.Reference.Backing(v18, v17, v16, v15);
      if (*(v18 + 16) < v12)
      {
        __break(1u);
      }

      else if ((v12 & 0x8000000000000000) == 0)
      {
        specialized ContiguousArray.replaceSubrange<A>(_:with:)(v12, v12, v6);
        v19 = v48;
        v20 = *(v13 + 16);
        v21 = *(v13 + 24);
        v22 = *(v13 + 32);
        v23 = *(v13 + 40);
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        *(v13 + 16) = v19;
        *(v13 + 40) = 80;
        outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);
        outlined consume of __JSONReferencingEncoder.Reference(v13, v12, v14);
LABEL_19:

        outlined consume of __JSONReferencingEncoder.Reference(v1[13], v1[14], v1[15]);
        return v1;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __PlistReferencingEncoderBPlist.__deallocating_deinit()
{
  __PlistReferencingEncoderBPlist.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined consume of __JSONReferencingEncoder.Reference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t initEXGetExtensionContextVendorClass()
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary;
  if (!ExtensionFoundationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary = v0;
    if (!v0)
    {
      return 0;
    }
  }

  v1 = dlsym(v0, "EXGetExtensionContextVendorClass");
  softLinkEXGetExtensionContextVendorClass = v1;
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t initEXGetExtensionContextInternalClass()
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary;
  if (!ExtensionFoundationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary = v0;
    if (!v0)
    {
      return 0;
    }
  }

  v1 = dlsym(v0, "EXGetExtensionContextInternalClass");
  softLinkEXGetExtensionContextInternalClass = v1;
  if (!v1)
  {
    return 0;
  }

  return v1();
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1865CB180](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *_NSCoderIsAppleSigningIdentifier(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, 76);
  result = [a1 getBytes:v6 maxLength:76 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(a1, "length"), 0}];
  if (result)
  {
    v2 = 0;
    BYTE11(v6[4]) = 0;
    do
    {
      v3 = *(v6 + v2++);
    }

    while ((v3 - 65) < 0x1A || (v3 - 48) < 0xA);
    v5 = v6;
    if (v2 == 1)
    {
      return (strncmp(v5, "com.apple.", 0xAuLL) == 0);
    }

    if (v3 == 46)
    {
      v5 = v6 + v2;
      return (strncmp(v5, "com.apple.", 0xAuLL) == 0);
    }

    return 0;
  }

  return result;
}

uint64_t static AttributeScope.decodingConfiguration.getter@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = static AttributeScope.scopeDescription.getter(a1);

  *a2 = v3;
  return result;
}

uint64_t JSONEncoder.encode<A, B>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v20 - v16;
  (*(a6 + 16))(a4, a6, v15);
  v18 = (*(*v7 + 280))(a1, v17, a3, a5);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  return v18;
}

uint64_t AttributedString.encode(to:configuration:)(void *a1, unint64_t *a2)
{
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV12AttributeKey33_628C17579E40660980A9932CDA4C6A74LLVGMd, &_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV12AttributeKey33_628C17579E40660980A9932CDA4C6A74LLVGMR);
  v5 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v173 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v153 = &v150 - v8;
  AssociatedTypeWitness = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV10CodingKeys33_628C17579E40660980A9932CDA4C6A74LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV10CodingKeys33_628C17579E40660980A9932CDA4C6A74LLOGMR);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v150 - v11;
  v13 = *v2;
  v14 = *(*v2 + 72);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v13 + 80);
  if (!v15)
  {
    goto LABEL_7;
  }

  v164 = *a2;
  v161 = v13;
  v177 = v5;
  *&v176 = v10;
  if (v15 != 1)
  {
    v23 = 1;
    goto LABEL_10;
  }

  v16 = *(v13 + 88);
  v17 = swift_unknownObjectRetain();
  specialized Collection.first.getter(v17, 1, v16);
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  if (!v19)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:

LABEL_150:
    __break(1u);
LABEL_151:
    (*(v166 + 56))(v14, 1, 1, AssociatedTypeWitness);
    (*(v21 + 8))(v14, a1);
    __break(1u);
LABEL_152:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = *(v19 + 16);

  if (!v22)
  {
LABEL_7:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    v24 = *(v13 + 40);
    v200[0] = *(v13 + 24);
    v200[1] = v24;
    v200[2] = *(v13 + 56);
    v219 = *(v13 + 56);
    v218[0] = v200[0];
    v218[1] = v24;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v218, &v184);
    MEMORY[0x1865CAF80](v200);
    __swift_mutable_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    v25 = &v189;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v15 = *(v13 + 80);
  v23 = *(v13 + 72) != 0;
LABEL_10:
  v196 = 0;
  v194 = 0u;
  v195 = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v23 && v15 > 10)
  {
    lazy protocol witness table accessor for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v189) = 0;
    KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    LOBYTE(v184) = 1;
    KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    (*(v176 + 8))(v12, AssociatedTypeWitness);
    outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
    v194 = v189;
    v195 = v190;
    v196 = v191;
  }

  else
  {
    dispatch thunk of Encoder.unkeyedContainer()();
  }

  v27 = v161;
  v28 = *(v161 + 40);
  v215 = *(v161 + 24);
  v216 = v28;
  v217 = *(v161 + 56);
  v29 = BigString.startIndex.getter();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *(v27 + 72);
  v37 = *(v27 + 80);
  v38 = *(v27 + 88);
  v39 = *(v27 + 96);
  *&v189 = v36;
  *(&v189 + 1) = v37;
  v162 = v37;
  v163 = v39;
  v172 = v38;
  *&v190 = v38;
  *(&v190 + 1) = v39;
  v40 = v220;
  if (v36)
  {
    v41 = *(v36 + 18);
    v21 = v36;
    swift_unknownObjectRetain();
  }

  else
  {
    v21 = 0;
    v41 = 0;
  }

  v171 = 0;
  v42 = 0;
  v152 = 0;
  v43 = MEMORY[0x1E69E7CC8];
  v154 = v21;
  v155 = (v177 + 8);
  *&v191 = v163;
  *(&v191 + 1) = v41;
  v193 = 0;
  v192 = 0uLL;
  v151 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v44 = v31;
    AssociatedTypeWitness = v21;
    v156 = v43;
LABEL_20:
    if (AssociatedTypeWitness)
    {
      if (v42 == v172)
      {
        goto LABEL_128;
      }
    }

    else if (!v42)
    {
LABEL_128:
      outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
      v186 = v191;
      v187 = v192;
      v188 = v193;
      v184 = v189;
      v185 = v190;
      outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd, "jl)");
      goto LABEL_129;
    }

    if (v191 != v163)
    {
      break;
    }

    v167 = v35;
    v168 = v33;
    v169 = v44;
    v175 = v42;
    *&v176 = v29;
    v21 = v40;
    v14 = *(&v191 + 1);
    v35 = v192;
    if (v192)
    {
      v45 = (v192 + 24 * ((*(&v191 + 1) >> ((4 * *(v192 + 18) + 8) & 0x3C)) & 0xFLL));
      v46 = v45[3];
      v47 = v45[5];
      v48 = AssociatedTypeWitness;
      AssociatedTypeWitness = v171 + 1;
      v49 = __OFADD__(v171, 1);
      v177 = v45[4];

      v170 = v47;

      if (v49)
      {
        goto LABEL_135;
      }

      v50 = AssociatedTypeWitness;
      AssociatedTypeWitness = v48;
      *(&v192 + 1) = v50;
      v51 = v175 + v46;
      if (__OFADD__(v175, v46))
      {
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:

LABEL_145:
        __break(1u);
LABEL_146:
        (*(v166 + 56))(v14, 1, 1, AssociatedTypeWitness);
        v149 = *(v35 + 8);
        a1 = (v35 + 8);
        v149(v14, v21);
        __break(1u);
        goto LABEL_147;
      }

      v171 = v50;
      v193 = v175 + v46;
      if (!AssociatedTypeWitness)
      {
        goto LABEL_143;
      }

      v40 = v21;
    }

    else
    {
      specialized Rope._Node.subscript.getter(*(&v191 + 1), AssociatedTypeWitness);
      v177 = v52;
      v170 = v53;
      v54 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        goto LABEL_135;
      }

      ++v171;
      *(&v192 + 1) = v54;
      v21 = AssociatedTypeWitness;
      AssociatedTypeWitness = specialized Rope._Node.subscript.getter(v14, AssociatedTypeWitness);

      v51 = v175 + AssociatedTypeWitness;
      if (__OFADD__(v175, AssociatedTypeWitness))
      {
        goto LABEL_140;
      }

      v193 = v175 + AssociatedTypeWitness;
      v27 = v161;
      if (!v21)
      {
        goto LABEL_143;
      }

      AssociatedTypeWitness = v21;
    }

    if (v14 >= (((-15 << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C)) - 1) & *(AssociatedTypeWitness + 18) | (*(AssociatedTypeWitness + 16) << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C))))
    {
      goto LABEL_143;
    }

    v220 = v40;
    v175 = v51;
    if (v35 && (v55 = (4 * *(v35 + 18) + 8) & 0x3C, v56 = ((v14 >> v55) & 0xF) + 1, v56 < *(v35 + 16)))
    {
      *(&v191 + 1) = (v56 << v55) | ((-15 << v55) - 1) & v14;
    }

    else if ((specialized Rope._Node.formSuccessor(of:)(&v191, AssociatedTypeWitness) & 1) == 0)
    {
      v57 = ((-15 << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C)) - 1) & *(AssociatedTypeWitness + 18) | (*(AssociatedTypeWitness + 16) << ((4 * *(AssociatedTypeWitness + 18) + 8) & 0x3C));
      *&v191 = v163;
      *(&v191 + 1) = v57;
      *&v192 = 0;
    }

    v58 = *(v27 + 40);
    v212 = *(v27 + 24);
    v213 = v58;
    v214 = *(v27 + 56);
    v166 = v212;
    swift_unknownObjectRetain();
    v35 = v176;
    v59 = v168;
    v60 = v169;
    v21 = v167;
    v174 = BigString.UTF8View.index(_:offsetBy:)();
    v62 = v61;
    AssociatedTypeWitness = v63;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v174 >> 10 < v35 >> 10)
    {
      goto LABEL_136;
    }

    v201 = v35;
    v202 = v60;
    v203 = v59;
    v204 = v21;
    v29 = v174;
    v205 = v174;
    v168 = AssociatedTypeWitness;
    v169 = v62;
    v206 = v62;
    v207 = AssociatedTypeWitness;
    v167 = v65;
    v208 = v65;
    v66 = *(v27 + 40);
    v209 = *(v27 + 24);
    v210 = v66;
    v211 = *(v27 + 56);
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](&v199);
    __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
    v67 = v220;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v220 = v67;
    if (v67)
    {
      outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);

      v186 = v191;
      v187 = v192;
      v188 = v193;
      v184 = v189;
      v185 = v190;
      outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd, "jl)");

      return __swift_destroy_boxed_opaque_existential_1(v197);
    }

    v35 = v177;
    v21 = v164;
    if (!*(v177 + 16))
    {
      goto LABEL_48;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v194, &v184, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
    if (!*(&v185 + 1))
    {
      outlined destroy of TermOfAddress?(&v184, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
LABEL_48:
      __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
      dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
      __swift_project_boxed_opaque_existential_1(v182, v183);
      lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v68 = v35 + 64;
      v69 = 1 << *(v35 + 32);
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v71 = v70 & *(v35 + 64);
      v72 = (v69 + 63) >> 6;

      v73 = 0;
      v40 = v220;
      while (v71)
      {
        v74 = v71;
LABEL_58:
        v71 = (v74 - 1) & v74;
        if (*(v21 + 16))
        {
          *&v176 = (v74 - 1) & v74;
          v76 = (*(v35 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v74)))));
          v78 = *v76;
          v77 = v76[1];

          v79 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v77);
          if ((v80 & 1) == 0 || ((v81 = *(*(v21 + 56) + 16 * v79), (v82 = swift_conformsToProtocol2()) != 0) ? (v83 = v81 == 0) : (v83 = 1), v83))
          {
          }

          else
          {
            v220 = v40;
            *&v184 = v78;
            *(&v184 + 1) = v77;
            *&v185 = 0;
            BYTE8(v185) = 1;
            v84 = v82;
            v35 = v81;
            KeyedEncodingContainer.superEncoder(forKey:)();

            v157 = v84;
            v85 = *(v84 + 8);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v160 = &v150;
            v166 = *(AssociatedTypeWitness - 8);
            v86 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
            v158 = &v150 - v87;
            v159 = v81;
            v88 = (*(v85 + 24))(v81, v85, v86);
            v21 = v89;
            v14 = v177;
            if (!*(v177 + 16))
            {
              goto LABEL_144;
            }

            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v89);
            v91 = v90;

            if ((v91 & 1) == 0)
            {
              goto LABEL_145;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v14 + 56) + 72 * v35, &v184);
            outlined init with copy of Hashable & Sendable(&v184, v179);
            v21 = type metadata accessor for Optional();
            v35 = *(v21 - 8);
            MEMORY[0x1EEE9AC00](v21);
            v14 = &v150 - v92;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
            if (!swift_dynamicCast())
            {
              goto LABEL_146;
            }

            outlined destroy of AttributedString._AttributeValue(&v184);
            v93 = v166;
            (*(v166 + 56))(v14, 0, 1, AssociatedTypeWitness);
            v94 = v158;
            (*(v93 + 32))(v158, v14, AssociatedTypeWitness);
            v95 = v220;
            (*(v157 + 16))(v94, v180);
            v40 = v95;
            if (v95)
            {

              __swift_destroy_boxed_opaque_existential_1(v180);
              (*v155)(v173, v165);
              outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
              (*(v93 + 8))(v94, AssociatedTypeWitness);
              __swift_destroy_boxed_opaque_existential_1(v182);
              v186 = v191;
              v187 = v192;
              v188 = v193;
              v184 = v189;
              v185 = v190;
              outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd, "jl)");

              return __swift_destroy_boxed_opaque_existential_1(v197);
            }

            __swift_destroy_boxed_opaque_existential_1(v180);
            (*(v93 + 8))(v94, AssociatedTypeWitness);
            v21 = v164;
          }

          v35 = v177;
          v71 = v176;
        }
      }

      while (1)
      {
        v75 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v75 >= v72)
        {

          (*v155)(v173, v165);

          __swift_destroy_boxed_opaque_existential_1(v182);
          v29 = v174;
          v42 = v175;
          v33 = v168;
          v44 = v169;
          v35 = v167;
          v27 = v161;
          AssociatedTypeWitness = v154;
          goto LABEL_20;
        }

        v74 = *(v68 + 8 * v75);
        ++v73;
        if (v74)
        {
          v73 = v75;
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_133:
      outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
      v186 = v191;
      v187 = v192;
      v188 = v193;
      v184 = v189;
      v185 = v190;
      outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd, "jl)");
      __swift_destroy_boxed_opaque_existential_1(v182);
LABEL_129:

      v25 = v197;
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    outlined init with take of Equatable(&v184, v182);
    if (!*(v156 + 16) || (, v96 = v170, , v97 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v96), v99 = v98, , , (v99 & 1) == 0) || *(*(v156 + 56) + 8 * v97) == v152)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v182, v183);

      dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
      AssociatedTypeWitness = v181;
      v14 = __swift_project_boxed_opaque_existential_1(v180, v181);
      lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v100 = v35 + 64;
      v101 = 1 << *(v35 + 32);
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v103 = v102 & *(v35 + 64);
      v104 = (v101 + 63) >> 6;

      v105 = 0;
      while (v103)
      {
        v106 = v103;
LABEL_86:
        v103 = (v106 - 1) & v106;
        if (*(v21 + 16))
        {
          v108 = (*(v35 + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v106)))));
          v109 = *v108;
          AssociatedTypeWitness = v108[1];

          v14 = v21;
          v110 = specialized __RawDictionaryStorage.find<A>(_:)(v109, AssociatedTypeWitness);
          if ((v111 & 1) == 0 || ((v14 = *(*(v21 + 56) + 16 * v110), (v112 = swift_conformsToProtocol2()) != 0) ? (v113 = v14 == 0) : (v113 = 1), v113))
          {

            v35 = v177;
          }

          else
          {
            *&v184 = v109;
            *(&v184 + 1) = AssociatedTypeWitness;
            *&v185 = 0;
            BYTE8(v185) = 1;
            v114 = v112;
            v21 = v14;
            KeyedEncodingContainer.superEncoder(forKey:)();

            v157 = v114;
            v115 = *(v114 + 8);
            v116 = swift_getAssociatedTypeWitness();
            v160 = &v150;
            *&v176 = v116;
            v166 = *(v116 - 8);
            v117 = MEMORY[0x1EEE9AC00](v116);
            v158 = &v150 - v118;
            v159 = v14;
            v119 = (*(v115 + 24))(v14, v115, v117);
            a1 = v120;
            v14 = v177;
            if (!*(v177 + 16))
            {
              goto LABEL_149;
            }

            AssociatedTypeWitness = specialized __RawDictionaryStorage.find<A>(_:)(v119, v120);
            v21 = v121;

            if ((v21 & 1) == 0)
            {
              goto LABEL_150;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v14 + 56) + 72 * AssociatedTypeWitness, &v184);
            outlined init with copy of Hashable & Sendable(&v184, &v178);
            AssociatedTypeWitness = v176;
            a1 = type metadata accessor for Optional();
            v150 = &v150;
            v21 = *(a1 - 1);
            MEMORY[0x1EEE9AC00](a1);
            v14 = &v150 - v122;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
            if (!swift_dynamicCast())
            {
              goto LABEL_151;
            }

            outlined destroy of AttributedString._AttributeValue(&v184);
            v21 = v166;
            (*(v166 + 56))(v14, 0, 1, AssociatedTypeWitness);
            v35 = v158;
            (*(v21 + 32))(v158, v14, AssociatedTypeWitness);
            v123 = v220;
            (*(v157 + 16))(v35, v179);
            v220 = v123;
            v14 = v160;
            if (v123)
            {
              goto LABEL_137;
            }

            __swift_destroy_boxed_opaque_existential_1(v179);
            (*(v21 + 8))(v35, AssociatedTypeWitness);
            v21 = v164;
            v35 = v177;
          }
        }
      }

      while (1)
      {
        v107 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_139;
        }

        if (v107 >= v104)
        {
          break;
        }

        v106 = *(v100 + 8 * v107);
        ++v105;
        if (v106)
        {
          v105 = v107;
          goto LABEL_86;
        }
      }

      v124 = v170;

      (*v155)(v153, v165);

      __swift_destroy_boxed_opaque_existential_1(v180);
      v14 = v151;
      AssociatedTypeWitness = swift_isUniquelyReferenced_nonNull_native();
      *&v184 = v14;
      v125 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v124);
      v127 = *(v14 + 16);
      v128 = (v126 & 1) == 0;
      v129 = __OFADD__(v127, v128);
      v130 = v127 + v128;
      if (v129)
      {
        goto LABEL_141;
      }

      v131 = v126;
      v40 = v220;
      v27 = v161;
      v21 = v154;
      v29 = v174;
      if (*(v14 + 24) >= v130)
      {
        if (AssociatedTypeWitness)
        {
          AssociatedTypeWitness = v14;
          if (v126)
          {
            goto LABEL_101;
          }

          goto LABEL_104;
        }

        v134 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16AttributedStringV010_AttributeB0VSiGMd, &_ss18_DictionaryStorageCy10Foundation16AttributedStringV010_AttributeB0VSiGMR);
        v135 = static _DictionaryStorage.copy(original:)();
        AssociatedTypeWitness = v135;
        if (*(v14 + 16))
        {
          v136 = (v135 + 64);
          v14 = (v151 + 8);
          v137 = ((1 << *(AssociatedTypeWitness + 32)) + 63) >> 6;
          if (AssociatedTypeWitness != v151 || v136 >= v14 + 8 * v137)
          {
            memmove(v136, v151 + 8, 8 * v137);
          }

          v138 = 0;
          v139 = v151;
          *(AssociatedTypeWitness + 16) = v151[2];
          v140 = 1 << *(v139 + 32);
          v141 = v139[8];
          if (v140 < 64)
          {
            v142 = ~(-1 << v140);
          }

          else
          {
            v142 = -1;
          }

          v21 = v142 & v141;
          a1 = ((v140 + 63) >> 6);
          if ((v142 & v141) != 0)
          {
            do
            {
              v143 = __clz(__rbit64(v21));
              v21 &= v21 - 1;
LABEL_124:
              v146 = v143 | (v138 << 6);
              v147 = *(v151[7] + 8 * v146);
              v148 = *(AssociatedTypeWitness + 48);
              v176 = *(v151[6] + 16 * v146);
              *(v148 + 16 * v146) = v176;
              *(*(AssociatedTypeWitness + 56) + 8 * v146) = v147;
            }

            while (v21);
          }

          v144 = v138;
          while (1)
          {
            v138 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_148;
            }

            if (v138 >= a1)
            {
              break;
            }

            v145 = *(v14 + 8 * v138);
            ++v144;
            if (v145)
            {
              v143 = __clz(__rbit64(v145));
              v21 = (v145 - 1) & v145;
              goto LABEL_124;
            }
          }
        }

        v125 = v134;
        v40 = v220;
        v27 = v161;
        v21 = v154;
        v35 = v177;
        v29 = v174;
        if ((v131 & 1) == 0)
        {
          goto LABEL_104;
        }

LABEL_101:
        v14 = v125;

        v133 = v152;
        *(*(AssociatedTypeWitness + 56) + 8 * v14) = v152;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, AssociatedTypeWitness);
        AssociatedTypeWitness = v184;
        v125 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v170);
        if ((v131 & 1) != (v132 & 1))
        {
          goto LABEL_152;
        }

        if (v131)
        {
          goto LABEL_101;
        }

LABEL_104:
        v14 = v152;
        specialized _NativeDictionary._insert(at:key:value:)(v125, v35, v170, v152, AssociatedTypeWitness);
        v133 = v14;
      }

      if (__OFADD__(v133, 1))
      {
        goto LABEL_142;
      }

      v152 = v133 + 1;
      v156 = AssociatedTypeWitness;
      goto LABEL_107;
    }

    AssociatedTypeWitness = v151;
    v21 = v154;
    v40 = v220;
LABEL_107:
    __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v40)
    {
      goto LABEL_133;
    }

    __swift_destroy_boxed_opaque_existential_1(v182);
    v151 = AssociatedTypeWitness;
    v42 = v175;
    v43 = v156;
    v33 = v168;
    v31 = v169;
    v35 = v167;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1(v179);
  (*v155)(v153, v165);
  outlined destroy of TermOfAddress?(&v194, &_ss24UnkeyedEncodingContainer_pSgMd, &_ss24UnkeyedEncodingContainer_pSgMR);
  (*(v21 + 8))(v35, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(v180);
  v186 = v191;
  v187 = v192;
  v188 = v193;
  v184 = v189;
  v185 = v190;
  outlined destroy of TermOfAddress?(&v184, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd, "jl)");
  __swift_destroy_boxed_opaque_existential_1(v182);

  return __swift_destroy_boxed_opaque_existential_1(v197);
}

unint64_t specialized Collection.first.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 18);
    specialized Rope._endPath.getter(a1);
    if (a3)
    {
      return specialized Rope._Node.subscript.getter(v5, a1);
    }
  }

  else
  {
    specialized Rope._endPath.getter(0);
  }

  return 0;
}

char *protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _JSONUnkeyedEncodingContainer(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = *(v5 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *(v5 + 16) = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[24 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  v10[48] = 0;
  *(v5 + 16) = v6;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.superEncoder() in conformance _JSONUnkeyedEncodingContainer@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(*(v3 + 16) + 16);
  v6 = type metadata accessor for __JSONReferencingEncoder();
  swift_allocObject();

  v7 = __JSONReferencingEncoder.init(referencing:at:wrapping:)(v4, v5, v3);
  a1[3] = v6;
  result = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONReferencingEncoder and conformance __JSONEncoder, type metadata accessor for __JSONReferencingEncoder, &protocol conformance descriptor for __JSONEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t __JSONReferencingEncoder.init(referencing:at:wrapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = a3;
  *(v3 + 248) = a2;
  *(v3 + 256) = 0;
  v6 = *(a1 + 136);
  v23 = *(a1 + 120);
  v24 = v6;
  v25 = *(a1 + 152);
  v26 = *(a1 + 168);
  v7 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v7;
  v8 = *(a1 + 104);
  v21 = *(a1 + 88);
  v22 = v8;
  v18[3] = &type metadata for _CodingKey;
  v18[4] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v9 = swift_allocObject();
  v18[0] = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = a2;
  *(v9 + 40) = 2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  *(v3 + 104) = v22;
  *(v3 + 88) = v12;
  *(v3 + 72) = v11;
  *(v3 + 56) = v10;
  v13 = v23;
  v14 = v24;
  v15 = v26;
  *(v3 + 152) = v25;
  *(v3 + 136) = v14;
  *(v3 + 120) = v13;
  *(v3 + 168) = v15;
  *(v3 + 176) = a1;

  outlined init with copy of JSONEncoder._Options(&v19, &v17);
  outlined assign with take of CodingKey?(v18, v3 + 192);
  return v3;
}

unint64_t _JSONKeyedEncodingContainer.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = *v3;
  v134 = v7;
  v12 = *(v7 + 16);
  v11 = v7 + 16;
  v132 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v8);
  v133 = v3;
  v13 = v3[2];
  v14 = *(a2 + 24);
  v153[3] = v6;
  v153[4] = v14;
  v135 = v14;
  __swift_allocate_boxed_opaque_existential_0(v153);
  (v12)();
  v15 = *(v10 + 152);
  if (v15)
  {
    if (v15 != 1)
    {
      v11 = *(v10 + 160);

      sub_1807A98E4(v15, v11);
      v30 = __JSONEncoder.codingPath.getter();
      v31 = _CodingPathNode.path.getter(v13);
      *&v145 = v30;
      specialized Array.append<A>(contentsOf:)(v31);
      v32 = v145;
      outlined init with copy of Hashable & Sendable(v153, &v145);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_85:
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
      }

      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      v128 = a3;
      v125 = v10;
      v136 = v34 + 1;
      v137 = v11;
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      }

      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
      v36 = MEMORY[0x1EEE9AC00](v35);
      v38 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38, v36);
      v40 = v135;
      v139 = v6;
      v140 = v135;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v138);
      v42 = v134;
      (*(v134 + 32))(boxed_opaque_existential_0, v38, v6);
      *(v32 + 16) = v136;
      outlined init with take of Equatable(&v138, v32 + 40 * v34 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v145);
      v43 = v137;
      (v15)(&v145, v32);

      __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
      v16 = v40;
      v19 = dispatch thunk of CodingKey.stringValue.getter();
      v21 = v44;
      v45 = v15;
      v29 = v42;
      sub_1807A5C7C(v45, v43);
      __swift_destroy_boxed_opaque_existential_1(&v145);
      a3 = v128;
      v10 = v125;
      goto LABEL_82;
    }

    v16 = v135;
    v17 = dispatch thunk of CodingKey.stringValue.getter();
    v19 = v17;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v20 = (v18 >> 56) & 0xF;
    }

    else
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v18;
    if (v20)
    {
      v128 = a3;
      v22 = String.index(after:)();
      v23 = 7;
      if (((v21 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
      {
        v23 = 11;
      }

      v127 = 4 * v20;
      if (4 * v20 < v22 >> 14)
      {
        __break(1u);
      }

      else
      {
        v126 = v23 | (v20 << 16);
        v136 = v19;
        v24 = String.subscript.getter();
        v11 = v26;
        v137 = v21;
        v122 = v6;
        if ((v24 ^ v27) >= 0x4000)
        {
          a3 = v24;
          v15 = v25;
          v32 = 0x700030001;
          v129 = MEMORY[0x1E69E7CC0];
          v130 = 15;
          while (1)
          {
            v131 = Substring.UnicodeScalarView.index(before:)();
            v46 = Substring.UnicodeScalarView.subscript.getter();
            v47 = v46;
            v48 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v46), 1u);
            v49 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v47, v48, 0x700030001);
            v50 = a3;
            if (!v49)
            {
              break;
            }

LABEL_20:
            v51 = Substring.UnicodeScalarView.index(after:)();

            v53 = v50 >> 14;
            v54 = v130;
            if (v50 >> 14 < v130 >> 14 || v51 >> 14 < v53)
            {
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
              return result;
            }

            v55 = v129;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
              v55 = result;
            }

            v57 = *(v55 + 2);
            v56 = *(v55 + 3);
            if (v57 >= v56 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v55);
              v55 = result;
            }

            *(v55 + 2) = v57 + 1;
            v129 = v55;
            v58 = &v55[16 * v57];
            *(v58 + 4) = v54;
            *(v58 + 5) = v50;
            v121 = v50 >> 14;
            if (v127 < v53)
            {
              goto LABEL_90;
            }

            v59 = String.subscript.getter();
            v11 = v62;
            if ((v59 ^ v60) < 0x4000)
            {
              goto LABEL_72;
            }

            v6 = v59;
            v15 = v60;
            a3 = v61;
            v131 = Substring.UnicodeScalarView.index(before:)();
            v63 = Substring.UnicodeScalarView.subscript.getter();
            v64 = v63;
            v32 = 0x700030000;
            v65 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v63), 0);
            v66 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v64, v65, 0x700030000);
            v67 = v6;
            if (!v66)
            {
              v77 = HIBYTE(v11) & 0xF;
              if ((v11 & 0x2000000000000000) == 0)
              {
                v77 = a3 & 0xFFFFFFFFFFFFLL;
              }

              v130 = v77;
              v123 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v124 = v11 & 0xFFFFFFFFFFFFFFLL;
              v67 = v6;
              while ((v67 ^ v131) >= 0x4000)
              {
                v81 = _StringGuts.validateInclusiveScalarIndex(_:)(v67, a3, v11) >> 16;
                if (v81 >= v130)
                {
                  goto LABEL_84;
                }

                if ((v11 & 0x1000000000000000) != 0)
                {
                  v67 = String.UnicodeScalarView._foreignIndex(after:)();
                }

                else
                {
                  if ((v11 & 0x2000000000000000) != 0)
                  {
                    *&v145 = a3;
                    *(&v145 + 1) = v124;
                    v83 = *(&v145 + v81);
                  }

                  else
                  {
                    v82 = v123;
                    if ((a3 & 0x1000000000000000) == 0)
                    {
                      v82 = _StringObject.sharedUTF8.getter();
                    }

                    v83 = *(v82 + v81);
                  }

                  v84 = v83;
                  v85 = __clz(v83 ^ 0xFF) - 24;
                  if (v84 >= 0)
                  {
                    LOBYTE(v85) = 1;
                  }

                  v67 = ((v81 + v85) << 16) | 5;
                }

                v78 = Substring.UnicodeScalarView.subscript.getter();
                v79 = v78;
                v80 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v78), 0);
                if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v79, v80, 0x700030000))
                {
                  goto LABEL_29;
                }
              }

LABEL_72:
              v130 = v50;
              goto LABEL_73;
            }

LABEL_29:
            v68 = Substring.UnicodeScalarView.index(after:)();

            if (v68 >> 14 < v67 >> 14)
            {
              goto LABEL_91;
            }

            if (v67 >> 14 == String.index(after:)() >> 14)
            {
              result = v50;
            }

            else
            {
              result = String.index(before:)();
              if (v121 > result >> 14)
              {
                goto LABEL_93;
              }

              v86 = v129;
              v88 = *(v129 + 2);
              v87 = *(v129 + 3);
              if (v88 >= v87 >> 1)
              {
                v93 = result;
                v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v129);
                result = v93;
              }

              *(v86 + 2) = v88 + 1;
              v129 = v86;
              v89 = &v86[16 * v88];
              *(v89 + 4) = v50;
              *(v89 + 5) = result;
            }

            v130 = result;
            if (v127 < v68 >> 14)
            {
              goto LABEL_92;
            }

            a3 = String.subscript.getter();
            v15 = v90;
            v11 = v91;
            v32 = 0x700030001;
            if ((a3 ^ v92) < 0x4000)
            {
              goto LABEL_73;
            }
          }

          if ((v11 & 0x2000000000000000) != 0)
          {
            v6 = HIBYTE(v11) & 0xF;
          }

          else
          {
            v6 = v15 & 0xFFFFFFFFFFFFLL;
          }

          v123 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v124 = v11 & 0xFFFFFFFFFFFFFFLL;
          v50 = a3;
          while ((v50 ^ v131) >= 0x4000)
          {
            v72 = _StringGuts.validateInclusiveScalarIndex(_:)(v50, v15, v11) >> 16;
            if (v72 >= v6)
            {
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            if ((v11 & 0x1000000000000000) != 0)
            {
              v50 = String.UnicodeScalarView._foreignIndex(after:)();
            }

            else
            {
              if ((v11 & 0x2000000000000000) != 0)
              {
                *&v145 = v15;
                *(&v145 + 1) = v124;
                v74 = *(&v145 + v72);
              }

              else
              {
                v73 = v123;
                if ((v15 & 0x1000000000000000) == 0)
                {
                  v73 = _StringObject.sharedUTF8.getter();
                }

                v74 = *(v73 + v72);
              }

              v75 = v74;
              v76 = __clz(v74 ^ 0xFF) - 24;
              if (v75 >= 0)
              {
                LOBYTE(v76) = 1;
              }

              v50 = ((v72 + v76) << 16) | 5;
            }

            v69 = Substring.UnicodeScalarView.subscript.getter();
            v70 = v69;
            v32 = 0x700030001;
            v71 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v69), 1u);
            if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v70, v71, 0x700030001))
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v129 = MEMORY[0x1E69E7CC0];
          v130 = 15;
        }

LABEL_73:

        a3 = v130;
        if (v127 >= v130 >> 14)
        {
          v11 = v129;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_75:
            v95 = *(v11 + 16);
            v94 = *(v11 + 24);
            v96 = v95 + 1;
            v97 = MEMORY[0x1E69E7CC0];
            if (v95 >= v94 >> 1)
            {
              v119 = MEMORY[0x1E69E7CC0];
              v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v11);
              v97 = v119;
              v11 = v120;
            }

            *(v11 + 16) = v96;
            v98 = (v11 + 16 * v95);
            v99 = v126;
            *(v98 + 4) = a3;
            *(v98 + 5) = v99;
            *&v145 = v97;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
            v100 = v145;
            v129 = v11;
            v101 = (v11 + 40);
            do
            {
              String.subscript.getter();
              v102 = Substring.lowercased()();

              *&v145 = v100;
              v104 = *(v100 + 16);
              v103 = *(v100 + 24);
              if (v104 >= v103 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
                v100 = v145;
              }

              v101 += 16;
              *(v100 + 16) = v104 + 1;
              *(v100 + 16 * v104 + 32) = v102;
              --v96;
            }

            while (v96);

            *&v145 = v100;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
            v19 = BidirectionalCollection<>.joined(separator:)();
            v106 = v105;

            v21 = v106;
            a3 = v128;
            v6 = v122;
            v29 = v134;
            v16 = v135;
            goto LABEL_82;
          }

LABEL_88:
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
          goto LABEL_75;
        }
      }

      __break(1u);
      goto LABEL_88;
    }
  }

  else
  {

    v16 = v135;
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v21 = v28;
  }

  v29 = v134;
LABEL_82:
  __swift_destroy_boxed_opaque_existential_1(v153);
  v107 = v133[1];
  v143 = v6;
  v144 = v16;
  v108 = __swift_allocate_boxed_opaque_existential_0(&v142);
  (*(v29 + 32))(v108, v132, v6);
  v109 = type metadata accessor for __JSONReferencingEncoder();
  v110 = swift_allocObject();
  *(v110 + 232) = v10;
  *(v110 + 240) = v107 | 0x8000000000000000;
  *(v110 + 248) = v19;
  *(v110 + 256) = v21;
  v111 = *(v10 + 56);
  v112 = *(v10 + 104);
  v113 = *(v10 + 136);
  v149 = *(v10 + 120);
  v150 = v113;
  v151 = *(v10 + 152);
  v152 = *(v10 + 168);
  v114 = *(v10 + 72);
  v145 = v111;
  v146 = v114;
  v147 = *(v10 + 88);
  v148 = v112;
  outlined init with take of Equatable(&v142, v141);
  *(v110 + 184) = 0u;
  *(v110 + 200) = 0u;
  *(v110 + 216) = 0u;
  v115 = v150;
  *(v110 + 120) = v149;
  *(v110 + 136) = v115;
  *(v110 + 152) = v151;
  v116 = v146;
  *(v110 + 56) = v145;
  *(v110 + 72) = v116;
  v117 = v148;
  *(v110 + 88) = v147;
  *(v110 + 16) = 0;
  *(v110 + 24) = 0;
  *(v110 + 32) = -1;
  *(v110 + 40) = 0;
  *(v110 + 48) = 0;
  v118 = v152;
  *(v110 + 104) = v117;
  *(v110 + 168) = v118;
  *(v110 + 176) = v10;

  outlined init with copy of JSONEncoder._Options(&v145, &v138);
  outlined assign with take of CodingKey?(v141, v110 + 192);
  *(a3 + 24) = v109;
  result = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONReferencingEncoder and conformance __JSONEncoder, type metadata accessor for __JSONReferencingEncoder, &protocol conformance descriptor for __JSONEncoder);
  *(a3 + 32) = result;
  *a3 = v110;
  return result;
}

uint64_t __JSONReferencingEncoder.__deallocating_deinit()
{
  v4 = v0;
  v5 = __JSONEncoder.takeValue()();
  if (v7 == 255)
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v8 = v5;
  }

  if (v7 == 255)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v7 == 255)
  {
    v10 = 4;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v0 + 240);
  v12 = *(v4 + 248);
  if (v11 < 0)
  {
    v2 = *(v4 + 256);
    v1 = v11 & 0x7FFFFFFFFFFFFFFFLL;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = v63;
    *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) = 0x8000000000000000;
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v2);
    v14 = *(v63 + 16);
    v15 = (v6 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (!v16)
    {
      if (*(v63 + 24) < v17)
      {
        v18 = v6;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v19 = v63;
        v5 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v2);
        if ((v18 & 1) != (v20 & 1))
        {
LABEL_47:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v63;
        if ((v6 & 1) == 0)
        {
LABEL_41:
          specialized _NativeDictionary._insert(at:key:value:)(v5, v12, v2, v8, v9, v10, v19);
          goto LABEL_42;
        }

LABEL_21:
        v21 = v5;

        v22 = *(v19 + 56) + 24 * v21;
        v23 = *v22;
        v24 = *(v22 + 8);
        *v22 = v8;
        *(v22 + 8) = v9;
        v25 = *(v22 + 16);
        *(v22 + 16) = v10;
        outlined consume of JSONFuture(v23, v24, v25);
LABEL_42:
        *(v1 + 16) = v19;

        goto LABEL_43;
      }

LABEL_25:
      v55 = v6;
      v56 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR);
      v26 = static _DictionaryStorage.copy(original:)();
      v19 = v26;
      if (*(v3 + 16))
      {
        v27 = (v26 + 64);
        v28 = ((1 << *(v19 + 32)) + 63) >> 6;
        __src = (v3 + 64);
        if (v19 != v3 || v27 >= v3 + 64 + 8 * v28)
        {
          memmove(v27, __src, 8 * v28);
        }

        v29 = 0;
        *(v19 + 16) = *(v3 + 16);
        v30 = 1 << *(v3 + 32);
        v31 = -1;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        v54 = (v30 + 63) >> 6;
        v32 = v31 & *(v3 + 64);
        if (v32)
        {
          do
          {
            v33 = __clz(__rbit64(v32));
            v62 = (v32 - 1) & v32;
LABEL_38:
            v36 = v33 | (v29 << 6);
            v37 = 16 * v36;
            v38 = (*(v3 + 48) + 16 * v36);
            v40 = *v38;
            v39 = v38[1];
            v36 *= 24;
            v41 = *(v3 + 56) + v36;
            v59 = *(v41 + 8);
            v60 = *v41;
            v42 = (*(v19 + 48) + v37);
            v58 = *(v41 + 16);
            *v42 = v40;
            v42[1] = v39;
            v43 = *(v19 + 56) + v36;
            *v43 = v60;
            *(v43 + 8) = v59;
            *(v43 + 16) = v58;

            outlined copy of JSONFuture(v60, v59, v58);
            v32 = v62;
          }

          while (v62);
        }

        v34 = v29;
        while (1)
        {
          v29 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v29 >= v54)
          {
            goto LABEL_40;
          }

          v35 = *(__src + v29);
          ++v34;
          if (v35)
          {
            v33 = __clz(__rbit64(v35));
            v62 = (v35 - 1) & v35;
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_40:

      v5 = v56;
      if ((v55 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_21;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (*(*(v11 + 16) + 16) < v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  specialized Array.replaceSubrange<A>(_:with:)(*(v4 + 248), *(v4 + 248), v8, v9, v10);
  outlined consume of JSONEncoderValue(v8, v9, v10);
LABEL_43:
  outlined consume of JSONEncoderValue?(*(v4 + 16), *(v4 + 24), *(v4 + 32));

  v44 = *(v4 + 88);
  v45 = *(v4 + 96);
  v46 = *(v4 + 104);
  v47 = *(v4 + 112);
  v48 = *(v4 + 120);
  v49 = *(v4 + 128);
  v50 = *(v4 + 136);
  v51 = *(v4 + 144);
  v52 = *(v4 + 152);
  v61 = *(v4 + 160);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v4 + 64), *(v4 + 72), *(v4 + 80));
  sub_1807A5C7C(v44, v45);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v46, v47, v48, v49, v50, v51);
  sub_1807A5C7C(v52, v61);

  outlined destroy of TermOfAddress?(v4 + 192, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);

  outlined consume of __JSONReferencingEncoder.Reference(*(v4 + 240), *(v4 + 248), *(v4 + 256));

  return swift_deallocClassInstance();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, 1, a3, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, a5, a6, &type metadata for JSONFuture, outlined copy of JSONFuture);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, a5, a6, &type metadata for _XMLPlistEncodingFormat.Reference, outlined copy of _XMLPlistEncodingFormat.Reference);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = *v8;
  v16 = v15 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v17 = __OFSUB__(a3, v9);
  v18 = a3 - v9;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18)
  {
    v19 = *(v15 + 16);
    v17 = __OFSUB__(v19, a2);
    v20 = v19 - a2;
    if (!v17)
    {
      result = v16 + 24 * a3;
      v21 = (v15 + 32 + 24 * a2);
      v22 = 24 * v20;
      v23 = v21 + 24 * v20;
      if (result != v21 || result >= v23)
      {
        result = memmove(result, v21, v22);
      }

      v25 = *(v15 + 16);
      v17 = __OFADD__(v25, v18);
      v26 = v25 + v18;
      if (!v17)
      {
        *(v15 + 16) = v26;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    *(v16 + 8) = a5;
    *(v16 + 16) = a6;
    result = a8(a4, a5, a6);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t AttributedString.startIndex.getter@<X0>(uint64_t (*a1)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = *v7;
  result = a1(a1, a2, a3, a4, a5, a6);
  v11 = *(v9 + 16);
  *a7 = result;
  a7[1] = v12;
  a7[2] = v13;
  a7[3] = v14;
  a7[4] = v11;
  return result;
}

void PersonNameComponents.phoneticRepresentation.getter(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = [v3 phoneticRepresentation];
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd, &_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMR);
    v6 = swift_allocObject();
    [v5 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    *(v6 + 16) = v7;
  }

  else
  {

    v6 = 0;
  }

  *a1 = v6;
}

uint64_t AttributedString.UnicodeScalarView._count.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v9[0] = *(*v0 + 24);
  v9[1] = v2;
  v3 = *(v1 + 56);
  v4 = *(v0 + 7);
  v5 = *(v0 + 3);
  v9[5] = *(v0 + 5);
  v9[6] = v4;
  v6 = *(v0 + 1);
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  swift_unknownObjectRetain();
  v7 = BigSubstring.UnicodeScalarView.count.getter();
  outlined destroy of BigSubstring.UnicodeScalarView(v9);
  return v7;
}

uint64_t IndexPath.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation9IndexPathV10CodingKeys33_99E5384770E52278DCADDB8A2FD5C86ELLOGMd, &_ss22KeyedEncodingContainerVy10Foundation9IndexPathV10CodingKeys33_99E5384770E52278DCADDB8A2FD5C86ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v11[1] = v1[1];
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v14 = v7;
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(contentsOf:)();
    }
  }

  else if (!v8 || (__swift_mutable_project_boxed_opaque_existential_1(v12, v13), v9 = v11[2], dispatch thunk of UnkeyedEncodingContainer.encode(_:)(), !v9))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  (*(v4 + 8))(v6, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t lazy protocol witness table accessor for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys;
  if (!lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys);
  }

  return result;
}

uint64_t IndexPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation9IndexPathV10CodingKeys33_99E5384770E52278DCADDB8A2FD5C86ELLOGMd, &_ss22KeyedDecodingContainerVy10Foundation9IndexPathV10CodingKeys33_99E5384770E52278DCADDB8A2FD5C86ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v9 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
    v24 = a2;
    if (v10)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0, MEMORY[0x1E69E7CC0]);
    }

    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
      {
        break;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v12 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      *&v11[8 * v14 + 32] = v12;
    }

    v15 = *(v11 + 2);
    if (v15 == 2)
    {
      v17 = *(v11 + 4);
      v18 = *(v11 + 5);

      (*(v6 + 8))(v8, v5);
      v19 = 1;
      v16 = v24;
    }

    else
    {
      v16 = v24;
      if (v15 == 1)
      {
        v17 = *(v11 + 4);

        (*(v6 + 8))(v8, v5);
        v18 = 0;
        v19 = 0;
      }

      else if (v15)
      {
        (*(v6 + 8))(v8, v5);
        v18 = 0;
        v19 = 2;
        v17 = v11;
      }

      else
      {
        (*(v6 + 8))(v8, v5);

        v17 = 0;
        v18 = 0;
        v19 = 3;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
    *v16 = v17;
    *(v16 + 8) = v18;
    *(v16 + 16) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t JSONDecoder.decode<A, B>(_:from:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v20 - v17;
  (*(a8 + 16))(a6, a8, v16);
  (*(*v9 + 328))(v21, v22, v23, v18, a5, a7);
  return (*(v15 + 8))(v18, AssociatedTypeWitness);
}

void JSONDecoder.decode<A>(_:from:configuration:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v109 = *MEMORY[0x1E69E9840];
  v99[2] = a5;
  v99[3] = a6;
  v99[4] = a1;
  v99[5] = a4;
  v98[2] = a5;
  v98[4] = partial apply for closure #1 in JSONDecoder.decode<A>(_:from:configuration:);
  v98[5] = v99;
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](a1);
  v85 = v12;
  v86 = v13;
  v87 = closure #1 in JSONDecoder._decode<A>(_:from:)partial apply;
  v88 = v98;
  MEMORY[0x1EEE9AC00](v14);
  v84[2] = v15;
  v84[3] = closure #1 in static JSONDecoder.withUTF8Representation<A>(of:_:)partial apply;
  v84[4] = v16;
  Data._Representation.withUnsafeBytes<A>(_:)(closure #1 in Data.withBufferView<A>(_:)partial apply, v84, v17, v18);
  if (!v6)
  {
    return;
  }

  v97 = v6;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {

    swift_willThrow();
    return;
  }

  v107[0] = v105[0];
  v107[1] = v105[1];
  v107[2] = v105[2];
  v108 = v106;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v21 = @"NSDebugDescription";
  v22 = v21;
  if (!isTaggedPointer)
  {
    goto LABEL_17;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_29;
    case 0x16:
      v32 = [(__CFString *)v22 UTF8String];
      if (!v32)
      {
        goto LABEL_82;
      }

      v33 = String.init(utf8String:)(v32);
      if (v34)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_29:
      LOWORD(v100[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v34)
      {
        [(__CFString *)v22 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v95 = 0;
        v26 = *(&v101[0] + 1);
        v24 = *&v101[0];
        goto LABEL_46;
      }

LABEL_30:
      v24 = v33;
      v26 = v34;

      v95 = 0;
      goto LABEL_46;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v87 = v22;
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;
      v95 = 0;

      goto LABEL_46;
  }

LABEL_17:
  LOBYTE(v101[0]) = 0;
  *&v102 = 0;
  LOBYTE(v100[0]) = 0;
  LOBYTE(v96) = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v29 = v22;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v24 = v30;
      v26 = v31;

      v95 = 0;
      goto LABEL_46;
    }

    *&v102 = [(__CFString *)v29 length];
    if (v102)
    {
      goto LABEL_35;
    }

LABEL_25:
    v24 = 0;
    v95 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_46;
  }

  v28 = v102;
  if (!v102)
  {

    goto LABEL_25;
  }

  if (v96 != 1)
  {
    if (v100[0])
    {
      if (LOBYTE(v101[0]) == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        v85 = v22;
        v86 = &v102;
        LODWORD(v87) = 1536;
        v88 = v28;
      }

      else
      {
        v39 = [(__CFString *)v22 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v39);
        v85 = v22;
        v86 = &v102;
        LODWORD(v87) = 134217984;
        v88 = v40;
      }

      v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v36;
      v41 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v41 = v35 & 0xFFFFFFFFFFFFLL;
      }

      v95 = 0;
      if (v41)
      {
        v24 = v35;

        goto LABEL_46;
      }

LABEL_36:
      v24 = String.init(_cocoaString:)();
      v26 = v37;
      goto LABEL_46;
    }

LABEL_35:
    v95 = 0;
    goto LABEL_36;
  }

  if (v101[0])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v24 = String.init<A>(_immortalCocoaString:count:encoding:)();
  v26 = v38;
  v95 = 0;
LABEL_46:
  v104[0] = v24;
  v104[1] = v26;
  v42 = JSONError.debugDescription.getter();
  v104[5] = MEMORY[0x1E69E6158];
  v104[2] = v42;
  v104[3] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v8 = static _DictionaryStorage.allocate(capacity:)();
  v7 = &v102;
  outlined init with copy of FloatingPointRoundingRule?(v104, &v102, &_sSS_yptMd, &_sSS_yptMR);

  outlined destroy of TermOfAddress?(v104, &_sSS_yptMd, &_sSS_yptMR);
  v44 = *(&v102 + 1);
  v10 = v102;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v102, *(&v102 + 1));
  v9 = v46;

  if (v9)
  {
    __break(1u);
    goto LABEL_62;
  }

  v9 = (v8 + 64);
  *(v8 + 64 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
  v47 = (*(v8 + 48) + 16 * v45);
  *v47 = v10;
  v47[1] = v44;
  a1 = outlined init with take of Any(&v103, (*(v8 + 56) + 32 * v45));
  v48 = *(v8 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v8 + 16) = v50;
  JSONError.sourceLocation.getter();
  v52 = v51;
  LOBYTE(v10) = v53;
  outlined destroy of JSONError(v107);
  if ((v10 & 1) == 0)
  {
    v7 = "as not valid JSON.";
    *(&v103 + 1) = MEMORY[0x1E69E6530];
    *&v102 = v52;
    outlined init with take of Any(&v102, v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v8;
    a1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x8000000181481C50);
    v56 = *(v8 + 16);
    v57 = (v55 & 1) == 0;
    v49 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (!v49)
    {
      LOBYTE(v10) = v55;
      if (*(v8 + 24) < v58)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, isUniquelyReferenced_nonNull_native);
        v59 = v96;
        a1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x8000000181481C50);
        if ((v10 & 1) == (v60 & 1))
        {
          goto LABEL_55;
        }

        a1 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = v8;
        goto LABEL_55;
      }

      goto LABEL_65;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    v90 = a1;
    v69 = static _DictionaryStorage.copy(original:)();
    v59 = v69;
    if (!*(v8 + 16))
    {
LABEL_80:

      a1 = v90;
LABEL_55:
      if (v10)
      {
        v61 = (*(v59 + 56) + 32 * a1);
        __swift_destroy_boxed_opaque_existential_1(v61);
        outlined init with take of Any(v101, v61);
      }

      else
      {
        specialized _NativeDictionary._insert(at:key:value:)(a1, 0xD00000000000001DLL, v7 | 0x8000000000000000, v101, v59);
      }

      goto LABEL_58;
    }

    v70 = (v69 + 64);
    v71 = ((1 << *(v59 + 32)) + 63) >> 6;
    if (v59 != v8 || v70 >= &v9[8 * v71])
    {
      memmove(v70, v9, 8 * v71);
    }

    v72 = 0;
    *(v59 + 16) = *(v8 + 16);
    v73 = 1 << *(v8 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v94 = v74 & *(v8 + 64);
    v89 = (v73 + 63) >> 6;
    for (i = v94; v94; i = v94)
    {
      v76 = __clz(__rbit64(i));
      v94 = (i - 1) & i;
LABEL_78:
      v79 = v76 | (v72 << 6);
      v91 = 16 * v79;
      v80 = *(v8 + 56);
      v81 = (*(v8 + 48) + 16 * v79);
      v82 = v81[1];
      v92 = *v81;
      v93 = 32 * v79;
      outlined init with copy of Any(v80 + 32 * v79, v100);
      v83 = (*(v59 + 48) + v91);
      *v83 = v92;
      v83[1] = v82;
      outlined init with take of Any(v100, (*(v59 + 56) + v93));
    }

    v77 = v72;
    while (1)
    {
      v72 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v72 >= v89)
      {
        goto LABEL_80;
      }

      v78 = *&v9[8 * v72];
      ++v77;
      if (v78)
      {
        v76 = __clz(__rbit64(v78));
        v94 = (v78 - 1) & v78;
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
    return;
  }

LABEL_58:
  v62 = objc_allocWithZone(NSError);
  v63 = @"NSCocoaErrorDomain";
  v64 = [v62 initWithDomain:v63 code:3840 userInfo:_NativeDictionary.bridged()()];

  swift_unknownObjectRelease();
  v65 = type metadata accessor for DecodingError();
  swift_allocError();
  v67 = v66;
  v68 = v64;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6B00], v65);
  swift_willThrow();
}

uint64_t closure #1 in JSONDecoder.decode<A>(_:from:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a5;
  v31 = a6;
  v32 = a9;
  v30 = a4;
  v28 = a2;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v28 - v14;
  v16 = *(a1 + 160);
  *(a1 + 160) = 0x8000000000000000;
  v17 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v17;
  v36 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    *(a1 + 16) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[24 * v20];
  v22 = v29;
  *(v21 + 4) = v28;
  *(v21 + 5) = v22;
  v21[48] = v30;
  *(a1 + 16) = v17;
  v35[3] = type metadata accessor for JSONDecoderImpl();
  v35[4] = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl, &protocol conformance descriptor for JSONDecoderImpl);
  v35[0] = a1;
  (*(v13 + 16))(v15, v31, AssociatedTypeWitness);
  v23 = *(a8 + 16);

  v24 = v34;
  v23(v35, v15, a7, a8);
  if (v24)
  {
    *(a1 + 160) = v36;

    v25 = *(a1 + 16);
    if (*(v25 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = *(v25 + 2);
        if (v26)
        {
LABEL_13:
          *(v25 + 2) = v26 - 1;
          *(a1 + 16) = v25;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    v26 = *(v25 + 2);
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_9:
    __break(1u);
  }

  *(a1 + 160) = v36;

  v25 = *(a1 + 16);
  if (!*(v25 + 2))
  {
    __break(1u);
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    v25 = result;
    v26 = *(result + 16);
    if (v26)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = *(v25 + 2);
  if (v26)
  {
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *v6;
    v19 = *(v6 - 1);
    v20 = v9;
    (a1)(v16, &v19, a2);
    if (v3)
    {
      break;
    }

    if ((v18 & 1) == 0)
    {
      v14 = v16[1];
      v15 = v16[0];
      v10 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v8 = &v7[40 * v12];
      *(v8 + 2) = v15;
      *(v8 + 3) = v14;
      *(v8 + 8) = v10;
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy8Dispatch0B4DataVGMd, &_ss5SliceVy8Dispatch0B4DataVGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-v8];
  if (a1)
  {
    type metadata accessor for DispatchData();
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData, MEMORY[0x1E69E7FF0], v10);
    dispatch thunk of RangeExpression.relative<A>(to:)();
    dispatch thunk of Collection.subscript.getter();
    lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData, MEMORY[0x1E69E7FE8], v11);
    v12 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v13 = a2 - a1;
    if (v12 >= a2 - a1)
    {
      v14 = a2 - a1;
    }

    else
    {
      v14 = v12;
    }

    v15 = *v9;
    v37 = v9[1];
    v38 = v15;
    v16 = dispatch thunk of Collection.startIndex.getter();
    v35 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v16);
    *&v34[-16] = &v35;
    v17 = DispatchData.enumerateBytes(_:)();
    v18 = v35;
    MEMORY[0x1EEE9AC00](v17);
    *&v34[-32] = &v36;
    *&v34[-24] = v9;
    *&v34[-16] = &v38;
    *&v34[-8] = &v37;
    v19 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Slice<>.regions.getter, &v34[-48], v18);
    v20 = v19 + 64;

    v21 = 0;
    v22 = -*(v19 + 2);
    v23 = -1;
    while (1)
    {
      if (v22 + v23 == -1)
      {
LABEL_34:
        outlined destroy of TermOfAddress?(v9, &_ss5SliceVy8Dispatch0B4DataVGMd, &_ss5SliceVy8Dispatch0B4DataVGMR);

        return;
      }

      if (++v23 >= *(v19 + 2))
      {
        break;
      }

      if (v14 < 1)
      {
        goto LABEL_34;
      }

      v25 = *(v20 - 1);
      v26 = *v20;
      v24 = __OFADD__(*v20, v25);
      v27 = *v20 + v25;
      if (v24)
      {
        goto LABEL_36;
      }

      v28 = *(v20 - 4);
      if (v27 < v28 || v28 < v26 || v27 < v26)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v28, v26))
      {
        goto LABEL_38;
      }

      v32 = *(v20 - 3);
      v31 = *(v20 - 2);
      if (v31)
      {
        if (v32 < v26 || v27 < v32)
        {
          goto LABEL_41;
        }

        if (__OFSUB__(v32, v28))
        {
          goto LABEL_42;
        }

        if (v13 < v21)
        {
          goto LABEL_39;
        }

        if (v14 >= v32 - v28)
        {
          v33 = v32 - v28;
        }

        else
        {
          v33 = v14;
        }

        memmove((v21 + a1), (v31 + v28 - v26), v33);
        v24 = __OFADD__(v21, v33);
        v21 += v33;
        if (v24)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v32 < v26 || v27 < v32)
        {
          goto LABEL_44;
        }

        if (v13 < v21)
        {
          goto LABEL_39;
        }

        v33 = 0;
      }

      v20 += 5;
      v24 = __OFSUB__(v14, v33);
      v14 -= v33;
      if (v24)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
}

uint64_t partial apply for specialized closure #1 in Slice<>.regions.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in Slice<>.regions.getter(*a1, a1[1], a1[2], v2[2], *v2[4], *v2[5], a2);
}

{
  return partial apply for specialized closure #1 in Slice<>.regions.getter(a1, a2);
}

char *closure #1 in DispatchData.regions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v9 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v9;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *(v13 + 6) = a3;
  return result;
}

uint64_t specialized closure #1 in Slice<>.regions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy8Dispatch0B4DataVGMd, &_ss5SliceVy8Dispatch0B4DataVGMR);
  v15 = a3 + a2;
  if (__OFADD__(a3, a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v23 = a3 + a2;
  if (v15 < a3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (__OFSUB__(v15, a3))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  type metadata accessor for DispatchData();
  lazy protocol witness table accessor for type DispatchData and conformance DispatchData(&lazy protocol witness table cache variable for type DispatchData and conformance DispatchData, MEMORY[0x1E69E7FE8], v16);
  result = dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  *a4 = v24;
  if (v13 <= a5 && v24 >= a6)
  {
    result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v17 = a3 + result;
    if (!__OFADD__(a3, result))
    {
      if (v17 >= a3 && v23 >= v17)
      {
        result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        v19 = a3 + result;
        if (!__OFADD__(a3, result))
        {
          if (v19 >= a3 && v23 >= v19)
          {
            if (v19 >= v17)
            {
              *(a7 + 16) = a1;
              *(a7 + 24) = a2;
              *(a7 + 32) = a3;
              *a7 = v17;
              *(a7 + 8) = v19;
              *(a7 + 40) = 0;
              return result;
            }

            goto LABEL_40;
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v13 < a5 || v24 > a6)
  {
    if (v13 > a5 || v24 < a5)
    {
      if (v13 < a5 || v13 > a6)
      {
        *(a7 + 32) = 0;
        *a7 = 0u;
        *(a7 + 16) = 0u;
        *(a7 + 40) = 1;
        return result;
      }

      result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
      v21 = a3 + result;
      if (!__OFADD__(a3, result))
      {
        if (v21 >= a3 && v23 >= v21)
        {
          *(a7 + 16) = a1;
          *(a7 + 24) = a2;
          *(a7 + 32) = a3;
          *a7 = a3;
          *(a7 + 8) = v21;
          *(a7 + 40) = 0;
          return result;
        }

        goto LABEL_44;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

    result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v20 = a3 + result;
    if (!__OFADD__(a3, result))
    {
      if (v20 >= a3 && v23 >= v20)
      {
        *(a7 + 16) = a1;
        *(a7 + 24) = a2;
        *(a7 + 32) = a3;
        *a7 = v20;
        *(a7 + 8) = v23;
        *(a7 + 40) = 0;
        return result;
      }

      goto LABEL_42;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *a7 = a3;
  *(a7 + 8) = v23;
  *(a7 + 40) = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchData and conformance DispatchData(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DispatchData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = v3[1];
  v12 = *(v11 + 40);
  v13 = type metadata accessor for __PlistReferencingEncoderBPlist();
  v14 = swift_allocObject();
  (*(v7 + 16))(v9, v19, v6);
  v15 = *(a2 + 24);

  v16 = specialized __PlistReferencingEncoderBPlist.init(referencing:at:codingPathNode:wrapping:)(v11, v9, v12, v10, v14, v6, v15);
  a3[3] = v13;
  result = lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(&lazy protocol witness table cache variable for type __PlistReferencingEncoderBPlist and conformance __PlistEncoderBPlist, 255, type metadata accessor for __PlistReferencingEncoderBPlist, &protocol conformance descriptor for __PlistEncoderBPlist);
  a3[4] = result;
  *a3 = v16;
  return result;
}

uint64_t specialized __PlistReferencingEncoderBPlist.init(referencing:at:codingPathNode:wrapping:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a3;
  *&v53 = a6;
  *(&v53 + 1) = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a2, a6);
  *(a5 + 96) = a1;

  v13 = dispatch thunk of CodingKey.stringValue.getter();
  *(a5 + 104) = a4 | 0x8000000000000000;
  *(a5 + 112) = v13;
  *(a5 + 120) = v14;
  v15 = *(a1 + 32);
  v47 = *(a1 + 24);
  v49 = v15;
  v50 = a1;
  v46 = v53;
  v16 = v53;
  v48 = __swift_project_boxed_opaque_existential_1(v52, v53);
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = *(v16 - 8);
  (*(v22 + 16))(&v46 - v21, v48, v16, v20);
  v23 = (*(v22 + 56))(&v46 - v21, 0, 1, v16);
  v24 = v17;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v18 + 16))(&v46 - v21, &v46 - v21, v17, v28);
  if ((*(v22 + 48))(&v46 - v21, 1, v16) == 1)
  {
    v29 = v49;

    v30 = *(v18 + 8);
    v30(&v46 - v21, v17);
    v30(&v46 - v21, v17);
    v31 = v51;
    v32 = v51 >> 62;
    v33 = v51;
    if (v51 >> 62)
    {
LABEL_3:
      if (v32 != 1)
      {
        v40 = 0;
LABEL_14:
        v44 = v47;
        *(a5 + 16) = MEMORY[0x1E69E7CC0];
        *(a5 + 24) = v44;
        *(a5 + 32) = v29;
        *(a5 + 40) = v33;
        *(a5 + 48) = v40;
        specialized _BPlistEncodingFormat.init()(v54);
        v45 = v54[1];
        *(a5 + 56) = v54[0];
        *(a5 + 72) = v45;
        *(a5 + 88) = v55;
        __swift_destroy_boxed_opaque_existential_1(v52);
        return a5;
      }

      v31 &= 0x3FFFFFFFFFFFFFFFuLL;
      v34 = 32;
LABEL_13:
      v40 = *(v31 + v34);
      goto LABEL_14;
    }

LABEL_12:
    v34 = 64;
    goto LABEL_13;
  }

  v35 = *(v22 + 32);
  v35(v26, &v46 - v21, v16);
  v33 = swift_allocObject();
  *(v33 + 40) = v46;
  v36 = __swift_allocate_boxed_opaque_existential_0((v33 + 16));
  v35(v36, v26, v16);
  v29 = v49;

  result = (*(v18 + 8))(&v46 - v21, v24);
  v31 = v51;
  *(v33 + 56) = v51;
  v32 = v31 >> 62;
  if (!(v31 >> 62))
  {
    v39 = 64;
    v38 = v31;
LABEL_10:
    v41 = *(v38 + v39);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (!v42)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v32 == 1)
  {
    v38 = v31 & 0x3FFFFFFFFFFFFFFFLL;
    v39 = 32;
    goto LABEL_10;
  }

  v43 = 1;
  if (!__OFSUB__(v32, 1))
  {
LABEL_11:
    *(v33 + 64) = v43;
    if (v32)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *specialized Data.LargeSlice.init(_:)(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)(a1, v3);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = v3;
  }

  return result;
}

uint64_t JSONDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  JSONDecoder.init()();
  return v0;
}

uint64_t _sSo23_opaque_pthread_mutex_tVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo23_opaque_pthread_mutex_tVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.MarkdownSourcePosition.Offsets(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributedString.MarkdownSourcePosition.Offsets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for URLError.Code(uint64_t a1, int a2)
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

BOOL protocol witness for SetAlgebra.insert(_:) in conformance String._BlockSearchingOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *_sSo16UDateFormatFieldVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance String._BlockSearchingOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance String._BlockSearchingOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance URLError.Code@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id _sSo18NSNotificationNameaSYSCSY8rawValue03RawD0QzvgTW_0@<X0>(void *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOs0P3KeyAAsAMP06stringC0SSvgTW_0()
{
  v1 = 0x79636E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x746E6563726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265626D756ELL;
  }
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOs0P3KeyAAsAMP06stringC0xSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

double _sSo9NSRunLoopC10FoundationE17SchedulerTimeTypeV6StrideVs27ExpressibleByIntegerLiteralACsAHP07integerK0x0jkF0Qz_tcfCTW_0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_180A4386C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10Foundation11MeasurementV14UnitCodingKeys33_C6B65AEC5781F659BCA9D638C995CA14LLOyx_GSYAASY8rawValuexSg03RawO0Qz_tcfCTW_0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_180A4386C(*a1);
  *a2 = result;
  return result;
}

uint64_t _s10Foundation11MeasurementV14UnitCodingKeys33_C6B65AEC5781F659BCA9D638C995CA14LLOyx_GSYAASY8rawValue03RawO0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_180A43890(*v1);
  *a1 = result;
  return result;
}

uint64_t _s10Foundation11MeasurementV14UnitCodingKeys33_C6B65AEC5781F659BCA9D638C995CA14LLOyx_Gs0D3KeyAAsAHP8intValuexSgSi_tcfCTW_0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_180A4386C(a1);
  *a2 = result;
  return result;
}

__n128 sub_180A439B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_180A43A5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_180A43A7C@<Q0>(uint64_t a8@<X8>)
{
  AttributedString.subscript.getter(v11);
  v9 = v11[3];
  *(a8 + 32) = v11[2];
  *(a8 + 48) = v9;
  *(a8 + 64) = v11[4];
  result = v11[1];
  *a8 = v11[0];
  *(a8 + 16) = result;
  return result;
}

void _s10Foundation16AttributedStringV13_InternalRunsVSlAASl34_customLastIndexOfEquatableElementy0H0QzSgSg0K0QzFTW_0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 2;
}

uint64_t _s10Foundation16AttributedStringV13_InternalRunsVSlAASl5countSivgTW_0()
{
  if (*v0)
  {
    return v0[1];
  }

  else
  {
    return 0;
  }
}

__n128 sub_180A43BA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double _s10Foundation16AttributedStringV13CharacterViewVSlAASl34_customLastIndexOfEquatableElementy0H0QzSgSg0K0QzFTW_0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 3;
  *(a1 + 24) = xmmword_18121B8E0;
  return result;
}

uint64_t sub_180A43BE0(_OWORD *a1)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v6[4] = a1[4];
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  outlined init with copy of AttributedString.CharacterView(v6, &v5);
  return AttributedString.characters.setter(a1);
}

double sub_180A43C50@<D0>(_OWORD *a1@<X1>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v11[4] = a1[4];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  AttributedString.CharacterView.subscript.getter(v11, v12);
  v5 = v12[7];
  a2[6] = v12[6];
  a2[7] = v5;
  v6 = v12[9];
  a2[8] = v12[8];
  a2[9] = v6;
  v7 = v12[3];
  a2[2] = v12[2];
  a2[3] = v7;
  v8 = v12[5];
  a2[4] = v12[4];
  a2[5] = v8;
  result = *v12;
  v10 = v12[1];
  *a2 = v12[0];
  a2[1] = v10;
  return result;
}

unint64_t *sub_180A43CD0(__int128 *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[3];
  v11[2] = a3[2];
  v11[3] = v3;
  v11[4] = a3[4];
  v4 = a3[1];
  v11[0] = *a3;
  v11[1] = v4;
  v5 = a1[7];
  v12[6] = a1[6];
  v12[7] = v5;
  v6 = a1[9];
  v12[8] = a1[8];
  v12[9] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  v8 = a1[5];
  v12[4] = a1[4];
  v12[5] = v8;
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  return specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v11, v12);
}

double _s10Foundation16AttributedStringV4RunsVSlAASl34_customLastIndexOfEquatableElementy0G0QzSgSg0J0QzFTW_0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 90) = 0u;
  return result;
}

uint64_t sub_180A43D88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_180A43E44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_180A43EF4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[4] >> 11;
  *a2 = *result >> 11;
  a2[1] = v2;
  return result;
}

void *sub_180A43F10@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (__OFSUB__(v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 - *result;
  }

  return result;
}

void _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v3;
  v5 = *(a1 + 32);
  specialized BidirectionalCollection.index(_:offsetBy:)(v4, a2, a3);
}

void _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVSlAASl5index_8offsetBy07limitedI05IndexQzSgAL_SiALtFTW_0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  v5 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v5;
  v9 = *(a3 + 32);
  specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(v6, a2, v8, a4);
}

void _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  v3 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v3;
  v7 = *(a2 + 32);
  specialized BidirectionalCollection._distance(from:to:)(v4, v6);
}

uint64_t sub_180A44088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A44144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A441FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AttributedString.Runs.AttributesSlice1(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    v13 = v12 <= 0;
    if (v12 < 0)
    {
      v12 = -1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_180A442CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs.AttributesSlice1(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 + 1);
  }

  return result;
}

uint64_t sub_180A4438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A44448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A44500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v14[0] = *(a3 + 16);
  v14[1] = v6;
  v7 = type metadata accessor for AttributedString.Runs.AttributesSlice2(0, v14);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    return (*(v8 + 48))(a1, a2, v7);
  }

  v10 = *(a1 + *(a3 + 52) + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  v12 = v11 == 0;
  v13 = v11 < 0;
  if (v11 < 0)
  {
    v11 = -1;
  }

  if (v13 || v12)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_180A445C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v11[0] = *(a4 + 16);
  v11[1] = v8;
  result = type metadata accessor for AttributedString.Runs.AttributesSlice2(0, v11);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    return (*(v10 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52) + 24) = (a2 + 1);
  return result;
}

uint64_t sub_180A44680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A4473C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A447F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v14[0] = *(a3 + 16);
  v14[1] = v6;
  v14[2] = *(a3 + 48);
  v7 = type metadata accessor for AttributedString.Runs.AttributesSlice3(0, v14);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    return (*(v8 + 48))(a1, a2, v7);
  }

  v10 = *(a1 + *(a3 + 68) + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  v12 = v11 == 0;
  v13 = v11 < 0;
  if (v11 < 0)
  {
    v11 = -1;
  }

  if (v13 || v12)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_180A448C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v11[0] = *(a4 + 16);
  v11[1] = v8;
  v11[2] = *(a4 + 48);
  result = type metadata accessor for AttributedString.Runs.AttributesSlice3(0, v11);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    return (*(v10 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 68) + 24) = (a2 + 1);
  return result;
}

uint64_t sub_180A44984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 84));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A44A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 84)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A44AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v15[0] = *(a3 + 16);
  v15[1] = v6;
  v7 = *(a3 + 64);
  v15[2] = *(a3 + 48);
  v15[3] = v7;
  v8 = type metadata accessor for AttributedString.Runs.AttributesSlice4(0, v15);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    return (*(v9 + 48))(a1, a2, v8);
  }

  v11 = *(a1 + *(a3 + 84) + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  v13 = v12 == 0;
  v14 = v12 < 0;
  if (v12 < 0)
  {
    v12 = -1;
  }

  if (v14 || v13)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_180A44BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v12[0] = *(a4 + 16);
  v12[1] = v8;
  v9 = *(a4 + 64);
  v12[2] = *(a4 + 48);
  v12[3] = v9;
  result = type metadata accessor for AttributedString.Runs.AttributesSlice4(0, v12);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    return (*(v11 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 84) + 24) = (a2 + 1);
  return result;
}

uint64_t sub_180A44C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 100));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A44D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 100)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A44DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v15[0] = *(a3 + 16);
  v15[1] = v6;
  v7 = *(a3 + 64);
  v15[2] = *(a3 + 48);
  v15[3] = v7;
  v15[4] = *(a3 + 80);
  v8 = type metadata accessor for AttributedString.Runs.AttributesSlice5(0, v15);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    return (*(v9 + 48))(a1, a2, v8);
  }

  v11 = *(a1 + *(a3 + 100) + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  v13 = v12 == 0;
  v14 = v12 < 0;
  if (v12 < 0)
  {
    v12 = -1;
  }

  if (v14 || v13)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_180A44ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v12[0] = *(a4 + 16);
  v12[1] = v8;
  v9 = *(a4 + 64);
  v12[2] = *(a4 + 48);
  v12[3] = v9;
  v12[4] = *(a4 + 80);
  result = type metadata accessor for AttributedString.Runs.AttributesSlice5(0, v12);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    return (*(v11 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 100) + 24) = (a2 + 1);
  return result;
}

uint64_t sub_180A44F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A45058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A45110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_180A451DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 + 1);
  }

  return result;
}

__n128 sub_180A452A8@<Q0>(uint64_t a1@<X8>)
{

  AttributedString.UnicodeScalarView.init(_:)(v2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_180A452F8(_OWORD *a1)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v6[4] = a1[4];
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  outlined init with copy of AttributedString.UnicodeScalarView(v6, &v5);
  return AttributedString.unicodeScalars.setter(a1);
}

__n128 sub_180A45540(__n128 *a1, uint64_t a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v4;
  *(a2 + 8) = v4;
  return result;
}

__n128 sub_180A4559C(__n128 *a1, uint64_t a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v4;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_180A455F4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_180A45694(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

unint64_t _s10Foundation4DateV19VerbatimFormatStyleVAA09ParseabledE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_180A45760(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  specialized Date.VerbatimFormatStyle.Attributed.subscript.setter(a1, v4);
}

uint64_t _s10Foundation4DateV11FormatStyleV6SymbolV3DayVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10Foundation4DateV11FormatStyleV6SymbolV3DayVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t _s10Foundation4DateV11FormatStyleV6SymbolV0E4TypeO9DayOptionOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10Foundation4DateV11FormatStyleV6SymbolV0E4TypeO9DayOptionOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s10Foundation4DateV11FormatStyleV6SymbolV0E4TypeO9DayOptionOwug_0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10Foundation4DateV11FormatStyleV6SymbolV0E4TypeO9DayOptionOwui_0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t _s10Foundation4DateV11FormatStyleVAA09ParseablecD0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_180A45D58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  specialized Date.FormatStyle.Attributed.subscript.setter(a1, v4);
}

uint64_t _sSo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOs0F3KeyACsAKP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_180A45E38(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_180A45EE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_180A45F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_180A45FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_180A46084(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t _s10Foundation24FloatingPointFormatStyleV7PercentV10CodingKeys33_F9D793651F4D61CE05F008D6AC9F0133LLOyx__Gs0G3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = FloatingPointFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_180A4618C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_180A46238(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_180A462DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_180A4634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, *(a4 + 16), *(a4 + 24), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_180A463D0()
{
  v1 = *(type metadata accessor for ICULegacyNumberFormatter.Signature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *(type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0) + 36);
    v11 = type metadata accessor for FloatingPointRoundingRule();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 36);
    v8 = type metadata accessor for FloatingPointRoundingRule();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_180A465E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
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

uint64_t sub_180A466A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
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

uint64_t sub_180A4675C()
{
  v1 = *(type metadata accessor for ICULegacyNumberFormatter.Signature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *(type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0) + 36);
    v11 = type metadata accessor for FloatingPointRoundingRule();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 36);
    v8 = type metadata accessor for FloatingPointRoundingRule();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_180A469AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_180A46A58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_180A46AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_180A46B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, *(a4 + 16), *(a4 + 24), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_180A46BE8()
{
  v1 = *(type metadata accessor for ICULegacyNumberFormatter.Signature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *(type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0) + 36);
    v11 = type metadata accessor for FloatingPointRoundingRule();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 36);
    v8 = type metadata accessor for FloatingPointRoundingRule();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

BOOL _s10Foundation30NumberFormatStyleConfigurationO9PrecisionVSQAASQ2eeoiySbx_xtFZTW_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static NumberFormatStyleConfiguration.Precision.Option.== infix(_:_:)(v5, v7);
}

BOOL _s10Foundation20ByteCountFormatStyleV5UnitsVs10SetAlgebraAAsAFP8containsySb7ElementQzFTW_0(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = *v1;
    if (*v1)
    {
      return v3 == v2;
    }

    goto LABEL_3;
  }

  v3 = *v1 & v2;
  if (!v3)
  {
LABEL_3:
    v3 = 0xFFFFLL;
  }

  return v3 == v2;
}

__n128 sub_180A46F54(__n128 *a1, uint64_t a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v4;
  *(a2 + 24) = v4;
  return result;
}

unint64_t _ss8DurationV10FoundationE15TimeFormatStyleV7PatternV6FieldsO26HourMinuteSecondCodingKeys33_D7219F805DFD42A580CB806B557B4301LLOs0K3KeyACsAMP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_180A46FE8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Duration.TimeFormatStyle.Attributed(0) + 24));

  return swift_unknownObjectRetain();
}

uint64_t sub_180A4706C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  *a2 = *(a1 + *(result + 20));
  return result;
}

uint64_t sub_180A470A4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_180A47100(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  specialized Duration.TimeFormatStyle.Attributed.subscript.setter(a1, v4);
}

uint64_t sub_180A471D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_180A4728C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_180A47370(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  specialized Duration.UnitsFormatStyle.Attributed.subscript.setter(a1, v4);
}

uint64_t sub_180A473E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_180A4748C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_180A47530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_180A475A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_180A47624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_180A47690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_180A47704()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_180A47784(uint64_t isStackAllocationSafe, uint64_t a2)
{

  return specialized _withResizingUCharBuffer(initialSize:_:)(isStackAllocationSafe, a2);
}

uint64_t sub_180A47808()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_180A47840@<X0>(_BYTE *a1@<X8>)
{
  result = KeyPathComparator.order.getter();
  *a1 = result;
  return result;
}

uint64_t sub_180A47908()
{
  v1 = *(v0 + 112);
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

__n128 sub_180A479E4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t getEnumTag for InflectionRule(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for BPlistError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t _s10Foundation15AttributeScopesO0A10AttributesVAA0B5ScopeA2aFP21encodingConfigurationAA0be7CodableG0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5();

  *a1 = v2;
  return result;
}

uint64_t _s10Foundation15AttributeScopesO0A10AttributesV012NumberFormatD0VAA0B5ScopeA2aHP21encodingConfigurationAA0bg7CodableI0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV012NumberFormatM0V_Ttg5();

  *a1 = v2;
  return result;
}

__n128 sub_180A47CA4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_180A47CB0@<D0>(_OWORD *a1@<X8>)
{
  AttributedSubstring.subscript.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

uint64_t sub_180A47D70(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;

  return specialized DiscontiguousAttributedSubstring.subscript.setter(a1, v6, v5);
}

__n128 sub_180A47DCC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_180A47DD8@<D0>(_OWORD *a1@<X8>)
{
  DiscontiguousAttributedSubstring.subscript.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

uint64_t sub_180A47E70(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_180A47F2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_180A47FF0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV04LinkB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV019PersonNameComponentB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV012NumberFormatD0V0e4PartB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV012NumberFormatD0V06SymbolB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV09DateFieldB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV024InlinePresentationIntentB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV018PresentationIntentB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV022MarkdownSourcePositionB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute and conformance AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV17ImageURLAttributeOAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ImageURLAttribute and conformance AttributeScopes.FoundationAttributes.ImageURLAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV011MeasurementB0VAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV09ByteCountB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV013DurationFieldB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV016WritingDirectionB0OAA28EncodableAttributedStringKeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV023LocalizedStringArgumentD0V0e7NumericgB0OAA019EncodableAttributedF3KeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV023LocalizedStringArgumentD0V0e4DategB0OAA019EncodableAttributedF3KeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV023LocalizedStringArgumentD0V0e12DateIntervalgB0OAA019EncodableAttributedF3KeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation15AttributeScopesO0A10AttributesV023LocalizedStringArgumentD0V0e11URLArgumentB0OAA019EncodableAttributedF3KeyAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute();
  *(a1 + 8) = result;
  return result;
}

double sub_180A48588@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4[1] = *a1;
  Calendar.locale.getter(v4);
  result = *v4;
  *a2 = v4[0];
  return result;
}

void *sub_180A485CC(__int128 *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  return Calendar.locale.setter(&v2);
}

double sub_180A4860C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(&v6, ObjectType, v3);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_180A4866C(__int128 *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  return Calendar.timeZone.setter(&v2);
}

uint64_t sub_180A486AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 56))(ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t sub_180A48724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 72))(ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t *sub_180A488DC(__int128 *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  return DateComponents.timeZone.setter(&v2);
}

uint64_t sub_180A4891C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48930(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 32) = v2;
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_180A4895C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48970(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  return result;
}

uint64_t sub_180A4899C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 72);
  *a2 = *(result + 64);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A489B0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 64) = v2;
  *(a2 + 72) = v4;
  return result;
}

uint64_t sub_180A489DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  *a2 = *(result + 80);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A489F0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 80) = v2;
  *(a2 + 88) = v4;
  return result;
}

uint64_t sub_180A48A1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *a2 = *(result + 112);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48A30(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 112) = v2;
  *(a2 + 120) = v4;
  return result;
}

uint64_t sub_180A48A5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 136);
  *a2 = *(result + 128);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48A70(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 128) = v2;
  *(a2 + 136) = v4;
  return result;
}

uint64_t sub_180A48A9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 152);
  *a2 = *(result + 144);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48AB0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 144) = v2;
  *(a2 + 152) = v4;
  return result;
}

uint64_t sub_180A48ADC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 168);
  *a2 = *(result + 160);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48AF0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 160) = v2;
  *(a2 + 168) = v4;
  return result;
}

uint64_t sub_180A48B1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 184);
  *a2 = *(result + 176);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48B30(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 176) = v2;
  *(a2 + 184) = v4;
  return result;
}

uint64_t sub_180A48B5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 200);
  *a2 = *(result + 192);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48B70(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 192) = v2;
  *(a2 + 200) = v4;
  return result;
}

uint64_t sub_180A48B9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 216);
  *a2 = *(result + 208);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48BB0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 208) = v2;
  *(a2 + 216) = v4;
  return result;
}

uint64_t sub_180A48BDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 248);
  *a2 = *(result + 240);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48BF0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 240) = v2;
  *(a2 + 248) = v4;
  return result;
}

uint64_t sub_180A48C1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 264);
  *a2 = *(result + 256);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48C30(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 256) = v2;
  *(a2 + 264) = v4;
  return result;
}

uint64_t sub_180A48C5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 104);
  *a2 = *(result + 96);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48C70(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 96) = v2;
  *(a2 + 104) = v4;
  return result;
}

uint64_t sub_180A48C9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 232);
  *a2 = *(result + 224);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48CB0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 224) = v2;
  *(a2 + 232) = v4;
  return result;
}

uint64_t sub_180A48CDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 280);
  *a2 = *(result + 272);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_180A48CF0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(a2 + 272) = v2;
  *(a2 + 280) = v4;
  return result;
}

uint64_t _s10Foundation4DataVSkAASk5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_180A48E30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

_BYTE *sub_180A48E88(_BYTE *result, uint64_t a2)
{
  v2 = 0x8000000000000000;
  if (*result)
  {
    v2 = 0;
  }

  *(*a2 + 32) = v2 & 0x8000000000000000 | *(*a2 + 32) & 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_180A48F18@<X0>(uint64_t result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a2 >= *(result + 14))
  {
    __break(1u);
  }

  *a3 = *(result + *a2);
  return result;
}

_BYTE *sub_180A48F7C(_BYTE *result, uint64_t a2, void *a3)
{
  if (*a3 >= *(a2 + 14))
  {
    __break(1u);
  }

  else
  {
    *(a2 + *a3) = *result;
  }

  return result;
}

_DWORD *sub_180A48FAC@<X0>(_DWORD *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (__OFSUB__(v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 - *result;
  }

  return result;
}

int *sub_180A48FF0@<X0>(int *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2;
    a2[1] = v3;
  }

  return result;
}

uint64_t sub_180A4904C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + 16);
  v3 = *(*result + 24);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_180A49110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Data._Representation.subscript.getter(*a2, *a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_180A49180(uint64_t *a1)
{
  result = *a1;
  if ((result & 0x8000000000000000) == 0)
  {
    return Data._Representation.count.setter(result);
  }

  __break(1u);
  return result;
}

unint64_t sub_180A491C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = Data._Representation.subscript.getter(*a2, a2[1], *a1, *(a1 + 8));
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_180A49240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = Data.subscript.getter(a2, *a1, a1[1], *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  *a4 = result;
  a4[1] = v6;
  return result;
}

__n128 sub_180A49290(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_180A492A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A492DC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_180A4935C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t _s10Foundation10CocoaErrorVAA13CustomNSErrorAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s10Foundation10POSIXErrorVAA26_ObjectiveCBridgeableErrorAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s10Foundation4DateV18ISO8601FormatStyleV17TimeZoneSeparatorOSHAASH4hash4intoys6HasherVz_tFTW_0(uint64_t a1)
{
  String.hash(into:)();
}

void _s10Foundation4DateV18ISO8601FormatStyleV17TimeZoneSeparatorOSYAASY8rawValue03RawJ0QzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = 58;
  if (*v1)
  {
    v2 = 0;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE000000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s10Foundation10BufferViewVyxGSlAASl5index_8offsetBy07limitedF05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

double sub_180A49A24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 104))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

double sub_180A49A8C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 128))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_180A49AE8(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 136);
  sub_1807A98E4(v6[0], v2);
  return v4(v6);
}

double sub_180A49B54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 152))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_180A49BBC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 176))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_180A49C18(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 184);
  sub_1807A98E4(v6[0], v2);
  return v4(v6);
}

uint64_t sub_180A49C84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_180A49CD0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_180A49D24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_180A49DBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

void *sub_180A49E88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 96))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_180A49EE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 104))(&v4);
}

double sub_180A49F3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 120))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

double sub_180A49FA4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 144))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_180A4A000(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 152);
  sub_1807A98E4(v6[0], v2);
  return v4(v6);
}

double sub_180A4A06C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 168))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

double sub_180A4A0D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 192))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_180A4A130(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 200);
  sub_1807A98E4(v6[0], v2);
  return v4(v6);
}

uint64_t sub_180A4A19C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_180A4A1E8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t _s10Foundation6LocaleV6ScriptV10CodingKeysOs0D3KeyAAsAHP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x6669746E6564695FLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_180A4A324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_180A4A3E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = MEMORY[0x1865CAB00](*a1, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  *a4 = result & 1;
  return result;
}

__n128 sub_180A4A428(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_180A4A43C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = MEMORY[0x1865CAAF0](*a1, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_180A4A488@<X0>(_BYTE *a4@<X8>)
{
  result = Set.isEmpty.getter();
  *a4 = result & 1;
  return result;
}

__n128 sub_180A4A4CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_180A4A4D8@<X0>(uint64_t *a4@<X8>)
{
  result = Set.count.getter();
  *a4 = result;
  return result;
}

uint64_t sub_180A4A518(void *a1)
{
  type metadata accessor for Array();

  return swift_getWitnessTable();
}

uint64_t sub_180A4A5B8(void *a1)
{
  type metadata accessor for Array();

  return swift_getWitnessTable();
}

uint64_t sub_180A4A65C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = MEMORY[0x1865CB550](*a1, *(a2 + a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_180A4A6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 84) == a2)
  {
    v6 = *(v5 + 48);

    return v6(a1);
  }

  else
  {
    v28[4] = v3;
    v28[5] = v4;
    v8 = a2;
    if (*(a3 + 16) == 1)
    {
      v9 = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x1EEE9AC00](a1);
      v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a3 = v26;
      v9 = TupleTypeMetadata;
      a2 = v8;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 68), a2, v9);
  }
}

uint64_t sub_180A4A8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    if (*(a4 + 16) == 1)
    {
      v9 = *(*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x1EEE9AC00](a1);
      v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a4 = v26;
      v9 = TupleTypeMetadata;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 56))(a1 + *(a4 + 68), a2, a2, v9);
  }
}

uint64_t sub_180A4AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 84) == a2)
  {
    v6 = *(v5 + 48);

    return v6(a1);
  }

  else
  {
    v28[4] = v3;
    v28[5] = v4;
    v8 = a2;
    if (*(a3 + 16) == 1)
    {
      v9 = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x1EEE9AC00](a1);
      v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a3 = v26;
      v9 = TupleTypeMetadata;
      a2 = v8;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 48))(a1 + *(a3 + 60), a2, v9);
  }
}

uint64_t sub_180A4AC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    if (*(a4 + 16) == 1)
    {
      v9 = *(*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = a1;
      MEMORY[0x1EEE9AC00](a1);
      v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v11)
      {
        v15 = 0;
        v16 = *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (v11 < 4)
        {
          goto LABEL_13;
        }

        if (&v14[-v16] < 0x20)
        {
          goto LABEL_13;
        }

        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v17 = (v16 + 16);
        v18 = v14 + 16;
        v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v20;
          v17 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        if (v11 != v15)
        {
LABEL_13:
          v21 = v11 - v15;
          v22 = 8 * v15;
          v23 = &v14[8 * v15];
          v24 = (v16 + v22);
          do
          {
            v25 = *v24++;
            *v23 = v25;
            v23 += 8;
            --v21;
          }

          while (v21);
        }
      }

      v26 = v12;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a4 = v26;
      v9 = TupleTypeMetadata;
      a1 = v10;
    }

    return (*(*(v9 - 8) + 56))(a1 + *(a4 + 60), a2, a2, v9);
  }
}

uint64_t sub_180A4ADFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PredicateExpressions.PredicateRegex._Storage(0);
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

uint64_t sub_180A4AEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PredicateExpressions.PredicateRegex._Storage(0);
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

uint64_t sub_180A4AF78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_180A4AFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_180A4B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v8 = *(a3 + 16);
    if (v8 == 1)
    {
      TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), a3, a4);
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      if (v8)
      {
        v14 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v15 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
        v16 = v8;
        do
        {
          v17 = *v14++;
          *v15++ = type metadata accessor for PredicateExpressions.Variable(255, v17, v11, v12);
          --v16;
        }

        while (v16);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(a1 + *(a3 + 44), a2);
  }
}

uint64_t sub_180A4B1F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    if (v7 == 1)
    {
      TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL), a3, a4);
    }

    else
    {
      MEMORY[0x1EEE9AC00](result);
      if (v7)
      {
        v12 = (*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v13 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        v14 = v7;
        do
        {
          v15 = *v12++;
          *v13++ = type metadata accessor for PredicateExpressions.Variable(255, v15, v9, v10);
          --v14;
        }

        while (v14);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(v5 + *(a4 + 44), a2, a2);
  }

  return result;
}

uint64_t *sub_180A4B350@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + a3 - 8);
  v5 = *a1;
  v7[0] = *a2;
  v7[1] = v5;
  return PredicateBindings.subscript.getter(v7, v4, a4);
}

uint64_t sub_180A4B3C0@<X0>(uint64_t *a4@<X8>)
{
  result = Set.count.getter();
  *a4 = result;
  return result;
}

__n128 sub_180A4B404(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_180A4B420@<X0>(_BYTE *a4@<X8>)
{
  result = Set.isEmpty.getter();
  *a4 = result & 1;
  return result;
}

uint64_t sub_180A4B4E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_180A4B52C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_180A4B580()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_180A4B5F8()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_180A4B638()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_180A4B678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_180A4B70C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_180A4B758(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

double sub_180A4B8E0@<D0>(_OWORD *a1@<X8>)
{
  static TimeZone.default.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_180A4B970@<X0>(_BYTE *a3@<X8>)
{
  result = URLResourceValues.isPackage.getter();
  *a3 = result;
  return result;
}

uint64_t sub_180A4B9E4@<X0>(_BYTE *a3@<X8>)
{
  result = URLResourceValues.isUserImmutable.getter();
  *a3 = result;
  return result;
}

uint64_t sub_180A4BA58@<X0>(_BYTE *a3@<X8>)
{
  result = URLResourceValues.isHidden.getter();
  *a3 = result;
  return result;
}

uint64_t sub_180A4BACC@<X0>(_BYTE *a1@<X8>)
{
  result = URLResourceValues.hasHiddenExtension.getter();
  *a1 = result;
  return result;
}

id sub_180A4BBAC@<X0>(uint64_t a3@<X8>)
{
  result = URLResourceValues.labelNumber.getter();
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_180A4BC28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized URLResourceValues._get<A>(_:)(*MEMORY[0x1E695DB48], *a1);
  *a2 = result;
  return result;
}

void sub_180A4BC60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized URLResourceValues.fileSecurity.setter(v1);
}

uint64_t sub_180A4BCB0@<X0>(_BYTE *a1@<X8>)
{
  result = URLResourceValues.isExcludedFromBackup.getter();
  *a1 = result;
  return result;
}

uint64_t sub_180A4BD64@<X0>(_BYTE *a3@<X8>)
{
  result = URLResourceValues.ubiquitousItemIsExcludedFromSync.getter();
  *a3 = result;
  return result;
}

uint64_t sub_180A4BE18@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.scheme.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_180A4BE48@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents.user.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_180A4BE8C@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents.password.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4BED0@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.host.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4BF14@<X0>(uint64_t a1@<X8>)
{
  result = URLComponents.port.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_180A4BF4C@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents.path.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4BF78(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return URLComponents.path.setter(v1, v2);
}

unint64_t sub_180A4BFB8@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents._URLComponents.query.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_180A4BFFC@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents.fragment.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C040@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents._URLComponents.percentEncodedUser.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C084@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.percentEncodedPassword.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C0C8@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents._URLComponents.percentEncodedHost.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C10C@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.encodedHost.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C150@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.percentEncodedPath.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C17C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return URLComponents.percentEncodedPath.setter(v1, v2);
}

uint64_t sub_180A4C1BC@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.percentEncodedQuery.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_180A4C200@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.percentEncodedFragment.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_180A4C244@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents._URLComponents.queryItems(percentEncoded:)(0);
  *a1 = result;
  return result;
}

unint64_t sub_180A4C29C@<X0>(unint64_t *a1@<X8>)
{
  result = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
  *a1 = result;
  return result;
}

uint64_t sub_180A4C3EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *_s10Foundation3URLV8TemplateV5ValueVs43ExpressibleByExtendedGraphemeClusterLiteralAAsAHP08extendedhiJ0x0ghiJ4TypeQz_tcfCTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = 0;
  return result;
}

double sub_180A4C470@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + a1[1];
  *a2 = result;
  return result;
}

double *sub_180A4C480(double *result, double *a2)
{
  if (*result < *a2 || (v2 = *result - *a2, v2 < 0.0))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v2;
  }

  return result;
}

double sub_180A4C4A8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

void *sub_180A4C4B4(void *result, uint64_t a2)
{
  if (*result < 0.0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = *result;
  }

  return result;
}

uint64_t _s10Foundation9IndexPathVSlAASl5index_8offsetBy0B0QzAG_SitFTW_0@<X0>(uint64_t *a2@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:)();
  *a2 = result;
  return result;
}

uint64_t _s10Foundation9IndexPathVSlAASl5index_8offsetBy07limitedF00B0QzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s10Foundation9IndexPathVSlAASl5countSivgTW_0()
{
  if (v0[16] > 1u)
  {
    if (v0[16] == 2)
    {
      return *(*v0 + 16);
    }

    else
    {
      return 0;
    }
  }

  else if (v0[16])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_180A4C580@<X0>(unint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = IndexPath.subscript.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_180A4C608@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = IndexPath.Storage.subscript.getter(*a2, a2[1], *a1, *(a1 + 8), *(a1 + 16));
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_180A4C668()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4C6A4(unsigned __int8 *a1, uint64_t a2)
{
  (*(a2 + 56))(v4, a2, *a1);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return outlined init with take of Equatable(v4, a2);
}

uint64_t sub_180A4C6F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for OptionalComparator(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  result = OptionalComparator.order.getter(v5);
  *a3 = result;
  return result;
}

uint64_t sub_180A4C734(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for OptionalComparator(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  return OptionalComparator.order.setter(v4, v5);
}

__n128 sub_180A4C780(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t _s10Foundation9MachErrorVAA13CustomNSErrorAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MachError and conformance MachError();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_180A4C7C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4C840()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4C890()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4C8C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_180A4CA80(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3[1] = *a1;
  PersonNameComponents.phoneticRepresentation.getter(v3);
  *a2 = v3[0];
}

void sub_180A4CAC4(uint64_t *a1)
{
  v1 = *a1;

  PersonNameComponents.phoneticRepresentation.setter(&v1);
}

__n128 sub_180A4CBB4(__n128 *a1, uint64_t a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v4;
  *(a2 + 24) = v4;
  return result;
}

__n128 sub_180A4CC48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_180A4CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Measurement<>.FormatStyle(0, *(a3 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_180A4CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Measurement<>.FormatStyle(0, *(a4 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

void *_s10Foundation10MorphologyV13DeterminationOSYAASY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void _s10Foundation10MorphologyV13DeterminationOSYAASY8rawValue03RawE0QzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t _s10Foundation10MorphologyV13DeterminationOSHAASH4hash4intoys6HasherVz_tFTW_0()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1865CD060](v1);
}

uint64_t _s10Foundation10MorphologyV14_CustomPronounVSQAASQ2eeoiySbx_xtFZTW_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static Morphology._CustomPronoun.== infix(_:_:)(v8, v9) & 1;
}

uint64_t sub_180A4CE98()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_180A4CEF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_180A4CEFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  return result;
}

uint64_t sub_180A4CF40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_180A4CF4C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_180A4CF90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_180A4CF9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_180A4CFE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_180A4CFEC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_180A4D030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_180A4D03C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

unint64_t _s10Foundation8IndexSetV9RangeViewVSlAASl5index_8offsetBy07limitedH00B0QzSgAJ_SiAJtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

char *_s10Foundation8IndexSetVSlAASl5index_8offsetBy0B0QzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return specialized BidirectionalCollection.index(_:offsetBy:)(v6, a2, *v3, a3);
}

double _s10Foundation8IndexSetVSlAASl07_customB18OfEquatableElementy0B0QzSgSg0G0QzFTW_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_180A4D1B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NSNotificationCenter.AsyncMessageSequence(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_180A4D1FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4D234()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_180A4D280()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4D2C0()
{
  MEMORY[0x1865D27A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4D300@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMd, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMR);
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_180A4D344(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMd, &_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMR);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t sub_180A4D394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_180A4D450(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd, &_s10Foundation24FloatingPointFormatStyleVySdGSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_180A4D510()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4D548()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id _sSo8NSStringCs43ExpressibleByExtendedGraphemeClusterLiteral10FoundationsACP08extendedefG0x0defG4TypeQz_tcfCTW_0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = NSString.init(stringLiteral:)(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_180A4D604()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_180A4D6DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) cachePolicy];
  *a2 = result;
  return result;
}

id sub_180A4D73C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) timeoutInterval];
  *a2 = v4;
  return result;
}

id sub_180A4D7CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) networkServiceType];
  *a2 = result;
  return result;
}

id sub_180A4D82C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsCellularAccess];
  *a2 = result;
  return result;
}

id sub_180A4D88C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsExpensiveNetworkAccess];
  *a2 = result;
  return result;
}

id sub_180A4D8EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsConstrainedNetworkAccess];
  *a2 = result;
  return result;
}

id sub_180A4D94C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsUltraConstrainedNetworkAccess];
  *a2 = result;
  return result;
}

id sub_180A4D9AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) assumesHTTP3Capable];
  *a2 = result;
  return result;
}

id sub_180A4DA0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) attribution];
  *a2 = result;
  return result;
}

id sub_180A4DA6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) requiresDNSSECValidation];
  *a2 = result;
  return result;
}

id sub_180A4DACC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsPersistentDNS];
  *a2 = result;
  return result;
}

uint64_t sub_180A4DB60(void *a1)
{

  specialized URLRequest.allHTTPHeaderFields.setter(v1);
}

id sub_180A4DBAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) HTTPBodyStream];
  *a2 = result;
  return result;
}

void sub_180A4DBEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized URLRequest.httpBodyStream.setter(v1);
}

id sub_180A4DC3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) HTTPShouldHandleCookies];
  *a2 = result;
  return result;
}

id sub_180A4DCCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) HTTPShouldUsePipelining];
  *a2 = result;
  return result;
}

uint64_t sub_180A4DD2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4DD88()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_180A4DDC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4DE18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4DE50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4DE88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4DEFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t _s10Foundation8URLErrorVAA26_ObjectiveCBridgeableErrorAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLError and conformance URLError();
  *(a1 + 8) = result;
  return result;
}

uint64_t *_sSS10FoundationE17LocalizationValueVs43ExpressibleByExtendedGraphemeClusterLiteralAAsADP08extendedghI0x0fghI4TypeQz_tcfCTW_0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t _sSS10FoundationE19LocalizationOptionsV20_PluralizationNumberO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOs0F3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x6369666963657073;
  }
}

uint64_t _sSS10FoundationE19LocalizationOptionsV20_PluralizationNumberOSQAASQ2eeoiySbx_xtFZTW_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_180A4E0D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_180A4E108()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4E144()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4E17C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4E1B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4E1F0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_180A4E284()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_180A4E348()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_180A4E39C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_180A4E3DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4E414()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_180A4E46C@<X0>(void *a1@<X8>)
{
  result = NSScanner.currentIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_180A4E49C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4E4F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_180A4E52C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_180A4E564()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4E59C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_180A4E5DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4E614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s10Foundation20PersonNameComponentsV15AttributedStyleV10CodingKeys33_B9CD14CB2F013B0D23DE87D4C1A693FALLOs0G3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t _s10Foundation20PersonNameComponentsV15AttributedStyleVAA06FormatF0A2aFP6localeyxAA6LocaleVFTW_0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 8) = *a1;
  return swift_unknownObjectRetain();
}

uint64_t sub_180A4E760()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_180A4E7B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_180A4E7F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_180A4E830()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void _s12CoreGraphics7CGFloatV10FoundationE36_unconditionallyBridgeFromObjectiveCyACSo8NSNumberCSgFZ_0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 doubleValue];
    if ((~v2 & 0x7FF0000000000000) != 0 || (v2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      specialized Double.init(exactly:)(v1);
    }

    else
    {
      [v1 doubleValue];
    }
  }
}

uint64_t sub_180A4E968()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 299, 7);
}

uint64_t storeEnumTagSinglePayload for os_unfair_recursive_lock_s(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ICUDateFormatter.AttributePosition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Date.RelativeFormatStyle.Presentation.Option@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t specialized FloatingPointRoundingRule.CodingValue.init(rawValue:)(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t specialized FormatStyleCapitalizationContext.Option.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t NSObject.KeyValueObservingPublisher.init(object:keyPath:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t NSObject.KeyValueObservingPublisher.didChange()(uint64_t a1)
{
  *(swift_allocObject() + 16) = *(a1 + 16);
  swift_getWitnessTable();
  Publisher.map<A>(_:)();
}

uint64_t static NSObject.KeyValueObservingPublisher.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = a1[1];
  v6 = a1[2];
  type metadata accessor for AnyKeyPath();

  v7 = MEMORY[0x1865CBE20](v5, v3);

  return v7 & (v6 == v4);
}

void NSObject.KVOSubscription.customMirror.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(v0 + *(v1 + 176));
  os_unfair_lock_lock(v9);
  v17 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_181215ED0;
  *(v10 + 32) = 0x746176726573626FLL;
  *(v10 + 40) = 0xEB000000006E6F69;
  v11 = v0[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21NSKeyValueObservationCSgMd, &_s10Foundation21NSKeyValueObservationCSgMR);
  *(v10 + 48) = v11;
  *(v10 + 72) = v12;
  *(v10 + 80) = 0x646E616D6564;
  v13 = v0[3];
  *(v10 + 120) = MEMORY[0x1E695BEC8];
  *(v10 + 88) = 0xE600000000000000;
  *(v10 + 96) = v13;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  v15 = v11;

  Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  os_unfair_lock_unlock(v9);
}

void NSObject.KVOSubscription.playgroundDescription.getter(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0x63736275534F564BLL;
  a1[1] = 0xEF6E6F6974706972;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DIR(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DIR(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NSDecimal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSDecimal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

id _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo36NSURLUbiquitousSharedItemPermissionsa_Tt1gq5Tm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v6 = a1;
  v7 = v6;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (!__CFStringIsCF())
    {
      v9 = v7;
      String.init(_nativeStorage:)();
      if (!v10 && [v9 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_21;
    }

    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v13)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_21:
      v14 = String._bridgeToObjectiveCImpl()();

      return v14;
    }

    goto LABEL_7;
  }

  result = [v7 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v12)
    {
LABEL_8:

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZ10Foundation16ErrorUserInfoKeyV_Tt1g5(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v5 = a1;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (__CFStringIsCF())
    {
      v8 = 0;

      v10 = 0xE000000000000000;
      goto LABEL_21;
    }

    v11 = v6;
    v12 = String.init(_nativeStorage:)();
    if (v13)
    {
      v8 = v12;
      v10 = v13;

      goto LABEL_21;
    }

    if ([v11 length])
    {
      v8 = String.init(_cocoaString:)();
      v10 = v17;
      goto LABEL_21;
    }

LABEL_18:
    v8 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_21;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v10 = v9;

LABEL_21:
      *a2 = v8;
      a2[1] = v10;
      return;
    }

    goto LABEL_7;
  }

  v14 = [v6 UTF8String];
  if (v14)
  {
    v15 = String.init(utf8String:)(v14);
    if (v16)
    {
LABEL_15:
      v8 = v15;
      v10 = v16;

      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v18;
      v10 = v19;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t protocol witness for SetAlgebra.init<A>(_:) in conformance NSKeyValueObservingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized SetAlgebra.init<A>(_:)();
  *a1 = result;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSRunLoopMode@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo36NSURLUbiquitousSharedItemPermissionsa_Tt1gq5Tm(a1, partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:), closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:));
  *a2 = result;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo36NSURLUbiquitousSharedItemPermissionsa_Tt1gq5Tm(a1, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFDictionaryRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance NSKeyValueObservingOptions@<X0>(uint64_t *a2@<X8>)
{
  v3 = _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_n();

  *a2 = v3;
  return result;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance CFCalendarIdentifier@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileProtectionType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProtectionType and conformance NSFileProtectionType, type metadata accessor for NSFileProtectionType, &protocol conformance descriptor for NSFileProtectionType);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileProtectionType and conformance NSFileProtectionType, type metadata accessor for NSFileProtectionType, &protocol conformance descriptor for NSFileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSRunLoopMode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode, &protocol conformance descriptor for NSRunLoopMode);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode, &protocol conformance descriptor for NSRunLoopMode);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLFileResourceType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLFileResourceType and conformance NSURLFileResourceType, type metadata accessor for NSURLFileResourceType, &protocol conformance descriptor for NSURLFileResourceType);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLFileResourceType and conformance NSURLFileResourceType, type metadata accessor for NSURLFileResourceType, &protocol conformance descriptor for NSURLFileResourceType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLUbiquitousItemDownloadingStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLUbiquitousItemDownloadingStatus and conformance NSURLUbiquitousItemDownloadingStatus, type metadata accessor for NSURLUbiquitousItemDownloadingStatus, &protocol conformance descriptor for NSURLUbiquitousItemDownloadingStatus);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLUbiquitousItemDownloadingStatus and conformance NSURLUbiquitousItemDownloadingStatus, type metadata accessor for NSURLUbiquitousItemDownloadingStatus, &protocol conformance descriptor for NSURLUbiquitousItemDownloadingStatus);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLUbiquitousSharedItemRole(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLUbiquitousSharedItemRole and conformance NSURLUbiquitousSharedItemRole, type metadata accessor for NSURLUbiquitousSharedItemRole, &protocol conformance descriptor for NSURLUbiquitousSharedItemRole);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLUbiquitousSharedItemRole and conformance NSURLUbiquitousSharedItemRole, type metadata accessor for NSURLUbiquitousSharedItemRole, &protocol conformance descriptor for NSURLUbiquitousSharedItemRole);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLUbiquitousSharedItemPermissions(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLUbiquitousSharedItemPermissions and conformance NSURLUbiquitousSharedItemPermissions, type metadata accessor for NSURLUbiquitousSharedItemPermissions, &protocol conformance descriptor for NSURLUbiquitousSharedItemPermissions);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLUbiquitousSharedItemPermissions and conformance NSURLUbiquitousSharedItemPermissions, type metadata accessor for NSURLUbiquitousSharedItemPermissions, &protocol conformance descriptor for NSURLUbiquitousSharedItemPermissions);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLFileProtectionType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLFileProtectionType and conformance NSURLFileProtectionType, type metadata accessor for NSURLFileProtectionType, &protocol conformance descriptor for NSURLFileProtectionType);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSURLFileProtectionType and conformance NSURLFileProtectionType, type metadata accessor for NSURLFileProtectionType, &protocol conformance descriptor for NSURLFileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSNotificationName@<X0>(uint64_t *a2@<X8>)
{
  v3 = String._bridgeToObjectiveCImpl()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSLinguisticTag(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSLinguisticTag and conformance NSLinguisticTag, type metadata accessor for NSLinguisticTag, &protocol conformance descriptor for NSLinguisticTag);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSLinguisticTag and conformance NSLinguisticTag, type metadata accessor for NSLinguisticTag, &protocol conformance descriptor for NSLinguisticTag);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)(*v0);
  v2 = MEMORY[0x1865CB280](v1);

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(*v1);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t base witness table accessor for Equatable in NSInlinePresentationIntent()
{
  return lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent, type metadata accessor for NSInlinePresentationIntent, &protocol conformance descriptor for NSInlinePresentationIntent);
}

{
  return lazy protocol witness table accessor for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent(&lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent, &protocol conformance descriptor for NSInlinePresentationIntent);
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