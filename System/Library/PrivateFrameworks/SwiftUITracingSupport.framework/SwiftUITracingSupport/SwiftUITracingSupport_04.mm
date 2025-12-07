uint64_t closure #1 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, int a7)
{
  LODWORD(v95) = a7;
  v7 = a6;
  v123 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v98 = *(a1 + 8);
  v96 = a6;
  v97 = *a1;
  if ((v98 & 1) == 0)
  {
    v14 = a4;
    if (*(*a4 + 16))
    {
      v19 = a2;
      specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v21 = v20;
      a2 = v19;
      if (v21)
      {
        goto LABEL_98;
      }
    }

    if (*(a2 + 8) != 1)
    {
      goto LABEL_13;
    }

    if (one-time initialization token for invalid != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_12;
  }

  v9 = Snapshot.rootSubgraphs.getter(*a6);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v99 = MEMORY[0x277D84F90];
    v12 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v13 = v12;
    v14 = v99;
    v15 = *(v99 + 16);
    v16 = 96;
    do
    {
      v17 = *(v13 + v16);
      *&v99 = v14;
      v18 = *(v14 + 24);
      if (v15 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v13 = v12;
        v14 = v99;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17 << 32;
      v16 += 168;
      ++v15;
      --v10;
    }

    while (v10);

    v7 = v96;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  if (v95 == 16)
  {
    *&v112 = v11;
    v31 = *(v14 + 16);
    if (v31)
    {
      v32 = 0;
      v7 = v14 + 32;
      v94 = xmmword_26C328DC0;
      do
      {
        if (v32 >= *(v14 + 16))
        {
          goto LABEL_74;
        }

        v34 = *(v7 + 8 * v32);
        v35 = *v96;
        if (HIDWORD(v34) >= *(*v96 + 124))
        {
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v36 = *(v35 + 112);
        if (!v36)
        {
          goto LABEL_92;
        }

        if ((v34 & 0x80000000) != 0)
        {
          goto LABEL_76;
        }

        v37 = *(v36 + 168 * HIDWORD(v34));
        if (v34 >= *(v37 + 16))
        {
          goto LABEL_77;
        }

        v38 = (v37 + 208 * v34);
        v108 = v38[11];
        v109 = v38[12];
        v110 = v38[13];
        v111 = v38[14];
        v104 = v38[7];
        v105 = v38[8];
        v106 = v38[9];
        v107 = v38[10];
        v100 = v38[3];
        v101 = v38[4];
        v102 = v38[5];
        v103 = v38[6];
        v99 = v38[2];
        if (Tree.hasOwnAttributes(within:)(v35))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_26C328DC0;
          *(v33 + 32) = v34;
        }

        else
        {
          v39 = *v96;
          if (HIDWORD(v34) >= *(*v96 + 124))
          {
            goto LABEL_78;
          }

          v40 = *(v39 + 112);
          if (!v40)
          {
            goto LABEL_93;
          }

          v41 = *(v40 + 168 * HIDWORD(v34));
          if (v34 >= *(v41 + 16))
          {
            goto LABEL_79;
          }

          v42 = (v41 + 208 * v34);
          v108 = v42[11];
          v109 = v42[12];
          v110 = v42[13];
          v111 = v42[14];
          v104 = v42[7];
          v105 = v42[8];
          v106 = v42[9];
          v107 = v42[10];
          v100 = v42[3];
          v101 = v42[4];
          v102 = v42[5];
          v103 = v42[6];
          v99 = v42[2];
          *&v118 = v39;
          v33 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v118, 0, -1, MEMORY[0x277D84FA0]);
        }

        ++v32;
        specialized Array.append<A>(contentsOf:)(v33);
      }

      while (v31 != v32);
      v11 = v112;
      v7 = v96;
    }

    v14 = v11;
  }

LABEL_40:
  v43 = *(v14 + 16);
  if (!v43)
  {
    goto LABEL_56;
  }

  v8 = 0;
  while (1)
  {
    if (v8 >= *(v14 + 16))
    {
      goto LABEL_70;
    }

    v44 = *(v14 + 32 + 8 * v8);
    v45 = *v7;
    if (HIDWORD(v44) >= *(*v7 + 124))
    {
      goto LABEL_71;
    }

    v46 = *(v45 + 112);
    if (!v46)
    {
      __break(1u);
      goto LABEL_86;
    }

    if ((v44 & 0x80000000) != 0)
    {
      goto LABEL_72;
    }

    v7 = v44;
    v47 = *(v46 + 168 * HIDWORD(v44));
    if (v44 >= *(v47 + 16))
    {
      goto LABEL_73;
    }

    v48 = (v47 + 208 * v44);
    v108 = v48[11];
    v109 = v48[12];
    v110 = v48[13];
    v111 = v48[14];
    v104 = v48[7];
    v105 = v48[8];
    v106 = v48[9];
    v107 = v48[10];
    v100 = v48[3];
    v101 = v48[4];
    v102 = v48[5];
    v103 = v48[6];
    v99 = v48[2];
    *&v112 = v45;
    v49 = specialized Tree.parent(_:within:unabstracting:)(v95, &v112);
    if (a2)
    {
      if (!v98)
      {
        break;
      }

      goto LABEL_43;
    }

    v50 = v98;
    if (v49 != v97)
    {
      v50 = 1;
    }

    if (v50)
    {
      break;
    }

LABEL_43:
    ++v8;
    v7 = v96;
    if (v43 == v8)
    {
      goto LABEL_56;
    }
  }

  v51 = v49;
  v52 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  v95 = xmmword_26C328DC0;
  *(v14 + 16) = xmmword_26C328DC0;
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  MEMORY[0x26D69CDB0](0x20646C696863, 0xE600000000000000);
  *&v112 = v44;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](8251, 0xE200000000000000);
  *&v112 = v51;
  BYTE8(v112) = v52 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
  *&v112 = v97;
  BYTE8(v112) = v98;
  _print_unlocked<A, B>(_:_:)();
  v53 = v99;
  v8 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 32) = v53;
  print(_:separator:terminator:)();

  v54 = a5[9];
  v107 = a5[8];
  v108 = v54;
  v55 = a5[11];
  v109 = a5[10];
  v110 = v55;
  v56 = a5[5];
  v103 = a5[4];
  v104 = v56;
  v57 = a5[7];
  v105 = a5[6];
  v106 = v57;
  v58 = a5[1];
  v99 = *a5;
  v100 = v58;
  v59 = a5[3];
  v101 = a5[2];
  v102 = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_26C328DC0;
  v94 = xmmword_26C32DAD0;
  v112 = xmmword_26C32DAD0;
  LOBYTE(v113) = 1;
  *(&v113 + 1) = 0;
  *&v114 = &v99;
  WORD4(v114) = 256;
  v61 = TreeRef.describe(state:)(&v112, v44);
  *(v60 + 56) = v8;
  *(v60 + 32) = v61;
  *(v60 + 40) = v62;
  print(_:separator:terminator:)();

  if (HIDWORD(v44) >= *(*v96 + 124))
  {
    goto LABEL_95;
  }

  v45 = *(*v96 + 112);
  if (v45)
  {
LABEL_86:
    v74 = *(v45 + 168 * HIDWORD(v44));
    if (v7 >= *(v74 + 16))
    {
      goto LABEL_97;
    }

    v75 = v74 + 208 * v7;
    v76 = *(v75 + 80);
    v77 = *(v75 + 88);
    v78 = swift_allocObject();
    *(v78 + 16) = v95;
    if (v77)
    {
      v79 = 0xE300000000000000;
      v80 = 7104878;
    }

    else
    {
      *&v114 = &protocol witness table for TreeRef;
      *(&v113 + 1) = &type metadata for TreeRef;
      *&v112 = v76;
      v81 = *__swift_project_boxed_opaque_existential_1(&v112, &type metadata for TreeRef);
      v118 = xmmword_26C32E080;
      v119 = 1;
      v120 = 0;
      v121 = &v99;
      v122 = 256;
      v80 = specialized InspectionState.wrapDescription<A>(_:)(v81);
      v79 = v82;
      __swift_destroy_boxed_opaque_existential_1(&v112);
    }

    *(v78 + 56) = v8;
    *(v78 + 32) = v80;
    *(v78 + 40) = v79;
    print(_:separator:terminator:)();

    if ((v98 & 1) == 0)
    {
      v87 = swift_allocObject();
      *(v87 + 16) = v95;
      v112 = v94;
      LOBYTE(v113) = 1;
      *(&v113 + 1) = 0;
      *&v114 = &v99;
      WORD4(v114) = 256;
      v88 = TreeRef.describe(state:)(&v112, v97);
      *(v87 + 56) = v8;
      *(v87 + 32) = v88;
      *(v87 + 40) = v89;
      print(_:separator:terminator:)();

      v90 = *(a3 + 48);
      v114 = *(a3 + 32);
      v115 = v90;
      v116 = *(a3 + 64);
      v117 = *(a3 + 80);
      v91 = *(a3 + 16);
      v112 = *a3;
      v113 = v91;
      specialized IterativeTreeTraversal.backtrace()();
      goto LABEL_96;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  v63 = specialized _arrayForceCast<A, B>(_:)(v14);

  v96 = specialized Sequence.reversed()(v63);
  v64 = v96[2];
  if (v64)
  {
    v65 = *(a3 + 64);
    v8 = v65 + 1;
    if (!__OFADD__(v65, 1))
    {
      v66 = *(a3 + 80);
      v67 = *a3;
      v14 = (v96 + 5);
      v7 = 40;
      while (v66 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = *(v14 - 8);
        v69 = *v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
        }

        v71 = *(v67 + 2);
        v70 = *(v67 + 3);
        if (v71 >= v70 >> 1)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v67);
        }

        *(v67 + 2) = v71 + 1;
        v72 = &v67[40 * v71];
        *(v72 + 4) = v68;
        v72[40] = v69;
        *(v72 + 6) = v97;
        v72[56] = v98;
        *(v72 + 8) = v8;
        v14 += 16;
        ++v66;
        if (!--v64)
        {

          *a3 = v67;
          *(a3 + 80) = v66;
          return result;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_84:
      swift_once();
LABEL_12:
      a2 = &static TreeRef.invalid;
LABEL_13:
      v22 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v99 = *v14;
      *v14 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v8, isUniquelyReferenced_nonNull_native);
      *v14 = v99;

      v24 = *v7;
      if (HIDWORD(v8) >= *(*v7 + 124))
      {
        goto LABEL_81;
      }

      v25 = *(v24 + 112);
      if (!v25)
      {
        break;
      }

      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_82;
      }

      v26 = *(v25 + 168 * HIDWORD(v8));
      if (v8 < *(v26 + 16))
      {
        v27 = (v26 + 208 * v8);
        v108 = v27[11];
        v109 = v27[12];
        v110 = v27[13];
        v111 = v27[14];
        v104 = v27[7];
        v105 = v27[8];
        v106 = v27[9];
        v107 = v27[10];
        v100 = v27[3];
        v101 = v27[4];
        v102 = v27[5];
        v103 = v27[6];
        v99 = v27[2];
        *&v112 = v24;
        v28 = Tree._childNodes(_:within:during:unabstracting:)(v95, &v112, 0, -1, MEMORY[0x277D84FA0]);
        v14 = v28;
        v29 = v28[2];
        if (v29)
        {
          v30 = 4;
          while (v28[v30] != v8)
          {
            ++v30;
            if (!--v29)
            {
              goto LABEL_40;
            }
          }

          while (1)
          {
LABEL_96:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            v83 = *(a3 + 48);
            v101 = *(a3 + 32);
            v102 = v83;
            v103 = *(a3 + 64);
            *&v104 = *(a3 + 80);
            v84 = *(a3 + 16);
            v99 = *a3;
            v100 = v84;
            v85 = a2;
            specialized IterativeTreeTraversal.backtrace()();
            *&v112 = 0;
            *(&v112 + 1) = 0xE000000000000000;
            *&v118 = v8;
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x26D69CDB0](2112032, 0xE300000000000000);
            v86 = *(v85 + 8);
            *&v118 = *v85;
            BYTE8(v118) = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
            _print_unlocked<A, B>(_:_:)();
          }
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }
}

uint64_t specialized IterativeTreeTraversal.backtrace()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ();
  }

  else
  {
    v5 = specialized closure #1 in implicit closure #1 in IterativeTreeTraversal.backtrace();
  }

  v6 = *(v1 + 56);
  v7 = *(v6 + 16);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v2, v3);
  if (v7)
  {
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [(index: TreeRef?, TreeRef?, returnAfter: Int, depth: Int)] and conformance [A], &_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMd, &_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMR, MEMORY[0x277D83988]);

    v8 = v7 - 1;
    v21 = v6;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMd, &_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMR);
      v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v28, v8, v6);
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = v10[2];
      v14 = *(v10 + 24);
      v15 = v5;
      v17 = v10[4];
      v16 = v10[5];
      (v9)(v28, 0);
      v18 = *(v1 + 48);
      v28[2] = *(v1 + 32);
      v28[3] = v18;
      v28[4] = *(v1 + 64);
      v29 = *(v1 + 80);
      v19 = *(v1 + 16);
      v28[0] = *v1;
      v28[1] = v19;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      v25 = v14;
      v26 = v17;
      v27 = v16;
      v5 = v15;
      v6 = v21;
      (v5)(v28, &v22);
      --v8;
    }

    while (v8 != -1);
  }

  else
  {
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t closure #3 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, Swift::Int a5, _OWORD *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = a6[9];
  v28[8] = a6[8];
  v28[9] = v9;
  v10 = a6[11];
  v28[10] = a6[10];
  v28[11] = v10;
  v11 = a6[5];
  v28[4] = a6[4];
  v28[5] = v11;
  v12 = a6[7];
  v28[6] = a6[6];
  v28[7] = v12;
  v13 = a6[1];
  v28[0] = *a6;
  v28[1] = v13;
  v14 = a6[3];
  v28[2] = a6[2];
  v28[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26C328DC0;
  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  v17 = String.init(repeating:count:)(v16, a5);
  if (v8)
  {
    v18 = 0xE300000000000000;
    v19 = 7104878;
  }

  else
  {
    v23 = xmmword_26C32DAD0;
    v24 = 1;
    v25 = 0;
    v26 = v28;
    v27 = 256;
    v19 = TreeRef.describe(state:)(&v23, v7);
    v18 = v20;
  }

  v23 = v17;

  MEMORY[0x26D69CDB0](v19, v18);

  v21 = v23;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 32) = v21;
  print(_:separator:terminator:)();
}

uint64_t Interpreter.Storage.validateTreeTerminates(snapshot:tree:log:)(uint64_t **a1, unint64_t a2, char a3)
{
  v4 = a2;
  v62 = MEMORY[0x277D84FA0];
  while (1)
  {
    v6 = HIDWORD(v4);
    if (a3)
    {
      v7 = *a1;
      if (v6 >= *(*a1 + 31))
      {
        goto LABEL_35;
      }

      v8 = v7[14];
      if (!v8)
      {
        goto LABEL_41;
      }

      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_36;
      }

      v9 = *(v8 + 168 * HIDWORD(v4));
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_37;
      }

      v10 = (v9 + 208 * v4);
      v11 = v10[13];
      v59 = v10[12];
      v60 = v11;
      v61 = v10[14];
      v12 = v10[9];
      v55 = v10[8];
      v56 = v12;
      v13 = v10[11];
      v57 = v10[10];
      v58 = v13;
      v14 = v10[5];
      v51 = v10[4];
      v52 = v14;
      v15 = v10[7];
      v53 = v10[6];
      v54 = v15;
      v16 = v10[3];
      v49 = v10[2];
      v50 = v16;
      v17 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26C328DC0;
      v44 = xmmword_26C32DAD0;
      v45 = 1;
      v46 = 0;
      v47 = v17;
      v48 = 256;
      v19 = Tree.describe(state:)(&v44);
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
      print(_:separator:terminator:)();
    }

    v21 = *a1;
    if (v6 >= *(*a1 + 31))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
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
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v22 = v21[14];
    if (!v22)
    {
      goto LABEL_40;
    }

    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    v23 = *(v22 + 168 * HIDWORD(v4));
    if (v4 >= *(v23 + 16))
    {
      goto LABEL_34;
    }

    v24 = (v23 + 208 * v4);
    v25 = v24[13];
    v59 = v24[12];
    v60 = v25;
    v61 = v24[14];
    v26 = v24[9];
    v55 = v24[8];
    v56 = v26;
    v27 = v24[11];
    v57 = v24[10];
    v58 = v27;
    v28 = v24[5];
    v51 = v24[4];
    v52 = v28;
    v29 = v24[7];
    v53 = v24[6];
    v54 = v29;
    v30 = v24[3];
    v49 = v24[2];
    v50 = v30;
    *&v44 = v21;
    v31 = specialized Tree.parent(_:within:unabstracting:)(16, &v44);
    v32 = v62;
    if (v33)
    {
      break;
    }

    v4 = v31;
    if (*(v62 + 16))
    {
      Hasher.init(_seed:)();
      MEMORY[0x26D69DC00](v4);
      v34 = Hasher._finalize()();
      v35 = -1 << *(v32 + 32);
      v36 = v34 & ~v35;
      if ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(v32 + 48) + 8 * v36) != v4)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_2;
          }
        }

        if (a3)
        {
          goto LABEL_43;
        }

        if (HIDWORD(v4) >= *(v21 + 31))
        {
          goto LABEL_38;
        }

        v38 = v21[14];
        if (!v38)
        {
          goto LABEL_42;
        }

        v39 = (v38 + 168 * HIDWORD(v4));
        NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0 = *v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v39 = NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v4 & 0x80000000) != 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0);
          *v39 = NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0;
          if ((v4 & 0x80000000) != 0)
          {
LABEL_28:
            __break(1u);
            break;
          }
        }

        if (v4 >= *(NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0 + 2))
        {
          goto LABEL_39;
        }

        Tree.breakParent(within:)(a1);
        Interpreter.Storage.validateTreeTerminates(snapshot:tree:log:)(a1, a2, 1);
      }
    }

LABEL_2:
    specialized Set._Variant.insert(_:)(&v49, v4);
  }
}

uint64_t Interpreter.owner.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectUnownedAssign();
  return swift_unknownObjectRelease();
}

void (*Interpreter.owner.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectUnownedLoadStrong();
  return Interpreter.owner.modify;
}

void Interpreter.owner.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectUnownedAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

NSUInteger Interpreter.Range.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v6 = (a3 - a2);
    if (!a2)
    {
      v6 = 0.0;
    }

    if (v6 / (8 * result) <= 0.1)
    {
      v11 = 0x6E696E69616D6572;
      v12 = 0xEA00000000002067;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v7);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      MEMORY[0x26D69CDB0](37, 0xE100000000000000);
      Double.write<A>(to:)();
    }

    if (a2)
    {
      v8 = String.init<A>(describing:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    MEMORY[0x26D69CDB0](v8, v10);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v11, v12);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    return 540949544;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Interpreter.Context.init(name:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = *a3;
  v7 = MEMORY[0x277D84F90];
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11InterpreterC5RangeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = v9;
  v36 = v8;
  v37 = HIDWORD(v9);
  v40 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11InterpreterC7ContextV15AttachmentIndexV_SayALGTt0g5Tf4g_n(v7);
  v39 = v11;
  v41 = HIDWORD(v11);
  v12 = swift_slowAlloc();
  *v12 = a1;
  v12[1] = a2;
  v13 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n();
  LODWORD(a1) = v14;
  v34 = v13;
  v35 = HIDWORD(v14);
  v15 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  v17 = v16;
  v32 = v15;
  v33 = HIDWORD(v16);
  v29 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  v19 = v18;
  v31 = HIDWORD(v18);
  v28 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n();
  v21 = v20;
  v30 = HIDWORD(v20);
  v22 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  LODWORD(a2) = v23;
  v27 = HIDWORD(v23);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  *a4 = v12;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = v36;
  *(a4 + 40) = v10;
  *(a4 + 44) = v37;
  *(a4 + 48) = 0;
  *(a4 + 56) = v34;
  *(a4 + 64) = a1;
  *(a4 + 68) = v35;
  *(a4 + 72) = v32;
  *(a4 + 80) = v17;
  *(a4 + 84) = v33;
  *(a4 + 88) = v29;
  *(a4 + 96) = v19;
  *(a4 + 100) = v31;
  *(a4 + 104) = 0;
  *(a4 + 112) = v38;
  *(a4 + 120) = v28;
  *(a4 + 128) = v21;
  *(a4 + 132) = v30;
  *(a4 + 136) = v22;
  *(a4 + 144) = a2;
  *(a4 + 148) = v27;
  *(a4 + 152) = result;
  *(a4 + 160) = v25;
  *(a4 + 164) = v26;
  *(a4 + 168) = 0;
  *(a4 + 176) = v38;
  *(a4 + 184) = v40;
  *(a4 + 192) = v39;
  *(a4 + 196) = v41;
  *(a4 + 200) = 0;
  return result;
}

uint64_t Interpreter.Context.type.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Interpreter.Context.describe(state:)(uint64_t *a1)
{
  v2 = 7104878;
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *v1;
  v9 = *(v1 + 8);
  v22 = *(v1 + 32);
  v23 = *a1;
  v21 = *(v1 + 40);
  v10 = *(v1 + 72);
  v33[0] = *(v1 + 56);
  v33[1] = v10;
  v34[0] = *(v1 + 88);
  *(v34 + 9) = *(v1 + 97);
  *&v25[9] = *(v1 + 161);
  v11 = *(v1 + 152);
  v12 = *(v1 + 120);
  v24[1] = *(v1 + 136);
  *v25 = v11;
  v24[0] = v12;
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33B6F0);
  if (v9 && swift_conformsToProtocol2())
  {
    v42 = v9;
    swift_getMetatypeMetadata();
    v2 = String.init<A>(describing:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x26D69CDB0](v2, v14);

  MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
  v15 = *v8;
  v16 = v8[1];

  MEMORY[0x26D69CDB0](v15, v16);

  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = v23 - 1;
    v43 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = v3;
    v45 = v4;
    v46 = v5;
    v47 = v6;
    v48 = v7;
    v18 = specialized InspectionState.wrapDescription<A>(_:)(v22, v21, specialized ArrayLike.describe(state:));
    MEMORY[0x26D69CDB0](v18);

    MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
    v35 = v23 - 1;
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v37 = v3;
    v38 = v4;
    v39 = v5;
    v40 = v6;
    v41 = v7;
    v19 = specialized InspectionState.wrapDescription<A>(_:)(v33, specialized EvolutionTable.describe(state:));
    MEMORY[0x26D69CDB0](v19);

    MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
    v26 = v23 - 1;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v20 = specialized InspectionState.wrapDescription<A>(_:)(v24, specialized EvolutionTable.describe(state:));
    MEMORY[0x26D69CDB0](v20);

    MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    return 0;
  }

  return result;
}

__n128 Interpreter.Context.interpreter.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v3;
  v4 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  v6 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v6;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

__n128 Interpreter.Context.interpreter.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

Swift::Void __swiftcall Interpreter.Context.deallocate()()
{
  v1 = v0;
  v2 = *v0;
  if (v2)
  {
    outlined destroy of String(v2);
    MEMORY[0x26D69EAB0](v2, -1, -1);
    *v1 = 0;
    v3 = v1[4];
    if (v3)
    {
      MEMORY[0x26D69EAB0](v3, -1, -1);
      v1[4] = 0;
    }

    specialized EvolutionTable.deallocate()();
    specialized EvolutionTable.deallocate()();
    v4 = v1[23];
    if (v4)
    {
      MEMORY[0x26D69EAB0](v4, -1, -1);
      v1[23] = 0;
    }
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t protocol witness for Evolution_Entry.type.setter in conformance Interpreter.Context(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

unint64_t Interpreter.incrementGeneration(index:)(unint64_t result)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(v1 + 24);
  if (*(v2 + 132) <= result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + 120);
  if (v3)
  {
    return atomic_fetch_add_explicit(*(v3 + 8 * result), 1uLL, memory_order_relaxed) + 1;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t Interpreter.generation(index:)(unint64_t result)
{
  v2 = *(v1 + 24);
  if (*(v2 + 132) <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      return atomic_fetch_add_explicit(*(v3 + 8 * result), 0, memory_order_relaxed);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for Interpreter.Symbols.processProvider : Interpreter.Symbols(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32) -> (@out String);
  *(a2 + 16) = v5;
  return result;
}

uint64_t Interpreter.Symbols.processProvider.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Interpreter.Symbols.processProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t key path setter for Interpreter.Symbols.moduleProvider : Interpreter.Symbols(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UInt64) -> (@out String)partial apply;
  *(a2 + 32) = v5;
  return result;
}

uint64_t Interpreter.Symbols.moduleProvider.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Interpreter.Symbols.moduleProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

Swift::String __swiftcall Interpreter.Symbols.module(address:)(Swift::UInt64 address)
{
  v2 = (*(v1 + 3))(*v1, address);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t key path setter for Interpreter.Symbols.functionProvider : Interpreter.Symbols(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 40) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UInt64) -> (@out String);
  *(a2 + 48) = v5;
  return result;
}

uint64_t Interpreter.Symbols.functionProvider.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Interpreter.Symbols.functionProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

Swift::String __swiftcall Interpreter.Symbols.function(address:)(Swift::UInt64 address)
{
  v2 = (*(v1 + 5))(*v1, address);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Interpreter.Symbols.init(pid:processName:moduleName:functionName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static Interpreter.Symbols.inProcessProvider.getter@<X0>(uint64_t a1@<X8>)
{
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    *(a1 + 8) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(a1 + 16) = 0;
    *(a1 + 24) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(a1 + 32) = 0;
    *(a1 + 40) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(a1 + 48) = 0;
  }

  return result;
}

uint64_t closure #2 in static Interpreter.Symbols.inProcessProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  return a3;
}

uint64_t Interpreter.Index.describe(state:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      return 0x656E696C656D6974;
    case 2:
      return 0x6C6961746564;
    case 1:
      return 0x7972616D6D7573;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Interpreter.Index.init(prefix:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  v22 = 94;
  v23 = 0xE100000000000000;
  v5 = String.lowercased()();

  MEMORY[0x26D69CDB0](v5._countAndFlagsBits, v5._object);

  Regex<A>.init(_:)();
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVTt0g5Tf4g_nTm(&outlined read-only object #0 of Interpreter.Index.init(prefix:), &_ss18_DictionaryStorageCySS21SwiftUITracingSupport11InterpreterC5IndexVGMd, &_ss18_DictionaryStorageCySS21SwiftUITracingSupport11InterpreterC5IndexVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SwiftUITracingSupport11InterpreterC5IndexVtMd, &_sSS_21SwiftUITracingSupport11InterpreterC5IndexVtMR);
  swift_arrayDestroy();
  v7 = 0;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v7;
LABEL_10:
    v13 = __clz(__rbit64(v10)) | (v12 << 6);
    v14 = (*(v6 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v6 + 56) + v13);
    v10 &= v10 - 1;
    v22 = v16;
    v23 = v15;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR, MEMORY[0x277D85AC0]);
    if (BidirectionalCollection<>.contains<A>(_:)())
    {
      v18 = 0;
LABEL_13:

      (*(v21 + 8))(v4, v2);
      return v17 | (v18 << 8);
    }
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_13;
    }

    v10 = *(v6 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Interpreter.Index()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x6C6961746564;
  }

  if (v1 == 1)
  {
    return 0x7972616D6D7573;
  }

  if (!*v0)
  {
    return 0x656E696C656D6974;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Interpreter.initializedIndicies.getter()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 104);
  v4 = *(v2 + 116);
  v5 = MEMORY[0x277D84F90];
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (!v3)
    {
      goto LABEL_17;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v3 + 8 * v1);
    os_unfair_lock_lock_with_options();
    v8 = *(v7 + 5);
    os_unfair_lock_unlock(v7);
    ++v1;
    if (v8 == 1)
    {
      if ((v1 - 1) > 2)
      {
        goto LABEL_16;
      }

      v9 = outlined read-only object #0 of Interpreter.initializedIndicies.getter[v1 + 31];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v9;
      v1 = v6;
    }
  }
}

void closure #1 in Interpreter.prepareSnapshot(within:)(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_39;
  }

  v5 = *(v3 + 104);
  if (v5)
  {
    v6 = *(*(v5 + 8 * v4) + 8);
    v7 = *(v6 + 124);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 124))
        {
          __break(1u);
          goto LABEL_37;
        }

        v20 = *(v6 + 112);
        if (!v20)
        {
          goto LABEL_41;
        }

        if (!*(*(v20 + v8) + 16))
        {
          Tree.init(synthetic:within:)(*(v20 + v8 + 64), a2, v42);
          v21 = *(v20 + v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v20 + v8) = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
            *(v20 + v8) = v21;
          }

          v24 = *(v21 + 2);
          v23 = *(v21 + 3);
          if (v24 >= v23 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
            *(v20 + v8) = v21;
          }

          *(v21 + 2) = v24 + 1;
          v10 = &v21[208 * v24];
          *(v10 + 2) = v42[0];
          v11 = v42[1];
          v12 = v42[2];
          v13 = v42[4];
          *(v10 + 5) = v42[3];
          *(v10 + 6) = v13;
          *(v10 + 3) = v11;
          *(v10 + 4) = v12;
          v14 = v42[5];
          v15 = v42[6];
          v16 = v42[8];
          *(v10 + 9) = v42[7];
          *(v10 + 10) = v16;
          *(v10 + 7) = v14;
          *(v10 + 8) = v15;
          v17 = v42[9];
          v18 = v42[10];
          v19 = v42[12];
          *(v10 + 13) = v42[11];
          *(v10 + 14) = v19;
          *(v10 + 11) = v17;
          *(v10 + 12) = v18;
          *(v20 + v8 + 112) = 1;
        }

        v8 += 168;
      }

      if (a2[48])
      {
        goto LABEL_47;
      }

      v3 = *(a2 + 22);
      v5 = *(v3 + 104);
    }

    v25 = *(v3 + 116);
    v26 = *a2;
    if (v26 >= v25)
    {
      goto LABEL_40;
    }

    if (!v5)
    {
      goto LABEL_46;
    }

    v27 = Snapshot.rootSubgraphs.getter(*(*(v5 + 8 * v26) + 8));
    v28 = *(v27 + 16);
    if (v28)
    {
      *&v42[0] = MEMORY[0x277D84F90];
      v29 = v27;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v30 = v29;
      v31 = *&v42[0];
      v32 = *(*&v42[0] + 16);
      v33 = 96;
      do
      {
        v34 = *(v30 + v33);
        *&v42[0] = v31;
        v35 = *(v31 + 24);
        if (v32 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v32 + 1, 1);
          v30 = v29;
          v31 = *&v42[0];
        }

        *(v31 + 16) = v32 + 1;
        *(v31 + 8 * v32 + 32) = v34 << 32;
        v33 += 168;
        ++v32;
        --v28;
      }

      while (v28);

      v36 = *(v31 + 16);
      if (!v36)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
      v36 = *(MEMORY[0x277D84F90] + 16);
      if (!v36)
      {
LABEL_33:

        return;
      }
    }

    v37 = 0;
    while (v37 < *(v31 + 16))
    {
      if (a2[48])
      {
        goto LABEL_42;
      }

      v38 = *(a2 + 22);
      v39 = *a2;
      if (v39 >= *(v38 + 116))
      {
        goto LABEL_38;
      }

      v40 = *(v38 + 104);
      if (!v40)
      {
        goto LABEL_43;
      }

      v41 = *(v31 + 32 + 8 * v37++);
      build_tree_profile_and_levels #1 (_:_:_:_:) in closure #1 in Interpreter.prepareSnapshot(within:)(v41, 0, 1, 0, (*(v40 + 8 * v39) + 8));
      if (v36 == v37)
      {
        goto LABEL_33;
      }
    }

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
    goto LABEL_44;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t build_tree_profile_and_levels #1 (_:_:_:_:) in closure #1 in Interpreter.prepareSnapshot(within:)(unint64_t a1, void *a2, char a3, unint64_t a4, unint64_t *a5)
{
  LOBYTE(v6) = a3;
  v131 = MEMORY[0x277D84FA0];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = result;
  v12 = *(result + 16);
  v11 = *(result + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_184;
  }

LABEL_2:
  *(v10 + 16) = v13;
  v14 = (v10 + 32 * v12);
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  v14[48] = v6 & 1;
  *(v14 + 7) = a4;
  v15 = MEMORY[0x277D84F90];
  LOBYTE(v6) = 24;
  if (!v13)
  {
LABEL_95:
    if (*(v15 + 16))
    {
      goto LABEL_96;
    }

LABEL_133:
  }

  while (1)
  {
    v16 = *(v15 + 16);
    if (!v16 || *(v15 + 24 * v16 + 16))
    {
      break;
    }

LABEL_96:
    v71 = *(v15 + 16);
    if (!v71 || *(v15 + 24 * v71 + 16))
    {
      goto LABEL_4;
    }

    v11 = *(v15 + 16);
    if (!v11)
    {
      goto LABEL_176;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v72 = *(v15 + 16);
      if (!v72)
      {
        goto LABEL_132;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      v72 = *(result + 16);
      if (!v72)
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }
    }

    v73 = v72 - 1;
    v11 = *(v15 + 32 + 24 * (v72 - 1));
    *(v15 + 16) = v73;
    a4 = *a5;
    v6 = HIDWORD(v11);
    if (HIDWORD(v11) >= *(*a5 + 124))
    {
      goto LABEL_177;
    }

    v74 = *(a4 + 112);
    if (!v74)
    {
      goto LABEL_198;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    a1 = v11;
    v11 = *(v74 + 168 * HIDWORD(v11));
    if (a1 >= *(v11 + 16))
    {
      goto LABEL_179;
    }

    v108 = v15 + 32;
    v104 = v15;
    v75 = (v11 + 208 * a1);
    v76 = v75[13];
    v125 = v75[12];
    v126 = v76;
    v127 = v75[14];
    v77 = v75[9];
    v121 = v75[8];
    v122 = v77;
    v78 = v75[11];
    v123 = v75[10];
    v124 = v78;
    v79 = v75[5];
    v117 = v75[4];
    v118 = v79;
    v80 = v75[7];
    v119 = v75[6];
    v120 = v80;
    v81 = v75[3];
    v115 = v75[2];
    v116 = v81;
    v128 = a4;
    v13 = &v115;
    result = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v128, 0, -1, MEMORY[0x277D84FA0]);
    v112 = *(result + 16);
    v114 = result;
    if (v112)
    {
      v82 = 0;
      v110 = result + 32;
      while (1)
      {
        v11 = *(v114 + 16);
        if (v82 >= v11)
        {
          break;
        }

        v13 = v10;
        v11 = v110;
        v83 = *(v110 + 8 * v82);
        v10 = HIDWORD(v83);
        v84 = *(a4 + 124);
        if (HIDWORD(v83) >= v84)
        {
          goto LABEL_151;
        }

        v11 = *(a4 + 112);
        if (!v11)
        {
          goto LABEL_191;
        }

        if ((v83 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }

        v12 = v83;
        v85 = *(v11 + 168 * HIDWORD(v83));
        if (v12 >= *(v85 + 16))
        {
          goto LABEL_153;
        }

        if (v6 >= v84)
        {
          goto LABEL_154;
        }

        v86 = *(v85 + 208 * v12 + 72);
        v87 = (v11 + 168 * v6);
        a2 = *v87;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v87 = a2;
        if ((result & 1) == 0)
        {
          result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(a2);
          a2 = result;
          *v87 = result;
        }

        v11 = a2[2];
        if (a1 >= v11)
        {
          goto LABEL_155;
        }

        v88 = &a2[26 * a1];
        v89 = v88[9];
        v11 = (v88 + 9);
        v90 = v89 + v86;
        if (__OFADD__(v89, v86))
        {
          goto LABEL_156;
        }

        *v11 = v90;
        v91 = *(a4 + 124);
        if (v10 >= v91)
        {
          goto LABEL_157;
        }

        v11 = *(a4 + 112);
        if (!v11)
        {
          goto LABEL_192;
        }

        v92 = *(v11 + 168 * v10);
        if (v12 >= *(v92 + 16))
        {
          goto LABEL_158;
        }

        if (v6 >= v91)
        {
          goto LABEL_159;
        }

        v12 = *(v92 + 208 * v12 + 40);
        v93 = (v11 + 168 * v6);
        a2 = *v93;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v93 = a2;
        if ((result & 1) == 0)
        {
          result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(a2);
          a2 = result;
          *v93 = result;
        }

        v10 = v13;
        v11 = a2[2];
        if (a1 >= v11)
        {
          goto LABEL_160;
        }

        v94 = &a2[26 * a1];
        v95 = v94[5];
        v11 = (v94 + 5);
        v96 = v95 + v12;
        if (__OFADD__(v95, v12))
        {
          goto LABEL_161;
        }

        ++v82;
        *v11 = v96;
        if (v112 == v82)
        {
          goto LABEL_126;
        }
      }

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
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
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
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1, v10);
      v10 = result;
      goto LABEL_2;
    }

LABEL_126:

    v15 = v104;
    v97 = *(v104 + 16);
    if (v97)
    {
      LOBYTE(v6) = 24;
      v11 = v108 + 24 * v97;
      v98 = *(v11 - 16);
      v38 = __OFSUB__(v98, 1);
      v99 = v98 - 1;
      if (v38)
      {
        goto LABEL_183;
      }

      *(v11 - 16) = v99;
LABEL_4:
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_95;
      }
    }

    else
    {
      LOBYTE(v6) = 24;
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_95;
      }
    }
  }

  v17 = (v10 + 32 * v13);
  v18 = *v17;
  v19 = *(v17 + 3);
  *(v10 + 16) = v13 - 1;
  v12 = *a5;
  a1 = HIDWORD(v18);
  v11 = *(*a5 + 124);
  if (HIDWORD(v18) >= v11)
  {
    goto LABEL_164;
  }

  v11 = *(v12 + 112);
  if (!v11)
  {
    goto LABEL_194;
  }

  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_165;
  }

  v103 = v15;
  v20 = v18;
  v11 = *(v11 + 168 * HIDWORD(v18));
  if (v18 >= *(v11 + 16))
  {
    goto LABEL_166;
  }

  v101 = v10;
  v102 = v19;
  v107 = v18;
  v109 = *a5;
  a2 = 0;
  v10 = 0;
  v21 = 0;
  v6 = 0;
  v22 = v11 + 208 * v18;
  v23 = *(v22 + 136);
  v24 = *(v22 + 216);
  v25 = *(v22 + 228);
  v26 = v25 != 0;
  v105 = v25;
  v106 = v24;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  v111 = v27;
  v130 = v26;
  v28 = 1;
  v129 = 1;
  while (1)
  {
    if (v28)
    {
      if (v26)
      {
        v11 = v105;
        if (v6 == v105)
        {
          goto LABEL_49;
        }

        if (v6 >= v105)
        {
          goto LABEL_162;
        }

        if (!v106)
        {
          goto LABEL_193;
        }

        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_163;
        }

        v29 = *(v106 + 8 * v6++);
      }

      else
      {
        v29 = v111;
      }

      v11 = HIDWORD(v29);
      if (HIDWORD(v29) >= *(v12 + 124))
      {
        goto LABEL_139;
      }

      v30 = *(v12 + 112);
      if (!v30)
      {
        goto LABEL_186;
      }

      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }

      v11 = *(v30 + 168 * HIDWORD(v29));
      if (v29 >= *(v11 + 16))
      {
        goto LABEL_141;
      }

      v21 = 0;
      v111 = 0;
      v31 = v11 + 208 * v29;
      a2 = *(v31 + 152);
      v10 = *(v31 + 160);
      v26 = 1;
    }

    v11 = HIDWORD(v10);
    if (v21 == HIDWORD(v10))
    {
LABEL_49:
      v11 = v102;
      v12 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_167;
      }

      v11 = *(v109 + 124);
      if (a1 >= v11)
      {
        goto LABEL_168;
      }

      v46 = *(v109 + 112);
      if (!v46)
      {
        goto LABEL_195;
      }

      v47 = (v46 + 168 * a1);
      v13 = *v47;
      v11 = *(*v47 + 16);
      v10 = v101;
      if (v20 >= v11)
      {
        goto LABEL_169;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *v47 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_170;
      }

      *(v13 + 208 * v20 + 72) = 0;
      v11 = *(v109 + 124);
      if (a1 >= v11)
      {
        goto LABEL_171;
      }

      v48 = *(v109 + 112);
      if (!v48)
      {
        goto LABEL_196;
      }

      a4 = v48 + 168 * a1;
      v13 = *a4;
      v11 = *(*a4 + 16);
      if (v20 >= v11)
      {
        goto LABEL_172;
      }

      v49 = *(v13 + 208 * v20 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *a4 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_173;
      }

      *(v13 + 208 * v20 + 40) = v49;
      v11 = *(v109 + 124);
      if (a1 >= v11)
      {
        goto LABEL_174;
      }

      v50 = *(v109 + 112);
      if (!v50)
      {
        goto LABEL_197;
      }

      v11 = *(v50 + 168 * a1);
      if (v20 >= *(v11 + 16))
      {
        goto LABEL_175;
      }

      v51 = (v11 + 208 * v20);
      v52 = v51[13];
      v125 = v51[12];
      v126 = v52;
      v127 = v51[14];
      v53 = v51[9];
      v121 = v51[8];
      v122 = v53;
      v54 = v51[11];
      v123 = v51[10];
      v124 = v54;
      v55 = v51[5];
      v117 = v51[4];
      v118 = v55;
      v56 = v51[7];
      v119 = v51[6];
      v120 = v56;
      v57 = v51[3];
      v115 = v51[2];
      v116 = v57;
      v128 = v109;
      v13 = &v115;
      a2 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v128, 0, -1, MEMORY[0x277D84FA0]);
      a4 = a2[2];
      if (a4)
      {
        v58 = 0;
        v6 = 0;
        while (1)
        {
          v11 = a2[2];
          if (v6 >= v11)
          {
            goto LABEL_137;
          }

          a1 = a2[v6 + 4];
          v59 = v131;
          if (*(v131 + 16) && (Hasher.init(_seed:)(), MEMORY[0x26D69DC00](a1), v13 = &v115, v60 = Hasher._finalize()(), v61 = -1 << *(v59 + 32), v62 = v60 & ~v61, ((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0))
          {
            v63 = ~v61;
            while (*(*(v59 + 48) + 8 * v62) != a1)
            {
              v62 = (v62 + 1) & v63;
              if (((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
              {
                goto LABEL_74;
              }
            }
          }

          else
          {
LABEL_74:
            specialized Set._Variant.insert(_:)(&v115, a1);
            v65 = *(v10 + 16);
            v64 = *(v10 + 24);
            v13 = v65 + 1;
            if (v65 >= v64 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v10);
            }

            *(v10 + 16) = v13;
            v11 = v10 + 32 * v65;
            *(v11 + 32) = a1;
            *(v11 + 40) = v107;
            *(v11 + 48) = 0;
            *(v11 + 56) = v12;
            v38 = __OFADD__(v58++, 1);
            if (v38)
            {
              goto LABEL_138;
            }
          }

          if (++v6 == a4)
          {

            v15 = v103;
            if (v58 >= 1)
            {
              v38 = __OFSUB__(v12, 1);
              v12 = v102;
              LOBYTE(v6) = 24;
              if (v38)
              {
                goto LABEL_180;
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 16) + 1, 1, v103);
                v15 = result;
              }

              a4 = *(v15 + 16);
              v66 = *(v15 + 24);
              v13 = a4 + 1;
              if (a4 >= v66 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), a4 + 1, 1, v15);
                v15 = result;
              }

              *(v15 + 16) = v13;
              v67 = (v15 + 24 * a4);
              v67[4] = v107;
              v67[5] = v58;
              v67[6] = v102;
              goto LABEL_96;
            }

            LOBYTE(v6) = 24;
            if (v58)
            {
              goto LABEL_96;
            }

            goto LABEL_87;
          }
        }
      }

      LOBYTE(v6) = 24;
      v15 = v103;
LABEL_87:
      v12 = *(v15 + 16);
      if (v12)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          v15 = result;
        }

        v11 = *(v15 + 16);
        if (v12 > v11)
        {
          goto LABEL_181;
        }

        v68 = v15 + 24 * v12;
        v69 = *(v68 + 16);
        v11 = v68 + 16;
        v70 = v69 - 1;
        if (__OFSUB__(v69, 1))
        {
          goto LABEL_182;
        }

        *v11 = v70;
      }

      goto LABEL_96;
    }

    if (v21 >= HIDWORD(v10))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
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
      __break(1u);
LABEL_145:
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

    if (!a2)
    {
      break;
    }

    v28 = 0;
    v32 = &a2[5 * v21++];
    if (v32[9])
    {
      a4 = *v32;
      v11 = *(v12 + 84);
      if (a4 >= v11)
      {
        goto LABEL_142;
      }

      v11 = *(v12 + 72);
      if (!v11)
      {
        goto LABEL_187;
      }

      if (*(v12 + 124) <= a1)
      {
        goto LABEL_143;
      }

      v113 = v26;
      v33 = *(v12 + 112);
      if (!v33)
      {
        goto LABEL_188;
      }

      v34 = *(v11 + 312 * a4 + 232);
      v12 = a1;
      a1 = v33 + 168 * a1;
      v13 = *a1;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *a1 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_144;
      }

      v35 = v34 & ~(v34 >> 63);
      v36 = v13 + 208 * v20;
      v37 = *(v36 + 32);
      v11 = v36 + 32;
      v38 = __OFADD__(v37, v35);
      v39 = v37 + v35;
      if (v38)
      {
        goto LABEL_145;
      }

      a1 = v12;
      *v11 = v39;
      v12 = v109;
      v11 = *(v109 + 84);
      if (a4 >= v11)
      {
        goto LABEL_146;
      }

      v11 = *(v109 + 72);
      if (!v11)
      {
        goto LABEL_189;
      }

      if (*(v109 + 124) <= a1)
      {
        goto LABEL_147;
      }

      v40 = *(v109 + 112);
      if (!v40)
      {
        goto LABEL_190;
      }

      v41 = *(v11 + 312 * a4 + 248);
      a4 = v40 + 168 * a1;
      v13 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *a4 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_148;
      }

      v11 = v41 & ~(v41 >> 63);
      v42 = v13 + 208 * v20;
      v44 = *(v42 + 48);
      v43 = (v42 + 48);
      v45 = v44 + v11;
      if (__OFADD__(v44, v11))
      {
        goto LABEL_149;
      }

      v28 = 0;
      *v43 = v45;
      v26 = v113;
    }
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

__n128 Interpreter.subscript.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

id Interpreter.rq.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void Interpreter.rq.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t Interpreter.add(handle:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + 24);
  v6 = *(a2 + 16);
  v7 = (v5 + 40);

  specialized EvolutionTable.add(_:impl:)(a1 | 0x8000000000000000, v6, 0, v5 + 40, v3);

  if (a1 != &type metadata for Interpreter.Control)
  {
    result = (*(v6 + 24))(a1, v6);
    v9 = *(v5 + 56);
    v27[0] = *v7;
    v27[1] = v9;
    v28[0] = *(v5 + 72);
    v10 = (v5 + 56);
    v11 = (v5 + 68);
    v12 = (v5 + 88);
    *(v28 + 9) = *(v7 + 41);
    v13 = v7;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    while (1)
    {
      v17 = *v16;
      if (*v15)
      {
        v18 = *v14;
        if ((v18[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v17)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v27);
      }

      v14 = (v17 + 16);
      v15 = (v17 + 28);
      v16 = (v17 + 48);
      v13 = v17;
    }

    v19 = *v13;
    if (v19)
    {
      v20 = (v19 + 24 * *v18);
      v21 = v7[1];
      v25[0] = *v7;
      v25[1] = v21;
      v26[0] = v7[2];
      *(v26 + 9) = *(v7 + 41);
      while (1)
      {
        v22 = *v12;
        if (result < *v11)
        {
          v23 = &(*v10)[2 * result];
          if ((v23[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v22)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v25);
        }

        v10 = (v22 + 16);
        v11 = (v22 + 28);
        v12 = (v22 + 48);
        v7 = v22;
      }

      if (*v7)
      {
        result = *v7 + 24 * *v23;
        v24 = *result;
        *(v24 + 104) = *v20 + 56;
        *(v24 + 168) = *v20 + 120;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Interpreter.deinit()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Interpreters.shared;
  os_unfair_lock_lock_with_options();
  outlined init with copy of ResourceSet<Interpreter, ()>(&v2[2], v5, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  os_unfair_lock_unlock(v2);
  specialized ResourceSet.remove(instance:)(v1);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v5, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  Interpreter.Storage.deallocate()();
  v3 = *(v1 + 24);
  if (v3)
  {
    MEMORY[0x26D69EAB0](v3, -1, -1);
    *(v1 + 24) = 0;
    outlined destroy of unowned Swift.AnyObject(v1 + 16);

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Interpreter.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Interpreters.shared;
  os_unfair_lock_lock_with_options();
  outlined init with copy of ResourceSet<Interpreter, ()>(&v2[2], v5, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  os_unfair_lock_unlock(v2);
  specialized ResourceSet.remove(instance:)(v1);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v5, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  Interpreter.Storage.deallocate()();
  v3 = *(v1 + 24);
  if (v3)
  {
    MEMORY[0x26D69EAB0](v3, -1, -1);
    *(v1 + 24) = 0;
    outlined destroy of unowned Swift.AnyObject(v1 + 16);

    return swift_deallocClassInstance();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Interpreter.read()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t Interpreter.updateSnapshot(for:kind:generation:onEvent:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v7 = *(v6 + 32);
  OS_dispatch_queue.sync<A>(execute:)();

  return v9;
}

void Interpreter._updateSnapshot(_:_:_:onEvent:)(unsigned __int8 a1, uint64_t *a2, unint64_t add_explicit, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a2;
  v45 = a2[2];
  v46 = a2[1];
  v44 = a2[3];
  v43 = *(a2 + 32);
  Interpreter.initializeSnapshots()();
  v14 = *(v6 + 24);
  v47 = v13;
  if (a4)
  {
    v15 = a1;
    if (*(v14 + 132) <= a1)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v16 = *(v14 + 120);
    if (!v16)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v17 = a1;
    add_explicit = atomic_fetch_add_explicit(*(v16 + 8 * a1), 0, memory_order_relaxed);
  }

  else
  {
    v17 = a1;
    v15 = a1;
  }

  if (*(v14 + 132) <= v15)
  {
    __break(1u);
    goto LABEL_50;
  }

  v18 = *(v14 + 120);
  if (!v18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = *(v18 + 8 * v17);
  v20 = *(v6 + 24);
  if (a1)
  {
    if (!*(v20 + 116))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (!*(v20 + 104))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    os_unfair_lock_lock_with_options();
    v20 = *(v6 + 24);
  }

  if (*(v20 + 116) <= v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!*(v20 + 104))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  os_unfair_lock_lock_with_options();
  if (add_explicit != atomic_fetch_add_explicit(v19, 0, memory_order_relaxed))
  {
    atomic_fetch_add_explicit(v19, 0, memory_order_relaxed);
LABEL_31:
    if (!a1)
    {
      goto LABEL_36;
    }

    v28 = 1;
LABEL_33:
    v29 = *(v7 + 24);
    if (*(v29 + 116))
    {
      v30 = *(v29 + 104);
      if (!v30)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      os_unfair_lock_unlock(*v30);
      if (!v28)
      {
        goto LABEL_39;
      }

LABEL_36:
      v31 = *(v7 + 24);
      if (*(v31 + 116) > v15)
      {
        v32 = *(v31 + 104);
        if (v32)
        {
          goto LABEL_48;
        }

        __break(1u);
LABEL_39:
        v33 = *(v7 + 24);
        v48[0] = v17 | 0x400;
        v48[1] = add_explicit;
        v49 = 0u;
        v50 = 0u;
        v51 = 0;
        outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5, a6);
        Interpreter.Iterator.init(_:kind:onEvent:)(v33, v48, a5, a6, v52);
        if (v53)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v52[0] < *(v54 + 116))
        {
          v34 = *(v54 + 104);
          if (!v34)
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v35 = *(*(*(v34 + 8 * v52[0]) + 8) + 8);
          v36 = *v35;
          v37 = *(v35 + 8);
          v38 = *(v35 + 16);
          v39 = *(v35 + 24);
          v40 = *(v35 + 32);
          *v35 = v47;
          *(v35 + 8) = v46;
          *(v35 + 16) = v45;
          *(v35 + 24) = v44;
          *(v35 + 32) = v43;
          outlined copy of Snapshot.Kind(v47, v46, v45, v44, v43);
          outlined consume of Snapshot.Kind(v36, v37, v38, v39, v40);
          if (Interpreter.Iterator.read()())
          {
            closure #1 in Interpreter.prepareSnapshot(within:)(*(v7 + 24), v52);
            specialized EvolutionTable.deallocate()();
            v41 = *(v7 + 24);
            if (*(v41 + 116) > v15)
            {
              v32 = *(v41 + 104);
              if (v32)
              {
                goto LABEL_48;
              }

              goto LABEL_73;
            }

            goto LABEL_59;
          }

          specialized EvolutionTable.deallocate()();
          v42 = *(v7 + 24);
          if (*(v42 + 116) <= v15)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v32 = *(v42 + 104);
          if (!v32)
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

LABEL_48:
          os_unfair_lock_unlock(*(v32 + 8 * v17));
          return;
        }

        goto LABEL_56;
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*(v14 + 116) <= v15)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v21 = *(v14 + 104);
  if (!v21)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (a1 && *(*(v21 + 8 * v17) + 5))
  {
    Snapshot.deallocate()();
    if (*(v14 + 116) <= v15)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v22 = *(v14 + 104);
    if (!v22)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v23 = *(v22 + 8 * v17);
    os_unfair_lock_assert_owner(v23);
    if (*(v23 + 5) != 1)
    {
      goto LABEL_58;
    }

    *(v23 + 5) = 0;
  }

  if (add_explicit != atomic_fetch_add_explicit(v19, 0, memory_order_relaxed))
  {
    goto LABEL_31;
  }

  if (!a1)
  {
    goto LABEL_39;
  }

  v24 = *(v14 + 116);
  if (!v24)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v25 = *(v14 + 104);
  if (v25)
  {
    v26 = *v25;
    os_unfair_lock_assert_owner(*v25);
    *v52 = *&v26[2]._os_unfair_lock_opaque;
    Snapshot.copy()();
    if (v24 <= v15)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v27 = v25[v17];
    os_unfair_lock_assert_owner(v27);
    if ((v27[1]._os_unfair_lock_opaque & 0x100) != 0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v28 = 0;
    *&v27[2]._os_unfair_lock_opaque = *v52;
    BYTE1(v27[1]._os_unfair_lock_opaque) = 1;
    goto LABEL_33;
  }

LABEL_75:
  __break(1u);
}

uint64_t closure #1 in closure #1 in Interpreter.add(handle:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *(a3 + 24);
  a1[3] = v9;
  v10 = a1[1];
  if (v10)
  {
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      (*(v11 + 56))(v43, v10, v11);
      v45 = v8;
      Evolution_Types.available(version:)(&v45, &v46);

      v12 = v46;
      v13 = v47;
      v14 = *(v46 + 16);
      if (!v14)
      {
LABEL_23:
      }

      v15 = 0;
      v16 = *(&v46 + 1);
      v17 = v46 + 32;
      v38 = v46;
      v37 = v14;
      v40 = v46 + 32;
      v41 = *(&v46 + 1);
      while (v15 < *(v12 + 16))
      {
        v42 = *(v17 + 16 * v15);
        v43[0] = v42;
        if (v16(v43))
        {
          LOBYTE(v43[0]) = v8;
          v18 = v42;
          v20 = (*(*(&v42 + 1) + 64))(v43, v42);
          if (v20)
          {
            v21 = v19;
            if (*(v9 + 32))
            {
              specialized T_Header.init()(v43);
            }

            else
            {
              v23 = *(v9 + 24);
              v24 = v13;
              v25 = v9;
              v26 = v8;
              v27 = v39;
              outlined init with copy of TraceChunk(v23, v39);
              v28 = a1;
              v29 = *(*v27 + 32);
              v30 = v27;
              v8 = v26;
              v9 = v25;
              v13 = v24;
              v12 = v38;
              outlined destroy of TraceChunk(v30);
              v31 = v29;
              a1 = v28;
              v14 = v37;
              specialized T_Header.init(loadedFrom:)(v31, v43);
            }

            v46 = v43[0];
            v47 = v43[1];
            v48 = v43[2];
            v49 = v44;
            v22 = (*(v21 + 24))(&v46, v20, v21);
          }

          else
          {
            v22 = 0;
          }

          v32 = swift_conformsToProtocol2();
          if (v32)
          {
            v33 = v18 == 0;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {
            v34 = swift_conformsToProtocol2();
            if (!v34 || !v18)
            {
              goto LABEL_26;
            }

            specialized EvolutionTable.add(_:impl:)(v18 | 0x8000000000000000, *(v34 + 8), 0, a1 + 15, v22 | ((v20 == 0) << 16));
          }

          else
          {
            specialized EvolutionTable.add(_:impl:)(v18 | 0x8000000000000000, *(v32 + 8), 0, a1 + 7, v22 | ((v20 == 0) << 16));
          }

          v17 = v40;
          v16 = v41;
        }

        if (v14 == ++v15)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }
  }

  __break(1u);
LABEL_26:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Interpreter.initializeSnapshots()()
{
  v1 = *(v0 + 24);
  if ((*(*(v1 + 136) + 96) & 1) == 0)
  {
    memset(v2, 0, sizeof(v2));
    v3 = 2;
    Interpreter.Iterator.init(_:kind:onEvent:)(v1, v2, 0, 0, v4);
    if (!Interpreter.Iterator.read()())
    {
      __break(1u);
      return;
    }

    *(*(v1 + 136) + 96) = 1;
    specialized EvolutionTable.deallocate()();
    v1 = *(v0 + 24);
  }

  closure #1 in Interpreter.initializeSnapshots()(v1, v0);
}

void closure #1 in Interpreter.initializeSnapshots()(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 29))
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 33);
  v6 = 2 * v5;
  do
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    *(v7 + 4) = 0;
    v8 = *(a1 + 28);
    if (v4 == v8)
    {
      if (v8)
      {
        v9 = v3;
      }

      else
      {
        v9 = 1;
      }

      if (HIDWORD(v9))
      {
        goto LABEL_35;
      }

      v10 = *(a1 + 13);
      *(a1 + 28) = v9;
      if (v10)
      {
        v11 = realloc(v10, 8 * v9);
        if (!v11)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v11 = swift_slowAlloc();
      }

      v12 = v11;
      *(a1 + 13) = v11;
      if (!v11)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = *(a1 + 13);
      if (!v12)
      {
        goto LABEL_40;
      }
    }

    v12[v4] = v7;
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = *(a1 + 32);
    if ((v4 + v5) == v14)
    {
      if (v14)
      {
        v15 = v6;
      }

      else
      {
        v15 = 1;
      }

      if (HIDWORD(v15))
      {
        goto LABEL_36;
      }

      v16 = *(a1 + 15);
      *(a1 + 32) = v15;
      if (v16)
      {
        v17 = realloc(v16, 8 * v15);
        if (!v17)
        {
          goto LABEL_43;
        }

        *(a1 + 15) = v17;
      }

      else
      {
        v17 = swift_slowAlloc();
        *(a1 + 15) = v17;
        if (!v17)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v17 = *(a1 + 15);
      if (!v17)
      {
        goto LABEL_41;
      }
    }

    *(v17 + 8 * v5 + 8 * v4) = v13;
    if (~v5 == v4)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v4 = (v4 + 1);
    v6 += 2;
    v3 += 2;
  }

  while (v4 != 3);
  v59 = v17;
  *(a1 + 33) = v5 + 3;
  *(a1 + 29) = 3;
  os_unfair_lock_lock_with_options();
  v80 = *(a2 + 24);
  v4 = MEMORY[0x277D84F90];
  v126[0] = MEMORY[0x277D84F90];
  memset(&v126[1], 0, 24);
  v127 = 1;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV4KindO_Tt0B5(v126);
  v71 = v18;
  v19 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV_SayAHGTt0g5Tf4g_n(v4);
  v75 = v20;
  v78 = v19;
  v79 = HIDWORD(v20);
  v74 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SnapshotV10EventIndexV_SayAJGTt0g5Tf4g_n(v4);
  v72 = v21;
  v77 = HIDWORD(v21);
  v73 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV_SayAHGTt0g5Tf4g_n(v4);
  v23 = v22;
  v76 = HIDWORD(v22);
  v24 = MEMORY[0x277D84F98];
  v70 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(MEMORY[0x277D84F98]);
  v25 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA4EdgeV_SayAHGTt0g5Tf4g_n(v4);
  v27 = v26;
  v68 = v25;
  v69 = HIDWORD(v26);
  v28 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SubgraphV_SayAHGTt0g5Tf4g_n(v4);
  v30 = v29;
  v66 = v28;
  v67 = HIDWORD(v29);
  v65 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v24);
  v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GraphContextV_SayAHGTt0g5Tf4g_n(v4);
  v33 = v32;
  v63 = v31;
  v64 = HIDWORD(v32);
  v62 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v24);
  v34 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14ReuseEventItemO_SayAHGTt0g5Tf4g_n(v4);
  v36 = v35;
  v60 = v34;
  v61 = HIDWORD(v35);
  updated = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11UpdateReuseV_SayAHGTt0g5Tf4g_n(v4);
  LODWORD(v5) = v38;
  v91[0] = v80;
  v91[1] = v71;
  v92 = xmmword_26C32E060;
  v93 = v78;
  v94 = v75;
  v95 = v79;
  v96 = v74;
  v97 = v72;
  v98 = v77;
  v99 = 0;
  v100 = v73;
  v101 = v23;
  v102 = v76;
  v103 = v70;
  v104 = v68;
  v105 = v27;
  v106 = v69;
  v107 = v66;
  v108 = v30;
  v109 = v67;
  v110 = v65;
  v111 = v63;
  v112 = v33;
  v113 = v64;
  v114 = v62;
  v115 = v60;
  v116 = v36;
  v117 = v61;
  v118 = updated;
  v119 = v38;
  v120 = v39;
  v121 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v24);
  v122 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SnapshotV11AbstractionV_SayAJGTt0g5Tf4g_n(v4);
  v123 = v40;
  v124 = v41;
  v125 = 0;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV7StorageV_Tt0g5(v91);
  v43 = v42;
  v44 = *v12;
  os_unfair_lock_assert_owner(v44);
  if (*(v44 + 5))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v44 + 8) = v43;
  *(v44 + 5) = 1;
  v45 = *(a2 + 24);
  v46 = **v59;
  *&v82 = 512;
  *(&v82 + 1) = v46;
  v83 = 0u;
  v84 = 0u;
  LOBYTE(v85) = 0;
  Interpreter.Iterator.init(_:kind:onEvent:)(v45, &v82, 0, 0, v90);
  if (!Interpreter.Iterator.read()())
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = a1[9];
  *&v89[16] = a1[8];
  *&v89[32] = v47;
  v48 = a1[11];
  *&v89[48] = a1[10];
  *&v89[64] = v48;
  v49 = a1[5];
  v86 = a1[4];
  v87 = v49;
  v50 = a1[7];
  v88 = a1[6];
  *v89 = v50;
  v51 = a1[1];
  v82 = *a1;
  v83 = v51;
  v52 = a1[3];
  v84 = a1[2];
  v85 = v52;
  Interpreter.Storage.consistencyCheckViewTree(within:)(v90);
  Interpreter.Storage.synthesizeTreesForGraphs(within:)(v90);
  v53 = a1[5];
  v86 = a1[4];
  v87 = v53;
  v54 = a1[1];
  v82 = *a1;
  v83 = v54;
  v55 = a1[3];
  v84 = a1[2];
  v85 = v55;
  v56 = *(a1 + 12);
  v57 = *(a1 + 13);
  *&v89[72] = *(a1 + 23);
  v58 = *(a1 + 28);
  LODWORD(v4) = *(a1 + 29);
  *&v89[56] = *(a1 + 168);
  *&v89[40] = *(a1 + 152);
  *&v89[24] = *(a1 + 136);
  *&v89[8] = *(a1 + 120);
  *&v88 = v56;
  *(&v88 + 1) = v57;
  *v89 = v58;
  *&v89[4] = v4;
  Interpreter.Storage.abstractViewTree(within:)(v90);
  if (!v4)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4;
    __break(1u);
LABEL_41:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4 + 1;
    __break(1u);
LABEL_42:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4;
    __break(1u);
LABEL_43:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4 + 1;
    __break(1u);
    goto LABEL_44;
  }

  if (v57)
  {
    os_unfair_lock_unlock(*v57);
    specialized EvolutionTable.deallocate()();
    return;
  }

LABEL_44:
  __break(1u);
}

uint64_t Interpreter.appsName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  strcpy(v16, "[interpreter ");
  HIWORD(v16[1]) = -4864;
  v5 = *(v0 + 24);
  if (*(v5 + 32))
  {
    specialized T_Header.init()(v17);
  }

  else
  {
    outlined init with copy of TraceChunk(*(v5 + 24), v4);
    v6 = *(*v4 + 32);
    outlined destroy of TraceChunk(v4);
    specialized T_Header.init(loadedFrom:)(v6, v17);
  }

  v15[1] = v18;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = *(*(v1 + 24) + 136);
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);

  v11 = v10(v9);
  v13 = v12;

  MEMORY[0x26D69CDB0](v11, v13);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v16[0];
}

uint64_t Interpreter.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = HIDWORD(a2);
  v9 = *(v4 + 24);
  v10 = (v9 + 40);
  v11 = *(v9 + 56);
  v78[0] = *(v9 + 40);
  v78[1] = v11;
  v79[0] = *(v9 + 72);
  *(v79 + 9) = *(v9 + 81);
  v12 = (v9 + 72);
  v13 = (v9 + 84);
  v14 = (v9 + 88);
  while (1)
  {
    v15 = *v14;
    if (a1 < *v13)
    {
      v16 = (*v12 + 8 * a1);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, 0, v78);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v10 = v15;
  }

  v17 = *v10;
  if (!v17)
  {
    goto LABEL_46;
  }

  v18 = (v17 + 24 * *v16);
  v19 = *v18;
  v20 = *(*v18 + 196);
  v21 = 0uLL;
  if (v20)
  {
    v22 = *(v19 + 184);
    if (!v22)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v23 = v20 - 1;
    if (v8 <= *(v22 + 32 * (v20 - 1)))
    {
      v26 = v20 >> 1;
      v27 = *(v22 + 32 * (v20 >> 1));
      if (v20 != 1 && v27 != HIDWORD(a2))
      {
        if (v8 >= v27)
        {
          v30 = v26 + 1;
          v29 = v8;
          v26 = v20;
        }

        else
        {
          v29 = HIDWORD(a2);
          v30 = 0;
        }

        v31 = specialized Collection<>.binarySearch(for:)(v29, v30, v26, v22, *(v19 + 192) | (v20 << 32), 0);
        if (v32)
        {
          v26 = v20 - 1;
        }

        else
        {
          v26 = v31;
        }

        v21 = 0uLL;
      }

      v33 = (v22 + 32 * v26);
      v23 = v26;
      while (v26 < v20)
      {
        if (*v33 <= v8)
        {
          goto LABEL_11;
        }

        if (!v23)
        {
          goto LABEL_30;
        }

        --v23;
        v33 -= 8;
        if (v23 > v20)
        {
          __break(1u);
LABEL_30:
          v24 = 0;
          v25 = 0;
          v5 = a4;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_11:
    *&v48 = v23;
    LOBYTE(v62) = a2 & 1;
    v5 = a4;
    closure #1 in Interpreter.subscript.getter(&v48, v4, a1, &v62);
    v24 = v62;
    v25 = *(&v62 + 1);
    v21 = v63;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

LABEL_31:
  v61 = a2 & 1;
  *&v48 = a1;
  *(&v48 + 1) = a2 & 0xFFFFFFFF00000001;
  *&v49 = v24;
  *(&v49 + 1) = v25;
  v50 = v21;
  LOBYTE(v51) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v9, &v48, 0, 0, &v62);
  if (Interpreter.Iterator.read()())
  {
    v76[0] = *&v65[8];
    v76[1] = *&v65[24];
    v77[0] = *&v65[40];
    *(v77 + 9) = *&v65[49];
    v34 = *&v65[8];
    v35 = *&v65[40];
    v36 = *&v65[56];
    if (*&v65[68] >= *&v65[52])
    {
      goto LABEL_36;
    }

    while (1)
    {
      v38 = (v35 + 8 * *&v65[68]);
      if ((v38[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_36:
        if (!v36)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v65[68], 0, v76);
        }

        v34 = *v36;
        v35 = v36[4];
        v37 = *(v36 + 11);
        v36 = v36[6];
      }

      while (*&v65[68] >= v37);
    }

    if (!v34)
    {
      goto LABEL_47;
    }

    v39 = (v34 + 24 * *v38);
    v40 = *v39;
    v41 = *(*v39 + 96);
    if (v41 != 2)
    {
      v42 = *(v40 + 104);
      v43 = *(v40 + 88);
      v71 = *(v40 + 72);
      v72 = v43;
      v73 = v41 & 0x101;
      v74 = HIDWORD(v41);
      v75 = v42 & 1;
      v44 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v45 & 1) == 0)
      {
        v58 = v68;
        v59 = v69;
        v60 = v70;
        v54 = *&v65[48];
        v55 = *&v65[64];
        v56 = v66;
        v57 = v67;
        v50 = v64;
        v51 = *v65;
        v52 = *&v65[16];
        v53 = *&v65[32];
        v48 = v62;
        v49 = v63;
        (*(v5 + 16))(v44);
        return specialized EvolutionTable.deallocate()();
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_48:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t *closure #1 in Interpreter.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v6 = *(a2 + 24);
  v7 = (v6 + 40);
  v8 = *(v6 + 56);
  v18[0] = *(v6 + 40);
  v18[1] = v8;
  v19[0] = *(v6 + 72);
  *(v19 + 9) = *(v6 + 81);
  v9 = (v6 + 72);
  v10 = (v6 + 84);
  v11 = (v6 + 88);
  while (1)
  {
    v12 = *v11;
    if (a3 < *v10)
    {
      v13 = (*v9 + 8 * a3);
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a3, 0, v18);
    }

    v9 = (v12 + 32);
    v10 = (v12 + 44);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (v14)
  {
    result = (v14 + 24 * *v13);
    if (v5 >= *(*result + 196))
    {
      __break(1u);
    }

    else
    {
      v15 = *(*result + 184);
      if (v15)
      {
        v16 = v15 + 32 * v5;
        v17 = *(v16 + 8);
        *a4 = *v16;
        *(a4 + 8) = v17;
        *(a4 + 16) = *(v16 + 16);
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double one-time initialization function for eventAbstractions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXpGMR);
  v0 = swift_allocObject();
  *&result = 17;
  *(v0 + 16) = xmmword_26C32E090;
  *(v0 + 32) = &type metadata for Allocation;
  *(v0 + 40) = &protocol witness table for Allocation;
  *(v0 + 48) = &type metadata for EnvironmentWriting;
  *(v0 + 56) = &protocol witness table for EnvironmentWriting;
  *(v0 + 64) = &type metadata for DisplayList;
  *(v0 + 72) = &protocol witness table for DisplayList;
  *(v0 + 80) = &type metadata for PlatformItemList;
  *(v0 + 88) = &protocol witness table for PlatformItemList;
  *(v0 + 96) = &type metadata for ViewBodies;
  *(v0 + 104) = &protocol witness table for ViewBodies;
  *(v0 + 112) = &type metadata for ViewList;
  *(v0 + 120) = &protocol witness table for ViewList;
  *(v0 + 128) = &type metadata for PreferenceList;
  *(v0 + 136) = &protocol witness table for PreferenceList;
  *(v0 + 144) = &type metadata for Layout;
  *(v0 + 152) = &protocol witness table for Layout;
  *(v0 + 160) = &type metadata for AccessibilityNodeList;
  *(v0 + 168) = &protocol witness table for AccessibilityNodeList;
  *(v0 + 176) = &type metadata for PhaseWriting;
  *(v0 + 184) = &protocol witness table for PhaseWriting;
  *(v0 + 192) = &type metadata for Transactions;
  *(v0 + 200) = &protocol witness table for Transactions;
  *(v0 + 208) = &type metadata for PlatformViews;
  *(v0 + 216) = &protocol witness table for PlatformViews;
  *(v0 + 224) = &type metadata for ConditionalContent;
  *(v0 + 232) = &protocol witness table for ConditionalContent;
  *(v0 + 240) = &type metadata for ViewCreation;
  *(v0 + 248) = &protocol witness table for ViewCreation;
  *(v0 + 256) = &type metadata for ResolvedContent;
  *(v0 + 264) = &protocol witness table for ResolvedContent;
  *(v0 + 272) = &type metadata for ViewResponder;
  *(v0 + 280) = &protocol witness table for ViewResponder;
  *(v0 + 288) = &type metadata for ViewTransform;
  *(v0 + 296) = &protocol witness table for ViewTransform;
  static Interpreter.eventAbstractions = v0;
  return result;
}

uint64_t static Interpreter.eventAbstractions.getter()
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Interpreter.eventAbstractions.setter(void *a1)
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Interpreter.eventAbstractions = a1;
}

uint64_t (*static Interpreter.eventAbstractions.modify(uint64_t a1))()
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return AggregateContainer.root.modify;
}

uint64_t key path getter for static Interpreter.eventAbstractions : Interpreter.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static Interpreter.eventAbstractions;
}

uint64_t key path setter for static Interpreter.eventAbstractions : Interpreter.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for eventAbstractions;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Interpreter.eventAbstractions = v1;
}

double one-time initialization function for treeAbstractions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport18TreeAbstractionImp_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport18TreeAbstractionImp_pXpGMR);
  v0 = swift_allocObject();
  *&result = 13;
  *(v0 + 16) = xmmword_26C32E0A0;
  *(v0 + 32) = &type metadata for ChargeToParentA;
  *(v0 + 40) = &protocol witness table for ChargeToParentA;
  *(v0 + 48) = &type metadata for VariadicViewTreeA;
  *(v0 + 56) = &protocol witness table for VariadicViewTreeA;
  *(v0 + 64) = &type metadata for TextA;
  *(v0 + 72) = &protocol witness table for TextA;
  *(v0 + 80) = &type metadata for AnyViewA;
  *(v0 + 88) = &protocol witness table for AnyViewA;
  *(v0 + 96) = &type metadata for ConditionalViewA;
  *(v0 + 104) = &protocol witness table for ConditionalViewA;
  *(v0 + 112) = &type metadata for TupleViewA;
  *(v0 + 120) = &protocol witness table for TupleViewA;
  *(v0 + 128) = &type metadata for ConditionalViewA;
  *(v0 + 136) = &protocol witness table for ConditionalViewA;
  *(v0 + 144) = &type metadata for NavigationSplitViewA;
  *(v0 + 152) = &protocol witness table for NavigationSplitViewA;
  *(v0 + 160) = &type metadata for ButtonA;
  *(v0 + 168) = &protocol witness table for ButtonA;
  *(v0 + 176) = &type metadata for ColorA;
  *(v0 + 184) = &protocol witness table for ColorA;
  *(v0 + 192) = &type metadata for TabViewA;
  *(v0 + 200) = &protocol witness table for TabViewA;
  *(v0 + 208) = &type metadata for OpacityRendererEffectA;
  *(v0 + 216) = &protocol witness table for OpacityRendererEffectA;
  *(v0 + 224) = &type metadata for ModifierAbstraction;
  *(v0 + 232) = &protocol witness table for ModifierAbstraction;
  *&attachmentAssertion.is_nil = v0;
  return result;
}

uint64_t Interpreter.Request.describe(state:)()
{
  if (*(v0 + 8))
  {
    v1 = 0x73656469766F7270;
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x736465656ELL;
    v2 = 0xE500000000000000;
  }

  return specialized InspectionState.describe<A>(_:_:)(v1, v2, *v0, specialized InspectionState.wrapDescription<A>(_:));
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = specialized InspectionState.wrapDescription<A>(_:)(a3, a4 & 1);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v7 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v7;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v4 = specialized InspectionState.wrapDescription<A>(_:)();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v5 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v5;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, &type metadata for SubgraphRef, &protocol witness table for SubgraphRef);
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, &type metadata for AttributeRef, &protocol witness table for AttributeRef);
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized Collection.prefix(_:), specialized InspectionState.wrapDescription<A>(_:));
}

{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v4 = specialized InspectionState.wrapDescription<A>(_:)(a3);
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v5 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v5;
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized InspectionState.wrapDescription<A>(_:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized ArrayLike.describe(state:), specialized InspectionState.wrapDescription<A>(_:));
}

{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v3 = specialized InspectionState.wrapDescription<A>(_:)();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v4 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v4;
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized InspectionState.wrapDescription<A>(_:));
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.wrapDescription<A>(_:)(a3 | ((HIDWORD(a3) & 1) << 32), a4, a5);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = a4(a3);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v7 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v7;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(Swift::Int *, uint64_t, uint64_t))
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.wrapDescription<A>(_:)(a3, a4, a5);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = a5(a3, a4);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v10 = specialized InspectionState.wrapDescription<A>(_:)(a3, a4, a5, a6 & 0xFFFFFFFFFFLL);
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v11 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v11;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v4 = specialized InspectionState.wrapDescription<A>(_:)(a3 & 0x1FF);
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v5 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v5;
}

uint64_t Interpreter.Request.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x26D69DBC0](*(v0 + 8));
  return MEMORY[0x26D69DC00](v1);
}

Swift::Int Interpreter.Request.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Interpreter.Request()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Interpreter.Request()
{
  v1 = *v0;
  MEMORY[0x26D69DBC0](*(v0 + 8));
  return MEMORY[0x26D69DC00](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Interpreter.Request(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v3);
  MEMORY[0x26D69DC00](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Interpreter.Request()
{
  if (*(v0 + 8))
  {
    v1 = 0x73656469766F7270;
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x736465656ELL;
    v2 = 0xE500000000000000;
  }

  return specialized InspectionState.describe<A>(_:_:)(v1, v2, *v0, specialized InspectionState.wrapDescription<A>(_:));
}

uint64_t _s21SwiftUITracingSupport9DefaultedO8describe5stateSSAA15InspectionStateV_tFSb_Ttg5(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v1 = 29992;
  }

  else
  {
    v1 = 25640;
  }

  MEMORY[0x26D69CDB0](v1 | 0x200000u, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (HIDWORD(a5) < result || v5 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_13:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
    goto LABEL_16;
  }

  if (result > v5)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

char *specialized ArrayLike.describe(state:)(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = HIDWORD(a3);
  if (*a1 < 1 || v9 == 0)
  {
    v63 = 9051;
    v64 = 0xE200000000000000;
    v62 = HIDWORD(a3);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v11);
LABEL_41:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return v63;
  }

  v13 = a1[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v6 = a4;
  v7 = a2;
  v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v13, HIDWORD(a3), a2, a3);
  if (v15)
  {
    object = v9;
  }

  else
  {
    object = v14;
  }

  if ((object & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (v9 < object)
  {
    goto LABEL_54;
  }

  v57 = v13;
  v58 = v9;
  v16 = MEMORY[0x277D84F90];
  if (!object)
  {
    v25 = *(MEMORY[0x277D84F90] + 16);
    v5 = MEMORY[0x277D84F90];
LABEL_21:
    v29 = v5 + 5;
    v6 = -v25;
    v7 = -1;
    do
    {
      v9 = (v7 - v25);
      if (v7 - v25 == -1)
      {
        break;
      }

      if (++v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_50;
      }

      v30 = v29 + 2;
      v13 = *v29;

      v4 = String.count.getter();

      v29 = v30;
    }

    while (v4 < 56);
    v63 = 9051;
    v64 = 0xE200000000000000;
    v62 = v58;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v32;
    MEMORY[0x26D69CDB0](v31);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v7 = v63;
    v33 = v64;
    if (v9 == -1)
    {
      v63 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = v58;
    }

    else
    {
      v55 = v64;
      v56 = v63;
      v34 = String.count.getter();
      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36 = String.init(repeating:count:)(v35, v34);
      countAndFlagsBits = v36._countAndFlagsBits;
      object = v36._object;
      v9 = v5[2];
      if (v9)
      {
        v62 = v16;
        v13 = &v62;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v59 = v5[2];
        if (!v59)
        {
          goto LABEL_50;
        }

        v61 = v9;
        v37 = v62;
        v9 = v5[4];
        v4 = v5[5];
        v7 = *(v62 + 16);
        v13 = *(v62 + 24);
        v6 = v7 + 1;

        if (v7 >= v13 >> 1)
        {
          goto LABEL_55;
        }

        while (1)
        {
          *(v37 + 16) = v6;
          v38 = v37 + 16 * v7;
          *(v38 + 32) = v9;
          *(v38 + 40) = v4;
          if (v61 == 1)
          {
            break;
          }

          v9 = (v5 + 7);
          v48 = 1;
          while (v59 != v48)
          {
            if (v48 >= v5[2])
            {
              goto LABEL_51;
            }

            v50 = *(v9 - 1);
            v49 = *v9;
            v63 = countAndFlagsBits;
            v64 = object;

            v13 = &v63;
            MEMORY[0x26D69CDB0](v50, v49);
            v6 = v63;
            v7 = v64;
            v62 = v37;
            v52 = *(v37 + 16);
            v51 = *(v37 + 24);
            v4 = v52 + 1;
            if (v52 >= v51 >> 1)
            {
              v13 = &v62;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
              v37 = v62;
            }

            ++v48;
            *(v37 + 16) = v4;
            v53 = v37 + 16 * v52;
            *(v53 + 32) = v6;
            *(v53 + 40) = v7;
            v9 += 16;
            if (v61 == v48)
            {
              goto LABEL_30;
            }
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v54 = v13 > 1;
          v13 = &v62;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54, v6, 1);
          v37 = v62;
        }

LABEL_30:
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      v63 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v42 = 10;
      v43 = 0xE100000000000000;
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v45;

      v44 = v58;
      v33 = v55;
      v7 = v56;
    }

    v63 = v7;
    v64 = v33;
    MEMORY[0x26D69CDB0](v39, v41);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v57 >= v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = 3026478;
    }

    if (v57 >= v44)
    {
      v47 = 0xE000000000000000;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v46, v47);

    MEMORY[0x26D69CDB0](v42, v43);
    goto LABEL_41;
  }

  v63 = MEMORY[0x277D84F90];
  v13 = &v63;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, object, 0);
  v5 = v63;
  v18 = v7 + 12;
  while (v7)
  {
    v19 = *(v18 - 12);
    v20 = *(v18 - 4);
    v21 = *(v18 + 4);
    v22 = *(v18 + 8);
    LOBYTE(v62) = *v18;
    result = (v6)(a1, v19, v20 | (v62 << 32), v21 | (v22 << 32));
    v63 = v5;
    v4 = v5[2];
    v24 = v5[3];
    v25 = v4 + 1;
    if (v4 >= v24 >> 1)
    {
      v13 = &v63;
      v61 = result;
      v27 = v16;
      v28 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v4 + 1, 1);
      v23 = v28;
      v16 = v27;
      result = v61;
      v5 = v63;
    }

    v5[2] = v25;
    v26 = &v5[2 * v4];
    v26[4] = result;
    v26[5] = v23;
    v18 += 24;
    if (!--object)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = HIDWORD(a3);
  countAndFlagsBits = *a1 - 1;
  v58 = a2;
  if (*a1 < 1 || v8 == 0)
  {
    *&v62 = 0xE200000000000000;
    v59 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v13 = (a1 + 1);
    v12 = a1[1];
    if (v12 < 0)
    {
      goto LABEL_54;
    }

    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v8 < v16)
    {
      goto LABEL_56;
    }

    v54 = v12;
    v17 = MEMORY[0x277D84F90];
    v55 = v8;
    if (v16)
    {
      v61[0] = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v18 = (v58 + 16);
      v5 = v61[0];
      while (v58)
      {
        v19 = *v18;
        v59 = 40;
        v60 = 0xE100000000000000;
        v20 = *(v13 + 16);
        v62 = *v13;
        v63 = v20;
        v64 = *(v13 + 32);
        v61[1] = countAndFlagsBits;
        v21 = specialized InspectionState.wrapDescription<A>(_:)();
        MEMORY[0x26D69CDB0](v21);

        MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        if (v19 == -1)
        {
          v22 = 94;
        }

        else
        {
          v22 = 120;
        }

        MEMORY[0x26D69CDB0](v22, 0xE100000000000000);
        v3 = &v59;
        result = MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        v4 = v59;
        v23 = v60;
        v61[0] = v5;
        v25 = v5[2];
        v24 = v5[3];
        object = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v3 = v61;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v5 = v61[0];
        }

        v5[2] = object;
        v26 = &v5[2 * v25];
        v26[4] = v4;
        v26[5] = v23;
        v18 += 5;
        if (!--v16)
        {
          v8 = v55;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_24:
      v27 = v5 + 5;
      v6 = -object;
      v13 = -1;
      do
      {
        v12 = v13 - object;
        if (v13 - object == -1)
        {
          break;
        }

        if (++v13 >= v5[2])
        {
          __break(1u);
          goto LABEL_52;
        }

        v28 = v27 + 2;
        v3 = *v27;

        v4 = String.count.getter();

        v27 = v28;
      }

      while (v4 < 56);
      v59 = 9051;
      v60 = 0xE200000000000000;
      v61[0] = v8;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v30;
      MEMORY[0x26D69CDB0](v29);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v13 = v59;
      v31 = v60;
      if (v12 == -1)
      {
        v59 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v37 = BidirectionalCollection<>.joined(separator:)();
        v39 = v38;

        v40 = 0;
        v41 = 0xE000000000000000;
      }

      else
      {
        v52 = v60;
        v53 = v59;
        v32 = String.count.getter();
        v33._countAndFlagsBits = 32;
        v33._object = 0xE100000000000000;
        v34 = String.init(repeating:count:)(v33, v32);
        countAndFlagsBits = v34._countAndFlagsBits;
        object = v34._object;
        v12 = v5[2];
        if (v12)
        {
          v61[0] = v17;
          v3 = v61;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
          v56 = v5[2];
          if (!v56)
          {
            goto LABEL_52;
          }

          v58 = v12;
          v35 = v61[0];
          v12 = v5[4];
          v4 = v5[5];
          v13 = *(v61[0] + 16);
          v3 = *(v61[0] + 24);
          v6 = v13 + 1;

          if (v13 >= v3 >> 1)
          {
            goto LABEL_57;
          }

          while (1)
          {
            *(v35 + 16) = v6;
            v36 = v35 + 16 * v13;
            *(v36 + 32) = v12;
            *(v36 + 40) = v4;
            if (v58 == 1)
            {
              break;
            }

            v12 = (v5 + 7);
            v45 = 1;
            while (v56 != v45)
            {
              if (v45 >= v5[2])
              {
                goto LABEL_53;
              }

              v47 = *(v12 - 8);
              v46 = *v12;
              v59 = countAndFlagsBits;
              v60 = object;

              v3 = &v59;
              MEMORY[0x26D69CDB0](v47, v46);
              v6 = v59;
              v13 = v60;
              v61[0] = v35;
              v49 = *(v35 + 16);
              v48 = *(v35 + 24);
              v4 = v49 + 1;
              if (v49 >= v48 >> 1)
              {
                v3 = v61;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
                v35 = v61[0];
              }

              ++v45;
              *(v35 + 16) = v4;
              v50 = v35 + 16 * v49;
              *(v50 + 32) = v6;
              *(v50 + 40) = v13;
              v12 += 16;
              if (v58 == v45)
              {
                goto LABEL_33;
              }
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            v51 = v3 > 1;
            v3 = v61;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v6, 1);
            v35 = v61[0];
          }

LABEL_33:
        }

        else
        {

          v35 = MEMORY[0x277D84F90];
        }

        v59 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v40 = 10;
        v41 = 0xE100000000000000;
        v37 = BidirectionalCollection<>.joined(separator:)();
        v39 = v42;

        v31 = v52;
        v13 = v53;
      }

      v59 = v13;
      v60 = v31;
      MEMORY[0x26D69CDB0](v37, v39);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v54 >= v55)
      {
        v43 = 0;
      }

      else
      {
        v43 = 3026478;
      }

      if (v54 >= v55)
      {
        v44 = 0xE000000000000000;
      }

      else
      {
        v44 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v43, v44);

      MEMORY[0x26D69CDB0](v40, v41);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v59;
    }
  }

  return result;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = HIDWORD(a3);
  if (*a1 < 1 || v8 == 0)
  {
    *(&v65[0] + 1) = 0xE200000000000000;
    *&v62 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v12 = a1;
    v13 = a1[1];
    if (v13 < 0)
    {
      goto LABEL_51;
    }

    v6 = a2;
    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v13, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v8 < v16)
    {
      goto LABEL_53;
    }

    v58 = v13;
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v64 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v5 = v64;
      v4 = v6;
      while (v6)
      {
        v18 = *(v4 + 80);
        v65[4] = *(v4 + 64);
        v65[5] = v18;
        v19 = *(v4 + 112);
        v65[6] = *(v4 + 96);
        v65[7] = v19;
        v20 = *(v4 + 16);
        v65[0] = *v4;
        v65[1] = v20;
        v21 = *(v4 + 48);
        v65[2] = *(v4 + 32);
        v65[3] = v21;
        v22 = *(v12 + 16);
        v62 = *v12;
        v63[0] = v22;
        *(v63 + 10) = *(v12 + 26);
        v3 = v65;
        result = Event.describe(state:)(&v62);
        v64 = v5;
        v25 = v5[2];
        v24 = v5[3];
        object = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v3 = &v64;
          v61 = result;
          v27 = v17;
          v28 = v8;
          v29 = v23;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v23 = v29;
          v8 = v28;
          v17 = v27;
          result = v61;
          v5 = v64;
        }

        v5[2] = object;
        v26 = &v5[2 * v25];
        v26[4] = result;
        v26[5] = v23;
        v4 += 128;
        if (!--v16)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_21:
      v30 = v5 + 5;
      v6 = -object;
      v12 = -1;
      do
      {
        v13 = v12 - object;
        if (v12 - object == -1)
        {
          break;
        }

        if (++v12 >= v5[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v31 = v30 + 2;
        v3 = *v30;

        v4 = String.count.getter();

        v30 = v31;
      }

      while (v4 < 56);
      *&v62 = 9051;
      *(&v62 + 1) = 0xE200000000000000;
      v64 = v8;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v33;
      MEMORY[0x26D69CDB0](v32);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v34 = *(&v62 + 1);
      v12 = v62;
      v57 = v8;
      if (v13 == -1)
      {
        *&v62 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v40 = BidirectionalCollection<>.joined(separator:)();
        v42 = v41;

        v43 = 0;
        v44 = 0xE000000000000000;
      }

      else
      {
        v55 = *(&v62 + 1);
        v56 = v62;
        v35 = String.count.getter();
        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        v37 = String.init(repeating:count:)(v36, v35);
        countAndFlagsBits = v37._countAndFlagsBits;
        object = v37._object;
        v13 = v5[2];
        if (v13)
        {
          v64 = v17;
          v3 = &v64;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
          v59 = v5[2];
          if (!v59)
          {
            goto LABEL_49;
          }

          v61 = v13;
          v38 = v64;
          v13 = v5[4];
          v4 = v5[5];
          v12 = v64[2];
          v3 = v64[3];
          v6 = v12 + 1;

          if (v12 >= v3 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v38[2] = v6;
            v39 = &v38[2 * v12];
            v39[4] = v13;
            v39[5] = v4;
            if (v61 == 1)
            {
              break;
            }

            v13 = (v5 + 7);
            v48 = 1;
            while (v59 != v48)
            {
              if (v48 >= v5[2])
              {
                goto LABEL_50;
              }

              v50 = *(v13 - 8);
              v49 = *v13;
              *&v62 = countAndFlagsBits;
              *(&v62 + 1) = object;

              v3 = &v62;
              MEMORY[0x26D69CDB0](v50, v49);
              v12 = *(&v62 + 1);
              v6 = v62;
              v64 = v38;
              v52 = v38[2];
              v51 = v38[3];
              v4 = v52 + 1;
              if (v52 >= v51 >> 1)
              {
                v3 = &v64;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
                v38 = v64;
              }

              ++v48;
              v38[2] = v4;
              v53 = &v38[2 * v52];
              v53[4] = v6;
              v53[5] = v12;
              v13 += 16;
              if (v61 == v48)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v54 = v3 > 1;
            v3 = &v64;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54, v6, 1);
            v38 = v64;
          }

LABEL_30:
        }

        else
        {

          v38 = MEMORY[0x277D84F90];
        }

        *&v62 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v43 = 10;
        v44 = 0xE100000000000000;
        v40 = BidirectionalCollection<>.joined(separator:)();
        v42 = v45;

        v34 = v55;
        v12 = v56;
      }

      *&v62 = v12;
      *(&v62 + 1) = v34;
      MEMORY[0x26D69CDB0](v40, v42);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v58 >= v57)
      {
        v46 = 0;
      }

      else
      {
        v46 = 3026478;
      }

      if (v58 >= v57)
      {
        v47 = 0xE000000000000000;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v46, v47);

      MEMORY[0x26D69CDB0](v43, v44);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v62;
    }
  }

  return result;
}

{
  v60 = a2;
  v7 = HIDWORD(a3);
  v8 = *a1 - 1;
  if (*a1 < 1 || v7 == 0)
  {
    *&v69 = 0xE200000000000000;
    v64 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v13 = (a1 + 1);
    v12 = a1[1];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v7;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v7 < v16)
    {
      goto LABEL_53;
    }

    v56 = v12;
    v57 = v7;
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v63 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v4 = v63;
      v18 = v60 + 4;
      while (v60)
      {
        v19 = *(v18 - 4);
        v20 = *(v13 + 16);
        v69 = *v13;
        v70 = v20;
        v71 = *(v13 + 32);
        v68 = v8;
        v61 = specialized InspectionState.wrapDescription<A>(_:)();
        v62 = v21;
        MEMORY[0x26D69CDB0](58, 0xE100000000000000);
        v22 = *(v13 + 16);
        v65 = *v13;
        v66 = v22;
        v67 = *(v13 + 32);
        v64 = v8;
        v23 = specialized InspectionState.wrapDescription<A>(_:)(v19);
        v12 = &v61;
        MEMORY[0x26D69CDB0](v23);

        v3 = v61;
        v24 = v62;
        v63 = v4;
        v26 = v4[2];
        v25 = v4[3];
        object = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v12 = &v63;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v4 = v63;
        }

        v4[2] = object;
        v27 = &v4[2 * v26];
        v27[4] = v3;
        v27[5] = v24;
        v18 += 8;
        if (!--v16)
        {
          v17 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v4 = MEMORY[0x277D84F90];
LABEL_21:
      v28 = v4 + 5;
      v5 = -object;
      v13 = -1;
      do
      {
        v7 = (v13 - object);
        if (v13 - object == -1)
        {
          break;
        }

        if (++v13 >= v4[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v29 = v28 + 2;
        v12 = *v28;

        v3 = String.count.getter();

        v28 = v29;
      }

      while (v3 < 56);
      v61 = 9051;
      v62 = 0xE200000000000000;
      v63 = v57;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v3 = v31;
      MEMORY[0x26D69CDB0](v30);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v13 = v61;
      v32 = v62;
      if (v7 == -1)
      {
        v61 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v38 = BidirectionalCollection<>.joined(separator:)();
        v40 = v39;

        v41 = 0;
        v42 = 0xE000000000000000;
        v43 = v57;
      }

      else
      {
        v54 = v62;
        v55 = v61;
        v33 = String.count.getter();
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        v35 = String.init(repeating:count:)(v34, v33);
        countAndFlagsBits = v35._countAndFlagsBits;
        object = v35._object;
        v7 = v4[2];
        if (v7)
        {
          v63 = v17;
          v12 = &v63;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
          v58 = v4[2];
          if (!v58)
          {
            goto LABEL_49;
          }

          v60 = v7;
          v36 = v63;
          v7 = v4[4];
          v3 = v4[5];
          v13 = v63[2];
          v12 = v63[3];
          v5 = v13 + 1;

          if (v13 >= v12 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            *(v36 + 16) = v5;
            v37 = v36 + 16 * v13;
            *(v37 + 32) = v7;
            *(v37 + 40) = v3;
            if (v60 == 1)
            {
              break;
            }

            v7 = v4 + 7;
            v47 = 1;
            while (v58 != v47)
            {
              if (v47 >= v4[2])
              {
                goto LABEL_50;
              }

              v49 = *(v7 - 1);
              v48 = *v7;
              v61 = countAndFlagsBits;
              v62 = object;

              v12 = &v61;
              MEMORY[0x26D69CDB0](v49, v48);
              v5 = v61;
              v13 = v62;
              v63 = v36;
              v51 = *(v36 + 16);
              v50 = *(v36 + 24);
              v3 = v51 + 1;
              if (v51 >= v50 >> 1)
              {
                v12 = &v63;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
                v36 = v63;
              }

              ++v47;
              *(v36 + 16) = v3;
              v52 = v36 + 16 * v51;
              *(v52 + 32) = v5;
              *(v52 + 40) = v13;
              v7 += 2;
              if (v60 == v47)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v53 = v12 > 1;
            v12 = &v63;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v5, 1);
            v36 = v63;
          }

LABEL_30:
        }

        else
        {

          v36 = MEMORY[0x277D84F90];
        }

        v61 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v41 = 10;
        v42 = 0xE100000000000000;
        v38 = BidirectionalCollection<>.joined(separator:)();
        v40 = v44;

        v43 = v57;
        v32 = v54;
        v13 = v55;
      }

      v61 = v13;
      v62 = v32;
      MEMORY[0x26D69CDB0](v38, v40);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v56 >= v43)
      {
        v45 = 0;
      }

      else
      {
        v45 = 3026478;
      }

      if (v56 >= v43)
      {
        v46 = 0xE000000000000000;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v45, v46);

      MEMORY[0x26D69CDB0](v41, v42);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v61;
    }
  }

  return result;
}

{
  v9 = HIDWORD(a3);
  if (*a1 < 1 || v9 == 0)
  {
    v56 = 9051;
    v57 = 0xE200000000000000;
    v55 = HIDWORD(a3);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v11);
LABEL_41:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return v56;
  }

  v12 = a1[1];
  if (v12 < 0)
  {
    goto LABEL_52;
  }

  v6 = a2;
  v13 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
  if (v14)
  {
    v7 = v9;
  }

  else
  {
    v7 = v13;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (v9 < v7)
  {
    goto LABEL_54;
  }

  v51 = v12;
  v15 = MEMORY[0x277D84F90];
  if (!v7)
  {
    v20 = *(MEMORY[0x277D84F90] + 16);
    v5 = MEMORY[0x277D84F90];
LABEL_21:
    v23 = v5 + 5;
    v6 = -v20;
    v7 = -1;
    do
    {
      v12 = v6 + v7;
      if (v6 + v7 == -1)
      {
        break;
      }

      if (++v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_50;
      }

      v24 = v23 + 2;
      v3 = *v23;

      v4 = String.count.getter();

      v23 = v24;
    }

    while (v4 < 56);
    v56 = 9051;
    v57 = 0xE200000000000000;
    v55 = v9;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v26;
    MEMORY[0x26D69CDB0](v25);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v7 = v56;
    v27 = v57;
    v50 = v9;
    if (v12 == -1)
    {
      v56 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v33 = BidirectionalCollection<>.joined(separator:)();
      v35 = v34;

      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v48 = v57;
      v49 = v56;
      v28 = String.count.getter();
      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      v30 = String.init(repeating:count:)(v29, v28);
      countAndFlagsBits = v30._countAndFlagsBits;
      object = v30._object;
      v12 = v5[2];
      if (v12)
      {
        v55 = v15;
        v3 = &v55;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v52 = v5[2];
        if (!v52)
        {
          goto LABEL_50;
        }

        v54 = v12;
        v31 = v55;
        v12 = v5[4];
        v4 = v5[5];
        v7 = *(v55 + 16);
        v3 = *(v55 + 24);
        v6 = v7 + 1;

        if (v7 >= v3 >> 1)
        {
          goto LABEL_55;
        }

        while (1)
        {
          *(v31 + 16) = v6;
          v32 = v31 + 16 * v7;
          *(v32 + 32) = v12;
          *(v32 + 40) = v4;
          if (v54 == 1)
          {
            break;
          }

          v12 = (v5 + 7);
          v41 = 1;
          while (v52 != v41)
          {
            if (v41 >= v5[2])
            {
              goto LABEL_51;
            }

            v43 = *(v12 - 8);
            v42 = *v12;
            v56 = countAndFlagsBits;
            v57 = object;

            v3 = &v56;
            MEMORY[0x26D69CDB0](v43, v42);
            v6 = v56;
            v7 = v57;
            v55 = v31;
            v45 = *(v31 + 16);
            v44 = *(v31 + 24);
            v4 = v45 + 1;
            if (v45 >= v44 >> 1)
            {
              v3 = &v55;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
              v31 = v55;
            }

            ++v41;
            *(v31 + 16) = v4;
            v46 = v31 + 16 * v45;
            *(v46 + 32) = v6;
            *(v46 + 40) = v7;
            v12 += 16;
            if (v54 == v41)
            {
              goto LABEL_30;
            }
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v47 = v3 > 1;
          v3 = &v55;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v6, 1);
          v31 = v55;
        }

LABEL_30:
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v56 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v36 = 10;
      v37 = 0xE100000000000000;
      v33 = BidirectionalCollection<>.joined(separator:)();
      v35 = v38;

      v27 = v48;
      v7 = v49;
    }

    v56 = v7;
    v57 = v27;
    MEMORY[0x26D69CDB0](v33, v35);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v51 >= v50)
    {
      v39 = 0;
    }

    else
    {
      v39 = 3026478;
    }

    if (v51 >= v50)
    {
      v40 = 0xE000000000000000;
    }

    else
    {
      v40 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v39, v40);

    MEMORY[0x26D69CDB0](v36, v37);
    goto LABEL_41;
  }

  v56 = MEMORY[0x277D84F90];
  v3 = &v56;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v5 = v56;
  v17 = (v6 + 8);
  while (v6)
  {
    result = Interpreter.Range.describe(state:)(result, *(v17 - 1), *v17);
    v56 = v5;
    v4 = v5[2];
    v19 = v5[3];
    v20 = v4 + 1;
    if (v4 >= v19 >> 1)
    {
      v3 = &v56;
      v22 = result;
      object = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v4 + 1, 1);
      v18 = object;
      result = v22;
      v5 = v56;
    }

    v5[2] = v20;
    v21 = &v5[2 * v4];
    v21[4] = result;
    v21[5] = v18;
    v17 += 2;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *specialized ArrayLike.describe(state:)(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  if (*a1 < 1 || v7 == 0)
  {
    *&v69[0] = 9051;
    *(&v69[0] + 1) = 0xE200000000000000;
    *&v68[0] = HIDWORD(a3);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v9);
LABEL_42:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return *&v69[0];
  }

  v10 = a1;
  v11 = *(a1 + 1);
  if (v11 < 0)
  {
    goto LABEL_53;
  }

  v6 = a2;
  v12 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v11, HIDWORD(a3), a2, a3);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (v7 < v14)
  {
    goto LABEL_55;
  }

  v15 = MEMORY[0x277D84F90];
  v57 = v11;
  v58 = v7;
  if (!v14)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v70 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  if (v6)
  {
    v5 = v70;
    for (i = v6; ; i += 5)
    {
      v68[0] = *i;
      v18 = i[1];
      v19 = i[2];
      v20 = i[4];
      v68[3] = i[3];
      v68[4] = v20;
      v68[1] = v18;
      v68[2] = v19;
      v21 = i[3];
      v65 = i[2];
      v66 = v21;
      v67 = i[4];
      v22 = i[1];
      v63 = *i;
      v64 = v22;
      v23 = *(v10 + 16);
      v61 = *v10;
      v62[0] = v23;
      *(v62 + 10) = *(v10 + 26);
      outlined init with copy of GraphContext(v68, v69);
      outlined init with copy of GraphContext(v68, v69);
      v3 = &v63;
      v24 = GraphContext.describe(state:)(&v61);
      v26 = v25;
      v69[2] = v65;
      v69[3] = v66;
      v69[4] = v67;
      v69[0] = v63;
      v69[1] = v64;
      outlined destroy of GraphContext(v69);
      outlined destroy of GraphContext(v68);
      v70 = v5;
      v28 = v5[2];
      v27 = v5[3];
      v4 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v3 = &v70;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v5 = v70;
      }

      v5[2] = v4;
      v29 = &v5[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      if (!--v14)
      {
        break;
      }
    }

    v7 = v58;
    v15 = MEMORY[0x277D84F90];
LABEL_22:
    v30 = v5 + 5;
    v6 = -v5[2];
    v10 = -1;
    do
    {
      v11 = v6 + v10;
      if (v6 + v10 == -1)
      {
        break;
      }

      if (++v10 >= v5[2])
      {
        __break(1u);
        goto LABEL_51;
      }

      v31 = v30 + 2;
      v3 = *v30;

      v4 = String.count.getter();

      v30 = v31;
    }

    while (v4 < 56);
    *&v69[0] = 9051;
    *(&v69[0] + 1) = 0xE200000000000000;
    *&v68[0] = v7;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v33;
    MEMORY[0x26D69CDB0](v32);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v34 = *(&v69[0] + 1);
    v10 = *&v69[0];
    if (v11 == -1)
    {
      *&v69[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v41;

      v43 = 0;
      v44 = 0xE000000000000000;
    }

    else
    {
      v55 = *(&v69[0] + 1);
      v56 = *&v69[0];
      v35 = String.count.getter();
      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      v37 = String.init(repeating:count:)(v36, v35);
      *&v60 = v37._countAndFlagsBits;
      v7 = v5[2];
      if (v7)
      {
        *(&v60 + 1) = v37._object;
        *&v68[0] = v15;
        v3 = v68;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v59 = v5[2];
        if (!v59)
        {
          goto LABEL_51;
        }

        v38 = *&v68[0];
        v11 = v5[4];
        v4 = v5[5];
        v10 = *(*&v68[0] + 16);
        v3 = *(*&v68[0] + 24);
        v6 = v10 + 1;

        if (v10 >= v3 >> 1)
        {
          goto LABEL_56;
        }

        while (1)
        {
          *(v38 + 16) = v6;
          v39 = v38 + 16 * v10;
          *(v39 + 32) = v11;
          *(v39 + 40) = v4;
          if (v7 == 1)
          {
            break;
          }

          v11 = (v5 + 7);
          v48 = 1;
          while (v59 != v48)
          {
            if (v48 >= v5[2])
            {
              goto LABEL_52;
            }

            v50 = *(v11 - 8);
            v49 = *v11;
            v69[0] = v60;

            v3 = v69;
            MEMORY[0x26D69CDB0](v50, v49);
            v10 = *(&v69[0] + 1);
            v6 = *&v69[0];
            *&v68[0] = v38;
            v52 = *(v38 + 16);
            v51 = *(v38 + 24);
            v4 = v52 + 1;
            if (v52 >= v51 >> 1)
            {
              v3 = v68;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
              v38 = *&v68[0];
            }

            ++v48;
            *(v38 + 16) = v4;
            v53 = v38 + 16 * v52;
            *(v53 + 32) = v6;
            *(v53 + 40) = v10;
            v11 += 16;
            if (v7 == v48)
            {
              goto LABEL_31;
            }
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v54 = v3 > 1;
          v3 = v68;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54, v6, 1);
          v38 = *&v68[0];
        }

LABEL_31:
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      *&v69[0] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v43 = 10;
      v44 = 0xE100000000000000;
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v45;

      v34 = v55;
      v10 = v56;
    }

    *&v69[0] = v10;
    *(&v69[0] + 1) = v34;
    MEMORY[0x26D69CDB0](v40, v42);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v57 >= v58)
    {
      v46 = 0;
    }

    else
    {
      v46 = 3026478;
    }

    if (v57 >= v58)
    {
      v47 = 0xE000000000000000;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v46, v47);

    MEMORY[0x26D69CDB0](v43, v44);
    goto LABEL_42;
  }

  __break(1u);
  return result;
}

unint64_t specialized ArrayLike.describe(state:)(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v65 = a2;
  v8 = HIDWORD(a3);
  if (*a1 < 1 || v8 == 0)
  {
    *(&v71[0] + 1) = 0xE200000000000000;
    v66 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v12 = a1;
    v13 = *(a1 + 1);
    if (v13 < 0)
    {
      goto LABEL_51;
    }

    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v13, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v8 < v16)
    {
      goto LABEL_53;
    }

    v61 = v13;
    v17 = MEMORY[0x277D84F90];
    v62 = v8;
    if (v16)
    {
      v4 = &v68;
      v70 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v5 = v70;
      v18 = v65;
      while (v65)
      {
        v19 = *v18;
        v20 = *(v18 + 32);
        v71[1] = *(v18 + 16);
        v71[2] = v20;
        v71[0] = v19;
        v21 = *(v18 + 48);
        v22 = *(v18 + 64);
        v23 = *(v18 + 96);
        v71[5] = *(v18 + 80);
        v71[6] = v23;
        v71[3] = v21;
        v71[4] = v22;
        v24 = *(v18 + 112);
        v25 = *(v18 + 128);
        v26 = *(v18 + 144);
        v72 = *(v18 + 160);
        v71[8] = v25;
        v71[9] = v26;
        v71[7] = v24;
        v27 = *(v12 + 16);
        v68 = *v12;
        v69[0] = v27;
        *(v69 + 10) = *(v12 + 26);
        outlined init with copy of Subgraph(v71, &v66);
        v3 = v71;
        v28 = Subgraph.describe(state:)(&v68);
        v30 = v29;
        result = outlined destroy of Subgraph(v71);
        v70 = v5;
        v32 = v5[2];
        v31 = v5[3];
        object = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v3 = &v70;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v5 = v70;
        }

        v5[2] = object;
        v33 = &v5[2 * v32];
        v33[4] = v28;
        v33[5] = v30;
        v18 += 168;
        if (!--v16)
        {
          v8 = v62;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_21:
      v34 = (v5 + 5);
      v6 = -object;
      v12 = -1;
      do
      {
        v13 = v12 - object;
        if (v12 - object == -1)
        {
          break;
        }

        if (++v12 >= v5[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v35 = v34 + 2;
        v3 = *v34;

        v4 = String.count.getter();

        v34 = v35;
      }

      while (v4 < 56);
      v66 = 9051;
      v67 = 0xE200000000000000;
      *&v68 = v8;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v37;
      MEMORY[0x26D69CDB0](v36);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v12 = v66;
      v38 = v67;
      if (v13 == -1)
      {
        v66 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v44 = BidirectionalCollection<>.joined(separator:)();
        v46 = v45;

        v47 = 0;
        v48 = 0xE000000000000000;
      }

      else
      {
        v59 = v67;
        v60 = v66;
        v39 = String.count.getter();
        v40._countAndFlagsBits = 32;
        v40._object = 0xE100000000000000;
        v41 = String.init(repeating:count:)(v40, v39);
        countAndFlagsBits = v41._countAndFlagsBits;
        object = v41._object;
        v13 = v5[2];
        if (v13)
        {
          *&v68 = v17;
          v3 = &v68;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
          v63 = v5[2];
          if (!v63)
          {
            goto LABEL_49;
          }

          v65 = v13;
          v42 = v68;
          v13 = v5[4];
          v4 = v5[5];
          v12 = *(v68 + 16);
          v3 = *(v68 + 24);
          v6 = v12 + 1;

          if (v12 >= v3 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            *(v42 + 16) = v6;
            v43 = v42 + 16 * v12;
            *(v43 + 32) = v13;
            *(v43 + 40) = v4;
            if (v65 == 1)
            {
              break;
            }

            v13 = (v5 + 7);
            v52 = 1;
            while (v63 != v52)
            {
              if (v52 >= v5[2])
              {
                goto LABEL_50;
              }

              v54 = *(v13 - 8);
              v53 = *v13;
              v66 = countAndFlagsBits;
              v67 = object;

              v3 = &v66;
              MEMORY[0x26D69CDB0](v54, v53);
              v6 = v66;
              v12 = v67;
              *&v68 = v42;
              v56 = *(v42 + 16);
              v55 = *(v42 + 24);
              v4 = v56 + 1;
              if (v56 >= v55 >> 1)
              {
                v3 = &v68;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
                v42 = v68;
              }

              ++v52;
              *(v42 + 16) = v4;
              v57 = v42 + 16 * v56;
              *(v57 + 32) = v6;
              *(v57 + 40) = v12;
              v13 += 16;
              if (v65 == v52)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v58 = v3 > 1;
            v3 = &v68;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v6, 1);
            v42 = v68;
          }

LABEL_30:
        }

        else
        {

          v42 = MEMORY[0x277D84F90];
        }

        v66 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v47 = 10;
        v48 = 0xE100000000000000;
        v44 = BidirectionalCollection<>.joined(separator:)();
        v46 = v49;

        v38 = v59;
        v12 = v60;
      }

      v66 = v12;
      v67 = v38;
      MEMORY[0x26D69CDB0](v44, v46);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v61 >= v62)
      {
        v50 = 0;
      }

      else
      {
        v50 = 3026478;
      }

      if (v61 >= v62)
      {
        v51 = 0xE000000000000000;
      }

      else
      {
        v51 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v50, v51);

      MEMORY[0x26D69CDB0](v47, v48);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v66;
    }
  }

  return result;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a3);
  if (*a1 < 1 || ((v6 = a3, v8 = a1, swift_conformsToProtocol2()) ? (v9 = v5 == 0) : (v9 = 1), v9))
  {
    *&v59 = 9051;
    *(&v59 + 1) = 0xE200000000000000;
    v61[0] = v5;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);
LABEL_42:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return v59;
  }

  v11 = *(v8 + 8);
  if (v11 < 0)
  {
    goto LABEL_53;
  }

  v12 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, *(v8 + 8), v5, a2, v6);
  if (v13)
  {
    v14 = v5;
  }

  else
  {
    v14 = v12;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (v5 < v14)
  {
    goto LABEL_55;
  }

  v55 = v11;
  v15 = MEMORY[0x277D84F90];
  v56 = v5;
  if (!v14)
  {
    v27 = *(MEMORY[0x277D84F90] + 16);
    v4 = MEMORY[0x277D84F90];
LABEL_22:
    v29 = v4 + 5;
    a2 = -v27;
    v8 = -1;
    do
    {
      v3 = a2 + v8;
      if (a2 + v8 == -1)
      {
        break;
      }

      if (++v8 >= v4[2])
      {
        __break(1u);
        goto LABEL_51;
      }

      v30 = v29 + 2;
      v6 = *v29;

      v11 = String.count.getter();

      v29 = v30;
    }

    while (v11 < 56);
    *&v59 = 9051;
    *(&v59 + 1) = 0xE200000000000000;
    v61[0] = v5;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v32;
    MEMORY[0x26D69CDB0](v31);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v8 = *(&v59 + 1);
    a2 = v59;
    if (v3 == -1)
    {
      *&v59 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v39;

      v41 = 0;
      v42 = 0xE000000000000000;
    }

    else
    {
      v33 = String.count.getter();
      v34._countAndFlagsBits = 32;
      v34._object = 0xE100000000000000;
      v35 = String.init(repeating:count:)(v34, v33);
      *&v58 = v35._countAndFlagsBits;
      v5 = v4[2];
      if (v5)
      {
        *(&v58 + 1) = v35._object;
        v53 = v8;
        v54 = a2;
        v61[0] = v15;
        v11 = v61;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v57 = v4[2];
        if (!v57)
        {
          goto LABEL_51;
        }

        v36 = v61[0];
        v8 = v4[4];
        v6 = v4[5];
        a2 = *(v61[0] + 16);
        v11 = *(v61[0] + 24);
        v3 = a2 + 1;

        if (a2 >= v11 >> 1)
        {
          goto LABEL_56;
        }

        while (1)
        {
          *(v36 + 16) = v3;
          v37 = v36 + 16 * a2;
          *(v37 + 32) = v8;
          *(v37 + 40) = v6;
          if (v5 == 1)
          {
            break;
          }

          v8 = (v4 + 7);
          v46 = 1;
          while (v57 != v46)
          {
            if (v46 >= v4[2])
            {
              goto LABEL_52;
            }

            v48 = *(v8 - 8);
            v47 = *v8;
            v59 = v58;

            v11 = &v59;
            MEMORY[0x26D69CDB0](v48, v47);
            a2 = *(&v59 + 1);
            v3 = v59;
            v61[0] = v36;
            v50 = *(v36 + 16);
            v49 = *(v36 + 24);
            v6 = v50 + 1;
            if (v50 >= v49 >> 1)
            {
              v11 = v61;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
              v36 = v61[0];
            }

            ++v46;
            *(v36 + 16) = v6;
            v51 = v36 + 16 * v50;
            *(v51 + 32) = v3;
            *(v51 + 40) = a2;
            v8 += 16;
            if (v5 == v46)
            {
              goto LABEL_31;
            }
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v52 = v11 > 1;
          v11 = v61;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v3, 1);
          v36 = v61[0];
        }

LABEL_31:

        v8 = v53;
        a2 = v54;
      }

      else
      {

        v36 = MEMORY[0x277D84F90];
      }

      *&v59 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v41 = 10;
      v42 = 0xE100000000000000;
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v43;
    }

    *&v59 = a2;
    *(&v59 + 1) = v8;
    MEMORY[0x26D69CDB0](v38, v40);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v55 >= v56)
    {
      v44 = 0;
    }

    else
    {
      v44 = 3026478;
    }

    if (v55 >= v56)
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v44, v45);

    MEMORY[0x26D69CDB0](v41, v42);
    goto LABEL_42;
  }

  v67 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v4 = v67;
  v17 = (a2 + 16);
  while (a2)
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v64 = *(v17 - 2);
    v65 = v18;
    v66 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
    swift_dynamicCast();
    v20 = v62;
    v21 = v63;
    v11 = __swift_project_boxed_opaque_existential_1(v61, v62);
    v22 = *(v8 + 16);
    v59 = *v8;
    v60[0] = v22;
    *(v60 + 10) = *(v8 + 26);
    v6 = (*(v21 + 32))(&v59, v20, v21);
    v24 = v23;
    result = __swift_destroy_boxed_opaque_existential_1(v61);
    v67 = v4;
    v26 = v4[2];
    v25 = v4[3];
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v11 = &v67;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v4 = v67;
    }

    v4[2] = v27;
    v28 = &v4[2 * v26];
    v28[4] = v6;
    v28[5] = v24;
    v17 += 6;
    if (!--v14)
    {
      v5 = v56;
      v15 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized ArrayLike.describe(state:)(__int128 *a1, char *a2, unint64_t a3)
{
  __src = a2;
  object = HIDWORD(a3);
  if (*a1 < 1 || object == 0)
  {
    __dst[1] = 0xE200000000000000;
    v57 = HIDWORD(a3);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v9);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v11 = a1;
    v12 = *(a1 + 1);
    if (v12 < 0)
    {
      goto LABEL_51;
    }

    v13 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
    if (v14)
    {
      v15 = object;
    }

    else
    {
      v15 = v13;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (object < v15)
    {
      goto LABEL_53;
    }

    v52 = v12;
    v16 = MEMORY[0x277D84F90];
    v53 = object;
    if (v15)
    {
      v61 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v5 = v61;
      v17 = __src;
      while (__src)
      {
        memcpy(__dst, v17, 0x131uLL);
        v18 = *(v11 + 16);
        v59 = *v11;
        v60[0] = v18;
        *(v60 + 10) = *(v11 + 26);
        outlined init with copy of Attribute(__dst, &v57);
        v3 = __dst;
        v19 = Attribute.describe(state:)(&v59);
        v4 = v20;
        result = outlined destroy of Attribute(__dst);
        v61 = v5;
        v22 = v5[2];
        v21 = v5[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v3 = &v61;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v5 = v61;
        }

        v5[2] = v23;
        v24 = &v5[2 * v22];
        v24[4] = v19;
        v24[5] = v4;
        v17 += 312;
        if (!--v15)
        {
          object = v53;
          v16 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v23 = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_21:
      v25 = (v5 + 5);
      v6 = -v23;
      v11 = -1;
      do
      {
        v12 = v11 - v23;
        if (v11 - v23 == -1)
        {
          break;
        }

        if (++v11 >= v5[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v26 = v25 + 2;
        v3 = *v25;

        v4 = String.count.getter();

        v25 = v26;
      }

      while (v4 < 56);
      v57 = 9051;
      v58 = 0xE200000000000000;
      *&v59 = object;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v28;
      MEMORY[0x26D69CDB0](v27);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v11 = v57;
      v29 = v58;
      if (v12 == -1)
      {
        v57 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v35 = BidirectionalCollection<>.joined(separator:)();
        v37 = v36;

        v38 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v50 = v58;
        v51 = v57;
        v30 = String.count.getter();
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        v32 = String.init(repeating:count:)(v31, v30);
        countAndFlagsBits = v32._countAndFlagsBits;
        object = v32._object;
        v12 = v5[2];
        if (v12)
        {
          *&v59 = v16;
          v3 = &v59;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
          v54 = v5[2];
          if (!v54)
          {
            goto LABEL_49;
          }

          __src = v12;
          v33 = v59;
          v12 = v5[4];
          v4 = v5[5];
          v11 = *(v59 + 16);
          v3 = *(v59 + 24);
          v6 = v11 + 1;

          if (v11 >= v3 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            *(v33 + 16) = v6;
            v34 = v33 + 16 * v11;
            *(v34 + 32) = v12;
            *(v34 + 40) = v4;
            if (__src == 1)
            {
              break;
            }

            v12 = (v5 + 7);
            v43 = 1;
            while (v54 != v43)
            {
              if (v43 >= v5[2])
              {
                goto LABEL_50;
              }

              v45 = *(v12 - 8);
              v44 = *v12;
              v57 = countAndFlagsBits;
              v58 = object;

              v3 = &v57;
              MEMORY[0x26D69CDB0](v45, v44);
              v6 = v57;
              v11 = v58;
              *&v59 = v33;
              v47 = *(v33 + 16);
              v46 = *(v33 + 24);
              v4 = v47 + 1;
              if (v47 >= v46 >> 1)
              {
                v3 = &v59;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
                v33 = v59;
              }

              ++v43;
              *(v33 + 16) = v4;
              v48 = v33 + 16 * v47;
              *(v48 + 32) = v6;
              *(v48 + 40) = v11;
              v12 += 16;
              if (__src == v43)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v49 = v3 > 1;
            v3 = &v59;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v6, 1);
            v33 = v59;
          }

LABEL_30:
        }

        else
        {

          v33 = MEMORY[0x277D84F90];
        }

        v57 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v38 = 10;
        v39 = 0xE100000000000000;
        v35 = BidirectionalCollection<>.joined(separator:)();
        v37 = v40;

        v29 = v50;
        v11 = v51;
      }

      v57 = v11;
      v58 = v29;
      MEMORY[0x26D69CDB0](v35, v37);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v52 >= v53)
      {
        v41 = 0;
      }

      else
      {
        v41 = 3026478;
      }

      if (v52 >= v53)
      {
        v42 = 0xE000000000000000;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v41, v42);

      MEMORY[0x26D69CDB0](v38, v39);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v57;
    }
  }

  return result;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a2[2];
  if (*a1 >= 1 && v5)
  {
    v6 = a2;
    v59 = a2[2];
    v7 = a1[1];
    v8 = specialized Collection.prefix(_:)();
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_59;
    }

    v58 = v7;
    if (v13)
    {
      v3 = v9;
      v14 = v10;
      object = v8;
      v63 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v6 = &v63;
      v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_60;
      }

      v7 = v63;
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15 - v14;
      v17 = (v3 + 16 * v14 + 8);
      v2 = 0xE100000000000000;
      do
      {
        if (!v16)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v18 = *(v17 - 1);
        v19 = *v17;
        v64 = 40;
        v65 = 0xE100000000000000;
        if (v18 == -1)
        {
          v20 = 0xA300000000000000;
          v21 = 10389730;
        }

        else if (v18)
        {
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          v20 = v22;
        }

        else
        {
          v20 = 0xA400000000000000;
          v21 = 2659770925;
        }

        MEMORY[0x26D69CDB0](v21, v20);

        MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
        if (v19 == -1)
        {
          v23 = 0xA300000000000000;
          v24 = 10389730;
        }

        else if (v19)
        {
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = v25;
        }

        else
        {
          v23 = 0xA400000000000000;
          v24 = 2659770925;
        }

        MEMORY[0x26D69CDB0](v24, v23);

        v6 = &v64;
        v8 = MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        v3 = v64;
        v26 = v65;
        v63 = v7;
        v12 = v7[2];
        v27 = v7[3];
        v4 = v12 + 1;
        if (v12 >= v27 >> 1)
        {
          v6 = &v63;
          v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v12 + 1, 1);
          v7 = v63;
        }

        v7[2] = v4;
        v28 = &v7[2 * v12];
        v28[4] = v3;
        v28[5] = v26;
        --v16;
        v17 += 2;
        --v13;
      }

      while (v13);
      v8 = swift_unknownObjectRelease();
    }

    else
    {

      v8 = swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v30 = (v7 + 5);
    v3 = -v7[2];
    v31 = -1;
    do
    {
      v12 = v3 + v31;
      if (v3 + v31 == -1)
      {
        break;
      }

      if (++v31 >= v7[2])
      {
        goto LABEL_56;
      }

      v4 = (v30 + 2);
      v6 = *v30;

      v2 = String.count.getter();

      v30 = v4;
    }

    while (v2 < 56);
    v64 = 9051;
    v65 = 0xE200000000000000;
    v3 = v59;
    v63 = v59;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v33;
    MEMORY[0x26D69CDB0](v32);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v56 = v65;
    v57 = v64;
    if (v12 == -1)
    {
      v64 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      v42 = 0;
      v43 = 0xE000000000000000;
    }

    else
    {
      v34 = String.count.getter();
      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36 = String.init(repeating:count:)(v35, v34);
      countAndFlagsBits = v36._countAndFlagsBits;
      v4 = v7[2];
      if (v4)
      {
        object = v36._object;
        v63 = MEMORY[0x277D84F90];
        v6 = &v63;
        v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
        v60 = v7[2];
        if (!v60)
        {
          goto LABEL_57;
        }

        v37 = v63;
        v12 = v7[4];
        v2 = v63[2];
        v3 = v63[3];
        v6 = (v2 + 1);

        if (v2 >= v3 >> 1)
        {
          goto LABEL_61;
        }

        while (1)
        {
          *(v37 + 16) = v6;
          v38 = v37 + 16 * v2;
          *(v38 + 32) = v12;
          *(v38 + 40) = v8;
          if (v4 == 1)
          {
            break;
          }

          v3 = (v7 + 7);
          v48 = 1;
          while (v60 != v48)
          {
            if (v48 >= v7[2])
            {
              goto LABEL_58;
            }

            v49 = *(v3 - 8);
            v50 = *v3;
            v64 = countAndFlagsBits;
            v65 = object;

            v6 = &v64;
            v8 = MEMORY[0x26D69CDB0](v49, v50);
            v12 = v64;
            v2 = v65;
            v63 = v37;
            v52 = *(v37 + 16);
            v51 = *(v37 + 24);
            if (v52 >= v51 >> 1)
            {
              v6 = &v63;
              v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
              v37 = v63;
            }

            ++v48;
            *(v37 + 16) = v52 + 1;
            v53 = v37 + 16 * v52;
            *(v53 + 32) = v12;
            *(v53 + 40) = v2;
            v3 += 16;
            if (v4 == v48)
            {
              goto LABEL_36;
            }
          }

LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v54 = v3 > 1;
          v55 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54, v6, 1);
          v8 = v55;
          v37 = v63;
        }

LABEL_36:

        v3 = v59;
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      v64 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v42 = 10;
      v43 = 0xE100000000000000;
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v44;
    }

    v64 = v57;
    v65 = v56;
    MEMORY[0x26D69CDB0](v39, v41);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v58 >= v3)
    {
      v45 = 0;
    }

    else
    {
      v45 = 3026478;
    }

    if (v58 >= v3)
    {
      v46 = 0xE000000000000000;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v45, v46);

    MEMORY[0x26D69CDB0](v42, v43);
  }

  else
  {
    v64 = 9051;
    v65 = 0xE200000000000000;
    v63 = v5;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v29);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v64;
}

{
  v4 = a2[2];
  if (*a1 >= 1 && v4)
  {
    v5 = a2;
    v6 = a1[1];
    v7 = specialized Collection.prefix(_:)();
    v11 = v10 >> 1;
    v12 = (v10 >> 1) - v9;
    if (__OFSUB__(v10 >> 1, v9))
    {
      goto LABEL_49;
    }

    v50 = v6;
    v51 = v4;
    if (v12)
    {
      v3 = v8;
      v13 = v9;
      object = v7;
      v55 = MEMORY[0x277D84F90];
      v6 = (v12 & ~(v12 >> 63));

      v5 = &v55;
      v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      if (v12 < 0)
      {
        goto LABEL_50;
      }

      v6 = v55;
      if (v13 <= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      v15 = v14 - v13;
      v16 = v3 + 16 * v13 + 8;
      do
      {
        if (!v15)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v17;
        MEMORY[0x26D69CDB0](64, 0xE100000000000000);
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v5 = &v56;
        MEMORY[0x26D69CDB0](v18);

        v4 = v56;
        v2 = v57;
        v55 = v6;
        v3 = v6[2];
        v19 = v6[3];
        v11 = v3 + 1;
        if (v3 >= v19 >> 1)
        {
          v5 = &v55;
          v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v3 + 1, 1);
          v6 = v55;
        }

        v6[2] = v11;
        v20 = &v6[2 * v3];
        v20[4] = v4;
        v20[5] = v2;
        --v15;
        v16 += 16;
        --v12;
      }

      while (v12);
      v7 = swift_unknownObjectRelease();
    }

    else
    {
      v4 = v7;

      v7 = swift_unknownObjectRelease();
      v6 = MEMORY[0x277D84F90];
    }

    v22 = (v6 + 5);
    v23 = -v6[2];
    v11 = -1;
    do
    {
      v3 = v23 + v11;
      if (v23 + v11 == -1)
      {
        break;
      }

      if (++v11 >= v6[2])
      {
        goto LABEL_46;
      }

      v4 = (v22 + 2);
      v5 = *v22;

      v2 = String.count.getter();

      v22 = v4;
    }

    while (v2 < 56);
    v56 = 9051;
    v57 = 0xE200000000000000;
    v55 = v51;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v25;
    MEMORY[0x26D69CDB0](v24);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v48 = v57;
    v49 = v56;
    if (v3 == -1)
    {
      v56 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;

      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v26 = String.count.getter();
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      v28 = String.init(repeating:count:)(v27, v26);
      countAndFlagsBits = v28._countAndFlagsBits;
      v11 = v6[2];
      if (v11)
      {
        object = v28._object;
        v55 = MEMORY[0x277D84F90];
        v5 = &v55;
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
        v52 = v6[2];
        if (!v52)
        {
          goto LABEL_47;
        }

        v29 = v55;
        v4 = v6[4];
        v2 = v55[2];
        v3 = v55[3];
        v5 = (v2 + 1);

        if (v2 >= v3 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          *(v29 + 16) = v5;
          v30 = v29 + 16 * v2;
          *(v30 + 32) = v4;
          *(v30 + 40) = v7;
          if (v11 == 1)
          {
            break;
          }

          v3 = (v6 + 7);
          v40 = 1;
          while (v52 != v40)
          {
            if (v40 >= v6[2])
            {
              goto LABEL_48;
            }

            v41 = *(v3 - 8);
            v42 = *v3;
            v56 = countAndFlagsBits;
            v57 = object;

            v5 = &v56;
            v7 = MEMORY[0x26D69CDB0](v41, v42);
            v4 = v56;
            v2 = v57;
            v55 = v29;
            v44 = *(v29 + 16);
            v43 = *(v29 + 24);
            if (v44 >= v43 >> 1)
            {
              v5 = &v55;
              v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
              v29 = v55;
            }

            ++v40;
            *(v29 + 16) = v44 + 1;
            v45 = v29 + 16 * v44;
            *(v45 + 32) = v4;
            *(v45 + 40) = v2;
            v3 += 16;
            if (v11 == v40)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v46 = v3 > 1;
          v47 = v7;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46, v5, 1);
          v7 = v47;
          v29 = v55;
        }

LABEL_26:
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      v56 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v34 = 10;
      v35 = 0xE100000000000000;
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v36;
    }

    v56 = v49;
    v57 = v48;
    MEMORY[0x26D69CDB0](v31, v33);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v50 >= v51)
    {
      v37 = 0;
    }

    else
    {
      v37 = 3026478;
    }

    if (v50 >= v51)
    {
      v38 = 0xE000000000000000;
    }

    else
    {
      v38 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v37, v38);

    MEMORY[0x26D69CDB0](v34, v35);
  }

  else
  {
    v56 = 9051;
    v57 = 0xE200000000000000;
    v55 = v4;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v21);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v56;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, __int128 *a2)
{
  v4 = *(a2 + 2);
  if (*a1 >= 1 && v4)
  {
    v5 = a2;
    v6 = a1;
    v54 = *(a2 + 2);
    v7 = a1[1];
    v8 = specialized Collection.prefix(_:)();
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_49;
    }

    v2 = v8;
    v53 = v7;
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = v9;
      v3 = v10;
      v59 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v5 = &v59;
      v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_50;
      }

      v7 = v59;
      if (v3 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v3;
      }

      v12 = v16 - v3;
      v3 = v15 + 8 * v3;
      do
      {
        if (!v12)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = *v3;
        v18 = *(v6 + 16);
        v57 = *v6;
        v58[0] = v18;
        *(v58 + 10) = *(v6 + 26);
        v8 = TreeRef.describe(state:)(&v57, v17);
        v59 = v7;
        v21 = v7[2];
        v20 = v7[3];
        if (v21 >= v20 >> 1)
        {
          v5 = &v59;
          *(&v56 + 1) = v8;
          v23 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v23;
          v8 = *(&v56 + 1);
          v7 = v59;
        }

        v7[2] = v21 + 1;
        v22 = &v7[2 * v21];
        v22[4] = v8;
        v22[5] = v19;
        --v12;
        v3 += 8;
        --v13;
      }

      while (v13);
      v8 = swift_unknownObjectRelease();
    }

    else
    {

      v8 = swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v25 = (v7 + 5);
    v12 = -v7[2];
    v26 = -1;
    do
    {
      v2 = v12 + v26;
      if (v12 + v26 == -1)
      {
        break;
      }

      if (++v26 >= v7[2])
      {
        goto LABEL_46;
      }

      v3 = (v25 + 2);
      v5 = *v25;

      v6 = String.count.getter();

      v25 = v3;
    }

    while (v6 < 56);
    *&v57 = 9051;
    *(&v57 + 1) = 0xE200000000000000;
    v12 = v54;
    v59 = v54;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v28;
    MEMORY[0x26D69CDB0](v27);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v51 = *(&v57 + 1);
    v52 = v57;
    if (v2 == -1)
    {
      *&v57 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v29 = String.count.getter();
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      v31 = String.init(repeating:count:)(v30, v29);
      *&v56 = v31._countAndFlagsBits;
      v3 = v7[2];
      if (v3)
      {
        *(&v56 + 1) = v31._object;
        v59 = v14;
        v5 = &v59;
        v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        v55 = v7[2];
        if (!v55)
        {
          goto LABEL_47;
        }

        v32 = v59;
        v2 = v7[4];
        v6 = v59[2];
        v12 = v59[3];
        v5 = (v6 + 1);

        if (v6 >= v12 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          v32[2] = v5;
          v33 = &v32[2 * v6];
          v33[4] = v2;
          v33[5] = v8;
          if (v3 == 1)
          {
            break;
          }

          v12 = (v7 + 7);
          v43 = 1;
          while (v55 != v43)
          {
            if (v43 >= v7[2])
            {
              goto LABEL_48;
            }

            v44 = *(v12 - 8);
            v45 = *v12;
            v57 = v56;

            v5 = &v57;
            v8 = MEMORY[0x26D69CDB0](v44, v45);
            v6 = *(&v57 + 1);
            v2 = v57;
            v59 = v32;
            v47 = v32[2];
            v46 = v32[3];
            if (v47 >= v46 >> 1)
            {
              v5 = &v59;
              v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
              v32 = v59;
            }

            ++v43;
            v32[2] = v47 + 1;
            v48 = &v32[2 * v47];
            v48[4] = v2;
            v48[5] = v6;
            v12 += 16;
            if (v3 == v43)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v49 = v12 > 1;
          v50 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v5, 1);
          v8 = v50;
          v32 = v59;
        }

LABEL_26:

        v12 = v54;
      }

      else
      {

        v32 = MEMORY[0x277D84F90];
      }

      *&v57 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v37 = 10;
      v38 = 0xE100000000000000;
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v39;
    }

    *&v57 = v52;
    *(&v57 + 1) = v51;
    MEMORY[0x26D69CDB0](v34, v36);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v53 >= v12)
    {
      v40 = 0;
    }

    else
    {
      v40 = 3026478;
    }

    if (v53 >= v12)
    {
      v41 = 0xE000000000000000;
    }

    else
    {
      v41 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v40, v41);

    MEMORY[0x26D69CDB0](v37, v38);
  }

  else
  {
    *&v57 = 9051;
    *(&v57 + 1) = 0xE200000000000000;
    v59 = v4;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v24);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v57;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v5 = a2[2];
  if (*a1 >= 1 && v5)
  {
    v6 = a2;
    v7 = a1[1];
    v8 = a3(v7);
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_49;
    }

    v3 = v8;
    v51 = v7;
    v52 = v5;
    if (v13)
    {
      v4 = v9;
      v14 = v10;
      v57 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v6 = &v57;
      v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_50;
      }

      v7 = v57;
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15 - v14;
      v17 = (v4 + 4 * v14);
      v4 = MEMORY[0x277D84CC0];
      do
      {
        if (!v16)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        LODWORD(v56) = *v17;
        v6 = &v56;
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v7;
        v5 = v7[2];
        v19 = v7[3];
        v12 = v5 + 1;
        if (v5 >= v19 >> 1)
        {
          v6 = &v57;
          object = v8;
          v21 = v18;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v5 + 1, 1);
          v18 = v21;
          v8 = object;
          v7 = v57;
        }

        v7[2] = v12;
        v20 = &v7[2 * v5];
        v20[4] = v8;
        v20[5] = v18;
        --v16;
        ++v17;
        --v13;
      }

      while (v13);
      v8 = swift_unknownObjectRelease();
    }

    else
    {

      v8 = swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v23 = (v7 + 5);
    v24 = -v7[2];
    v12 = -1;
    do
    {
      v4 = v24 + v12;
      if (v24 + v12 == -1)
      {
        break;
      }

      if (++v12 >= v7[2])
      {
        goto LABEL_46;
      }

      v5 = (v23 + 2);
      v6 = *v23;

      v3 = String.count.getter();

      v23 = v5;
    }

    while (v3 < 56);
    v57 = 9051;
    v58 = 0xE200000000000000;
    v56 = v52;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v26;
    MEMORY[0x26D69CDB0](v25);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v49 = v58;
    v50 = v57;
    if (v4 == -1)
    {
      v57 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v33;

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v27 = String.count.getter();
      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      v29 = String.init(repeating:count:)(v28, v27);
      countAndFlagsBits = v29._countAndFlagsBits;
      v12 = v7[2];
      if (v12)
      {
        object = v29._object;
        v56 = MEMORY[0x277D84F90];
        v6 = &v56;
        v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v53 = v7[2];
        if (!v53)
        {
          goto LABEL_47;
        }

        v30 = v56;
        v5 = v7[4];
        v3 = *(v56 + 16);
        v4 = *(v56 + 24);
        v6 = (v3 + 1);

        if (v3 >= v4 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          *(v30 + 16) = v6;
          v31 = v30 + 16 * v3;
          *(v31 + 32) = v5;
          *(v31 + 40) = v8;
          if (v12 == 1)
          {
            break;
          }

          v4 = (v7 + 7);
          v41 = 1;
          while (v53 != v41)
          {
            if (v41 >= v7[2])
            {
              goto LABEL_48;
            }

            v42 = *(v4 - 8);
            v43 = *v4;
            v57 = countAndFlagsBits;
            v58 = object;

            v6 = &v57;
            v8 = MEMORY[0x26D69CDB0](v42, v43);
            v5 = v57;
            v3 = v58;
            v56 = v30;
            v45 = *(v30 + 16);
            v44 = *(v30 + 24);
            if (v45 >= v44 >> 1)
            {
              v6 = &v56;
              v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
              v30 = v56;
            }

            ++v41;
            *(v30 + 16) = v45 + 1;
            v46 = v30 + 16 * v45;
            *(v46 + 32) = v5;
            *(v46 + 40) = v3;
            v4 += 16;
            if (v12 == v41)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v47 = v4 > 1;
          v48 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v6, 1);
          v8 = v48;
          v30 = v56;
        }

LABEL_26:
      }

      else
      {

        v30 = MEMORY[0x277D84F90];
      }

      v57 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v35 = 10;
      v36 = 0xE100000000000000;
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v37;
    }

    v57 = v50;
    v58 = v49;
    MEMORY[0x26D69CDB0](v32, v34);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v51 >= v52)
    {
      v38 = 0;
    }

    else
    {
      v38 = 3026478;
    }

    if (v51 >= v52)
    {
      v39 = 0xE000000000000000;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v38, v39);

    MEMORY[0x26D69CDB0](v35, v36);
  }

  else
  {
    v57 = 9051;
    v58 = 0xE200000000000000;
    v56 = v5;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v22);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v57;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  if (*a1 >= 1 && v5)
  {
    v6 = a2;
    v51 = *(a2 + 16);
    v7 = a1[1];
    v8 = specialized Collection.prefix(_:)();
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_49;
    }

    v50 = v7;
    if (v13)
    {
      v14 = v9;
      v2 = v10;
      object = v8;
      v56 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v6 = &v56;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_50;
      }

      v7 = v56;
      if (v2 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v2;
      }

      v4 = v15 - v2;
      v16 = v14 + 32 * v2 + 16;
      do
      {
        if (!v4)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = *v16;
        v18 = *(v16 + 8);
        v57 = 0;
        v58 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        MEMORY[0x26D69CDB0](0x2072656666756228, 0xE800000000000000);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v19);

        MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
        v55[1] = v17;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](0x6F7028202020200ALL, 0xEF206E6F69746973);
        v55[0] = v18;
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v20);

        v6 = &v57;
        MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
        v2 = v57;
        v3 = v58;
        v56 = v7;
        v12 = v7[2];
        v21 = v7[3];
        if (v12 >= v21 >> 1)
        {
          v6 = &v56;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v12 + 1, 1);
          v7 = v56;
        }

        v7[2] = v12 + 1;
        v22 = &v7[2 * v12];
        v22[4] = v2;
        v22[5] = v3;
        --v4;
        v16 += 32;
        --v13;
      }

      while (v13);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v24 = v7 + 5;
    v12 = -v7[2];
    v3 = -1;
    do
    {
      v2 = v12 + v3;
      if (v12 + v3 == -1)
      {
        break;
      }

      if (++v3 >= v7[2])
      {
        goto LABEL_46;
      }

      v25 = v24 + 2;

      v6 = String.count.getter();

      v24 = v25;
    }

    while (v6 < 56);
    v57 = 9051;
    v58 = 0xE200000000000000;
    v12 = v51;
    v55[0] = v51;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v26);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v48 = v58;
    v49 = v57;
    if (v2 == -1)
    {
      v57 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v33;

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v27 = String.count.getter();
      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      v29 = String.init(repeating:count:)(v28, v27);
      countAndFlagsBits = v29._countAndFlagsBits;
      v3 = v7[2];
      if (v3)
      {
        object = v29._object;
        v55[0] = MEMORY[0x277D84F90];
        v6 = v55;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        v52 = v7[2];
        if (!v52)
        {
          goto LABEL_47;
        }

        v30 = v55[0];
        v12 = v7[4];
        v13 = v7[5];
        v2 = *(v55[0] + 16);
        v6 = *(v55[0] + 24);
        v4 = v2 + 1;

        if (v2 >= v6 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          *(v30 + 16) = v4;
          v31 = v30 + 16 * v2;
          *(v31 + 32) = v12;
          *(v31 + 40) = v13;
          if (v3 == 1)
          {
            break;
          }

          v12 = (v7 + 7);
          v41 = 1;
          while (v52 != v41)
          {
            if (v41 >= v7[2])
            {
              goto LABEL_48;
            }

            v43 = *(v12 - 8);
            v42 = *v12;
            v57 = countAndFlagsBits;
            v58 = object;

            v6 = &v57;
            MEMORY[0x26D69CDB0](v43, v42);
            v4 = v57;
            v2 = v58;
            v55[0] = v30;
            v45 = *(v30 + 16);
            v44 = *(v30 + 24);
            v13 = v45 + 1;
            if (v45 >= v44 >> 1)
            {
              v6 = v55;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
              v30 = v55[0];
            }

            ++v41;
            *(v30 + 16) = v13;
            v46 = v30 + 16 * v45;
            *(v46 + 32) = v4;
            *(v46 + 40) = v2;
            v12 += 16;
            if (v3 == v41)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v47 = v6 > 1;
          v6 = v55;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v4, 1);
          v30 = v55[0];
        }

LABEL_26:

        v12 = v51;
      }

      else
      {

        v30 = MEMORY[0x277D84F90];
      }

      v57 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v35 = 10;
      v36 = 0xE100000000000000;
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v37;
    }

    v57 = v49;
    v58 = v48;
    MEMORY[0x26D69CDB0](v32, v34);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v50 >= v12)
    {
      v38 = 0;
    }

    else
    {
      v38 = 3026478;
    }

    if (v50 >= v12)
    {
      v39 = 0xE000000000000000;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v38, v39);

    MEMORY[0x26D69CDB0](v35, v36);
  }

  else
  {
    v57 = 9051;
    v58 = 0xE200000000000000;
    v55[0] = v5;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v23);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v57;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 41) && *(v1 + 41) != 1)
  {
    goto LABEL_18;
  }

  v3 = Interpreter.Storage.Types.subscript.getter(a1);
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = *(v1 + 24);
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }

    goto LABEL_9;
  }

  if ((v5 & 2) != 0)
  {
LABEL_9:
    v7 = *v2;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  v10 = *(v4 + 16);
  if (!v10)
  {
LABEL_16:

    return 0;
  }

  v11 = 0;
  v12 = (v4 + 40);
  while (v11 < *(v4 + 16))
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    MEMORY[0x26D69CDB0](v14, v13);

    MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

    if (v10 != 1)
    {
      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v12 += 2;
    ++v11;
    if (!--v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  v2 = v1;
  v3 = *(a1 + 112);
  v22[8] = *(a1 + 96);
  v22[9] = v3;
  v22[10] = *(a1 + 128);
  v23 = *(a1 + 144);
  v4 = *(a1 + 48);
  v22[4] = *(a1 + 32);
  v22[5] = v4;
  v5 = *(a1 + 80);
  v22[6] = *(a1 + 64);
  v22[7] = v5;
  v6 = *(a1 + 16);
  v22[2] = *a1;
  v22[3] = v6;
  v7 = v1[1];
  v21 = *v1;
  v22[0] = v7;
  *(v22 + 10) = *(v1 + 26);
  v8 = Interpreter.Iterator.Mode.describe(state:)(&v21);
  *&v21 = v8;
  *(&v21 + 1) = v9;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = *(v1 + 3);
  if (*(v10 + 16) == 1)
  {
    if ((v11 & 2) == 0)
    {

      return v8;
    }

    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    if ((v11 & 2) == 0)
    {
      v13 = 1;
      goto LABEL_8;
    }
  }

  v13 = *v2;
LABEL_8:
  v14._countAndFlagsBits = 8224;
  v14._object = 0xE200000000000000;
  v15 = String.init(repeating:count:)(v14, v13);
  result = v15._countAndFlagsBits;
  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v10 + 40);
    while (v17 < *(v10 + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;

      MEMORY[0x26D69CDB0](v20, v19);

      MEMORY[0x26D69CDB0](v15._countAndFlagsBits, v15._object);

      if (v16 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v18 += 2;
      ++v17;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v21;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized ArrayLike.describe(state:));
}

{
  v2 = v1;
  v3 = Snapshot.Kind.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  v19[2] = *a1;
  v19[3] = v3;
  v19[4] = *(a1 + 32);
  v20 = *(a1 + 48);
  v4 = v1[1];
  v18 = *v1;
  v19[0] = v4;
  *(v19 + 10) = *(v1 + 26);
  v5 = Interpreter.Iterator.Kind.describe(state:)(&v18);
  *&v18 = v5;
  *(&v18 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = *(v1 + 3);
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v5;
    }

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    if ((v8 & 2) == 0)
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  v10 = *v2;
LABEL_8:
  v11._countAndFlagsBits = 8224;
  v11._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v11, v10);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v7 + 40);
    while (v14 < *(v7 + 16))
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      MEMORY[0x26D69CDB0](v17, v16);

      MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

      if (v13 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v15 += 2;
      ++v14;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v18;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized ArrayLike.describe(state:));
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(int a1)
{
  v2 = v1;
  if (a1)
  {
    result = TreeValueFlags.name.getter();
    if (!v4)
    {
      goto LABEL_20;
    }

    MEMORY[0x26D69CDB0](result);
  }

  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v1[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return 0;
    }

    goto LABEL_10;
  }

  if ((v6 & 2) != 0)
  {
LABEL_10:
    v7 = *v2;
    goto LABEL_11;
  }

  v7 = 1;
LABEL_11:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v5 + 16);
  if (!v10)
  {
LABEL_17:

    return 0;
  }

  v11 = 0;
  v12 = (v5 + 40);
  while (v11 < *(v5 + 16))
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    MEMORY[0x26D69CDB0](v14, v13);

    MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

    if (v10 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v12 += 2;
    ++v11;
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  TreeValue.Position.names()(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  MEMORY[0x26D69CDB0](v3, v5);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  v6 = 91;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = v1[3];
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v6;
    }
  }

  else
  {

    if ((v8 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v2;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v10, v9);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (!v13)
  {
LABEL_14:

    return 0;
  }

  v14 = 0;
  v15 = (v7 + 40);
  while (v14 < *(v7 + 16))
  {
    v17 = *(v15 - 1);
    v16 = *v15;

    MEMORY[0x26D69CDB0](v17, v16);

    MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

    if (v13 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v15 += 2;
    ++v14;
    if (!--v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = (a1 & 0x2000) == 0;
  if ((a1 & 0x2000) != 0)
  {
    v5 = 82;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  MEMORY[0x26D69CDB0](v5, v6);

  if ((a1 & 0xC000) == 0x8000)
  {
    v8 = 0xEA00000000006D61;
    v9 = 0x657274736E776F44;
  }

  else if ((a1 & 0xC000) == 0x4000)
  {
    v8 = 0xE800000000000000;
    v9 = 0x6D61657274737055;
  }

  else
  {
    if (a1 < 0xC000u)
    {
      goto LABEL_29;
    }

    v8 = 0xE300000000000000;
    v9 = 7105601;
  }

  MEMORY[0x26D69CDB0](v9, v8);

  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  v10 = Event.Relationship.name.getter(a1 & 0xFFFFDFFF);
  MEMORY[0x26D69CDB0](v10);

  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.components<A>(separatedBy:)();
  v12 = v1[3];
  if (*(v11 + 16) == 1)
  {
    if ((v12 & 2) == 0)
    {

      return 0;
    }

    goto LABEL_19;
  }

  if ((v12 & 2) != 0)
  {
LABEL_19:
    v13 = *v2;
    goto LABEL_20;
  }

  v13 = 1;
LABEL_20:
  v14._countAndFlagsBits = 8224;
  v14._object = 0xE200000000000000;
  v15 = String.init(repeating:count:)(v14, v13);
  result = v15._countAndFlagsBits;
  v16 = *(v11 + 16);
  if (!v16)
  {
LABEL_26:

    return 0;
  }

  v17 = 0;
  v18 = (v11 + 40);
  while (v17 < *(v11 + 16))
  {
    v20 = *(v18 - 1);
    v19 = *v18;

    MEMORY[0x26D69CDB0](v20, v19);

    MEMORY[0x26D69CDB0](v15._countAndFlagsBits, v15._object);

    if (v16 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v18 += 2;
    ++v17;
    if (!--v16)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = specialized AttachmentID.Typed<>.describe(state:)(v1, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = *(v1 + 24);
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v2 = v1;
  v3 = v1[1];
  v17 = *v1;
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 26);
  v4 = TreeRef.describe(state:)(&v17, a1);
  *&v17 = v4;
  *(&v17 + 1) = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = *(v1 + 3);
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v4;
    }

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v2;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v17;
  }

  return result;
}

{
  v2 = v1;
  v3 = specialized Optional.describe(state:)(v1, a1 | ((HIDWORD(a1) & 1) << 32));
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v2 = v1;
  v4 = HIDWORD(a1);
  v5 = specialized InspectionState.describe<A>(_:_:)(1852141679, 0xE400000000000000, BYTE2(a1) | ((BYTE3(a1) & 1) << 8));
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = specialized InspectionState.describe<A>(_:_:)(0x7365686374616DLL, 0xE700000000000000, a1 & 0x1FF);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x7465657263736964, 0xE800000000000000, v4 | (((HIDWORD(a1) >> 8) & 1) << 8));
  MEMORY[0x26D69CDB0](v7);

  v8 = 40;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = v1[3];
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v8;
    }
  }

  else
  {

    if ((v10 & 2) == 0)
    {
      v11 = 1;
      goto LABEL_8;
    }
  }

  v11 = *v2;
LABEL_8:
  v12._countAndFlagsBits = 8224;
  v12._object = 0xE200000000000000;
  v14 = String.init(repeating:count:)(v12, v11);
  result = v14._countAndFlagsBits;
  v15 = *(v9 + 16);
  if (!v15)
  {
LABEL_14:

    return 0;
  }

  v16 = 0;
  v17 = (v9 + 40);
  while (v16 < *(v9 + 16))
  {
    v19 = *(v17 - 1);
    v18 = *v17;

    MEMORY[0x26D69CDB0](v19, v18);

    MEMORY[0x26D69CDB0](v14._countAndFlagsBits, v14._object);

    if (v15 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v17 += 2;
    ++v16;
    if (!--v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}