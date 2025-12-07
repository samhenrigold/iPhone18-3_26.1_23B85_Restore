uint64_t lazy protocol witness table accessor for type SGInput and conformance SGInput(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id specialized static SGGraph.create(name:inputs:outputs:)(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v20 = swift_allocError();
    v22 = xmmword_265F20CE0;
LABEL_9:
    *v21 = v22;
    *(v21 + 16) = 1;
    swift_willThrow();
LABEL_10:
    if (one-time initialization token for logger == -1)
    {
LABEL_11:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, logger);
      v24 = static os_log_type_t.error.getter();
      v25 = v20;
      v26 = Logger.logObject.getter();

      if (os_log_type_enabled(v26, v24))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v69[0] = v28;
        *v27 = 136315138;
        v68[1] = v20;
        v29 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v30 = String.init<A>(describing:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v69);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_265D7D000, v26, v24, "%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x266773120](v28, -1, -1);
        MEMORY[0x266773120](v27, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_11;
  }

  if (!a3)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v20 = swift_allocError();
    v22 = xmmword_265F26EA0;
    goto LABEL_9;
  }

  if (!a4)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v20 = swift_allocError();
    v22 = xmmword_265F26E90;
    goto LABEL_9;
  }

  v65 = v16;
  v66 = v11;
  v67 = v14;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  v18._countAndFlagsBits = 1701667182;
  v18._object = 0xE400000000000000;
  validate(_:named:)(v17, v18);
  if (v19)
  {
    v20 = v19;
    goto LABEL_10;
  }

  v61 = v9;
  v62 = v8;
  v63 = a1;
  v64 = a2;
  v60 = v13;
  if (a3 >> 62)
  {
    v34 = __CocoaSet.count.getter();
    if (v34)
    {
LABEL_17:
      v20 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x266772030](v20, a3);
        }

        else
        {
          if (v20 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v36 = *(a3 + 8 * v20 + 32);
        }

        v37 = v36;
        v38 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v39 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v35 = *&v37[v39];
        if (v35 == 12)
        {
          v40 = *&v37[OBJC_IVAR___SGInput_name] == 0x65636166727573 && *&v37[OBJC_IVAR___SGInput_name + 8] == 0xE700000000000000;
          if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v35 = 53;
          }

          else
          {
            v35 = 12;
          }
        }

        *&v37[v39] = v35;

        ++v20;
        if (v38 == v34)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_17;
    }
  }

LABEL_36:
  if (a4 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v42 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x266772030](v42, a4);
      }

      else
      {
        if (v42 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v44 = *(a4 + 8 * v42 + 32);
      }

      v45 = v44;
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v47 = OBJC_IVAR___SGOutput_type;
      swift_beginAccess();
      v43 = *&v45[v47];
      if (v43 == 12)
      {
        v48 = *&v45[OBJC_IVAR___SGOutput_name] == 0x65636166727573 && *&v45[OBJC_IVAR___SGOutput_name + 8] == 0xE700000000000000;
        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v43 = 53;
        }

        else
        {
          v43 = 12;
        }
      }

      *&v45[v47] = v43;

      ++v42;
      if (v46 == i)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

LABEL_56:
  v49 = v65;
  OSSignposter.init(subsystem:category:)();
  v50 = v64;

  v51 = v66;
  static OSSignpostID.exclusive.getter();
  v52 = OSSignposter.logHandle.getter();
  v53 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v54 = v51;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68[0] = v56;
    *v55 = 141558275;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    v57 = v63;
    *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v50, v68);
    v58 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v52, v53, v58, "graphInit", "%{private,mask.hash}s", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x266773120](v56, -1, -1);
    MEMORY[0x266773120](v55, -1, -1);

    (*(v61 + 8))(v54, v62);
    (*(v60 + 8))(v49, v67);
  }

  else
  {

    (*(v61 + 8))(v51, v62);
    (*(v60 + 8))(v49, v67);
    v57 = v63;
  }

  v59 = objc_allocWithZone(type metadata accessor for SGGraph());

  return SGGraph.init(name:inputs:outputs:)(v57, v50, a3, a4);
}

uint64_t getEnumTagSinglePayload for SGGraph.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SGGraph.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopologicalSort(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TopologicalSort(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopologicalSort.Element(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for TopologicalSort.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SGNode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265EAB760()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Context #1 in SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph0E5IndexVG_SSs5NeverOTg504_s11d89Graph0B0V10debugPrintyyFySi_AC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyx_GtXEfU_yn9_ShyAA0B5F18VGtXEfU0_SSAJXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v31;
    v5 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v24 = v1 + 64;
    v25 = v2;
    v26 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v27 = v7;
      v28 = *(v1 + 36);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v10;
      MEMORY[0x266771550](58, 0xE100000000000000);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v11);

      v12 = v4;
      v32 = v4;
      v13 = v1;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = v29;
      *(v16 + 40) = v30;
      v8 = 1 << *(v13 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v26;
      v17 = *(v26 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v13;
      v4 = v12;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (v24 + 8 * v9);
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of [String : String].Index._Variant(v6, v28, 0);
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v6, v28, 0);
      }

LABEL_4:
      v7 = v27 + 1;
      v6 = v8;
      if (v27 + 1 == v25)
      {
        return v4;
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
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized Sequence.forEach(_:)(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 6)
    {
      v8 = *(i - 1);
      v7 = *i;
      v9 = i[1];
      v10 = *(i + 32);
      v11[0] = v8;
      v11[1] = v7;
      v11[2] = v9;
      v12 = *(i + 1);
      v13 = v10;
      outlined copy of NodePersonality(v8);

      v5(v11);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v8);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v8);
  }

  return result;
}

void (*specialized Sequence.forEach(_:)(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266772030](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266772030](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t static Graph.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC390](a1, a2, v6, WitnessTable);
}

uint64_t Graph.Node.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = &v19 - v11;
  if (a1 < 0 || (*(v6 + 48))(v7, v6, v10) <= a1)
  {
    v17 = type metadata accessor for Graph.Input(0, v7, v6, v9);
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }

  else
  {
    v13 = *v3;
    (*(v6 + 64))(a1, v7, v6);
    Graph.Input.init(_:value:)(v13, a1, v12, v7, v6, a3);
    v15 = type metadata accessor for Graph.Input(0, v7, v6, v14);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = &v19 - v11;
  if (a1 < 0 || (*(v6 + 56))(v7, v6, v10) <= a1)
  {
    v17 = type metadata accessor for Graph.Output(0, v7, v6, v9);
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }

  else
  {
    v13 = *v3;
    (*(v6 + 72))(a1, v7, v6);
    Graph.Output.init(_:value:)(v13, a1, v12, v7, v6, a3);
    v15 = type metadata accessor for Graph.Output(0, v7, v6, v14);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t static Graph.Node.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Graph.Node(0, a3, a4, a4);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t ShallowDepthFirstNodeIterator.init(_:startingFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  v7 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
  v9 = v8;
  v10 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v6);
  v12 = v11;
  result = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v6);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v7;
  a3[3] = v9;
  a3[4] = v10;
  a3[5] = v12;
  a3[6] = result;
  a3[7] = v14;
  a3[8] = v15;
  return result;
}

uint64_t ShallowDepthFirstNodeIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v77 = a2;
  v6 = *(a1 + 24);
  v96 = *(a1 + 16);
  v95 = v6;
  v7 = type metadata accessor for Graph.Node(255, v96, v6, a3);
  v80 = type metadata accessor for Optional();
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v91 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v75 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v75 - v19);
  v21 = type metadata accessor for Array();
  v82 = 0;
  v98 = (v13 + 48);
  v97 = (v13 + 32);
  v89 = a1;
  v88 = a1 - 8;
  v81 = (v13 + 16);
  v76 = v13;
  v93 = (v13 + 8);
  v79 = (v8 + 8);
  v92 = v21;
  v100 = v4;
  v84 = v20;
  v83 = v12;
  v90 = v7;
  while (1)
  {
    v26 = v4[1];
    v101[0] = v26;
    WitnessTable = swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v28 = *v98;
    if ((*v98)(v12, 1, v7) == 1)
    {
      (*v79)(v12, v80);
      return (*(v76 + 56))(v77, 1, 1, v7);
    }

    v99 = WitnessTable;
    v94 = *v97;
    v94(v20, v12, v7);
    v29 = *v20;
    v30 = v4[6];
    v31 = v4[7];
    v32 = v4[8];
    v33 = v31 + 32;
    v34 = *(v31 + 16);
    if (v30)
    {
      v35 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*v20, v33, v34, v30 + 16, v30 + 32);
      if (v36)
      {
        v37 = v20;
LABEL_13:
        v38 = *(v100 + 1);
        v102[0] = *v100;
        v102[1] = v38;
        v39 = *(v100 + 3);
        v102[2] = *(v100 + 2);
        v102[3] = v39;
        v103 = v100[8];
        v26 = *(&v102[0] + 1);
        v40 = v89;
        v41 = *(v89 - 8);
        (*(v41 + 16))(v101, v102, v89);
        v42 = Graph.connectedInputIndices(for:)(v37, *&v102[0], v96, v95);
        (*(v41 + 8))(v102, v40);
        v43 = 0;
        goto LABEL_17;
      }

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v37 = v20;
      if (!v34)
      {
        goto LABEL_13;
      }

      v35 = 0;
      while (*(v33 + 8 * v35) != v29)
      {
        if (v34 == ++v35)
        {
          goto LABEL_13;
        }
      }
    }

    if (v35 >= *(v32 + 16))
    {
      goto LABEL_37;
    }

    v37 = v20;
    v44 = v32 + 16 * v35;
    v42 = *(v44 + 32);
    v43 = *(v44 + 40);

LABEL_17:
    v45 = *(v42 + 16);
    if (v43 != v45)
    {
      break;
    }

    v20 = v37;
    v4 = v100;
LABEL_22:
    v51 = v4[2];
    v52 = v4[3];
    v53 = (v52 + 32);
    v54 = *(v52 + 16);
    if (v51)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v29, v53, v54, v51 + 16, v51 + 32);
      if (v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!v54)
      {
LABEL_29:
        specialized OrderedSet._append(_:)(v29);
        swift_getWitnessTable();
        v61 = v91;
        RangeReplaceableCollection<>.removeLast()();
        v62 = v20;
        v63 = v76;
        v64 = *(v76 + 8);
        v64(v61, v7);
        v65 = v77;
        (*(v63 + 16))(v77, v62, v7);
        (*(v63 + 56))(v65, 0, 1, v7);
        return (v64)(v62, v7);
      }

      while (1)
      {
        v55 = *v53++;
        if (v55 == v29)
        {
          break;
        }

        if (!--v54)
        {
          goto LABEL_29;
        }
      }
    }

    swift_getWitnessTable();
    v23 = v91;
    RangeReplaceableCollection<>.removeLast()();
    v24 = v23;
LABEL_4:
    v25 = *v93;
    (*v93)(v24, v7);
    v25(v20, v7);
  }

  v46 = v96;
  v47 = v95;
  v48 = v85;
  if (v43 >= v45)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v86 = v43;
  v49 = v42 + 16 * v43;
  v50 = *(v49 + 32);
  v87 = *(v49 + 40);
  v4 = v100;
  Graph.node(at:)(v50, *v100, v96, v95, v85);
  if (v28(v48, 1, v7) == 1)
  {

    (*v79)(v48, v80);
    v7 = v90;
    v20 = v84;
    v12 = v83;
    goto LABEL_22;
  }

  v56 = v78;
  v57 = (v94)(v78, v48, v90);
  v101[0] = v26;
  MEMORY[0x28223BE20](v57);
  *(&v75 - 4) = v46;
  *(&v75 - 3) = v47;
  v58 = v87;
  *(&v75 - 2) = v50;
  *(&v75 - 1) = v58;

  swift_getWitnessTable();
  v59 = v82;
  v60 = Sequence.contains(where:)();

  if ((v60 & 1) == 0)
  {
    v82 = v59;
    v7 = v90;
    (*v81)(v91, v56, v90);
    Array.append(_:)();
    specialized OrderedDictionary.subscript.setter(v42, v86 + 1, v29);
    v24 = v56;
    v20 = v84;
    v12 = v83;
    goto LABEL_4;
  }

  v7 = v90;

  if (one-time initialization token for logger == -1)
  {
    goto LABEL_32;
  }

LABEL_38:
  swift_once();
LABEL_32:
  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, logger);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v78;
  if (v70)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_265D7D000, v68, v69, "Cycle in graph", v72, 2u);
    MEMORY[0x266773120](v72, -1, -1);
  }

  v73 = v76;
  v74 = *(v76 + 8);
  v74(v71, v7);
  (*(v73 + 56))(v77, 1, 1, v7);
  return (v74)(v84, v7);
}

uint64_t Graph.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Graph.NodeEntry(0, a1, a2, a4);

  return static Array._allocateUninitialized(_:)();
}

uint64_t Graph.insertNode(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v32 = a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Graph.Node(255, v6, v7, a4);
  v9 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v13 = type metadata accessor for Graph.NodeEntry(0, v6, v7, v12);
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = *(v6 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x266771880](*v4, v13, v20);
  (*(v18 + 16))(v22, v32, v6);
  *a3 = v23;
  v25 = type metadata accessor for Graph.Node(0, v6, v7, v24);
  (*(v18 + 32))(a3 + *(v25 + 36), v22, v6);
  v26 = *(v8 - 8);
  (*(v26 + 16))(v11, a3, v8);
  (*(v26 + 56))(v11, 0, 1, v8);
  specialized Graph.Adjacent.init(_:)(v6, v7, v27, v35, a3);
  v28 = Graph.NodeEntry.init(node:adjacent:)(v11, v35, v6, v7, v17);
  v29 = v34;
  (*(v34 + 16))(v33, v17, v13, v28);
  type metadata accessor for Array();
  Array.append(_:)();
  return (*(v29 + 8))(v17, v13);
}

uint64_t Graph.Node.outputs.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = (*(v1 + 56))(v2, v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    type metadata accessor for Graph.Output(0, v2, v1, v4);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return Sequence.compactMap<A>(_:)();
  }

  return result;
}

char *Graph.connect(_:_:)(Swift::Int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v43 = a2[1];
  v9 = type metadata accessor for Graph.NodeEntry(255, *(a3 + 16), *(a3 + 24), a4);
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  v10 = *v4;
  Array._checkSubscript_mutating(_:)(v7);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = *(*(v9 - 8) + 72);
  v13 = v10 + v11 + v12 * v7 + *(v9 + 36);
  v14 = specialized OrderedSet._append(_:)(v6);
  v16 = v15;
  v19 = *(v13 + 16);
  v18 = (v13 + 16);
  v17 = v19;
  if (v14)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v17;
    v42 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1);
      v17 = *v18;
    }

    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v17 = *v18;
    }

    v17[2] = v22 + 1;
    v17[v22 + 4] = MEMORY[0x277D84FA0];
    *v18 = v17;
    v7 = v42;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v17;
  if ((v23 & 1) == 0)
  {
    v17 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v17);
    *v18 = v17;
  }

  v24 = v17[v16 + 4];
  *v18 = v17;
  v44 = v24;
  specialized Set._Variant.insert(_:)(v45, v8, v43);
  v25 = *v18;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v25;
  if ((v26 & 1) == 0)
  {
    v25 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v25);
  }

  v25[v16 + 4] = v44;
  *v18 = v25;
  Array._makeMutableAndUnique()();
  v27 = *v5;
  Array._checkSubscript_mutating(_:)(v8);
  v28 = v27 + v11 + v12 * v8 + *(v9 + 36);
  v29 = specialized OrderedSet._append(_:)(v43);
  v31 = v30;
  v34 = *(v28 + 40);
  v33 = (v28 + 40);
  v32 = v34;
  if (v29)
  {
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v32;
    if ((v35 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1);
      v32 = *v33;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    if (v37 >= v36 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      v32 = *v33;
    }

    *(v32 + 2) = v37 + 1;
    v38 = &v32[24 * v37];
    *(v38 + 4) = 0;
    *(v38 + 5) = 0;
    v38[48] = 1;
    *v33 = v32;
  }

  v39 = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v32;
  if ((v39 & 1) == 0)
  {
    v32 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v32);
  }

  *v33 = v32;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v32;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v32);
    v32 = result;
  }

  v41 = &v32[24 * v31];
  *(v41 + 4) = v7;
  *(v41 + 5) = v6;
  v41[48] = 0;
  *v33 = v32;
  return result;
}

uint64_t Graph.Node.inputs.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = (*(v1 + 48))(v2, v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    type metadata accessor for Graph.Input(0, v2, v1, v4);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return Sequence.compactMap<A>(_:)();
  }

  return result;
}

unint64_t Graph.edge(to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a5;
  v10 = type metadata accessor for Graph.Input(0, a3, a4, a4);
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v48 - v11;
  v13 = type metadata accessor for Graph.Output(255, a3, a4, v12);
  v14 = type metadata accessor for Optional();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v48 - v15;
  v57 = v13;
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v16);
  v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v48 = &v48 - v19;
  v21 = type metadata accessor for Graph.NodeEntry(0, a3, a4, v20);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v58 = a2;
  Array.subscript.getter();
  v25 = &v24[*(v21 + 36)];
  v26 = *(v25 + 3);
  v27 = *(v25 + 4);
  v28 = *(v25 + 5);
  v29 = *(v22 + 8);

  v29(v24, v21);
  v30 = v27 + 32;
  v31 = *(v27 + 16);
  if (!v26)
  {
    if (v31)
    {
      result = 0;
      while (*(v30 + 8 * result) != a1[1])
      {
        if (v31 == ++result)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1[1], v30, v31, v26 + 16, v26 + 32);
  if (v33)
  {
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (result < *(v28 + 16))
  {
    v34 = v28 + 24 * result;
    v35 = *(v34 + 40);
    v36 = *(v34 + 48);

    if ((v36 & 1) == 0)
    {
      v38 = v56;
      Graph.output(for:)(v35, v58, a3, a4, v56);
      v39 = v55;
      v40 = v57;
      if ((*(v55 + 48))(v38, 1, v57) != 1)
      {
        v44 = *(v39 + 32);
        v45 = v48;
        v44(v48, v38, v40);
        v46 = v49;
        v44(v49, v45, v40);
        v47 = v52;
        (*(v53 + 16))(v52, a1, v54);
        v42 = v59;
        Graph.Edge.init(from:to:)(v46, v47, a3, a4, v59);
        v41 = 0;
        goto LABEL_14;
      }

      (*(v50 + 8))(v38, v51);
    }

LABEL_13:
    v41 = 1;
    v42 = v59;
LABEL_14:
    v43 = type metadata accessor for Graph.Edge(0, a3, a4, v37);
    return (*(*(v43 - 8) + 56))(v42, v41, 1, v43);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t Graph.node(containingInput:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  Array.subscript.getter();
  type metadata accessor for Graph.Node(255, a3, a4, v12);
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 16))(a5, v11, v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t Graph.edges(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v34 = a2;
  Array.subscript.getter();
  v12 = &v11[*(v8 + 36)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  v16 = *(v9 + 8);

  v16(v11, v8);
  result = a1[1];
  v18 = v14 + 32;
  v19 = *(v14 + 16);
  if (!v13)
  {
    if (v19)
    {
      v21 = 0;
      while (*(v18 + 8 * v21) != result)
      {
        if (v19 == ++v21)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_4;
    }

LABEL_10:

    v22 = MEMORY[0x277D84FA0];
    goto LABEL_11;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(result, v18, v19, v13 + 16, v13 + 32);
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = result;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (v21 < *(v15 + 16))
  {
    v22 = *(v15 + 8 * v21 + 32);

LABEL_11:

    v35 = v22;
    MEMORY[0x28223BE20](v23);
    *(&v33 - 4) = a3;
    *(&v33 - 3) = a4;
    *(&v33 - 2) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11ShaderGraph0B5IndexVGMd, &_sShy11ShaderGraph0B5IndexVGMR);
    type metadata accessor for Graph.Input(0, a3, a4, v24);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Set<GraphIndex> and conformance Set<A>, &_sShy11ShaderGraph0B5IndexVGMd, &_sShy11ShaderGraph0B5IndexVGMR, MEMORY[0x277D83B68]);
    v25 = Sequence.compactMap<A>(_:)();

    v35 = v25;
    MEMORY[0x28223BE20](v26);
    *(&v33 - 4) = a3;
    *(&v33 - 3) = a4;
    *(&v33 - 2) = a1;
    v27 = type metadata accessor for Array();
    v29 = type metadata accessor for Graph.Edge(0, a3, a4, v28);
    WitnessTable = swift_getWitnessTable();
    v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in Graph.edges(from:), (&v33 - 6), v27, v29, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v31);

    return v32;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Graph.edges.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v7 = Graph.sinkNodes()(v6, a2, a3);
  v8 = specialized Graph.DepthFirstEdgeIterator.init(_:initial:)(a1, v7, a2, a3);

  return v8;
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, int64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_134;
  }

  if (v5 < 1)
  {
    return;
  }

  v10 = *(a3 + 16);
  if (a1 < (v10 - v5) / 2)
  {
    if (specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3 > a1)
    {
      if (a1 < 0)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v10 < a1)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (a1)
      {
        v11 = 0;
        v12 = a3 + 32;
        while (1)
        {
          v13 = *a4;
          v14 = MEMORY[0x266772750](*a4, *(v12 + 8 * v11));
          v15 = (1 << v13) - 1;
          if (__OFSUB__(1 << v13, 1))
          {
            goto LABEL_127;
          }

          v16 = v15 & v14;
          v17 = _HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v14, a4, a5);
          if (v17)
          {
            v20 = 1 << *a4;
            v21 = v20 - 1;
            v22 = a4[1] >> 6;
            v23 = v22 + (v17 ^ (v20 - 1));
            v24 = v23 >= v20 - 1 ? v20 - 1 : 0;
            if (v23 - v24 != v11)
            {
              v25 = 0;
              v26 = *a4 & 0x3FLL;
              v27 = __OFADD__(v26 << v26, 64);
              v28 = (v26 << v26) + 126;
              if ((v26 << v26) + 64 >= 1)
              {
                v28 = (v26 << v26) + 63;
              }

              v29 = v28 >> 6;
              do
              {
                if (++v16 == v20)
                {
                  if (v25)
                  {
                    goto LABEL_142;
                  }

                  v16 = 0;
                  v25 = 1;
                }

                if (v19 >= v26)
                {
                  v36 = __OFSUB__(v19, v26);
                  v19 -= v26;
                  if (v36)
                  {
                    __break(1u);
LABEL_120:
                    __break(1u);
LABEL_121:
                    __break(1u);
LABEL_122:
                    __break(1u);
LABEL_123:
                    __break(1u);
                    goto LABEL_124;
                  }

                  v40 = v18 >> v26;
                  v41 = v18 & v21;
                  if ((v18 & v21) == 0)
                  {
                    break;
                  }
                }

                else
                {
                  v32 = (v16 * v26) >> 6;
                  if (v19)
                  {
                    if (v27)
                    {
                      goto LABEL_125;
                    }

                    if (v32 + 1 == v29)
                    {
                      v32 = 0;
                    }

                    else
                    {
                      ++v32;
                    }
                  }

                  v33 = v26 - v19;
                  if (__OFSUB__(v26, v19))
                  {
                    goto LABEL_120;
                  }

                  if (v32 == 2 && v26 == 5)
                  {
                    v35 = 32;
                  }

                  else
                  {
                    v35 = 64;
                  }

                  v36 = __OFSUB__(v35, v33);
                  v37 = v35 - v33;
                  if (v36)
                  {
                    goto LABEL_121;
                  }

                  v38 = a5[v32];
                  v39 = (v38 << v19) | v18;
                  v40 = v38 >> v33;
                  v19 = v37;
                  v41 = v39 & v21;
                  if ((v39 & v21) == 0)
                  {
                    break;
                  }
                }

                v30 = v22 + (v41 ^ v21);
                if (v30 >= v21)
                {
                  v31 = v20 - 1;
                }

                else
                {
                  v31 = 0;
                }

                v18 = v40;
              }

              while (v30 - v31 != v11);
            }
          }

          v42 = v11 + v5;
          if (__OFADD__(v11, v5))
          {
            goto LABEL_128;
          }

          ++v11;
          _HashTable.BucketIterator.currentValue.setter(v42, 0);
          if (v11 == a1)
          {
            goto LABEL_48;
          }
        }
      }

      goto LABEL_48;
    }

    v75 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
    if (!v75 || ((v76 = ~(-1 << *a4), v77 = a4[1] >> 6, v78 = v77 + (v75 ^ v76), v78 >= v76) ? (v79 = ~(-1 << *a4)) : (v79 = 0), v80 = v78 - v79, v80 >= a1))
    {
LABEL_102:
      _HashTable.BucketIterator.advance()();
LABEL_48:
      v43 = a4[1] >> 6;
      if (!__OFSUB__(v43, v5))
      {
        _HashTable.Header.bias.setter(v43 - v5);
        return;
      }

      goto LABEL_136;
    }

    v36 = __OFADD__(v80, v5);
    v81 = v80 + v5;
    if (!v36)
    {
      *a5 ^= ((v76 & ((v81 - v77) >> 63)) + v81 - v77) ^ v76 ^ v75;
      goto LABEL_102;
    }

    goto LABEL_132;
  }

  v44 = a2;
  if (__OFSUB__(v10, a2))
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if ((v10 - a2) >= specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3)
  {
    v82 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
    if (v82)
    {
      v83 = ~(-1 << *a4);
      v84 = a4[1] >> 6;
      v85 = v84 + (v82 ^ v83);
      v86 = v85 >= v83 ? ~(-1 << *a4) : 0;
      v87 = v85 - v86;
      if (v87 >= v44)
      {
        v36 = __OFSUB__(v87, v5);
        v88 = v87 - v5;
        if (v36)
        {
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_135;
        }

        *a5 ^= ((v83 & ((v88 - v84) >> 63)) + v88 - v84) ^ v83 ^ v82;
      }
    }

    _HashTable.BucketIterator.advance()();
    return;
  }

  if (v10 < v44)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v44 < 0)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v10 == v44)
  {
    return;
  }

  if (v10 > v44)
  {
    v89 = a3 + 32;
    while (1)
    {
      v45 = v44 + 1;
      v46 = __OFADD__(v44, 1);
      v47 = *a4;
      v48 = MEMORY[0x266772750](*a4, *(v89 + 8 * v44));
      v49 = (1 << v47) - 1;
      if (__OFSUB__(1 << v47, 1))
      {
        goto LABEL_129;
      }

      v50 = v49 & v48;
      v51 = _HashTable.UnsafeHandle._startIterator(bucket:)(v49 & v48, a4, a5);
      if (v51)
      {
        v54 = 1 << *a4;
        v55 = v54 - 1;
        v56 = a4[1] >> 6;
        v57 = v56 + (v51 ^ (v54 - 1));
        v58 = v57 >= v54 - 1 ? v54 - 1 : 0;
        if (v57 - v58 != v44)
        {
          v59 = 0;
          v60 = *a4 & 0x3FLL;
          v61 = __OFADD__(v60 << v60, 64);
          v62 = (v60 << v60) + 126;
          if ((v60 << v60) + 64 >= 1)
          {
            v62 = (v60 << v60) + 63;
          }

          v63 = v62 >> 6;
          do
          {
            if (++v50 == v54)
            {
              if (v59)
              {
                goto LABEL_142;
              }

              v50 = 0;
              v59 = 1;
            }

            if (v53 >= v60)
            {
              v36 = __OFSUB__(v53, v60);
              v53 -= v60;
              if (v36)
              {
                goto LABEL_122;
              }

              v73 = v52 >> v60;
              v74 = v52 & v55;
              if ((v52 & v55) == 0)
              {
                break;
              }
            }

            else
            {
              v66 = (v50 * v60) >> 6;
              if (v53)
              {
                if (v61)
                {
                  goto LABEL_126;
                }

                if (v66 + 1 == v63)
                {
                  v66 = 0;
                }

                else
                {
                  ++v66;
                }
              }

              v67 = v60 - v53;
              if (__OFSUB__(v60, v53))
              {
                goto LABEL_123;
              }

              if (v66 == 2 && v60 == 5)
              {
                v69 = 32;
              }

              else
              {
                v69 = 64;
              }

              v36 = __OFSUB__(v69, v67);
              v70 = v69 - v67;
              if (v36)
              {
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
LABEL_129:
                __break(1u);
LABEL_130:
                __break(1u);
                goto LABEL_131;
              }

              v71 = a5[v66];
              v72 = (v71 << v53) | v52;
              v73 = v71 >> v67;
              v53 = v70;
              v74 = v72 & v55;
              if ((v72 & v55) == 0)
              {
                break;
              }
            }

            v64 = v56 + (v74 ^ v55);
            if (v64 >= v55)
            {
              v65 = v54 - 1;
            }

            else
            {
              v65 = 0;
            }

            v52 = v73;
          }

          while (v64 - v65 != v44);
        }
      }

      if (__OFSUB__(v44, v5))
      {
        goto LABEL_130;
      }

      _HashTable.BucketIterator.currentValue.setter(v44 - v5, 0);
      if (v46)
      {
        break;
      }

      ++v44;
      if (v45 == v10)
      {
        return;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

LABEL_141:
  __break(1u);
LABEL_142:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_134;
  }

  if (v5 < 1)
  {
    return;
  }

  v10 = *(a3 + 16);
  if (a1 < (v10 - v5) / 2)
  {
    if (specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3 > a1)
    {
      if (a1 < 0)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v10 < a1)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (a1)
      {
        v11 = 0;
        v12 = a3 + 32;
        while (1)
        {
          v13 = *(v12 + 8 * v11);
          Hasher.init(_seed:)();
          MEMORY[0x266772770](v13);
          v14 = Hasher._finalize()();
          v15 = 1 << *a4;
          v16 = __OFSUB__(v15, 1);
          v17 = v15 - 1;
          if (v16)
          {
            goto LABEL_127;
          }

          v18 = v17 & v14;
          v19 = _HashTable.UnsafeHandle._startIterator(bucket:)(v17 & v14, a4, a5);
          if (v19)
          {
            v22 = 1 << *a4;
            v23 = v22 - 1;
            v24 = a4[1] >> 6;
            v25 = v24 + (v19 ^ (v22 - 1));
            v26 = v25 >= v22 - 1 ? v22 - 1 : 0;
            if (v25 - v26 != v11)
            {
              v27 = 0;
              v28 = *a4 & 0x3FLL;
              v29 = __OFADD__(v28 << v28, 64);
              v30 = (v28 << v28) + 126;
              if ((v28 << v28) + 64 >= 1)
              {
                v30 = (v28 << v28) + 63;
              }

              v31 = v30 >> 6;
              do
              {
                if (++v18 == v22)
                {
                  if (v27)
                  {
                    goto LABEL_142;
                  }

                  v18 = 0;
                  v27 = 1;
                }

                if (v21 >= v28)
                {
                  v16 = __OFSUB__(v21, v28);
                  v21 -= v28;
                  if (v16)
                  {
                    __break(1u);
LABEL_120:
                    __break(1u);
LABEL_121:
                    __break(1u);
LABEL_122:
                    __break(1u);
LABEL_123:
                    __break(1u);
                    goto LABEL_124;
                  }

                  v41 = v20 >> v28;
                  v42 = v20 & v23;
                  if ((v20 & v23) == 0)
                  {
                    break;
                  }
                }

                else
                {
                  v34 = (v18 * v28) >> 6;
                  if (v21)
                  {
                    if (v29)
                    {
                      goto LABEL_125;
                    }

                    if (v34 + 1 == v31)
                    {
                      v34 = 0;
                    }

                    else
                    {
                      ++v34;
                    }
                  }

                  v35 = v28 - v21;
                  if (__OFSUB__(v28, v21))
                  {
                    goto LABEL_120;
                  }

                  if (v34 == 2 && v28 == 5)
                  {
                    v37 = 32;
                  }

                  else
                  {
                    v37 = 64;
                  }

                  v16 = __OFSUB__(v37, v35);
                  v38 = v37 - v35;
                  if (v16)
                  {
                    goto LABEL_121;
                  }

                  v39 = a5[v34];
                  v40 = (v39 << v21) | v20;
                  v41 = v39 >> v35;
                  v21 = v38;
                  v42 = v40 & v23;
                  if ((v40 & v23) == 0)
                  {
                    break;
                  }
                }

                v32 = v24 + (v42 ^ v23);
                if (v32 >= v23)
                {
                  v33 = v22 - 1;
                }

                else
                {
                  v33 = 0;
                }

                v20 = v41;
              }

              while (v32 - v33 != v11);
            }
          }

          v43 = v11 + v5;
          if (__OFADD__(v11, v5))
          {
            goto LABEL_128;
          }

          ++v11;
          _HashTable.BucketIterator.currentValue.setter(v43, 0);
          if (v11 == a1)
          {
            goto LABEL_48;
          }
        }
      }

      goto LABEL_48;
    }

    v77 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
    if (!v77 || ((v78 = ~(-1 << *a4), v79 = a4[1] >> 6, v80 = v79 + (v77 ^ v78), v80 >= v78) ? (v81 = ~(-1 << *a4)) : (v81 = 0), v82 = v80 - v81, v82 >= a1))
    {
LABEL_102:
      _HashTable.BucketIterator.advance()();
LABEL_48:
      v44 = a4[1] >> 6;
      if (!__OFSUB__(v44, v5))
      {
        _HashTable.Header.bias.setter(v44 - v5);
        return;
      }

      goto LABEL_136;
    }

    v16 = __OFADD__(v82, v5);
    v83 = v82 + v5;
    if (!v16)
    {
      *a5 ^= ((v78 & ((v83 - v79) >> 63)) + v83 - v79) ^ v78 ^ v77;
      goto LABEL_102;
    }

    goto LABEL_132;
  }

  v45 = a2;
  if (__OFSUB__(v10, a2))
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if ((v10 - a2) >= specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3)
  {
    v84 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
    if (v84)
    {
      v85 = ~(-1 << *a4);
      v86 = a4[1] >> 6;
      v87 = v86 + (v84 ^ v85);
      v88 = v87 >= v85 ? ~(-1 << *a4) : 0;
      v89 = v87 - v88;
      if (v89 >= v45)
      {
        v16 = __OFSUB__(v89, v5);
        v90 = v89 - v5;
        if (v16)
        {
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_135;
        }

        *a5 ^= ((v85 & ((v90 - v86) >> 63)) + v90 - v86) ^ v85 ^ v84;
      }
    }

    _HashTable.BucketIterator.advance()();
    return;
  }

  if (v10 < v45)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v45 < 0)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v10 == v45)
  {
    return;
  }

  if (v10 > v45)
  {
    v91 = a3 + 32;
    while (1)
    {
      v46 = *(v91 + 8 * v45);
      v47 = v45 + 1;
      v48 = __OFADD__(v45, 1);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v46);
      v49 = Hasher._finalize()();
      v50 = 1 << *a4;
      v16 = __OFSUB__(v50, 1);
      v51 = v50 - 1;
      if (v16)
      {
        goto LABEL_129;
      }

      v52 = v51 & v49;
      v53 = _HashTable.UnsafeHandle._startIterator(bucket:)(v51 & v49, a4, a5);
      if (v53)
      {
        v56 = 1 << *a4;
        v57 = v56 - 1;
        v58 = a4[1] >> 6;
        v59 = v58 + (v53 ^ (v56 - 1));
        v60 = v59 >= v56 - 1 ? v56 - 1 : 0;
        if (v59 - v60 != v45)
        {
          v61 = 0;
          v62 = *a4 & 0x3FLL;
          v63 = __OFADD__(v62 << v62, 64);
          v64 = (v62 << v62) + 126;
          if ((v62 << v62) + 64 >= 1)
          {
            v64 = (v62 << v62) + 63;
          }

          v65 = v64 >> 6;
          do
          {
            if (++v52 == v56)
            {
              if (v61)
              {
                goto LABEL_142;
              }

              v52 = 0;
              v61 = 1;
            }

            if (v55 >= v62)
            {
              v16 = __OFSUB__(v55, v62);
              v55 -= v62;
              if (v16)
              {
                goto LABEL_122;
              }

              v75 = v54 >> v62;
              v76 = v54 & v57;
              if ((v54 & v57) == 0)
              {
                break;
              }
            }

            else
            {
              v68 = (v52 * v62) >> 6;
              if (v55)
              {
                if (v63)
                {
                  goto LABEL_126;
                }

                if (v68 + 1 == v65)
                {
                  v68 = 0;
                }

                else
                {
                  ++v68;
                }
              }

              v69 = v62 - v55;
              if (__OFSUB__(v62, v55))
              {
                goto LABEL_123;
              }

              if (v68 == 2 && v62 == 5)
              {
                v71 = 32;
              }

              else
              {
                v71 = 64;
              }

              v16 = __OFSUB__(v71, v69);
              v72 = v71 - v69;
              if (v16)
              {
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
LABEL_129:
                __break(1u);
LABEL_130:
                __break(1u);
                goto LABEL_131;
              }

              v73 = a5[v68];
              v74 = (v73 << v55) | v54;
              v75 = v73 >> v69;
              v55 = v72;
              v76 = v74 & v57;
              if ((v74 & v57) == 0)
              {
                break;
              }
            }

            v66 = v58 + (v76 ^ v57);
            if (v66 >= v57)
            {
              v67 = v56 - 1;
            }

            else
            {
              v67 = 0;
            }

            v54 = v75;
          }

          while (v66 - v67 != v45);
        }
      }

      if (__OFSUB__(v45, v5))
      {
        goto LABEL_130;
      }

      _HashTable.BucketIterator.currentValue.setter(v45 - v5, 0);
      if (v48)
      {
        break;
      }

      ++v45;
      if (v47 == v10)
      {
        return;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

LABEL_141:
  __break(1u);
LABEL_142:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_142;
  }

  if (v5 < 1)
  {
    return;
  }

  v10 = *(a3 + 16);
  if (a1 < (v10 - v5) / 2)
  {
    if (specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3 > a1)
    {
      if (a1 < 0)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (v10 < a1)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (a1)
      {

        v11 = 0;
        while (1)
        {
          outlined init with copy of WeakBox<SGEdge>(a3 + 32 + 8 * v11, v95);
          Hasher.init(_seed:)();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v13 = Strong;
            Hasher._combine(_:)(1u);
            v14 = v13;
            NSObject.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }

          v15 = Hasher._finalize()();
          v16 = 1 << *a4;
          v17 = __OFSUB__(v16, 1);
          v18 = v16 - 1;
          if (v17)
          {
            goto LABEL_135;
          }

          v19 = v18 & v15;
          v20 = _HashTable.UnsafeHandle._startIterator(bucket:)(v18 & v15, a4, a5);
          if (v20)
          {
            v23 = 1 << *a4;
            v24 = v23 - 1;
            v25 = a4[1] >> 6;
            v26 = v25 + (v20 ^ (v23 - 1));
            v27 = v26 >= v23 - 1 ? v23 - 1 : 0;
            if (v26 - v27 != v11)
            {
              v28 = 0;
              v29 = *a4 & 0x3FLL;
              v30 = __OFADD__(v29 << v29, 64);
              v31 = (v29 << v29) + 126;
              if ((v29 << v29) + 64 >= 1)
              {
                v31 = (v29 << v29) + 63;
              }

              v32 = v31 >> 6;
              do
              {
                if (++v19 == v23)
                {
                  if (v28)
                  {
                    goto LABEL_150;
                  }

                  v19 = 0;
                  v28 = 1;
                }

                if (v22 >= v29)
                {
                  v17 = __OFSUB__(v22, v29);
                  v22 -= v29;
                  if (v17)
                  {
                    __break(1u);
LABEL_128:
                    __break(1u);
LABEL_129:
                    __break(1u);
LABEL_130:
                    __break(1u);
LABEL_131:
                    __break(1u);
                    goto LABEL_132;
                  }

                  v42 = v21 >> v29;
                  v43 = v21 & v24;
                  if ((v21 & v24) == 0)
                  {
                    break;
                  }
                }

                else
                {
                  v35 = (v19 * v29) >> 6;
                  if (v22)
                  {
                    if (v30)
                    {
                      goto LABEL_133;
                    }

                    if (v35 + 1 == v32)
                    {
                      v35 = 0;
                    }

                    else
                    {
                      ++v35;
                    }
                  }

                  v36 = v29 - v22;
                  if (__OFSUB__(v29, v22))
                  {
                    goto LABEL_128;
                  }

                  if (v35 == 2 && v29 == 5)
                  {
                    v38 = 32;
                  }

                  else
                  {
                    v38 = 64;
                  }

                  v17 = __OFSUB__(v38, v36);
                  v39 = v38 - v36;
                  if (v17)
                  {
                    goto LABEL_129;
                  }

                  v40 = a5[v35];
                  v41 = (v40 << v22) | v21;
                  v42 = v40 >> v36;
                  v22 = v39;
                  v43 = v41 & v24;
                  if ((v41 & v24) == 0)
                  {
                    break;
                  }
                }

                v33 = v25 + (v43 ^ v24);
                if (v33 >= v24)
                {
                  v34 = v23 - 1;
                }

                else
                {
                  v34 = 0;
                }

                v21 = v42;
              }

              while (v33 - v34 != v11);
            }
          }

          v44 = v11 + v5;
          if (__OFADD__(v11, v5))
          {
            goto LABEL_136;
          }

          ++v11;
          _HashTable.BucketIterator.currentValue.setter(v44, 0);
          outlined destroy of [Input](v95, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
          if (v11 == a1)
          {

            goto LABEL_52;
          }
        }
      }

      goto LABEL_52;
    }

    v80 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
    if (!v80 || ((v81 = ~(-1 << *a4), v82 = a4[1] >> 6, v83 = v82 + (v80 ^ v81), v83 >= v81) ? (v84 = ~(-1 << *a4)) : (v84 = 0), v85 = v83 - v84, v85 >= a1))
    {
LABEL_110:
      _HashTable.BucketIterator.advance()();
LABEL_52:
      v45 = a4[1] >> 6;
      if (!__OFSUB__(v45, v5))
      {
        _HashTable.Header.bias.setter(v45 - v5);
        return;
      }

      goto LABEL_144;
    }

    v17 = __OFADD__(v85, v5);
    v86 = v85 + v5;
    if (!v17)
    {
      *a5 ^= ((v81 & ((v86 - v82) >> 63)) + v86 - v82) ^ v81 ^ v80;
      goto LABEL_110;
    }

    goto LABEL_140;
  }

  v46 = a2;
  if (__OFSUB__(v10, a2))
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if ((v10 - a2) >= specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3)
  {
    v87 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
    if (v87)
    {
      v88 = ~(-1 << *a4);
      v89 = a4[1] >> 6;
      v90 = v89 + (v87 ^ v88);
      v91 = v90 >= v88 ? ~(-1 << *a4) : 0;
      v92 = v90 - v91;
      if (v92 >= v46)
      {
        v17 = __OFSUB__(v92, v5);
        v93 = v92 - v5;
        if (v17)
        {
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_143;
        }

        *a5 ^= ((v88 & ((v93 - v89) >> 63)) + v93 - v89) ^ v88 ^ v87;
      }
    }

    _HashTable.BucketIterator.advance()();
    return;
  }

  if (v10 < v46)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v46 < 0)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v10 == v46)
  {
    return;
  }

  if (v10 > v46)
  {
    v94 = a3 + 32;

    while (1)
    {
      v47 = v46 + 1;
      v48 = __OFADD__(v46, 1);
      outlined init with copy of WeakBox<SGEdge>(v94 + 8 * v46, v95);
      Hasher.init(_seed:)();
      v49 = swift_unknownObjectWeakLoadStrong();
      if (v49)
      {
        v50 = v49;
        Hasher._combine(_:)(1u);
        v51 = v50;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v52 = Hasher._finalize()();
      v53 = 1 << *a4;
      v17 = __OFSUB__(v53, 1);
      v54 = v53 - 1;
      if (v17)
      {
        goto LABEL_137;
      }

      v55 = v54 & v52;
      v56 = _HashTable.UnsafeHandle._startIterator(bucket:)(v54 & v52, a4, a5);
      if (v56)
      {
        v59 = 1 << *a4;
        v60 = v59 - 1;
        v61 = a4[1] >> 6;
        v62 = v61 + (v56 ^ (v59 - 1));
        v63 = v62 >= v59 - 1 ? v59 - 1 : 0;
        if (v62 - v63 != v46)
        {
          v64 = 0;
          v65 = *a4 & 0x3FLL;
          v66 = __OFADD__(v65 << v65, 64);
          v67 = (v65 << v65) + 126;
          if ((v65 << v65) + 64 >= 1)
          {
            v67 = (v65 << v65) + 63;
          }

          v68 = v67 >> 6;
          do
          {
            if (++v55 == v59)
            {
              if (v64)
              {
                goto LABEL_150;
              }

              v55 = 0;
              v64 = 1;
            }

            if (v58 >= v65)
            {
              v17 = __OFSUB__(v58, v65);
              v58 -= v65;
              if (v17)
              {
                goto LABEL_130;
              }

              v78 = v57 >> v65;
              v79 = v57 & v60;
              if ((v57 & v60) == 0)
              {
                break;
              }
            }

            else
            {
              v71 = (v55 * v65) >> 6;
              if (v58)
              {
                if (v66)
                {
                  goto LABEL_134;
                }

                if (v71 + 1 == v68)
                {
                  v71 = 0;
                }

                else
                {
                  ++v71;
                }
              }

              v72 = v65 - v58;
              if (__OFSUB__(v65, v58))
              {
                goto LABEL_131;
              }

              if (v71 == 2 && v65 == 5)
              {
                v74 = 32;
              }

              else
              {
                v74 = 64;
              }

              v17 = __OFSUB__(v74, v72);
              v75 = v74 - v72;
              if (v17)
              {
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              v76 = a5[v71];
              v77 = (v76 << v58) | v57;
              v78 = v76 >> v72;
              v58 = v75;
              v79 = v77 & v60;
              if ((v77 & v60) == 0)
              {
                break;
              }
            }

            v69 = v61 + (v79 ^ v60);
            if (v69 >= v60)
            {
              v70 = v59 - 1;
            }

            else
            {
              v70 = 0;
            }

            v57 = v78;
          }

          while (v69 - v70 != v46);
        }
      }

      if (__OFSUB__(v46, v5))
      {
        goto LABEL_138;
      }

      _HashTable.BucketIterator.currentValue.setter(v46 - v5, 0);
      outlined destroy of [Input](v95, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      if (v48)
      {
        break;
      }

      ++v46;
      if (v47 == v10)
      {

        return;
      }
    }

LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

LABEL_149:
  __break(1u);
LABEL_150:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_131;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 >= (v9 - v5) / 2)
    {
      v42 = a2;
      if (__OFSUB__(v9, a2))
      {
        goto LABEL_132;
      }

      if ((v9 - a2) >= specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3)
      {
        v50 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
        if (v50)
        {
          v51 = ~(-1 << *a4);
          v52 = a4[1] >> 6;
          v53 = v52 + (v50 ^ v51);
          v54 = v53 >= v51 ? ~(-1 << *a4) : 0;
          v55 = v53 - v54;
          if (v55 >= v42)
          {
            v13 = __OFSUB__(v55, v5);
            v56 = v55 - v5;
            if (v13)
            {
              goto LABEL_130;
            }

            *a5 ^= ((v51 & ((v56 - v52) >> 63)) + v56 - v52) ^ v51 ^ v50;
          }
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        if (v9 < v42)
        {
          goto LABEL_136;
        }

        if (v42 < 0)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        else
        {

          for (; v42 != v9; ++v42)
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            v57 = Hasher._finalize()();
            v58 = 1 << *a4;
            v13 = __OFSUB__(v58, 1);
            v59 = v58 - 1;
            if (v13)
            {
              goto LABEL_128;
            }

            v60 = v59 & v57;
            v61 = _HashTable.UnsafeHandle._startIterator(bucket:)(v59 & v57, a4, a5);
            if (v61)
            {
              v64 = 1 << *a4;
              v65 = v64 - 1;
              v66 = a4[1] >> 6;
              v67 = v66 + (v61 ^ (v64 - 1));
              v68 = v67 >= v64 - 1 ? v64 - 1 : 0;
              if (v67 - v68 != v42)
              {
                v69 = 0;
                v70 = *a4 & 0x3FLL;
                v71 = __OFADD__(v70 << v70, 64);
                v72 = (v70 << v70) + 126;
                if ((v70 << v70) + 64 >= 1)
                {
                  v72 = (v70 << v70) + 63;
                }

                v73 = v72 >> 6;
                do
                {
                  if (++v60 == v64)
                  {
                    if (v69)
                    {
                      goto LABEL_138;
                    }

                    v60 = 0;
                    v69 = 1;
                  }

                  if (v63 >= v70)
                  {
                    v13 = __OFSUB__(v63, v70);
                    v63 -= v70;
                    if (v13)
                    {
                      goto LABEL_121;
                    }

                    v83 = v62 >> v70;
                    v84 = v62 & v65;
                    if ((v62 & v65) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v76 = (v60 * v70) >> 6;
                    if (v63)
                    {
                      if (v71)
                      {
                        goto LABEL_125;
                      }

                      if (v76 + 1 == v73)
                      {
                        v76 = 0;
                      }

                      else
                      {
                        ++v76;
                      }
                    }

                    v77 = v70 - v63;
                    if (__OFSUB__(v70, v63))
                    {
                      goto LABEL_122;
                    }

                    if (v76 == 2 && v70 == 5)
                    {
                      v79 = 32;
                    }

                    else
                    {
                      v79 = 64;
                    }

                    v13 = __OFSUB__(v79, v77);
                    v80 = v79 - v77;
                    if (v13)
                    {
LABEL_123:
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
LABEL_129:
                      __break(1u);
LABEL_130:
                      __break(1u);
LABEL_131:
                      __break(1u);
                      __break(1u);
                      __break(1u);
LABEL_132:
                      __break(1u);
LABEL_133:
                      __break(1u);
LABEL_134:
                      __break(1u);
LABEL_135:
                      __break(1u);
LABEL_136:
                      __break(1u);
                      goto LABEL_137;
                    }

                    v81 = a5[v76];
                    v82 = (v81 << v63) | v62;
                    v83 = v81 >> v77;
                    v63 = v80;
                    v84 = v82 & v65;
                    if ((v82 & v65) == 0)
                    {
                      break;
                    }
                  }

                  v74 = v66 + (v84 ^ v65);
                  if (v74 >= v65)
                  {
                    v75 = v64 - 1;
                  }

                  else
                  {
                    v75 = 0;
                  }

                  v62 = v83;
                }

                while (v74 - v75 != v42);
              }
            }

            _HashTable.BucketIterator.currentValue.setter(v42 - v5, 0);
          }
        }
      }
    }

    else
    {
      if (specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3 <= a1)
      {
        v43 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
        if (v43)
        {
          v44 = ~(-1 << *a4);
          v45 = a4[1] >> 6;
          v46 = v45 + (v43 ^ v44);
          v47 = v46 >= v44 ? ~(-1 << *a4) : 0;
          v48 = v46 - v47;
          if (v48 < a1)
          {
            v13 = __OFADD__(v48, v5);
            v49 = v48 + v5;
            if (v13)
            {
              goto LABEL_129;
            }

            *a5 ^= ((v44 & ((v49 - v45) >> 63)) + v49 - v45) ^ v44 ^ v43;
          }
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        if (a1 < 0)
        {
          goto LABEL_134;
        }

        if (v9 < a1)
        {
          goto LABEL_135;
        }

        if (a1)
        {
          v10 = 0;
          do
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            v11 = Hasher._finalize()();
            v12 = 1 << *a4;
            v13 = __OFSUB__(v12, 1);
            v14 = v12 - 1;
            if (v13)
            {
              goto LABEL_126;
            }

            v15 = v14 & v11;
            v16 = _HashTable.UnsafeHandle._startIterator(bucket:)(v14 & v11, a4, a5);
            if (v16)
            {
              v19 = 1 << *a4;
              v20 = v19 - 1;
              v21 = a4[1] >> 6;
              v22 = v21 + (v16 ^ (v19 - 1));
              v23 = v22 >= v19 - 1 ? v19 - 1 : 0;
              if (v22 - v23 != v10)
              {
                v24 = 0;
                v25 = *a4 & 0x3FLL;
                v26 = __OFADD__(v25 << v25, 64);
                v27 = (v25 << v25) + 126;
                if ((v25 << v25) + 64 >= 1)
                {
                  v27 = (v25 << v25) + 63;
                }

                v28 = v27 >> 6;
                do
                {
                  if (++v15 == v19)
                  {
                    if (v24)
                    {
                      goto LABEL_138;
                    }

                    v15 = 0;
                    v24 = 1;
                  }

                  if (v18 >= v25)
                  {
                    v13 = __OFSUB__(v18, v25);
                    v18 -= v25;
                    if (v13)
                    {
                      __break(1u);
LABEL_119:
                      __break(1u);
LABEL_120:
                      __break(1u);
LABEL_121:
                      __break(1u);
LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }

                    v38 = v17 >> v25;
                    v39 = v17 & v20;
                    if ((v17 & v20) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v31 = (v15 * v25) >> 6;
                    if (v18)
                    {
                      if (v26)
                      {
                        goto LABEL_124;
                      }

                      if (v31 + 1 == v28)
                      {
                        v31 = 0;
                      }

                      else
                      {
                        ++v31;
                      }
                    }

                    v32 = v25 - v18;
                    if (__OFSUB__(v25, v18))
                    {
                      goto LABEL_119;
                    }

                    if (v31 == 2 && v25 == 5)
                    {
                      v34 = 32;
                    }

                    else
                    {
                      v34 = 64;
                    }

                    v13 = __OFSUB__(v34, v32);
                    v35 = v34 - v32;
                    if (v13)
                    {
                      goto LABEL_120;
                    }

                    v36 = a5[v31];
                    v37 = (v36 << v18) | v17;
                    v38 = v36 >> v32;
                    v18 = v35;
                    v39 = v37 & v20;
                    if ((v37 & v20) == 0)
                    {
                      break;
                    }
                  }

                  v29 = v21 + (v39 ^ v20);
                  if (v29 >= v20)
                  {
                    v30 = v19 - 1;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v17 = v38;
                }

                while (v29 - v30 != v10);
              }
            }

            v40 = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_127;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter(v40, 0);
          }

          while (v10 != a1);
        }
      }

      v41 = a4[1] >> 6;
      if (__OFSUB__(v41, v5))
      {
        goto LABEL_133;
      }

      _HashTable.Header.bias.setter(v41 - v5);
    }
  }
}

{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_131;
  }

  if (v5 >= 1)
  {
    v10 = *(a3 + 16);
    if (a1 >= (v10 - v5) / 2)
    {
      v44 = a2;
      if (__OFSUB__(v10, a2))
      {
        goto LABEL_132;
      }

      if ((v10 - a2) >= specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3)
      {
        v52 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
        if (v52)
        {
          v53 = ~(-1 << *a4);
          v54 = a4[1] >> 6;
          v55 = v54 + (v52 ^ v53);
          v56 = v55 >= v53 ? ~(-1 << *a4) : 0;
          v57 = v55 - v56;
          if (v57 >= v44)
          {
            v15 = __OFSUB__(v57, v5);
            v58 = v57 - v5;
            if (v15)
            {
              goto LABEL_130;
            }

            *a5 ^= ((v53 & ((v58 - v54) >> 63)) + v58 - v54) ^ v53 ^ v52;
          }
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        if (v10 < v44)
        {
          goto LABEL_136;
        }

        if (v44 < 0)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        else
        {

          for (; v44 != v10; ++v44)
          {
            v59 = *(a3 + 32 + 24 * v44);
            Hasher.init(_seed:)();
            MEMORY[0x2667727B0](v59);

            String.hash(into:)();
            v60 = Hasher._finalize()();
            v61 = 1 << *a4;
            v15 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v15)
            {
              goto LABEL_128;
            }

            v63 = v62 & v60;
            v64 = _HashTable.UnsafeHandle._startIterator(bucket:)(v62 & v60, a4, a5);
            if (v64)
            {
              v67 = 1 << *a4;
              v68 = v67 - 1;
              v69 = a4[1] >> 6;
              v70 = v69 + (v64 ^ (v67 - 1));
              v71 = v70 >= v67 - 1 ? v67 - 1 : 0;
              if (v70 - v71 != v44)
              {
                v72 = 0;
                v73 = *a4 & 0x3FLL;
                v74 = __OFADD__(v73 << v73, 64);
                v75 = (v73 << v73) + 126;
                if ((v73 << v73) + 64 >= 1)
                {
                  v75 = (v73 << v73) + 63;
                }

                v76 = v75 >> 6;
                do
                {
                  if (++v63 == v67)
                  {
                    if (v72)
                    {
                      goto LABEL_138;
                    }

                    v63 = 0;
                    v72 = 1;
                  }

                  if (v66 >= v73)
                  {
                    v15 = __OFSUB__(v66, v73);
                    v66 -= v73;
                    if (v15)
                    {
                      goto LABEL_121;
                    }

                    v86 = v65 >> v73;
                    v87 = v65 & v68;
                    if ((v65 & v68) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v79 = (v63 * v73) >> 6;
                    if (v66)
                    {
                      if (v74)
                      {
                        goto LABEL_125;
                      }

                      if (v79 + 1 == v76)
                      {
                        v79 = 0;
                      }

                      else
                      {
                        ++v79;
                      }
                    }

                    v80 = v73 - v66;
                    if (__OFSUB__(v73, v66))
                    {
                      goto LABEL_122;
                    }

                    if (v79 == 2 && v73 == 5)
                    {
                      v82 = 32;
                    }

                    else
                    {
                      v82 = 64;
                    }

                    v15 = __OFSUB__(v82, v80);
                    v83 = v82 - v80;
                    if (v15)
                    {
LABEL_123:
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
LABEL_129:
                      __break(1u);
LABEL_130:
                      __break(1u);
LABEL_131:
                      __break(1u);
                      __break(1u);
                      __break(1u);
LABEL_132:
                      __break(1u);
LABEL_133:
                      __break(1u);
LABEL_134:
                      __break(1u);
LABEL_135:
                      __break(1u);
LABEL_136:
                      __break(1u);
                      goto LABEL_137;
                    }

                    v84 = a5[v79];
                    v85 = (v84 << v66) | v65;
                    v86 = v84 >> v80;
                    v66 = v83;
                    v87 = v85 & v68;
                    if ((v85 & v68) == 0)
                    {
                      break;
                    }
                  }

                  v77 = v69 + (v87 ^ v68);
                  if (v77 >= v68)
                  {
                    v78 = v67 - 1;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  v65 = v86;
                }

                while (v77 - v78 != v44);
              }
            }

            _HashTable.BucketIterator.currentValue.setter(v44 - v5, 0);
          }
        }
      }
    }

    else
    {
      if (specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3 <= a1)
      {
        v45 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a4, a5);
        if (v45)
        {
          v46 = ~(-1 << *a4);
          v47 = a4[1] >> 6;
          v48 = v47 + (v45 ^ v46);
          v49 = v48 >= v46 ? ~(-1 << *a4) : 0;
          v50 = v48 - v49;
          if (v50 < a1)
          {
            v15 = __OFADD__(v50, v5);
            v51 = v50 + v5;
            if (v15)
            {
              goto LABEL_129;
            }

            *a5 ^= ((v46 & ((v51 - v47) >> 63)) + v51 - v47) ^ v46 ^ v45;
          }
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        if (a1 < 0)
        {
          goto LABEL_134;
        }

        if (v10 < a1)
        {
          goto LABEL_135;
        }

        if (a1)
        {
          v11 = 0;
          do
          {
            v12 = *(a3 + 32 + 24 * v11);
            Hasher.init(_seed:)();
            MEMORY[0x2667727B0](v12);

            String.hash(into:)();
            v13 = Hasher._finalize()();
            v14 = 1 << *a4;
            v15 = __OFSUB__(v14, 1);
            v16 = v14 - 1;
            if (v15)
            {
              goto LABEL_126;
            }

            v17 = v16 & v13;
            v18 = _HashTable.UnsafeHandle._startIterator(bucket:)(v16 & v13, a4, a5);
            if (v18)
            {
              v21 = 1 << *a4;
              v22 = v21 - 1;
              v23 = a4[1] >> 6;
              v24 = v23 + (v18 ^ (v21 - 1));
              v25 = v24 >= v21 - 1 ? v21 - 1 : 0;
              if (v24 - v25 != v11)
              {
                v26 = 0;
                v27 = *a4 & 0x3FLL;
                v28 = __OFADD__(v27 << v27, 64);
                v29 = (v27 << v27) + 126;
                if ((v27 << v27) + 64 >= 1)
                {
                  v29 = (v27 << v27) + 63;
                }

                v30 = v29 >> 6;
                do
                {
                  if (++v17 == v21)
                  {
                    if (v26)
                    {
                      goto LABEL_138;
                    }

                    v17 = 0;
                    v26 = 1;
                  }

                  if (v20 >= v27)
                  {
                    v15 = __OFSUB__(v20, v27);
                    v20 -= v27;
                    if (v15)
                    {
                      __break(1u);
LABEL_119:
                      __break(1u);
LABEL_120:
                      __break(1u);
LABEL_121:
                      __break(1u);
LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }

                    v40 = v19 >> v27;
                    v41 = v19 & v22;
                    if ((v19 & v22) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v33 = (v17 * v27) >> 6;
                    if (v20)
                    {
                      if (v28)
                      {
                        goto LABEL_124;
                      }

                      if (v33 + 1 == v30)
                      {
                        v33 = 0;
                      }

                      else
                      {
                        ++v33;
                      }
                    }

                    v34 = v27 - v20;
                    if (__OFSUB__(v27, v20))
                    {
                      goto LABEL_119;
                    }

                    if (v33 == 2 && v27 == 5)
                    {
                      v36 = 32;
                    }

                    else
                    {
                      v36 = 64;
                    }

                    v15 = __OFSUB__(v36, v34);
                    v37 = v36 - v34;
                    if (v15)
                    {
                      goto LABEL_120;
                    }

                    v38 = a5[v33];
                    v39 = (v38 << v20) | v19;
                    v40 = v38 >> v34;
                    v20 = v37;
                    v41 = v39 & v22;
                    if ((v39 & v22) == 0)
                    {
                      break;
                    }
                  }

                  v31 = v23 + (v41 ^ v22);
                  if (v31 >= v22)
                  {
                    v32 = v21 - 1;
                  }

                  else
                  {
                    v32 = 0;
                  }

                  v19 = v40;
                }

                while (v31 - v32 != v11);
              }
            }

            v42 = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_127;
            }

            ++v11;
            _HashTable.BucketIterator.currentValue.setter(v42, 0);
          }

          while (v11 != a1);
        }
      }

      v43 = a4[1] >> 6;
      if (__OFSUB__(v43, v5))
      {
        goto LABEL_133;
      }

      _HashTable.Header.bias.setter(v43 - v5);
    }
  }
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_158;
  }

  if (v5 >= 1)
  {
    v7 = a4;
    v10 = *(a3 + 16);
    if (a1 >= (v10 - v5) / 2)
    {
      v49 = a2;
      if (__OFSUB__(v10, a2))
      {
        goto LABEL_161;
      }

      if ((v10 - a2) >= specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3)
      {
        v75 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v7, a5);
        v76 = 0;
        v139 = v7;
        v140 = a5;
        v141 = 0;
        v142 = v75;
        v143 = v77;
        v144 = v78;
        v145 = 0;
        do
        {
          if (v142)
          {
            v79 = v139;
            v80 = ~(-1 << *v139);
            v81 = v139[1] >> 6;
            v82 = v81 + (v142 ^ v80);
            v83 = v82 >= v80 ? ~(-1 << *v139) : 0;
            v84 = v82 - v83;
            if (v84 >= v49)
            {
              v21 = __OFSUB__(v84, v5);
              v85 = v84 - v5;
              if (v21)
              {
                goto LABEL_157;
              }

              v86 = *v139 & 0x3FLL;
              v87 = ((v80 & ((v85 - v81) >> 63)) + v85 - v81) ^ v80;
              v88 = v87 ^ v142;
              v89 = v86 * v76;
              v90 = (v86 * v76) >> 6;
              v91 = (v86 * v76) & 0x3F;
              v92 = v140;
              *(v140 + 8 * v90) ^= (v87 ^ v142) << v89;
              v93 = *v79 & 0x3FLL;
              if (64 - v91 < v93)
              {
                v94 = v93 << v93;
                v21 = __OFADD__(v94, 64);
                v95 = v94 + 64;
                if (v21)
                {
                  goto LABEL_160;
                }

                v96 = v95 - 1;
                v71 = v95 < 1;
                v97 = v95 + 62;
                if (!v71)
                {
                  v97 = v96;
                }

                if (v90 + 1 == v97 >> 6)
                {
                  v98 = 0;
                }

                else
                {
                  v98 = v90 + 1;
                }

                *(v92 + 8 * v98) ^= v88 >> (64 - v91);
              }

              v142 = v87;
            }
          }

          _HashTable.BucketIterator.advance()();
          v76 = v141;
        }

        while (v141);
      }

      else
      {
        if (v10 < v49)
        {
          goto LABEL_165;
        }

        if (v49 < 0)
        {
LABEL_166:
          __break(1u);
LABEL_167:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        else
        {

          if (v10 != v49)
          {
            v136 = a3 + 32;
            v134 = v10;
            do
            {
              v100 = (v136 + 56 * v49);
              v101 = v100[4];
              v102 = v100[6];
              v103 = *(v100 + 40);
              v104 = v100[1];
              v105 = *v100;
              Hasher.init(_seed:)();
              MEMORY[0x266772770](v105);
              v106 = *(*v104 + 120);

              v106(&v139);
              String.hash(into:)();
              if (v103 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x266772770](v101);
              }

              MEMORY[0x266772770](v102);
              v107 = Hasher._finalize()();
              v108 = 1 << *a4;
              v21 = __OFSUB__(v108, 1);
              v109 = v108 - 1;
              if (v21)
              {
                goto LABEL_155;
              }

              v110 = v109 & v107;
              v111 = _HashTable.UnsafeHandle._startIterator(bucket:)(v109 & v107, a4, a5);
              v139 = a4;
              v140 = a5;
              v141 = v110;
              v142 = v111;
              v143 = v112;
              v144 = v113;
              v145 = 0;
              if (v111)
              {
                v114 = 1 << *a4;
                v115 = v114 - 1;
                v116 = a4[1] >> 6;
                v117 = v116 + (v111 ^ (v114 - 1));
                if (v117 >= v114 - 1)
                {
                  v118 = v114 - 1;
                }

                else
                {
                  v118 = 0;
                }

                if (v117 - v118 != v49)
                {
                  v99 = 0;
                  v119 = *a4 & 0x3FLL;
                  v120 = __OFADD__(v119 << v119, 64);
                  v121 = (v119 << v119) + 126;
                  if ((v119 << v119) + 64 >= 1)
                  {
                    v121 = (v119 << v119) + 63;
                  }

                  v122 = v121 >> 6;
                  while (1)
                  {
                    if (++v110 == v114)
                    {
                      if (v99)
                      {
                        goto LABEL_167;
                      }

                      v110 = 0;
                      v99 = 1;
                    }

                    if (v113 >= v119)
                    {
                      v21 = __OFSUB__(v113, v119);
                      v113 -= v119;
                      if (v21)
                      {
                        goto LABEL_148;
                      }

                      v132 = v112 >> v119;
                      v111 = v112 & v115;
                      if ((v112 & v115) == 0)
                      {
LABEL_144:
                        v112 = v132;
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v125 = (v110 * v119) >> 6;
                      if (v113)
                      {
                        if (v120)
                        {
                          goto LABEL_152;
                        }

                        if (v125 + 1 == v122)
                        {
                          v125 = 0;
                        }

                        else
                        {
                          ++v125;
                        }
                      }

                      v126 = v119 - v113;
                      if (__OFSUB__(v119, v113))
                      {
                        goto LABEL_149;
                      }

                      if (v125 == 2 && v119 == 5)
                      {
                        v128 = 32;
                      }

                      else
                      {
                        v128 = 64;
                      }

                      v21 = __OFSUB__(v128, v126);
                      v129 = v128 - v126;
                      if (v21)
                      {
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        __break(1u);
LABEL_156:
                        __break(1u);
LABEL_157:
                        __break(1u);
LABEL_158:
                        __break(1u);
LABEL_159:
                        __break(1u);
LABEL_160:
                        __break(1u);
LABEL_161:
                        __break(1u);
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
LABEL_164:
                        __break(1u);
LABEL_165:
                        __break(1u);
                        goto LABEL_166;
                      }

                      v130 = *(a5 + 8 * v125);
                      v131 = (v130 << v113) | v112;
                      v132 = v130 >> v126;
                      v113 = v129;
                      v111 = v131 & v115;
                      if ((v131 & v115) == 0)
                      {
                        goto LABEL_144;
                      }
                    }

                    v123 = v116 + (v111 ^ v115);
                    if (v123 >= v115)
                    {
                      v124 = v114 - 1;
                    }

                    else
                    {
                      v124 = 0;
                    }

                    v112 = v132;
                    if (v123 - v124 == v49)
                    {
                      goto LABEL_144;
                    }
                  }
                }

                v99 = 0;
LABEL_102:
                v145 = v99;
                v141 = v110;
                v142 = v111;
                v143 = v112;
                v144 = v113;
              }

              _HashTable.BucketIterator.currentValue.setter(v49 - v5, 0);

              ++v49;
            }

            while (v49 != v134);
          }
        }
      }
    }

    else
    {
      if (specialized static _HashTable.maximumCapacity(forScale:)(*a4 & 0x3FLL) / 3 <= a1)
      {
        v50 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v7, a5);
        v51 = 0;
        v139 = v7;
        v140 = a5;
        v141 = 0;
        v142 = v50;
        v143 = v52;
        v144 = v53;
        v145 = 0;
        while (1)
        {
          if (v142)
          {
            v54 = v139;
            v55 = ~(-1 << *v139);
            v56 = v139[1] >> 6;
            v57 = v56 + (v142 ^ v55);
            v58 = v57 >= v55 ? ~(-1 << *v139) : 0;
            v59 = v57 - v58;
            if (v59 < a1)
            {
              v21 = __OFADD__(v59, v5);
              v60 = v59 + v5;
              if (v21)
              {
                goto LABEL_156;
              }

              v61 = *v139 & 0x3FLL;
              v62 = ((v55 & ((v60 - v56) >> 63)) + v60 - v56) ^ v55;
              v63 = v62 ^ v142;
              v64 = v61 * v51;
              v65 = (v61 * v51) >> 6;
              v66 = (v61 * v51) & 0x3F;
              v67 = v140;
              *(v140 + 8 * v65) ^= (v62 ^ v142) << v64;
              v68 = *v54 & 0x3FLL;
              if (64 - v66 < v68)
              {
                v69 = v68 << v68;
                v21 = __OFADD__(v69, 64);
                v70 = v69 + 64;
                if (v21)
                {
                  goto LABEL_159;
                }

                v72 = v70 - 1;
                v71 = v70 < 1;
                v73 = v70 + 62;
                if (!v71)
                {
                  v73 = v72;
                }

                if (v65 + 1 == v73 >> 6)
                {
                  v74 = 0;
                }

                else
                {
                  v74 = v65 + 1;
                }

                *(v67 + 8 * v74) ^= v63 >> (64 - v66);
              }

              v142 = v62;
            }
          }

          _HashTable.BucketIterator.advance()();
          v51 = v141;
          if (!v141)
          {
            goto LABEL_55;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_163;
      }

      if (v10 < a1)
      {
        goto LABEL_164;
      }

      if (a1)
      {
        v11 = 0;
        v133 = a1;
        v135 = v5;
        do
        {
          v12 = a3 + 32 + 56 * v11;
          v13 = *(v12 + 32);
          v14 = *(v12 + 48);
          v15 = *(v12 + 40);
          v16 = *(v12 + 8);
          v17 = *v12;
          Hasher.init(_seed:)();
          MEMORY[0x266772770](v17);
          v18 = *(*v16 + 120);

          v18(&v139);
          String.hash(into:)();
          if (v15 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v13);
          }

          MEMORY[0x266772770](v14);
          v19 = Hasher._finalize()();
          v7 = a4;
          v20 = 1 << *a4;
          v21 = __OFSUB__(v20, 1);
          v22 = v20 - 1;
          v5 = v135;
          if (v21)
          {
            goto LABEL_153;
          }

          v23 = v22 & v19;
          v24 = _HashTable.UnsafeHandle._startIterator(bucket:)(v22 & v19, a4, a5);
          v139 = a4;
          v140 = a5;
          v141 = v23;
          v142 = v24;
          v143 = v25;
          v144 = v26;
          v145 = 0;
          if (v24)
          {
            v27 = 1 << *a4;
            v28 = v27 - 1;
            v29 = a4[1] >> 6;
            v30 = v29 + (v24 ^ (v27 - 1));
            if (v30 >= v27 - 1)
            {
              v31 = v27 - 1;
            }

            else
            {
              v31 = 0;
            }

            if (v30 - v31 != v11)
            {
              v32 = 0;
              v33 = *a4 & 0x3FLL;
              v34 = __OFADD__(v33 << v33, 64);
              v35 = (v33 << v33) + 126;
              if ((v33 << v33) + 64 >= 1)
              {
                v35 = (v33 << v33) + 63;
              }

              v36 = v35 >> 6;
              while (1)
              {
                if (++v23 == v27)
                {
                  if (v32)
                  {
                    goto LABEL_167;
                  }

                  v23 = 0;
                  v32 = 1;
                }

                if (v26 >= v33)
                {
                  v21 = __OFSUB__(v26, v33);
                  v26 -= v33;
                  if (v21)
                  {
                    __break(1u);
LABEL_146:
                    __break(1u);
LABEL_147:
                    __break(1u);
LABEL_148:
                    __break(1u);
LABEL_149:
                    __break(1u);
                    goto LABEL_150;
                  }

                  v46 = v25 >> v33;
                  v24 = v25 & v28;
                  if ((v25 & v28) == 0)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  v39 = (v23 * v33) >> 6;
                  if (v26)
                  {
                    if (v34)
                    {
                      goto LABEL_151;
                    }

                    if (v39 + 1 == v36)
                    {
                      v39 = 0;
                    }

                    else
                    {
                      ++v39;
                    }
                  }

                  v40 = v33 - v26;
                  if (__OFSUB__(v33, v26))
                  {
                    goto LABEL_146;
                  }

                  if (v39 == 2 && v33 == 5)
                  {
                    v42 = 32;
                  }

                  else
                  {
                    v42 = 64;
                  }

                  v21 = __OFSUB__(v42, v40);
                  v43 = v42 - v40;
                  if (v21)
                  {
                    goto LABEL_147;
                  }

                  v44 = *(a5 + 8 * v39);
                  v45 = (v44 << v26) | v25;
                  v46 = v44 >> v40;
                  v26 = v43;
                  v24 = v45 & v28;
                  if ((v45 & v28) == 0)
                  {
                    goto LABEL_50;
                  }
                }

                v37 = v29 + (v24 ^ v28);
                if (v37 >= v28)
                {
                  v38 = v27 - 1;
                }

                else
                {
                  v38 = 0;
                }

                v25 = v46;
                if (v37 - v38 == v11)
                {
LABEL_50:
                  v25 = v46;
                  goto LABEL_51;
                }
              }
            }

            v32 = 0;
LABEL_51:
            v145 = v32;
            v141 = v23;
            v142 = v24;
            v143 = v25;
            v144 = v26;
          }

          v47 = v11 + v135;
          if (__OFADD__(v11, v135))
          {
            goto LABEL_154;
          }

          ++v11;
          _HashTable.BucketIterator.currentValue.setter(v47, 0);
        }

        while (v11 != v133);
      }

LABEL_55:
      v48 = v7[1] >> 6;
      if (__OFSUB__(v48, v5))
      {
        goto LABEL_162;
      }

      _HashTable.Header.bias.setter(v48 - v5);
    }
  }
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

{
  return specialized ContiguousArray.remove(at:)(a1, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized ContiguousArray.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 8);
    v13 = *(v9 + 32);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[7 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = v9[6];
    v13 = *(v9 + 1);
    v12 = *(v9 + 2);
    result = memmove(v9, v9 + 7, 56 * (v7 - 1 - a1));
    v5[2] = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of WeakBox<SGEdge>(&v5[a1 + 4], a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized ContiguousArray.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 56 * a1;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v11 += 32;
    v17 = v12;
    v18 = v13;
    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    v16 = *(v11 + 48);
    result = memmove(v11, (v11 + 56), 56 * (v9 - 1 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
    *a3 = v18;
    *(a3 + 16) = v17;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    *(a3 + 48) = v16;
  }

  return result;
}

char *specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    specialized ContiguousArray._endMutation()();
    return v10;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t specialized OrderedSet._removeExistingMember(at:in:)(uint64_t a1, uint64_t a2)
{
  return specialized OrderedSet._removeExistingMember(at:in:)(a1, a2, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:));
}

{
  return specialized OrderedSet._removeExistingMember(at:in:)(a1, a2, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:));
}

{
  return specialized OrderedSet._removeExistingMember(at:in:)(a1, a2, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:));
}

{
  return specialized OrderedSet._removeExistingMember(at:in:)(a1, a2, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:));
}

uint64_t specialized OrderedSet._removeExistingMember(at:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return specialized OrderedSet._removeExistingMember(at:in:)(a1, a2, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), a3);
}

{
  return specialized OrderedSet._removeExistingMember(at:in:)(a1, a2, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), a3);
}

uint64_t specialized OrderedSet._removeExistingMember(at:in:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(void, void, void, void)@<X4>, uint64_t a6@<X8>)
{
  v12 = v6[1];
  v13 = *(v12 + 16);
  v14 = *v6;
  specialized OrderedSet._minimumCapacity.getter(*v6);
  if (v13 <= v15)
  {
    v29 = specialized ContiguousArray.remove(at:)(a1, a3, v36);
    result = a4(v29);
    goto LABEL_15;
  }

  if (!v14)
  {
LABEL_13:
    result = specialized ContiguousArray.remove(at:)(a1, a3, v36);
LABEL_15:
    v30 = v39;
    v31 = v37;
    v32 = v38;
    v33 = v36[1];
    *a6 = v36[0];
    *(a6 + 16) = v33;
    *(a6 + 32) = v31;
    *(a6 + 40) = v32;
    *(a6 + 48) = v30;
    return result;
  }

  result = swift_isUniquelyReferenced_native();
  v17 = *v6;
  if (result)
  {
    goto LABEL_9;
  }

  v34 = a5;
  if (v17)
  {
    v18 = v17[2];
    v19 = (v18 & 0x3F) << v18;
    v20 = __OFADD__(v19, 64);
    v21 = v19 + 64;
    if (v20)
    {
      goto LABEL_18;
    }

    v23 = v21 - 1;
    v22 = v21 < 1;
    v24 = v21 + 62;
    if (!v22)
    {
      v24 = v23;
    }

    v25 = v24 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v26 = 8 * v25;
    v27 = swift_allocObject();
    v28 = v17[3];
    v27[2] = v18;
    v27[3] = v28;
    memcpy(v27 + 4, v17 + 4, v26);

    *v6 = v27;
    v17 = v27;
    a5 = v34;
LABEL_9:
    if (!v17)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    result = a5(a2, v17 + 2, v17 + 4, v6);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v12, v17 + 2, (v17 + 4));

      goto LABEL_13;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

void specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = *v3;
  specialized OrderedSet._minimumCapacity.getter(*v3);
  if (v8 > v10)
  {
    if (!v9)
    {
LABEL_13:
      specialized ContiguousArray.remove(at:)(a1, a3);
      return;
    }

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v12 = *v3;
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v12)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v13 = v12[2];
      v14 = (v13 & 0x3F) << v13;
      v15 = __OFADD__(v14, 64);
      v16 = v14 + 64;
      if (v15)
      {
        goto LABEL_19;
      }

      v18 = v16 - 1;
      v17 = v16 < 1;
      v19 = v16 + 62;
      if (!v17)
      {
        v19 = v18;
      }

      v20 = v19 >> 6;
      type metadata accessor for _HashTable.Storage(0);
      v21 = swift_allocObject();
      v22 = v12[3];
      v21[2] = v13;
      v21[3] = v22;
      memcpy(v21 + 4, v12 + 4, 8 * v20);

      *v3 = v21;
      v12 = v21;
    }

    if (!v12)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, v12 + 2, (v12 + 4), v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v7, v12 + 2, v12 + 4);

      goto LABEL_13;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  specialized ContiguousArray.remove(at:)(a1, a3);

  specialized OrderedSet._regenerateHashTable()();
}

void specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1, unint64_t a2)
{
  v5 = v2[1];
  v6 = *(v5 + 16);
  v7 = *v2;
  specialized OrderedSet._minimumCapacity.getter(*v2);
  if (v6 <= v8)
  {
    specialized ContiguousArray.remove(at:)(a1);
    specialized OrderedSet._regenerateHashTable()();
    return;
  }

  if (!v7)
  {
LABEL_13:
    specialized ContiguousArray.remove(at:)(a1);
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if (isUniquelyReferenced_native)
  {
    goto LABEL_9;
  }

  if (v10)
  {
    v11 = v10[2];
    v12 = (v11 & 0x3F) << v11;
    v13 = __OFADD__(v12, 64);
    v14 = v12 + 64;
    if (v13)
    {
      goto LABEL_17;
    }

    v16 = v14 - 1;
    v15 = v14 < 1;
    v17 = v14 + 62;
    if (!v15)
    {
      v17 = v16;
    }

    v18 = v17 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v19 = swift_allocObject();
    v20 = v10[3];
    v19[2] = v11;
    v19[3] = v20;
    memcpy(v19 + 4, v10 + 4, 8 * v18);

    *v2 = v19;
    v10 = v19;
LABEL_9:
    if (!v10)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, v10 + 2, (v10 + 4), v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v5, v10 + 2, v10 + 4);

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, void *, void *, uint64_t *), void (*a6)(void))
{
  v12 = *(v6[1] + 16);
  v13 = *v6;
  specialized OrderedSet._minimumCapacity.getter(*v6);
  if (v12 <= v14)
  {
    v28 = specialized ContiguousArray.remove(at:)(a1, a3);
    a4();
    return v28;
  }

  if (!v13)
  {
    return specialized ContiguousArray.remove(at:)(a1, a3);
  }

  result = swift_isUniquelyReferenced_native();
  v16 = *v6;
  if (result)
  {
    goto LABEL_9;
  }

  v29 = a6;
  if (v16)
  {
    v17 = v16[2];
    v18 = (v17 & 0x3F) << v17;
    v19 = __OFADD__(v18, 64);
    v20 = v18 + 64;
    if (v19)
    {
      goto LABEL_17;
    }

    v22 = v20 - 1;
    v21 = v20 < 1;
    v23 = v20 + 62;
    if (!v21)
    {
      v23 = v22;
    }

    v24 = v23 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v25 = 8 * v24;
    v26 = swift_allocObject();
    v27 = v16[3];
    v26[2] = v17;
    v26[3] = v27;
    memcpy(v26 + 4, v16 + 4, v25);

    *v6 = v26;
    v16 = v26;
    a6 = v29;
LABEL_9:
    if (!v16)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = a5(a2, v16 + 2, v16 + 4, v6);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      a6(a1);
      return specialized ContiguousArray.remove(at:)(a1, a3);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

{
  v12 = *(v6[1] + 16);
  v13 = *v6;
  specialized OrderedSet._minimumCapacity.getter(*v6);
  if (v12 <= v14)
  {
    v28 = specialized ContiguousArray.remove(at:)(a1, a3);
    a4();
    return v28;
  }

  if (!v13)
  {
    return specialized ContiguousArray.remove(at:)(a1, a3);
  }

  result = swift_isUniquelyReferenced_native();
  v16 = *v6;
  if (result)
  {
    goto LABEL_9;
  }

  v29 = a6;
  if (v16)
  {
    v17 = v16[2];
    v18 = (v17 & 0x3F) << v17;
    v19 = __OFADD__(v18, 64);
    v20 = v18 + 64;
    if (v19)
    {
      goto LABEL_17;
    }

    v22 = v20 - 1;
    v21 = v20 < 1;
    v23 = v20 + 62;
    if (!v21)
    {
      v23 = v22;
    }

    v24 = v23 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v25 = 8 * v24;
    v26 = swift_allocObject();
    v27 = v16[3];
    v26[2] = v17;
    v26[3] = v27;
    memcpy(v26 + 4, v16 + 4, v25);

    *v6 = v26;
    v16 = v26;
    a6 = v29;
LABEL_9:
    if (!v16)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = a5(a2, v16 + 2, v16 + 4, v6);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      a6(a1);
      return specialized ContiguousArray.remove(at:)(a1, a3);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

char *specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1)
{
  v3 = v1[1];
  v4 = *(v3 + 16);
  v5 = *v1;
  specialized OrderedSet._minimumCapacity.getter(*v1);
  if (v4 <= v6)
  {
    v19 = specialized ContiguousArray.remove(at:)(a1);
    specialized OrderedSet._regenerateHashTable()();
    return v19;
  }

  if (!v5)
  {
    return specialized ContiguousArray.remove(at:)(a1);
  }

  result = swift_isUniquelyReferenced_native();
  v8 = *v1;
  if (result)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = v8[2];
    v10 = (v9 & 0x3F) << v9;
    v11 = __OFADD__(v10, 64);
    v12 = v10 + 64;
    if (v11)
    {
      goto LABEL_17;
    }

    v14 = v12 - 1;
    v13 = v12 < 1;
    v15 = v12 + 62;
    if (!v13)
    {
      v15 = v14;
    }

    v16 = v15 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v17 = swift_allocObject();
    v18 = v8[3];
    v17[2] = v9;
    v17[3] = v18;
    memcpy(v17 + 4, v8 + 4, 8 * v16);

    *v1 = v17;
    v8 = v17;
LABEL_9:
    if (!v8)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)();
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v3, v8 + 2, v8 + 4);

      return specialized ContiguousArray.remove(at:)(a1);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

Swift::Int GraphIndex.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  return Hasher._finalize()();
}

uint64_t Graph.Input.init(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v10 = *(a6(0, a4, a5) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 32);

  return v12(&a8[v10], a3, AssociatedTypeWitness);
}

Swift::Int Graph.Node.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Graph.Edge.from.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for Graph.Output(0, *(a1 + 16), *(a1 + 24), x3_0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t Graph.Edge.to.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Graph.Input(0, *(a1 + 16), *(a1 + 24), x3_0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v4 + v6, v7);
}

uint64_t Graph.Edge.debugDescription.getter()
{
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](58, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](540945696, 0xE400000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](58, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  return v4;
}

uint64_t static Graph.Edge.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((static Graph.Output.== infix(_:_:)(a1, a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Graph.Edge(0, a3, a4, v8) + 36);

  return static Graph.Input.== infix(_:_:)((a1 + v9), (a2 + v9), a3, a4);
}

uint64_t static Graph.Output.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t), uint64_t a7)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  a6(0, a3, a4);
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Graph.Edge.hash(into:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Graph.Output(0, v6, v7, a5);
  Graph.Output.hash(into:)(a1, v8);
  v10 = type metadata accessor for Graph.Input(0, v6, v7, v9);
  return Graph.Input.hash(into:)(a1, v10);
}

uint64_t Graph.Edge.init(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Graph.Output(0, a3, a4, a4);
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v13 = *(type metadata accessor for Graph.Edge(0, a3, a4, v12) + 36);
  v15 = type metadata accessor for Graph.Input(0, a3, a4, v14);
  v16 = *(*(v15 - 8) + 32);

  return v16(a5 + v13, a2, v15);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Graph<A>.Node(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t Graph.Input.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  return Graph.Input.value.getter(a1, a3);
}

{
  v5 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a3, v3 + v5, AssociatedTypeWitness);
}

Swift::Int Graph.Edge.hashValue.getter(uint64_t a1, void (*a2)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

uint64_t Graph.Input.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  MEMORY[0x266772770](*v4);
  MEMORY[0x266772770](v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t Graph.Adjacent.outgoing.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Graph.Adjacent.outgoing.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t Graph.Adjacent.incoming.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Graph.Adjacent.incoming.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

double Graph.Adjacent.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, uint64_t a5@<X3>)
{
  specialized Graph.Adjacent.init(_:)(a2, a3, a5, v13, a1);
  v10 = type metadata accessor for Graph.Node(0, a2, a3, v9);
  (*(*(v10 - 8) + 8))(a1, v10);
  v11 = v13[1];
  *a4 = v13[0];
  a4[1] = v11;
  result = *&v14;
  a4[2] = v14;
  return result;
}

uint64_t Graph.Adjacent.init(incoming:outgoing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a4;
  a7[1] = a5;
  a7[2] = a6;
  a7[3] = result;
  a7[4] = a2;
  a7[5] = a3;
  return result;
}

BOOL static Graph.Adjacent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  result = 0;
  if (specialized Sequence<>.elementsEqual<A>(_:)(a2[1], a1[1]) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a2[4];
    v9 = a2[5];
    if (specialized Sequence<>.elementsEqual<A>(_:)(v8, v6) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(v7, v9))
    {
      return 1;
    }
  }

  return result;
}

void Graph.Adjacent.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v5 = v2[1];
  v4 = v2[2];
  v11 = v4;
  v6 = *(v4 + 16);
  MEMORY[0x266772770](v6);

  if (v6)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v5 + 16))
    {
      v9 = *(v5 + 32 + 8 * v7);
      v10 = *(v8 + 8 * v7++);
      MEMORY[0x266772770](v9);

      specialized Set.hash(into:)(a1, v10);

      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    outlined destroy of [Input](&v11, &_ss15ContiguousArrayVyShy11ShaderGraph0D5IndexVGGMd, &_ss15ContiguousArrayVyShy11ShaderGraph0D5IndexVGGMR);
    specialized OrderedDictionary<>.hash(into:)(a1, v2[4], v2[5]);
  }
}

Swift::Int Graph.Adjacent.hashValue.getter()
{
  Hasher.init(_seed:)();
  Graph.Adjacent.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Graph<A>.Adjacent(uint64_t a1)
{
  Hasher.init(_seed:)();
  Graph.Adjacent.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL static Graph.NodeEntry.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v6 = type metadata accessor for Graph.Node(0, a3, a4, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v35 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = &v35 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v35 - v14;
  v17 = *(v16 + 48);
  v39 = v10;
  v18 = *(v10 + 16);
  v36 = a1;
  v18(&v35 - v14, a1, v9, v13);
  v37 = a2;
  (v18)(&v15[v17], a2, v9);
  v19 = *(v7 + 48);
  if (v19(v15, 1, v6) == 1)
  {
    if (v19(&v15[v17], 1, v6) == 1)
    {
      (*(v39 + 8))(v15, v9);
      v22 = v40;
      v21 = v41;
LABEL_9:
      v29 = type metadata accessor for Graph.NodeEntry(0, v22, v21, v20);
      v30 = (v36 + *(v29 + 36));
      v31 = v30[2];
      v43[1] = v30[1];
      v43[2] = v31;
      v43[0] = *v30;
      v32 = (v37 + *(v29 + 36));
      v33 = v32[2];
      v44[1] = v32[1];
      v44[2] = v33;
      v44[0] = *v32;
      return static Graph.Adjacent.== infix(_:_:)(v43, v44);
    }

    goto LABEL_6;
  }

  (v18)(v42, v15, v9);
  if (v19(&v15[v17], 1, v6) == 1)
  {
    (*(v7 + 8))(v42, v6);
LABEL_6:
    (*(v38 + 8))(v15, TupleTypeMetadata2);
    return 0;
  }

  v24 = &v15[v17];
  v25 = v35;
  (*(v7 + 32))(v35, v24, v6);
  v21 = v41;
  v26 = v42;
  v22 = v40;
  v27 = static Graph.Node.== infix(_:_:)(v42, v25, v40, v41);
  v28 = *(v7 + 8);
  v28(v25, v6);
  v28(v26, v6);
  (*(v39 + 8))(v15, v9);
  if (v27)
  {
    goto LABEL_9;
  }

  return 0;
}

void Graph.NodeEntry.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Graph.Node(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for Optional();
  swift_getWitnessTable();
  Optional<A>.hash(into:)();
  Graph.Adjacent.hash(into:)(a1);
}

Swift::Int Graph.NodeEntry.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  Graph.NodeEntry.hash(into:)(v5, a1, v2, v3);
  return Hasher._finalize()();
}

__n128 Graph.NodeEntry.init(node:adjacent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Graph.Node(255, a3, a4, a4);
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = a5 + *(type metadata accessor for Graph.NodeEntry(0, a3, a4, v11) + 36);
  v13 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v13;
  result = *(a2 + 32);
  *(v12 + 32) = result;
  return result;
}

uint64_t partial apply for closure #1 in Graph.nodes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  type metadata accessor for Graph.Node(255, *(v3 + 16), *(v3 + 24), a3);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t Graph.removeEdges(connectedTo:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Graph.NodeEntry(0, v6, v7, a4);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v37 = *a1;
  Array.subscript.getter();
  v39 = v8;
  v13 = *(v8 + 36);
  v36 = v12;
  v14 = &v12[v13];
  v15 = *(v14 + 4);
  v16 = *(v14 + 5);
  v17 = *(v16 + 16);

  if (v17)
  {
    v19 = 0;
    v20 = (v16 + 48);
    while (v19 < *(v15 + 16))
    {
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_13;
      }

      v21 = *(v15 + 32 + 8 * v19);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      ++v19;
      v24 = *v20;
      v20 += 24;
      result = closure #1 in Graph.removeEdges(connectedTo:)(v21, v22, v23, v24, v4, a1, v6, v7);
      if (v17 == v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_6:
    v25 = v39;
    v26 = *(v40 + 8);
    v27 = v36;
    v40 += 8;
    v36 = v26;
    v26(v27, v39);

    v28 = v38;
    Array.subscript.getter();
    v29 = &v28[*(v25 + 36)];
    v31 = *(v29 + 1);
    v30 = *(v29 + 2);
    v32 = *(v30 + 16);

    if (!v32)
    {
LABEL_11:
      v36(v38, v39);
    }

    v33 = 0;
    while (v33 < *(v31 + 16))
    {
      if (v33 >= *(v30 + 16))
      {
        goto LABEL_15;
      }

      v34 = *(v30 + 32 + 8 * v33++);

      v42 = v6;
      v43 = v7;
      v44 = v4;
      specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #2 in Graph.removeEdges(connectedTo:), v41, v34);

      if (v32 == v33)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t closure #1 in Graph.removeEdges(connectedTo:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 1) == 0)
  {
    v10 = result;
    type metadata accessor for Graph.NodeEntry(255, a7, a8, a4);
    type metadata accessor for Array();
    v11 = Array.subscript.modify();
    v12 = specialized OrderedDictionary.subscript.modify(v14, a3);
    if (*v13)
    {
      specialized Set._Variant.remove(_:)(*a6, v10);
    }

    v12(v14, 0);
    return v11(v15, 0);
  }

  return result;
}

void closure #1 in closure #2 in Graph.removeEdges(connectedTo:)(Swift::Int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = type metadata accessor for Graph.NodeEntry(255, a3, a4, a4);
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  Array._checkSubscript_mutating(_:)(v6);
  v8 = *a2 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6 + *(v7 + 36);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = v10 + 32;
  v12 = *(v10 + 16);
  if (!v9)
  {
    if (!v12)
    {
      return;
    }

    v13 = 0;
    while (*(v11 + 8 * v13) != v5)
    {
      if (v12 == ++v13)
      {
        return;
      }
    }

    v14 = 0;
    goto LABEL_10;
  }

  v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v5, v11, v12, v9 + 16, v9 + 32);
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v16 = v13;
    specialized OrderedSet._removeExistingMember(at:in:)(v13, v14, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:));
    specialized ContiguousArray.remove(at:)(v16);
  }
}

uint64_t Graph.remove(node:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for Graph.Node(255, v7, v8, a4);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  Graph.removeEdges(connectedTo:)(a1, a2, v14, v15);
  v16 = *a1;
  (*(*(v9 - 8) + 56))(v13, 1, 1, v9);
  v18 = type metadata accessor for Graph.NodeEntry(255, v7, v8, v17);
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  v19 = *v4;
  Array._checkSubscript_mutating(_:)(v16);
  return (*(v11 + 40))(v19 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(*(v18 - 8) + 72) * v16, v13, v10);
}

void Graph.remove(edge:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a2 + 24);
  v27 = *(a2 + 16);
  v9 = type metadata accessor for Graph.NodeEntry(255, v27, v8, a4);
  type metadata accessor for Array();
  v10 = Array.subscript.modify();
  v11 = specialized OrderedDictionary.subscript.modify(v28, v7);
  if (*v12)
  {
    specialized Set._Variant.remove(_:)(v6, v7);
  }

  v11(v28, 0);
  v10(v29, 0);
  v14 = (a1 + *(type metadata accessor for Graph.Edge(0, v27, v8, v13) + 36));
  v16 = *v14;
  v15 = v14[1];
  Array._makeMutableAndUnique()();
  v17 = *v4;
  Array._checkSubscript_mutating(_:)(v16);
  v18 = v17 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v16 + *(v9 + 36);
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  v21 = v20 + 32;
  v22 = *(v20 + 16);
  if (!v19)
  {
    if (!v22)
    {
      return;
    }

    v23 = 0;
    while (*(v21 + 8 * v23) != v15)
    {
      if (v22 == ++v23)
      {
        return;
      }
    }

    v24 = 0;
    goto LABEL_12;
  }

  v23 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v15, v21, v22, v19 + 16, v19 + 32);
  if ((v25 & 1) == 0)
  {
LABEL_12:
    v26 = v23;
    specialized OrderedSet._removeExistingMember(at:in:)(v23, v24, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized OrderedSet._regenerateHashTable(), specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:), specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:));
    specialized ContiguousArray.remove(at:)(v26);
  }
}

uint64_t _s11ShaderGraph0B0V3mapyACyqd__Gqd__xqd_0_YKXEqd_0_YKAA0B7ElementRd__s5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = a9;
  v38 = v23;
  v39 = v24;
  type metadata accessor for Graph.NodeEntry(255, v18, v21, v18);
  v25 = type metadata accessor for Array();
  v27 = type metadata accessor for Graph.NodeEntry(0, a5, a8, v26);

  WitnessTable = swift_getWitnessTable();
  v29 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(_s11ShaderGraph0B0V3mapyACyqd__Gqd__xqd_0_YKXEqd_0_YKAA0B7ElementRd__s5ErrorRd_0_r0_lFAC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyqd___GAJyx_Gqd_0_YKXEfU_TA, v31, v25, v27, a6, WitnessTable, a9, v16);

  if (v10)
  {
    (*(v14 + 32))(a10, v16, a6);
  }

  return v29;
}

uint64_t _s11ShaderGraph0B0V3mapyACyqd__Gqd__xqd_0_YKXEqd_0_YKAA0B7ElementRd__s5ErrorRd_0_r0_lFAC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyqd___GAJyx_Gqd_0_YKXEfU_@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v59 = a3;
  v60 = a2;
  v73 = a1;
  v67 = a7;
  v57 = *(a5 - 8);
  v58 = a5;
  MEMORY[0x28223BE20](a1);
  v68 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v15;
  v66 = v16;
  v17 = type metadata accessor for Graph.Node(255, v15, v16, v15);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v22 = *(v17 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v69 = a4;
  v70 = a6;
  v61 = type metadata accessor for Graph.Node(255, a4, a6, v26);
  v62 = type metadata accessor for Optional();
  v27 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v55 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v55 - v34;
  (*(v19 + 16))(v21, v73, v18, v33);
  if ((*(v22 + 48))(v21, 1, v17) == 1)
  {
    (*(v19 + 8))(v21, v18);
    v36 = 1;
  }

  else
  {
    (*(v22 + 32))(v25, v21, v17);
    v37 = *v25;
    v38 = v71;
    v60(&v25[*(v17 + 36)], v68);
    if (v38)
    {
      (*(v22 + 8))(v25, v17);
      return (*(v57 + 32))(a9, v68, v58);
    }

    (*(v22 + 8))(v25, v17);
    *v31 = v37;
    v40 = v69;
    v42 = type metadata accessor for Graph.Node(0, v69, v70, v41);
    (*(v56 + 32))(&v31[*(v42 + 36)], v63, v40);
    v36 = 0;
  }

  (*(*(v61 - 8) + 56))(v31, v36, 1);
  v43 = *(v27 + 32);
  v44 = v31;
  v45 = v62;
  v43(v35, v44, v62);
  v46 = v64;
  v43(v64, v35, v45);
  v48 = type metadata accessor for Graph.NodeEntry(0, v65, v66, v47);
  v49 = (v73 + *(v48 + 36));
  v50 = v49[4];
  v51 = v49[5];
  v52 = v49[1];
  v54 = v49[2];
  v53 = v49[3];
  v72[0] = *v49;
  v72[1] = v52;
  v72[2] = v54;
  v72[3] = v53;
  v72[4] = v50;
  v72[5] = v51;
  Graph.NodeEntry.init(node:adjacent:)(v46, v72, v69, v70, v67);
}

uint64_t Graph.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC380](a1, a2, v6, WitnessTable);
}

Swift::Int Graph.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Graph.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Graph<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Graph.hash(into:)(v5, *v2, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t Graph.input(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v27 = a3;
  v28 = a8;
  v24 = a2;
  v10 = type metadata accessor for Graph.NodeEntry(0, a4, a5, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v15 = type metadata accessor for Graph.Node(255, a4, a5, v14);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  Array.subscript.getter();
  (*(v17 + 16))(v19, v13, v16);
  (*(v11 + 8))(v13, v10);
  v20 = *(v15 - 8);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v21 = v26(0, a4, a5);
    return (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  }

  else
  {
    v25(v24, v15);
    return (*(v20 + 8))(v19, v15);
  }
}

uint64_t closure #2 in Graph.edges(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Graph.Input(0, a3, a4, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v15 = type metadata accessor for Graph.Output(0, a3, a4, v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v21 - v17;
  (*(v19 + 16))(&v21 - v17, a2, v16);
  (*(v11 + 16))(v13, a1, v10);
  return Graph.Edge.init(from:to:)(v18, v13, a3, a4, a5);
}

uint64_t Graph.DepthFirstEdgeIterator.inputs(opposite:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for Graph.NodeEntry(0, a5, a6, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-v11];
  Array.subscript.getter();
  v13 = *&v12[*(v9 + 36) + 32];
  v14 = *(v10 + 8);

  v14(v12, v9);
  v18 = a5;
  v19 = a6;
  v20 = a1;
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(partial apply for closure #1 in Graph.DepthFirstEdgeIterator.inputs(opposite:), v17, v13);

  return v15;
}

uint64_t Graph.DepthFirstEdgeIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for Graph.Edge(255, v6, v7, a3);
  v60 = type metadata accessor for Optional();
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = &v50 - v10;
  v62 = v8;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = &v50 - v14;
  v63 = v6;
  v16 = type metadata accessor for Graph.Input(255, v6, v7, v15);
  v61 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v61);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = *v4;
  if (*(*v4 + 16))
  {
    v58 = (&v50 - v22);
    v59 = v11;
    v51 = a2;
    v24 = (v21 + 48);
    v55 = (v12 + 48);
    v56 = (v21 + 32);
    v57 = (v21 + 8);
    v52 = v12;
    v53 = (v9 + 8);
    v54 = (v20 + 8);
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v25 = *(v23 + 2);
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
        v25 = *(v23 + 2);
        if (!v25)
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v43 = 1;
          a2 = v51;
          v12 = v52;
          return (*(v12 + 56))(a2, v43, 1, v62);
        }
      }

      v26 = v25 - 1;
      v27 = &v23[16 * v26];
      v28 = *(v27 + 4);
      v29 = *(v27 + 5);
      *(v23 + 2) = v26;
      *v4 = v23;
      v30 = v4[1];
      if (*(v30 + 16) && (Hasher.init(_seed:)(), MEMORY[0x266772770](v28), MEMORY[0x266772770](v29), v31 = Hasher._finalize()(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v30 + 48) + 16 * v33);
          v37 = *v35;
          v36 = v35[1];
          if (v37 == v28 && v36 == v29)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        specialized Set._Variant.insert(_:)(v64, v28, v29);
        v39 = v4[2];
        v40 = v63;
        Graph.input(for:)(v29, v39, v63, v7, v18);
        if ((*v24)(v18, 1, v16) == 1)
        {
          (*v54)(v18, v61);
        }

        else
        {
          v41 = v58;
          (*v56)(v58, v18, v16);
          v42 = v59;
          Graph.edge(to:)(v41, v39, v40, v7, v59);
          if ((*v55)(v42, 1, v62) != 1)
          {
            v44 = v42;
            v61 = *(v52 + 32);
            v45 = v50;
            v46 = v62;
            v61(v50, v44, v62);
            v47 = Graph.DepthFirstEdgeIterator.inputs(opposite:)(v45, v23, v4[1], v39, v63, v7);
            specialized Array.append<A>(contentsOf:)(v47, v48);
            (*v57)(v41, v16);
            a2 = v51;
            v61(v51, v45, v46);
            v12 = v52;
            v43 = 0;
            return (*(v12 + 56))(a2, v43, 1, v62);
          }

          (*v57)(v41, v16);
          (*v53)(v42, v60);
        }
      }

      v23 = *v4;
      if (!*(*v4 + 16))
      {
        goto LABEL_20;
      }
    }
  }

  v43 = 1;
  return (*(v12 + 56))(a2, v43, 1, v62);
}

uint64_t Graph.DepthFirstEdgeIterator.init(_:initial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized Graph.DepthFirstEdgeIterator.init(_:initial:)(a1, a2, a3, a4);

  return v4;
}

uint64_t closure #1 in Graph.DepthFirstEdgeIterator.init(_:initial:)@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v20 = a5;
  v8 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  Array.subscript.getter();
  v12 = *&v11[*(v8 + 36) + 32];
  v13 = *(v9 + 8);

  v13(v11, v8);
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(partial apply for closure #1 in closure #1 in Graph.DepthFirstEdgeIterator.init(_:initial:), v16, v12);

  *v20 = v14;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Graph<A>.DepthFirstEdgeIterator(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

uint64_t Graph.nodes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Graph.NodeEntry(255, a2, a3, a4);
  type metadata accessor for Array();
  type metadata accessor for Graph.Node(0, a2, a3, v6);

  swift_getWitnessTable();
  v7 = Sequence.compactMap<A>(_:)();

  return v7;
}

uint64_t closure #1 in Graph.sinkNodes()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35 = a5;
  v8 = type metadata accessor for Graph.Node(255, a2, a3, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v18 = *(v13 + 56);
    v19 = v35;
    return v18(v19, 1, 1, v8);
  }

  else
  {
    v20 = *(v13 + 32);
    v20(v17, v12, v8);
    result = type metadata accessor for Graph.NodeEntry(0, a2, a3, v21);
    v23 = 0;
    v24 = 0;
    v25 = a1 + *(result + 36);
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    v28 = *(v27 + 16);
    v29 = v27 + 32;
    v30 = v35;
    while (v28 != v23)
    {
      if (v23 >= *(v26 + 16))
      {
        __break(1u);
        return result;
      }

      v31 = *(v29 + 8 * v23++);
      v32 = *(v31 + 16);
      v33 = __OFADD__(v24, v32);
      v24 += v32;
      if (v33)
      {
        __break(1u);
        break;
      }
    }

    if (v24)
    {
      (*(v13 + 8))(v17, v8);
      v18 = *(v13 + 56);
      v19 = v30;
      return v18(v19, 1, 1, v8);
    }

    v20(v30, v17, v8);
    return (*(v13 + 56))(v30, 0, 1, v8);
  }
}

uint64_t Graph.node(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  if (a1 < 0 || MEMORY[0x266771880](a2, v10, v13) <= a1)
  {
    v19 = type metadata accessor for Graph.Node(0, a3, a4, v12);
    v20 = *(*(v19 - 8) + 56);

    return v20(a5, 1, 1, v19);
  }

  else
  {
    Array.subscript.getter();
    type metadata accessor for Graph.Node(255, a3, a4, v16);
    v17 = type metadata accessor for Optional();
    (*(*(v17 - 8) + 16))(a5, v15, v17);
    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t Graph.connectedInputIndices(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Graph.NodeEntry(0, a3, a4, a4);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  Array.subscript.getter();
  v8 = &v7[*(v4 + 36)];
  v9 = *(v8 + 4);
  v10 = *(v8 + 5);
  v11 = *(v5 + 8);

  v11(v7, v4);
  v12 = *(v10 + 16);

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
LABEL_2:
  if (v14 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = (v10 + 48 + 24 * v14);
  while (1)
  {
    if (v16 == v14)
    {

      return v15;
    }

    if (v14 >= *(v9 + 16))
    {
      break;
    }

    if (v14 >= *(v10 + 16))
    {
      goto LABEL_17;
    }

    ++v14;
    v18 = v17 + 24;
    v19 = *v17;
    v17 += 24;
    if ((v19 & 1) == 0)
    {
      v22 = *(v18 - 40);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v21 + 1;
      *(v15 + 16 * v21 + 32) = v22;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t thunk for @callee_guaranteed () -> (@owned IndexingIterator<[GraphIndex]>)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ShallowDepthFirstNodeIterator<A>(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v9 = *(v2 + 64);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  (*(*(a1 - 8) + 8))(v8, a1);
  return v4;
}

uint64_t DepthFirstNodeIterator.Context.stack.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ShallowDepthFirstNodeIterator.Context.discovered.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ShallowDepthFirstNodeIterator.Context.discovered.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ShallowDepthFirstNodeIterator.Context.visitedGraphNodes.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ShallowDepthFirstNodeIterator.Context.visitedGraphNodes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ShallowDepthFirstNodeIterator.Context.inputMap.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ShallowDepthFirstNodeIterator.Context.inputMap.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return result;
}

uint64_t ShallowDepthFirstNodeIterator.Context.init(stack:discovered:visitedGraphNodes:inputMap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

{
  return DepthFirstNodeIterator.Context.init(stack:discovered:visitedGraphNodes:inputMap:)(result, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t DepthFirstNodeIterator.extractGraph.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DepthFirstNodeIterator.extractInitialNodes.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t (*default argument 1 of DepthFirstNodeIterator.init(graph:extractGraph:extractInitialNodes:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:);
}

uint64_t (*default argument 2 of DepthFirstNodeIterator.init(graph:extractGraph:extractInitialNodes:)(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return partial apply for closure #1 in default argument 2 of DepthFirstNodeIterator.init(graph:extractGraph:extractInitialNodes:);
}

void DepthFirstNodeIterator.init(graph:extractGraph:extractInitialNodes:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  Node = type metadata accessor for DepthFirstNodeIterator.Context(255, a6, a7, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();

  v26 = static Array._adoptStorage(_:count:)();
  v13 = v12;
  v14 = a4(a1);

  v15 = MEMORY[0x277D84F90];
  v16 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
  v18 = v17;
  v19 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v15);
  v21 = v20;
  v22 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v15);
  *v13 = v14;
  v13[1] = v16;
  v13[2] = v18;
  v13[3] = v19;
  v13[4] = v21;
  v13[5] = v22;
  v13[6] = v23;
  v13[7] = v24;
  _finalizeUninitializedArray<A>(_:)(v26, Node);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = v25;
}

uint64_t DepthFirstNodeIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v4 = v3;
  v111 = a3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for Graph.Node(255, v6, v5, a2);
  v116 = type metadata accessor for Optional();
  v8 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v121 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = &v111 - v11;
  v12 = *(v7 - 8);
  MEMORY[0x28223BE20](v13);
  v122 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v114 = &v111 - v16;
  MEMORY[0x28223BE20](v17);
  v128 = &v111 - v18;
  v129 = v19;
  MEMORY[0x28223BE20](v20);
  v146 = v5;
  v147 = (&v111 - v21);
  Node = type metadata accessor for DepthFirstNodeIterator.Context(255, v6, v5, v22);
  v24 = type metadata accessor for Array();
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v119 = Node;
  v120 = 0;
  v138 = v6;
  v139 = (v12 + 48);
  v136 = v12 + 16;
  v137 = v12 + 32;
  v131 = v12;
  v25 = (v12 + 8);
  v26 = v24;
  v126 = v25;
  v127 = v7;
  v115 = (v8 + 8);
  v112 = v24;
  v113 = Node - 8;
  v148 = v4;
LABEL_2:
  while (2)
  {
    v27 = v26;
    WitnessTable = swift_getWitnessTable();
    v29 = swift_getWitnessTable();
    MEMORY[0x266771B30](&v152, v27, WitnessTable, v29);
    v30 = v152;
    if (!v152)
    {
      (*(v131 + 56))(v111, 1, 1, v7);
      _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v143, v142);
      return _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v145, v144);
    }

    v31 = *(&v155 + 1);
    v156 = v152;
    v124 = *(&v152 + 1);
    v125 = v153;
    v157 = v153;
    v117 = v154;
    v118 = *(&v153 + 1);
    v158 = v154;
    v123 = (v153 + 32);
    v141 = v155;
    v159 = v155;
    v32 = type metadata accessor for Array();
    v33 = v130;
    v132 = v32;
    while (1)
    {
      *&v151[0] = v30;

      v140 = swift_getWitnessTable();
      BidirectionalCollection.last.getter();
      v39 = *v139;
      if ((*v139)(v33, 1, v7) == 1)
      {
        v152 = v156;
        v153 = v157;
        v154 = v158;
        v155 = v159;
        (*(*(v119 - 8) + 8))(&v152);
        (*v115)(v33, v116);

        v26 = v112;
        goto LABEL_2;
      }

      v40 = v131;
      v41 = *(v131 + 32);
      v42 = v147;
      v41(v147, v33, v7);
      v134 = v30;

      v43 = *v42;
      v44 = v128;
      v133 = *(v40 + 16);
      v133(v128, v42, v7);
      v45 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v46 = swift_allocObject();
      v47 = v146;
      v46[2] = v138;
      v46[3] = v47;
      v46[4] = v148;
      v135 = v41;
      v41((v46 + v45), v44, v7);
      _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v143, v142);
      v48 = swift_allocObject();
      *(v48 + 16) = partial apply for implicit closure #1 in DepthFirstNodeIterator.next();
      *(v48 + 24) = v46;
      v142 = v46;
      v149 = v48;
      _sxRi_zRi0_zlys16IndexingIteratorVySay11ShaderGraph6SGNodeCGGIsegr_SgWOe_0(v145, v144);
      v49 = *(v141 + 16);
      if (*(&v158 + 1))
      {
        v50 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v43, v141 + 32, v49, *(&v158 + 1) + 16, *(&v158 + 1) + 32);
        if ((v51 & 1) == 0)
        {
          v52 = v50;
          goto LABEL_23;
        }

LABEL_18:
        v53 = specialized OrderedSet._appendNew(_:in:)(v43, v49);
        v141 = v159;
        v54 = *(v159 + 16);
        v55 = (*(v149 + 16))(v53);
        v57 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(&v159 + 1) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1);
          v31 = *(&v159 + 1);
        }

        v7 = v31[2];
        v59 = v31[3];
        if (v7 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v7 + 1, 1);
          v31 = *(&v159 + 1);
        }

        v52 = v54 - 1;
        v31[2] = v7 + 1;
        v60 = &v31[2 * v7];
        v60[4] = v55;
        v60[5] = v57;
        goto LABEL_23;
      }

      if (!v49)
      {
        goto LABEL_18;
      }

      v52 = 0;
      while (*(v141 + 8 * v52 + 32) != v43)
      {
        if (v49 == ++v52)
        {
          v49 = 0;
          goto LABEL_18;
        }
      }

LABEL_23:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v31);
      }

      v61 = &v31[2 * v52];
      v63 = v61[4];
      v62 = v61[5];
      *(&v159 + 1) = v31;
      v64 = *(v63 + 16);
      if (v62 == v64)
      {
        v65 = 0;
        v145 = 0;
        v66 = v62;
      }

      else
      {
        if (v62 >= v64)
        {
          __break(1u);
          goto LABEL_56;
        }

        v67 = v63 + 16 * v62;
        v65 = *(v67 + 32);
        v145 = *(v67 + 40);
        v66 = (v62 + 1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v31);
      }

      v68 = &v31[2 * v52];
      v68[4] = v63;
      v68[5] = v66;
      *(&v159 + 1) = v31;
      v69 = v62 == v64;
      v7 = v127;
      v70 = v146;
      if (v69)
      {
        goto LABEL_5;
      }

      v71 = *v148;

      v72 = v121;
      v73 = v138;
      Graph.node(at:)(v65, v71, v138, v70, v121);
      v74 = v72;

      if (v39(v72, 1, v7) == 1)
      {
        break;
      }

      v62 = v114;
      v75 = v135(v114, v74, v7);
      *&v152 = v134;
      MEMORY[0x28223BE20](v75);
      *(&v111 - 4) = v73;
      *(&v111 - 3) = v76;
      v77 = v145;
      *(&v111 - 2) = v65;
      *(&v111 - 1) = v77;

      swift_getWitnessTable();
      v78 = v120;
      v79 = Sequence.contains(where:)();

      if (v79)
      {
        if (one-time initialization token for logger == -1)
        {
LABEL_50:
          v104 = type metadata accessor for Logger();
          __swift_project_value_buffer(v104, logger);
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            *v107 = 0;
            _os_log_impl(&dword_265D7D000, v105, v106, "Cycle in graph", v107, 2u);
            MEMORY[0x266773120](v107, -1, -1);
          }

          v108 = v131;
          v109 = *(v131 + 8);
          v109(v62, v7);
          v109(v147, v7);
          v152 = v156;
          v153 = v157;
          v154 = v158;
          v155 = v159;
          (*(*(v119 - 8) + 8))(&v152);
          (*(v108 + 56))(v111, 1, 1, v7);
          goto LABEL_53;
        }

LABEL_56:
        swift_once();
        goto LABEL_50;
      }

      v120 = v78;
      v133(v122, v62, v7);
      Array.append(_:)();
      v37 = v62;
LABEL_8:
      v38 = *v126;
      (*v126)(v37, v7);
      v38(v147, v7);
      v145 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
      v30 = v156;
      v143 = partial apply for implicit closure #1 in DepthFirstNodeIterator.next();
      v144 = v149;
      v33 = v130;
    }

    (*v115)(v72, v116);
LABEL_5:
    v34 = *(v125 + 16);
    if (v124)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v43, v123, v34, v124 + 16, v124 + 32);
      if (v35)
      {
        goto LABEL_38;
      }

      goto LABEL_7;
    }

    v80 = v123;
    if (v34)
    {
      while (1)
      {
        v81 = *v80++;
        if (v81 == v43)
        {
          break;
        }

        if (!--v34)
        {
          goto LABEL_38;
        }
      }

LABEL_7:
      swift_getWitnessTable();
      v36 = v122;
      RangeReplaceableCollection<>.removeLast()();
      v37 = v36;
      goto LABEL_8;
    }

LABEL_38:
    v82 = v148[1];

    v83 = v82(v147);

    if (v83)
    {
      v84 = (v117 + 32);
      v85 = *(v117 + 16);
      if (v118)
      {
        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v43, v84, v85, v118 + 16, v118 + 32);
        if (v86)
        {
LABEL_41:
          specialized OrderedSet._append(_:)(v43);
          v151[0] = v156;
          v151[1] = v157;
          v151[2] = v158;
          v151[3] = v159;
          v152 = v156;
          v153 = v157;
          v154 = v158;
          v155 = v159;
          v87 = *(v119 - 8);
          (*(v87 + 16))(v150, v151, v119);
          v88 = v112;
          Array.append(_:)();
          v89 = v148[3];

          v145 = v89(v83);

          v90 = MEMORY[0x277D84F90];
          v91 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
          v93 = v92;
          v94 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v90);
          v96 = v95;
          v97 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v90);
          v150[0] = v145;
          v150[1] = v91;
          v26 = v88;
          v150[2] = v93;
          v150[3] = v94;
          v150[4] = v96;
          v150[5] = v97;
          v150[6] = v98;
          v150[7] = v99;
          Array.append(_:)();
          (*v126)(v147, v7);
          v152 = v156;
          v153 = v157;
          v154 = v158;
          v155 = v159;
          (*(v87 + 8))(&v152, v119);
          v145 = partial apply for thunk for @callee_guaranteed () -> (@owned IndexingIterator<[SGNode]>);
          v143 = partial apply for implicit closure #1 in DepthFirstNodeIterator.next();
          v144 = v149;
          continue;
        }
      }

      else
      {
        if (!v85)
        {
          goto LABEL_41;
        }

        while (1)
        {
          v100 = *v84++;
          if (v100 == v43)
          {
            break;
          }

          if (!--v85)
          {
            goto LABEL_41;
          }
        }
      }
    }

    break;
  }

  specialized OrderedSet._append(_:)(v43);
  swift_getWitnessTable();
  v101 = v122;
  RangeReplaceableCollection<>.removeLast()();
  v102 = v131;
  (*(v131 + 8))(v101, v7);
  v152 = v156;
  v153 = v157;
  v154 = v158;
  v155 = v159;
  (*(*(v119 - 8) + 8))(&v152);
  v103 = v111;
  v135(v111, v147, v7);
  (*(v102 + 56))(v103, 0, 1, v7);
LABEL_53:
}

uint64_t implicit closure #1 in DepthFirstNodeIterator.next()(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[5];
  v19 = *a1;
  v7 = v19;
  v20 = v8;
  v9 = type metadata accessor for Graph(0, a3, a4, a4);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v18, &v19, v9);

  type metadata accessor for DepthFirstNodeIterator.Context(255, a3, a4, v11);
  v12 = type metadata accessor for Array();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v18, &v20, v12);
  NodeIterator = type metadata accessor for DepthFirstNodeIterator(0, a3, a4, v14);
  v16 = Graph.connectedInputIndices(for:)(a2, v7, *(NodeIterator + 16), *(NodeIterator + 24));
  (*(v10 + 8))(&v19, v9);

  (*(v13 + 8))(&v20, v12);
  return v16;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DepthFirstNodeIterator<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

Swift::Void __swiftcall Graph.debugPrint()()
{
  v2 = v1;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D837D0];
  *(v4 + 16) = xmmword_265F1F670;
  *(v4 + 56) = v5;
  strcpy((v4 + 32), "Graph storage:");
  *(v4 + 47) = -18;
  print(_:separator:terminator:)();

  type metadata accessor for Graph.NodeEntry(255, v3, v2, v6);
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667716A0](&v9, v7, WitnessTable);
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t closure #1 in Graph.debugPrint()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Graph.Node(255, a3, a4, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v71 - v16);
  (*(v10 + 16))(v12, a2, v9, v15);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_265F1F670;
    v80 = a1;
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v19;
    MEMORY[0x266771550](0x6574656C65642D20, 0xEA00000000002D64);
    v20 = v81;
    v21 = v82;
    v81 = 9;
    v82 = 0xE100000000000000;
    MEMORY[0x266771550](v20, v21);

    v22 = v81;
    v23 = v82;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = v22;
    *(v18 + 40) = v23;
    print(_:separator:terminator:)();
  }

  v72 = v13;
  (*(v13 + 32))(v17, v12, v8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v26 = swift_allocObject();
  v79 = xmmword_265F1F670;
  *(v26 + 16) = xmmword_265F1F670;
  v81 = 0;
  v82 = 0xE000000000000000;
  v80 = *v17;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v27);

  MEMORY[0x266771550](32, 0xE100000000000000);
  v73 = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v28 = v81;
  v29 = v82;
  v81 = 9;
  v82 = 0xE100000000000000;
  MEMORY[0x266771550](v28, v29);

  v30 = v81;
  v31 = v82;
  v32 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 32) = v30;
  *(v26 + 40) = v31;
  print(_:separator:terminator:)();

  v78 = v25;
  v33 = swift_allocObject();
  *(v33 + 16) = v79;
  *(v33 + 56) = v32;
  *(v33 + 32) = 0x696D6F636E690909;
  *(v33 + 40) = 0xEB000000003A676ELL;
  print(_:separator:terminator:)();

  v35 = a2 + *(type metadata accessor for Graph.NodeEntry(0, a3, a4, v34) + 36);
  v36 = *(v35 + 40);
  v77 = *(v35 + 32);
  v74 = v35;
  v37 = *(v36 + 16);

  v71 = v17;
  v76 = v37;
  if (v37)
  {
    v38 = 0;
    v75 = v77 + 32;
    v39 = (v36 + 48);
    while (v38 < *(v77 + 16))
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_23;
      }

      v51 = *(v75 + 8 * v38);
      if (*v39)
      {
        v43 = 0xE100000000000000;
        v44 = 45;
      }

      else
      {
        v40 = *(v39 - 1);
        v80 = *(v39 - 2);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v41;
        MEMORY[0x266771550](58, 0xE100000000000000);
        v80 = v40;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v42);

        v44 = v81;
        v43 = v82;
      }

      ++v38;
      v45 = swift_allocObject();
      *(v45 + 16) = v79;
      v81 = 9;
      v82 = 0xE100000000000000;
      MEMORY[0x266771550](v44, v43);

      MEMORY[0x266771550](540945696, 0xE400000000000000);
      v80 = v51;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v46);

      v47 = v81;
      v48 = v82;
      v81 = 2313;
      v82 = 0xE200000000000000;
      MEMORY[0x266771550](v47, v48);

      v49 = v81;
      v50 = v82;
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 32) = v49;
      *(v45 + 40) = v50;
      print(_:separator:terminator:)();

      v39 += 24;
      if (v76 == v38)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_11:

    if (!*(v36 + 16))
    {
      v52 = swift_allocObject();
      *(v52 + 16) = v79;
      *(v52 + 56) = MEMORY[0x277D837D0];
      *(v52 + 32) = 0x8588E2090909;
      *(v52 + 40) = 0xA600000000000000;
      print(_:separator:terminator:)();
    }

    v53 = swift_allocObject();
    *(v53 + 16) = v79;
    *(v53 + 56) = MEMORY[0x277D837D0];
    *(v53 + 32) = 0x696F6774756F0909;
    *(v53 + 40) = 0xEB000000003A676ELL;
    print(_:separator:terminator:)();

    v54 = *(v74 + 16);
    v77 = *(v74 + 8);
    v55 = *(v54 + 16);

    v76 = v55;
    if (!v55)
    {
LABEL_18:

      v69 = v72;
      v68 = v73;
      if (!*(v54 + 16))
      {
        v70 = swift_allocObject();
        *(v70 + 16) = v79;
        *(v70 + 56) = MEMORY[0x277D837D0];
        *(v70 + 32) = 0x8588E2090909;
        *(v70 + 40) = 0xA600000000000000;
        print(_:separator:terminator:)();
        v69 = v72;

        v68 = v73;
      }

      return (*(v69 + 8))(v71, v68);
    }

    v56 = 0;
    v74 = v54 + 32;
    v75 = v77 + 32;
    while (v56 < *(v77 + 16))
    {
      if (v56 >= *(v54 + 16))
      {
        goto LABEL_25;
      }

      v57 = *(v75 + 8 * v56);
      v58 = *(v74 + 8 * v56++);
      v59 = swift_allocObject();
      *(v59 + 16) = v79;
      v80 = v57;
      v81 = 9;
      v82 = 0xE100000000000000;

      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v60);

      MEMORY[0x266771550](0x5B203E2D20, 0xE500000000000000);
      v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph0E5IndexVG_SSs5NeverOTg504_s11d89Graph0B0V10debugPrintyyFySi_AC9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyx_GtXEfU_yn9_ShyAA0B5F18VGtXEfU0_SSAJXEfU_Tf1cn_n(v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v61 = BidirectionalCollection<>.joined(separator:)();
      v63 = v62;

      MEMORY[0x266771550](v61, v63);

      MEMORY[0x266771550](93, 0xE100000000000000);
      v64 = v81;
      v65 = v82;
      v81 = 2313;
      v82 = 0xE200000000000000;
      MEMORY[0x266771550](v64, v65);

      v66 = v81;
      v67 = v82;
      *(v59 + 56) = MEMORY[0x277D837D0];
      *(v59 + 32) = v66;
      *(v59 + 40) = v67;
      print(_:separator:terminator:)();

      if (v76 == v56)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    if (v12 == a1 && v11 == a2)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  result = v17;
  *v2 = v18;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        MEMORY[0x266772770](v11);
        MEMORY[0x266772770](v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized Graph.Adjacent.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>, uint64_t a5@<X0>)
{
  type metadata accessor for Graph.Node(0, a1, a2, a3);
  result = (*(a2 + 56))(a1, a2);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  MEMORY[0x28223BE20](result);
  v45 = a1;
  v46 = a2;
  v47 = a5;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for closure #1 in closure #1 in Graph.DepthFirstEdgeIterator.init(_:initial:), v44, 0, v10);
  result = (*(a2 + 48))(a1, a2);
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v45 = a1;
  v46 = a2;
  v47 = a5;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for closure #1 in closure #1 in Graph.DepthFirstEdgeIterator.init(_:initial:), v44, 0, v12);
  v14 = *(v11 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v50 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v16 = v50;
    v17 = *(v50 + 16);
    v18 = 16 * v17;
    v19 = 40;
    v20 = MEMORY[0x277D84FA0];
    do
    {
      v21 = *(v11 + v19);
      v50 = v16;
      v22 = *(v16 + 24);
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v17 + 1, 1);
        v16 = v50;
      }

      *(v16 + 16) = v23;
      v24 = v16 + v18;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v18 += 16;
      v19 += 16;
      v17 = v23;
      --v14;
    }

    while (v14);

    v15 = MEMORY[0x277D84F90];
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v25 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_ShyAA0B5IndexVGSaySi_AJtGTt0g5Tf4g_n(v16);
  v27 = v26;
  v29 = v28;

  v30 = *(v13 + 16);
  if (v30)
  {
    v48 = v27;
    v49 = v25;
    v50 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v50;
    v32 = *(v50 + 16);
    v33 = 32 * v32;
    v34 = 40;
    do
    {
      v35 = *(v13 + v34);
      v50 = v31;
      v36 = *(v31 + 24);
      v37 = v32 + 1;
      if (v32 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v32 + 1, 1);
        v31 = v50;
      }

      *(v31 + 16) = v37;
      v38 = v31 + v33;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 32) = v35;
      v33 += 32;
      v34 += 16;
      v32 = v37;
      *(v38 + 56) = 1;
      --v30;
    }

    while (v30);

    v27 = v48;
    v25 = v49;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v39 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_AA0B5IndexVSgSaySi_AJtGTt0g5Tf4g_n(v31);
  v41 = v40;
  v43 = v42;

  *a4 = v25;
  a4[1] = v27;
  a4[2] = v29;
  a4[3] = v39;
  a4[4] = v41;
  a4[5] = v43;
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

uint64_t partial apply for closure #1 in Graph.Node.outputs.getter(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for Graph.Node(0, *(v4 + 16), *(v4 + 24), a4);
  return a2(v6, v7);
}

uint64_t specialized Graph.DepthFirstEdgeIterator.init(_:initial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Graph.Node(255, a3, a4, a4);
  type metadata accessor for Array();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph0B5IndexVGMd, &_sSay11ShaderGraph0B5IndexVGMR);
  v4 = MEMORY[0x277D83970];
  swift_getWitnessTable();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [GraphIndex] and conformance [A], &_sSay11ShaderGraph0B5IndexVGMd, &_sSay11ShaderGraph0B5IndexVGMR, v4);
  return Sequence.flatMap<A>(_:)();
}

void specialized OrderedSet._minimumCapacity.getter(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = *(a1 + 16) & 0x3FLL;
    if (v2 >= 5 && v2 != (*(a1 + 24) & 0x3FLL))
    {
      v4 = vcvtd_n_f64_s64(1 << v2, 2uLL);
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -9.22337204e18)
      {
        if (v4 < 9.22337204e18)
        {
          return;
        }

LABEL_14:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_14;
    }
  }
}

uint64_t partial apply for closure #1 in default argument 2 of DepthFirstNodeIterator.init(graph:extractGraph:extractInitialNodes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Graph.Node(0, *(v4 + 16), *(v4 + 24), a4);

  return static Array._allocateUninitialized(_:)();
}

uint64_t sub_265EB9444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Graph.Node(0, v5, *(v4 + 24), a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 40) & ~v8;
  v10 = *(v7 + 64);
  (*(*(v5 - 8) + 8))(v4 + *(v6 + 36) + v9, v5);

  return MEMORY[0x2821FE8E8](v4, v9 + v10, v8 | 7);
}

uint64_t partial apply for implicit closure #1 in DepthFirstNodeIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(type metadata accessor for Graph.Node(0, v5, v6, a4) - 8);
  v8 = v4[4];
  v9 = (v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80)));

  return implicit closure #1 in DepthFirstNodeIterator.next()(v8, v9, v5, v6);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed Graph<A>.NodeEntry) -> ()(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = *a1;
  type metadata accessor for Graph.NodeEntry(255, v4[2], v4[3], a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t lazy protocol witness table accessor for type GraphIndex and conformance GraphIndex()
{
  result = lazy protocol witness table cache variable for type GraphIndex and conformance GraphIndex;
  if (!lazy protocol witness table cache variable for type GraphIndex and conformance GraphIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphIndex and conformance GraphIndex);
  }

  return result;
}

uint64_t type metadata instantiation function for Graph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Graph.Node(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.Node(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for Graph.Node(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
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
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t type metadata completion function for Graph.Edge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for Graph.Output(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for Graph.Input(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.Edge(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v12 | 7;
  v15 = ((v11 + 16) & ~v11) + *(v6 + 64) + (v12 | 7);
  v16 = v12 + 16;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v17 = (v16 & ~v12) + *(*(v8 - 8) + 64) + (v15 & ~v14);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v20 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v26 = *(v6 + 48);

          return v26((a1 + v11 + 16) & ~v11, v7, AssociatedTypeWitness);
        }

        else
        {
          v24 = *(v9 + 48);

          return v24((v16 + ((a1 + v15) & ~v14)) & ~v12);
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_27;
  }

LABEL_14:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = (v16 & ~v12) + *(*(v8 - 8) + 64) + (v15 & ~v14);
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for Graph.Edge(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v8 + 80);
  v15 = ((v14 + 16) & ~v14) + *(v8 + 64);
  v16 = *(v10 + 80);
  v17 = v15 + (v16 | 7);
  v18 = ((v16 + 16) & ~v16) + *(v10 + 64);
  v19 = (v17 & ~(v16 | 7)) + v18;
  if (a3 <= v13)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v13 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v13 < a2)
  {
    v21 = ~v13 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_11;
      }

      goto LABEL_67;
    }

    v22 = (v21 >> (8 * v19)) + 1;
    if (v19)
    {
      v25 = v21 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v25;
          if (v20 > 1)
          {
            goto LABEL_11;
          }
        }

        else
        {
          *a1 = v21;
          if (v20 > 1)
          {
LABEL_11:
            if (v20 == 2)
            {
              *&a1[v19] = v22;
            }

            else
            {
              *&a1[v19] = v22;
            }

            return;
          }
        }

LABEL_67:
        if (v20)
        {
          a1[v19] = v22;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v20 > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v19] = 0;
  }

  else if (v20)
  {
    a1[v19] = 0;
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
  if (v9 >= v12)
  {
    if (v9 >= a2)
    {
      v31 = *(v8 + 56);

      v31(&a1[v14 + 16] & ~v14, a2, v9, AssociatedTypeWitness);
    }

    else
    {
      if (v15 <= 3)
      {
        v29 = ~(-1 << (8 * v15));
      }

      else
      {
        v29 = -1;
      }

      if (v15)
      {
        v27 = v29 & (~v9 + a2);
        if (v15 <= 3)
        {
          v28 = v15;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v15);
        if (v28 <= 2)
        {
          if (v28 != 1)
          {
            goto LABEL_43;
          }

          goto LABEL_54;
        }

LABEL_72:
        if (v28 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else
        {
          *a1 = v27;
        }
      }
    }
  }

  else
  {
    a1 = (&a1[v17] & ~(v16 | 7));
    if (v12 >= a2)
    {
      v30 = *(v11 + 56);

      v30(&a1[v16 + 16] & ~v16, a2);
    }

    else
    {
      if (v18 <= 3)
      {
        v26 = ~(-1 << (8 * v18));
      }

      else
      {
        v26 = -1;
      }

      if (v18)
      {
        v27 = v26 & (~v12 + a2);
        if (v18 <= 3)
        {
          v28 = v18;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v18);
        if (v28 <= 2)
        {
          if (v28 != 1)
          {
LABEL_43:
            *a1 = v27;
            return;
          }

LABEL_54:
          *a1 = v27;
          return;
        }

        goto LABEL_72;
      }
    }
  }
}

uint64_t type metadata completion function for Graph.Input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.Input(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
LABEL_23:
    v15 = *(v7 + 48);

    return v15((a1 + v9 + 16) & ~v9);
  }

  v10 = ((v9 + 16) & ~v9) + *(*(AssociatedTypeWitness - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
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

  return v8 + (v10 | v14) + 1;
}

void storeEnumTagSinglePayload for Graph.Input(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = ((v10 + 16) & ~v10) + *(v8 + 64);
  if (a3 <= v9)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v9 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
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

  if (v9 < a2)
  {
    v13 = ~v9 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
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
  v18 = *(v8 + 56);

  v18(&a1[v10 + 16] & ~v10, a2);
}

uint64_t type metadata instantiation function for Graph.Adjacent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Graph.DepthFirstEdgeIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ShallowDepthFirstNodeIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for DepthFirstNodeIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DepthFirstNodeIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DepthFirstNodeIterator(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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