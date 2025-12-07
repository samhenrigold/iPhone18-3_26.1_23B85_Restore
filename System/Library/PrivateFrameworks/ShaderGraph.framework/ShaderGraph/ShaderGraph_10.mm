uint64_t closure #2 in GraphCompiler.extract(node:from:withName:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*(*a2 + 16))
  {
    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = *(result + 56);
    v10 = *(result + 72);
    v9 = *(result + 80);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*result);
    if (v11)
    {
      v12 = *(*(v3 + 56) + 8 * result);
      if (v12 != -7)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v13 = *(a3 + 64);
          if (v12 < *(v13 + 16))
          {
            v14 = v13 + 48 * v12;
            v30 = *(v14 + 32);
            v58 = *(v14 + 48);
            specialized ShaderGraphNode.output(labeled:)(&v32, v7, v6, v58);
            result = v33;
            if (!v33)
            {
              return result;
            }

            v15 = v34;
            v16 = v35;
            v17 = *a2;
            if (*(*a2 + 16))
            {
              v28 = v33;
              v29 = v34;
              v18 = v35;
              v26 = v32;
              v19 = v36;
              v27 = v37;
              v20 = v38;
              result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
              if (v21)
              {
                v22 = *(*(v17 + 56) + 8 * result);
                if (v22 == -7)
                {
                  goto LABEL_18;
                }

                if ((v22 & 0x8000000000000000) == 0)
                {
                  v23 = *(a3 + 64);
                  if (v22 < *(v23 + 16))
                  {
                    v24 = v23 + 48 * v22;
                    v25 = *(v24 + 32);
                    specialized ShaderGraphNode.output(labeled:)(&v39, v10, v9, *(v24 + 40));
                    if (v40)
                    {
                      v46[0] = v29;
                      v46[1] = v18;
                      v47[0] = v41;
                      v47[1] = v42;
                      v48[0] = v26;
                      v48[1] = v28;
                      v48[2] = v29;
                      v48[3] = v18;
                      v48[4] = v19;
                      v49 = v27 & 1;
                      v50 = v20;
                      v51 = v39;
                      v52 = v40;
                      v53 = v41;
                      v54 = v42;
                      v55 = v43;
                      v56 = v44 & 1;
                      v57 = v45;

                      outlined copy of NodePersonality(v30);

                      outlined copy of NodePersonality(v25);

                      outlined init with copy of String(v46, v31);

                      outlined init with copy of String(v47, v31);
                      UserGraph.connect(_:to:)(v48, &v51);

                      outlined destroy of String(v47);
                      outlined consume of NodePersonality(v25);

                      outlined destroy of String(v46);
                      outlined consume of NodePersonality(v30);
                    }

LABEL_18:

                    outlined copy of NodePersonality(v30);

                    v51 = v29;
                    v52 = v18;
                    outlined destroy of String(&v51);
                    outlined consume of NodePersonality(v30);
                  }

LABEL_24:
                  __break(1u);
                  return result;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v51 = v29;
              v52 = v18;
            }

            else
            {

              v51 = v15;
              v52 = v16;
            }

            return outlined destroy of String(&v51);
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }
  }

  return result;
}

void closure #1 in UserGraph.convertColors(to:)(unint64_t *a1, CGColorSpace *a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 >> 61)
  {
    return;
  }

  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v3 + 32);
  v65[0] = *(v3 + 16);
  v65[1] = v8;
  v9 = *(v3 + 64);
  v65[2] = *(v3 + 48);
  v65[3] = v9;
  v66 = *(v3 + 80);
  v10 = *&v65[0];
  if (v66 == 22)
  {
    v61 = a3;
    v62 = v7;
    v11 = 1;
    v12 = 3;
  }

  else
  {
    if (v66 != 23)
    {
      return;
    }

    v61 = a3;
    v62 = v7;
    v11 = 0;
    v12 = 4;
  }

  outlined init with copy of SGDataTypeStorage(v65, &v63);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a2, kCGRenderingIntentDefault, v10, 0);
  if (!CopyByMatchingToColorSpace)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    MEMORY[0x266771550](0xD00000000000002FLL, 0x8000000265F30A80);
    v24 = CGColorSpaceCopyName(a2);
    if (v24)
    {
      type metadata accessor for CFStringRef(0);
      v25 = v24;
      v26 = String.init<A>(describing:)();
      v28 = v27;
    }

    else
    {
      v26 = 0x3E6C696E3CLL;
      v28 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v26, v28);

    MEMORY[0x266771550](39, 0xE100000000000000);
    v43 = v63;
    v44 = v64;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v45 = 25;
    *(v45 + 8) = v43;
    *(v45 + 16) = v44;
    swift_willThrow();
    outlined destroy of SGDataTypeStorage(v65);
    return;
  }

  v14 = CopyByMatchingToColorSpace;
  v15 = CGColorRef.components.getter();
  if (!v15)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x266771550](0xD000000000000036, 0x8000000265F30AB0);
    type metadata accessor for CGColorRef(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    v29 = v63;
    v30 = v64;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v32 = 47;
LABEL_41:
    *v31 = v32;
    *(v31 + 8) = v29;
    *(v31 + 16) = v30;
    swift_willThrow();
    outlined destroy of SGDataTypeStorage(v65);

    return;
  }

  v59 = v6;
  v60 = v5;
  v16 = *(v15 + 16);
  if (v16)
  {
    v54 = v14;
    v63 = MEMORY[0x277D84F90];
    v56 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v56;
    v18 = v63;
    v19 = *(v63 + 16);
    v20 = 32;
    do
    {
      v21 = *(v17 + v20);
      v63 = v18;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 1, 1);
        v17 = v56;
        v18 = v63;
      }

      v23 = v21;
      *(v18 + 16) = v19 + 1;
      *(v18 + 4 * v19 + 32) = v23;
      v20 += 8;
      ++v19;
      --v16;
    }

    while (v16);

    v14 = v54;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v33 = *(v18 + 16);
  if (v33 < v12)
  {

    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    MEMORY[0x266771550](0xD000000000000027, 0x8000000265F30AF0);
    v34 = CGColorSpaceCopyName(a2);
    if (v34)
    {
      type metadata accessor for CFStringRef(0);
      v35 = v34;
      v36 = String.init<A>(describing:)();
      v38 = v37;
    }

    else
    {
      v36 = 0x3E6C696E3CLL;
      v38 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v36, v38);

    MEMORY[0x266771550](39, 0xE100000000000000);
    v29 = v63;
    v30 = v64;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v32 = 25;
    goto LABEL_41;
  }

  if (v11)
  {
    if (one-time initialization token for color3 != -1)
    {
      goto LABEL_46;
    }

    v39 = v62;
    if (!v33)
    {
      goto LABEL_47;
    }

LABEL_24:
    if (v33 != 1)
    {
      if (v33 >= 3)
      {
        v40 = static MetalDataType.color3;
        *&v41 = *(v18 + 32);
        *(&v41 + 1) = *(v18 + 40);
        v57 = v41;
        swift_retain_n();

        for (i = 8; ; i = 9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_265F1F670;
          *(inited + 32) = 7632239;
          *(inited + 40) = 0xE300000000000000;
          *(inited + 48) = v40;
          v48 = swift_allocObject();
          *(v48 + 16) = v57;
          *(v48 + 80) = i;
          *(v48 + 88) = v40;
          v62 = v40;

          v18 = v61;
          UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v48, &v67);

          swift_setDeallocating();
          swift_arrayDestroy();
          v49 = *(&v67 + 1);
          outlined copy of NodePersonality(v3);

          specialized Sequence.forEach(_:)(v49, v60, v61);
          outlined consume of NodePersonality(v3);

          v50 = v68;
          outlined copy of NodePersonality(v3);

          specialized Sequence.forEach(_:)(v50, v59, v61);
          outlined consume of NodePersonality(v3);

          specialized UserGraph.removeEdges(connectedTo:)(v39);
          v51 = *(v61 + 64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v61 + 64) = v51;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v39 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
            *(v61 + 64) = v51;
            if ((v39 & 0x8000000000000000) != 0)
            {
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          if (v39 < *(v51 + 2))
          {
            ShaderGraphNode.update(id:)(-7);
            outlined destroy of SGDataTypeStorage(v65);

            v69 = v67;
            outlined destroy of NodePersonality(&v69);

            return;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          swift_once();
          v33 = *(v18 + 16);
          v39 = v62;
          if (v33)
          {
            goto LABEL_24;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          swift_once();
          v33 = *(v18 + 16);
          v39 = v62;
          if (!v33)
          {
            goto LABEL_49;
          }

LABEL_31:
          if (v33 == 1)
          {
            goto LABEL_51;
          }

          if (v33 < 3)
          {
            goto LABEL_53;
          }

          if (v33 == 3)
          {
            goto LABEL_54;
          }

          v40 = static MetalDataType.color4;
          v58 = *(v18 + 32);
          v53 = *(v18 + 36);
          v55 = *(v18 + 40);
          swift_retain_n();

          *&v46 = __PAIR64__(v53, v58);
          *(&v46 + 1) = v55;
          v57 = v46;
        }
      }

      goto LABEL_52;
    }
  }

  else
  {
    if (one-time initialization token for color4 != -1)
    {
      goto LABEL_48;
    }

    v39 = v62;
    if (v33)
    {
      goto LABEL_31;
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void *specialized closure #1 in OrderedSet.removeSubrange(_:)(void *result, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  result = *(a3 + 8);
  v9 = result[2];
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_19;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v23 = *(a3 + 8);

    v22 = a5;
    v24 = a4;
    v12 = a5 - a4;
    if (a5 == a4)
    {
LABEL_15:

      v21 = *(a3 + 8);

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v24, v22, v21, v8, a2);
    }

    if (a5 >= a4)
    {
      v13 = a5 - a4;
    }

    else
    {
      v13 = 0;
    }

    v14 = (v23 + 24 * a4 + 48);
    while (v13)
    {
      v25 = v12;
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = *(v14 - 2);
      v18 = *(a3 + 8);

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v17, v15, v16, v18, v8, a2);
      v20 = v19;

      if (v20)
      {
        goto LABEL_17;
      }

      specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)();

      --v13;
      v14 += 3;
      v12 = v25 - 1;
      if (v25 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of MetalStitchingBackend(uint64_t a1)
{
  v2 = type metadata accessor for MetalStitchingBackend(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t outlined copy of MetalLibrary(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t outlined consume of MetalLibrary(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

double _s11ShaderGraph04UserB8CompilerC14CompileContextVSgWOi0_(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey()
{
  result = lazy protocol witness table cache variable for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey;
  if (!lazy protocol witness table cache variable for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GPUSpecificCacheKey and conformance GPUSpecificCacheKey);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph0B14CompilerErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for GraphCompilerErrors(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphCompilerErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GraphCompilerErrors(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GPUSpecificCacheKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GPUSpecificCacheKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265E28F18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OSSignposter();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265E28FD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for GraphCompiler(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined copy of (name: String, type: MetalDataType)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_265E2915C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined consume of MetalLibrary?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of MetalLibrary(result, a2 & 1);
  }

  return result;
}

unint64_t specialized GraphCompiler.constantValue(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61)
  {
    _StringGuts.grow(_:)(31);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v4);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    *(v5 + 8) = 0x8000000265F30A40;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v2 = *(result + 64);
    *(a2 + 32) = *(result + 48);
    *(a2 + 48) = v2;
    *(a2 + 64) = *(result + 80);
    v3 = *(result + 32);
    *a2 = *(result + 16);
    *(a2 + 16) = v3;
  }

  return result;
}

unint64_t specialized GraphCompiler.floatValue(from:)(unint64_t result)
{
  if (result >> 61)
  {
    _StringGuts.grow(_:)(31);

    v1 = 0x8000000265F30A40;
    v2 = 0xD00000000000001DLL;
LABEL_6:
    v5 = v2;
    v6 = v1;
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v3);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    lazy protocol witness table accessor for type GraphCompilerErrors and conformance GraphCompilerErrors();
    swift_allocError();
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  if (*(result + 80) != 5)
  {
    _StringGuts.grow(_:)(21);

    v1 = 0x8000000265F30A60;
    v2 = 0xD000000000000013;
    goto LABEL_6;
  }

  return result;
}

unint64_t specialized GraphCompiler.samplerName(for:in:)(unint64_t result, void *a2)
{
  v2 = a2;
  v3 = *(result + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v61 = a2;
  v64 = result + 32;
  v59 = v3;
  do
  {
    v60 = v6;
    while (1)
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v7 = v5 + 56 * v4;
      v9 = *v7;
      v8 = *(v7 + 8);
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      v14 = *(v7 + 48);
      v75 = v9;
      v76 = v8;
      v82 = v8;
      v77 = v11;
      v78 = v10;
      v66 = v12;
      v79 = v12;
      v67 = v13;
      v80 = v13;
      v68 = v14;
      v81 = v14;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_62;
      }

      v70 = v11;
      v72 = v10;
      v16 = v2[1];
      v17 = v2[2];
      v18 = v16 + 32;
      v19 = *(v16 + 16);
      if (*v2)
      {
        result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v18, v19, *v2 + 16, *v2 + 32);
        if (v20)
        {
          goto LABEL_7;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!v19)
        {
          goto LABEL_7;
        }

        result = 0;
        while (*(v18 + 8 * result) != v9)
        {
          if (v19 == ++result)
          {
            goto LABEL_7;
          }
        }
      }

      if (result >= *(v17 + 16))
      {
        goto LABEL_64;
      }

      v21 = (v17 + 48 * result);
      v22 = v21[7];
      v23 = v21[8];
      v24 = v21[9];
      v25 = *(v23 + 16);
      if (v22)
      {
        v65 = v24;

        v26 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v75, v23 + 32, v25, v22 + 16, v22 + 32);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          return result;
        }

LABEL_5:
        v5 = v64;
        goto LABEL_6;
      }

      if (!v25)
      {

        goto LABEL_6;
      }

      v65 = v24;
      v62 = v4;
      v63 = v67 ^ 1;

      v26 = 0;
      v31 = (v23 + 80);
      while (1)
      {
        if (*(v31 - 6) != v9)
        {
          goto LABEL_29;
        }

        v32 = *(v31 - 5);
        v33 = *(v31 - 4);
        v34 = *(v31 - 3);
        v69 = *(v31 - 2);
        v35 = *(v31 - 8);
        v71 = *v31;
        v36 = *(*v32 + 128);

        if ((v36(v82) & 1) == 0)
        {

          goto LABEL_29;
        }

        if (v33 != v70 || v34 != v72)
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            goto LABEL_29;
          }

          if ((v35 & 1) == 0)
          {
            break;
          }

          goto LABEL_38;
        }

        if ((v35 & 1) == 0)
        {
          break;
        }

LABEL_38:
        v39 = v67;
        if (v71 != v68)
        {
          v39 = 0;
        }

        if (v39)
        {
          goto LABEL_47;
        }

LABEL_29:
        v31 += 7;
        if (v25 == ++v26)
        {
          v6 = v60;
          v2 = v61;
          v4 = v62;
          v3 = v59;
          goto LABEL_5;
        }
      }

      v40 = v63;
      if (v69 != v66)
      {
        v40 = 0;
      }

      if (v40 != 1 || v71 != v68)
      {
        goto LABEL_29;
      }

LABEL_47:
      v6 = v60;
      v2 = v61;
      v4 = v62;
      v3 = v59;
LABEL_17:
      if (v26 >= *(v65 + 16))
      {
        goto LABEL_66;
      }

      v29 = v65 + 56 * v26;
      v5 = v64;
      if (*(v29 + 40))
      {
        v30 = *(v29 + 32);
        v82 = v76;
        result = v78;
        if (v30 != -7)
        {
          break;
        }
      }

LABEL_6:

LABEL_7:
      if (v4 == v3)
      {
        goto LABEL_58;
      }
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    v41 = v2[8];
    if (v30 >= *(v41 + 16))
    {
      goto LABEL_68;
    }

    v42 = v41 + 48 * v30;
    v44 = *(v42 + 32);
    v43 = *(v42 + 40);
    v46 = *(v42 + 48);
    v45 = *(v42 + 56);
    v71 = *(v42 + 64);
    v72 = v45;
    LODWORD(v70) = *(v42 + 72);

    outlined copy of NodePersonality(v44);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v48 = *(v6 + 16);
    v47 = *(v6 + 24);
    if (v48 >= v47 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v48 + 1;
    v49 = v6 + 48 * v48;
    *(v49 + 32) = v44;
    *(v49 + 40) = v43;
    v50 = v71;
    v51 = v72;
    *(v49 + 48) = v46;
    *(v49 + 56) = v51;
    *(v49 + 64) = v50;
    *(v49 + 72) = v70;
    v2 = v61;
    v5 = v64;
  }

  while (v4 != v3);
LABEL_58:
  MEMORY[0x28223BE20](result);
  v58[2] = v2;
  v58[3] = v58[4];
  v52 = v58[5];
  v53 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SSsAE_pTg5(partial apply for closure #2 in GraphCompiler.samplerName(for:in:), v58, v6);
  if (v52)
  {
  }

  v54 = v53;

  v73 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v55 = BidirectionalCollection<>.joined(separator:)();
  v57 = v56;

  v73 = 0x5F72656C706D6173;
  v74 = 0xE800000000000000;
  MEMORY[0x266771550](v55, v57);

  return v73;
}

uint64_t sub_265E29A64()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MetalLibrary(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetalLibrary(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t OrderedDictionary.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v34 = a2;
  v35 = a1;
  v46 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for Optional();
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v33 = a3;
  v51 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 6109787;
  }

  v55 = 91;
  v56 = 0xE100000000000000;
  v45 = v16;
  v51 = v35;
  v52 = v34;
  v53 = v33;
  v54 = 0;
  v44 = type metadata accessor for OrderedDictionary.Iterator(0, a4, a5, v44);

  OrderedDictionary.Iterator.next()(v44, v18);
  v24 = v47 + 32;
  v23 = *(v47 + 32);
  v23(v21, v18, v45);
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = *(v25 + 48);
  v42 = v25 + 48;
  v43 = v26;
  if (v26(v21, 1, TupleTypeMetadata2) != 1)
  {
    v47 = v24;
    v41 = v23;
    v27 = *(TupleTypeMetadata2 + 48);
    v39 = *(v48 + 32);
    v40 = v48 + 32;
    v39(v14, v21, a4);
    v28 = v46;
    v37 = *(v46 + 32);
    v38 = v46 + 32;
    v37(v10, &v21[v27], a5);
    v49 = 0;
    v50 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x266771550](8250, 0xE200000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x266771550](v49, v50);

    v29 = *(v28 + 8);
    v46 = v28 + 8;
    v29(v10, a5);
    v30 = *(v48 + 8);
    v48 += 8;
    v30(v14, a4);
    OrderedDictionary.Iterator.next()(v44, v18);
    v41(v21, v18, v45);
    if (v43(v21, 1, TupleTypeMetadata2) != 1)
    {
      v36 = v21;
      do
      {
        v31 = *(TupleTypeMetadata2 + 48);
        v39(v14, v21, a4);
        v37(v10, &v21[v31], a5);
        MEMORY[0x266771550](8236, 0xE200000000000000);
        v49 = 0;
        v50 = 0xE000000000000000;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x266771550](8250, 0xE200000000000000);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x266771550](v49, v50);
        v21 = v36;

        v29(v10, a5);
        v30(v14, a4);
        OrderedDictionary.Iterator.next()(v44, v18);
        v41(v21, v18, v45);
      }

      while (v43(v21, 1, TupleTypeMetadata2) != 1);
    }
  }

  MEMORY[0x266771550](93, 0xE100000000000000);
  return v55;
}

id buildFailureMaterial(usesSurfaceUniforms:usesGeometryUniforms:device:)(char a1, char a2, void *a3)
{
  v70[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v70[0] = 0;
  v8 = [a3 newDefaultLibraryWithBundle:v7 error:v70];
  v9 = v70[0];
  if (!v8)
  {
    v15 = v70[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_17:

    return v7;
  }

  v69 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_265F24070;
    v11 = objc_allocWithZone(MEMORY[0x277CD6E00]);
    v12 = v9;
    *(v10 + 32) = [v11 initWithArgumentIndex_];
    *(v10 + 40) = [objc_allocWithZone(MEMORY[0x277CD6E00]) initWithArgumentIndex_];
    v13 = "eometryModifierCustomParams";
    v14 = 0xD000000000000029;
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_265F20CD0;
    v17 = objc_allocWithZone(MEMORY[0x277CD6E00]);
    v18 = v9;
    *(v16 + 32) = [v17 initWithArgumentIndex_];
    v13 = "ntain enough channels '";
    v14 = 0xD00000000000001DLL;
  }

  v19 = MEMORY[0x266771450](v14, v13 | 0x8000000000000000);

  v20 = [v69 newFunctionWithName_];

  if (!v20)
  {

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v36 = xmmword_265F23200;
    *(v36 + 16) = 24;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v65 = v20;
  v66 = v7;
  v62 = a3;
  v21 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
  v22 = MEMORY[0x266771450](v14, v13 | 0x8000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
  v24 = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v21 initWithName:v22 arguments:isa controlDependencies:v24];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_265F20CD0;
  *(v26 + 32) = v25;
  v27 = objc_allocWithZone(MEMORY[0x277CD6DD8]);
  v64 = v25;
  v28 = MEMORY[0x266771450](0xD000000000000018, 0x8000000265F2D560);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29MTLFunctionStitchingAttribute_pMd, &_sSo29MTLFunctionStitchingAttribute_pMR);
  v30 = Array._bridgeToObjectiveC()().super.isa;
  v63 = [v27 initWithFunctionName:v28 nodes:v29 outputNode:0 attributes:v30];

  if (a2)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_265F24070;
    *(v31 + 32) = [objc_allocWithZone(MEMORY[0x277CD6E00]) initWithArgumentIndex_];
    v32 = (v31 + 40);
    v33 = "SGFailedMaterialSurfaceShader";
    v34 = 0xD00000000000002BLL;
    v35 = 1;
  }

  else
  {
    v37 = swift_allocObject();
    v35 = 0;
    *(v37 + 16) = xmmword_265F20CD0;
    v32 = (v37 + 32);
    v33 = "com.apple.shadergraph";
    v34 = 0xD00000000000001FLL;
  }

  *v32 = [objc_allocWithZone(MEMORY[0x277CD6E00]) initWithArgumentIndex_];
  v38 = MEMORY[0x266771450](v34, v33 | 0x8000000000000000);

  v39 = [v69 newFunctionWithName_];

  if (!v39)
  {

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v59 = xmmword_265F23200;
    *(v59 + 16) = 24;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_16:
    v7 = v64;
    goto LABEL_17;
  }

  v40 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
  v41 = MEMORY[0x266771450](v34, v33 | 0x8000000000000000);

  v42 = Array._bridgeToObjectiveC()().super.isa;

  v43 = Array._bridgeToObjectiveC()().super.isa;
  v44 = [v40 initWithName:v41 arguments:v42 controlDependencies:v43];

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_265F20CD0;
  *(v45 + 32) = v44;
  v46 = objc_allocWithZone(MEMORY[0x277CD6DD8]);
  v67 = v44;
  v47 = MEMORY[0x266771450](0xD00000000000001BLL, 0x8000000265F2D500);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = Array._bridgeToObjectiveC()().super.isa;
  v50 = [v46 initWithFunctionName:v47 nodes:v48 outputNode:0 attributes:v49];

  v51 = [objc_allocWithZone(MEMORY[0x277CD7010]) init];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_265F24070;
  *(v52 + 32) = v65;
  *(v52 + 40) = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11MTLFunction_pMd, &_sSo11MTLFunction_pMR);
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setFunctions_];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_265F24070;
  *(v54 + 32) = v63;
  *(v54 + 40) = v50;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingGraph, 0x277CD6DD8);
  v68 = v63;
  v55 = v50;
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v51 setFunctionGraphs_];

  v70[0] = 0;
  v57 = [v62 newLibraryWithStitchedDescriptor:v51 error:v70];
  if (!v57)
  {
    v60 = v70[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v7 = v57;
  v58 = v70[0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v7;
}

uint64_t OrderedSet.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v24 = 91;
  v25 = 0xE100000000000000;
  if (*(v8 + 16))
  {
    v22 = *(v8 + 16);
    v23 = v8;
    ContiguousArray.subscript.getter();
    v21 = v4[4];
    v21(v6, v11, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v12 = swift_allocObject();
    v20 = xmmword_265F1F670;
    *(v12 + 16) = xmmword_265F1F670;
    *(v12 + 56) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v12 + 32));
    v14 = v4[2];
    v14(boxed_opaque_existential_0, v6, a3);
    print<A>(_:separator:terminator:to:)();

    v15 = v4[1];
    v15(v6, a3);
    if (v22 != 1)
    {
      v16 = 1;
      do
      {
        ContiguousArray.subscript.getter();
        ++v16;
        v21(v6, v11, a3);
        MEMORY[0x266771550](8236, 0xE200000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v17 = swift_allocObject();
        *(v17 + 16) = v20;
        *(v17 + 56) = a3;
        v18 = __swift_allocate_boxed_opaque_existential_0((v17 + 32));
        v14(v18, v6, a3);
        print<A>(_:separator:terminator:to:)();

        v15(v6, a3);
      }

      while (v22 != v16);
    }
  }

  MEMORY[0x266771550](93, 0xE100000000000000, v9);
  return v24;
}

Swift::Double __swiftcall _HashTable.UnsafeHandle.debugLoadFactor()()
{
  v2 = v0;
  v3 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v0, v1) != 0;
  _HashTable.BucketIterator.advance()();
  return v3 / (1 << *v2);
}

char *_HashTable.UnsafeHandle.debugContents()(void *a1, uint64_t a2)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (1 << *a1) & ~(1 << *a1 >> 63), 0, MEMORY[0x277D84F90]);
  v13 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a1, a2);
  if (v13)
  {
    v5 = -1 << *a1;
    v6 = (v5 ^ ~v13) + (a1[1] >> 6);
    if (v6 >= ~v5)
    {
      v7 = ~v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6 - v7;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  if (v10 >= v9 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
  }

  *(v4 + 2) = v10 + 1;
  v11 = &v4[16 * v10];
  *(v11 + 4) = v8;
  v11[40] = v13 == 0;
  _HashTable.BucketIterator.advance()();
  return v4;
}

uint64_t _HashTable.Bucket.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x402874656B637542;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable.Bucket()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x402874656B637542;
}

Swift::Int __swiftcall _HashTable.UnsafeHandle.debugOccupiedCount()()
{
  v2 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v0, v1) != 0;
  _HashTable.BucketIterator.advance()();
  return v2;
}

uint64_t _HashTable.BucketIterator.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v4;
  result = String.count.getter();
  if (result <= 3)
  {
    v7 = 4 - result;
    if (__OFSUB__(4, result))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    v9 = String.init(repeating:count:)(v8, v7);

    MEMORY[0x266771550](countAndFlagsBits, object);

    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
  }

  if (!v1)
  {
    v12 = 0xE400000000000000;
    v10 = 1818848800;
    goto LABEL_9;
  }

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  result = String.count.getter();
  if (result > 3)
  {
LABEL_9:
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v16 = String.init<A>(_:radix:uppercase:)();
    v18 = v17;
    result = String.count.getter();
    if (result >= v2)
    {
LABEL_12:
      _StringGuts.grow(_:)(68);
      MEMORY[0x266771550](0xD000000000000016, 0x8000000265F30BA0);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v22);

      MEMORY[0x266771550](0x74656B637562202CLL, 0xEA0000000000203ALL);
      MEMORY[0x266771550](countAndFlagsBits, object);

      MEMORY[0x266771550](0x3A65756C6176202CLL, 0xE900000000000020);
      MEMORY[0x266771550](v10, v12);

      MEMORY[0x266771550](0x203A73746962202CLL, 0xE800000000000000);
      MEMORY[0x266771550](v16, v18);

      MEMORY[0x266771550](10272, 0xE200000000000000);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v23);

      MEMORY[0x266771550](0x29297374696220, 0xE700000000000000);
      return 0;
    }

    v19 = v2 - result;
    if (!__OFSUB__(v2, result))
    {
      v20._countAndFlagsBits = 48;
      v20._object = 0xE100000000000000;
      v21 = String.init(repeating:count:)(v20, v19);

      MEMORY[0x266771550](v16, v18);

      v16 = v21._countAndFlagsBits;
      v18 = v21._object;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v13 = 4 - result;
  if (!__OFSUB__(4, result))
  {
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    v15 = String.init(repeating:count:)(v14, v13);

    MEMORY[0x266771550](v10, v12);

    v10 = v15._countAndFlagsBits;
    v12 = v15._object;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.mapStringInputs(nodeDefStore:)(ShaderGraph::NodeDefStore nodeDefStore)
{
  rawValue = nodeDefStore.nodeDefs._rawValue;
  v3 = *(*(v1 + 64) + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v4 + 32;
    while (v5 < v3)
    {
      v8 = v6 + 48 * v5;
      v9 = *(v8 + 24);
      if (v9 == -7)
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_15;
        }

        v10 = *(v8 + 8);
        v11 = *(v8 + 16);
        v12 = *v8;
        v13 = *(v8 + 40);
        v14 = *(v8 + 32);
        v15[0] = v12;
        v15[1] = v10;
        v15[2] = v11;
        v15[3] = v9;
        v15[4] = v14;
        v16 = v13;
        outlined copy of NodePersonality(v12);

        specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(v15, rawValue);
        outlined consume of NodePersonality(v12);
        if (v2)
        {

          goto LABEL_12;
        }
      }

      if (v5 >= v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(ShaderGraph::NodeDefStore nodeDefStore)
{
  v3 = v1;
  rawValue = nodeDefStore.implementations._rawValue;
  v16 = nodeDefStore.nodeDefs._rawValue;
  v17 = nodeDefStore.geomPropDefs._rawValue;
  v4 = *(*(v1 + 64) + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v5 + 32;
    while (v6 < v4)
    {
      v9 = v7 + 48 * v6;
      v10 = *(v9 + 24);
      if (v10 == -7)
      {
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_15;
        }

        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *v9;
        v14 = *(v9 + 40);
        v15 = *(v9 + 32);
        *&v18 = v13;
        *(&v18 + 1) = v11;
        v19 = v12;
        v20 = v10;
        v21 = v15;
        v22 = v14;
        outlined copy of NodePersonality(v13);

        closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(&v18, v16, v17, rawValue, v3);
        outlined consume of NodePersonality(v13);
        if (v2)
        {

          goto LABEL_12;
        }
      }

      if (v6 >= v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(ShaderGraph::NodeDefStore nodeDefStore)
{
  v2 = v1;
  rawValue = nodeDefStore.implementations._rawValue;
  v16 = nodeDefStore.nodeDefs._rawValue;
  v17 = nodeDefStore.geomPropDefs._rawValue;
  v3 = *(*(v1 + 64) + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v4 + 32;
    while (v5 < v3)
    {
      v7 = v6 + 48 * v5;
      v8 = *(v7 + 24);
      v10 = __OFADD__(v5++, 1);
      if (v8 == -7)
      {
        if (v10)
        {
          goto LABEL_14;
        }

        if (v5 >= v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_15;
        }

        v11 = *(v7 + 40);
        v12 = *(v7 + 32);
        v14 = *(v7 + 8);
        v13 = *(v7 + 16);
        v15 = *v7;
        v18[0] = v15;
        v18[1] = v14;
        v18[2] = v13;
        v18[3] = v8;
        v18[4] = v12;
        v19 = v11;
        outlined copy of NodePersonality(v15);

        closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(v18, v16, v17, rawValue, v2);
        outlined consume of NodePersonality(v15);

        if (v5 >= v3)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.removeEdgesToExplicitlyIgnoredInputs()()
{
  v1 = *(*(v0 + 64) + 16);

  if (v1)
  {
    v3 = 0;
    v4 = v2 + 32;
    while (v3 < v1)
    {
      v6 = (v4 + 48 * v3);
      if (v6[3] == -7)
      {
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_15;
        }

        v7 = *v6;
        if (*v6 >> 61 == 5)
        {
          v8 = v6[1];
          outlined copy of NodePersonality(v7);

          v9._countAndFlagsBits = 0x6567616D695F444ELL;
          v9._object = 0xE800000000000000;
          v10 = String.hasPrefix(_:)(v9);

          if (v10)
          {
            v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of UserGraph.removeEdgesToExplicitlyIgnoredInputs());
            swift_arrayDestroy();

            specialized Sequence.forEach(_:)(v8, v11, v12);
            swift_bridgeObjectRelease_n();
          }

          outlined consume of NodePersonality(v7);
        }
      }

      if (v3 >= v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.resolveMaterialXEnums()()
{
  v2 = *(*(v0 + 64) + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    while (v4 < v2)
    {
      v7 = (v5 + 48 * v4);
      if (v7[3] == -7)
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_15;
        }

        v8 = v7[1];
        v9 = *v7;
        outlined copy of NodePersonality(*v7);

        specialized Sequence.forEach(_:)(v8, v0, closure #1 in closure #1 in UserGraph.resolveMaterialXEnums());
        outlined consume of NodePersonality(v9);
        if (v1)
        {

          goto LABEL_12;
        }
      }

      if (v4 >= v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t UserGraph.replaceMultiOutputNodes()(void (*a1)(void *, uint64_t))
{
  v18 = a1;
  v3 = v1;
  v4 = *(*(v1 + 64) + 16);

  if (!v4)
  {
  }

  v6 = 0;
  v7 = result + 32;
  while (v6 < v4)
  {
    v9 = v7 + 48 * v6;
    v10 = *(v9 + 24);
    if (v10 == -7)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_15;
      }

      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *v9;
      v14 = *(v9 + 40);
      v15 = *(v9 + 32);
      v16[0] = v13;
      v16[1] = v11;
      v16[2] = v12;
      v16[3] = v10;
      v16[4] = v15;
      v17 = v14;
      outlined copy of NodePersonality(v13);

      v18(v16, v3);
      outlined consume of NodePersonality(v13);
      if (v2)
      {
      }
    }

    if (v6 >= v4)
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UserGraph.transformSamplerNodes()()
{
  v1 = *(v0 + 64);
  v2 = (2 * *(v1 + 16)) | 1;
  v3[0] = 0;
  v3[1] = v1;
  v3[2] = v1 + 32;
  v3[3] = 0;
  v3[4] = v2;
  v3[5] = closure #1 in UserGraph.nodes.getter;
  v3[6] = 0;
  v3[7] = closure #1 in UserGraph.transformSamplerNodes();
  v3[8] = 0;

  specialized Sequence.forEach(_:)(v3, v0);
  outlined destroy of [Input](v3, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMd, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMR);
}

uint64_t UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v5 = v4;
  v6 = *(*(v4 + 64) + 16);

  if (!v6)
  {
  }

  v8 = 0;
  v9 = result + 32;
  while (v8 < v6)
  {
    v10 = v9 + 48 * v8;
    v11 = *(v10 + 24);
    v13 = __OFADD__(v8++, 1);
    if (v11 == -7)
    {
      if (v13)
      {
        goto LABEL_14;
      }

      if (v8 >= v6)
      {
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_15;
      }

      v14 = *(v10 + 40);
      v15 = *(v10 + 32);
      v17 = *(v10 + 8);
      v16 = *(v10 + 16);
      v18 = *v10;
      v20[0] = v18;
      v20[1] = v17;
      v20[2] = v16;
      v20[3] = v11;
      v20[4] = v15;
      v21 = v14;
      outlined copy of NodePersonality(v18);

      specialized closure #1 in UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(v20, a3, v22, v5);
      outlined consume of NodePersonality(v18);

      if (v8 >= v6)
      {
      }
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t UserGraph.insertParamsInputs(surface:geometryModifier:nodeDefStore:)(uint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2 + 2;
  result = specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(a1, 0);
  if (!v2)
  {
    if (v3)
    {
      v7 = v4;
      v8 = v3;
      v9[0] = *v5;
      *(v9 + 9) = *(v5 + 9);
      outlined copy of NodePersonality(v4);

      specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(&v7, 1);
      v10 = v7;
      outlined destroy of NodePersonality(&v10);
      v11 = v8;
      outlined destroy of [Input](&v11, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v12 = *&v9[0];
      return outlined destroy of [Input](&v12, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  return result;
}

uint64_t UserGraph.rewireUniformInputs(customUniformsType:)(uint64_t a1)
{

  v5 = specialized _ArrayProtocol.filter(_:)(v4, v1);

  v22 = *(v5 + 16);
  if (!v22)
  {
  }

  v68 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = 12580;
  *(v7 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v7 | 0x6000000000000000, &v24);

  swift_setDeallocating();
  result = swift_arrayDestroy();
  v9 = 0;
  v23 = v25[0];
  v10 = (v5 + 80);
  while (v9 < *(v5 + 16))
  {
    v11 = v5;
    v12 = *(v10 - 5);
    v14 = *(v10 - 4);
    v13 = *(v10 - 3);
    v15 = *(v10 - 2);
    v16 = *(v10 - 8);
    v17 = *v10;
    v65[0] = *(v10 - 6);
    v65[1] = v12;
    v65[2] = v14;
    v65[3] = v13;
    v65[4] = v15;
    v66 = v16;
    v67 = v17;
    v64 = v23;
    specialized ShaderGraphNode.output(labeled:)(&v26, 7632239, 0xE300000000000000, v23);
    if (!v27)
    {

      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v19 = 14;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0xE000000000000000;
      swift_willThrow();

      v63 = v24;
      outlined destroy of NodePersonality(&v63);
      v62 = *(&v24 + 1);
      v20 = &v62;
LABEL_13:
      outlined destroy of [Input](v20, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      return outlined destroy of [Input](&v64, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v42 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    swift_bridgeObjectRetain_n();

    v18 = v68;
    Output.getProperty(_:_:)(v1, v14, v13, &v31);
    v68 = v18;
    if (v18)
    {

      v48 = v44;
      outlined destroy of String(&v48);

      v61 = v24;
      outlined destroy of NodePersonality(&v61);
      v60 = *(&v24 + 1);
      v20 = &v60;
      goto LABEL_13;
    }

    v47 = v44;
    outlined destroy of String(&v47);
    v59 = v32[0];
    specialized ShaderGraphNode.output(labeled:)(&v33, 7632239, 0xE300000000000000, v32[0]);
    v5 = v11;
    if (!v34)
    {

      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v21 = 14;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0xE000000000000000;
      swift_willThrow();
      v58 = v31;
      outlined destroy of NodePersonality(&v58);
      v57 = *(&v31 + 1);
      outlined destroy of [Input](&v57, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v59, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v56 = v24;
      outlined destroy of NodePersonality(&v56);
      v55 = *(&v24 + 1);
      v20 = &v55;
      goto LABEL_13;
    }

    ++v9;
    v38[0] = v33;
    v38[1] = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    UserGraph.moveEdges(from:to:)(v65, v38);

    v49 = v39;
    outlined destroy of String(&v49);
    v54 = v31;
    outlined destroy of NodePersonality(&v54);
    v53 = *(&v31 + 1);
    outlined destroy of [Input](&v53, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v59, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v10 += 7;
    if (v22 == v9)
    {

      v52 = v24;
      outlined destroy of NodePersonality(&v52);
      v51 = *(&v24 + 1);
      outlined destroy of [Input](&v51, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v50 = v23;
      return outlined destroy of [Input](&v50, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }
  }

  __break(1u);
  return result;
}

uint64_t UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), char a5)
{
  v6 = v5;
  if (a5)
  {
    if (one-time initialization token for realitykit_geometryModifier != -1)
    {
LABEL_33:
      swift_once();
    }

    v8 = &static MaterialXTarget.realitykit_geometryModifier;
  }

  else
  {
    if (one-time initialization token for realitykit_surfaceShader != -1)
    {
      swift_once();
    }

    v8 = &static MaterialXTarget.realitykit_surfaceShader;
  }

  v9 = *v8;
  v10 = v6[9];
  v53 = v6[8];
  v54[0] = v10;
  *(v54 + 9) = *(v6 + 153);
  v11 = v6[5];
  v49 = v6[4];
  v50 = v11;
  v12 = v6[7];
  v51 = v6[6];
  v52 = v12;
  v13 = v6[1];
  v45 = *v6;
  v46 = v13;
  v14 = v6[3];
  v47 = v6[2];
  v48 = v14;
  v40 = v9;
  swift_retain_n();
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v42);
  v15 = v42;

  v16 = *(v15 + 16);
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v42;
    v18 = *(v42 + 16);
    v19 = 56;
    do
    {
      v20 = *(v15 + v19);
      v42 = v17;
      v21 = *(v17 + 24);
      if (v18 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v18 + 1, 1);
        v17 = v42;
      }

      *(v17 + 16) = v18 + 1;
      *(v17 + 8 * v18 + 32) = v20;
      v19 += 48;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v22 = v49;
  v55 = v49;
  a1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_n(v17);

  v23 = *(v22 + 16);
  swift_bridgeObjectRetain_n();
  if (v23)
  {
    v24 = 0;
    v25 = 0;
LABEL_16:
    v26 = 48 * v24;
    while (v24 < v23)
    {
      v27 = v22 + v26;
      v28 = *(v22 + v26 + 56);
      if (v28 != -7)
      {
        v30 = __OFADD__(v24++, 1);
        if (!v30)
        {
          v30 = __OFADD__(v25++, 1);
          if (!v30)
          {
            v31 = *(v27 + 32);
            v32 = *(v27 + 40);
            v33 = *(v27 + 48);
            v34 = *(v27 + 64);
            v35 = *(v27 + 72);
            v43[0] = v31;
            v43[1] = v32;
            v43[2] = v33;
            v43[3] = v28;
            v43[4] = v34;
            v44 = v35;
            outlined copy of NodePersonality(v31);

            specialized closure #1 in UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(v43, a2, a3, a4, a1, v40, v6);
            if (v41)
            {

              outlined destroy of [Input](&v55, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);

              outlined consume of NodePersonality(v31);
              swift_unknownObjectRelease();
            }

            outlined consume of NodePersonality(v31);

            if (v24 < v23)
            {
              goto LABEL_16;
            }

            goto LABEL_26;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_30;
      }

      ++v24;
      v26 += 48;
      if (v29 >= v23)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:

  outlined destroy of [Input](&v55, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  swift_unknownObjectRelease();
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = (result + 80);
    while (1)
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v13 = *(v7 - 5);
      v12 = *(v7 - 4);
      v14[0] = *(v7 - 6);
      v14[1] = v13;
      v14[2] = v12;
      v14[3] = v11;
      v14[4] = v10;
      v15 = v9;
      v16 = v8;

      a3(v14, a2);
      if (v3)
      {
        break;
      }

      v7 += 7;

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v32 = *(a1 + 1);
  v4 = a1[4];
  v34 = a1[5];
  v33 = v4;
  v22 = a1[7];
  v31 = v2;
  v5 = *(&v32 + 1);
  v24 = v32;
  v6 = v4 >> 1;
  outlined init with copy of [Input](&v31, v28, &_ss10ArraySliceVy11ShaderGraph0cD4NodeVGMd, &_ss10ArraySliceVy11ShaderGraph0cD4NodeVGMR);

  while (1)
  {
    if (v3 >= v6)
    {

      return swift_unknownObjectRelease();
    }

    if (v3 < v5 || v3 >= v6)
    {
      break;
    }

    v10 = v24 + 48 * v3;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 40);
    v25[0] = v11;
    v25[1] = v12;
    v25[2] = v13;
    v26 = *(v10 + 24);
    v27 = v14;
    outlined copy of NodePersonality(v11);

    v15 = v34(v25);
    outlined consume of NodePersonality(v11);

    if (v15)
    {
      v17 = *v10;
      v16 = *(v10 + 8);
      v18 = *(v10 + 16);
      v19 = *(v10 + 40);
      v28[0] = v17;
      v28[1] = v16;
      v28[2] = v18;
      v23 = *(v10 + 24);
      v29 = v23;
      v30 = v19;
      outlined copy of NodePersonality(v17);

      if (v22(v28))
      {
        v20 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v20;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          v20 = result;
          *(a2 + 64) = result;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v23 >= *(v20 + 16))
        {
          goto LABEL_18;
        }

        v8 = v20 + 48 * v23;
        v9 = *(v8 + 32);
        *(v8 + 32) = 0xE000000000000008;
        outlined consume of NodePersonality(v9);
      }

      outlined consume of NodePersonality(v17);
    }

    ++v3;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

BOOL ShaderGraphNode.isGetTextureNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F2D870;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

BOOL ShaderGraphNode.isMaterialXCubeimageNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F2D850;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

BOOL ShaderGraphNode.isRealityKitImageNode.getter()
{
  if (*v0 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F2D830;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

uint64_t UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v8 = type metadata accessor for LazySequence();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for LazyFilterSequence();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  MEMORY[0x2667716D0](a4, a5, v11);
  swift_getWitnessTable();
  LazySequenceProtocol.filter(_:)();
  v15[4] = v15[1];
  v15[5] = a2;
  v15[6] = v15[0];
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  return (*(v10 + 8))(v13, v9);
}

unint64_t UserGraph.transformMaterialXImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v224 = a3;
  v225 = a4;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v218 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v201 - v13;
  (*(v8 + 16))(v10, a1, a5, v12);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = *&v235[8];
  v226 = v14;
  if (!*&v235[8])
  {
    return (*(v218 + 8))(v226, v16);
  }

  v19 = *v235;
  v20 = *&v235[24];
  v21 = v235[40];
  v214 = 0x8000000265F2D8E0;
  *&v17 = 136315138;
  v209 = v17;
  v210 = xmmword_265F1F680;
  v22 = v223;
  v220 = AssociatedTypeWitness;
  v212 = AssociatedConformanceWitness;
  while (1)
  {
    v232 = v18;
    if (v19 >> 61 == 5)
    {
      break;
    }

    outlined consume of NodePersonality(v19);

LABEL_4:

    dispatch thunk of IteratorProtocol.next()();
    v19 = *v235;
    v18 = *&v235[8];
    v20 = *&v235[24];
    v21 = v235[40];
    if (!*&v235[8])
    {
      return (*(v218 + 8))(v226, v16);
    }
  }

  v231 = v20;

  v23._countAndFlagsBits = 0x6567616D695F444ELL;
  v23._object = 0xE800000000000000;
  v24 = String.hasPrefix(_:)(v23);

  if (!v24)
  {
    outlined consume of NodePersonality(v19);

    v16 = v220;
    goto LABEL_4;
  }

  v25 = *(&v232 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v242, 7632239, 0xE300000000000000, *(&v232 + 1));
  v26 = v243;
  if (!v243)
  {
    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v19;
    *&v235[8] = v232;
    *&v235[24] = v231;
    v235[40] = v21 & 1;
    _print_unlocked<A, B>(_:_:)();
    v162 = v233;
    v163 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v164 = 14;
    *(v164 + 8) = v162;
    *(v164 + 16) = v163;
    swift_willThrow();
    (*(v218 + 8))(v226, v220);
    outlined consume of NodePersonality(v19);
    goto LABEL_168;
  }

  v397 = v244;
  v27 = outlined destroy of String(&v397);
  v28 = (*(*v26 + 144))(v27);

  if (!v28)
  {
    v233 = 0;
    v234 = 0xE000000000000000;
    *v235 = v19;
    *&v235[8] = v232;
    *&v235[24] = v231;
    v235[40] = v21 & 1;
    _print_unlocked<A, B>(_:_:)();
    v165 = v233;
    v166 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v167 = 8;
    *(v167 + 8) = v165;
    *(v167 + 16) = v166;
    swift_willThrow();
    outlined consume of NodePersonality(v19);

    goto LABEL_155;
  }

  specialized ShaderGraphNode.metalTextureType.getter(v19);

  v216 = v28;
  UserGraph.insertImageNode(metalTextureType:resultType:)(v29, v28, &v245);

  specialized ShaderGraphNode.output(labeled:)(&v247, 7632239, 0xE300000000000000, v25);
  if (!v248)
  {
    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v19;
    *&v235[8] = v232;
    *&v235[24] = v231;
    v235[40] = v21 & 1;
    _print_unlocked<A, B>(_:_:)();
    v168 = v233;
    v169 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v170 = 14;
    *(v170 + 8) = v168;
    *(v170 + 16) = v169;
    swift_willThrow();
    (*(v218 + 8))(v226, v220);
    v471 = v245;
    outlined destroy of NodePersonality(&v471);
    v470 = *(&v245 + 1);
    outlined destroy of [Input](&v470, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v469 = v246[0];
    v171 = &v469;
    goto LABEL_167;
  }

  v393[0] = v247;
  v393[1] = v248;
  v394 = v249;
  v395 = v250;
  v396 = v251;
  v468 = v246[0];
  specialized ShaderGraphNode.output(labeled:)(&v252, 7632239, 0xE300000000000000, v246[0]);
  if (!v253)
  {
    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v245;
    *&v235[16] = *v246;
    *&v235[25] = *(&v246[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v172 = v233;
    v173 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v174 = 14;
    *(v174 + 8) = v172;
    *(v174 + 16) = v173;
    swift_willThrow();
    (*(v218 + 8))(v226, v220);

    v398 = v394;
    outlined destroy of String(&v398);
    v467 = v245;
    outlined destroy of NodePersonality(&v467);
    v466 = *(&v245 + 1);
    outlined destroy of [Input](&v466, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v171 = &v468;
    goto LABEL_167;
  }

  v389[0] = v252;
  v389[1] = v253;
  v390 = v254;
  v391 = v255;
  v392 = v256;
  UserGraph.moveEdges(from:to:)(v393, v389);

  v400 = v390;
  outlined destroy of String(&v400);

  v399 = v394;
  outlined destroy of String(&v399);
  *v235 = 0;
  *&v235[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *v235 = 0xD000000000000018;
  *&v235[8] = v214;
  v233 = 1701080942;
  v234 = 0xE400000000000000;
  v241 = v231;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v30);

  MEMORY[0x266771550](v233, v234);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v257);

  v465 = v258[0];
  specialized ShaderGraphNode.output(labeled:)(&v259, 7632239, 0xE300000000000000, v258[0]);
  if (!v260)
  {
    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v257;
    *&v235[16] = *v258;
    *&v235[25] = *(&v258[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v175 = v233;
    v176 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v177 = 14;
    *(v177 + 8) = v175;
    *(v177 + 16) = v176;
    swift_willThrow();
    (*(v218 + 8))(v226, v220);
    v464 = v257;
    outlined destroy of NodePersonality(&v464);
    v463 = *(&v257 + 1);
    outlined destroy of [Input](&v463, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v462 = v245;
    outlined destroy of NodePersonality(&v462);
    v461 = *(&v245 + 1);
    v178 = &v461;
LABEL_166:
    outlined destroy of [Input](v178, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v171 = &v468;
LABEL_167:
    outlined destroy of [Input](v171, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined consume of NodePersonality(v19);
LABEL_168:
  }

  v385[0] = v259;
  v385[1] = v260;
  v386 = v261;
  v387 = v262;
  v388 = v263;
  v460 = *(&v245 + 1);
  v230 = *(&v245 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v264, 115, 0xE100000000000000, *(&v245 + 1));
  if (!v265)
  {
    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](115, 0xE100000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v245;
    *&v235[16] = *v246;
    *&v235[25] = *(&v246[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v179 = v233;
    v180 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v181 = 11;
    *(v181 + 8) = v179;
    *(v181 + 16) = v180;
    swift_willThrow();
    (*(v218 + 8))(v226, v220);

    v401 = v386;
    outlined destroy of String(&v401);
    v459 = v257;
    outlined destroy of NodePersonality(&v459);
    v458 = *(&v257 + 1);
    outlined destroy of [Input](&v458, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v457 = v245;
    outlined destroy of NodePersonality(&v457);
    v178 = &v460;
    goto LABEL_166;
  }

  v381[0] = v264;
  v381[1] = v265;
  v382 = v266;
  v383 = v267;
  v384 = v268;
  v31 = v489;
  UserGraph.connect(_:to:)(v385, v381);

  v403 = v382;
  outlined destroy of String(&v403);

  v402 = v386;
  outlined destroy of String(&v402);
  v32 = v232;
  v227 = *(v232 + 16);
  if (!v227)
  {
    v428 = v245;

    outlined destroy of NodePersonality(&v428);
    outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v427 = v257;
    outlined destroy of NodePersonality(&v427);
    v426 = *(&v257 + 1);
    v152 = &v426;
LABEL_151:
    outlined destroy of [Input](v152, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined consume of NodePersonality(v19);

    v16 = v220;
    goto LABEL_4;
  }

  v228 = v232 + 32;

  v33 = 0;
  v217 = v19;
  v215 = v25;
  v229 = v32;
  while (1)
  {
    if (v33 >= v32[2].isa)
    {
      __break(1u);
LABEL_171:

      v233 = 0;
      v234 = 0xE000000000000000;
      v221 = v31;
      MEMORY[0x266771550](0x7365726464615F73, 0xE900000000000073);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *v235 = v257;
      *&v235[16] = *v258;
      *&v235[25] = *(&v258[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v222 = v32;
      v185 = v233;
      v186 = v234;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v187 = 11;
      *(v187 + 8) = v185;
      *(v187 + 16) = v186;
      swift_willThrow();
      v445 = v245;
      outlined destroy of NodePersonality(&v445);
      outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v444 = v257;
      outlined destroy of NodePersonality(&v444);
      v156 = &v446;
      goto LABEL_154;
    }

    v34 = (v228 + 56 * v33);
    v35 = *v34;
    v32 = v34[1];
    v36 = v34[2];
    v31 = v34[3];
    v37 = v34[4];
    v38 = *(v34 + 40);
    v39 = v34[6];
    *&v231 = v35;
    *&v472 = v35;
    *(&v472 + 1) = v32;
    *&v473 = v36;
    *(&v473 + 1) = v31;
    *&v474 = v37;
    BYTE8(v474) = v38;
    v475 = v39;
    v40 = v36 == 1701603686 && v31 == 0xE400000000000000;
    if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v269, 1701603686, 0xE400000000000000, v230);
      if (v270)
      {
        v343[0] = v269;
        v343[1] = v270;
        v344 = v271;
        v345 = v272;
        v346 = v273;

        v31 = v489;
        UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(&v472, v343, v224, v225);
        if (v22)
        {
          outlined consume of NodePersonality(v19);

          v434 = v245;
          outlined destroy of NodePersonality(&v434);
          v222 = v32;
          outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v433 = v257;
          outlined destroy of NodePersonality(&v433);
          v432 = *(&v257 + 1);
          outlined destroy of [Input](&v432, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v425 = v344;
          outlined destroy of String(&v425);

          goto LABEL_157;
        }

        v424 = v344;
        outlined destroy of String(&v424);

        goto LABEL_66;
      }

      v233 = 0;
      v234 = 0xE000000000000000;
      v221 = v31;
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *v235 = v245;
      *&v235[16] = *v246;
      *&v235[25] = *(&v246[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v222 = v32;
      v153 = v233;
      v154 = v234;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v155 = 11;
      *(v155 + 8) = v153;
      *(v155 + 16) = v154;
      swift_willThrow();
      v437 = v245;
      outlined destroy of NodePersonality(&v437);
      outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v436 = v257;
      outlined destroy of NodePersonality(&v436);
      v435 = *(&v257 + 1);
      v156 = &v435;
LABEL_154:
      outlined destroy of [Input](v156, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined consume of NodePersonality(v19);

      goto LABEL_155;
    }

    v41 = v36 == 0x746C7561666564 && v31 == 0xE700000000000000;
    if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v222 = v32;
      v42 = v226;
      specialized ShaderGraphNode.output(labeled:)(&v274, 0x56746C7561666564, 0xEA00000000006C61, v230);
      v221 = v31;
      if (!v275)
      {

        v233 = 0;
        v234 = 0xE000000000000000;
        MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *v235 = v245;
        *&v235[16] = *v246;
        *&v235[25] = *(&v246[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v159 = v233;
        v160 = v234;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v161 = 11;
        *(v161 + 8) = v159;
        *(v161 + 16) = v160;
        swift_willThrow();
        v440 = v245;
        outlined destroy of NodePersonality(&v440);
        outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v439 = v257;
        outlined destroy of NodePersonality(&v439);
        v438 = *(&v257 + 1);
        outlined destroy of [Input](&v438, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        outlined consume of NodePersonality(v19);

        v157 = *(v218 + 8);
        v158 = v42;
        return v157(v158, v220);
      }

      v219 = v33;
      v43 = v274;
      v353[0] = v274;
      v353[1] = v275;
      v354 = v276;
      v355 = v277;
      v356 = v278;
      specialized OrderedDictionary.subscript.getter(v231, *v489, v489[1], v489[2], &v279);
      v44 = v280;
      if (v280)
      {
        v211 = v43;
        v223 = v22;
        v45 = v284;
        v46 = v283;
        v47 = v282;
        v213 = v281;
        v48 = v279;
        v31 = v222;

        specialized OrderedDictionary.subscript.getter(&v472, v47, v46, v45, &v285);
        v49 = v46;
        v19 = v217;
        v50 = v45;
        v22 = v223;
        outlined consume of UserGraph.Adjacent?(v48, v44, v213, v47, v49, v50);
        v51 = v286;
        if (v286 > 1)
        {
          v52 = v287;
          v53 = v288;
          v54 = v289;
          v55 = v291;
          v213 = v285;
          v347[0] = v285;
          v347[1] = v286;
          v348 = v287;
          v349 = v288;
          v350 = v289;
          *v351 = *v290;
          *&v351[3] = *&v290[3];
          v352 = v291;
          v56 = specialized OrderedDictionary.subscript.modify(v235, v211);
          if (*(v57 + 8))
          {
            v419 = v276;
            v423 = v348;
            v478[0] = v213;
            v478[1] = v51;
            v479 = v52;
            v480 = v53;
            v481 = v54 & 1;
            v482 = v55;
            v58 = v56;

            outlined init with copy of String(&v419, &v233);

            outlined init with copy of String(&v423, &v233);
            specialized OrderedDictionary.subscript.setter(v478, v353);
            v58(v235, 0);
          }

          else
          {
            v56(v235, 0);
          }

          v61 = specialized OrderedDictionary.subscript.modify(v235, v231);
          v19 = v217;
          v22 = v223;
          if (*(v62 + 8))
          {
            v476[0] = v210;
            memset(&v476[1], 0, 32);
            v477 = 0;

            specialized OrderedDictionary.subscript.setter(v476, &v472);
          }

          v61(v235, 0);
          v63 = v347[0];
          v64 = specialized OrderedDictionary.subscript.modify(v235, v347[0]);
          if (*(v65 + 8))
          {
            v66 = specialized OrderedDictionary.subscript.modify(&v233, v347);
            if (*(v67 + 8))
            {
              specialized OrderedSet.remove(_:)(&v472, v292);
              outlined destroy of [Input](v292, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
            }

            v66(&v233, 0);
            v64(v235, 0);
            v22 = v223;
          }

          else
          {
            v64(v235, 0);
          }

          v68 = specialized OrderedDictionary.subscript.modify(v235, v63);
          if (*(v69 + 8))
          {
            v70 = specialized OrderedDictionary.subscript.modify(&v233, v347);
            if (*(v71 + 8))
            {
              specialized OrderedSet._append(_:)(v353);
              v70(&v233, 0);
              v68(v235, 0);

              v422 = v348;
              v72 = &v422;
            }

            else
            {
              v70(&v233, 0);
              v68(v235, 0);

              v421 = v348;
              v72 = &v421;
            }
          }

          else
          {
            v68(v235, 0);

            v420 = v348;
            v72 = &v420;
          }

          outlined destroy of String(v72);
          v31 = v222;
        }
      }

      else
      {
        v31 = v222;
      }

      v418 = v354;
      outlined destroy of String(&v418);

      v33 = v219;
      goto LABEL_66;
    }

    v59 = v36 == 0x64726F6F63786574 && v31 == 0xE800000000000000;
    if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v293, 0x64726F6F63786574, 0xE800000000000000, v230);
      if (!v294)
      {

        v233 = 0;
        v234 = 0xE000000000000000;
        v221 = v31;
        MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *v235 = v245;
        *&v235[16] = *v246;
        *&v235[25] = *(&v246[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v222 = v32;
        v182 = v233;
        v183 = v234;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v184 = 11;
        *(v184 + 8) = v182;
        *(v184 + 16) = v183;
        swift_willThrow();
        v443 = v245;
        outlined destroy of NodePersonality(&v443);
        outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v442 = v257;
        outlined destroy of NodePersonality(&v442);
        v441 = *(&v257 + 1);
        v156 = &v441;
        goto LABEL_154;
      }

      v357[0] = v293;
      v357[1] = v294;
      v358 = v295;
      v359 = v296;
      v360 = v297;

      v31 = v489;
      UserGraph.moveEdge(from:to:)(&v472, v357);

      v19 = v217;
      v417 = v358;
      v60 = &v417;
LABEL_42:
      outlined destroy of String(v60);
LABEL_43:

      goto LABEL_66;
    }

    v73 = v36 == 0x7373657264646175 && v31 == 0xEC00000065646F6DLL;
    if (v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v446 = *(&v257 + 1);
      specialized ShaderGraphNode.output(labeled:)(&v298, 0x7365726464615F73, 0xE900000000000073, *(&v257 + 1));
      if (!v299)
      {
        goto LABEL_171;
      }

      v361[0] = v298;
      v361[1] = v299;
      v362 = v300;
      v363 = v301;
      v364 = v302;

      v31 = v489;
      UserGraph.moveEdge(from:to:)(&v472, v361);

      v19 = v217;
      v416 = v362;
      v60 = &v416;
      goto LABEL_42;
    }

    if (v36 == 0x7373657264646176 && v31 == 0xEC00000065646F6DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v449 = *(&v257 + 1);
      specialized ShaderGraphNode.output(labeled:)(&v303, 0x7365726464615F74, 0xE900000000000073, *(&v257 + 1));
      if (!v304)
      {

        v233 = 0;
        v234 = 0xE000000000000000;
        v221 = v31;
        MEMORY[0x266771550](0x7365726464615F74, 0xE900000000000073);
        MEMORY[0x266771550](32, 0xE100000000000000);
        *v235 = v257;
        *&v235[16] = *v258;
        *&v235[25] = *(&v258[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v222 = v32;
        v188 = v233;
        v189 = v234;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v190 = 11;
        *(v190 + 8) = v188;
        *(v190 + 16) = v189;
        swift_willThrow();
        v448 = v245;
        outlined destroy of NodePersonality(&v448);
        outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v447 = v257;
        outlined destroy of NodePersonality(&v447);
        v156 = &v449;
        goto LABEL_154;
      }

      v365[0] = v303;
      v365[1] = v304;
      v366 = v305;
      v367 = v306;
      v368 = v307;

      v31 = v489;
      UserGraph.moveEdge(from:to:)(&v472, v365);

      v19 = v217;
      v415 = v366;
      v60 = &v415;
      goto LABEL_42;
    }

    if (v36 == 0x79747265746C6966 && v31 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if ((v36 != 0x726579616CLL || v31 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v36 != 0x6E6172656D617266 || v31 != 0xEA00000000006567) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v36 != 0x66666F656D617266 || v31 != 0xEB00000000746573))
    {
      v146 = v31;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v36 != 0x646E65656D617266 || v31 != 0xEE006E6F69746361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v147 = one-time initialization token for logger;

        if (v147 != -1)
        {
          swift_once();
        }

        v148 = type metadata accessor for Logger();
        __swift_project_value_buffer(v148, logger);
        v222 = v32;

        v31 = Logger.logObject.getter();
        v149 = static os_log_type_t.error.getter();

        LODWORD(v223) = v149;
        *&v231 = v31;
        if (os_log_type_enabled(v31, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *v235 = v151;
          *v150 = v209;
          *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v146, v235);
          v31 = v231;
          _os_log_impl(&dword_265D7D000, v231, v223, "Ignoring unexpected image node input '%s'", v150, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v151);
          MEMORY[0x266773120](v151, -1, -1);
          MEMORY[0x266773120](v150, -1, -1);
        }

        else
        {
        }
      }

      v19 = v217;
      v32 = v229;
      goto LABEL_67;
    }

LABEL_66:
    v32 = v229;
LABEL_67:
    v33 = (v33 + 1);
    if (v33 == v227)
    {
      v431 = v245;
      outlined destroy of NodePersonality(&v431);
      outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v430 = v257;
      outlined destroy of NodePersonality(&v430);
      v429 = *(&v257 + 1);
      v152 = &v429;
      goto LABEL_151;
    }
  }

  v456 = *(&v257 + 1);
  v213 = *(&v257 + 1);
  specialized ShaderGraphNode.output(labeled:)(v308, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v257 + 1));
  v221 = v31;
  v222 = v32;
  if (!*(&v308[0] + 1))
  {

    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v257;
    *&v235[16] = *v258;
    *&v235[25] = *(&v258[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v191 = v233;
    v192 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v193 = 11;
    *(v193 + 8) = v191;
    *(v193 + 16) = v192;
    swift_willThrow();
    v455 = v245;
    outlined destroy of NodePersonality(&v455);
    outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v454 = v257;
    v194 = &v454;
LABEL_175:
    outlined destroy of NodePersonality(v194);
    v156 = &v456;
    goto LABEL_154;
  }

  result = *&v308[0];
  v377 = v308[0];
  v378 = v308[1];
  v379 = v308[2];
  v380 = v309;
  v76 = *v489;
  v75 = v489[1];
  v211 = v489[2];
  v77 = v75 + 32;
  v207 = v75;
  v208 = v76;
  v78 = *(v75 + 16);
  v219 = v33;
  if (!v76)
  {
    if (v78)
    {
      v80 = 0;
      while (*(v77 + 8 * v80) != *&v308[0])
      {
        if (v78 == ++v80)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_81;
    }

    goto LABEL_89;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v308[0], v77, v78, v208 + 16, v208 + 32);
  if (v79)
  {
LABEL_89:
    v223 = v22;

    goto LABEL_105;
  }

  v80 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
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
    return result;
  }

LABEL_81:
  if (v80 >= *(v211 + 16))
  {
    goto LABEL_178;
  }

  v81 = (v211 + 48 * v80);
  v83 = v81[7];
  v82 = v81[8];
  v206 = v81[9];
  v84 = *(v82 + 16);
  v223 = v22;
  if (v83)
  {

    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v377, v82 + 32, v84, v83 + 16, v83 + 32);
    if ((v85 & 1) == 0)
    {
      v205 = v83;
      v86 = v206;
      goto LABEL_101;
    }

LABEL_100:

    goto LABEL_105;
  }

  v205 = 0;

  v86 = v206;

  result = specialized Collection<>.firstIndex(of:)(&v377, v82 + 32, v84);
  if (v87)
  {
    goto LABEL_100;
  }

LABEL_101:
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_182;
  }

  if (result >= *(v86 + 16))
  {
    goto LABEL_181;
  }

  v88 = (v86 + 56 * result);
  v89 = v88[4];
  v90 = v88[5];
  v91 = v88[7];
  v92 = v88[8];
  v93 = v88[9];
  v94 = v88[10];
  v202 = v88[6];
  v203 = v89;
  v95 = v91;
  v204 = v92;
  v206 = v94;
  outlined copy of Output?(v89, v90, v202, v91);
  v96 = v90;

  if (v90)
  {

    v97 = v95;

    v99 = v202;
    v98 = v203;
    outlined consume of Output?(v203, v96, v202, v97);
    LOBYTE(v233) = v93 & 1;
    v237 = v377;
    v238 = v378;
    v239 = v379;
    v240 = v380;
    *v235 = v98;
    *&v235[8] = v96;
    *&v235[16] = v99;
    *&v235[24] = v97;
    *&v235[32] = v204;
    v235[40] = v93 & 1;
    v236 = v206;
    outlined destroy of Edge(v235);
  }

  else
  {
LABEL_105:
    specialized OrderedDictionary.subscript.getter(v231, v208, v207, v211, &v312);
    v100 = v313;
    if (v313 && (v101 = v317, v102 = v316, v103 = v315, v104 = v314, v408 = v312, , , , outlined destroy of [Input](&v408, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR), v407 = v100, outlined destroy of [Input](&v407, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR), v406 = v104, outlined destroy of [Input](&v406, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR), , , , specialized OrderedDictionary.subscript.getter(&v472, v103, v102, v101, &v318), , , , v105 = v319, v319 >= 2))
    {
      v106 = v324;
      v107 = v323;
      v108 = v322;
      v109 = v321;
      v110 = v320;
      v111 = v318;

      outlined destroy of [Input](&v318, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      LOBYTE(v233) = v107 & 1;
      v237 = v472;
      v238 = v473;
      v239 = v474;
      v240 = v475;
      *v235 = v111;
      *&v235[8] = v105;
      *&v235[16] = v110;
      *&v235[24] = v109;
      *&v235[32] = v108;
      v235[40] = v107 & 1;
      v236 = v106;
      v486[0] = v111;
      v486[1] = v105;
      v19 = v217;
      v486[2] = v110;
      v486[3] = v109;
      v486[4] = v108;
      v487 = v107 & 1;
      v488 = v106;

      outlined destroy of Edge(v235);
      UserGraph.connect(_:to:)(v486, &v377);

      v404 = v378;
      outlined destroy of String(&v404);
    }

    else
    {

      v405 = v378;
      outlined destroy of String(&v405);
    }
  }

  specialized ShaderGraphNode.output(labeled:)(v310, 0x746C69665F70696DLL, 0xEA00000000007265, v213);
  if (!*(&v310[0] + 1))
  {

    v233 = 0;
    v234 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *v235 = v257;
    *&v235[16] = *v258;
    *&v235[25] = *(&v258[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v195 = v233;
    v196 = v234;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v197 = 11;
    *(v197 + 8) = v195;
    *(v197 + 16) = v196;
    swift_willThrow();
    v453 = v245;
    outlined destroy of NodePersonality(&v453);
    outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v452 = v257;
    v194 = &v452;
    goto LABEL_175;
  }

  result = *&v310[0];
  v373 = v310[0];
  v374 = v310[1];
  v375 = v310[2];
  v376 = v311;
  v112 = *v489;
  v113 = v489[1];
  v114 = v489[2];
  v115 = v113 + 32;
  v116 = *(v113 + 16);
  if (!*v489)
  {
    if (v116)
    {
      v118 = 0;
      while (*(v115 + 8 * v118) != *&v310[0])
      {
        if (v116 == ++v118)
        {
          goto LABEL_132;
        }
      }

      v208 = v489[1];
      v22 = v223;
      goto LABEL_120;
    }

    goto LABEL_132;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v310[0], v115, v116, v112 + 16, v112 + 32);
  if (v117)
  {
    goto LABEL_132;
  }

  v118 = result;
  v208 = v113;
  v22 = v223;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_179;
  }

LABEL_120:
  v207 = v112;
  if (v118 >= *(v114 + 16))
  {
    goto LABEL_180;
  }

  v206 = v114;
  v119 = (v114 + 48 * v118);
  v120 = v119[7];
  v121 = v119[8];
  v211 = v119[9];
  v122 = *(v121 + 16);
  if (v120)
  {

    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v373, v121 + 32, v122, v120 + 16, v120 + 32);
    if ((v123 & 1) == 0)
    {
      v223 = v121;
      goto LABEL_126;
    }

LABEL_125:
    v223 = v22;

LABEL_131:
    v114 = v206;
    v112 = v207;
    v113 = v208;
LABEL_132:
    specialized OrderedDictionary.subscript.getter(v231, v112, v113, v114, &v330);
    v134 = v331;
    if (v331 && (v135 = v335, v136 = v334, v137 = v333, v138 = v332, v413 = v330, , , , outlined destroy of [Input](&v413, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR), v412 = v134, outlined destroy of [Input](&v412, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR), v411 = v138, outlined destroy of [Input](&v411, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR), , , , specialized OrderedDictionary.subscript.getter(&v472, v137, v136, v135, &v336), , , , v139 = v337, v337 >= 2))
    {
      v140 = v342;
      v141 = v341;
      v142 = v340;
      v143 = v339;
      v144 = v338;
      v145 = v336;

      outlined destroy of [Input](&v336, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      LOBYTE(v233) = v141 & 1;
      v237 = v472;
      v238 = v473;
      v239 = v474;
      v240 = v475;
      *v235 = v145;
      *&v235[8] = v139;
      *&v235[16] = v144;
      *&v235[24] = v143;
      *&v235[32] = v142;
      v235[40] = v141 & 1;
      v236 = v140;
      v483[0] = v145;
      v483[1] = v139;
      v19 = v217;
      v483[2] = v144;
      v483[3] = v143;
      v483[4] = v142;
      v484 = v141 & 1;
      v485 = v140;

      outlined destroy of Edge(v235);
      UserGraph.connect(_:to:)(v483, &v373);

      v409 = v374;
      outlined destroy of String(&v409);
    }

    else
    {

      v410 = v374;
      outlined destroy of String(&v410);
    }

    v22 = v223;
  }

  else
  {

    v223 = v121;
    result = specialized Collection<>.firstIndex(of:)(&v373, v121 + 32, v122);
    if (v124)
    {
      goto LABEL_125;
    }

LABEL_126:
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_183;
    }

    if (result >= *(v211 + 16))
    {
      goto LABEL_184;
    }

    v125 = (v211 + 56 * result);
    v126 = v125[4];
    v127 = v125[5];
    v128 = v125[6];
    v129 = v125[8];
    v130 = v125[9];
    v131 = v125[10];
    v201 = v125[7];
    v202 = v126;
    v203 = v129;
    v204 = v128;
    v205 = v131;
    outlined copy of Output?(v126, v127, v128, v201);

    if (!v127)
    {
      v223 = v22;
      goto LABEL_131;
    }

    v132 = v201;

    v133 = v202;
    outlined consume of Output?(v202, v127, v204, v132);
    v237 = v373;
    LOBYTE(v233) = v130 & 1;
    v238 = v374;
    v239 = v375;
    v240 = v376;
    *v235 = v133;
    *&v235[8] = v127;
    *&v235[16] = v204;
    *&v235[24] = v132;
    *&v235[32] = v203;
    v235[40] = v130 & 1;
    v236 = v205;
    outlined destroy of Edge(v235);
  }

  v33 = v219;
  specialized ShaderGraphNode.output(labeled:)(&v325, 0x746C69665F6E696DLL, 0xEA00000000007265, v213);
  if (v326)
  {
    v369[0] = v325;
    v369[1] = v326;
    v370 = v327;
    v371 = v328;
    v372 = v329;
    v31 = v489;
    UserGraph.moveEdge(from:to:)(&v472, v369);

    v414 = v370;
    outlined destroy of String(&v414);
    goto LABEL_43;
  }

  v233 = 0;
  v234 = 0xE000000000000000;
  MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
  MEMORY[0x266771550](32, 0xE100000000000000);
  *v235 = v257;
  *&v235[16] = *v258;
  *&v235[25] = *(&v258[1] + 1);
  _print_unlocked<A, B>(_:_:)();
  v198 = v233;
  v199 = v234;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v200 = 11;
  *(v200 + 8) = v198;
  *(v200 + 16) = v199;
  swift_willThrow();
  v451 = v245;
  outlined destroy of NodePersonality(&v451);
  outlined destroy of [Input](&v460, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v450 = v257;
  outlined destroy of NodePersonality(&v450);
  outlined destroy of [Input](&v456, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  outlined consume of NodePersonality(v19);

LABEL_155:

LABEL_157:
  v157 = *(v218 + 8);
  v158 = v226;
  return v157(v158, v220);
}

uint64_t UserGraph.transformMaterialXCubeimageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v93 = a3;
  v94 = a4;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v89 - v13;
  (*(v8 + 16))(v10, a1, a5, v12);
  dispatch thunk of Sequence.makeIterator()();
  v15 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = v14;
  v17 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = *(v109 + 8);
  if (!*(&v109[0] + 1))
  {
    return (*(v96 + 8))(v104, v15);
  }

  v19 = *&v109[0];
  v20 = *(&v109[1] + 1);
  v21 = *&v109[2];
  v22 = BYTE8(v109[2]);
  v99 = "ND_realitykit_image_";
  v100 = v15;
  v91 = v17;
  v92 = 0x8000000265F2D8C0;
  while (1)
  {
    v105 = v18;
    v23 = *(&v18 + 1);
    if (v19 >> 61 != 5)
    {
      goto LABEL_4;
    }

    v24._object = (v99 | 0x8000000000000000);
    v24._countAndFlagsBits = 0xD000000000000017;
    v25 = String.hasPrefix(_:)(v24);

    if (!v25)
    {
      v15 = v100;
      goto LABEL_4;
    }

    specialized ShaderGraphNode.output(labeled:)(&v110, 7632239, 0xE300000000000000, v23);
    v26 = v111;
    if (!v111)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v109[0] = v19;
      *(v109 + 8) = v105;
      *(&v109[1] + 1) = v20;
      *&v109[2] = v21;
      BYTE8(v109[2]) = v22 & 1;
      _print_unlocked<A, B>(_:_:)();
      v36 = v107;
      v37 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v38 = 14;
      *(v38 + 8) = v36;
      *(v38 + 16) = v37;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);
      outlined consume of NodePersonality(v19);
    }

    v243 = v112;
    v27 = outlined destroy of String(&v243);
    v28 = (*(*v26 + 144))(v27);

    v101 = v28;
    if (!v28)
    {
      *&v109[0] = 0;
      *(&v109[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v109[0] = 0xD000000000000025;
      *(&v109[0] + 1) = 0x8000000265F2D890;
      v107 = 1701080942;
      v108 = 0xE400000000000000;
      v106 = v20;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v39);

      MEMORY[0x266771550](v107, v108);

      MEMORY[0x266771550](39, 0xE100000000000000);
      v40 = v109[0];
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v41 = 2;
      *(v41 + 8) = v40;
      swift_willThrow();
      outlined consume of NodePersonality(v19);

      return (*(v96 + 8))(v104, v100);
    }

    v98 = v23;
    *&v109[0] = 0;
    *(&v109[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *&v109[0] = 0xD00000000000001CLL;
    *(&v109[0] + 1) = v92;
    v106 = v20;
    v107 = 1701080942;
    v108 = 0xE400000000000000;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v29);

    MEMORY[0x266771550](v107, v108);

    MEMORY[0x266771550](39, 0xE100000000000000);
    specialized UserGraph.insertCreateSampler(label:)(&v113);

    v103 = v105;
    specialized ShaderGraphNode.output(labeled:)(&v115, 0x79747265746C6966, 0xEA00000000006570, v105);
    if (!v116)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x79747265746C6966, 0xEA00000000006570);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v109[0] = v19;
      *(v109 + 8) = v105;
      *(&v109[1] + 1) = v20;
      *&v109[2] = v21;
      BYTE8(v109[2]) = v22 & 1;
      _print_unlocked<A, B>(_:_:)();
      v42 = v107;
      v43 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v44 = 11;
      *(v44 + 8) = v42;
      *(v44 + 16) = v43;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);
      v333[0] = v113;
      outlined destroy of NodePersonality(v333);
      v332 = *(&v113 + 1);
      outlined destroy of [Input](&v332, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v331 = v114[0];
      v45 = &v331;
      goto LABEL_43;
    }

    v239[0] = v115;
    v239[1] = v116;
    v240 = v117;
    v241 = v118;
    v242 = v119;
    v30 = *(&v113 + 1);
    v330 = *(&v113 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v120, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v113 + 1));
    if (!v121)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v113;
      v109[1] = *v114;
      *(&v109[1] + 9) = *(&v114[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v46 = v107;
      v47 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v48 = 11;
      *(v48 + 8) = v46;
      *(v48 + 16) = v47;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v254 = v240;
      outlined destroy of String(&v254);
      v329 = v113;
      outlined destroy of NodePersonality(&v329);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v328 = v114[0];
      v45 = &v328;
      goto LABEL_43;
    }

    v97 = v19;
    v235[0] = v120;
    v235[1] = v121;
    v236 = v122;
    v237 = v123;
    v238 = v124;
    UserGraph.copyEdge(originalDestination:newDestination:)(v239, v235);

    v259 = v236;
    outlined destroy of String(&v259);
    specialized ShaderGraphNode.output(labeled:)(&v125, 0x746C69665F70696DLL, 0xEA00000000007265, v30);
    if (!v126)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v113;
      v109[1] = *v114;
      *(&v109[1] + 9) = *(&v114[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v49 = v107;
      v50 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v51 = 11;
      *(v51 + 8) = v49;
      *(v51 + 16) = v50;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v253 = v240;
      outlined destroy of String(&v253);
      v327 = v113;
      outlined destroy of NodePersonality(&v327);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v326 = v114[0];
      v52 = &v326;
      goto LABEL_32;
    }

    v95 = v22;
    v231[0] = v125;
    v231[1] = v126;
    v232 = v127;
    v233 = v128;
    v234 = v129;
    UserGraph.copyEdge(originalDestination:newDestination:)(v239, v231);

    v260 = v232;
    outlined destroy of String(&v260);
    specialized ShaderGraphNode.output(labeled:)(&v130, 0x746C69665F6E696DLL, 0xEA00000000007265, v30);
    if (!v131)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v113;
      v109[1] = *v114;
      *(&v109[1] + 9) = *(&v114[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v53 = v107;
      v54 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v55 = 11;
      *(v55 + 8) = v53;
      *(v55 + 16) = v54;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v252 = v240;
      outlined destroy of String(&v252);
      v325 = v113;
      outlined destroy of NodePersonality(&v325);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v324 = v114[0];
      v52 = &v324;
LABEL_32:
      outlined destroy of [Input](v52, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v56 = v97;
LABEL_44:
      outlined consume of NodePersonality(v56);
      goto LABEL_45;
    }

    v227[0] = v130;
    v227[1] = v131;
    v228 = v132;
    v229 = v133;
    v230 = v134;
    UserGraph.moveEdge(from:to:)(v239, v227);

    v261 = v228;
    outlined destroy of String(&v261);
    v19 = v97;
    specialized ShaderGraphNode.metalTextureType.getter(v97);

    UserGraph.insertCubeimageNode(metalTextureType:resultType:)(v31, v101, &v135);

    specialized ShaderGraphNode.output(labeled:)(&v137, 1701603686, 0xE400000000000000, v103);
    if (!v138)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v109[0] = v19;
      *(v109 + 8) = v105;
      *(&v109[1] + 1) = v20;
      *&v109[2] = v21;
      BYTE8(v109[2]) = v95 & 1;
      _print_unlocked<A, B>(_:_:)();
      v57 = v107;
      v58 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v59 = 11;
      *(v59 + 8) = v57;
      *(v59 + 16) = v58;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);
      v323 = v135;
      outlined destroy of NodePersonality(&v323);
      v322 = *(&v135 + 1);
      outlined destroy of [Input](&v322, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v321 = v136[0];
      outlined destroy of [Input](&v321, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v251 = v240;
      outlined destroy of String(&v251);
      v320 = v113;
      outlined destroy of NodePersonality(&v320);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v319 = v114[0];
      v45 = &v319;
LABEL_43:
      outlined destroy of [Input](v45, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v56 = v19;
      goto LABEL_44;
    }

    v223[0] = v137;
    v223[1] = v138;
    v224 = v139;
    v225 = v140;
    v226 = v141;
    v32 = *(&v135 + 1);
    v318 = *(&v135 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v142, 1701603686, 0xE400000000000000, *(&v135 + 1));
    if (!v143)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v135;
      v109[1] = *v136;
      *(&v109[1] + 9) = *(&v136[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v60 = v107;
      v61 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v62 = 11;
      *(v62 + 8) = v60;
      *(v62 + 16) = v61;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v263 = v224;
      outlined destroy of String(&v263);
      v317 = v135;
      outlined destroy of NodePersonality(&v317);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v316 = v136[0];
      outlined destroy of [Input](&v316, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v250 = v240;
      outlined destroy of String(&v250);
      v315 = v113;
      outlined destroy of NodePersonality(&v315);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v314 = v114[0];
      v45 = &v314;
      goto LABEL_43;
    }

    v219[0] = v142;
    v219[1] = v143;
    v220 = v144;
    v221 = v145;
    v222 = v146;
    v33 = v102;
    UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(v223, v219, v93, v94);
    v102 = v33;
    if (v33)
    {
      (*(v96 + 8))(v104, v100);

      v265 = v220;
      outlined destroy of String(&v265);

      v262 = v224;
      outlined destroy of String(&v262);
      v313 = v135;
      outlined destroy of NodePersonality(&v313);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v312 = v136[0];
      outlined destroy of [Input](&v312, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v249 = v240;
      outlined destroy of String(&v249);
      v311 = v113;
      outlined destroy of NodePersonality(&v311);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v310 = v114[0];
      outlined destroy of [Input](&v310, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined consume of NodePersonality(v19);
    }

    v266 = v220;
    outlined destroy of String(&v266);

    v264 = v224;
    outlined destroy of String(&v264);
    specialized ShaderGraphNode.output(labeled:)(&v147, 0x746C7561666564, 0xE700000000000000, v103);
    if (!v148)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v109[0] = v19;
      *(v109 + 8) = v105;
      *(&v109[1] + 1) = v20;
      *&v109[2] = v21;
      BYTE8(v109[2]) = v95 & 1;
      _print_unlocked<A, B>(_:_:)();
      v63 = v107;
      v64 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v65 = 11;
      *(v65 + 8) = v63;
      *(v65 + 16) = v64;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);
      v309 = v135;
      outlined destroy of NodePersonality(&v309);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v308 = v136[0];
      outlined destroy of [Input](&v308, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v248 = v240;
      outlined destroy of String(&v248);
      v307 = v113;
      outlined destroy of NodePersonality(&v307);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v306 = v114[0];
      v45 = &v306;
      goto LABEL_43;
    }

    v90 = v21;
    v215[0] = v147;
    v215[1] = v148;
    v216 = v149;
    v217 = v150;
    v218 = v151;
    specialized ShaderGraphNode.output(labeled:)(&v152, 0x56746C7561666564, 0xEA00000000006C61, v32);
    v34 = v95;
    if (!v153)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v135;
      v109[1] = *v136;
      *(&v109[1] + 9) = *(&v136[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v66 = v107;
      v67 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v68 = 11;
      *(v68 + 8) = v66;
      *(v68 + 16) = v67;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v267 = v216;
      outlined destroy of String(&v267);
      v305 = v135;
      outlined destroy of NodePersonality(&v305);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v304 = v136[0];
      outlined destroy of [Input](&v304, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v247 = v240;
      outlined destroy of String(&v247);
      v303 = v113;
      outlined destroy of NodePersonality(&v303);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v302 = v114[0];
      v45 = &v302;
      goto LABEL_43;
    }

    v211[0] = v152;
    v211[1] = v153;
    v212 = v154;
    v213 = v155;
    v214 = v156;
    UserGraph.moveEdge(from:to:)(v215, v211);

    v269 = v212;
    outlined destroy of String(&v269);

    v268 = v216;
    outlined destroy of String(&v268);
    specialized ShaderGraphNode.output(labeled:)(&v157, 0x64726F6F63786574, 0xE800000000000000, v103);
    if (!v158)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      *&v109[0] = v19;
      *(v109 + 8) = v105;
      *(&v109[1] + 1) = v20;
      *&v109[2] = v90;
      BYTE8(v109[2]) = v34 & 1;
      _print_unlocked<A, B>(_:_:)();
      v69 = v107;
      v70 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v71 = 11;
      *(v71 + 8) = v69;
      *(v71 + 16) = v70;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);
      v301 = v135;
      outlined destroy of NodePersonality(&v301);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v300 = v136[0];
      outlined destroy of [Input](&v300, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v246 = v240;
      outlined destroy of String(&v246);
      v299 = v113;
      outlined destroy of NodePersonality(&v299);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v298 = v114[0];
      v45 = &v298;
      goto LABEL_43;
    }

    v207[0] = v157;
    v207[1] = v158;
    v208 = v159;
    v209 = v160;
    v210 = v161;
    specialized ShaderGraphNode.output(labeled:)(&v162, 0x64726F6F63786574, 0xE800000000000000, v32);
    if (!v163)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v135;
      v109[1] = *v136;
      *(&v109[1] + 9) = *(&v136[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v72 = v107;
      v73 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v74 = 11;
      *(v74 + 8) = v72;
      *(v74 + 16) = v73;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v270 = v208;
      outlined destroy of String(&v270);
      v297 = v135;
      outlined destroy of NodePersonality(&v297);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v296 = v136[0];
      outlined destroy of [Input](&v296, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v245 = v240;
      outlined destroy of String(&v245);
      v295 = v113;
      outlined destroy of NodePersonality(&v295);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v294 = v114[0];
      v45 = &v294;
      goto LABEL_43;
    }

    v203[0] = v162;
    v203[1] = v163;
    v204 = v164;
    v205 = v165;
    v206 = v166;
    UserGraph.moveEdge(from:to:)(v207, v203);

    v272 = v204;
    outlined destroy of String(&v272);

    v271 = v208;
    outlined destroy of String(&v271);
    v293 = v114[0];
    specialized ShaderGraphNode.output(labeled:)(&v167, 7632239, 0xE300000000000000, v114[0]);
    if (!v168)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v113;
      v109[1] = *v114;
      *(&v109[1] + 9) = *(&v114[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v75 = v107;
      v76 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v77 = 14;
      *(v77 + 8) = v75;
      *(v77 + 16) = v76;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);
      v292 = v135;
      outlined destroy of NodePersonality(&v292);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v291 = v136[0];
      outlined destroy of [Input](&v291, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v258 = v240;
      outlined destroy of String(&v258);
      v290 = v113;
      v78 = &v290;
LABEL_42:
      outlined destroy of NodePersonality(v78);
      outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v45 = &v293;
      goto LABEL_43;
    }

    v199[0] = v167;
    v199[1] = v168;
    v200 = v169;
    v201 = v170;
    v202 = v171;
    specialized ShaderGraphNode.output(labeled:)(&v172, 0x72656C706D6173, 0xE700000000000000, v32);
    if (!v173)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](0x72656C706D6173, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v135;
      v109[1] = *v136;
      *(&v109[1] + 9) = *(&v136[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v79 = v107;
      v80 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v81 = 11;
      *(v81 + 8) = v79;
      *(v81 + 16) = v80;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v273 = v200;
      outlined destroy of String(&v273);
      v289 = v135;
      outlined destroy of NodePersonality(&v289);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v288 = v136[0];
      outlined destroy of [Input](&v288, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v244 = v240;
      outlined destroy of String(&v244);
      v287 = v113;
      v78 = &v287;
      goto LABEL_42;
    }

    v195[0] = v172;
    v195[1] = v173;
    v196 = v174;
    v197 = v175;
    v198 = v176;
    UserGraph.connect(_:to:)(v199, v195);

    v275 = v196;
    outlined destroy of String(&v275);

    v274 = v200;
    outlined destroy of String(&v274);
    specialized ShaderGraphNode.output(labeled:)(&v177, 7632239, 0xE300000000000000, v98);
    if (!v178)
    {
      break;
    }

    v191[0] = v177;
    v191[1] = v178;
    v192 = v179;
    v193 = v180;
    v194 = v181;
    v283 = v136[0];
    specialized ShaderGraphNode.output(labeled:)(&v182, 7632239, 0xE300000000000000, v136[0]);
    if (!v183)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v109[0] = v135;
      v109[1] = *v136;
      *(&v109[1] + 9) = *(&v136[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v86 = v107;
      v87 = v108;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v88 = 14;
      *(v88 + 8) = v86;
      *(v88 + 16) = v87;
      swift_willThrow();
      (*(v96 + 8))(v104, v100);

      v276 = v192;
      outlined destroy of String(&v276);
      v282 = v135;
      outlined destroy of NodePersonality(&v282);
      outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v283, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v255 = v240;
      outlined destroy of String(&v255);
      v281 = v113;
      v85 = &v281;
      goto LABEL_49;
    }

    v187[0] = v182;
    v187[1] = v183;
    v188 = v184;
    v189 = v185;
    v190 = v186;
    UserGraph.moveEdges(from:to:)(v191, v187);

    v278 = v188;
    outlined destroy of String(&v278);

    v277 = v192;
    outlined destroy of String(&v277);
    v280 = v135;
    outlined destroy of NodePersonality(&v280);
    outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v283, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v256 = v240;
    outlined destroy of String(&v256);
    v279 = v113;
    outlined destroy of NodePersonality(&v279);
    outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v293, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v15 = v100;
LABEL_4:
    outlined consume of NodePersonality(v19);

    dispatch thunk of IteratorProtocol.next()();
    v19 = *&v109[0];
    v18 = *(v109 + 8);
    v20 = *(&v109[1] + 1);
    v21 = *&v109[2];
    v22 = BYTE8(v109[2]);
    if (!*(&v109[0] + 1))
    {
      return (*(v96 + 8))(v104, v15);
    }
  }

  v107 = 0;
  v108 = 0xE000000000000000;
  MEMORY[0x266771550](7632239, 0xE300000000000000);
  MEMORY[0x266771550](32, 0xE100000000000000);
  *&v109[0] = v19;
  *(v109 + 8) = v105;
  *(&v109[1] + 1) = v20;
  *&v109[2] = v90;
  BYTE8(v109[2]) = v34 & 1;
  _print_unlocked<A, B>(_:_:)();
  v82 = v107;
  v83 = v108;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v84 = 14;
  *(v84 + 8) = v82;
  *(v84 + 16) = v83;
  swift_willThrow();
  (*(v96 + 8))(v104, v100);
  v286 = v135;
  outlined destroy of NodePersonality(&v286);
  outlined destroy of [Input](&v318, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v285 = v136[0];
  outlined destroy of [Input](&v285, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v257 = v240;
  outlined destroy of String(&v257);
  v284 = v113;
  v85 = &v284;
LABEL_49:
  outlined destroy of NodePersonality(v85);
  outlined destroy of [Input](&v330, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v293, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  outlined consume of NodePersonality(v19);
LABEL_45:
}

uint64_t UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = Sequence.filter(_:)();

  specialized Sequence.forEach(_:)(v9);
}

uint64_t *MaterialXHardcodedNames.realityKitBackgroundBlurNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitBackgroundBlurNodes != -1)
  {
    swift_once();
  }

  return &static MaterialXHardcodedNames.realityKitBackgroundBlurNodes;
}

double UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(a1, a2, a3, &v8);
  if (!v4)
  {
    v7 = v9[0];
    *a4 = v8;
    a4[1] = v7;
    result = *(v9 + 9);
    *(a4 + 25) = *(v9 + 9);
  }

  return result;
}

double UserGraph.insertConstantValue(type:valueString:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 80) = 6;
  *(v9 + 88) = a1;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v9, &v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = v13[0];
  *a4 = v12;
  a4[1] = v10;
  result = *(v13 + 9);
  *(a4 + 25) = *(v13 + 9);
  return result;
}

uint64_t one-time initialization function for passthroughNodeNames()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for passthroughNodeNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  result = swift_arrayDestroy();
  passthroughNodeNames._rawValue = v0;
  return result;
}

uint64_t one-time initialization function for validLODOptionsSets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyShySSGGMd, &_ss23_ContiguousArrayStorageCyShySSGGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F24120;
  *(v0 + 32) = MEMORY[0x277D84FA0];
  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  outlined destroy of String(&unk_287795880);
  *(v0 + 40) = v1;
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  outlined destroy of String(&unk_2877958B0);
  *(v0 + 48) = v2;
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  outlined destroy of String(&unk_2877958E0);
  *(v0 + 56) = v3;
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  outlined destroy of String(&unk_287795910);
  *(v0 + 64) = v4;
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  outlined destroy of String(&unk_287795940);
  *(v0 + 72) = v5;
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  swift_arrayDestroy();
  *(v0 + 80) = v6;
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  swift_arrayDestroy();
  *(v0 + 88) = v7;
  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  result = swift_arrayDestroy();
  *(v0 + 96) = v8;
  validLODOptionsSets._rawValue = v0;
  return result;
}

uint64_t one-time initialization function for realityKitBackgroundBlurNodes()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  result = swift_arrayDestroy();
  static MaterialXHardcodedNames.realityKitBackgroundBlurNodes = v0;
  return result;
}

uint64_t (*static MaterialXHardcodedNames.realityKitBackgroundBlurNodes.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for realityKitBackgroundBlurNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t one-time initialization function for realityKitLightSpillNodes()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  result = swift_arrayDestroy();
  static MaterialXHardcodedNames.realityKitLightSpillNodes = v0;
  return result;
}

uint64_t *MaterialXHardcodedNames.realityKitLightSpillNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitLightSpillNodes != -1)
  {
    swift_once();
  }

  return &static MaterialXHardcodedNames.realityKitLightSpillNodes;
}

uint64_t (*static MaterialXHardcodedNames.realityKitLightSpillNodes.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for realityKitLightSpillNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t one-time initialization function for realityKitHoverStateNodes()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  result = outlined destroy of String(&unk_287796500);
  static MaterialXHardcodedNames.realityKitHoverStateNodes = v0;
  return result;
}

uint64_t *MaterialXHardcodedNames.realityKitHoverStateNodes.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitHoverStateNodes != -1)
  {
    swift_once();
  }

  return &static MaterialXHardcodedNames.realityKitHoverStateNodes;
}

uint64_t (*static MaterialXHardcodedNames.realityKitHoverStateNodes.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for realityKitHoverStateNodes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t key path getter for static MaterialXHardcodedNames.realityKitBackgroundBlurNodes : MaterialXHardcodedNames.Type@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;
}

uint64_t key path setter for static MaterialXHardcodedNames.realityKitBackgroundBlurNodes : MaterialXHardcodedNames.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;
}

uint64_t ShaderGraphNode.metalTextureType.getter()
{
  specialized ShaderGraphNode.metalTextureType.getter(*v0);
}

__n128 UserGraph.insertImageNode(metalTextureType:resultType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D70;
  *(inited + 32) = 1701603686;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = 0x56746C7561666564;
  *(inited + 64) = 0xEA00000000006C61;
  *(inited + 72) = a2;
  v7 = one-time initialization token for float2;
  swift_retain_n();

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static MetalDataType.float2;
  *(inited + 80) = 0x64726F6F63786574;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v8;
  v9 = one-time initialization token for sampler;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static MetalDataType.sampler;
  *(inited + 104) = 115;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_265F1F670;
  *(v11 + 32) = 7632239;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = a2;
  v12 = swift_allocObject();
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(19);

  *&v16 = 0xD000000000000011;
  *(&v16 + 1) = 0x8000000265F30BC0;
  MEMORY[0x266771550](*(a2 + 24), *(a2 + 32));
  v13 = *(&v16 + 1);
  *(v12 + 16) = v16;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v11, v12 | 0x2000000000000000, &v16);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = v17[0];
  *a3 = v16;
  a3[1] = v14;
  result = *(v17 + 9);
  *(a3 + 25) = *(v17 + 9);
  return result;
}

double UserGraph.insertCreateSampler(label:)@<D0>(_OWORD *a2@<X8>)
{
  specialized UserGraph.insertCreateSampler(label:)(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

void UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v113[3] = v4[1];
  v113[2] = v10;
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  v114 = v4[5];
  v113[6] = v13;
  v113[4] = v11;
  v113[5] = v12;
  v14 = v4[6];
  v15 = v4[7];
  *(v117 + 9) = *(v4 + 153);
  v16 = v4[8];
  v117[0] = v4[9];
  v116 = v16;
  *v115 = v14;
  *&v115[16] = v15;
  UserGraph.node(connectedTo:)(a1, &v49);
  v17 = v50;
  if (v50)
  {
    v76 = v49;
    v77 = v50;
    v78[0] = v51[0];
    *(v78 + 9) = *(v51 + 9);
    v79 = v49;
    if (!(v49 >> 61) && *(v49 + 80) == 6)
    {
      v118 = a2;
      v18 = *(v49 + 16);
      v19 = *(v49 + 24);
      v20 = *(v49 + 32);
      v46 = *(v49 + 48);
      v47 = *(v49 + 40);
      v45 = *(v49 + 56);
      *v43 = *(v49 + 72);
      v44 = *(v49 + 64);

      UserGraph.insertGetTexture(_:textureAssignments:customUniformsType:)(v18, v19, a3, a4, v52);
      if (v5)
      {
        outlined destroy of NodePersonality(&v79);
        v90 = v17;
        outlined destroy of [Input](&v90, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v91 = *&v78[0];
        outlined destroy of [Input](&v91, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined consume of SGDataTypeStorage(v18, v19, v20, v47, v46, v45, v44, v43[0], 6);
        return;
      }

      outlined consume of SGDataTypeStorage(v18, v19, v20, v47, v46, v45, v44, v43[0], 6);
      v36 = v52;
      goto LABEL_21;
    }

    v112 = v114;
    v113[0] = *v115;
    *(v113 + 9) = *&v115[9];
    if ((specialized static ShaderGraphNode.== infix(_:_:)(&v76, &v112) & 1) == 0)
    {
      outlined destroy of NodePersonality(&v79);
      v84 = v77;
      outlined destroy of [Input](&v84, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v85 = *&v78[0];
      outlined destroy of [Input](&v85, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      return;
    }

    v21 = v4[9];
    v110 = v4[8];
    v111[0] = v21;
    *(v111 + 9) = *(v4 + 153);
    v22 = v4[5];
    v106 = v4[4];
    v107 = v22;
    v23 = v4[7];
    v108 = v4[6];
    v109 = v23;
    v24 = v4[1];
    v102 = *v4;
    v103 = v24;
    v25 = v4[3];
    v104 = v4[2];
    v105 = v25;
    UserGraph.output(connectedTo:)(a1, v53);
    if (v53[1])
    {
      v118 = a2;
      v27 = v53[2];
      v26 = v53[3];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_265F1F670;
      *(v28 + 32) = 7632239;
      *(v28 + 40) = 0xE300000000000000;
      *(v28 + 48) = a4;
      v29 = swift_allocObject();
      *(v29 + 16) = 12580;
      *(v29 + 24) = 0xE200000000000000;

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v28, v29 | 0x6000000000000000, &v54);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v101 = v55[0];
      specialized ShaderGraphNode.output(labeled:)(&v56, 7632239, 0xE300000000000000, v55[0]);
      if (v57)
      {
        v71 = v56;
        v72 = v57;
        v73 = v58;
        v74 = v59;
        v75 = v60;
        v98 = v54;
        outlined destroy of NodePersonality(&v98);
        v97 = *(&v54 + 1);
        outlined destroy of [Input](&v97, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v101, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        Output.getProperty(_:_:)(v4, v27, v26, v61);
        if (!v5)
        {

          v95 = v73;
          outlined destroy of String(&v95);

          v36 = v61;
LABEL_21:
          v41 = *v36;
          specialized ShaderGraphNode.output(labeled:)(&v62, 7632239, 0xE300000000000000, *(v36 + 2));
          if (v63)
          {
            v67[0] = v62;
            v67[1] = v63;
            v68 = v64;
            v69 = v65;
            v70 = v66;
            UserGraph.connect(_:to:)(v67, v118);
            outlined destroy of NodePersonality(&v79);
            v86 = v77;
            outlined destroy of [Input](&v86, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v87 = *&v78[0];
            outlined destroy of [Input](&v87, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            v96 = v68;
            outlined destroy of String(&v96);
          }

          else
          {
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            _print_unlocked<A, B>(_:_:)();
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v42 = 14;
            *(v42 + 8) = 0;
            *(v42 + 16) = 0xE000000000000000;
            swift_willThrow();
            outlined destroy of NodePersonality(&v79);
            v88 = v77;
            outlined destroy of [Input](&v88, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v89 = *&v78[0];
            outlined destroy of [Input](&v89, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          outlined consume of NodePersonality(v41);

          goto LABEL_25;
        }

        v94 = v73;
        outlined destroy of String(&v94);
        outlined destroy of NodePersonality(&v79);
        v92 = v77;
        outlined destroy of [Input](&v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v93 = *&v78[0];
        outlined destroy of [Input](&v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

      else
      {
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v37 = 14;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0xE000000000000000;
        swift_willThrow();
        v100 = v54;
        outlined destroy of NodePersonality(&v100);
        v99 = *(&v54 + 1);
        outlined destroy of [Input](&v99, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v101, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined destroy of NodePersonality(&v79);
        v80 = v77;
        outlined destroy of [Input](&v80, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v81 = *&v78[0];
        outlined destroy of [Input](&v81, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

LABEL_25:

      return;
    }

    v30 = *a1;
    if (*a1 == -7)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v118 = 0;
      v34 = 0xED00002165646F6ELL;
      v35 = 0x20676E697373696DLL;
LABEL_19:
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F30BE0);
      MEMORY[0x266771550](a1[2], a1[3]);
      MEMORY[0x266771550](0x646F6E206E6F2027, 0xEB00000000203A65);
      MEMORY[0x266771550](v35, v34);

      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v40 = 44;
      *(v40 + 8) = v48;
      swift_willThrow();
      outlined consume of ShaderGraphNode?(v31, v32, v33);
      outlined destroy of NodePersonality(&v79);
      v82 = v77;
      outlined destroy of [Input](&v82, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v83 = *&v78[0];
      outlined destroy of [Input](&v83, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      return;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v30 < *(v106 + 16))
    {
      v38 = (v106 + 48 * v30);
      v31 = v38[4];
      v32 = v38[5];
      v33 = v38[6];
      v118 = v38[8];
      outlined copy of NodePersonality(v31);

      outlined copy of NodePersonality(v31);

      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v39);

      outlined consume of NodePersonality(v31);

      v34 = 0xE400000000000000;
      v35 = 1701080942;
      goto LABEL_19;
    }

    __break(1u);
  }
}

__n128 UserGraph.insertCubeimageNode(metalTextureType:resultType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D70;
  *(inited + 32) = 1701603686;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = 0x56746C7561666564;
  *(inited + 64) = 0xEA00000000006C61;
  *(inited + 72) = a2;
  v7 = one-time initialization token for float3;
  swift_retain_n();

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static MetalDataType.float3;
  *(inited + 80) = 0x64726F6F63786574;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v8;
  v9 = one-time initialization token for sampler;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static MetalDataType.sampler;
  *(inited + 104) = 0x72656C706D6173;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_265F1F670;
  *(v11 + 32) = 7632239;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = a2;
  v12 = swift_allocObject();
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  *&v16 = 0xD000000000000015;
  *(&v16 + 1) = 0x8000000265F30C10;
  MEMORY[0x266771550](*(a2 + 24), *(a2 + 32));
  v13 = *(&v16 + 1);
  *(v12 + 16) = v16;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v11, v12 | 0x2000000000000000, &v16);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = v17[0];
  *a3 = v16;
  a3[1] = v14;
  result = *(v17 + 9);
  *(a3 + 25) = *(v17 + 9);
  return result;
}

BOOL specialized implicit closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(void *a1)
{
  if (*a1 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F2D830;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

uint64_t closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = v8[1];
  *&v552[9] = *(v8 + 25);
  v551 = v9;
  *v552 = v10;
  _StringGuts.grow(_:)(23);

  *&v182[0] = 0xD000000000000014;
  *(&v182[0] + 1) = 0x8000000265F30E90;
  v11 = *&v552[8];
  *&v180 = 1701080942;
  *(&v180 + 1) = 0xE400000000000000;
  v177 = *&v552[8];
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v12);

  MEMORY[0x266771550](1701080942, 0xE400000000000000);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v185);

  UserGraph.insertSampleTexture(for:)(&v551, &v187);
  if (v1)
  {
    v605 = v1;
    v550 = v185;
    outlined destroy of NodePersonality(&v550);
    v549 = *(&v185 + 1);
    outlined destroy of [Input](&v549, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v548 = v186;
    v13 = &v548;
    return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v189);
  ShaderGraphNode.subscript.getter(0x72656C706D6173, 0xE700000000000000, v191);
  v605 = 0;
  UserGraph.connect(_:to:)(v189, v191);

  v547[0] = v192;
  outlined destroy of String(v547);

  v546 = v190;
  outlined destroy of String(&v546);
  v184 = MEMORY[0x277D84FA0];
  v602 = *(&v551 + 1);
  v16 = *(*(&v551 + 1) + 16);
  v169 = v7;
  v173 = v16;
  if (!v16)
  {

    v159 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v160 = 0;
    v153 = 0;
    v151 = 0;
    v152 = 0;
    v154 = 0;
    v104 = 0;
    v161 = 0;
    v20 = 0;
    v163 = 0;
    v5 = 0;
LABEL_180:
    v105 = v605;
    ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v277);
    if (v105)
    {
      v605 = v105;
      outlined consume of ShaderGraphNode?(v5, v163, v20);
      outlined consume of ShaderGraphNode?(v104, v154, v152);
      outlined consume of ShaderGraphNode?(v157, v160, v158);
      v304 = v185;
      outlined destroy of NodePersonality(&v304);
      v303 = *(&v185 + 1);
      outlined destroy of [Input](&v303, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v302 = v186;
      outlined destroy of [Input](&v302, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v301 = v187;
      outlined destroy of NodePersonality(&v301);
      v300 = *(&v187 + 1);
      outlined destroy of [Input](&v300, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v299 = *&v188[0];
      v13 = &v299;
    }

    else
    {
      ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v279);
      v605 = 0;
      UserGraph.moveEdges(from:to:)(v277, v279);
      outlined consume of ShaderGraphNode?(v5, v163, v20);
      outlined consume of ShaderGraphNode?(v104, v154, v152);
      outlined consume of ShaderGraphNode?(v157, v160, v158);
      v298[0] = v185;
      outlined destroy of NodePersonality(v298);
      v297 = *(&v185 + 1);
      outlined destroy of [Input](&v297, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v296 = v186;
      outlined destroy of [Input](&v296, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v295 = v279[1];
      outlined destroy of String(&v295);

      v294 = v278;
      outlined destroy of String(&v294);
      v293 = v187;
      outlined destroy of NodePersonality(&v293);
      v292 = *(&v187 + 1);
      outlined destroy of [Input](&v292, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v291 = *&v188[0];
      v13 = &v291;
    }

    return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  v144 = v11;
  v149 = v5;
  v150 = v3;
  v17 = 0;
  v159 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v160 = 0;
  v153 = 0;
  v151 = 0;
  v152 = 0;
  v147 = 0;
  v148 = 0;
  v154 = 0;
  v161 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v163 = 0;
  v146 = 0;
  v172 = *(&v551 + 1) + 32;
  *&v15 = 136315394;
  v143 = v15;
  v162 = MEMORY[0x277D84FA0];
  v145 = 0xE900000000000070;
  v21 = *(&v551 + 1);
  v168 = *(&v551 + 1);
  while (1)
  {
    if (v17 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_205;
    }

    v176 = v17;
    v22 = v172 + 56 * v17;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v5 = *(v22 + 24);
    v26 = *(v22 + 32);
    v27 = *(v22 + 40);
    v28 = *(v22 + 48);
    v563[0] = v23;
    v563[1] = v24;
    v174 = v25;
    v563[2] = v25;
    v563[3] = v5;
    v564 = v27;
    v563[4] = v26;
    v565 = v28;
    v29 = v7[9];
    v182[8] = v7[8];
    v183[0] = v29;
    *(v183 + 9) = *(v7 + 153);
    v30 = v7[5];
    v182[4] = v7[4];
    v182[5] = v30;
    v31 = v7[7];
    v182[6] = v7[6];
    v182[7] = v31;
    v32 = v7[1];
    v182[0] = *v7;
    v182[1] = v32;
    v33 = v7[3];
    v182[2] = v7[2];
    v182[3] = v33;
    v34 = v32;
    v35 = *(&v182[0] + 1) + 32;
    v36 = *(*(&v182[0] + 1) + 16);
    if (*&v182[0])
    {
      v37 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v23, v35, v36, *&v182[0] + 16, *&v182[0] + 32);
      if (v38)
      {
        goto LABEL_7;
      }

      v39 = v37;
      if (v37 < 0)
      {
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        v605 = v1;

        v387 = v185;
        outlined destroy of NodePersonality(&v387);
        v386 = *(&v185 + 1);
        outlined destroy of [Input](&v386, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v385 = v186;
        outlined destroy of [Input](&v385, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined consume of ShaderGraphNode?(v157, v160, v158);
        outlined consume of ShaderGraphNode?(v148, v154, v152);
        outlined consume of ShaderGraphNode?(v146, v163, v20);

        v384 = v187;
        outlined destroy of NodePersonality(&v384);
        v383 = *(&v187 + 1);
        outlined destroy of [Input](&v383, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v382 = *&v188[0];
        v13 = &v382;
        return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }
    }

    else
    {
      if (!v36)
      {
        goto LABEL_7;
      }

      v39 = 0;
      while (*(v35 + 8 * v39) != v23)
      {
        if (v36 == ++v39)
        {
          goto LABEL_7;
        }
      }
    }

    if (v39 >= *(v34 + 16))
    {
      goto LABEL_207;
    }

    v175 = v24;
    v171 = v19;
    v40 = (v34 + 48 * v39);
    v41 = v40[7];
    v42 = v40[8];
    v43 = v40[9];
    v44 = *(v42 + 16);
    if (v41)
    {
      swift_bridgeObjectRetain_n();
      v45 = v5;
      v5 = v175;

      outlined init with copy of UserGraph(v182, &v180);

      v46 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v563, v42 + 32, v44, v41 + 16, v41 + 32);
      if (v47)
      {
        goto LABEL_23;
      }

      v5 = v45;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      outlined init with copy of UserGraph(v182, &v180);

      v46 = specialized Collection<>.firstIndex(of:)(v563, v42 + 32, v44);
      if (v48)
      {
        v5 = v175;
LABEL_23:
        outlined destroy of UserGraph(v182);

        swift_bridgeObjectRelease_n();

LABEL_33:
        v19 = v171;
LABEL_34:
        v21 = v168;
        v7 = v169;
        goto LABEL_7;
      }
    }

    if ((v46 & 0x8000000000000000) != 0)
    {
      break;
    }

    v166 = v20;
    v167 = v5;
    v170 = v18;
    if (v46 >= *(v43 + 16))
    {
      goto LABEL_211;
    }

    v49 = (v43 + 56 * v46);
    v51 = v49[4];
    v50 = v49[5];
    v52 = v49[6];
    v5 = v49[7];
    v53 = v49[9];
    v164 = v49[10];
    v165 = v53;
    outlined copy of Output?(v51, v50, v52, v5);
    outlined destroy of UserGraph(v182);

    if (!v50)
    {

      swift_bridgeObjectRelease_n();
      v20 = v166;
      v18 = v170;
      goto LABEL_33;
    }

    outlined consume of Output?(v51, v50, v52, v5);
    v54 = v167;

    v55 = v175;

    v5 = v54;

    v57 = v174;
    *&v180 = v174;
    *(&v180 + 1) = v54;
    MEMORY[0x28223BE20](v56);
    v142 = &v180;
    v1 = v605;
    v58 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v141, &outlined read-only object #0 of closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:));
    v605 = v1;
    swift_arrayDestroy();
    if ((v58 & 1) == 0)
    {
      v20 = v166;
      v18 = v170;
      v19 = v171;
      v21 = v168;
LABEL_36:
      if (v57 == 1701603686 && v5 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v361 = *(&v187 + 1);
        specialized ShaderGraphNode.output(labeled:)(&v193, 0x65727574786574, 0xE700000000000000, *(&v187 + 1));
        v7 = v169;
        if (!v194)
        {

          v177 = 0;
          v178 = 0xE000000000000000;
          MEMORY[0x266771550](0x65727574786574, 0xE700000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v180 = v187;
          v181[0] = v188[0];
          *(v181 + 9) = *(v188 + 9);
          _print_unlocked<A, B>(_:_:)();
          v119 = v177;
          v120 = v178;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          v121 = swift_allocError();
          *v122 = 11;
          *(v122 + 8) = v119;
          *(v122 + 16) = v120;
          v605 = v121;
          swift_willThrow();
          v360 = v185;
          outlined destroy of NodePersonality(&v360);
          v359 = *(&v185 + 1);
          outlined destroy of [Input](&v359, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v358 = v186;
          outlined destroy of [Input](&v358, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v357 = v187;
          outlined destroy of NodePersonality(&v357);
          outlined destroy of [Input](&v361, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v356 = *&v188[0];
          v13 = &v356;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v280[0] = v193;
        v280[1] = v194;
        v281 = v195;
        v282 = v196;
        v283 = v197;
        v1 = v605;
        UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(v563, v280, v149, v150);
        v605 = v1;
        if (v1)
        {

          v290 = v281;
          outlined destroy of String(&v290);
          v355 = v185;
          outlined destroy of NodePersonality(&v355);
          v354 = *(&v185 + 1);
          outlined destroy of [Input](&v354, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v353 = v186;
          outlined destroy of [Input](&v353, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v352 = v187;
          outlined destroy of NodePersonality(&v352);
          outlined destroy of [Input](&v361, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v351 = *&v188[0];
          v13 = &v351;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v289 = v281;
        outlined destroy of String(&v289);
        v18 = v170;
        goto LABEL_7;
      }

      if (v57 == 0x64726F6F63786574 && v5 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v367 = *(&v187 + 1);
        specialized ShaderGraphNode.output(labeled:)(&v198, 0x64726F6F63, 0xE500000000000000, *(&v187 + 1));
        if (!v199)
        {

          v177 = 0;
          v178 = 0xE000000000000000;
          MEMORY[0x266771550](0x64726F6F63, 0xE500000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v180 = v187;
          v181[0] = v188[0];
          *(v181 + 9) = *(v188 + 9);
          _print_unlocked<A, B>(_:_:)();
          v132 = v177;
          v133 = v178;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          v134 = swift_allocError();
          *v135 = 11;
          *(v135 + 8) = v132;
          *(v135 + 16) = v133;
          v605 = v134;
          swift_willThrow();
          v366 = v185;
          outlined destroy of NodePersonality(&v366);
          v365 = *(&v185 + 1);
          outlined destroy of [Input](&v365, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v364 = v186;
          outlined destroy of [Input](&v364, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v363 = v187;
          outlined destroy of NodePersonality(&v363);
          outlined destroy of [Input](&v367, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v362 = *&v188[0];
          v13 = &v362;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v284[0] = v198;
        v284[1] = v199;
        v285 = v200;
        v286 = v201;
        v287 = v202;
        v62 = v169;
        UserGraph.moveEdge(from:to:)(v563, v284);

        v7 = v62;

        v288 = v285;
        outlined destroy of String(&v288);
        goto LABEL_7;
      }

      if (v57 == 0x6C6576656CLL && v5 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v1 = v605;
        ShaderGraphNode.subscript.getter(0x6C6576656CLL, 0xE500000000000000, v203);
        if (v1)
        {
          goto LABEL_208;
        }

        Input.prependUnaryFunction(_:argumentType:in:)(0x6C6576656CLL, 0xE500000000000000, v55, v169, &v204);
        v605 = 0;

        v381[0] = v203[1];
        outlined destroy of String(v381);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v206);
        v605 = v1;
        if (v1)
        {

          v380 = v204;
          outlined destroy of NodePersonality(&v380);
          v379 = *(&v204 + 1);
          outlined destroy of [Input](&v379, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v378 = v205;
          outlined destroy of [Input](&v378, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v377 = v185;
          outlined destroy of NodePersonality(&v377);
          v376 = *(&v185 + 1);
          outlined destroy of [Input](&v376, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v375 = v186;
          outlined destroy of [Input](&v375, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v374 = v187;
          outlined destroy of NodePersonality(&v374);
          v373 = *(&v187 + 1);
          outlined destroy of [Input](&v373, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v372 = *&v188[0];
          v13 = &v372;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v63 = v169;
        UserGraph.moveEdge(from:to:)(v563, v206);

        v7 = v63;

        v371 = v206[1];
        outlined destroy of String(&v371);
        v370 = v204;
        outlined destroy of NodePersonality(&v370);
        v369 = *(&v204 + 1);
        outlined destroy of [Input](&v369, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v368 = v205;
        outlined destroy of [Input](&v368, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v18 = v170;
        goto LABEL_7;
      }

      if (v57 == 1935763810 && v5 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v1 = v605;
        ShaderGraphNode.subscript.getter(1935763810, 0xE400000000000000, v207);
        if (v1)
        {
          goto LABEL_212;
        }

        Input.prependUnaryFunction(_:argumentType:in:)(1935763810, 0xE400000000000000, v55, v169, &v208);
        v605 = 0;

        v401[0] = v207[1];
        outlined destroy of String(v401);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v210);
        v605 = v1;
        if (v1)
        {

          v400 = v208;
          outlined destroy of NodePersonality(&v400);
          v399 = *(&v208 + 1);
          outlined destroy of [Input](&v399, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v398 = v209;
          outlined destroy of [Input](&v398, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v397 = v185;
          outlined destroy of NodePersonality(&v397);
          v396 = *(&v185 + 1);
          outlined destroy of [Input](&v396, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v395 = v186;
          outlined destroy of [Input](&v395, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v394 = v187;
          outlined destroy of NodePersonality(&v394);
          v393 = *(&v187 + 1);
          outlined destroy of [Input](&v393, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v392 = *&v188[0];
          v13 = &v392;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v64 = v169;
        UserGraph.moveEdge(from:to:)(v563, v210);

        v7 = v64;

        v391 = v210[1];
        outlined destroy of String(&v391);
        v390 = v208;
        outlined destroy of NodePersonality(&v390);
        v389 = *(&v208 + 1);
        outlined destroy of [Input](&v389, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v388 = v209;
        v65 = &v388;
LABEL_59:
        outlined destroy of [Input](v65, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        goto LABEL_7;
      }

      if (v57 == 0x5F646F6C5F6E696DLL && v5 == 0xED0000706D616C63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v66 = v605;
        ShaderGraphNode.subscript.getter(0x5F646F6C5F6E696DLL, 0xED0000706D616C63, v211);
        if (v66)
        {
          v605 = v66;

          v427 = v185;
          outlined destroy of NodePersonality(&v427);
          v426 = *(&v185 + 1);
          outlined destroy of [Input](&v426, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v425 = v186;
          outlined destroy of [Input](&v425, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v424 = v187;
          outlined destroy of NodePersonality(&v424);
          v423 = *(&v187 + 1);
          outlined destroy of [Input](&v423, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v422 = *&v188[0];
          v13 = &v422;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        Input.prependUnaryFunction(_:argumentType:in:)(0x5F646F6C5F6E696DLL, 0xED0000706D616C63, v55, v169, &v212);
        v605 = 0;

        v421[0] = v211[1];
        outlined destroy of String(v421);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v214);
        v605 = v1;
        if (v1)
        {

          v420 = v212;
          outlined destroy of NodePersonality(&v420);
          v419 = *(&v212 + 1);
          outlined destroy of [Input](&v419, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v418 = v213;
          outlined destroy of [Input](&v418, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v417 = v185;
          outlined destroy of NodePersonality(&v417);
          v416 = *(&v185 + 1);
          outlined destroy of [Input](&v416, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v415 = v186;
          outlined destroy of [Input](&v415, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v20);

          v414 = v187;
          outlined destroy of NodePersonality(&v414);
          v413 = *(&v187 + 1);
          outlined destroy of [Input](&v413, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v412 = *&v188[0];
          v13 = &v412;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v67 = v169;
        UserGraph.moveEdge(from:to:)(v563, v214);

        v7 = v67;

        v411 = v214[1];
        outlined destroy of String(&v411);
        v410 = v212;
        outlined destroy of NodePersonality(&v410);
        v409 = *(&v212 + 1);
        outlined destroy of [Input](&v409, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v408 = v213;
        v65 = &v408;
        goto LABEL_59;
      }

      if (v57 == 0x746E656964617267 && v5 == 0xEC000000785F6432 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v160)
        {
          v68 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v215);
          v605 = v68;
          if (v68)
          {

            v441 = v185;
            outlined destroy of NodePersonality(&v441);
            v440 = *(&v185 + 1);
            outlined destroy of [Input](&v440, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v439 = v186;
            outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v148, v154, v152);
            outlined consume of ShaderGraphNode?(v146, v163, v166);

            v438 = v187;
            outlined destroy of NodePersonality(&v438);
            v437 = *(&v187 + 1);
            outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v436 = *&v188[0];
            v13 = &v436;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient2DNode(in:)(&v216);
          v605 = 0;

          v435[0] = v215[1];
          outlined destroy of String(v435);
          v159 = v220;
          v155 = v218;
          v156 = v219;
          v160 = *(&v216 + 1);
          v157 = v216;
          v158 = v217;
        }

        v69 = v157;
        v566 = v157;
        v5 = v160;
        v567 = v160;
        v568 = v158;
        v569 = v155;
        v570 = v156;
        v159 &= 1u;
        v571 = v159;
        outlined copy of NodePersonality(v157);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2019840100, 0xE400000000000000, v221);
        v605 = v1;
        if (v1)
        {

          v434 = v185;
          outlined destroy of NodePersonality(&v434);
          v433 = *(&v185 + 1);
          outlined destroy of [Input](&v433, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v432 = v186;
          outlined destroy of [Input](&v432, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of NodePersonality(v69);

          outlined consume of NodePersonality(v69);

          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v166);

          v431 = v187;
          outlined destroy of NodePersonality(&v431);
          v430 = *(&v187 + 1);
          outlined destroy of [Input](&v430, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v429 = *&v188[0];
          v13 = &v429;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v69);

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v221);

        v428 = v221[1];
        v70 = &v428;
        goto LABEL_74;
      }

      if (v174 == 0x746E656964617267 && v167 == 0xEC000000795F6432 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v160)
        {
          v71 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v222);
          v605 = v71;
          if (v71)
          {

            v455 = v185;
            outlined destroy of NodePersonality(&v455);
            v454 = *(&v185 + 1);
            outlined destroy of [Input](&v454, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v453 = v186;
            outlined destroy of [Input](&v453, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v148, v154, v152);
            outlined consume of ShaderGraphNode?(v146, v163, v166);

            v452 = v187;
            outlined destroy of NodePersonality(&v452);
            v451 = *(&v187 + 1);
            outlined destroy of [Input](&v451, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v450 = *&v188[0];
            v13 = &v450;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient2DNode(in:)(&v223);
          v605 = 0;

          v449[0] = v222[1];
          outlined destroy of String(v449);
          v159 = v227;
          v155 = v225;
          v156 = v226;
          v160 = *(&v223 + 1);
          v157 = v223;
          v158 = v224;
        }

        v572 = v157;
        v573 = v160;
        v574 = v158;
        v575 = v155;
        v576 = v156;
        v159 &= 1u;
        v577 = v159;
        outlined copy of NodePersonality(v157);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2036617316, 0xE400000000000000, v228);
        v605 = v1;
        if (v1)
        {

          v448 = v185;
          outlined destroy of NodePersonality(&v448);
          v447 = *(&v185 + 1);
          outlined destroy of [Input](&v447, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v446 = v186;
          outlined destroy of [Input](&v446, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v136 = v157;
          outlined consume of NodePersonality(v157);

          outlined consume of NodePersonality(v136);

          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v166);

          v445 = v187;
          outlined destroy of NodePersonality(&v445);
          v444 = *(&v187 + 1);
          outlined destroy of [Input](&v444, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v443 = *&v188[0];
          v13 = &v443;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v157);

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v228);

        v442 = v228[1];
        v70 = &v442;
        goto LABEL_74;
      }

      if (v174 == 0x746E656964617267 && v167 == 0xEC000000785F6433 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v154)
        {
          v72 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v229);
          v605 = v72;
          if (v72)
          {

            v469 = v185;
            outlined destroy of NodePersonality(&v469);
            v468 = *(&v185 + 1);
            outlined destroy of [Input](&v468, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v467 = v186;
            outlined destroy of [Input](&v467, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v157, v160, v158);
            outlined consume of ShaderGraphNode?(v146, v163, v166);

            v466 = v187;
            outlined destroy of NodePersonality(&v466);
            v465 = *(&v187 + 1);
            outlined destroy of [Input](&v465, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v464 = *&v188[0];
            v13 = &v464;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient3DNode(in:)(&v230);
          v605 = 0;

          v463[0] = v229[1];
          outlined destroy of String(v463);
          v153 = v234;
          v151 = v233;
          v152 = v231;
          v154 = *(&v230 + 1);
          v147 = v232;
          v148 = v230;
        }

        v578 = v148;
        v579 = v154;
        v580 = v152;
        v581 = v147;
        v582 = v151;
        v153 &= 1u;
        v583 = v153;
        outlined copy of NodePersonality(v148);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2019840100, 0xE400000000000000, v235);
        v605 = v1;
        if (v1)
        {

          v462 = v185;
          outlined destroy of NodePersonality(&v462);
          v461 = *(&v185 + 1);
          outlined destroy of [Input](&v461, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v460 = v186;
          outlined destroy of [Input](&v460, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v137 = v148;
          outlined consume of NodePersonality(v148);

          outlined consume of NodePersonality(v137);

          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v146, v163, v166);

          v459 = v187;
          outlined destroy of NodePersonality(&v459);
          v458 = *(&v187 + 1);
          outlined destroy of [Input](&v458, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v457 = *&v188[0];
          v13 = &v457;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v148);

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v235);

        v456 = v235[1];
        v70 = &v456;
        goto LABEL_74;
      }

      if (v174 == 0x746E656964617267 && v167 == 0xEC000000795F6433 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v154)
        {
          v73 = v605;
          ShaderGraphNode.subscript.getter(0x746E656964617267, 0xE800000000000000, v236);
          v605 = v73;
          if (v73)
          {

            v483 = v185;
            outlined destroy of NodePersonality(&v483);
            v482 = *(&v185 + 1);
            outlined destroy of [Input](&v482, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v481 = v186;
            outlined destroy of [Input](&v481, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v157, v160, v158);
            outlined consume of ShaderGraphNode?(v146, v163, v166);

            v480 = v187;
            outlined destroy of NodePersonality(&v480);
            v479 = *(&v187 + 1);
            outlined destroy of [Input](&v479, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v478 = *&v188[0];
            v13 = &v478;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateGradient3DNode(in:)(&v237);
          v605 = 0;

          v477[0] = v236[1];
          outlined destroy of String(v477);
          v153 = v241;
          v151 = v240;
          v152 = v238;
          v154 = *(&v237 + 1);
          v147 = v239;
          v148 = v237;
        }

        v584 = v148;
        v585 = v154;
        v586 = v152;
        v587 = v147;
        v588 = v151;
        v153 &= 1u;
        v589 = v153;
        outlined copy of NodePersonality(v148);

        v1 = v605;
        ShaderGraphNode.subscript.getter(2036617316, 0xE400000000000000, v242);
        v605 = v1;
        if (v1)
        {

          v476 = v185;
          outlined destroy of NodePersonality(&v476);
          v475 = *(&v185 + 1);
          outlined destroy of [Input](&v475, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v474 = v186;
          outlined destroy of [Input](&v474, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v138 = v148;
          outlined consume of NodePersonality(v148);

          outlined consume of NodePersonality(v138);

          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v146, v163, v166);

          v473 = v187;
          outlined destroy of NodePersonality(&v473);
          v472 = *(&v187 + 1);
          outlined destroy of [Input](&v472, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v471 = *&v188[0];
          v13 = &v471;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v148);

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v242);

        v470 = v242[1];
        v70 = &v470;
        goto LABEL_74;
      }

      if (v174 == 0x746C7561666564 && v167 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v1 = v605;
        ShaderGraphNode.subscript.getter(v174, v167, v243);
        v605 = v1;
        if (v1)
        {

          v490 = v185;
          outlined destroy of NodePersonality(&v490);
          v489 = *(&v185 + 1);
          outlined destroy of [Input](&v489, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v488 = v186;
          outlined destroy of [Input](&v488, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v166);
          swift_bridgeObjectRelease_n();

          v487 = v187;
          outlined destroy of NodePersonality(&v487);
          v486 = *(&v187 + 1);
          outlined destroy of [Input](&v486, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v485 = *&v188[0];
          v13 = &v485;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v243);

        v484 = v243[1];
        v70 = &v484;
        goto LABEL_74;
      }

      if (v174 == 0x73696E615F78616DLL && v167 == 0xEE0079706F72746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v74 = v605;
        ShaderGraphNode.subscript.getter(0x73696E615F78616DLL, 0xEE0079706F72746FLL, v244);
        v605 = v74;
        if (v74)
        {

          v510 = v185;
          outlined destroy of NodePersonality(&v510);
          v509 = *(&v185 + 1);
          outlined destroy of [Input](&v509, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v508 = v186;
          outlined destroy of [Input](&v508, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v166);

          v507 = v187;
          outlined destroy of NodePersonality(&v507);
          v506 = *(&v187 + 1);
          outlined destroy of [Input](&v506, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v505 = *&v188[0];
          v13 = &v505;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        Input.prependUnaryFunction(_:argumentType:in:)(0x73696E615F78616DLL, 0xEE0079706F72746FLL, v175, v169, &v245);
        v605 = 0;

        v504[0] = v244[1];
        outlined destroy of String(v504);
        v1 = v605;
        ShaderGraphNode.subscript.getter(28265, 0xE200000000000000, v247);
        v605 = v1;
        if (v1)
        {

          v503 = v185;
          outlined destroy of NodePersonality(&v503);
          v502 = *(&v185 + 1);
          outlined destroy of [Input](&v502, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v501 = v186;
          outlined destroy of [Input](&v501, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v500 = v245;
          outlined destroy of NodePersonality(&v500);
          v499 = *(&v245 + 1);
          outlined destroy of [Input](&v499, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v498 = v246;
          outlined destroy of [Input](&v498, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v166);

          v497 = v187;
          outlined destroy of NodePersonality(&v497);
          v496 = *(&v187 + 1);
          outlined destroy of [Input](&v496, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v495 = *&v188[0];
          v13 = &v495;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v247);

        v494 = v247[1];
        outlined destroy of String(&v494);
        v493 = v245;
        outlined destroy of NodePersonality(&v493);
        v492 = *(&v245 + 1);
        outlined destroy of [Input](&v492, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v491 = v246;
        outlined destroy of [Input](&v491, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        goto LABEL_75;
      }

      if (v174 == 0x6E696D5F646F6CLL && v167 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v163)
        {
          v75 = v605;
          ShaderGraphNode.subscript.getter(0x6D616C635F646F6CLL, v145, v248);
          v605 = v75;
          if (v75)
          {

            v524 = v185;
            outlined destroy of NodePersonality(&v524);
            v523 = *(&v185 + 1);
            outlined destroy of [Input](&v523, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v522 = v186;
            outlined destroy of [Input](&v522, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v157, v160, v158);
            outlined consume of ShaderGraphNode?(v148, v154, v152);

            v521 = v187;
            outlined destroy of NodePersonality(&v521);
            v520 = *(&v187 + 1);
            outlined destroy of [Input](&v520, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v519 = *&v188[0];
            v13 = &v519;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateLODClampNode(in:)(&v249);
          v605 = 0;

          v518[0] = v248[1];
          outlined destroy of String(v518);
          v161 = v253;
          v170 = v252;
          v171 = v251;
          v166 = v250;
          v163 = *(&v249 + 1);
          v146 = v249;
        }

        v590 = v146;
        v591 = v163;
        v592 = v166;
        v593 = v171;
        v594 = v170;
        v76 = v161 & 1;
        v595 = v161 & 1;
        outlined copy of NodePersonality(v146);

        v1 = v605;
        ShaderGraphNode.subscript.getter(0x6E696D5F646F6CLL, 0xE700000000000000, v254);
        v605 = v1;
        if (v1)
        {

          v517 = v185;
          outlined destroy of NodePersonality(&v517);
          v516 = *(&v185 + 1);
          outlined destroy of [Input](&v516, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v515 = v186;
          outlined destroy of [Input](&v515, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v139 = v146;
          outlined consume of NodePersonality(v146);

          outlined consume of NodePersonality(v139);

          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);

          v514 = v187;
          outlined destroy of NodePersonality(&v514);
          v513 = *(&v187 + 1);
          outlined destroy of [Input](&v513, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v512 = *&v188[0];
          v13 = &v512;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v146);
        v20 = v166;

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v254);

        v511 = v254[1];
        v77 = &v511;
        goto LABEL_120;
      }

      if (v174 == 0x78616D5F646F6CLL && v167 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (!v163)
        {
          v78 = v605;
          ShaderGraphNode.subscript.getter(0x6D616C635F646F6CLL, v145, v255);
          v605 = v78;
          if (v78)
          {

            v538 = v185;
            outlined destroy of NodePersonality(&v538);
            v537 = *(&v185 + 1);
            outlined destroy of [Input](&v537, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v536 = v186;
            outlined destroy of [Input](&v536, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            outlined consume of ShaderGraphNode?(v157, v160, v158);
            outlined consume of ShaderGraphNode?(v148, v154, v152);

            v535 = v187;
            outlined destroy of NodePersonality(&v535);
            v534 = *(&v187 + 1);
            outlined destroy of [Input](&v534, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v533 = *&v188[0];
            v13 = &v533;
            return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          }

          Input.prependCreateLODClampNode(in:)(&v256);
          v605 = 0;

          v532[0] = v255[1];
          outlined destroy of String(v532);
          v161 = v260;
          v170 = v259;
          v171 = v258;
          v166 = v257;
          v163 = *(&v256 + 1);
          v146 = v256;
        }

        v596 = v146;
        v597 = v163;
        v598 = v166;
        v599 = v171;
        v600 = v170;
        v76 = v161 & 1;
        v601 = v161 & 1;
        outlined copy of NodePersonality(v146);

        v1 = v605;
        ShaderGraphNode.subscript.getter(0x78616D5F646F6CLL, 0xE700000000000000, v261);
        v605 = v1;
        if (v1)
        {

          v531 = v185;
          outlined destroy of NodePersonality(&v531);
          v530 = *(&v185 + 1);
          outlined destroy of [Input](&v530, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v529 = v186;
          outlined destroy of [Input](&v529, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v140 = v146;
          outlined consume of NodePersonality(v146);

          outlined consume of NodePersonality(v140);

          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);

          v528 = v187;
          outlined destroy of NodePersonality(&v528);
          v527 = *(&v187 + 1);
          outlined destroy of [Input](&v527, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v526 = *&v188[0];
          v13 = &v526;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        outlined consume of NodePersonality(v146);
        v20 = v166;

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v261);

        v525 = v261[1];
        v77 = &v525;
LABEL_120:
        outlined destroy of String(v77);
        v161 = v76;
LABEL_76:
        v18 = v170;
        v19 = v171;
        v21 = v168;
        goto LABEL_7;
      }

      if (v174 == 0x64726F6F63 && v167 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v174 == 0x7365726464615F73 && v167 == 0xE900000000000073 || ((v79 = v174, v80 = v167, v81 = _stringCompareWithSmolCheck(_:_:expecting:)(), v79 == 0x7365726464615F74) ? (v82 = v80 == 0xE900000000000073) : (v82 = 0), !v82 ? (v83 = 0) : (v83 = 1), (v81 & 1) != 0 || (v83 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v174 == 0x635F726564726F62 && v167 == 0xEC000000726F6C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v174 == 0x746C69665F67616DLL && v167 == 0xEA00000000007265 || ((v84 = v174, v85 = v167, v86 = _stringCompareWithSmolCheck(_:_:expecting:)(), v84 == 0x746C69665F6E696DLL) ? (v87 = v85 == 0xEA00000000007265) : (v87 = 0), !v87 ? (v88 = 0) : (v88 = 1), (v86 & 1) != 0 || (v88 & 1) != 0 || ((v89 = v174, v90 = v167, v91 = _stringCompareWithSmolCheck(_:_:expecting:)(), v89 == 0x746C69665F70696DLL) ? (v92 = v90 == 0xEA00000000007265) : (v92 = 0), !v92 ? (v93 = 0) : (v93 = 1), (v91 & 1) != 0 || (v93 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v174 == 0x5F657261706D6F63 && v167 == 0xEC000000636E7566 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
      {
        v1 = v605;
        ShaderGraphNode.subscript.getter(v174, v167, v262);
        v605 = v1;
        if (v1)
        {

          v545 = v185;
          outlined destroy of NodePersonality(&v545);
          v544 = *(&v185 + 1);
          outlined destroy of [Input](&v544, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v543 = v186;
          outlined destroy of [Input](&v543, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v146, v163, v166);
          swift_bridgeObjectRelease_n();

          v542 = v187;
          outlined destroy of NodePersonality(&v542);
          v541 = *(&v187 + 1);
          outlined destroy of [Input](&v541, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v540 = *&v188[0];
          v13 = &v540;
          return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v7 = v169;
        UserGraph.moveEdge(from:to:)(v563, v262);

        v539 = v262[1];
        v70 = &v539;
LABEL_74:
        outlined destroy of String(v70);
LABEL_75:
        v20 = v166;
        goto LABEL_76;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, logger);
      v603 = v551;
      v604[0] = *v552;

      outlined init with copy of NodePersonality(&v603, &v180);
      outlined init with copy of [Input](&v602, &v180, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](v604, &v180, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      outlined destroy of ShaderGraphNode(&v551);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v177 = v98;
        *v97 = v143;
        v5 = v167;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v5, &v177);

        *(v97 + 4) = v99;
        *(v97 + 12) = 2080;
        *&v180 = 1701080942;
        *(&v180 + 1) = 0xE400000000000000;
        v179 = v144;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v100);

        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, *(&v180 + 1), &v177);

        *(v97 + 14) = v101;
        _os_log_impl(&dword_265D7D000, v95, v96, "Ignoring unexpected input '%s' on node '%s'", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v98, -1, -1);
        MEMORY[0x266773120](v97, -1, -1);
      }

      v20 = v166;
      v18 = v170;
      v19 = v171;
      goto LABEL_34;
    }

    specialized Set._Variant.insert(_:)(&v180, v57, v54);

    v20 = v166;
    v18 = v170;
    v19 = v171;
    v21 = v168;
    if (one-time initialization token for validLODOptionsSets != -1)
    {
      v59 = swift_once();
    }

    v162 = v184;
    *&v180 = v184;
    MEMORY[0x28223BE20](v59);
    v142 = &v180;
    v1 = v605;
    v61 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v141, v60);
    v605 = v1;
    if (v61)
    {
      goto LABEL_36;
    }

    swift_bridgeObjectRelease_n();
    v7 = v169;
LABEL_7:
    v17 = v176 + 1;
    if (v176 + 1 == v173)
    {
      v171 = v19;

      v102 = v163;
      if (!v163)
      {
        v163 = 0;
        v104 = v148;
        v5 = v146;
        goto LABEL_180;
      }

      v5 = v146;
      v555 = v146;
      v556 = v163;
      v557 = v20;
      v558 = v171;
      v559 = v18;
      v560 = v161 & 1;
      outlined copy of NodePersonality(v146);

      v103 = v605;
      ShaderGraphNode.subscript.getter(0x6E696D5F646F6CLL, 0xE700000000000000, &v263);
      v605 = v103;
      if (v103)
      {
        outlined consume of ShaderGraphNode?(v5, v102, v20);
        outlined consume of ShaderGraphNode?(v148, v154, v152);
        outlined consume of ShaderGraphNode?(v157, v160, v158);
        v350 = v187;
        outlined destroy of NodePersonality(&v350);
        v349 = *(&v187 + 1);
        outlined destroy of [Input](&v349, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v348 = *&v188[0];
        outlined destroy of [Input](&v348, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v347 = v185;
        outlined destroy of NodePersonality(&v347);
        v346 = *(&v185 + 1);
        outlined destroy of [Input](&v346, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v345 = v186;
        outlined destroy of [Input](&v345, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined consume of NodePersonality(v5);
LABEL_202:
      }

      v106 = v7[8];
      v107 = v7[9];
      v108 = v7[6];
      v561[7] = v7[7];
      v561[8] = v106;
      v562[0] = v107;
      *(v562 + 9) = *(v7 + 153);
      v109 = v7[5];
      v561[4] = v7[4];
      v561[5] = v109;
      v561[6] = v108;
      v110 = v7[1];
      v561[0] = *v7;
      v561[1] = v110;
      v111 = v7[3];
      v561[2] = v7[2];
      v561[3] = v111;
      outlined init with copy of UserGraph(v561, v182);
      UserGraph.node(connectedTo:)(&v263, v265);
      outlined destroy of UserGraph(v561);
      if (v265[1])
      {
        outlined destroy of [Input](v265, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      }

      else
      {
        v170 = v18;
        if (one-time initialization token for float != -1)
        {
          swift_once();
        }

        v114 = static MetalDataType.float;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_265F1F670;
        *(v115 + 32) = 7632239;
        *(v115 + 40) = 0xE300000000000000;
        *(v115 + 48) = v114;
        v116 = swift_allocObject();
        *(v116 + 16) = 0;
        *(v116 + 80) = 5;
        *(v116 + 88) = v114;
        swift_retain_n();
        v117 = v169;
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v115, v116, &v266);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v118 = v605;
        ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v268);
        v605 = v118;
        if (v118)
        {
          outlined consume of ShaderGraphNode?(v5, v163, v20);
          outlined consume of ShaderGraphNode?(v148, v154, v152);
          outlined consume of ShaderGraphNode?(v157, v160, v158);
          v344 = v187;
          outlined destroy of NodePersonality(&v344);
          v343 = *(&v187 + 1);
          outlined destroy of [Input](&v343, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v342 = *&v188[0];
          outlined destroy of [Input](&v342, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v341 = v185;
          outlined destroy of NodePersonality(&v341);
          v340 = *(&v185 + 1);
          outlined destroy of [Input](&v340, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v339 = v186;
          outlined destroy of [Input](&v339, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          v338 = v266;
          outlined destroy of NodePersonality(&v338);
          v337 = *(&v266 + 1);
          outlined destroy of [Input](&v337, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v336 = v267;
          outlined destroy of [Input](&v336, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

          v335 = v264;
          v113 = &v335;
          goto LABEL_201;
        }

        UserGraph.connect(_:to:)(v268, &v263);

        v334 = v269;
        outlined destroy of String(&v334);
        v333 = v266;
        outlined destroy of NodePersonality(&v333);
        v332 = *(&v266 + 1);
        outlined destroy of [Input](&v332, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v331 = v267;
        outlined destroy of [Input](&v331, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v18 = v170;
        v7 = v117;
      }

      v112 = v605;
      ShaderGraphNode.subscript.getter(0x78616D5F646F6CLL, 0xE700000000000000, &v270);
      v605 = v112;
      if (v112)
      {
        outlined consume of ShaderGraphNode?(v5, v163, v20);
        outlined consume of ShaderGraphNode?(v148, v154, v152);
        outlined consume of ShaderGraphNode?(v157, v160, v158);
        v330 = v187;
        outlined destroy of NodePersonality(&v330);
        v329 = *(&v187 + 1);
        outlined destroy of [Input](&v329, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v328 = *&v188[0];
        outlined destroy of [Input](&v328, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v327 = v185;
        outlined destroy of NodePersonality(&v327);
        v326 = *(&v185 + 1);
        outlined destroy of [Input](&v326, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v325 = v186;
        outlined destroy of [Input](&v325, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v324 = v264;
        v113 = &v324;
LABEL_201:
        outlined destroy of String(v113);
        outlined consume of NodePersonality(v5);
        goto LABEL_202;
      }

      v123 = v7[9];
      v553[8] = v7[8];
      v554[0] = v123;
      *(v554 + 9) = *(v7 + 153);
      v124 = v7[5];
      v553[4] = v7[4];
      v553[5] = v124;
      v125 = v7[7];
      v553[6] = v7[6];
      v553[7] = v125;
      v126 = v7[1];
      v553[0] = *v7;
      v553[1] = v126;
      v127 = v7[3];
      v553[2] = v7[2];
      v553[3] = v127;
      outlined init with copy of UserGraph(v553, v182);
      UserGraph.node(connectedTo:)(&v270, v272);
      outlined destroy of UserGraph(v553);
      if (v272[1])
      {
        outlined destroy of [Input](v272, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

        v306 = v271;
        outlined destroy of String(&v306);

        v305 = v264;
        outlined destroy of String(&v305);
        outlined consume of NodePersonality(v5);

LABEL_195:
        v104 = v148;
        goto LABEL_180;
      }

      v170 = v18;
      if (one-time initialization token for float != -1)
      {
        swift_once();
      }

      v128 = static MetalDataType.float;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_265F1F670;
      *(v129 + 32) = 7632239;
      *(v129 + 40) = 0xE300000000000000;
      *(v129 + 48) = v128;
      v130 = swift_allocObject();
      *(v130 + 16) = 1232348144;
      *(v130 + 80) = 5;
      *(v130 + 88) = v128;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v129, v130, &v273);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v131 = v605;
      ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v275);
      v605 = v131;
      if (v131)
      {
        outlined consume of ShaderGraphNode?(v5, v163, v20);
        outlined consume of ShaderGraphNode?(v148, v154, v152);
        outlined consume of ShaderGraphNode?(v157, v160, v158);
        v323 = v187;
        outlined destroy of NodePersonality(&v323);
        v322 = *(&v187 + 1);
        outlined destroy of [Input](&v322, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v321 = *&v188[0];
        outlined destroy of [Input](&v321, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v320 = v185;
        outlined destroy of NodePersonality(&v320);
        v319 = *(&v185 + 1);
        outlined destroy of [Input](&v319, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v318 = v186;
        outlined destroy of [Input](&v318, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v317 = v273;
        outlined destroy of NodePersonality(&v317);
        v316 = *(&v273 + 1);
        outlined destroy of [Input](&v316, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v315 = v274;
        outlined destroy of [Input](&v315, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v314 = v271;
        outlined destroy of String(&v314);

        v313 = v264;
        v113 = &v313;
        goto LABEL_201;
      }

LABEL_205:
      UserGraph.connect(_:to:)(v275, &v270);

      v312 = v271;
      outlined destroy of String(&v312);

      v311 = v264;
      outlined destroy of String(&v311);
      outlined consume of NodePersonality(v5);

      v310 = v276;
      outlined destroy of String(&v310);
      v309 = v273;
      outlined destroy of NodePersonality(&v309);
      v308 = *(&v273 + 1);
      outlined destroy of [Input](&v308, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v307 = v274;
      outlined destroy of [Input](&v307, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      goto LABEL_195;
    }
  }

  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  v605 = v1;

  v407 = v185;
  outlined destroy of NodePersonality(&v407);
  v406 = *(&v185 + 1);
  outlined destroy of [Input](&v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v405 = v186;
  outlined destroy of [Input](&v405, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  outlined consume of ShaderGraphNode?(v157, v160, v158);
  outlined consume of ShaderGraphNode?(v148, v154, v152);
  outlined consume of ShaderGraphNode?(v146, v163, v20);

  v404 = v187;
  outlined destroy of NodePersonality(&v404);
  v403 = *(&v187 + 1);
  outlined destroy of [Input](&v403, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v402 = *&v188[0];
  v13 = &v402;
  return outlined destroy of [Input](v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
}

void UserGraph.insertSampleTexture(for:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  specialized ShaderGraphNode.output(labeled:)(&v80, 7632239, 0xE300000000000000, *(a1 + 2));
  v6 = v81;
  if (v81)
  {
    v79 = a2;
    v93 = v82;
    outlined destroy of String(&v93);
    v7 = specialized ShaderGraphNode.metalTextureType.getter(*a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_265F21D70;
    v9 = one-time initialization token for sampler;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = static MetalDataType.sampler;
    *(v8 + 32) = 0x72656C706D6173;
    *(v8 + 40) = 0xE700000000000000;
    *(v8 + 48) = v10;
    *(v8 + 56) = 0x65727574786574;
    *(v8 + 64) = 0xE700000000000000;
    *(v8 + 72) = v7;
    *(v8 + 80) = 0x746C7561666564;
    *(v8 + 88) = 0xE700000000000000;
    *(v8 + 96) = v6;
    v11 = one-time initialization token for float2;

    if (v11 != -1)
    {
      swift_once();
    }

    v94 = v3;
    v12 = static MetalDataType.float2;
    *(v8 + 104) = 0x64726F6F63;
    *(v8 + 112) = 0xE500000000000000;
    *(v8 + 120) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_265F1F670;
    v14 = one-time initialization token for texture2d_half;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = *(*v7 + 128);

    v17 = v15(v16);

    v18 = "ND_sample_texture2d_float";
    v19 = 0xD000000000000018;
    if ((v17 & 1) == 0)
    {
      v19 = 0xD000000000000019;
      v18 = "realitykit_cubeimage_";
    }

    *(v13 + 32) = v19;
    *(v13 + 40) = v18 | 0x8000000000000000;
    v20 = *(a1 + 1);
    specialized ShaderGraphNode.output(labeled:)(v83, 1935763810, 0xE400000000000000, v20);
    if (v83[1])
    {
      outlined destroy of [Input](v83, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      if (one-time initialization token for bias != -1)
      {
        swift_once();
      }

      v21 = static MetalDataType.bias;

      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[24 * v24];
      *(v25 + 4) = 1935763810;
      *(v25 + 5) = 0xE400000000000000;
      *(v25 + 6) = v21;
      v27 = *(v13 + 16);
      v26 = *(v13 + 24);
      if (v27 >= v26 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v13);
      }

      *(v13 + 16) = v27 + 1;
      v28 = v13 + 16 * v27;
      *(v28 + 32) = 1935763810;
      *(v28 + 40) = 0xE400000000000000;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    specialized ShaderGraphNode.output(labeled:)(v84, 0x6C6576656CLL, 0xE500000000000000, v20);
    if (v84[1])
    {
      outlined destroy of [Input](v84, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      if (one-time initialization token for level != -1)
      {
        swift_once();
      }

      v40 = static MetalDataType.level;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v42 = *(v22 + 2);
      v41 = *(v22 + 3);
      if (v42 >= v41 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
      }

      *(v22 + 2) = v42 + 1;
      v43 = &v22[24 * v42];
      *(v43 + 4) = 0x6C6576656CLL;
      *(v43 + 5) = 0xE500000000000000;
      *(v43 + 6) = v40;
      v45 = *(v13 + 16);
      v44 = *(v13 + 24);
      if (v45 >= v44 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v13);
      }

      *(v13 + 16) = v45 + 1;
      v46 = v13 + 16 * v45;
      *(v46 + 32) = 6582124;
      *(v46 + 40) = 0xE300000000000000;
    }

    specialized ShaderGraphNode.output(labeled:)(v85, 0x746E656964617267, 0xEC000000785F6432, v20);
    if (v85[1])
    {
      outlined destroy of [Input](v85, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      specialized ShaderGraphNode.output(labeled:)(v86, 0x746E656964617267, 0xEC000000795F6432, v20);
      if (v86[1])
      {
        outlined destroy of [Input](v86, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
        if (one-time initialization token for gradient2d != -1)
        {
          swift_once();
        }

        v47 = static MetalDataType.gradient2d;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v49 = *(v22 + 2);
        v48 = *(v22 + 3);
        if (v49 >= v48 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v22);
        }

        *(v22 + 2) = v49 + 1;
        v50 = &v22[24 * v49];
        *(v50 + 4) = 0x746E656964617267;
        *(v50 + 5) = 0xE800000000000000;
        *(v50 + 6) = v47;
        v52 = *(v13 + 16);
        v51 = *(v13 + 24);
        if (v52 >= v51 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v13);
        }

        *(v13 + 16) = v52 + 1;
        v53 = v13 + 16 * v52;
        *(v53 + 32) = 0x746E656964617267;
        *(v53 + 40) = 0xEA00000000006432;
      }
    }

    specialized ShaderGraphNode.output(labeled:)(v87, 0x746E656964617267, 0xEC000000785F6433, v20);
    if (v87[1])
    {
      outlined destroy of [Input](v87, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      specialized ShaderGraphNode.output(labeled:)(v88, 0x746E656964617267, 0xEC000000795F6433, v20);
      if (v88[1])
      {
        outlined destroy of [Input](v88, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
        specialized ShaderGraphNode.output(labeled:)(v89, 0x746E656964617267, 0xEC0000007A5F6433, v20);
        if (v89[1])
        {
          outlined destroy of [Input](v89, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
          if (one-time initialization token for gradient2d != -1)
          {
            swift_once();
          }

          v54 = static MetalDataType.gradient2d;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
          }

          v56 = *(v22 + 2);
          v55 = *(v22 + 3);
          if (v56 >= v55 >> 1)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v22);
          }

          *(v22 + 2) = v56 + 1;
          v57 = &v22[24 * v56];
          *(v57 + 4) = 0x746E656964617267;
          *(v57 + 5) = 0xE800000000000000;
          *(v57 + 6) = v54;
          v59 = *(v13 + 16);
          v58 = *(v13 + 24);
          if (v59 >= v58 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v13);
          }

          *(v13 + 16) = v59 + 1;
          v60 = v13 + 16 * v59;
          *(v60 + 32) = 0x746E656964617267;
          *(v60 + 40) = 0xEA00000000006433;
        }
      }
    }

    isUniquelyReferenced_nonNull_native = specialized ShaderGraphNode.output(labeled:)(v90, 0x5F646F6C5F6E696DLL, 0xED0000706D616C63, v20);
    if (v90[1])
    {
      outlined destroy of [Input](v90, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
      if (one-time initialization token for min_lod_clamp != -1)
      {
        swift_once();
      }

      v62 = static MetalDataType.min_lod_clamp;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      v64 = *(v22 + 2);
      v63 = *(v22 + 3);
      if (v64 >= v63 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      *(v22 + 2) = v64 + 1;
      v65 = &v22[24 * v64];
      strcpy(v65 + 32, "min_lod_clamp");
      *(v65 + 23) = -4864;
      *(v65 + 6) = v62;
      v67 = *(v13 + 16);
      v66 = *(v13 + 24);
      if (v67 >= v66 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v67 + 1;
      v68 = v13 + 16 * v67;
      strcpy((v68 + 32), "min_lod_clamp");
      *(v68 + 46) = -4864;
    }

    v69 = (*(*v6 + 144))(isUniquelyReferenced_nonNull_native);
    if (v69)
    {
      v71 = *(v69 + 24);
      v70 = *(v69 + 32);

      v73 = *(v13 + 16);
      v72 = *(v13 + 24);
      if (v73 >= v72 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v13);
      }

      *(v13 + 16) = v73 + 1;
      v74 = v13 + 16 * v73;
      *(v74 + 32) = v71;
      *(v74 + 40) = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      BidirectionalCollection<>.joined(separator:)();

      specialized Array.append<A>(contentsOf:)(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_265F1F670;
      *(v75 + 32) = 7632239;
      *(v75 + 40) = 0xE300000000000000;
      *(v75 + 48) = v6;
      v76 = swift_allocObject();

      *(v76 + 16) = String.init<A>(_:)();
      *(v76 + 24) = v77;
      *(v76 + 32) = v6;

      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v8, v75, v76 | 0x2000000000000000, &v91);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      v78 = v92[0];
      *v79 = v91;
      v79[1] = v78;
      *(v79 + 25) = *(v92 + 9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();

    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    v29 = swift_allocError();
    *v30 = 8;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0xE000000000000000;
    swift_willThrow();
    v31 = v29;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, logger);
    v33 = v29;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v29;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_265D7D000, v34, v35, "%@", v36, 0xCu);
      outlined destroy of [Input](v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v37, -1, -1);
      MEMORY[0x266773120](v36, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t Input.prependUnaryFunction(_:argumentType:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v31[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 28265;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_265F1F670;
  v10 = v5[1];
  *(v9 + 32) = 7632239;
  *(v9 + 40) = 0xE300000000000000;
  *(v9 + 48) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v10;
  swift_retain_n();

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v9, v11 | 0x2000000000000000, &v17);
  swift_setDeallocating();
  swift_arrayDestroy();

  swift_setDeallocating();
  swift_arrayDestroy();
  v31[0] = v18[0];
  specialized ShaderGraphNode.output(labeled:)(&v19, 7632239, 0xE300000000000000, v18[0]);
  if (v20)
  {
    v24[0] = v19;
    v24[1] = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    UserGraph.connect(_:to:)(v24, v5);

    v28 = v25;
    result = outlined destroy of String(&v28);
    v13 = *v18;
    *a5 = v17;
    a5[1] = v13;
    *(a5 + 25) = *(&v18[1] + 1);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 14;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    v30 = v17;
    outlined destroy of NodePersonality(&v30);
    v29 = *(&v17 + 1);
    outlined destroy of [Input](&v29, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v31, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t Input.prependCreateGradient2DNode(in:)@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, _OWORD *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  if (*a1 != -1)
  {
    swift_once();
  }

  v10 = *a2;
  *(inited + 32) = 2019840100;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = 2036617316;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_265F1F670;
  v12 = v5[1];
  *(v11 + 32) = 7632239;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 0x746E656964617267;
  *(v13 + 24) = a3;
  *(v13 + 32) = v12;
  swift_retain_n();
  swift_retain_n();
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v11, v13 | 0x2000000000000000, &v18);
  swift_setDeallocating();
  swift_arrayDestroy();

  swift_setDeallocating();
  swift_arrayDestroy();
  v32[0] = v19[0];
  specialized ShaderGraphNode.output(labeled:)(&v20, 7632239, 0xE300000000000000, v19[0]);
  if (v21)
  {
    v25[0] = v20;
    v25[1] = v21;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    UserGraph.connect(_:to:)(v25, v5);

    v29 = v26;
    result = outlined destroy of String(&v29);
    v15 = *v19;
    *a5 = v18;
    a5[1] = v15;
    *(a5 + 25) = *(&v19[1] + 1);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v16 = 14;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    swift_willThrow();
    v31 = v18;
    outlined destroy of NodePersonality(&v31);
    v30 = *(&v18 + 1);
    outlined destroy of [Input](&v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v32, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

uint64_t Input.prependCreateLODClampNode(in:)@<X0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  v4 = static MetalDataType.float;
  *(inited + 32) = 0x6E696D5F646F6CLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = 0x78616D5F646F6CLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_265F1F670;
  v6 = v1[1];
  *(v5 + 32) = 7632239;
  *(v5 + 40) = 0xE300000000000000;
  *(v5 + 48) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0x6D616C635F646F6CLL;
  *(v7 + 24) = 0xE900000000000070;
  *(v7 + 32) = v6;
  swift_retain_n();
  swift_retain_n();
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v5, v7 | 0x2000000000000000, &v11);
  swift_setDeallocating();
  swift_arrayDestroy();

  swift_setDeallocating();
  swift_arrayDestroy();
  v25[0] = v12[0];
  specialized ShaderGraphNode.output(labeled:)(&v13, 7632239, 0xE300000000000000, v12[0]);
  if (v14)
  {
    v18[0] = v13;
    v18[1] = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    UserGraph.connect(_:to:)(v18, v1);

    v22 = v19;
    result = outlined destroy of String(&v22);
    v9 = *v12;
    *a1 = v11;
    a1[1] = v9;
    *(a1 + 25) = *(&v12[1] + 1);
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v10 = 14;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0xE000000000000000;
    swift_willThrow();
    v24 = v11;
    outlined destroy of NodePersonality(&v24);
    v23 = *(&v11 + 1);
    outlined destroy of [Input](&v23, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  return result;
}

double UserGraph.insertConstantValue(type:value:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v7 = swift_allocObject();
  v8 = *(a2 + 48);
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v9;
  *(v7 + 88) = a1;
  swift_retain_n();
  outlined init with copy of SGDataTypeStorage(a2, &v12);
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v7, &v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = v13[0];
  *a3 = v12;
  a3[1] = v10;
  result = *(v13 + 9);
  *(a3 + 25) = *(v13 + 9);
  return result;
}

uint64_t closure #1 in UserGraph.transformSamplerNodes()(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 + 56;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(v2 - 16);
    v7 = one-time initialization token for sampler;

    if (v7 != -1)
    {
      swift_once();
    }

    v2 += 56;
    v8 = (*(*v6 + 128))(static MaterialXDataType.sampler);

    if (v8)
    {
      return v5 != -1;
    }
  }

  __break(1u);
  return result;
}

BOOL closure #1 in UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(void *a1)
{
  if (*a1 >> 61 != 5)
  {
    return 0;
  }

  v1._object = 0x8000000265F2D870;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2 = String.hasPrefix(_:)(v1);

  return v2;
}

uint64_t closure #2 in UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (*(v4 + 16))
  {
    v60 = *result;
    v61 = *(result + 16);
    v62 = *(result + 24);
    v9 = *(v4 + 32);
    v8 = *(v4 + 40);
    v10 = *(v4 + 48);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    v13 = *(v4 + 72);
    v14 = *(v4 + 80);
    v111[0] = v9;
    v111[1] = v8;
    v58 = v10;
    v111[2] = v10;
    v111[3] = v11;
    v111[4] = v12;
    v112 = v13;
    v113 = v14;
    v15 = a2[9];
    v118[8] = a2[8];
    v119[0] = v15;
    *(v119 + 9) = *(a2 + 153);
    v16 = a2[5];
    v118[4] = a2[4];
    v118[5] = v16;
    v17 = a2[6];
    v118[7] = a2[7];
    v118[6] = v17;
    v18 = a2[2];
    v118[3] = a2[3];
    v118[2] = v18;
    v19 = *a2;
    v118[1] = a2[1];
    v118[0] = v19;

    outlined init with copy of UserGraph(v118, &v63);
    UserGraph.node(connectedTo:)(v111, &v65);
    outlined destroy of UserGraph(v118);
    v20 = v66;
    if (v66)
    {
      v88 = v65;
      v89 = v66;
      v90[0] = v67[0];
      *(v90 + 9) = *(v67 + 9);
      v91 = v65;
      if (!(v65 >> 61) && *(v65 + 80) == 6)
      {
        v22 = *(v65 + 16);
        v21 = *(v65 + 24);
        v57 = *(v65 + 40);
        v59 = *(v65 + 32);
        v55 = *(v65 + 56);
        v56 = *(v65 + 48);
        v53 = *(v65 + 72);
        v54 = *(v65 + 64);

        v23 = v122;
        UserGraph.insertGetTexture(_:textureAssignments:customUniformsType:)(v22, v21, a3, a4, &v68);
        if (v23)
        {
          outlined destroy of NodePersonality(&v91);
          v100 = v20;
          outlined destroy of [Input](&v100, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v101 = *&v90[0];
          outlined destroy of [Input](&v101, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined consume of SGDataTypeStorage(v22, v21, v59, v57, v56, v55, v54, v53, 6);
        }

        v43 = *(&v68 + 1);
        v42 = v68;
        v44 = v69;
        outlined consume of SGDataTypeStorage(v22, v21, v59, v57, v56, v55, v54, v53, 6);
        goto LABEL_26;
      }

      v24 = a2[6];
      v116 = a2[5];
      v117[0] = v24;
      *(v117 + 9) = *(a2 + 105);
      v120 = v116;
      v121[0] = v24;
      outlined init with copy of NodePersonality(&v120, &v63);
      outlined init with copy of [Input](&v120 + 8, &v63, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](v121, &v63, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v25 = specialized static ShaderGraphNode.== infix(_:_:)(&v88, &v116);
      outlined destroy of NodePersonality(&v120);
      outlined destroy of [Input](&v120 + 8, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](v121, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      if ((v25 & 1) == 0)
      {
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v36 = 44;
        *(v36 + 8) = 0xD00000000000003ALL;
        *(v36 + 16) = 0x8000000265F30EB0;
        swift_willThrow();
        outlined destroy of NodePersonality(&v91);
        v96 = v89;
        outlined destroy of [Input](&v96, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        v97 = *&v90[0];
        outlined destroy of [Input](&v97, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      }

      v26 = a2[9];
      v114[8] = a2[8];
      v115[0] = v26;
      *(v115 + 9) = *(a2 + 153);
      v27 = a2[5];
      v114[4] = a2[4];
      v114[5] = v27;
      v28 = a2[6];
      v114[7] = a2[7];
      v114[6] = v28;
      v29 = a2[1];
      v114[0] = *a2;
      v114[1] = v29;
      v30 = a2[3];
      v114[2] = a2[2];
      v114[3] = v30;
      outlined init with copy of UserGraph(v114, &v63);
      UserGraph.output(connectedTo:)(v111, &v70);
      outlined destroy of UserGraph(v114);
      result = v71;
      if (v71)
      {
        v31 = v72;
        v32 = v73;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_265F1F670;
        *(v33 + 32) = 7632239;
        *(v33 + 40) = 0xE300000000000000;
        *(v33 + 48) = a4;
        v34 = swift_allocObject();
        *(v34 + 16) = 12580;
        *(v34 + 24) = 0xE200000000000000;

        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v33, v34 | 0x6000000000000000, &v74);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v110 = v75[0];
        specialized ShaderGraphNode.output(labeled:)(&v76, 7632239, 0xE300000000000000, v75[0]);
        if (!v77)
        {
          MEMORY[0x266771550](7632239, 0xE300000000000000);
          MEMORY[0x266771550](32, 0xE100000000000000);
          v63 = v74;
          v64[0] = *v75;
          *(v64 + 9) = *(&v75[1] + 1);
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v45 = 14;
          *(v45 + 8) = 0;
          *(v45 + 16) = 0xE000000000000000;
          swift_willThrow();
          v109 = v74;
          outlined destroy of NodePersonality(&v109);
          v108 = *(&v74 + 1);
          outlined destroy of [Input](&v108, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          outlined destroy of [Input](&v110, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
          outlined destroy of NodePersonality(&v91);
          v92 = v89;
          outlined destroy of [Input](&v92, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v93 = *&v90[0];
          outlined destroy of [Input](&v93, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v83 = v76;
        v84 = v77;
        v85 = v78;
        v86 = v79;
        v87 = v80;
        v107 = v74;
        outlined destroy of NodePersonality(&v107);
        v106 = *(&v74 + 1);
        outlined destroy of [Input](&v106, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v110, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v35 = v122;
        Output.getProperty(_:_:)(a2, v31, v32, &v81);
        if (v35)
        {

          v104 = v85;
          outlined destroy of String(&v104);
          outlined destroy of NodePersonality(&v91);
          v102 = v89;
          outlined destroy of [Input](&v102, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v103 = *&v90[0];
          outlined destroy of [Input](&v103, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

        v43 = *(&v81 + 1);
        v51 = v81;
        v44 = v82;

        v105 = v85;
        outlined destroy of String(&v105);
        v42 = v51;

LABEL_26:
        outlined copy of NodePersonality(v42);

        outlined copy of NodePersonality(v60);

        specialized Sequence.forEach(_:)(v43, v4, a2);
        outlined consume of NodePersonality(v60);

        outlined copy of NodePersonality(v60);

        specialized Sequence.forEach(_:)(v44, v61, a2);
        v122 = 0;
        outlined consume of NodePersonality(v60);

        specialized UserGraph.removeEdges(connectedTo:)(v62);
        v52 = *(a2 + 8);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 8) = v52;
        if (result)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
          v52 = result;
          *(a2 + 8) = result;
          if ((v62 & 0x8000000000000000) == 0)
          {
LABEL_28:
            if (v62 < *(v52 + 16))
            {
              ShaderGraphNode.update(id:)(-7);
              outlined consume of ShaderGraphNode?(v42, v43, v44);
              outlined consume of NodePersonality(v42);

              outlined destroy of NodePersonality(&v91);
              v98 = v89;
              outlined destroy of [Input](&v98, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
              v99 = *&v90[0];
              return outlined destroy of [Input](&v99, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            }

            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v9 == -7)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v122 = 0;
        v40 = 0xED00002165646F6ELL;
        v41 = 0x20676E697373696DLL;
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v46 = *(a2 + 8);
        if (v9 >= *(v46 + 16))
        {
LABEL_34:
          __break(1u);
          return result;
        }

        v47 = (v46 + 48 * v9);
        v37 = v47[4];
        v38 = v47[5];
        v39 = v47[6];
        v122 = v47[8];
        *&v63 = 1701080942;
        *(&v63 + 1) = 0xE400000000000000;
        outlined copy of NodePersonality(v37);

        outlined copy of NodePersonality(v37);

        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v48);

        outlined consume of NodePersonality(v37);

        v40 = *(&v63 + 1);
        v41 = v63;
      }

      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F30BE0);

      MEMORY[0x266771550](v58, v11);

      MEMORY[0x266771550](0x646F6E206E6F2027, 0xEB00000000203A65);
      MEMORY[0x266771550](v41, v40);

      v49 = v63;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v50 = 44;
      *(v50 + 8) = v49;
      swift_willThrow();
      outlined consume of ShaderGraphNode?(v37, v38, v39);
      outlined destroy of NodePersonality(&v91);
      v94 = v89;
      outlined destroy of [Input](&v94, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v95 = *&v90[0];
      outlined destroy of [Input](&v95, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    else
    {
    }
  }

  return result;
}

uint64_t UserGraph.insertGetTexture(_:textureAssignments:customUniformsType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (!*(a3 + 16) || (v10 = v5, v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) == 0))
  {
    _StringGuts.grow(_:)(47);

    *&v26 = 0xD00000000000002CLL;
    *(&v26 + 1) = 0x8000000265F30C70;
    MEMORY[0x266771550](a1, a2);
    v21 = 39;
    v22 = 0xE100000000000000;
LABEL_9:
    MEMORY[0x266771550](v21, v22);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v23 = 47;
    *(v23 + 8) = v26;
    return swift_willThrow();
  }

  v15 = (*(a3 + 56) + 24 * v13);
  v16 = v15[1];
  v48 = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = 12580;
  *(v18 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v18 | 0x6000000000000000, &v27);

  swift_setDeallocating();
  swift_arrayDestroy();
  v47[0] = v28[0];
  specialized ShaderGraphNode.output(labeled:)(&v29, 7632239, 0xE300000000000000, v28[0]);
  if (!v30)
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();

    v46 = v27;
    outlined destroy of NodePersonality(&v46);
    v45 = *(&v27 + 1);
    outlined destroy of [Input](&v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v20 = v48;
    goto LABEL_8;
  }

  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v44 = v27;
  outlined destroy of NodePersonality(&v44);
  v43 = *(&v27 + 1);
  outlined destroy of [Input](&v43, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v19 = v10;
  v20 = v48;
  Output.getProperty(_:_:)(v19, v48, v16, &v34);
  if (v6)
  {

    v41 = v38;
    outlined destroy of String(&v41);
LABEL_8:
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x266771550](0xD00000000000002FLL, 0x8000000265F30CA0);
    MEMORY[0x266771550](v20, v16);

    v21 = 11815;
    v22 = 0xE200000000000000;
    goto LABEL_9;
  }

  v42 = v38;
  result = outlined destroy of String(&v42);
  v25 = v35[0];
  *a5 = v34;
  a5[1] = v25;
  *(a5 + 25) = *(v35 + 9);
  return result;
}

double UserGraph.insertGetParams(type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = 0xE200000000000000;

  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v7 | 0x6000000000000000, &v10);

  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = v11[0];
  *a3 = v10;
  a3[1] = v8;
  result = *(v11 + 9);
  *(a3 + 25) = *(v11 + 9);
  return result;
}

uint64_t Output.getProperty(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v47[4] = a1;
  v9 = v4[1];

  DataType.subscript.getter(a2, a3, &v25);
  if (v26)
  {
    v20 = a4;
    v22 = v26;
    v21 = v25;
    v10 = v27;
    v23 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 28265;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_265F1F670;
    *(v12 + 32) = 7632239;
    *(v12 + 40) = 0xE300000000000000;
    *(v12 + 48) = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(inited, v12, v13 | 0x8000000000000000, &v29);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_setDeallocating();
    swift_arrayDestroy();
    v47[0] = *(&v29 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v31, 28265, 0xE200000000000000, *(&v29 + 1));
    if (v32)
    {
      v36[0] = v31;
      v36[1] = v32;
      v37 = v33;
      v38 = v34;
      v39 = v35;
      UserGraph.connect(_:to:)(v5, v36);

      v44 = v37;
      outlined destroy of String(&v44);
      v40[0] = v21;
      v40[1] = v22;
      outlined destroy of String(v40);

      v41 = v23;
      result = outlined destroy of [Input](&v41, &_sSaySSGMd, &_sSaySSGMR);
      v15 = v30[0];
      *v20 = v29;
      v20[1] = v15;
      *(v20 + 25) = *(v30 + 9);
    }

    else
    {
      MEMORY[0x266771550](28265, 0xE200000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v19 = 11;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0xE000000000000000;
      swift_willThrow();
      v46 = v29;
      outlined destroy of NodePersonality(&v46);
      outlined destroy of [Input](v47, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v45 = *&v30[0];
      outlined destroy of [Input](&v45, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v42[0] = v21;
      v42[1] = v22;
      outlined destroy of String(v42);

      v43 = v23;
      return outlined destroy of [Input](&v43, &_sSaySSGMd, &_sSaySSGMR);
    }
  }

  else
  {

    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x266771550](0x79747265706F7250, 0xEA00000000002720);
    MEMORY[0x266771550](a2, a3);
    MEMORY[0x266771550](0xD000000000000017, 0x8000000265F30CD0);
    MEMORY[0x266771550](v4[2], v4[3]);
    v16 = MEMORY[0x266771550](0x7420687469772027, 0xED00002720657079);
    v17 = (*(*v9 + 136))(v16);
    MEMORY[0x266771550](v17);

    MEMORY[0x266771550](39, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v18 = 45;
    *(v18 + 8) = v24;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 == 0x636170736D6F7266 && v6 == 0xE900000000000065;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_14;
  }

  v8 = v5 == 0x65636170736F74 && v6 == 0xE700000000000000;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_14;
  }

  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isStructurallyEqual(to:)(static MaterialXDataType.space))
  {
LABEL_14:
    *a3 = 1;
    v9 = *(a1 + 16);
    v10 = one-time initialization token for space;

    if (v10 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return v9;
}

uint64_t closure #3 in closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(__int128 *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v72 = *(a1 + 6);
  v71[1] = v4;
  v71[2] = v5;
  v71[0] = v3;
  v6 = *(&v3 + 1);
  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  result = (*(*v6 + 128))(static MaterialXDataType.space);
  if (result)
  {
    v8 = a2[9];
    v73[8] = a2[8];
    v74[0] = v8;
    *(v74 + 9) = *(a2 + 153);
    v9 = a2[5];
    v73[4] = a2[4];
    v73[5] = v9;
    v10 = a2[7];
    v73[6] = a2[6];
    v73[7] = v10;
    v11 = a2[1];
    v73[0] = *a2;
    v73[1] = v11;
    v12 = a2[3];
    v73[2] = a2[2];
    v73[3] = v12;
    outlined init with copy of UserGraph(v73, &v38);
    UserGraph.node(connectedTo:)(v71, &v40);
    outlined destroy of UserGraph(v73);
    v13 = v41;
    if (!v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_265F1F670;
      if (one-time initialization token for string != -1)
      {
        swift_once();
      }

      v27 = static MaterialXDataType.string;
      *(v26 + 32) = 7632239;
      *(v26 + 40) = 0xE300000000000000;
      *(v26 + 48) = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = 0x646C726F77;
      *(v28 + 24) = 0xE500000000000000;
      *(v28 + 80) = 6;
      *(v28 + 88) = v27;
      swift_retain_n();
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v26, v28, &v44);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v70 = v45[0];
      specialized ShaderGraphNode.output(labeled:)(&v46, 7632239, 0xE300000000000000, v45[0]);
      if (v47)
      {
        v53[0] = v46;
        v53[1] = v47;
        v54 = v48;
        v55 = v49;
        v56 = v50;
        UserGraph.connect(_:to:)(v53, v71);

        v64 = v54;
        outlined destroy of String(&v64);
        v67 = v44;
        outlined destroy of NodePersonality(&v67);
        v66 = *(&v44 + 1);
        outlined destroy of [Input](&v66, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      }

      else
      {
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v38 = v44;
        v39[0] = *v45;
        *(v39 + 9) = *(&v45[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v29 = 14;
        *(v29 + 8) = 0;
        *(v29 + 16) = 0xE000000000000000;
        swift_willThrow();
        v69 = v44;
        outlined destroy of NodePersonality(&v69);
        v68 = *(&v44 + 1);
        outlined destroy of [Input](&v68, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      }

      v25 = &v70;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v15 = v42;
    v14 = v43;
    v57 = v40;
    if (v40 >> 61 || *(v40 + 80) != 6)
    {
      outlined destroy of NodePersonality(&v57);
      v59 = v13;
      outlined destroy of [Input](&v59, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v60 = v15;
      v25 = &v60;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    if ((*(v40 + 16) || *(v40 + 24) != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined destroy of NodePersonality(&v57);
      v61 = v13;
      outlined destroy of [Input](&v61, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v62 = v15;
      v25 = &v62;
      return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    v37 = v14;
    v75 = a2;
    v58 = v15;
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D84F90];
    v36 = v15;
    if (v16)
    {
      v35 = v13;
      *&v38 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v38;
      v18 = (v15 + 56);
      do
      {
        v20 = *(v18 - 2);
        v19 = *(v18 - 1);
        v21 = *v18;
        *&v38 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);

        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v17 = v38;
        }

        *(v17 + 16) = v23 + 1;
        v24 = (v17 + 24 * v23);
        v24[4] = v19;
        v24[5] = v21;
        v24[6] = v20;
        v18 += 7;
        --v16;
      }

      while (v16);
      v13 = v35;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = 0x646C726F77;
    *(v30 + 24) = 0xE500000000000000;
    *(v30 + 80) = 6;
    if (one-time initialization token for string != -1)
    {
      swift_once();
    }

    *(v30 + 88) = static MaterialXDataType.string;

    v31 = v75;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v17, v30, &v51);

    v32 = *(&v51 + 1);
    v63 = v13;
    outlined init with copy of NodePersonality(&v57, &v38);
    outlined init with copy of [Input](&v63, &v38, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v58, &v38, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v32, v13, v31);
    outlined destroy of NodePersonality(&v57);
    outlined destroy of [Input](&v63, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v58, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v33 = v52;
    outlined init with copy of NodePersonality(&v57, &v38);
    outlined init with copy of [Input](&v63, &v38, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v58, &v38, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v33, v36, v31);
    outlined destroy of NodePersonality(&v57);
    outlined destroy of [Input](&v63, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v58, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.removeEdges(connectedTo:)(v37);
    v34 = *(v31 + 64);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 64) = v34;
    if (result)
    {
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      v34 = result;
      *(v31 + 64) = result;
      if ((v37 & 0x8000000000000000) == 0)
      {
LABEL_27:
        if (v37 < *(v34 + 16))
        {
          ShaderGraphNode.update(id:)(-7);
          v65 = v51;
          outlined destroy of NodePersonality(&v65);

          outlined destroy of NodePersonality(&v57);
          outlined destroy of [Input](&v63, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v25 = &v58;
          return outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        }

LABEL_34:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  return result;
}

void closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a3;
  v117 = a4;
  v9 = type metadata accessor for NodeDef.Implementation(0);
  v115 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NodeDef.Implementation.Kind(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  if (*a1 >> 61 == 5)
  {
    if (*(a2 + 16))
    {
      v113 = a5;
      v162 = v5;
      v16 = a1[1];
      v111 = a1[2];
      v112 = v16;
      v17 = a1[3];
      v109 = v15;
      v110 = v17;
      v18 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v20 = a2;

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      v23 = v22;

      if (v23)
      {
        v114 = v20;
        v24 = *(v20 + 56) + 152 * v21;
        v25 = *(v24 + 16);
        v157[0] = *v24;
        v157[1] = v25;
        v26 = *(v24 + 80);
        v28 = *(v24 + 32);
        v27 = *(v24 + 48);
        v157[4] = *(v24 + 64);
        v157[5] = v26;
        v157[2] = v28;
        v157[3] = v27;
        v30 = *(v24 + 112);
        v29 = *(v24 + 128);
        v31 = *(v24 + 96);
        v158 = *(v24 + 144);
        v157[7] = v30;
        v157[8] = v29;
        v157[6] = v31;
        v32 = v117;
        if (*(v117 + 16))
        {
          v33 = v157[0];
          outlined init with copy of NodeDef(v157, v148);
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33, *(&v33 + 1));
          if (v35)
          {
            v36 = *(*(v32 + 56) + 8 * v34);

            goto LABEL_10;
          }
        }

        else
        {
          outlined init with copy of NodeDef(v157, v148);
        }

        v36 = MEMORY[0x277D84F90];
LABEL_10:
        outlined destroy of NodeDef(v157);
        if (!*(v36 + 16))
        {

          return;
        }

        outlined init with copy of NodeDef.Implementation.Kind(v36 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v11, type metadata accessor for NodeDef.Implementation);

        outlined init with copy of NodeDef.Implementation.Kind(&v11[*(v9 + 20)], v14, type metadata accessor for NodeDef.Implementation.Kind);
        outlined destroy of NodeDef.Implementation.Kind(v11, type metadata accessor for NodeDef.Implementation);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of NodeDef.Implementation.Kind(v14, type metadata accessor for NodeDef.Implementation.Kind);
          return;
        }

        v37 = v14[7];
        v38 = v14[9];
        v155 = v14[8];
        v156[0] = v38;
        *(v156 + 9) = *(v14 + 153);
        v39 = v14[3];
        v40 = v14[5];
        v151 = v14[4];
        v152 = v40;
        v41 = v14[5];
        v42 = v14[7];
        v153 = v14[6];
        v154 = v42;
        v43 = v14[1];
        v148[0] = *v14;
        v148[1] = v43;
        v44 = v14[3];
        v46 = *v14;
        v45 = v14[1];
        v149 = v14[2];
        v150 = v44;
        v47 = v14[9];
        v146 = v155;
        v147[0] = v47;
        *(v147 + 9) = *(v14 + 153);
        v142 = v151;
        v143 = v41;
        v144 = v153;
        v145 = v37;
        v138 = v46;
        v139 = v45;
        v48 = v151;
        v140 = v149;
        v141 = v39;
        v49 = *(v151 + 16);
        outlined init with copy of UserGraph(v148, &v128);

        if (v49)
        {
          v50 = 0;
          while (v50 < v49)
          {
            v52 = &v48[48 * v50 + 32];
            v53 = *(v52 + 24);
            if (v53 == -7)
            {
              v51 = __OFADD__(v50++, 1);
              if (v51)
              {
                goto LABEL_58;
              }

              if (v50 >= v49)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v51 = __OFADD__(v50++, 1);
              if (v51)
              {
                goto LABEL_59;
              }

              v12 = *v52;
              v54 = *(v52 + 8);
              v55 = *(v52 + 16);
              v56 = *(v52 + 40);
              v57 = *(v52 + 32);
              *&v118 = v12;
              *(&v118 + 1) = v54;
              *&v119 = v55;
              *(&v119 + 1) = v53;
              *&v120 = v57;
              BYTE8(v120) = v56;
              outlined copy of NodePersonality(v12);

              v58 = v162;
              specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(&v118, v114);
              v162 = v58;
              if (v58)
              {
                outlined consume of NodePersonality(v12);

                outlined destroy of UserGraph(v148);

                v136 = v146;
                v137[0] = v147[0];
                *(v137 + 9) = *(v147 + 9);
                v132 = v142;
                v133 = v143;
                v134 = v144;
                v135 = v145;
                v128 = v138;
                v129 = v139;
                v130 = v140;
                v131 = v141;
                outlined destroy of UserGraph(&v128);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
                v105 = swift_allocObject();
                *(v105 + 16) = xmmword_265F1F670;
                *&v159 = 0;
                *(&v159 + 1) = 0xE000000000000000;
                MEMORY[0x266771550](0x20524F525245, 0xE600000000000000);
                v106 = v162;
                v161 = v162;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                _print_unlocked<A, B>(_:_:)();
                v107 = v159;
                *(v105 + 56) = MEMORY[0x277D837D0];
                *(v105 + 32) = v107;
                print(_:separator:terminator:)();

                return;
              }

              outlined consume of NodePersonality(v12);

              if (v50 >= v49)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
LABEL_23:

          v48 = v142;
          v12 = *(v142 + 16);

          if (!v12)
          {
            v49 = v113;
LABEL_36:

            v69 = v112;
            v70 = *(v112 + 16);
            v117 = MEMORY[0x277D84F90];
            if (v70)
            {
              *&v128 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
              v117 = v128;
              v71 = (v69 + 56);
              do
              {
                v72 = *(v71 - 2);
                v73 = *(v71 - 1);
                v74 = *v71;
                *&v128 = v117;
                v76 = *(v117 + 16);
                v75 = *(v117 + 24);

                if (v76 >= v75 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1);
                  v117 = v128;
                }

                v77 = v117;
                *(v117 + 16) = v76 + 1;
                v78 = (v77 + 24 * v76);
                v78[4] = v73;
                v78[5] = v74;
                v78[6] = v72;
                v71 += 7;
                --v70;
              }

              while (v70);
              v49 = v113;
            }

            v79 = v111;
            v80 = *(v111 + 16);
            v81 = MEMORY[0x277D84F90];
            if (v80)
            {
              *&v128 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
              v82 = v128;
              v83 = (v79 + 56);
              do
              {
                v85 = *(v83 - 2);
                v84 = *(v83 - 1);
                v86 = *v83;
                *&v128 = v82;
                v88 = *(v82 + 16);
                v87 = *(v82 + 24);

                if (v88 >= v87 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
                  v82 = v128;
                }

                *(v82 + 16) = v88 + 1;
                v89 = (v82 + 24 * v88);
                v89[4] = v84;
                v89[5] = v86;
                v89[6] = v85;
                v83 += 7;
                --v80;
              }

              while (v80);
              v81 = v82;
              v49 = v113;
              v79 = v111;
            }

            v90 = swift_allocObject();
            v91 = v147[0];
            v136 = v146;
            v137[0] = v147[0];
            *(v137 + 9) = *(v147 + 9);
            v92 = v142;
            v93 = v143;
            v132 = v142;
            v133 = v143;
            v95 = v144;
            v94 = v145;
            v134 = v144;
            v135 = v145;
            v96 = v138;
            v97 = v139;
            v128 = v138;
            v129 = v139;
            v99 = v140;
            v98 = v141;
            v130 = v140;
            v131 = v141;
            *(v90 + 144) = v146;
            *(v90 + 160) = v91;
            *(v90 + 169) = *(v147 + 9);
            *(v90 + 80) = v92;
            *(v90 + 96) = v93;
            *(v90 + 112) = v95;
            *(v90 + 128) = v94;
            *(v90 + 16) = v96;
            *(v90 + 32) = v97;
            *(v90 + 48) = v99;
            *(v90 + 64) = v98;
            outlined init with copy of UserGraph(&v128, &v118);
            UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v117, v81, v90 | 0xC000000000000000, &v159);

            v100 = *(&v159 + 1);
            v101 = v109;
            outlined copy of NodePersonality(v109);
            v102 = v112;

            specialized Sequence.forEach(_:)(v100, v102, v49);
            outlined consume of NodePersonality(v101);

            v103 = v160;
            outlined copy of NodePersonality(v101);

            specialized Sequence.forEach(_:)(v103, v79, v49);
            outlined consume of NodePersonality(v101);

            v12 = v110;
            specialized UserGraph.removeEdges(connectedTo:)(v110);
            v48 = *(v49 + 64);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v49 + 64) = v48;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                return;
              }

LABEL_50:
              if (v12 < *(v48 + 2))
              {
                ShaderGraphNode.update(id:)(-7);
                UserGraph.hoist(_:)(&v159);
                v161 = v159;
                outlined destroy of NodePersonality(&v161);

                outlined destroy of UserGraph(v148);
                v126 = v146;
                v127[0] = v147[0];
                *(v127 + 9) = *(v147 + 9);
                v122 = v142;
                v123 = v143;
                v124 = v144;
                v125 = v145;
                v118 = v138;
                v119 = v139;
                v120 = v140;
                v121 = v141;
                outlined destroy of UserGraph(&v118);
                return;
              }

              goto LABEL_62;
            }

LABEL_60:
            v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
            *(v49 + 64) = v48;
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }

            goto LABEL_50;
          }

          v59 = 0;
          v49 = v113;
          while (v59 < v12)
          {
            v60 = &v48[48 * v59 + 32];
            v61 = *(v60 + 24);
            v51 = __OFADD__(v59++, 1);
            v62 = v51;
            if (v61 == -7)
            {
              if (v62)
              {
                goto LABEL_56;
              }

              if (v59 >= v12)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v62)
              {
                goto LABEL_57;
              }

              v63 = *(v60 + 40);
              v64 = *(v60 + 32);
              v66 = *(v60 + 8);
              v65 = *(v60 + 16);
              *&v128 = *v60;
              v67 = v128;
              *(&v128 + 1) = v66;
              *&v129 = v65;
              *(&v129 + 1) = v61;
              *&v130 = v64;
              BYTE8(v130) = v63;
              outlined copy of NodePersonality(v128);

              v68 = v162;
              closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(&v128, v114, v116, v117, &v138);
              v162 = v68;
              outlined consume of NodePersonality(v67);
              v49 = v113;

              if (v59 >= v12)
              {
                goto LABEL_36;
              }
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }
  }
}

__int128 *closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = v5;
  v7 = result[1];
  v45 = *result;
  v46[0] = v7;
  *(v46 + 9) = *(result + 25);
  v48[0] = v45;
  if (v45 >> 61 == 5)
  {
    v12 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = *(a2 + 16);

    if (v13 && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11), (v15 & 1) != 0))
    {
      v16 = v14;

      v17 = *(a2 + 56) + 152 * v16;
      v18 = *v17;
      v43[1] = *(v17 + 16);
      v19 = *(v17 + 32);
      v20 = *(v17 + 48);
      v21 = *(v17 + 80);
      v43[4] = *(v17 + 64);
      v43[5] = v21;
      v43[2] = v19;
      v43[3] = v20;
      v22 = *(v17 + 96);
      v23 = *(v17 + 112);
      v24 = *(v17 + 128);
      v44 = *(v17 + 144);
      v43[7] = v23;
      v43[8] = v24;
      v43[6] = v22;
      v43[0] = v18;
      v25 = *(&v45 + 1);
      v47 = *(&v45 + 1);
      v49 = *&v46[0];
      v26 = *(*(&v45 + 1) + 16);
      outlined init with copy of NodeDef(v43, &v36);
      outlined init with copy of NodeDef(v43, &v36);
      outlined init with copy of NodePersonality(v48, &v36);
      outlined init with copy of [Input](&v47, &v36, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined init with copy of [Input](&v49, &v36, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      if (v26)
      {
        v27 = (v25 + 80);
        while (1)
        {
          v28 = *v27;
          v29 = *(v27 - 8);
          v31 = *(v27 - 3);
          v30 = *(v27 - 2);
          v33 = *(v27 - 5);
          v32 = *(v27 - 4);
          *&v36 = *(v27 - 6);
          *(&v36 + 1) = v33;
          v37 = v32;
          v38 = v31;
          v39 = v30;
          v40 = v29;
          v41 = v28;

          specialized closure #1 in closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(&v36, v43, &v45, a5, a2, a3);
          if (v6)
          {
            break;
          }

          v27 += 7;

          if (!--v26)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
      }

      outlined destroy of NodePersonality(v48);
      outlined destroy of [Input](&v47, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v49, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of NodeDef(v43);
      return outlined destroy of NodeDef(v43);
    }

    else
    {
      _StringGuts.grow(_:)(49);

      MEMORY[0x266771550](v12, v11);

      MEMORY[0x266771550](0x6F6E20726F662027, 0xEC00000027206564);
      v42 = *(&v46[0] + 1);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](1701080942, 0xE400000000000000);

      MEMORY[0x266771550](39, 0xE100000000000000);
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v35 = 28;
      *(v35 + 8) = 0xD000000000000020;
      *(v35 + 16) = 0x8000000265F315A0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t index #1 (for:) in UserGraph.resolveSwizzleNodes(nodeDefStore:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000)
  {
    return 0;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  v7 = a1 == 120 && a2 == 0xE100000000000000;
  if ((v5 & 1) == 0 && !v7)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 0;
    }

    if (a1 == 103 && a2 == 0xE100000000000000)
    {
      return 1;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = a1 == 121 && a2 == 0xE100000000000000;
    v10 = v9;
    result = 1;
    if ((v8 & 1) == 0 && !v10)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }

      if (a1 == 98 && a2 == 0xE100000000000000)
      {
        return 2;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = a1 == 122 && a2 == 0xE100000000000000;
      v13 = v12;
      result = 2;
      if ((v11 & 1) == 0 && !v13)
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 2;
        }

        if (a1 == 97 && a2 == 0xE100000000000000)
        {
          return 3;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = a1 == 119 && a2 == 0xE100000000000000;
        result = 3;
        if ((v14 & 1) == 0 && !v16)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            _StringGuts.grow(_:)(19);
            MEMORY[0x266771550](0xD000000000000011, 0x8000000265F313C0);
            Character.write<A>(to:)();
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v17 = 25;
            *(v17 + 8) = 0;
            *(v17 + 16) = 0xE000000000000000;
            return swift_willThrow();
          }

          return 3;
        }
      }
    }
  }

  return result;
}