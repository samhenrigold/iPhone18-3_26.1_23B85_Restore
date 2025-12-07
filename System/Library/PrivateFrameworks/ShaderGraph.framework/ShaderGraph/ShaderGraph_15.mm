void createGraphDotText<A>(representing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  getContiguousArrayStorageType<A>(for:)(a2, a2);
  v7 = *(a2 - 8);
  swift_allocObject();
  v8 = static Array._adoptStorage(_:count:)();
  (*(v7 + 16))(v9, a1, a2);
  v27[0] = v8;
  v10 = type metadata accessor for Array();
  destructiveProjectEnumData for NodePersonality.ShaderType();
  (*(a3 + 152))(a2, a3);
  v11 = static Array.+ infix(_:_:)();

  v29 = v11;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667716A0](v27, v10, WitnessTable);

  v29 = v27[0];
  v25 = a2;
  v26 = a3;
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = partial apply for closure #1 in createGraphDotText<A>(representing:);
  v23[5] = &v24;
  v13 = type metadata accessor for EnumeratedSequence();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v27[2] = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String, @error @owned Error), v23, v13, MEMORY[0x277D837D0], v14, v15, MEMORY[0x277D84950], &v28);
  if (v3)
  {

    v17 = v28;
    type metadata accessor for SGError();
    v18 = v17;
    SGError.__allocating_init(_:)(v17);
    swift_willThrow();
  }

  else
  {
    v19 = v16;

    v27[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(136);
    MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
    MEMORY[0x266771550](v20, v22);

    MEMORY[0x266771550](8194570, 0xE300000000000000);
  }
}

uint64_t createDotText(representing:inputNodeIDs:outputNodeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 + 16);
  v65 = v5;
  if (v5)
  {
    *&v68[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v4 = a1;
    v8 = *&v68[0];
    v9 = *(*a1 + 272);
    v10 = (a2 + 32);
    v11 = v5;
    while (1)
    {
      v12 = *v10++;
      v9(&v69, v12);
      if (v3)
      {
        break;
      }

      *&v68[0] = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v8 = *&v68[0];
      }

      *(v8 + 16) = v14 + 1;
      outlined init with take of MetalFunctionNode(&v69, v8 + 40 * v14 + 32);
      --v11;
      v4 = a1;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    return v4;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_10:
  v60 = *(*v4 + 120);
  result = v60();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_29:

    v36 = *(a3 + 16);
    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      *&v68[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
      v38 = *&v68[0];
      v64 = *(*a1 + 272);
      v39 = (a3 + 32);
      while (1)
      {
        v40 = *v39++;
        v4 = a1;
        v64(&v69, v40);
        if (v3)
        {
          break;
        }

        *&v68[0] = v38;
        v42 = *(v38 + 16);
        v41 = *(v38 + 24);
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v38 = *&v68[0];
        }

        *(v38 + 16) = v42 + 1;
        outlined init with take of MetalFunctionNode(&v69, v38 + 40 * v42 + 32);
        if (!--v36)
        {
          v37 = MEMORY[0x277D84F90];
          goto LABEL_38;
        }
      }
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
LABEL_38:
      v43 = createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v8, a2);

      v44 = createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v19, a2);

      v45 = createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v38, a2);

      *&v68[0] = v37;
      v4 = (v60)(v46);

      v47 = specialized Sequence.flatMap<A>(_:)(v4, a1, v68);

      if (!v3)
      {

        *&v69 = 0;
        *(&v69 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(609);
        MEMORY[0x266771550](0xD000000000000170, 0x8000000265F32400);
        v72 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v48 = BidirectionalCollection<>.joined(separator:)();
        v67 = v47;
        v50 = v49;

        MEMORY[0x266771550](v48, v50);

        MEMORY[0x266771550](0xD000000000000067, 0x8000000265F32580);
        v72 = v44;
        v51 = BidirectionalCollection<>.joined(separator:)();
        v53 = v52;

        MEMORY[0x266771550](v51, v53);

        MEMORY[0x266771550](0xD000000000000067, 0x8000000265F325F0);
        v72 = v45;
        v54 = BidirectionalCollection<>.joined(separator:)();
        v56 = v55;

        MEMORY[0x266771550](v54, v56);

        MEMORY[0x266771550](0xD000000000000014, 0x8000000265F32660);
        v72 = v67;
        v57 = BidirectionalCollection<>.joined(separator:)();
        v59 = v58;

        MEMORY[0x266771550](v57, v59);

        MEMORY[0x266771550](0x7D202020200A0ALL, 0xE700000000000000);
        v4 = v69;

        return v4;
      }
    }

    return v4;
  }

  v18 = 0;
  v63 = result + 32;
  v19 = MEMORY[0x277D84F90];
  while (v18 < *(v16 + 16))
  {
    v20 = v18 + 1;
    outlined init with copy of MetalFunctionNode(v63 + 40 * v18, &v69);
    v21 = v70;
    v22 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v23 = (*(v22 + 24))(v21, v22);
    v24 = v65;
    v25 = (a2 + 32);
    while (v24)
    {
      v26 = *v25++;
      --v24;
      if (v26 == v23)
      {
LABEL_12:
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v69);
        goto LABEL_13;
      }
    }

    v27 = v70;
    v28 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v29 = (*(v28 + 24))(v27, v28);
    v30 = (a3 + 32);
    v31 = *(a3 + 16);
    while (v31)
    {
      v32 = *v30++;
      --v31;
      if (v32 == v29)
      {
        goto LABEL_12;
      }
    }

    outlined init with take of MetalFunctionNode(&v69, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
      v19 = v72;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    if (v35 >= v34 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v19 = v72;
    }

    *(v19 + 16) = v35 + 1;
    result = outlined init with take of MetalFunctionNode(v68, v19 + 40 * v35 + 32);
LABEL_13:
    v18 = v20;
    if (v20 == v17)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t graphDotText(_:callNode:)(uint64_t *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + OBJC_IVAR___SGGraph_argumentsNode);
  v5 = *(a1 + OBJC_IVAR___SGGraph_resultsNode);
  v6 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v82 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v71 = v3;
    v72 = a2;
    if (i)
    {
      v9 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x266772030](v9, v7);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_46;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        a2 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v3 = type metadata accessor for SGNode();
        if (static NSObject.== infix(_:_:)() & 1) != 0 || (static NSObject.== infix(_:_:)())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v10 = v7 & 0xFFFFFFFFFFFFFF8;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v82;
          specialized ContiguousArray._endMutation()();
        }

        ++v9;
        if (a2 == i)
        {
          v68 = v82;
          a2 = v72;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v68 = MEMORY[0x277D84F90];
LABEL_17:
    v69 = v5;

    if (a2)
    {
      v13 = (a2 + OBJC_IVAR___SGNode_name);
      swift_beginAccess();
      v14 = v13[1];
      v77 = *v13;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = (Strong + OBJC_IVAR___SGGraph_name);
        v17 = Strong;
        swift_beginAccess();
        v18 = *v16;
        v19 = v16[1];
      }

      else
      {

        v18 = 0;
        v19 = 0xE000000000000000;
      }
    }

    else
    {
      v18 = 0;
      v77 = 0;
      v19 = 0xE000000000000000;
      v14 = 0xE000000000000000;
    }

    v20 = MEMORY[0x277D84F90];
    v21 = ObjectIdentifier.hashValue.getter();
    v82 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v22 = v82;
    v79 = v21;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    v23 = String.init<A>(_:radix:uppercase:)();
    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    if (v26 >= v25 >> 1)
    {
      v76 = v23;
      v60 = v18;
      v61 = v24;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v24 = v61;
      v18 = v60;
      v23 = v76;
      v22 = v82;
    }

    *(v22 + 16) = v26 + 1;
    v27 = v22 + 16 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = v24;
    v82 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    v82 = v77;
    v83 = v14;

    MEMORY[0x266771550](v18, v19);
    v32 = *(v71 + OBJC_IVAR___SGGraph_name);
    v31 = *(v71 + OBJC_IVAR___SGGraph_name + 8);

    v64 = v32;
    MEMORY[0x266771550](v32, v31);

    MEMORY[0x266771550](95, 0xE100000000000000);

    v66 = v28;
    MEMORY[0x266771550](v28, v30);

    v74 = v82;
    v75 = v83;
    if (v72)
    {
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v82 = 0x206D6F7266;
      v83 = 0xE500000000000000;
      MEMORY[0x266771550](v77, v14);

      MEMORY[0x266771550](0x70617267206E6920, 0xEA00000000002068);
      MEMORY[0x266771550](v18, v19);

      v34 = v82;
      v33 = v83;
    }

    else
    {

      v34 = 0;
      v33 = 0xE000000000000000;
    }

    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v82 = 0x286870617247;
    v83 = 0xE600000000000000;
    MEMORY[0x266771550](v64, v31);
    MEMORY[0x266771550](2128928, 0xE300000000000000);
    MEMORY[0x266771550](v66, v30);

    MEMORY[0x266771550](2629673, 0xE300000000000000);
    MEMORY[0x266771550](v34, v33);

    MEMORY[0x266771550](41, 0xE100000000000000);
    v62 = v82;
    v63 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F20CD0;
    *(inited + 32) = v4;
    v5 = inited + 32;
    v36 = v4;
    v65 = createNodeStatements #1 (_:) in graphDotText(_:callNode:)(inited, v74, v75, v36, v69);
    swift_setDeallocating();
    swift_arrayDestroy();
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_265F20CD0;
    *(v37 + 32) = v69;
    v38 = v69;
    v70 = createNodeStatements #1 (_:) in graphDotText(_:callNode:)(v37, v74, v75, v36, v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    v67 = createNodeStatements #1 (_:) in graphDotText(_:callNode:)(v68, v74, v75, v36, v38);

    v39 = OBJC_IVAR___SGGraph_edges;
    v3 = v71;
    swift_beginAccess();
    v7 = *(v71 + v39);
    v73 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v73)
    {
      break;
    }

    v40 = 0;
    a2 = 0;
    v78 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x266772030](v40, v7);
      }

      else
      {
        if (v40 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v42 = *(v7 + 8 * v40 + 32);
      }

      v4 = v42;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v81 = v42;
      closure #3 in graphDotText(_:callNode:)(&v81, v74, v75, &v79);

      v44 = v80;
      if (v80)
      {
        v5 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v46 = *(v78 + 2);
        v45 = *(v78 + 3);
        v4 = (v46 + 1);
        if (v46 >= v45 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v78);
        }

        *(v78 + 2) = v4;
        v41 = &v78[16 * v46];
        *(v41 + 4) = v5;
        *(v41 + 5) = v44;
        v3 = v71;
      }

      ++v40;
      if (v43 == v73)
      {
        goto LABEL_44;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v78 = MEMORY[0x277D84F90];
LABEL_44:

  v79 = 0;
  v80 = 0xE000000000000000;
  _StringGuts.grow(_:)(528);
  MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
  MEMORY[0x266771550](v62, v63);

  MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
  v81 = v65;
  v47 = BidirectionalCollection<>.joined(separator:)();
  v49 = v48;

  MEMORY[0x266771550](v47, v49);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
  v81 = v67;
  v50 = BidirectionalCollection<>.joined(separator:)();
  v52 = v51;

  MEMORY[0x266771550](v50, v52);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v74, v75);
  MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
  MEMORY[0x266771550](v74, v75);

  MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
  v81 = v70;
  v53 = BidirectionalCollection<>.joined(separator:)();
  v55 = v54;

  MEMORY[0x266771550](v53, v55);

  MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
  v81 = v78;
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  MEMORY[0x266771550](v56, v58);

  MEMORY[0x266771550](32010, 0xE200000000000000);
  return v79;
}

uint64_t key path getter for SGNode.graph : SGNode@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t createNodeStatements #1 (_:) in graphDotText(_:callNode:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = MEMORY[0x277D84F90];
    if (!v5)
    {
      return v6;
    }

    v7 = result;
    v29 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v29;
    v9 = v7;
    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    v22 = v7 & 0xC000000000000001;
    v10 = v7;
    v11 = v5;
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v22)
      {
        v13 = MEMORY[0x266772030](v8, v9);
      }

      else
      {
        if (v8 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v13 = *(v9 + 8 * v8 + 32);
      }

      v14 = v13;
      v27 = v13;
      closure #1 in createNodeStatements #1 (_:) in graphDotText(_:callNode:)(&v27, a2, a3, a4, a5, v28);

      v15 = v28[0];
      v16 = v28[1];
      v29 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v8;
      v9 = v10;
      if (v12 == v11)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v20 = result;
    v5 = __CocoaSet.count.getter();
    result = v20;
  }

  __break(1u);
  return result;
}

char *closure #1 in createNodeStatements #1 (_:) in graphDotText(_:callNode:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a3;
  v7 = *a1;
  v8 = *a1 + OBJC_IVAR___SGNode_data;
  v9 = *(v8 + 16);
  v103 = *v8;
  v104 = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  v108 = *(v8 + 80);
  v106 = v11;
  v107 = v10;
  v105 = v12;
  v13 = v103;
  v14 = v12;
  v15 = v108 >> 6;
  v109 = a2;
  if (v15)
  {
    if (v15 == 1)
    {
      v17 = *(v7 + OBJC_IVAR___SGNode_name);
      v16 = *(v7 + OBJC_IVAR___SGNode_name + 8);
      v18 = (v103 + OBJC_IVAR___SGGraph_name);
      v19 = *(v103 + OBJC_IVAR___SGGraph_name);
      v20 = *(v103 + OBJC_IVAR___SGGraph_name + 8);
      v21 = v17 == v19 && v16 == v20;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_18;
      }

      v92 = v17;
      v93 = v16;
      outlined init with copy of NodeData(&v103, v96);

      MEMORY[0x266771550](28252, 0xE200000000000000);
      v33 = *v18;
      v34 = v18[1];

      v31 = v33;
      v32 = v34;
    }

    else
    {
      v100 = v106;
      v101 = v107;
      v98 = v104;
      v99 = v12;
      v102 = v108 & 0x3F;
      v94 = 0;
      v95 = 0xE000000000000000;
      v96[2] = v105;
      v96[3] = v106;
      v96[4] = v107;
      v96[0] = v103;
      v96[1] = v104;
      v97 = v108 & 0x3F;
      outlined init with copy of [Input](v96, &v92, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
      _StringGuts.grow(_:)(16);
      v27 = v7 + OBJC_IVAR___SGNode_name;
      v28 = *(v7 + OBJC_IVAR___SGNode_name);
      v29 = *(v27 + 8);

      v92 = v28;
      v93 = v29;
      MEMORY[0x266771550](0x203A657079746E5CLL, 0xE800000000000000);
      v30 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v30);

      MEMORY[0x266771550](28252, 0xE200000000000000);
      v31 = SGDataTypeStorage.valueString.getter();
    }

    MEMORY[0x266771550](v31, v32);

    outlined destroy of NodeData(&v103);
    v19 = v92;
    v20 = v93;
  }

  else
  {
    v22 = *(&v103 + 1);
    v23 = (v7 + OBJC_IVAR___SGNode_name);
    v25 = *v23;
    v24 = v23[1];
    v26 = *v23 == v103 && *(&v103 + 1) == v24;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      outlined copy of MaterialXAvailability(v14, *(&v14 + 1));

      outlined consume of MaterialXAvailability(v14, *(&v14 + 1));
      v19 = *v23;
      v20 = v23[1];

      v6 = a3;
    }

    else
    {
      v93 = v24;
      outlined init with copy of NodeData(&v103, v96);

      MEMORY[0x266771550](28252, 0xE200000000000000);

      MEMORY[0x266771550](v13, v22);

      outlined consume of MaterialXAvailability(v14, *(&v14 + 1));

      v19 = v25;
      v20 = v93;
      v6 = a3;
    }
  }

LABEL_18:
  *&v96[0] = v19;
  *(&v96[0] + 1) = v20;
  v92 = 60;
  v93 = 0xE100000000000000;
  v94 = 15452;
  v95 = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v37 = v36;

  *&v96[0] = v35;
  *(&v96[0] + 1) = v37;
  v92 = 62;
  v93 = 0xE100000000000000;
  v94 = 15964;
  v95 = 0xE200000000000000;
  v83 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v84 = v38;

  *&v96[0] = v109;
  *(&v96[0] + 1) = v6;

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](*(v87 + OBJC_IVAR___SGNode_name), *(v87 + OBJC_IVAR___SGNode_name + 8));
  v82 = v96[0];
  v39 = *(v87 + OBJC_IVAR___SGNode_inputs);
  if (v39 >> 62)
  {
    v75 = *(v87 + OBJC_IVAR___SGNode_inputs);
    v76 = __CocoaSet.count.getter();
    v39 = v75;
    v40 = v76;
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v42 = v39;
    v90 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    v44 = 0;
    v41 = v90;
    v45 = v42;
    v89 = v42 & 0xC000000000000001;
    v109 = v42;
    do
    {
      if (v89)
      {
        v46 = MEMORY[0x266772030](v44, v45);
      }

      else
      {
        v46 = *(v45 + 8 * v44 + 32);
      }

      v47 = v46;
      *&v96[0] = 0x5F7475706E693CLL;
      *(&v96[0] + 1) = 0xE700000000000000;
      v48 = &v46[OBJC_IVAR___SGInput_name];
      v49 = *&v46[OBJC_IVAR___SGInput_name + 8];
      v92 = *&v46[OBJC_IVAR___SGInput_name];
      v93 = v49;
      v94 = 58;
      v95 = 0xE100000000000000;
      v50 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      MEMORY[0x266771550](v50);

      MEMORY[0x266771550](62, 0xE100000000000000);
      MEMORY[0x266771550](*v48, *(v48 + 1));

      v51 = v96[0];
      v53 = *(v90 + 16);
      v52 = *(v90 + 24);
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      }

      ++v44;
      *(v90 + 16) = v53 + 1;
      *(v90 + 16 * v53 + 32) = v51;
      v45 = v109;
    }

    while (v40 != v44);
  }

  *&v96[0] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v54 = BidirectionalCollection<>.joined(separator:)();
  v56 = v55;

  v57 = *(v87 + OBJC_IVAR___SGNode_outputs);
  if (v57 >> 62)
  {
    v77 = *(v87 + OBJC_IVAR___SGNode_outputs);
    v78 = __CocoaSet.count.getter();
    v57 = v77;
    v58 = v78;
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = MEMORY[0x277D84F90];
  if (v58)
  {
    v60 = v57;
    v91 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58 & ~(v58 >> 63), 0);
    if ((v58 & 0x8000000000000000) == 0)
    {
      v79 = v54;
      v80 = v56;
      v61 = 0;
      v59 = v91;
      v62 = v60;
      v109 = v60;
      do
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x266772030](v61, v62);
        }

        else
        {
          v63 = *(v62 + 8 * v61 + 32);
        }

        v64 = v63;
        *&v96[0] = 0x5F74757074756F3CLL;
        *(&v96[0] + 1) = 0xE800000000000000;
        v65 = &v63[OBJC_IVAR___SGOutput_name];
        v66 = *&v63[OBJC_IVAR___SGOutput_name + 8];
        v92 = *&v63[OBJC_IVAR___SGOutput_name];
        v93 = v66;
        v94 = 58;
        v95 = 0xE100000000000000;
        v67 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        MEMORY[0x266771550](v67);

        MEMORY[0x266771550](62, 0xE100000000000000);
        MEMORY[0x266771550](*v65, *(v65 + 1));

        v68 = v96[0];
        v70 = *(v91 + 16);
        v69 = *(v91 + 24);
        if (v70 >= v69 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
        }

        ++v61;
        *(v91 + 16) = v70 + 1;
        *(v91 + 16 * v70 + 32) = v68;
        v62 = v109;
      }

      while (v58 != v61);
      v54 = v79;
      v56 = v80;
      goto LABEL_41;
    }

LABEL_49:
    __break(1u);
    return result;
  }

LABEL_41:
  *&v96[0] = v59;
  v71 = BidirectionalCollection<>.joined(separator:)();
  v73 = v72;

  *&v96[0] = 0;
  *(&v96[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  *&v96[0] = 34;
  *(&v96[0] + 1) = 0xE100000000000000;
  MEMORY[0x266771550](v82, *(&v82 + 1));

  MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
  MEMORY[0x266771550](v54, v56);

  MEMORY[0x266771550](2129021, 0xE300000000000000);
  MEMORY[0x266771550](v83, v84);

  MEMORY[0x266771550](2065726496, 0xE400000000000000);
  MEMORY[0x266771550](v71, v73);

  MEMORY[0x266771550](2260349, 0xE300000000000000);
  if (v87 == a4 || v87 == a5)
  {
    MEMORY[0x266771550](0x746469776E657020, 0xEB00000000323D68);
  }

  result = MEMORY[0x266771550](93, 0xE100000000000000);
  v74 = *(&v96[0] + 1);
  *a6 = *&v96[0];
  a6[1] = v74;
  return result;
}

void closure #3 in graphDotText(_:callNode:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = OBJC_IVAR___SGEdge_from;
  v9 = SGGraph.nodeWithOutput(_:)(*(*a1 + OBJC_IVAR___SGEdge_from));
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = OBJC_IVAR___SGEdge_to;
  v12 = SGGraph.nodeWithInput(_:)(*(v7 + OBJC_IVAR___SGEdge_to));
  if (!v12)
  {

LABEL_16:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v47 = a4;
  v48 = v11;
  v13 = v12;

  MEMORY[0x266771550](95, 0xE100000000000000);
  v46 = v10;
  v14 = *&v10[OBJC_IVAR___SGNode_name];
  v15 = *&v10[OBJC_IVAR___SGNode_name + 8];

  MEMORY[0x266771550](v14, v15);

  v16 = a3;
  v50 = a3;

  MEMORY[0x266771550](95, 0xE100000000000000);
  v49 = v13;
  v18 = *&v13[OBJC_IVAR___SGNode_name];
  v17 = *&v13[OBJC_IVAR___SGNode_name + 8];

  MEMORY[0x266771550](v18, v17);

  _StringGuts.grow(_:)(35);

  MEMORY[0x266771550](a2, v16);

  MEMORY[0x266771550](0x74757074756F3A22, 0xE90000000000005FLL);
  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x266771550](v19);

  MEMORY[0x266771550](0x22203E2D20653ALL, 0xE700000000000000);
  MEMORY[0x266771550](a2, v50);

  MEMORY[0x266771550](0x5F7475706E693A22, 0xE800000000000000);
  v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x266771550](v20);

  MEMORY[0x266771550](30522, 0xE200000000000000);
  v21 = *(v7 + v8);
  v22 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  SGDataType.canonicalized()(*(v21 + v22));
  v23 = SGDataType.stringValue.getter();
  v25 = v24;
  v26 = *(v7 + v48);
  v27 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  SGDataType.canonicalized()(*(v26 + v27));
  v29 = SGDataType.stringValue.getter();
  v30 = v28;
  v31 = v23 == v29 && v25 == v28;
  v32 = v31;
  if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[16 * v35];
    *(v36 + 4) = 0xD000000000000016;
    *(v36 + 5) = 0x8000000265F32760;
    if (v32)
    {
      goto LABEL_21;
    }
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x266771550](0xD00000000000001ALL, 0x8000000265F32710);
    MEMORY[0x266771550](0x6B63616C62, 0xE500000000000000);
    MEMORY[0x266771550](0xD000000000000027, 0x8000000265F32730);
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = *(v33 + 2);
    v37 = *(v33 + 3);
    if (v38 >= v37 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v33);
    }

    *(v33 + 2) = v38 + 1;
    v39 = &v33[16 * v38];
    *(v39 + 4) = 0;
    *(v39 + 5) = 0xE000000000000000;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _StringGuts.grow(_:)(21);

    MEMORY[0x266771550](v23, v25);

    MEMORY[0x266771550](0x209286E220, 0xA500000000000000);
    MEMORY[0x266771550](v29, v30);
    goto LABEL_23;
  }

LABEL_21:

  MEMORY[0x266771550](v23, v25);
LABEL_23:

  MEMORY[0x266771550](34, 0xE100000000000000);
  v41 = *(v33 + 2);
  v40 = *(v33 + 3);
  if (v41 >= v40 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v33);
  }

  *(v33 + 2) = v41 + 1;
  v42 = &v33[16 * v41];
  *(v42 + 4) = 0x6562616C6C696174;
  *(v42 + 5) = 0xEB00000000223D6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v43 = BidirectionalCollection<>.joined(separator:)();
  v45 = v44;

  MEMORY[0x266771550](v43, v45);

  MEMORY[0x266771550](93, 0xE100000000000000);
  MEMORY[0x266771550](23328, 0xE200000000000000);

  *v47 = 34;
  v47[1] = 0xE100000000000000;
}

Swift::String __swiftcall tabs(_:)(Swift::Int a1)
{
  v2._countAndFlagsBits = 9;
  v2._object = 0xE100000000000000;
  v5 = String.init(repeating:count:)(v2, a1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t SGGraph.nodegraphs(_:)(unint64_t a1)
{
  v3 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v117 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_120;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v103 = v4 + 32;
    v92 = a1 + 1;
    v9 = __OFADD__(a1, 1);
    v93 = v9;
    v90 = v5;
    v91 = v4;
    v88 = v4 & 0xFFFFFFFFFFFFFF8;
    v89 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v14 = MEMORY[0x266772030](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_118;
        }

        v14 = *(v103 + 8 * v6);
      }

      a1 = v14;
      v15 = __OFADD__(v6++, 1);
      if (v15)
      {
        goto LABEL_117;
      }

      v16 = &v14[OBJC_IVAR___SGNode_data];
      v17 = v14[OBJC_IVAR___SGNode_data + 80];
      if ((v17 & 0xC0) == 0x40)
      {
        break;
      }

      v10 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(MEMORY[0x277D84F90]);
      v12 = v11;

      v13 = v12;
LABEL_9:
      specialized Array.append<A>(contentsOf:)(v10, v13);
      if (v6 == v5)
      {
        v86 = v117;
        goto LABEL_110;
      }
    }

    v18 = *v16;
    v107 = *(v16 + 2);
    v108 = *(v16 + 1);
    v106 = *(v16 + 3);
    v19 = *(v16 + 5);
    v105 = *(v16 + 4);
    v20 = *(v16 + 6);
    v4 = *(v16 + 7);
    v21 = *(v16 + 8);
    v22 = *(v16 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_265F20CD0;
    *(v23 + 32) = a1;
    v97 = v22;
    v98 = v21;
    v100 = v20;
    v101 = v19;
    v99 = v4;
    outlined copy of NodeData(v18, v108, v107, v106, v105, v19, v20, v4, v21, v22, v17);
    a1 = a1;
    v24 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(v23);
    if (v93)
    {
      goto LABEL_119;
    }

    v4 = v24;
    v26 = v25;
    v94 = a1;
    v95 = v17;
    v96 = v6;
    SGGraph.nodegraphs(_:)(v92);
    v116 = v26;
    v104 = v27;
    v28 = *(v27 + 16);

    v29 = v26;
    v10 = v4;
    if (!v28)
    {
LABEL_106:
      outlined consume of NodeData(v18, v108, v107, v106, v105, v101, v100, v99, v98, v97, v95);

      v5 = v90;
      v4 = v91;
      v13 = v29;
      v6 = v96;
      v8 = v88;
      v7 = v89;
      goto LABEL_9;
    }

    v30 = 0;
    v29 = v26;
    v102 = v4;
    v109 = v18;
    v111 = v28;
    while (2)
    {
      v31 = v102;
      while (2)
      {
        v110 = v29;
        v32 = v29 + 32;
        while (1)
        {
          v115 = v31 + 32;
          while (1)
          {
            if (v30 >= v28)
            {
              goto LABEL_114;
            }

            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
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
              v5 = __CocoaSet.count.getter();
              goto LABEL_3;
            }

            a1 = *(v104 + 32 + 8 * v30++);
            v113 = v33;
            v114 = v33;
            v112 = a1;
            if (!v31)
            {
              break;
            }

            v34 = *(v31 + 16);
            v35 = a1;

            v36 = NSObject._rawHashValue(seed:)(v34);
            v37 = 1 << *(v31 + 16);
            v15 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v15)
            {
              goto LABEL_116;
            }

            v39 = v38 & v36;
            v40 = _HashTable.UnsafeHandle._startIterator(bucket:)(v38 & v36, (v31 + 16), v115);
            if (!v40)
            {
LABEL_66:

              v67 = v31;
              v18 = v109;
              v28 = v111;
              goto LABEL_67;
            }

            v43 = v41;
            v44 = v42;
            v45 = -1 << *(v31 + 16);
            v46 = (v45 ^ ~v40) + (*(v31 + 24) >> 6);
            if (v46 >= ~v45)
            {
              v47 = ~v45;
            }

            else
            {
              v47 = 0;
            }

            a1 = v46 - v47;
            type metadata accessor for SGNode();
            v48 = *(v32 + 8 * a1);
            v4 = static NSObject.== infix(_:_:)();

            if ((v4 & 1) == 0)
            {
              a1 = 0;
              do
              {
                ++v39;
                v49 = *(v31 + 16) & 0x3FLL;
                v50 = 1 << *(v31 + 16);
                if (v39 == v50)
                {
                  if (a1)
                  {
                    goto LABEL_130;
                  }

                  v39 = 0;
                  a1 = 1;
                }

                if (v44 >= v49)
                {
                  v58 = (v50 - 1) & v43;
                  v43 >>= v49;
                  v44 -= v49;
                  if (!v58)
                  {
LABEL_65:
                    a1 = v112;
                    v30 = v113;
                    goto LABEL_66;
                  }
                }

                else
                {
                  v51 = (v39 * v49) >> 6;
                  if (v44)
                  {
                    if (__OFADD__(v49 << v49, 64))
                    {
                      goto LABEL_113;
                    }

                    v52 = (v49 << v49) + 126;
                    if ((v49 << v49) + 64 >= 1)
                    {
                      v52 = (v49 << v49) + 63;
                    }

                    if (v51 + 1 == v52 >> 6)
                    {
                      v51 = 0;
                    }

                    else
                    {
                      ++v51;
                    }
                  }

                  v53 = v49 - v44;
                  if (__OFSUB__(v49, v44))
                  {
                    __break(1u);
LABEL_112:
                    __break(1u);
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }

                  v54 = v51 == 2 && v49 == 5;
                  v55 = 32;
                  if (!v54)
                  {
                    v55 = 64;
                  }

                  v15 = __OFSUB__(v55, v53);
                  v56 = v55 - v53;
                  if (v15)
                  {
                    goto LABEL_112;
                  }

                  v57 = *(v115 + 8 * v51);
                  v58 = ((v57 << v44) | v43) & (v50 - 1);
                  v43 = v57 >> v53;
                  v44 = v56;
                  if (!v58)
                  {
                    goto LABEL_65;
                  }
                }

                v59 = -1 << v49;
                v60 = (v59 ^ ~v58) + (*(v31 + 24) >> 6);
                if (v60 >= ~v59)
                {
                  v61 = ~v59;
                }

                else
                {
                  v61 = 0;
                }

                v4 = *(v32 + 8 * (v60 - v61));
                v62 = static NSObject.== infix(_:_:)();
              }

              while ((v62 & 1) == 0);
            }

            v28 = v111;
            v30 = v113;
            if (v114 == v111)
            {
              goto LABEL_105;
            }
          }

          v39 = *(v110 + 16);
          v63 = a1;
          if (!v39)
          {
            break;
          }

          a1 = v63;
          type metadata accessor for SGNode();
          v64 = 32;
          while (1)
          {
            v65 = *(v110 + v64);
            v4 = static NSObject.== infix(_:_:)();

            if (v4)
            {
              break;
            }

            v64 += 8;
            if (!--v39)
            {
              v67 = 0;
              v18 = v109;
              v30 = v113;
              goto LABEL_71;
            }
          }

          v31 = 0;
          v30 = v33;
          if (v33 == v28)
          {
LABEL_105:
            v10 = v31;
            v18 = v109;
            v29 = v110;
            goto LABEL_106;
          }
        }

        v67 = 0;
        v18 = v109;
LABEL_71:
        a1 = v112;
LABEL_67:
        a1 = a1;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *(v116 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 = v116;
        v66 = *(v116 + 16);
        if (!v31)
        {
          if (v66 <= 0xF)
          {

            v31 = 0;
            v10 = 0;
            if (v114 != v28)
            {
              continue;
            }

            goto LABEL_106;
          }

          v71 = 0;
          goto LABEL_79;
        }

        break;
      }

      swift_beginAccess();
      v68 = *(v67 + 16) & 0x3FLL;
      if (v68 > 4)
      {
        v76 = (1 << v68) * 0.75;
        v69 = v102;
        if (COERCE__INT64(fabs(v76)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_124;
        }

        if (v76 <= -9.22337204e18)
        {
          goto LABEL_125;
        }

        if (v76 >= 9.22337204e18)
        {
          goto LABEL_126;
        }

        if (v66 > v76)
        {
LABEL_75:
          swift_beginAccess();
          v70 = *(v67 + 24);
          v71 = v70 & 0x3F;
          v66 = *(v116 + 16);
          if (v66 <= 0xF)
          {
            v72 = v70 & 0x3F;
            if ((v70 & 0x3F) == 0)
            {

              v69 = 0;
              goto LABEL_103;
            }

LABEL_90:
            v69 = _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5(v116, v72, 0, v71);

LABEL_103:
            v102 = v69;
            v10 = v69;
            if (v114 != v28)
            {
              continue;
            }

            goto LABEL_106;
          }

LABEL_79:
          v73 = ceil(v66 / 0.75);
          if (v73 == INFINITY)
          {
            __break(1u);
LABEL_122:
            __break(1u);
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
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          if (v73 <= -9.22337204e18)
          {
            goto LABEL_122;
          }

          if (v73 >= 9.22337204e18)
          {
            goto LABEL_123;
          }

          if ((v66 + 1) > v73)
          {
            v74 = v66 + 1;
          }

          else
          {
            v74 = v73;
          }

          if (v74 <= 2)
          {
            v74 = 2;
          }

          v75 = 64 - __clz(v74 - 1);
          if (v71 <= v75)
          {
            v72 = v75;
          }

          else
          {
            v72 = v71;
          }

          goto LABEL_90;
        }
      }

      else
      {
        v69 = v102;
        if (v66 > 0xF)
        {
          goto LABEL_75;
        }
      }

      break;
    }

    if ((swift_isUniquelyReferenced_native() & 1) == 0)
    {
      if (!v69)
      {
        goto LABEL_129;
      }

      v4 = v69[2];
      v77 = (v4 & 0x3F) << v4;
      v15 = __OFADD__(v77, 64);
      v78 = v77 + 64;
      if (v15)
      {
        goto LABEL_127;
      }

      v80 = v78 - 1;
      v79 = v78 < 1;
      v81 = v78 + 62;
      if (!v79)
      {
        v81 = v80;
      }

      v82 = v81 >> 6;
      type metadata accessor for _HashTable.Storage(0);
      v83 = swift_allocObject();
      v84 = v69[3];
      v83[2] = v4;
      v83[3] = v84;
      memcpy(v83 + 4, v69 + 4, 8 * v82);

      v69 = v83;
    }

    if (!v69)
    {
      goto LABEL_128;
    }

    v85 = *(v116 + 16) + ~(v69[3] >> 6);
    _HashTable.UnsafeHandle.subscript.setter((-1 << v69[2]) ^ ~(((v85 >> 63) & ~(-1 << v69[2])) + v85), v39, v69 + 2, (v69 + 4));

    goto LABEL_103;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_110:

  return _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(v86);
}

Swift::Int DotError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

unint64_t NodePersonality.dotLabel.getter(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 3)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        v2 = *(a1 + 48);
        v27 = *(a1 + 32);
        v28 = v2;
        v29 = *(a1 + 64);
        LOBYTE(v30) = *(a1 + 80);
        v26 = *(a1 + 16);
        v3 = *(a1 + 88);
        v23[0] = SGDataTypeStorage.valueString.getter();
        v23[1] = v4;
        v5 = MEMORY[0x266771550](8250, 0xE200000000000000);
        v6 = (*(*v3 + 136))(v5);
        MEMORY[0x266771550](v6);

        return v23[0];
      }

      goto LABEL_12;
    }

    if (v1 == 2)
    {
      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F32680);
      LOBYTE(v23[0]) = v13;
      _print_unlocked<A, B>(_:_:)();
      return v26;
    }

    v21 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v21 + 24);
    v11 = 0x203A6D61726170;
    v12 = 0xE700000000000000;
LABEL_14:
    *&v26 = v11;
    *(&v26 + 1) = v12;
    MEMORY[0x266771550](v9, v10);
    return v26;
  }

  if (v1 <= 5)
  {
    if (v1 != 4)
    {
LABEL_12:
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      return v20;
    }

    v8 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *(v8 + 24);
    v11 = 46;
    v12 = 0xE100000000000000;
    goto LABEL_14;
  }

  if (v1 == 6)
  {
    v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
    v33 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
    v34 = v14;
    v35[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
    *(v35 + 9) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
    v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
    v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v30 = v15;
    v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
    v31 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    v32 = v16;
    v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v26 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = v17;
    v28 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v24 = 0x286870617267;
    v25 = 0xE600000000000000;
    v18 = *(&v17 + 1);
    v19 = v28;
    outlined init with copy of UserGraph(&v26, v23);

    MEMORY[0x266771550](v18, v19);

    MEMORY[0x266771550](41, 0xE100000000000000);
    outlined destroy of UserGraph(&v26);
    return v24;
  }

  else
  {
    v22 = 0x6153657461657263;
    if (a1 != 0xE000000000000008)
    {
      v22 = 0x746C75736572;
    }

    if (a1 == 0xE000000000000000)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v22;
    }
  }
}

uint64_t NodePersonality.dotIdentifier.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v3, a1);
  v3[0] = Hasher._finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t protocol witness for DotLabel.dotIdentifier.getter in conformance NodePersonality()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NodePersonality.hash(into:)(v3, v1);
  v3[0] = Hasher._finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t DataType.dotLabel.getter()
{
  type metadata accessor for MetalDataType();
  if (swift_dynamicCastClass())
  {
    v1 = *(swift_dynamicCastClassUnconditional() + 24);
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v2 = swift_dynamicCastClass();
    v1 = (*(*v0 + 136))();
    if (v2)
    {
      lazy protocol witness table accessor for type String and conformance String();
      v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    }
  }

  return v1;
}

char *UserGraph.subgraphs()()
{
  v26 = *(v0 + 64);
  v1 = *(v26 + 16);
  v25 = MEMORY[0x277D84F90];

  if (v1)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = MEMORY[0x277D84F90];
    while (v3 < v1)
    {
      v6 = &v4[48 * v3];
      if (v6[3] == -7)
      {
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v7 = __OFADD__(v3++, 1);
        if (v7)
        {
          goto LABEL_16;
        }

        v8 = *v6;
        v9 = v5;
        if (*v6 >> 61 == 6)
        {
          v10 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
          v34 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          v35 = v10;
          v36[0] = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
          *(v36 + 9) = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
          v11 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v30 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v31 = v11;
          v12 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v32 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v33 = v12;
          v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v27 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v28 = v13;
          v29 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMR);
          v14 = swift_allocObject();
          v15 = v35;
          v16 = v36[0];
          v17 = v33;
          v14[9] = v34;
          v14[10] = v15;
          v14[11] = v16;
          *(v14 + 185) = *(v36 + 9);
          v18 = v31;
          v19 = v32;
          v20 = v29;
          v14[5] = v30;
          v14[6] = v18;
          v14[7] = v19;
          v14[8] = v17;
          v21 = v27;
          v22 = v28;
          v14[1] = xmmword_265F1F670;
          v14[2] = v21;
          v14[3] = v22;
          v14[4] = v20;
          outlined init with copy of UserGraph(&v27, v24);
          outlined init with copy of UserGraph(&v27, v24);
          outlined copy of NodePersonality(v8);

          v23 = UserGraph.subgraphs()();
          v24[0] = v14;
          specialized Array.append<A>(contentsOf:)(v23);

          outlined consume of NodePersonality(v8);
          outlined destroy of UserGraph(&v27);
          v9 = v24[0];
        }

        result = specialized Array.append<A>(contentsOf:)(v9);
      }

      if (v3 >= v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_13:
    outlined destroy of [Input](&v26, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
    return v25;
  }

  return result;
}

uint64_t graphDotText(representing:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v161 = 95;
  *(&v161 + 1) = 0xE100000000000000;
  *&v154 = a2;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v5);

  v101 = a1;
  v91 = *(a1 + 32);
  v92 = *(a1 + 24);
  v6 = *(a1 + 96);
  v180 = *(a1 + 80);
  *v181 = v6;
  *&v181[9] = *(a1 + 105);
  v7 = *(a1 + 144);
  v175 = *(a1 + 128);
  *v176 = v7;
  *&v176[9] = *(a1 + 153);
  v174 = *(a1 + 64);
  v8 = *(v174 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = v9 + 32;
    v95 = v3;
    v96 = MEMORY[0x277D84F90];
    v93 = v9 + 32;
    v94 = v8;
    while (1)
    {
      while (1)
      {
        if (v10 >= v8)
        {
          goto LABEL_134;
        }

        v13 = v11 + 48 * v10;
        if (*(v13 + 24) != -7)
        {
          break;
        }

        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          goto LABEL_138;
        }

        if (v10 >= v8)
        {
          goto LABEL_120;
        }
      }

      v14 = __OFADD__(v10, 1);
      v15 = v10 + 1;
      if (v14)
      {
        goto LABEL_137;
      }

      v100 = *(v13 + 24);
      v98 = v15;
      v17 = *v13;
      v16 = *(v13 + 8);
      v18 = *(v13 + 16);
      v97 = *(v13 + 32);
      v99 = *(v13 + 40);
      outlined copy of NodePersonality(*v13);
      v185 = v16;

      v135 = v18;

      v106 = v17;
      if (specialized static NodePersonality.== infix(_:_:)(v17, v180))
      {
        v19 = *(v185 + 16);
        if (v19 == *(*(&v180 + 1) + 16))
        {
          if (v19)
          {
            v20 = v185 == *(&v180 + 1);
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v3 = 0;
            v24 = (v185 + 80);
            v25 = *(&v180 + 1) + 40;
            v102 = *(v185 + 16);
            while (v3 < *(v185 + 16))
            {
              if (v19 == v3)
              {
                goto LABEL_140;
              }

              if (*(v24 - 6) != *(v25 - 8))
              {
                goto LABEL_63;
              }

              v26 = *(v24 - 4);
              v27 = *(v24 - 3);
              v29 = *v25;
              v28 = *(v25 + 8);
              v30 = *(v25 + 16);
              v107 = *(v25 + 24);
              v111 = *(v24 - 2);
              v123 = *(v25 + 32);
              v127 = *(v24 - 8);
              v115 = *(v25 + 40);
              v119 = *v24;
              v131 = *(**(v24 - 5) + 128);

              if ((v131(v29) & 1) == 0 || (v26 != v28 || v27 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
LABEL_62:

                goto LABEL_63;
              }

              if (v127)
              {
                if (!v123)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v31 = v123;
                if (v111 != v107)
                {
                  v31 = 1;
                }

                if (v31)
                {
                  goto LABEL_62;
                }
              }

              v19 = v102;
              if (v119 != v115)
              {
                goto LABEL_63;
              }

              ++v3;
              v24 += 7;
              v25 += 56;
              if (v102 == v3)
              {
                goto LABEL_20;
              }
            }

LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:

            v142 = v151;
            v143 = v152;
            v144 = v153;
            v138 = v147;
            v139 = v148;
            v140 = v149;
            v141 = v150;
            outlined destroy of Edge(&v138);

            __break(1u);
            return result;
          }

LABEL_20:
          v21 = *(v135 + 16);
          if (v21 == *(*v181 + 16))
          {
            if (v21)
            {
              v22 = v135 == *v181;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v3 = 0;
              v32 = (v135 + 80);
              v33 = *v181 + 40;
              v103 = *(v135 + 16);
              while (v3 < *(v135 + 16))
              {
                if (v21 == v3)
                {
                  goto LABEL_142;
                }

                if (*(v32 - 6) != *(v33 - 8))
                {
                  goto LABEL_63;
                }

                v34 = *(v32 - 4);
                v35 = *(v32 - 3);
                v37 = *v33;
                v36 = *(v33 + 8);
                v38 = *(v33 + 16);
                v108 = *(v33 + 24);
                v112 = *(v32 - 2);
                v124 = *(v33 + 32);
                v128 = *(v32 - 8);
                v116 = *(v33 + 40);
                v120 = *v32;
                v132 = *(**(v32 - 5) + 128);

                if ((v132(v37) & 1) == 0 || (v34 != v36 || v35 != v38) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_62;
                }

                if (v128)
                {
                  if (!v124)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  v39 = v124;
                  if (v112 != v108)
                  {
                    v39 = 1;
                  }

                  if (v39)
                  {
                    goto LABEL_62;
                  }
                }

                v21 = v103;
                if (v120 != v116)
                {
                  goto LABEL_63;
                }

                ++v3;
                v32 += 7;
                v33 += 56;
                if (v103 == v3)
                {
                  goto LABEL_26;
                }
              }

              goto LABEL_141;
            }

LABEL_26:
            if (v100 == *&v181[8])
            {
              v23 = v181[24];
              if (v99)
              {
                if (v181[24])
                {
                  goto LABEL_6;
                }
              }

              else
              {
                if (v97 != *&v181[16])
                {
                  v23 = 1;
                }

                if ((v23 & 1) == 0)
                {
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

LABEL_63:
      if ((specialized static NodePersonality.== infix(_:_:)(v106, v175) & 1) == 0)
      {
        goto LABEL_107;
      }

      v40 = *(v185 + 16);
      if (v40 != *(*(&v175 + 1) + 16))
      {
        goto LABEL_107;
      }

      if (v40 && v185 != *(&v175 + 1))
      {
        v3 = 0;
        v41 = (v185 + 80);
        v42 = *(&v175 + 1) + 40;
        v104 = *(v185 + 16);
        while (v3 < *(v185 + 16))
        {
          if (v40 == v3)
          {
            goto LABEL_133;
          }

          if (*(v41 - 6) != *(v42 - 8))
          {
            goto LABEL_107;
          }

          v43 = *(v41 - 4);
          v44 = *(v41 - 3);
          v46 = *v42;
          v45 = *(v42 + 8);
          v47 = *(v42 + 16);
          v109 = *(v42 + 24);
          v113 = *(v41 - 2);
          v125 = *(v42 + 32);
          v129 = *(v41 - 8);
          v117 = *(v42 + 40);
          v121 = *v41;
          v133 = *(**(v41 - 5) + 128);

          if ((v133(v46) & 1) == 0 || (v43 != v45 || v44 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_106:

            goto LABEL_107;
          }

          if (v129)
          {
            if (!v125)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v48 = v125;
            if (v113 != v109)
            {
              v48 = 1;
            }

            if (v48)
            {
              goto LABEL_106;
            }
          }

          if (v121 != v117)
          {
            goto LABEL_107;
          }

          ++v3;
          v41 += 7;
          v42 += 56;
          v40 = v104;
          if (v104 == v3)
          {
            goto LABEL_83;
          }
        }

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

LABEL_83:
      v49 = *(v135 + 16);
      if (v49 != *(*v176 + 16))
      {
        goto LABEL_107;
      }

      if (v49 && v135 != *v176)
      {
        v3 = 0;
        v50 = (v135 + 80);
        v51 = *v176 + 40;
        v105 = *(v135 + 16);
        while (v3 < *(v135 + 16))
        {
          if (v49 == v3)
          {
            goto LABEL_136;
          }

          if (*(v50 - 6) != *(v51 - 8))
          {
            goto LABEL_107;
          }

          v52 = *(v50 - 4);
          v53 = *(v50 - 3);
          v55 = *v51;
          v54 = *(v51 + 8);
          v56 = *(v51 + 16);
          v110 = *(v51 + 24);
          v114 = *(v50 - 2);
          v126 = *(v51 + 32);
          v130 = *(v50 - 8);
          v118 = *(v51 + 40);
          v122 = *v50;
          v134 = *(**(v50 - 5) + 128);

          if ((v134(v55) & 1) == 0 || (v52 != v54 || v53 != v56) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_106;
          }

          if (v130)
          {
            if (!v126)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v57 = v126;
            if (v114 != v110)
            {
              v57 = 1;
            }

            if (v57)
            {
              goto LABEL_106;
            }
          }

          if (v122 != v118)
          {
            goto LABEL_107;
          }

          ++v3;
          v50 += 7;
          v51 += 56;
          v49 = v105;
          if (v105 == v3)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_135;
      }

LABEL_102:
      v58 = v100;
      if (v100 == *&v176[8])
      {
        v12 = v176[24];
        if (v99)
        {
          if (!v176[24])
          {
            v99 = 1;
LABEL_107:
            v58 = v100;
            goto LABEL_108;
          }
        }

        else
        {
          if (v97 != *&v176[16])
          {
            v12 = 1;
          }

          if (v12)
          {
            v99 = 0;
            goto LABEL_107;
          }
        }

LABEL_6:
        outlined consume of NodePersonality(v106);

        v8 = v94;
        v3 = v95;
        v10 = v98;
        v11 = v93;
        if (v98 >= v94)
        {
          goto LABEL_120;
        }
      }

      else
      {
LABEL_108:
        v59 = v96;
        *&v161 = v96;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 16) + 1, 1);
          v59 = v161;
        }

        v3 = v95;
        v61 = *(v59 + 16);
        v60 = *(v59 + 24);
        v62 = v59;
        if (v61 >= v60 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
          v62 = v161;
        }

        *(v62 + 16) = v61 + 1;
        v96 = v62;
        v63 = v62 + 48 * v61;
        v64 = v185;
        *(v63 + 32) = v106;
        *(v63 + 40) = v64;
        *(v63 + 48) = v135;
        *(v63 + 56) = v58;
        *(v63 + 64) = v97;
        *(v63 + 72) = v99;
        v11 = v93;
        v8 = v94;
        v10 = v98;
        if (v98 >= v94)
        {
          goto LABEL_120;
        }
      }
    }
  }

  v96 = MEMORY[0x277D84F90];
LABEL_120:
  outlined destroy of [Input](&v174, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMR);
  v65 = swift_allocObject();
  v183 = *(&v180 + 1);
  v184[0] = v180;
  v182 = *v181;
  v67 = v180;
  v66 = *v181;
  v65[1] = xmmword_265F1F670;
  v65[2] = v67;
  v65[3] = v66;
  *(v65 + 57) = *&v181[9];
  outlined init with copy of NodePersonality(v184, &v161);
  outlined init with copy of [Input](&v183, &v161, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v182, &v161, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v185 = createNodeStatements #1 (_:) in graphDotText(representing:index:)(v65, 95, 0xE100000000000000, &v180, &v175);
  swift_setDeallocating();
  outlined destroy of ShaderGraphNode((v65 + 2));
  swift_deallocClassInstance();
  v68 = swift_allocObject();
  v178 = *(&v175 + 1);
  v179 = v175;
  v177 = *v176;
  v70 = v175;
  v69 = *v176;
  v68[1] = xmmword_265F1F670;
  v68[2] = v70;
  v68[3] = v69;
  *(v68 + 57) = *&v176[9];
  outlined init with copy of NodePersonality(&v179, &v161);
  outlined init with copy of [Input](&v178, &v161, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v177, &v161, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v137 = createNodeStatements #1 (_:) in graphDotText(representing:index:)(v68, 95, 0xE100000000000000, &v180, &v175);
  swift_setDeallocating();
  outlined destroy of ShaderGraphNode((v68 + 2));
  swift_deallocClassInstance();
  v136 = createNodeStatements #1 (_:) in graphDotText(representing:index:)(v96, 95, 0xE100000000000000, &v180, &v175);

  outlined init with copy of UserGraph(v101, &v161);
  v71 = UserGraph.sinkNodes()();
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v101, v71, v168);
  outlined destroy of UserGraph(v101);
  v173 = v168[0];
  v172 = v168[1];
  v171 = v168[2];
  v170 = v168[3];
  v169 = v168[4];
  outlined init with copy of [Input](&v173, &v161, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v172, &v161, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v171, &v161, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v170, &v161, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v169, &v161, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  UserGraph.DepthFirstEdgeIterator.next()(&v161);
  v158 = v165;
  v159 = v166;
  v160 = v167;
  v154 = v161;
  v155 = v162;
  v156 = v163;
  v157 = v164;
  if (*(&v161 + 1))
  {
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      v151 = v158;
      v152 = v159;
      v153 = v160;
      v147 = v154;
      v148 = v155;
      v149 = v156;
      v150 = v157;
      closure #2 in graphDotText(representing:index:)(&v147, v101, 95, 0xE100000000000000, &v145);
      if (v3)
      {
        goto LABEL_143;
      }

      v142 = v151;
      v143 = v152;
      v144 = v153;
      v138 = v147;
      v139 = v148;
      v140 = v149;
      v141 = v150;
      outlined destroy of Edge(&v138);
      v74 = v146;
      if (v146)
      {
        v75 = v145;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
        }

        v77 = *(v72 + 2);
        v76 = *(v72 + 3);
        if (v77 >= v76 >> 1)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v72);
        }

        *(v72 + 2) = v77 + 1;
        v73 = &v72[16 * v77];
        *(v73 + 4) = v75;
        *(v73 + 5) = v74;
      }

      UserGraph.DepthFirstEdgeIterator.next()(&v161);
      v158 = v165;
      v159 = v166;
      v160 = v167;
      v154 = v161;
      v155 = v162;
      v156 = v163;
      v157 = v164;
      if (!*(&v161 + 1))
      {
        goto LABEL_131;
      }
    }
  }

  v72 = MEMORY[0x277D84F90];
LABEL_131:

  outlined destroy of [Input](&v173, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined destroy of [Input](&v172, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined destroy of [Input](&v171, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined destroy of [Input](&v170, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v169, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);

  *&v147 = 0;
  *(&v147 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(528);
  MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
  *&v138 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v78 = BidirectionalCollection<>.joined(separator:)();
  v80 = v79;

  MEMORY[0x266771550](v78, v80);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
  *&v138 = v136;
  v81 = BidirectionalCollection<>.joined(separator:)();
  v83 = v82;

  MEMORY[0x266771550](v81, v83);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
  MEMORY[0x266771550](v92, v91);
  MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
  *&v138 = v137;
  v84 = BidirectionalCollection<>.joined(separator:)();
  v86 = v85;

  MEMORY[0x266771550](v84, v86);

  MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
  *&v138 = v72;
  v87 = BidirectionalCollection<>.joined(separator:)();
  v89 = v88;

  MEMORY[0x266771550](v87, v89);

  MEMORY[0x266771550](32010, 0xE200000000000000);
  return v147;
}

uint64_t createNodeStatements #1 (_:) in graphDotText(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v73 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v10 = 0;
  v56 = a1 + 32;
  v57 = v5;
  result = v73;
  do
  {
    v64 = result;
    v65 = v10;
    v12 = v56 + 48 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    LOBYTE(v12) = *(v12 + 40);
    v74[0] = v13;
    v74[1] = v14;
    v74[2] = v16;
    v74[3] = v15;
    v74[4] = v17;
    v75 = v12;
    outlined copy of NodePersonality(v13);

    v63 = v13;
    v61 = specialized ShaderGraphNode.dotLabel.getter(v13);
    v62 = v18;
    v19 = *(v14 + 16);
    v66 = v16;
    if (v19)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v6;
      v21 = (v14 + 80);
      do
      {
        v22 = *(v21 - 5);
        v24 = *(v21 - 4);
        v23 = *(v21 - 3);
        v25 = *(v21 - 2);
        v26 = *(v21 - 8);
        v27 = *v21;
        v83 = *(v21 - 6);
        v84 = v22;
        v85 = v24;
        v86 = v23;
        v87 = v25;
        v88 = v26;
        v89 = v27;

        v67 = Input.dotID.getter();
        v70 = v28;

        MEMORY[0x266771550](a2, a3);

        MEMORY[0x266771550](v67, v70);

        MEMORY[0x266771550](62, 0xE100000000000000);
        MEMORY[0x266771550](v24, v23);

        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        }

        v21 += 7;
        *(v20 + 16) = v30 + 1;
        v31 = v20 + 16 * v30;
        *(v31 + 32) = 60;
        *(v31 + 40) = 0xE100000000000000;
        --v19;
      }

      while (v19);
      v6 = MEMORY[0x277D84F90];
      v16 = v66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    v35 = *(v16 + 16);
    if (v35)
    {
      v59 = v32;
      v60 = v34;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v36 = v6;
      v37 = (v16 + 80);
      do
      {
        v38 = *(v37 - 5);
        v39 = *(v37 - 4);
        v40 = *(v37 - 3);
        v41 = *(v37 - 2);
        v42 = *(v37 - 8);
        v43 = *v37;
        v76 = *(v37 - 6);
        v77 = v38;
        v78 = v39;
        v79 = v40;
        v80 = v41;
        v81 = v42;
        v82 = v43;

        v68 = Output.dotID.getter();
        v71 = v44;

        MEMORY[0x266771550](a2, a3);

        MEMORY[0x266771550](v68, v71);

        MEMORY[0x266771550](62, 0xE100000000000000);
        MEMORY[0x266771550](v39, v40);

        v46 = *(v36 + 16);
        v45 = *(v36 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
        }

        v37 += 7;
        *(v36 + 16) = v46 + 1;
        v47 = v36 + 16 * v46;
        *(v47 + 32) = 60;
        *(v47 + 40) = 0xE100000000000000;
        --v35;
      }

      while (v35);
      v6 = MEMORY[0x277D84F90];
      v32 = v59;
      v34 = v60;
    }

    v48 = BidirectionalCollection<>.joined(separator:)();
    v50 = v49;

    _StringGuts.grow(_:)(31);

    v69 = specialized ShaderGraphNode.dotID.getter();
    v72 = v51;

    MEMORY[0x266771550](a2, a3);

    MEMORY[0x266771550](v69, v72);

    MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
    MEMORY[0x266771550](v32, v34);

    MEMORY[0x266771550](2129021, 0xE300000000000000);
    MEMORY[0x266771550](v61, v62);

    MEMORY[0x266771550](2065726496, 0xE400000000000000);
    MEMORY[0x266771550](v48, v50);

    MEMORY[0x266771550](2260349, 0xE300000000000000);
    if (specialized static ShaderGraphNode.== infix(_:_:)(v74, a4) & 1) != 0 || (specialized static ShaderGraphNode.== infix(_:_:)(v74, a5))
    {
      MEMORY[0x266771550](0x746469776E657020, 0xEB00000000323D68);
    }

    MEMORY[0x266771550](93, 0xE100000000000000);
    outlined consume of NodePersonality(v63);

    result = v64;
    v53 = *(v64 + 16);
    v52 = *(v64 + 24);
    if (v53 >= v52 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      result = v64;
    }

    v10 = v65 + 1;
    *(result + 16) = v53 + 1;
    v54 = result + 16 * v53;
    *(v54 + 32) = 34;
    *(v54 + 40) = 0xE100000000000000;
  }

  while (v65 + 1 != v57);
  return result;
}

__int128 *closure #2 in graphDotText(representing:index:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = *result;
  v56 = *(result + 56);
  if (*result == -7)
  {
    goto LABEL_5;
  }

  if ((v57 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = *(a2 + 64);
  v11 = *(v10 + 16);
  if (v57 >= v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v56 == -7)
  {
LABEL_5:
    *a5 = 0;
    a5[1] = 0;
    return result;
  }

  if (v56 < v11)
  {
    v45 = a5;
    v12 = *(v10 + 32 + 48 * v56);
    v43 = *(v10 + 32 + 48 * v57);
    outlined copy of NodePersonality(v43);

    v44 = v12;
    outlined copy of NodePersonality(v12);

    _StringGuts.grow(_:)(26);

    v54 = 34;
    v55 = 0xE100000000000000;
    v46 = specialized ShaderGraphNode.dotID.getter();
    v50 = v15;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v46, v50);

    MEMORY[0x266771550](2243106, 0xE300000000000000);
    v47 = Output.dotID.getter();
    v51 = v16;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v47, v51);

    MEMORY[0x266771550](0x22203E2D20653A22, 0xE800000000000000);
    v48 = specialized ShaderGraphNode.dotID.getter();
    v52 = v17;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v48, v52);

    MEMORY[0x266771550](2243106, 0xE300000000000000);
    v49 = Input.dotID.getter();
    v53 = v18;

    MEMORY[0x266771550](a3, a4);

    MEMORY[0x266771550](v49, v53);

    MEMORY[0x266771550](7813666, 0xE300000000000000);
    type metadata accessor for MetalDataType();
    if (swift_dynamicCastClass())
    {
      v19 = swift_dynamicCastClassUnconditional();
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
    }

    else
    {
      type metadata accessor for MaterialXDataType();
      v22 = swift_dynamicCastClass();
      v20 = (*(**(&v57 + 1) + 136))();
      v21 = v23;
      if (v22)
      {
        lazy protocol witness table accessor for type String and conformance String();
        v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v25 = v24;

        v21 = v25;
      }
    }

    if (swift_dynamicCastClass())
    {
      v26 = swift_dynamicCastClassUnconditional();
      v28 = *(v26 + 24);
      v27 = *(v26 + 32);
    }

    else
    {
      type metadata accessor for MaterialXDataType();
      v29 = swift_dynamicCastClass();
      v28 = (*(**(&v56 + 1) + 136))(v29, v30, v31, v32);
      v27 = v33;
      if (v29)
      {
        lazy protocol witness table accessor for type String and conformance String();
        v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v35 = v34;

        v27 = v35;
      }
    }

    if (v20 == v28 && v21 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      MEMORY[0x266771550](v20, v21);

      MEMORY[0x266771550](34, 0xE100000000000000);
      v6 = 0x6562616C6C696174;
      v8 = 0xEB00000000223D6CLL;
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v9 = *(v7 + 2);
      a5 = *(v7 + 3);
    }

    else
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = *(v7 + 2);
      v36 = *(v7 + 3);
      if (v37 >= v36 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v7);
      }

      *(v7 + 2) = v37 + 1;
      v38 = &v7[16 * v37];
      *(v38 + 4) = 0xD000000000000044;
      *(v38 + 5) = 0x8000000265F326C0;
      _StringGuts.grow(_:)(21);

      MEMORY[0x266771550](v20, v21);

      MEMORY[0x266771550](0x209286E220, 0xA500000000000000);
      MEMORY[0x266771550](v28, v27);

      MEMORY[0x266771550](34, 0xE100000000000000);
      v6 = 0x6562616C6C696174;
      v8 = 0xEB00000000223D6CLL;
      v9 = *(v7 + 2);
      a5 = *(v7 + 3);
    }

    v5 = v9 + 1;
    if (v9 < a5 >> 1)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v5, 1, v7);
LABEL_23:
  *(v7 + 2) = v5;
  v39 = &v7[16 * v9];
  *(v39 + 4) = v6;
  *(v39 + 5) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  MEMORY[0x266771550](v40, v42);

  MEMORY[0x266771550](93, 0xE100000000000000);
  MEMORY[0x266771550](23328, 0xE200000000000000);
  outlined consume of NodePersonality(v43);

  outlined consume of NodePersonality(v44);

  *v45 = v54;
  v45[1] = v55;
  return result;
}

void BuiltInDefinition.InputSpec.dotLabel.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x266771550](8250, 0xE200000000000000);
  v3 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v3);
}

uint64_t BuiltInDefinition.InputSpec.dotIdentifier.getter(uint64_t a1, unint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = v3;

  MEMORY[0x266771550](v2, v4);

  return 0x5F7475706E69;
}

uint64_t protocol witness for DotLabel.dotLabel.getter in conformance BuiltInDefinition.InputSpec()
{
  v3 = *v0;

  MEMORY[0x266771550](8250, 0xE200000000000000);
  v1 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v1);

  return v3;
}

void BuiltInDefinition.OutputSpec.dotLabel.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x266771550](8250, 0xE200000000000000);
  v3 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v3);
}

uint64_t BuiltInDefinition.OutputSpec.dotIdentifier.getter(uint64_t a1, unint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = v3;

  MEMORY[0x266771550](v2, v4);

  return 0x5F74757074756FLL;
}

uint64_t SGDataTypeGraph.graph(from:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3 >> 62 == 1)
  {
    v4 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    v8 = v4[5];
    v9 = v4[6];
    v10 = v4[7];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

uint64_t SGDataTypeGraph.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *SGDataTypeGraph.edges.getter()
{
  v1 = *(v0 + 40);

  v3 = specialized Graph.sinkNodes()(v2);
  EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n = _s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(v1, v3);
  v6 = v5;
  v8 = v7;

  v63 = EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n;
  v64 = v6;
  v65 = v8;

  specialized Graph.DepthFirstEdgeIterator.next()(&v57);
  if (*(&v58 + 1))
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v53 = v59;
      v54 = v60;
      v55 = v61;
      v56 = v62;
      v51 = v57;
      v52 = v58;
      closure #1 in SGDataTypeGraph.edges.getter(&v51, v0, &v40);
      v36[2] = v53;
      v36[3] = v54;
      v36[4] = v55;
      v37 = v56;
      v36[0] = v51;
      v36[1] = v52;
      outlined destroy of [Input](v36, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v38[8] = v48;
      v38[9] = v49;
      v39 = v50;
      v38[4] = v44;
      v38[5] = v45;
      v38[6] = v46;
      v38[7] = v47;
      v38[0] = v40;
      v38[1] = v41;
      v38[2] = v42;
      v38[3] = v43;
      if (_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOg(v38) == 1)
      {
        v33 = v48;
        v34 = v49;
        v35 = v50;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = v47;
        v25 = v40;
        v26 = v41;
        v27 = v42;
        v28 = v43;
        outlined destroy of [Input](&v25, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgMR);
      }

      else
      {
        v33 = v48;
        v34 = v49;
        v35 = v50;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = v47;
        v25 = v40;
        v26 = v41;
        v27 = v42;
        v28 = v43;
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

        v18 = v29;
        v19 = v30;
        v16 = v27;
        v17 = v28;
        v24 = v35;
        v22 = v33;
        v23 = v34;
        v20 = v31;
        v21 = v32;
        v14 = v25;
        v15 = v26;
        v9[2] = v11 + 1;
        v12 = &v9[21 * v11];
        *(v12 + 3) = v15;
        *(v12 + 4) = v16;
        *(v12 + 2) = v14;
        *(v12 + 7) = v19;
        *(v12 + 8) = v20;
        *(v12 + 5) = v17;
        *(v12 + 6) = v18;
        *(v12 + 192) = v24;
        *(v12 + 10) = v22;
        *(v12 + 11) = v23;
        *(v12 + 9) = v21;
      }

      specialized Graph.DepthFirstEdgeIterator.next()(&v57);
    }

    while (*(&v58 + 1));
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  return v9;
}

void closure #1 in SGDataTypeGraph.edges.getter(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 40);
  v8 = *(v7 + 16);
  if (v6 >= v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7 + 32;
  v10 = (v9 + 88 * v6);
  v11 = v10[4];
  if (!v11)
  {
LABEL_7:
    _s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOi0_(&v40);
    v33 = v47;
    *(a3 + 128) = *&v46[16];
    *(a3 + 144) = v33;
    *(a3 + 160) = v48;
    v34 = v44;
    *(a3 + 64) = v43;
    *(a3 + 80) = v34;
    v35 = *v46;
    *(a3 + 96) = v45;
    *(a3 + 112) = v35;
    v36 = v41;
    *a3 = v40;
    *(a3 + 16) = v36;
    v37 = *&v42[16];
    *(a3 + 32) = *v42;
    *(a3 + 48) = v37;
    return;
  }

  v12 = *(result + 40);
  v13 = *(result + 5);
  if (v13 < v8)
  {
    v14 = v9 + 88 * v13;
    v15 = *(v14 + 32);
    if (v15)
    {
      v16 = *(result + 2);
      v17 = *(result + 4);
      v18 = *(result + 7);
      v19 = *(result + 8);
      v39 = *(result + 3);
      v20 = *(result + 9);
      v21 = *(result + 80);
      v49 = v3;
      v22 = v10[1];
      v24 = v10[2];
      v25 = v10[3];
      v38 = *(v14 + 16);
      v27 = *v14;
      v26 = *(v14 + 8);
      *&v40 = *v10;
      v23 = v40;
      *(&v40 + 1) = v22;
      *&v41 = v24;
      *(&v41 + 1) = v25;
      *v42 = v11;
      *&v42[8] = v5;
      *&v42[24] = v16;
      *&v43 = v39;
      *(&v43 + 1) = v17;
      *&v44 = v27;
      *(&v44 + 1) = v26;
      v45 = v38;
      *v46 = v15;
      *&v46[8] = v12;
      *&v46[24] = v18;
      *&v47 = v19;
      *(&v47 + 1) = v20;
      v48 = v21;
      destructiveProjectEnumData for NodePersonality.ShaderType();
      v28 = v47;
      *(a3 + 128) = *&v46[16];
      *(a3 + 144) = v28;
      *(a3 + 160) = v48;
      v29 = v44;
      *(a3 + 64) = v43;
      *(a3 + 80) = v29;
      v30 = *v46;
      *(a3 + 96) = v45;
      *(a3 + 112) = v30;
      v31 = v41;
      *a3 = v40;
      *(a3 + 16) = v31;
      v32 = *&v42[16];
      *(a3 + 32) = *v42;
      *(a3 + 48) = v32;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v23, v22, v24, v25, v11);
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v27, v26, v38, *(&v38 + 1), v15);

      return;
    }

    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t SGDataTypeGraph.inputLabel(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1;
}

uint64_t SGDataTypeGraph.outputLabel(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1;
}

uint64_t _s11ShaderGraph010SGDataTypeB0VAA010GenericDotB0A2aDP5labelSSvgTW_0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t protocol witness for GenericDotGraph.inputs(for:) in conformance SGDataTypeGraph(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return specialized SGDataTypeGraph.inputs(for:)(v3);
}

uint64_t protocol witness for GenericDotGraph.outputs(for:) in conformance SGDataTypeGraph(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return specialized SGDataTypeGraph.outputs(for:)(v3);
}

uint64_t protocol witness for GenericDotGraph.inputLabel(for:) in conformance SGDataTypeGraph(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1;
}

uint64_t graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = a4[5](a3, a4);
  MEMORY[0x266771550](v8);

  v52 = a2;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v9);

  v48 = 95;
  v49 = 0xE100000000000000;

  MEMORY[0x266771550](95, 0xE100000000000000);

  v10 = a4[4](a3, a4);
  v12 = v11;
  v13 = a4[6](a3, a4);
  v33 = createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v13, a1, 95, 0xE100000000000000, a3, a4);

  v14 = a4[8](a3, a4);
  v36 = createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v14, a1, 95, 0xE100000000000000, a3, a4);

  v15 = a4[7](a3, a4);
  v35 = createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(v15, a1, 95, 0xE100000000000000, a3, a4);

  v52 = a4[11](a3, a4);
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v46 = 95;
  v47 = 0xE100000000000000;
  v38 = a3;
  v39 = a4;
  v40 = partial apply for closure #1 in graphDotText<A>(representing:index:);
  v41 = &v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = AssociatedTypeWitness;
  v49 = swift_getAssociatedTypeWitness();
  v50 = AssociatedTypeWitness;
  v51 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata();
  v17 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.OutputType, @in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.InputType) -> (@owned String), v37, v17, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(528);
  MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FDC0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F2FDE0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x22202020200A0A22, 0xE800000000000000);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE10);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE50);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x22203E2D2022315FLL, 0xE800000000000000);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000017, 0x8000000265F2FE30);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x22203E2D2022325FLL, 0xE800000000000000);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000029, 0x8000000265F2FE70);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2FEA0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x2020200A3B22315FLL, 0xED00002020202020);
  v52 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  MEMORY[0x266771550](v20, v22);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000034, 0x8000000265F2FF00);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0x2020200A3B22325FLL, 0xED00002020202020);
  v52 = v35;
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  MEMORY[0x266771550](v23, v25);

  MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F2FEE0);
  MEMORY[0x266771550](v10, v12);
  MEMORY[0x266771550](0xD000000000000036, 0x8000000265F2FF40);
  MEMORY[0x266771550](v10, v12);

  MEMORY[0x266771550](0x2020200A3B22335FLL, 0xED00002020202020);
  v52 = v36;
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  MEMORY[0x266771550](v26, v28);

  MEMORY[0x266771550](0xA0A7D202020200ALL, 0xEC00000020202020);
  v52 = v34;
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  MEMORY[0x266771550](v29, v31);

  MEMORY[0x266771550](32010, 0xE200000000000000);
  return v48;
}

uint64_t thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String, @error @owned Error)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(v10, &a1[*(TupleTypeMetadata2 + 48)]);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
    a5[1] = v13;
  }

  return result;
}

uint64_t createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[9] = a1;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v10, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
}

uint64_t closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(void, void, void)@<X5>, uint64_t *a7@<X8>)
{
  v57 = a7;
  a6[12](a1, a5, a6);
  lazy protocol witness table accessor for type String and conformance String();
  v11 = MEMORY[0x277D837D0];
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = v13;

  v55 = v12;
  v56 = v14;
  v53 = 62;
  v54 = 0xE100000000000000;
  v51 = 15964;
  v52 = 0xE200000000000000;
  v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v39 = v16;
  v40 = v15;

  v17 = a6[13](a1, a5, a6);
  v37 = v18;
  v38 = v17;
  v55 = a6[9](a1, a5, a6);
  v48 = a5;
  v49 = a6;
  v50 = a2;
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v47, v19, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);

  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v35 = v24;
  v36 = v23;

  v55 = a6[10](a1, a5, a6);
  v44 = a5;
  v45 = a6;
  v46 = a2;
  swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Array();
  v26 = swift_getWitnessTable();
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:), v43, v25, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);

  v55 = v28;
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v55 = 34;
  v56 = 0xE100000000000000;
  v53 = v38;
  v54 = v37;

  MEMORY[0x266771550](a3, a4);

  MEMORY[0x266771550](v53, v54);

  MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
  MEMORY[0x266771550](v36, v35);

  MEMORY[0x266771550](2129021, 0xE300000000000000);
  MEMORY[0x266771550](v40, v39);

  MEMORY[0x266771550](2065726496, 0xE400000000000000);
  MEMORY[0x266771550](v29, v31);

  result = MEMORY[0x266771550](1562541437, 0xE400000000000000);
  v33 = v56;
  v34 = v57;
  *v57 = v55;
  v34[1] = v33;
  return result;
}

uint64_t closure #1 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = (*(a3 + 120))(a1, a2, a3);
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](62, 0xE100000000000000);
  v9 = (*(a3 + 112))(a1, a2, a3);
  MEMORY[0x266771550](v9);

  *a4 = 60;
  a4[1] = 0xE100000000000000;
  return result;
}

uint64_t closure #2 in closure #1 in createNodeStatements #1 <A>(_:) in graphDotText<A>(representing:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = (*(a3 + 136))(a1, a2, a3);
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](62, 0xE100000000000000);
  v9 = (*(a3 + 128))(a1, a2, a3);
  MEMORY[0x266771550](v9);

  *a4 = 60;
  a4[1] = 0xE100000000000000;
  return result;
}

uint64_t closure #1 in graphDotText<A>(representing:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a9 + 104);
  v39 = v14(a1, a8, a9);
  v41 = v15;

  v16 = a6;
  v17 = a7;
  MEMORY[0x266771550](v16, a7);

  v19 = v39;
  v18 = v41;
  v40 = v14(a3, a8, a9);
  v42 = v20;

  MEMORY[0x266771550](a6, v17);

  MEMORY[0x266771550](v19, v18);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  v21 = (*(a9 + 136))(a2, a8, a9);
  MEMORY[0x266771550](v21);

  MEMORY[0x266771550](25914, 0xE200000000000000);
  MEMORY[0x266771550](v40, v42);

  MEMORY[0x266771550](14882, 0xE200000000000000);
  v22 = (*(a9 + 120))(a4, a8, a9);
  MEMORY[0x266771550](v22);

  MEMORY[0x266771550](30522, 0xE200000000000000);
  v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[16 * v25];
  *(v26 + 4) = 0xD000000000000033;
  *(v26 + 5) = 0x8000000265F2FF80;
  v27 = (*(a9 + 144))(a1, a2, a3, a4, a8, a9);
  MEMORY[0x266771550](v27);

  MEMORY[0x266771550](34, 0xE100000000000000);
  v29 = *(v23 + 2);
  v28 = *(v23 + 3);
  if (v29 >= v28 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v23);
  }

  *(v23 + 2) = v29 + 1;
  v30 = &v23[16 * v29];
  *(v30 + 4) = 0x6562616C6C696174;
  *(v30 + 5) = 0xEB00000000223D6CLL;
  MEMORY[0x266771550](540945696, 0xE400000000000000);
  MEMORY[0x266771550](34, 0xE100000000000000);

  MEMORY[0x266771550](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v31 = BidirectionalCollection<>.joined(separator:)();
  v33 = v32;

  MEMORY[0x266771550](v31, v33);

  MEMORY[0x266771550](93, 0xE100000000000000);

  MEMORY[0x266771550](23328, 0xE200000000000000);

  return 34;
}

uint64_t thunk for @callee_guaranteed (@in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.OutputType, @in_guaranteed A.GenericDotGraph.NodeType, @in_guaranteed A.GenericDotGraph.InputType) -> (@owned String)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  result = a2(a1, a1 + TupleTypeMetadata[12], a1 + TupleTypeMetadata[16], a1 + TupleTypeMetadata[20]);
  *a5 = result;
  a5[1] = v10;
  return result;
}

uint64_t MetalFunctionNode.dotLabel.getter(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph13HasDebugLabel_pMd, &_s11ShaderGraph13HasDebugLabel_pMR);
  if (!swift_dynamicCast())
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    outlined destroy of [Input](&v27, &_s11ShaderGraph13HasDebugLabel_pSgMd, &_s11ShaderGraph13HasDebugLabel_pSgMR);
LABEL_5:
    v13 = (*(a2 + 24))(a1, a2);
    *&v27 = 25705;
    *(&v27 + 1) = 0xE200000000000000;
    v25 = v13;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v14);

    v12 = *(&v27 + 1);
    v10 = v27;
    goto LABEL_6;
  }

  v8 = *(&v28 + 1);
  v9 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_6:
  *&v27 = v10;
  *(&v27 + 1) = v12;
  v25 = 60;
  v26 = 0xE100000000000000;
  v23 = 40;
  v24 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v17 = v16;

  *&v27 = v15;
  *(&v27 + 1) = v17;
  v25 = 62;
  v26 = 0xE100000000000000;
  v23 = 41;
  v24 = 0xE100000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v19;

  *&v27 = v18;
  *(&v27 + 1) = v20;
  v25 = 34;
  v26 = 0xE100000000000000;
  v23 = 8796;
  v24 = 0xE200000000000000;
  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v21;
}

uint64_t createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v6 = (a1 + 32);
    do
    {
      closure #1 in createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v6, a2, v13);
      v7 = v13[0];
      v8 = v13[1];
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t closure #1 in createNodeStatements #1 (_:) in createDotText(representing:inputNodeIDs:outputNodeIDs:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v33 = v4;
    v34 = a3;
    v36 = MEMORY[0x277D84F90];
    v10 = v8;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v12 = 0;
    v35 = *(v10 + 16);
    while (v35 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v13);

      MEMORY[0x266771550](2367550, 0xE300000000000000);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v14);

      v16 = *(v36 + 16);
      v15 = *(v36 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v12;
      *(v36 + 16) = v16 + 1;
      v17 = v36 + 16 * v16;
      *(v17 + 32) = 1735549244;
      *(v17 + 40) = 0xE400000000000000;
      if (v9 == v12)
      {

        a3 = v34;
        v4 = v33;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    _StringGuts.grow(_:)(32);

    v21 = v4[3];
    v22 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v21);
    (*(v22 + 24))(v21, v22);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v23);

    MEMORY[0x266771550](25705, 0xE200000000000000);

    MEMORY[0x266771550](0x6C6562616C5B2022, 0xEC0000007B7B223DLL);
    MEMORY[0x266771550](v18, v20);

    MEMORY[0x266771550](0x6C757365723C7C7DLL, 0xEB00000000203E74);
    v24 = v4[3];
    v25 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v24);
    v26 = MetalFunctionNode.dotLabel.getter(v24, v25);
    MEMORY[0x266771550](v26);

    MEMORY[0x266771550](8829, 0xE200000000000000);
    v27 = v4[3];
    v28 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v27);
    v29 = (*(v28 + 24))(v27, v28);
    v30 = *(a2 + 16);
    v31 = (a2 + 32);
    while (v30)
    {
      v32 = *v31++;
      --v30;
      if (v32 == v29)
      {
        MEMORY[0x266771550](0x746469776E657020, 0xEB00000000323D68);
        break;
      }
    }

    result = MEMORY[0x266771550](93, 0xE100000000000000);
    *a3 = 34;
    a3[1] = 0xE100000000000000;
  }

  return result;
}

uint64_t closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *((*(v8 + 48))(v7, v8) + 16);

  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v13 = (*(v12 + 48))(v11, v12);
  v14 = *(v13 + 16);
  if (!v14)
  {

LABEL_15:
    *a4 = MEMORY[0x277D84F90];
    return result;
  }

  v30 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 0;
  v16 = *(v13 + 16);
  if (v16 >= v14)
  {
    v16 = v14;
  }

  v27 = v16;
  while (v27 != v15)
  {
    if (v15 >= *(v13 + 16))
    {
      goto LABEL_18;
    }

    result = closure #1 in closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v15, *(v13 + 8 * v15 + 32), a2, v5, a3);
    if (v4)
    {
    }

    v18 = result;
    v19 = v17;
    v20 = v13;
    v21 = v5;
    v22 = v14;
    v24 = *(v30 + 16);
    v23 = *(v30 + 24);
    if (v24 >= v23 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
    }

    ++v15;
    *(v30 + 16) = v24 + 1;
    v25 = v30 + 16 * v24;
    *(v25 + 32) = v18;
    *(v25 + 40) = v19;
    v14 = v22;
    v26 = v22 == v15;
    v5 = v21;
    v13 = v20;
    v4 = 0;
    if (v26)
    {

      *a4 = v30;
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a3;
  (*(*a3 + 272))(v30, a2);
  if (!v5)
  {
    _StringGuts.grow(_:)(29);

    v28 = 34;
    v29 = 0xE100000000000000;
    v27[0] = 25705;
    v27[1] = 0xE200000000000000;
    v33 = a2;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v11);

    MEMORY[0x266771550](25705, 0xE200000000000000);

    MEMORY[0x266771550](0x746C757365723A22, 0xEF22203E2D20653ALL);
    v12 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v12);
    v14 = (*(v13 + 24))(v12, v13);
    v27[1] = 0xE200000000000000;
    v33 = v14;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v15);

    MEMORY[0x266771550](25705, 0xE200000000000000);

    MEMORY[0x266771550](0x6772613A22, 0xE500000000000000);
    v27[0] = a1;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v16);

    MEMORY[0x266771550](30522, 0xE200000000000000);
    v10 = 34;
    v17 = *(*a5 + 16);
    v18 = (*a5 + 32);
    while (v17)
    {
      v19 = *v18++;
      --v17;
      if (v19 == a2)
      {
        goto LABEL_7;
      }
    }

    _StringGuts.grow(_:)(17);

    strcpy(v27, " [headlabel=");
    HIWORD(v27[1]) = -4864;
    v20 = v31;
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v22 = (*(v21 + 16))(v20, v21);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);

    MEMORY[0x266771550](v23, v24);

    MEMORY[0x266771550](23842, 0xE200000000000000);
    MEMORY[0x266771550](v27[0], v27[1]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph14FunctionNodeIDVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = a2;
    specialized Array.append<A>(contentsOf:)(inited);
    v10 = v28;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v10;
}

void specialized Graph.DepthFirstEdgeIterator.next()(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = *v1;
  if (!*(v3 + 2))
  {
LABEL_22:
    v31 = v40;
    *(v40 + 80) = 0;
    v31[3] = 0u;
    v31[4] = 0u;
    v31[1] = 0u;
    v31[2] = 0u;
    *v31 = 0u;
    return;
  }

  v41 = v2;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = *(v3 + 2);
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v4 = *(v3 + 2);
      if (!v4)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    v5 = v4 - 1;
    v6 = &v3[16 * v5];
    v8 = *(v6 + 4);
    v7 = *(v6 + 5);
    *(v3 + 2) = v5;
    *v2 = v3;
    v9 = v2[1];
    if (*(v9 + 2))
    {
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v8);
      MEMORY[0x266772770](v7);
      v10 = Hasher._finalize()();
      v11 = -1 << v9[32];
      v12 = v10 & ~v11;
      if ((*&v9[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12))
      {
        v13 = ~v11;
        do
        {
          v14 = (*(v9 + 6) + 16 * v12);
          v16 = *v14;
          v15 = v14[1];
          if (v16 == v8 && v15 == v7)
          {
            goto LABEL_3;
          }

          v12 = (v12 + 1) & v13;
        }

        while (((*&v9[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) != 0);
      }
    }

    specialized Set._Variant.insert(_:)(&v52, v8, v7);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = v2[2];
    if (v8 >= *(v18 + 16))
    {
      goto LABEL_28;
    }

    v42 = v18 + 32;
    v19 = (v18 + 32 + 88 * v8);
    v20 = v19[4];
    if (v20)
    {
      v22 = v19[2];
      v21 = v19[3];
      v24 = *v19;
      v23 = v19[1];
      specialized Graph.Node.subscript.getter(v7, *v19, v22, v55);
      v26 = v55[0];
      v25 = v55[1];
      v27 = v55[2];
      v44 = v57;
      v45 = v56;
      v43 = v58;

      v28 = v22;
      v2 = v41;
      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v24, v23, v28, v21, v20);
      if (v56)
      {
        break;
      }
    }

LABEL_3:
    v3 = *v2;
    if (!*(*v2 + 2))
    {
      goto LABEL_22;
    }
  }

  v59[0] = v26;
  v59[1] = v25;
  v59[2] = v27;
  v59[3] = v45;
  v59[4] = v44;
  v60 = v43 & 1;
  specialized Graph.edge(to:)(v59, v18, &v52);
  v30 = *(&v53 + 1);
  if (!*(&v53 + 1))
  {
    outlined destroy of [Input](v55, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    v48 = *v54;
    v49 = *&v54[16];
    v50 = *&v54[32];
    v51 = v54[48];
    v46 = v52;
    v47 = v53;
    outlined destroy of [Input](&v46, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    goto LABEL_3;
  }

  v32 = v52;
  v33 = v53;
  v34 = *v54;
  v46 = v52;
  v47 = v53;
  *&v48 = *v54;
  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v52 < *(v18 + 16))
  {
    v35 = *(v42 + 88 * v52 + 72);
    MEMORY[0x28223BE20](v29);
    v39[2] = &v46;

    v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(partial apply for specialized closure #2 in Graph.Adjacent.init(_:), v39, v35);

    specialized Array.append<A>(contentsOf:)(v36, v37);
    outlined destroy of [Input](v55, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    v38 = v40;
    *v40 = v32;
    *(v38 + 16) = v33;
    *(v38 + 24) = v30;
    *(v38 + 32) = v34;
    *(v38 + 40) = *&v54[8];
    *(v38 + 56) = *&v54[24];
    *(v38 + 65) = *&v54[33];
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t specialized Graph.sinkNodes()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v24 = MEMORY[0x277D84F90];
    while (v2 < v1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_25;
      }

      v5 = (v3 + 88 * v2);
      v6 = v5[4];
      ++v2;
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *v5;
        v10 = v5[1];
        v11 = v5[2];
        v12 = v5[3];
        v13 = v5[6];
        v14 = v5[7];
        v15 = *(v14 + 16);
        v16 = v14 + 32;
        while (v15 != v7)
        {
          if (v7 >= *(v13 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v17 = *(v16 + 8 * v7++);
          v18 = *(v17 + 16);
          v19 = __OFADD__(v8, v18);
          v8 += v18;
          if (v19)
          {
            goto LABEL_23;
          }
        }

        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, v10, v11, v12, v6);
        if (v8)
        {
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
            v24 = result;
          }

          v21 = v24[2];
          v20 = v24[3];
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v24);
            v22 = v21 + 1;
            v24 = result;
          }

          v24[2] = v22;
          v23 = &v24[5 * v21];
          v23[4] = v9;
          v23[5] = v10;
          v23[6] = v11;
          v23[7] = v12;
          v23[8] = v6;
        }
      }

      if (v4 == v1)
      {
        return v24;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

unint64_t lazy protocol witness table accessor for type DotError and conformance DotError()
{
  result = lazy protocol witness table cache variable for type DotError and conformance DotError;
  if (!lazy protocol witness table cache variable for type DotError and conformance DotError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DotError and conformance DotError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DotError and conformance DotError;
  if (!lazy protocol witness table cache variable for type DotError and conformance DotError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DotError and conformance DotError);
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

double specialized closure #1 in Graph.Node.outputs.getter@<D0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  specialized Graph.Node.subscript.getter(*a1, *a2, a2[2], v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

char *_s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(char *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = result + 32;
  v4 = (a2 + 64);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *v4;
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v23[0] = v8;
    v23[1] = v7;
    v24 = v6;
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(v2 + 2))
    {
      goto LABEL_23;
    }

    v22 = &v20;
    v9 = *&v21[88 * v8 + 72];
    MEMORY[0x28223BE20](result);
    v19[2] = v23;

    v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11ShaderGraph10OrderedSetVySiG_AF0E5IndexVs5NeverOTg5Tf4nx_n(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v19, v9);

    v11 = *(v10 + 16);
    v12 = *(v5 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v5 + 3) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v14, 1, v5);
      v5 = result;
      if (*(v10 + 16))
      {
LABEL_16:
        v15 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v15 < v11)
        {
          goto LABEL_26;
        }

        memcpy(&v5[16 * v15 + 32], (v10 + 32), 16 * v11);

        if (v11)
        {
          v16 = *(v5 + 2);
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_27;
          }

          *(v5 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_25;
    }

LABEL_4:
    v4 += 5;
    if (!--v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t specialized Graph.Node.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v4 = a3 >> 62;
  if (a3 >> 62)
  {
    if (v4 != 1)
    {
LABEL_10:
      a2 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
LABEL_13:
      *a4 = a2;
      *(a4 + 8) = v9;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      return result;
    }

    v5 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = 40;
  }

  else
  {
    v6 = 32;
    v5 = a3;
  }

  if (*(*(v5 + v6) + 16) <= result)
  {
    goto LABEL_10;
  }

  v8 = a4;
  if (!v4)
  {
    a4 = *(a3 + 32);
    if (*(a4 + 16) <= result)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_12:
    v14 = a4 + 32 * result;
    v10 = *(v14 + 32);
    v11 = *(v14 + 40);
    v12 = *(v14 + 48);
    v13 = *(v14 + 56);
    v15 = result;

    v9 = v15;
    a4 = v8;
    goto LABEL_13;
  }

  a4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  if (*(a4 + 16) > result)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t specialized Graph.Node.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v4 = a3 >> 62;
  if (a3 >> 62)
  {
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    v5 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = 48;
  }

  else
  {
    v6 = 40;
    v5 = a3;
  }

  if (*(*(v5 + v6) + 16) <= result)
  {
LABEL_11:
    a2 = 0;
    result = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_15:
    *a4 = a2;
    a4[1] = result;
    a4[2] = v8;
    a4[3] = v9;
    a4[4] = v10;
    return result;
  }

  v7 = a4;
  if (!v4)
  {
    a4 = *(a3 + 40);
    if (a4[2] <= result)
    {
      __break(1u);
LABEL_10:
      if (!result)
      {
        v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = 0xE300000000000000;
        v8 = 7632239;
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_13:
    v11 = a2;
    v12 = &a4[3 * result];
    v8 = v12[4];
    v9 = v12[5];
    v10 = v12[6];
    v13 = result;

    result = v13;
    a4 = v7;
    a2 = v11;
    goto LABEL_15;
  }

  a4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  if (a4[2] > result)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized ShaderGraphNode.dotLabel.getter(unint64_t a1)
{
  NodePersonality.dotLabel.getter(a1);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](28252, 0xE200000000000000);

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = v3;

  MEMORY[0x266771550](v2, v4);

  return 1701080942;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a1 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    result = closure #4 in createDotText(representing:inputNodeIDs:outputNodeIDs:)(v6, a2, a3, &v18);
    if (v3)
    {

      return v7;
    }

    v9 = v18;
    v10 = *(v18 + 16);
    v11 = *(v7 + 16);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v12 <= *(v7 + 24) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v7);
      v7 = result;
      if (*(v9 + 16))
      {
LABEL_15:
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v10)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v7 + 16);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_25;
          }

          *(v7 + 16) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 5;
    if (!--v4)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.subgraphs()(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_22:

    return v6;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = MEMORY[0x277D84F90];
  v22 = *(result + 16);
  v23 = result;
  while (v4 < *(v2 + 16))
  {
    v7 = *(v5 - 16);
    v8 = MEMORY[0x277D84F90];
    if (v7 >> 62 == 1)
    {
      v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph010SGDataTypeE0VGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_265F1F670;
      *(v14 + 32) = v9;
      *(v14 + 40) = v24;
      *(v14 + 48) = v10;
      *(v14 + 56) = v11;
      *(v14 + 64) = v13;
      *(v14 + 72) = v12;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v25 = specialized SGDataTypeGraph.subgraphs()(v12);

      v3 = v22;

      v2 = v23;
      specialized Array.append<A>(contentsOf:)(v25);

      v8 = v14;
    }

    v15 = *(v8 + 16);
    v16 = *(v6 + 16);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= *(v6 + 24) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v18, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_17:
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v15)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v6 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_27;
          }

          *(v6 + 16) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v4;
    v5 += 40;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.Personality.dotLabel.getter(unint64_t a1)
{
  if ((a1 >> 62) > 1)
  {
    SGDataTypeStorage.valueString.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    MEMORY[0x266771550](2112092, 0xE300000000000000);
    SGDataType.stringValue.getter();
    v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v5 = v4;

    MEMORY[0x266771550](v3, v5);

    return v2;
  }

  else
  {
    lazy protocol witness table accessor for type String and conformance String();
    return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  }
}

uint64_t specialized SGDataTypeGraph.sourceNodes.getter(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = *(result + 16);
  if (!v2)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = -v2;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = *(result + 16);
    if (v3 > v7)
    {
      v7 = v3;
    }

    v8 = -v7;
    v9 = (v4 + 40 * v3++);
    while (1)
    {
      if (v8 + v3 == 1)
      {
        __break(1u);
        return result;
      }

      v10 = *(v9 - 2);
      v11 = v10 >> 62;
      if (!(v10 >> 62))
      {
        v12 = *(v9 - 2);
        v13 = 32;
        goto LABEL_12;
      }

      if (v11 != 1)
      {
        break;
      }

      v12 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 40;
LABEL_12:
      if (!*(*(v12 + v13) + 16))
      {
        v14 = v11 ? (v10 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v10 + 40;
        if (*(*v14 + 16))
        {
          v23 = v4;
          v15 = result;
          goto LABEL_19;
        }
      }

      ++v3;
      v9 += 5;
      if (v5 + v3 == 1)
      {
        goto LABEL_26;
      }
    }

    v23 = v4;
    v15 = result;
LABEL_19:
    v17 = *(v9 - 4);
    v16 = *(v9 - 3);
    v19 = *(v9 - 1);
    v18 = *v9;

    v24 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
    }

    result = v15;
    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      result = v15;
    }

    *(v6 + 16) = v21 + 1;
    v22 = (v6 + 40 * v21);
    v4 = v23;
    v22[4] = v24;
    v22[5] = v16;
    v22[6] = v10;
    v22[7] = v19;
    v22[8] = v18;
  }

  while (v5 + v3);
LABEL_26:

  return v6;
}

uint64_t specialized SGDataTypeGraph.sinkNodes.getter(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 64;
    v5 = -v2;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(result + 16);
      if (v3 > v7)
      {
        v7 = v3;
      }

      v8 = -v7;
      v9 = (v4 + 40 * v3++);
      while (1)
      {
        if (v8 + v3 == 1)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 - 2);
        v11 = v10 >> 62;
        if (!(v10 >> 62))
        {
          v12 = *(v9 - 2);
          v13 = 40;
          goto LABEL_12;
        }

        if (v11 == 1)
        {
          break;
        }

LABEL_6:
        ++v3;
        v9 += 5;
        if (v5 + v3 == 1)
        {
          goto LABEL_24;
        }
      }

      v12 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 48;
LABEL_12:
      if (*(*(v12 + v13) + 16))
      {
        goto LABEL_6;
      }

      v14 = v11 ? (v10 & 0x3FFFFFFFFFFFFFFFLL) + 40 : v10 + 32;
      if (!*(*v14 + 16))
      {
        goto LABEL_6;
      }

      v24 = result;
      v15 = *(v9 - 4);
      v22 = *(v9 - 3);
      v17 = *(v9 - 1);
      v16 = *v9;

      v23 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      v20 = v19 + 1;
      result = v24;
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        result = v24;
      }

      *(v6 + 16) = v20;
      v21 = (v6 + 40 * v19);
      v21[4] = v23;
      v21[5] = v22;
      v21[6] = v10;
      v21[7] = v17;
      v21[8] = v16;
      if (!(v5 + v3))
      {
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:

  return v6;
}

uint64_t specialized SGDataTypeGraph.interiorNodes.getter(uint64_t a1)
{
  result = specialized Graph.nodes.getter(a1);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 64;
    v5 = -v2;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *(result + 16);
      if (v3 > v7)
      {
        v7 = v3;
      }

      v8 = -v7;
      v9 = (v4 + 40 * v3++);
      while (1)
      {
        if (v8 + v3 == 1)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 - 2);
        v11 = v10 >> 62;
        if (!(v10 >> 62))
        {
          v12 = *(v9 - 2);
          v13 = 32;
          goto LABEL_12;
        }

        if (v11 == 1)
        {
          break;
        }

LABEL_6:
        ++v3;
        v9 += 5;
        if (v5 + v3 == 1)
        {
          goto LABEL_24;
        }
      }

      v12 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = 40;
LABEL_12:
      if (!*(*(v12 + v13) + 16))
      {
        goto LABEL_6;
      }

      v14 = v11 ? (v10 & 0x3FFFFFFFFFFFFFFFLL) + 48 : v10 + 40;
      if (!*(*v14 + 16))
      {
        goto LABEL_6;
      }

      v24 = result;
      v16 = *(v9 - 4);
      v15 = *(v9 - 3);
      v18 = *(v9 - 1);
      v17 = *v9;

      v23 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      }

      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      v21 = v20 + 1;
      result = v24;
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v21 = v20 + 1;
        result = v24;
      }

      *(v6 + 16) = v21;
      v22 = (v6 + 40 * v20);
      v22[4] = v16;
      v22[5] = v23;
      v22[6] = v10;
      v22[7] = v18;
      v22[8] = v17;
      if (!(v5 + v3))
      {
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:

  return v6;
}

uint64_t specialized SGDataTypeGraph.inputs(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v1;
  v6 = *(a1 + 32);
  MEMORY[0x28223BE20](a1);
  v4[2] = v5;
  return specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v4, 0, v2);
}

uint64_t specialized SGDataTypeGraph.outputs(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v1;
  v6 = *(a1 + 32);
  MEMORY[0x28223BE20](a1);
  v4[2] = v5;
  return specialized Sequence.compactMap<A>(_:)(_s11ShaderGraph0B0V4NodeV7outputsSayAC6OutputVyx_GGvgAISgSiXEfU_AA010SGDataTypeB0V11PersonalityV_TG5TA_0, v4, 0, v2);
}

uint64_t specialized SGDataTypeGraph.inputIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  MEMORY[0x266771550](v5, v7);

  return a3;
}

double _s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_G_AC6OutputVyAI_GAjC5InputVyAI_GtSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
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

double _s11ShaderGraph0B0V4NodeV7outputsSayAC6OutputVyx_GGvgAISgSiXEfU_AA010SGDataTypeB0V11PersonalityV_TG5TA_0@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Graph.Node.subscript.getter(*a1, **(v2 + 16), *(*(v2 + 16) + 16), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t OrderedDictionary.makeIterator()(uint64_t a1)
{

  return a1;
}

uint64_t OrderedDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = *(v2 + 24);
  if (v13 >= ContiguousArray.count.getter())
  {
    v19 = swift_getTupleTypeMetadata2();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }

  else
  {
    v22 = a2;
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    *(v2 + 24) = v13 + 1;
    (*(v7 + 32))(v9, v12, TupleTypeMetadata2);
    v14 = *(TupleTypeMetadata2 + 48);
    v15 = swift_getTupleTypeMetadata2();
    v16 = *(v15 + 48);
    v17 = v22;
    (*(*(v4 - 8) + 32))(v22, v9, v4);
    (*(*(v5 - 8) + 32))(v17 + v16, &v9[v14], v5);
    return (*(*(v15 - 8) + 56))(v17, 0, 1, v15);
  }
}

uint64_t OrderedDictionary.Iterator._base.getter(uint64_t a1)
{

  return a1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

uint64_t type metadata instantiation function for OrderedDictionary.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OrderedDictionary.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for OrderedDictionary.Iterator(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static OrderedSet.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OrderedSet(0, a5, a6, a4);
  swift_getWitnessTable();
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v55 = MEMORY[0x277D84F90];
  v57 = *(a1 + 16);
  v58 = a1 + 32;
  while (v4 < v2)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_64;
    }

    v7 = v5 + 56 * v4;
    v9 = *v7;
    v8 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = *(v7 + 40);
    v14 = *(v7 + 48);
    ++v4;
    v77[0] = v9;
    v77[1] = v8;
    v80 = v8;
    v68 = v10;
    v77[2] = v10;
    v77[3] = v11;
    v62 = v12;
    v77[4] = v12;
    v63 = v13;
    v78 = v13;
    v64 = v14;
    v79 = v14;
    v15 = v3[5];
    v71 = v3[4];
    v72 = v15;
    v16 = v3[3];
    v70[2] = v3[2];
    v70[3] = v16;
    *(v76 + 9) = *(v3 + 153);
    v17 = v3[9];
    v75 = v3[8];
    v76[0] = v17;
    v18 = v3[7];
    v73 = v3[6];
    v74 = v18;
    v19 = v3[1];
    v70[0] = *v3;
    v70[1] = v19;
    v20 = v19;
    v21 = *(&v70[0] + 1) + 32;
    v22 = *(*(&v70[0] + 1) + 16);
    if (*&v70[0])
    {
      v23 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v21, v22, *&v70[0] + 16, *&v70[0] + 32);
      if (v24)
      {
        goto LABEL_16;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_65;
      }

LABEL_8:
      if (v23 >= *(v20 + 16))
      {
        goto LABEL_66;
      }

      v25 = (v20 + 48 * v23);
      v27 = v25[7];
      v26 = v25[8];
      v28 = v25[9];
      v29 = *(v26 + 16);
      v65 = v11;
      v61 = v6;
      if (!v27)
      {
        v59 = v25[9];
        v60 = v6;

        if (!v29)
        {
          outlined init with copy of UserGraph(v70, v69);

LABEL_45:

          v3 = a2;
          v2 = v57;
          v5 = v58;
          v4 = v6;
          goto LABEL_46;
        }

        v66 = v29;
        outlined init with copy of UserGraph(v70, v69);

        v33 = 0;
        v34 = (v26 + 80);
        while (2)
        {
          if (*(v34 - 6) == v9)
          {
            v35 = *(v34 - 4);
            v36 = *(v34 - 3);
            v67 = *(v34 - 2);
            v37 = *(v34 - 8);
            v38 = *v34;
            v39 = *(**(v34 - 5) + 128);

            if (v39(v80))
            {
              if (v35 == v68 && v36 == v65)
              {

                v29 = v66;
                if (v37)
                {
                  goto LABEL_29;
                }

                goto LABEL_34;
              }

              v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v29 = v66;
              if (v41)
              {
                if (v37)
                {
LABEL_29:
                  v42 = v63;
                  if (v38 != v64)
                  {
                    v42 = 0;
                  }

                  if (v42)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_20;
                }

LABEL_34:
                v43 = v63 ^ 1;
                if (v67 != v62)
                {
                  v43 = 0;
                }

                if (v43 == 1 && v38 == v64)
                {
LABEL_38:
                  v3 = a2;
                  v31 = v59;
                  v4 = v60;
                  goto LABEL_40;
                }
              }
            }

            else
            {

              v29 = v66;
            }
          }

LABEL_20:
          v34 += 7;
          if (v29 == ++v33)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      outlined init with copy of UserGraph(v70, v69);

      v30 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v77, v26 + 32, v29, v27 + 16, v27 + 32);
      v31 = v28;
      if (v32)
      {

        v5 = v58;
LABEL_46:

        outlined destroy of UserGraph(v70);

        v6 = v61;
        goto LABEL_48;
      }

      v33 = v30;
      if (v30 < 0)
      {
        goto LABEL_67;
      }

LABEL_40:
      if (v33 >= *(v31 + 16))
      {
        goto LABEL_68;
      }

      v44 = (v31 + 56 * v33);
      v46 = v44[4];
      v45 = v44[5];
      v48 = v44[6];
      v47 = v44[7];
      outlined copy of Output?(v46, v45, v48, v47);

      if (!v45)
      {
        outlined destroy of UserGraph(v70);

        v2 = v57;
        v5 = v58;
        v6 = v61;
        goto LABEL_48;
      }

      outlined consume of Output?(v46, v45, v48, v47);
      if (v46 == -7)
      {

        outlined destroy of UserGraph(v70);

        v2 = v57;
        v5 = v58;
        v6 = v61;
        goto LABEL_48;
      }

      v6 = v61;
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v46 >= *(v71 + 16))
      {
        goto LABEL_70;
      }

      v49 = *(v71 + 48 * v46 + 32);

      outlined copy of NodePersonality(v49);

      outlined destroy of UserGraph(v70);
      if (v49 >> 61 || *(v49 + 80) != 6)
      {
        outlined consume of NodePersonality(v49);

        v2 = v57;
        v5 = v58;
        goto LABEL_49;
      }

      v50 = *(v49 + 16);
      v51 = *(v49 + 24);
      outlined copy of SGDataTypeStorage(v50, v51, *(v49 + 32), *(v49 + 40), *(v49 + 48), *(v49 + 56), *(v49 + 64), *(v49 + 72), 6);
      outlined consume of NodePersonality(v49);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
      }

      v2 = v57;
      v5 = v58;
      v53 = v55[2];
      v52 = v55[3];
      if (v53 >= v52 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v55);
      }

      v55[2] = v53 + 1;
      v54 = &v55[4 * v53];
      v54[4] = v68;
      v54[5] = v65;
      v54[6] = v50;
      v54[7] = v51;
      if (v61 == v57)
      {
        return;
      }
    }

    else
    {
      if (v22)
      {
        v23 = 0;
        while (*(v21 + 8 * v23) != v9)
        {
          if (v22 == ++v23)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_8;
      }

LABEL_16:

LABEL_48:

LABEL_49:
      if (v6 == v2)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, _OWORD *a2, char **a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 6)
    {
      v9 = *(i - 1);
      v8 = *i;
      v10 = i[1];
      v11 = *(i + 32);
      v12[0] = v9;
      v12[1] = v8;
      v12[2] = v10;
      v13 = *(i + 1);
      v14 = v11;
      outlined copy of NodePersonality(v9);

      closure #2 in UserGraph.replaceCreateSamplerNodes()(v12, a2, a3);
      if (v3)
      {
        break;
      }

      outlined consume of NodePersonality(v9);

      if (!--v4)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v9);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.replaceCreateSamplerNodes()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 64);
  v5 = *(v4 + 16);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v6 < v5)
  {
    v8 = (v4 + 72 + 48 * v6);
    v9 = v6;
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v10 = *(v8 - 2);
      if (v10 != -7)
      {
        break;
      }

      ++v9;
      v8 += 48;
      if (v5 == v9)
      {
        goto LABEL_15;
      }
    }

    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_19;
    }

    if (*(v8 - 5) == 0xE000000000000008)
    {
      v11 = *(v8 - 3);
      v20 = *(v8 - 1);
      v19 = *v8;
      v18 = *(v8 - 4);

      v21 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1);
        v7 = v21;
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v16 = *(v7 + 2);
        v17 = v13 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v13 = v16;
        v14 = v17;
        v7 = v21;
      }

      *(v7 + 2) = v14;
      v15 = &v7[48 * v13];
      *(v15 + 4) = 0xE000000000000008;
      *(v15 + 5) = v18;
      *(v15 + 6) = v11;
      *(v15 + 7) = v10;
      *(v15 + 8) = v20;
      v15[72] = v19;
    }
  }

LABEL_15:

  v21 = MEMORY[0x277D84F90];
  specialized Sequence.forEach(_:)(v7, v3, &v21);

  if (!v2)
  {
    specialized Sequence.forEach(_:)(v21, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.replaceWellKnownConstants()()
{
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AC0cD4NodeVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = *(*(v0 + 64) + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    while (v4 < v2)
    {
      v7 = v5 + 48 * v4;
      v8 = *(v7 + 24);
      if (v8 == -7)
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_14;
        }

        if (v4 >= v2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_15;
        }

        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *v7;
        v12 = *(v7 + 40);
        v13 = *(v7 + 32);
        v14[0] = v11;
        v14[1] = v9;
        v14[2] = v10;
        v14[3] = v8;
        v14[4] = v13;
        v15 = v12;
        outlined copy of NodePersonality(v11);

        closure #1 in UserGraph.replaceWellKnownConstants()(v14, &v16, v0);
        outlined consume of NodePersonality(v11);
        if (v1)
        {

          goto LABEL_12;
        }

        if (v4 >= v2)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Key()
{
  v1 = v0[3];
  v8 = v0[2];
  v9 = v1;
  v10 = *(v0 + 64);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)(v5);
  (*(*v3 + 120))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Key(uint64_t a1)
{
  v3 = *(v1 + 72);
  SGDataTypeStorage.hash(into:)(a1);
  return (*(*v3 + 120))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Key(uint64_t a1)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v4 = *(v1 + 9);
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)(v6);
  (*(*v4 + 120))(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Key(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v10 = a1[4].i8[0];
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a1[4].i64[1];
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v12 = a2[4].i8[0];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[4].i64[1];
  if (specialized static SGDataTypeStorage.== infix(_:_:)(v9, v11))
  {
    return (*(*v4 + 128))(v7) & 1;
  }

  else
  {
    return 0;
  }
}

void *one-time initialization function for wellKnownConstantNodeData()
{
  result = createWellKnownConstantNodeData()();
  wellKnownConstantNodeData._rawValue = result;
  return result;
}

uint64_t createWellKnownConstantNodeData()()
{
  if (one-time initialization token for wellKnownConstantMap != -1)
  {
    swift_once();
  }

  rawValue = wellKnownConstantMap._rawValue;
  v1 = *(wellKnownConstantMap._rawValue + 2);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v31 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v31;
    v3 = rawValue + 128;
    do
    {
      v4 = *(v3 - 12);
      v24[0] = *(v3 - 5);
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v25 = *(v3 - 16);
      v24[3] = v7;
      v24[1] = v5;
      v24[2] = v6;
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = *(v3 - 5);
      v11 = *(v3 - 4);
      v12 = *(v3 - 3);
      v13 = *(v3 - 2);
      LOBYTE(v30) = *(v3 - 16);
      v28 = v12;
      v29 = v13;
      v26 = v10;
      v27 = v11;

      outlined init with copy of SGDataTypeStorage(v24, v23);
      v31 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);

      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v2 = v31;
      }

      *(v2 + 16) = v15 + 1;
      v16 = v2 + 96 * v15;
      *(v16 + 32) = v26;
      v17 = v27;
      v18 = v29;
      v19 = v30;
      *(v16 + 64) = v28;
      *(v16 + 80) = v18;
      *(v16 + 48) = v17;
      *(v16 + 96) = v19;
      *(v16 + 104) = v4;
      *(v16 + 112) = v9;
      *(v16 + 120) = v8;
      v3 += 14;
      --v1;
    }

    while (v1);
  }

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMR);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  *&v26 = v20;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v21, 1, &v26);

  return v26;
}

uint64_t closure #2 in UserGraph.replaceCreateSamplerNodes()(uint64_t a1, _OWORD *a2, char **a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v39 = *a1;
  v40 = *(a1 + 24);
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  specialized Sequence.compactMap<A>(_:)(v4, a2);
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  *&v46 = v7;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v8, 1, &v46);
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v44 = v4;
  v45 = v5;
  v80[4] = 0;

  v9 = v46;
  if (one-time initialization token for constantCreateSamplerFunctionNameToMatchingArguments != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    rawValue = constantCreateSamplerFunctionNameToMatchingArguments._rawValue;
    v11 = constantCreateSamplerFunctionNameToMatchingArguments._rawValue + 64;
    v12 = 1 << *(constantCreateSamplerFunctionNameToMatchingArguments._rawValue + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(constantCreateSamplerFunctionNameToMatchingArguments._rawValue + 8);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    if (v14)
    {
      break;
    }

LABEL_10:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
      }

      v14 = *&v11[8 * v17];
      ++v16;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v17 = v16;
LABEL_13:
    v18 = (rawValue[6] + 16 * (__clz(__rbit64(v14)) | (v17 << 6)));
    v19 = *v18;
    v20 = v18[1];

    if (specialized closure #2 in closure #2 in UserGraph.replaceCreateSamplerNodes()(v21, v9))
    {
      break;
    }

    v14 &= v14 - 1;

    v16 = v17;
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  v24 = static MetalDataType.sampler;
  *(v23 + 32) = static MetalDataType.sampler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = 7632239;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v24;
  swift_retain_n();
  UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v23 | 0x2000000000000000, &v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  specialized ShaderGraphNode.output(labeled:)(&v52, 7632239, 0xE300000000000000, v45);
  if (!v53)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v46 = v39;
    *(&v46 + 1) = v44;
    *v47 = v45;
    *&v47[8] = v40;
    *&v47[16] = v41;
    v47[24] = v42;
    _print_unlocked<A, B>(_:_:)();
    v32 = v48;
    v33 = v49;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v34 = 14;
    *(v34 + 8) = v32;
    *(v34 + 16) = v33;
    swift_willThrow();
    v80[0] = v50;
    outlined destroy of NodePersonality(v80);
    v79 = *(&v50 + 1);
    outlined destroy of [Input](&v79, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v78 = v51[0];
    v35 = &v78;
LABEL_28:
    outlined destroy of [Input](v35, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  v66[0] = v52;
  v66[1] = v53;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v77 = v51[0];
  specialized ShaderGraphNode.output(labeled:)(&v57, 7632239, 0xE300000000000000, v51[0]);
  if (!v58)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v46 = v50;
    *v47 = *v51;
    *&v47[9] = *(&v51[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v36 = v48;
    v37 = v49;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v38 = 14;
    *(v38 + 8) = v36;
    *(v38 + 16) = v37;
    swift_willThrow();

    v70 = v67;
    outlined destroy of String(&v70);
    v76 = v50;
    outlined destroy of NodePersonality(&v76);
    v75 = *(&v50 + 1);
    outlined destroy of [Input](&v75, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v35 = &v77;
    goto LABEL_28;
  }

  v62[0] = v57;
  v62[1] = v58;
  v63 = v59;
  v64 = v60;
  v65 = v61;
  UserGraph.moveEdges(from:to:)(v66, v62);

  v72 = v63;
  outlined destroy of String(&v72);

  v71 = v67;
  outlined destroy of String(&v71);
  v26 = *a3;
  outlined copy of NodePersonality(v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    *a3 = v26;
  }

  v29 = *(v26 + 2);
  v28 = *(v26 + 3);
  if (v29 >= v28 >> 1)
  {
    *a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
  }

  v74 = v50;
  outlined destroy of NodePersonality(&v74);
  v73 = *(&v50 + 1);
  outlined destroy of [Input](&v73, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v77, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v30 = *a3;
  *(v30 + 2) = v29 + 1;
  v31 = &v30[48 * v29];
  *(v31 + 4) = v39;
  *(v31 + 5) = v44;
  *(v31 + 6) = v45;
  *(v31 + 7) = v40;
  *(v31 + 8) = v41;
  v31[72] = v42;
  return result;
}

uint64_t closure #1 in UserGraph.replaceWellKnownConstants()(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if (*result >> 61)
  {
    return result;
  }

  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 32);
  v50 = *(result + 24);
  v8 = *(result + 40);
  v9 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v9;
  v61 = *(v3 + 64);
  v62 = *(v3 + 80);
  v58 = *(v3 + 16);
  result = (*(**(v3 + 88) + 144))();
  if (!result)
  {
    return result;
  }

  v10 = result;
  v49 = v5;
  v87[2] = v60;
  v87[3] = v61;
  v88 = v62;
  v87[0] = v58;
  v87[1] = v59;
  v89 = result;
  v11 = *a2;
  if (!*(*a2 + 16))
  {
    outlined init with copy of SGDataTypeStorage(&v58, &v52);

LABEL_9:
    if (one-time initialization token for wellKnownConstantNodeData != -1)
    {
      swift_once();
    }

    rawValue = wellKnownConstantNodeData._rawValue;
    if (!*(wellKnownConstantNodeData._rawValue + 2) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(), (v23 & 1) == 0))
    {
      outlined destroy of SGDataTypeStorage(&v58);
    }

    v24 = (rawValue[7] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(*v10 + 144);

    v29 = v27(v28);
    if (!v29)
    {

      v42 = (*(*v10 + 136))(v41);
      v44 = v43;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v45 = 38;
      *(v45 + 8) = v42;
      *(v45 + 16) = v44;
      swift_willThrow();
      outlined destroy of SGDataTypeStorage(&v58);
    }

    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v30;
    v32 = swift_allocObject();
    v33 = v26;
    v34 = v6;
    v35 = v32;
    v32[2] = v33;
    v32[3] = v25;
    v32[4] = v30;
    swift_retain_n();
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v35 | 0x2000000000000000, &v73);

    swift_setDeallocating();
    swift_arrayDestroy();
    v36 = *(&v73 + 1);
    outlined copy of NodePersonality(v3);

    v37 = v90;
    specialized Sequence.forEach(_:)(v36, v49, a3);
    outlined consume of NodePersonality(v3);

    v38 = v74;
    outlined copy of NodePersonality(v3);

    specialized Sequence.forEach(_:)(v38, v34, a3);
    v90 = v37;
    outlined consume of NodePersonality(v3);

    specialized UserGraph.removeEdges(connectedTo:)(v50);
    v39 = *(a3 + 64);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 64) = v39;
    if (result)
    {
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
      v39 = result;
      *(a3 + 64) = result;
      if ((v50 & 0x8000000000000000) == 0)
      {
LABEL_16:
        if (v50 < *(v39 + 16))
        {
          ShaderGraphNode.update(id:)(-7);
          v86 = v73;
          outlined init with copy of NodePersonality(&v86, &v52);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = *a2;
          *a2 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v73, v87, isUniquelyReferenced_nonNull_native);
          outlined destroy of SGDataTypeStorage(&v58);

          *a2 = v52;

          outlined destroy of NodePersonality(&v86);
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  outlined init with copy of SGDataTypeStorage(&v58, &v52);

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = v12;

  v15 = *(v11 + 56) + 48 * v14;
  v16 = v6;
  v18 = *v15;
  v17 = *(v15 + 8);
  v19 = *(v15 + 16);
  v47 = *(v15 + 32);
  v48 = *(v15 + 24);
  v46 = *(v15 + 40);
  specialized ShaderGraphNode.output(labeled:)(&v63, 7632239, 0xE300000000000000, v16);
  if (!v64)
  {
    outlined copy of NodePersonality(v18);

    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v52 = v3;
    v53 = v49;
    v54 = v16;
    v55 = v50;
    v56 = v7;
    v57 = v8;
    _print_unlocked<A, B>(_:_:)();

    outlined destroy of SGDataTypeStorage(&v58);

    outlined consume of NodePersonality(v18);
  }

  v79[0] = v63;
  v79[1] = v64;
  v80 = v65;
  v81 = v66;
  v82 = v67;
  specialized ShaderGraphNode.output(labeled:)(&v68, 7632239, 0xE300000000000000, v19);
  if (v69)
  {
    v75[0] = v68;
    v75[1] = v69;
    v76 = v70;
    v77 = v71;
    v78 = v72;
    outlined copy of NodePersonality(v18);

    UserGraph.moveEdges(from:to:)(v79, v75);
    outlined destroy of SGDataTypeStorage(&v58);

    outlined consume of NodePersonality(v18);

    v85 = v76;
    outlined destroy of String(&v85);

    v84 = v80;
    v20 = &v84;
  }

  else
  {
    outlined copy of NodePersonality(v18);

    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v52 = v18;
    v53 = v17;
    v54 = v19;
    v55 = v48;
    v56 = v47;
    v57 = v46;
    _print_unlocked<A, B>(_:_:)();

    outlined destroy of SGDataTypeStorage(&v58);

    outlined consume of NodePersonality(v18);

    v83 = v65;
    v20 = &v83;
  }

  return outlined destroy of String(v20);
}

uint64_t specialized closure #2 in closure #2 in UserGraph.replaceCreateSamplerNodes()(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    if (!v7)
    {
      do
      {
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return result;
        }

        if (v23 >= v8)
        {

          return 1;
        }

        v7 = *(v4 + 8 * v23);
        ++v10;
      }

      while (!v7);
      v10 = v23;
      if (*(a1 + 16))
      {
        goto LABEL_7;
      }

LABEL_18:

      return 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }

LABEL_7:
    v11 = (v10 << 10) | (16 * __clz(__rbit64(v7)));
    v12 = (*(a2 + 48) + v11);
    v13 = (*(a2 + 56) + v11);
    v15 = *v13;
    v14 = v13[1];
    v17 = *v12;
    v16 = v12[1];

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v7 &= v7 - 1;
    v20 = (*(a1 + 56) + 16 * v18);
    if (*v20 == v15 && v20[1] == v14)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t sub_265E87AB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of (Key, String)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_SStMd, &_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_SStMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Key(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Key and conformance Key()
{
  result = lazy protocol witness table cache variable for type Key and conformance Key;
  if (!lazy protocol witness table cache variable for type Key and conformance Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Key and conformance Key);
  }

  return result;
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, logger);
}

uint64_t static FileLogger.url(for:extension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v28 = a5;
  v29 = a3;
  v26 = a1;
  v27 = a2;
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = [v16 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  URL.appendingPathComponent(_:isDirectory:)();
  v18(v11, v5);
  v19 = [v15 defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v31[0] = 0;
  LOBYTE(v16) = [v19 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v31];

  if (v16)
  {
    v23 = v31[0];
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    v18(v11, v5);
  }

  else
  {
    v25 = v31[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (v18)(v14, v5);
}

Swift::String __swiftcall logArray(_:tabs:)(Swift::OpaquePointer _, Swift::Int tabs)
{
  v4._countAndFlagsBits = 9;
  v4._object = 0xE100000000000000;
  v5 = String.init(repeating:count:)(v4, tabs);
  v6 = *(_._rawValue + 2);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = (_._rawValue + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      MEMORY[0x266771550](v8, v9);

      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      *(v18 + 16 * v11 + 32) = v5;
      v7 += 2;
      --v6;
    }

    while (v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
    object = v13;
  }

  else
  {

    MEMORY[0x266771550](0x2D656E6F6E2DLL, 0xE600000000000000);

    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  v15 = countAndFlagsBits;
  v16 = object;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

void specialized static FileLogger.saveDebugFile(_:name:extension:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v63 = a3;
  v64 = a5;
  v65 = a4;
  v60 = a1;
  v61 = a2;
  v66[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = [v22 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();
  v58 = v7;
  v24 = *(v7 + 8);
  v24(v14, v6);
  URL.appendingPathComponent(_:isDirectory:)();
  v24(v17, v6);
  v25 = [v21 defaultManager];
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v66[0] = 0;
  LODWORD(v21) = [v25 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v66];

  if (v21)
  {
    v29 = v66[0];
    URL.appendingPathComponent(_:)();
    v30 = v62;
    URL.appendingPathExtension(_:)();
    v24(v17, v6);
    Data.write(to:options:)();
    v43 = v65;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, logger);
    v45 = v59;
    (*(v58 + 16))(v59, v11, v6);

    v46 = v43;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      LODWORD(v60) = v48;
      v50 = v45;
      v51 = v49;
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v51 = 136315650;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v46, v66);
      *(v51 + 12) = 2080;
      *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v30, v66);
      *(v51 + 22) = 2080;
      v52 = URL.path.getter();
      v54 = v53;
      v24(v50, v6);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v66);

      *(v51 + 24) = v55;
      _os_log_impl(&dword_265D7D000, v47, v60, "%s.%s written to: %s", v51, 0x20u);
      v56 = v61;
      swift_arrayDestroy();
      MEMORY[0x266773120](v56, -1, -1);
      MEMORY[0x266773120](v51, -1, -1);
    }

    else
    {

      v24(v45, v6);
    }

    v24(v11, v6);
    v24(v20, v6);
  }

  else
  {
    v31 = v66[0];
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v24(v20, v6);
    v66[0] = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, logger);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66[0] = v41;
      *v40 = 136315138;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v66);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_265D7D000, v38, v39, "Unable to write debug file to disk. %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266773120](v41, -1, -1);
      MEMORY[0x266773120](v40, -1, -1);
    }

    else
    {
    }
  }
}

void specialized static FileLogger.saveDebugTextSource(_:name:extension:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v18 = static os_log_type_t.error.getter();

    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v23);
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v23);
      _os_log_impl(&dword_265D7D000, v19, v18, "Unable to convert string to data %s.%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v21, -1, -1);
      MEMORY[0x266773120](v20, -1, -1);
    }
  }

  else
  {
    specialized static FileLogger.saveDebugFile(_:name:extension:)(v14, v16, a3, a4, a5, a6);
    outlined consume of Data?(v14, v16);
  }
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

Swift::String __swiftcall OrderedDictionary._debugDescription(typeName:)(Swift::String typeName)
{
  *&v52 = v6;
  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  object = typeName._object;
  countAndFlagsBits = typeName._countAndFlagsBits;
  v14 = *(v5 - 8);
  MEMORY[0x28223BE20](typeName._countAndFlagsBits);
  v54 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v16 - 8);
  MEMORY[0x28223BE20](v17);
  v53 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = type metadata accessor for Optional();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v40 - v22;
  v55 = countAndFlagsBits;
  v56 = object;

  MEMORY[0x266771550](40, 0xE100000000000000);
  v59 = v55;
  v60 = v56;
  v55 = v9;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v24 = 6109787;
    v25 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x266771550](91, 0xE100000000000000);
    v55 = v11;
    v56 = v10;
    v57 = v9;
    v58 = 0;
    v26 = type metadata accessor for OrderedDictionary.Iterator(0, v8, v7, v52);
    v48 += 4;
    v49 = v26;
    v47 = TupleTypeMetadata2 - 8;
    v45 = (v14 + 32);
    v46 = (v41 + 32);
    v43 = (v14 + 16);
    v44 = (v41 + 16);
    v42 = (v14 + 8);
    v27 = (v41 + 8);
    v41 = v11;

    v40[2] = v10;

    v40[1] = v9;

    v28 = 1;
    v52 = xmmword_265F1F670;
    while (1)
    {
      v35 = v50;
      OrderedDictionary.Iterator.next()(v49, v50);
      (*v48)(v23, v35, v51);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v36 = *(TupleTypeMetadata2 + 48);
      (*v46)(v53, v23, v8);
      (*v45)(v54, &v23[v36], v7);
      if ((v28 & 1) == 0)
      {
        MEMORY[0x266771550](8236, 0xE200000000000000);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = v52;
      *(v29 + 56) = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 32));
      v31 = v53;
      (*v44)(boxed_opaque_existential_0, v53, v8);
      debugPrint<A>(_:separator:terminator:to:)();

      MEMORY[0x266771550](8250, 0xE200000000000000);
      v32 = swift_allocObject();
      *(v32 + 16) = v52;
      *(v32 + 56) = v7;
      v33 = __swift_allocate_boxed_opaque_existential_0((v32 + 32));
      v34 = v54;
      (*v43)(v33, v54, v7);
      debugPrint<A>(_:separator:terminator:to:)();

      (*v42)(v34, v7);
      (*v27)(v31, v8);
      v28 = 0;
    }

    v24 = 93;
    v25 = 0xE100000000000000;
  }

  MEMORY[0x266771550](v24, v25);
  MEMORY[0x266771550](41, 0xE100000000000000);
  v37 = v59;
  v38 = v60;
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t OrderedDictionary.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6._countAndFlagsBits = specialized OrderedDictionary._debugTypeName()(a4, a5);
  countAndFlagsBits = OrderedDictionary._debugDescription(typeName:)(v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::String __swiftcall OrderedDictionary._debugTypeName()()
{
  v2 = specialized OrderedDictionary._debugTypeName()(v0, v1);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t specialized OrderedDictionary._debugTypeName()(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(25);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v2);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v3);

  MEMORY[0x266771550](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs15FlattenSequenceVySaySay11ShaderGraph7NodeDefV12AvailabilityVGGG_AL8PlatformO_ALts5NeverOTg504_s11f6Graph7hi3V12j54V24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7b9RtzlFZAE8K12O_AEtAEXEfU_Tf1cn_n(uint64_t a1)
{
  v53 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v3 = 0;
  v4 = v53;
LABEL_3:
  v6 = *(a1 + 16);
  if (v3 == v6)
  {
LABEL_15:

    return v4;
  }

  else
  {
    if (v3 >= v6)
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v7 = *(a1 + 32 + 8 * v3);

        if (v7)
        {
          v5 = *(v7 + 16);
          if (v5)
          {
            break;
          }
        }

        ++v3;
        v8 = *(a1 + 16);
        if (v3 == v8)
        {
          goto LABEL_15;
        }

        if (v3 >= v8)
        {
          goto LABEL_16;
        }
      }

      v9 = 0;
      ++v3;
      while (v9 < v5)
      {
        v10 = (v7 + 160 * v9);
        v11 = v10[2];
        v34 = v10[3];
        v33 = v11;
        v12 = v10[4];
        v13 = v10[5];
        v14 = v10[6];
        v38 = v10[7];
        v37 = v14;
        v36 = v13;
        v35 = v12;
        v15 = v10[8];
        v16 = v10[9];
        v17 = v10[11];
        v41 = v10[10];
        v42 = v17;
        v39 = v15;
        v40 = v16;
        v54 = v33;
        *&v32[71] = v14;
        *&v32[87] = v38;
        *&v32[39] = v35;
        *&v32[55] = v36;
        *&v32[135] = v41;
        *&v32[151] = v17;
        *&v32[103] = v15;
        *&v32[119] = v16;
        *&v32[7] = v33;
        *&v32[23] = v34;
        v50 = *&v32[112];
        v51 = *&v32[128];
        *v52 = *&v32[144];
        *&v52[15] = *(&v17 + 1);
        v47 = *&v32[64];
        v48 = *&v32[80];
        v49 = *&v32[96];
        v43 = *v32;
        v44 = *&v32[16];
        v45 = *&v32[32];
        v46 = *&v32[48];
        v18 = v9;
        result = outlined init with copy of NodeDef.Availability(&v33, &v31);
        v53 = v4;
        v20 = *(v4 + 16);
        v19 = *(v4 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
          v4 = v53;
        }

        v9 = v18 + 1;
        *(v4 + 16) = v21;
        v22 = v4 + 168 * v20;
        *(v22 + 32) = v54;
        v23 = v43;
        v24 = v44;
        *(v22 + 65) = v45;
        *(v22 + 49) = v24;
        *(v22 + 33) = v23;
        v25 = v46;
        v26 = v47;
        v27 = v48;
        *(v22 + 129) = v49;
        *(v22 + 113) = v27;
        *(v22 + 97) = v26;
        *(v22 + 81) = v25;
        v28 = v50;
        v29 = v51;
        v30 = *v52;
        *(v22 + 192) = *&v52[15];
        *(v22 + 177) = v30;
        *(v22 + 161) = v29;
        *(v22 + 145) = v28;
        v5 = *(v7 + 16);
        if (v9 == v5)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC10Foundation09CharacterA0V_SS17UnicodeScalarViewVTt1g5(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CharacterSet();
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  dispatch thunk of SetAlgebra.init()();
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v12[0] = a1;
          v12[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v9 = v12 + v5;
        }

        else
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v5);
        }

        v6 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v10 = (__clz(v6 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v6 = ((v6 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
            v7 = 3;
          }

          else
          {
            v6 = ((v6 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
            v7 = 4;
          }

          goto LABEL_7;
        }

        if (v10 == 1)
        {
LABEL_15:
          v7 = 1;
        }

        else
        {
          v6 = v9[1] & 0x3F | ((v6 & 0x1F) << 6);
          v7 = 2;
        }
      }

LABEL_7:
      v5 += v7;
      v13 = v6;
      dispatch thunk of SetAlgebra.insert(_:)();
      if (v5 >= v4)
      {
      }
    }
  }
}

__n128 static NodeDef.Availability.currentPlatform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v2 operatingSystemVersion];
  v3 = v7;
  v5 = v6;

  *a1 = 0;
  result = v5;
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t one-time initialization function for platformVersionRegex()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  __swift_allocate_value_buffer(v0, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  __swift_project_value_buffer(v0, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S2sSgA4AtMd, &_sSs_S2sSgA4AtMR);
  return Regex.init(_regexString:version:)();
}

uint64_t NodeDef.Availability.PlatformVersion.platformVersionRegex.unsafeMutableAddressor()
{
  if (one-time initialization token for platformVersionRegex != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);

  return __swift_project_value_buffer(v0, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
}

uint64_t static NodeDef.Availability.PlatformVersion.platformVersionRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for platformVersionRegex != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgA4DtGMd, &_s17_StringProcessing5RegexVySs_S2sSgA4DtGMR);
  v3 = __swift_project_value_buffer(v2, static NodeDef.Availability.PlatformVersion.platformVersionRegex);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double NodeDef.Availability.PlatformVersion.init(versionString:)@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  specialized NodeDef.Availability.PlatformVersion.init(versionString:)(a2, a3, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v8;
  }

  return result;
}

double NodeDef.Availability.PlatformVersion.init(stringLiteral:)@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  specialized NodeDef.Availability.PlatformVersion.init(versionString:)(a2, a3, v6);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t NodeDef.Availability.PlatformVersion.init(major:minor:patch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

void NodeDef.Availability.PlatformVersion.hash(into:)()
{
  MEMORY[0x266772770](*v0);
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  if (*(v0 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
  }
}

Swift::Int NodeDef.Availability.PlatformVersion.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](*v0);
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
  }

  if (*(v0 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NodeDef.Availability.PlatformVersion()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x266772770](*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
    if (!v4)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v3);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v1);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = *(v1 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v3);
  if (v4 != 1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v2);
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v5);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static NodeDef.Availability.PlatformVersion.== infix(_:_:)(v5, v7);
}

double protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance NodeDef.Availability.PlatformVersion@<D0>(uint64_t a1@<X8>, unint64_t *a2@<X0>)
{
  specialized NodeDef.Availability.PlatformVersion.init(versionString:)(*a2, a2[1], v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t NodeDef.Availability.Platform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 5459817;
  v2 = 1397716596;
  v3 = 0x534F6E6F69736976;
  if (a1 != 4)
  {
    v3 = 0x4B7974696C616572;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x534F63616DLL;
  if (a1 != 1)
  {
    v4 = 0x534F6863746177;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability.Platform(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = *a2;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 4)
  {
    v8 = 0x4B7974696C616572;
    v7 = 0xEA00000000007469;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (v2 != 1)
  {
    v10 = 0x534F6863746177;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 5459817;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1397716596)
      {
        goto LABEL_34;
      }
    }

    else if (v4 == 4)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x534F6E6F69736976)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xEA00000000007469;
      if (v11 != 0x4B7974696C616572)
      {
LABEL_34:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    if (v4 == 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x534F63616DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x534F6863746177)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 5459817)
    {
      goto LABEL_34;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Availability.Platform()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NodeDef.Availability.Platform(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability.Platform(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NodeDef.Availability.Platform@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NodeDef.Availability.Platform.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NodeDef.Availability.Platform(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 4)
  {
    v8 = 0x4B7974696C616572;
    v7 = 0xEA00000000007469;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (v2 != 1)
  {
    v10 = 0x534F6863746177;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void NodeDef.Availability.AvailabilityKind.hash(into:)()
{
  if (*(v0 + 114))
  {
    v1 = 1;
LABEL_3:
    MEMORY[0x266772770](v1);
    return;
  }

  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = v0[5];
  v8 = v0[7];
  v11 = v0[6];
  v12 = v0[8];
  v15 = *(v0 + 72);
  v16 = v0[10];
  v17 = v0[12];
  v13 = v0[11];
  v14 = v0[13];
  v18 = *(v0 + 112);
  v19 = *(v0 + 113);
  v9 = *(v0 + 73);
  v10 = *(v0 + 33);
  MEMORY[0x266772770](0);
  if (v10)
  {
    goto LABEL_10;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v3);
  if (v4)
  {
    Hasher._combine(_:)(0);
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v2);
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v5);
  if (v9)
  {
LABEL_16:
    Hasher._combine(_:)(0);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v7);
  if (v8)
  {
    Hasher._combine(_:)(0);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v11);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v12);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v16);
  if (v17)
  {
    Hasher._combine(_:)(0);
    if ((v18 & 1) == 0)
    {
LABEL_19:
      Hasher._combine(_:)(1u);
      v1 = v14;
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v13);
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  Hasher._combine(_:)(0);
}

Swift::Int NodeDef.Availability.AvailabilityKind.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.AvailabilityKind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Availability.AvailabilityKind()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.AvailabilityKind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability.AvailabilityKind(uint64_t a1)
{
  Hasher.init(_seed:)();
  NodeDef.Availability.AvailabilityKind.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability.AvailabilityKind(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v13[0] = *(a1 + 96);
  *(v13 + 15) = *(a1 + 111);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[15] = *(a2 + 111);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(v12, v14) & 1;
}

__n128 NodeDef.Availability.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 111) = *(v1 + 119);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  result = *(v1 + 40);
  v5 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

uint64_t NodeDef.Availability.renamed.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t NodeDef.Availability.message.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void NodeDef.Availability.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  if (*(v1 + 122))
  {
    v2 = 1;
    goto LABEL_3;
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 72);
  v16 = *(v1 + 80);
  v13 = *(v1 + 96);
  v17 = *(v1 + 88);
  v18 = *(v1 + 104);
  v14 = *(v1 + 112);
  v15 = *(v1 + 64);
  v19 = *(v1 + 120);
  v20 = *(v1 + 121);
  v9 = *(v1 + 81);
  v10 = *(v1 + 41);
  MEMORY[0x266772770](0);
  if (v10)
  {
    goto LABEL_14;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v3);
  if (v5)
  {
    Hasher._combine(_:)(0);
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_15:
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v8);
    if (v15)
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v11);
      if (v16)
      {
        goto LABEL_20;
      }
    }

    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v12);
    if (v20)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v4);
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v6);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (v20)
  {
    goto LABEL_25;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  MEMORY[0x266772770](v17);
  if (v18)
  {
    Hasher._combine(_:)(0);
    if ((v19 & 1) == 0)
    {
LABEL_23:
      Hasher._combine(_:)(1u);
      v2 = v14;
LABEL_3:
      MEMORY[0x266772770](v2);
      if (*(v1 + 136))
      {
        goto LABEL_4;
      }

LABEL_26:
      Hasher._combine(_:)(0);
      if (*(v1 + 152))
      {
        goto LABEL_5;
      }

LABEL_27:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v13);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  Hasher._combine(_:)(0);
  if (!*(v1 + 136))
  {
    goto LABEL_26;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 152))
  {
    goto LABEL_27;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int NodeDef.Availability.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 NodeDef.Availability.init(platform:kind:renamed:message:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v8[7] = *a2;
  *&v8[55] = *(a2 + 48);
  *&v8[39] = *(a2 + 32);
  *&v8[23] = *(a2 + 16);
  *&v8[118] = *(a2 + 111);
  *&v8[103] = *(a2 + 96);
  *&v8[87] = *(a2 + 80);
  *&v8[71] = *(a2 + 64);
  *(a7 + 1) = *v8;
  *(a7 + 49) = *&v8[48];
  *(a7 + 33) = *&v8[32];
  *(a7 + 107) = *&v8[106];
  result = *&v8[80];
  *(a7 + 97) = *&v8[96];
  *(a7 + 81) = *&v8[80];
  *(a7 + 65) = *&v8[64];
  *a7 = a1;
  *(a7 + 17) = *&v8[16];
  *(a7 + 128) = a3;
  *(a7 + 136) = a4;
  *(a7 + 144) = a5;
  *(a7 + 152) = a6;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Availability()
{
  Hasher.init(_seed:)();
  NodeDef.Availability.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Availability(uint64_t a1)
{
  Hasher.init(_seed:)();
  NodeDef.Availability.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.Availability(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return specialized static NodeDef.Availability.== infix(_:_:)(v13, v14) & 1;
}

uint64_t NodeDef.isAvailable(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[18];
  if (v3)
  {
    v5 = a1;

    v6 = specialized static NodeDef.available(for:in:)(v5, a2, v3);
  }

  else
  {
    v6 = v2[14];
    outlined copy of MaterialXAvailability(v6, v2[15]);
  }

  return v6;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return (specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return (specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance NodeDef.Availability.PlatformVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return specialized static NodeDef.Availability.PlatformVersion.< infix(_:_:)(v5, v7) & 1;
}

uint64_t _s11ShaderGraph7NodeDefV12AvailabilityV24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7ElementRtzlFZs15FlattenSequenceVySayAIGG_Tt0g5(uint64_t a1)
{
  v3 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs15FlattenSequenceVySaySay11ShaderGraph7NodeDefV12AvailabilityVGGG_AL8PlatformO_ALts5NeverOTg504_s11f6Graph7hi3V12j54V24MaterialXAttributeParserV9reconcileySayAEGxKSTRzAE7b9RtzlFZAE8K12O_AEtAEXEfU_Tf1cn_n(a1);
  if (*(v3 + 16))
  {
    v4 = v3;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    v3 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v10 = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, 1, &v10);
  if (!v2)
  {
    v6 = *(v10 + 16);
    if (v6)
    {
      v7 = v10;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(*(v10 + 16), 0);
      v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v1 + 32), v6, v7);
      outlined consume of [String : GeomPropDef].Iterator._Variant(v10);
      if (v8 == v6)
      {
        return v1;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t static NodeDef.Availability.MaterialXAttributeParser.reconcile<A>(_:)(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMd, &_s11ShaderGraph7NodeDefV12AvailabilityV8PlatformO_AEtMR);
  v8 = a3;
  v9 = a1;
  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in static NodeDef.Availability.MaterialXAttributeParser.reconcile<A>(_:), 0, a2, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
  if (*(v11 + 16))
  {
    v12 = v11;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
    v13 = static _DictionaryStorage.allocate(capacity:)();
    v11 = v12;
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v18 = v13;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, 1, &v18);
  if (!v3)
  {
    v14 = *(v18 + 16);
    if (v14)
    {
      v15 = v18;
      v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(*(v18 + 16), 0);
      v16 = specialized Sequence._copySequenceContents(initializing:)(&v18, (v9 + 32), v14, v15);
      outlined consume of [String : GeomPropDef].Iterator._Variant(v18);
      if (v16 == v14)
      {
        return v9;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t closure #1 in static NodeDef.Availability.MaterialXAttributeParser.reconcile<A>(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[7];
  v3 = a1[5];
  v22 = a1[6];
  v23 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v24 = a1[8];
  v6 = v24;
  v25 = v5;
  v7 = a1[3];
  v9 = a1[1];
  v18 = a1[2];
  v8 = v18;
  v19 = v7;
  v10 = a1[3];
  v11 = a1[5];
  v20 = a1[4];
  v12 = v20;
  v21 = v11;
  v13 = a1[1];
  v17[0] = *a1;
  v14 = v17[0];
  v17[1] = v13;
  *(a2 + 104) = v22;
  *(a2 + 120) = v4;
  *(a2 + 136) = v6;
  *(a2 + 152) = a1[9];
  *(a2 + 40) = v8;
  *(a2 + 56) = v10;
  *(a2 + 72) = v12;
  *(a2 + 88) = v3;
  *(a2 + 8) = v14;
  *a2 = v17[0];
  *(a2 + 24) = v9;
  return outlined init with copy of NodeDef.Availability(v17, &v16);
}

double static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:matchingUntil:)(a2, a3, &v11);
  v4 = v12;
  v5 = v13;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  result = *&v11;
  v10 = v14;
  *a1 = v11;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v10;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  return result;
}

double static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  specialized static NodeDef.Availability.MaterialXAttributeParser.nextToken(in:)(a2, a3, a4, a5, &v14);
  if (!v5)
  {
    result = *&v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    *a1 = v14;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v13;
  }

  return result;
}

uint64_t NodeDef.Availability.description.getter()
{
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  LOBYTE(v48) = *v0;
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x277D84F90];
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  *(v5 + 5) = 0xE000000000000000;
  v6 = &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR;
  if (*(v0 + 122))
  {
    v7 = &outlined read-only object #1 of NodeDef.Availability.description.getter;
LABEL_11:
    specialized Array.append<A>(contentsOf:)(v7);
    goto LABEL_12;
  }

  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 40);
  v35 = *(v0 + 8);
  v36 = *(v0 + 48);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);
  v39 = *(v0 + 104);
  v41 = *(v0 + 112);
  v40 = *(v0 + 120);
  v42 = *(v0 + 121);
  v13 = *(v0 + 81);
  v14 = *(v0 + 41);
  specialized Array.append<A>(contentsOf:)(outlined read-only object #0 of NodeDef.Availability.description.getter);
  v43 = v1;
  if (v14)
  {
    v6 = &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v52 = v35;
    v53 = v9 & 1;
    v54 = v8;
    v55 = v10 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    strcpy(&v48, "introduced: ");
    BYTE13(v48) = 0;
    HIWORD(v48) = -5120;
    v30 = NodeDef.Availability.PlatformVersion.description.getter();
    MEMORY[0x266771550](v30);

    v31 = *(&v48 + 1);
    *(inited + 32) = v48;
    *(inited + 40) = v31;
    specialized Array.append<A>(contentsOf:)(inited);
    v6 = &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR;
    if (v13)
    {
LABEL_7:
      if (v42)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v48 = v36;
  v49 = v11 & 1;
  v50 = v12;
  v51 = v37 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_265F1F670;
  strcpy(&v44, "deprecated: ");
  BYTE13(v44) = 0;
  HIWORD(v44) = -5120;
  v33 = NodeDef.Availability.PlatformVersion.description.getter();
  MEMORY[0x266771550](v33);

  v34 = *(&v44 + 1);
  *(v32 + 32) = v44;
  *(v32 + 40) = v34;
  specialized Array.append<A>(contentsOf:)(v32);
  if ((v42 & 1) == 0)
  {
LABEL_8:
    v44 = v38;
    v45 = v39 & 1;
    v46 = v41;
    v47 = v40 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_265F1F670;
    v16 = NodeDef.Availability.PlatformVersion.description.getter();
    MEMORY[0x266771550](v16);

    *(v15 + 32) = 0x6574656C6F73626FLL;
    *(v15 + 40) = 0xEB00000000203A64;
    specialized Array.append<A>(contentsOf:)(v15);
  }

LABEL_9:
  if (*(v43 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_265F1F670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    MEMORY[0x266771550](v18, v20);

    MEMORY[0x266771550](41, 0xE100000000000000);
    *(v17 + 32) = 40;
    *(v17 + 40) = 0xE100000000000000;
    v7 = v17;
    goto LABEL_11;
  }

LABEL_12:
  v21 = *(v0 + 152);
  if (v21)
  {
    v22 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v23 = swift_initStackObject();
    *(v23 + 16) = *(v6 + 103);
    MEMORY[0x266771550](v22, v21);
    MEMORY[0x266771550](39, 0xE100000000000000);
    *(v23 + 32) = 0x206567617373656DLL;
    *(v23 + 40) = 0xE900000000000027;
    specialized Array.append<A>(contentsOf:)(v23);
  }

  v24 = *(v0 + 136);
  if (v24)
  {
    v25 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v26 = swift_initStackObject();
    *(v26 + 16) = *(v6 + 103);
    MEMORY[0x266771550](v25, v24);
    MEMORY[0x266771550](39, 0xE100000000000000);
    *(v26 + 32) = 0x2064656D616E6572;
    *(v26 + 40) = 0xE900000000000027;
    specialized Array.append<A>(contentsOf:)(v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t NodeDef.Availability.PlatformVersion.description.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](46, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](46, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  return v3;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v38 = a3;
  if (result < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a6 > 1), v6, 1, result);
LABEL_31:
    *(result + 16) = v6;
    v24 = (result + 32 * v9);
    v24[4] = v8;
    v24[5] = v8 + 32;
    v24[6] = 0;
    v24[7] = (2 * v10) | 1;
    return result;
  }

  v8 = a5;
  v10 = *(a5 + 16);
  if (!result || !v10)
  {
    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(result + 16);
    a6 = *(result + 24);
    v6 = (v9 + 1);
    if (v9 < a6 >> 1)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  v6 = a4;
  v11 = 0;
  v31 = a5 + 32;
  v12 = -v10;
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {
      v11 = v10;
      goto LABEL_33;
    }

    v30 = result;
    v35 = v10;
    v36 = v13;
    v14 = 2 * v11;
    v32 = v12;
LABEL_7:
    v9 = 0;
    v10 = v12 + v11;
    v34 = v14;
    while (1)
    {
      a6 = v11 + v9;
      if (v11 + v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v15 = v8 + 8 * v14;
      v16 = *(v15 + 40);
      v37[0] = *(v15 + 32);
      v37[1] = v16;

      v17 = v38(v37);
      if (v7)
      {
      }

      v18 = v17;

      if (v18)
      {
        break;
      }

      ++v9;
      v14 += 2;
      if (!(v10 + v9))
      {
        v10 = v35;
        v13 = v36;
        goto LABEL_33;
      }
    }

    if (!v9 && (a2 & 1) != 0)
    {
      break;
    }

    if ((v11 + v9) < v11)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v19 = *(v8 + 16);
    if (v19 < v11 || v19 < v11 + v9)
    {
      goto LABEL_54;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v21 = v36[2];
    v20 = v36[3];
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v36);
    }

    v13 = v36;
    v36[2] = v22;
    v23 = &v36[4 * v21];
    result = v30;
    v23[4] = v8;
    v23[5] = v31;
    v23[6] = v11;
    v23[7] = v14 + 1;
    v11 += v9 + 1;
    v10 = v35;
    v12 = v32;
    if (v22 == v30)
    {
      goto LABEL_33;
    }
  }

  ++v11;
  v10 = v35;
  v14 = v34 + 2;
  v12 = v32;
  if (v11 != v35)
  {
    goto LABEL_7;
  }

  v11 = v35;
  v13 = v36;
LABEL_33:
  if (v11 == v10 && (a2 & 1) != 0)
  {
    v25 = v13;

    return v25;
  }

  if (v10 < v11)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = *(v8 + 16);
  if (v26 < v11 || v26 < v10)
  {
    goto LABEL_50;
  }

  v6 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_51:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  result = v6;
  v28 = v6[2];
  v27 = v6[3];
  if (v28 >= v27 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v6);
  }

  *(result + 16) = v28 + 1;
  v29 = (result + 32 * v28);
  v29[4] = v8;
  v29[5] = v31;
  v29[6] = v11;
  v29[7] = (2 * v10) | 1;
  return result;
}