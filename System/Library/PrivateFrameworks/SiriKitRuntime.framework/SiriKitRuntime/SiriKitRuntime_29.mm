uint64_t LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v3);

  return specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(a1, v5, v3, v4);
}

uint64_t closure #1 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(uint64_t *a1, uint64_t a2, char **a3, char **a4)
{
  v6 = a1[1];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v23 = *(a1 + 34);
  v21 = *a1;
  v22 = a1[2];
  if (a2 && v7)
  {
    v10 = specialized Set.contains(_:)(a1[2], v7, a2);
    if (v8 && (v10 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    swift_beginAccess();
    v11 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      *a4 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
      *a4 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[40 * v14];
    goto LABEL_16;
  }

  swift_beginAccess();
  v16 = *a3;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    *a3 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    *a3 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v15 = &v16[40 * v19];
LABEL_16:
  *(v15 + 4) = v21;
  *(v15 + 5) = v6;
  *(v15 + 6) = v22;
  *(v15 + 7) = v7;
  v15[64] = v8;
  v15[65] = v9;
  v15[66] = v23;
  return swift_endAccess();
}

double closure #2 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[3];
  v19 = a1[2];
  v20 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA6B020;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001DCA84690;
  v11 = MEMORY[0x1E69E6370];
  *(inited + 48) = v8;
  v12 = v11;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000014;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 88) = 0x80000001DCA7DDD0;
  *(inited + 96) = v6;
  *(inited + 104) = v5;
  *(inited + 120) = v13;
  *(inited + 128) = 0x6E65657263536E6FLL;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 168) = v11;
  *(inited + 144) = v9;

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  if (v7)
  {
    v25 = v13;
    *&v24 = v19;
    *(&v24 + 1) = v7;
    outlined init with take of Any(&v24, v23);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x69746E456B6E696CLL, 0xEE00657079547974, isUniquelyReferenced_nonNull_native);
    v14 = v26;
  }

  v25 = v12;
  LOBYTE(v24) = v20;
  outlined init with take of Any(&v24, v23);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000016, 0x80000001DCA846B0, v16);
  v17 = v26;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v17;

  return result;
}

uint64_t specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, os_log_t a4)
{
  v5 = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = *(v6 + 16);
  v140 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v10;
  v9(v7);
  v11 = *v5;
  if (!*v5)
  {
    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, kLogger);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v6;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "[LinkParseExpansion] Skipping parse expansion as could not find systemProtocol from parse.", v31, 2u);
      v32 = v31;
      v6 = v30;
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_90;
  }

  v139 = v6;
  v12 = one-time initialization token for kLogger;
  v13 = v11;
  if (v12 != -1)
  {
LABEL_92:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, kLogger);
  v16 = v13;
  v154 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v147 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v147;
    *(v19 + 4) = v147;
    *v20 = v11;
    v22 = v21;
    _os_log_impl(&dword_1DC659000, v17, v18, "[LinkParseExpansion] Evaluating compatible Link actions for %@", v19, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  if (*(v5 + 32))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "[LinkParseExpansion] Detected noEntity parse, using entities directly from SRR entity pool.", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    v26 = (a4[2].isa)(v141, a4);
  }

  else
  {
    v26 = *(v5 + 16);
    if (*(v26 + 16))
    {

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "[LinkParseExpansion] Detected parse with explicitly mentioned entity type.", v36, 2u);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "[LinkParseExpansion] Detected parse without explicitly mentioned entity type.", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v26 = *(v5 + 8);
    }
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v162 = v43;
    *v42 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v44 = Dictionary.description.getter();
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v162);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_1DC659000, v40, v41, "[LinkParseExpansion] Considering salient entities types: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1E12A2F50](v43, -1, -1);
    MEMORY[0x1E12A2F50](v42, -1, -1);
  }

  v48 = MEMORY[0x1E69E7CC0];
  v170 = MEMORY[0x1E69E7CC0];
  (a4[3].isa)(v141, a4);
  v49 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v155 = v49;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v51 = v163;
  if (!v163)
  {
    v53 = v48;
    goto LABEL_83;
  }

  v52 = v162;
  *&v50 = 136315650;
  v142 = v50;
  v53 = v48;
  v151 = v5;
  v153 = v26;
  while (2)
  {
    v143 = v53;
    while (1)
    {
      v55 = *(&v51 + 1);
      v54 = v51;
      v56 = *(v5 + 24);
      v57 = *(v56 + 16);
      v156 = v52;
      v157 = v51;
      if (!v57)
      {
        goto LABEL_37;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v58 = Hasher._finalize()();
      v59 = -1 << *(v56 + 32);
      v60 = v58 & ~v59;
      if (((*(v56 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
      {
        break;
      }

      v61 = ~v59;
      while (1)
      {
        v62 = (*(v56 + 48) + 16 * v60);
        v52 = v156;
        v54 = v157;
        if (*v62 == v156 && v157 == v62[1])
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v52 = v156;
          v54 = v157;
          break;
        }

        v60 = (v60 + 1) & v61;
        if (((*(v56 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

LABEL_37:
      if (*(v26 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54), (v65 & 1) != 0))
      {
        v66 = *(*(v26 + 56) + 8 * v64);
      }

      else
      {
        v66 = 0;
      }

      v169 = v48;
      v161 = v48;
      if (*(v55 + 16))
      {
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v147);
        if (v68)
        {
          v69 = *(*(v55 + 56) + 8 * v67);

          specialized Sequence.forEach(_:)(v69, v66, &v169, &v161);
        }
      }

      a4 = v157;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v149 = v71;
        v150 = v70;
        v72 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v158 = v148;
        *v72 = v142;
        *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, a4, &v158);
        *(v72 + 12) = 2080;
        swift_beginAccess();
        v73 = v169;
        v74 = *(v169 + 2);
        *&v152 = v72;
        if (v74)
        {
          v160 = v48;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
          v48 = v160;
          v146 = v73;
          v5 = (v73 + 56);
          do
          {
            v75 = *(v5 - 24);
            v76 = *(v5 - 16);
            v77 = *v5;
            if (*v5)
            {
              v78 = *(v5 - 8);
              v162 = *(v5 - 24);
              *&v163 = v76;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v78, v77);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v75 = v162;
              v76 = v163;
            }

            else
            {
            }

            v160 = v48;
            v80 = *(v48 + 16);
            v79 = *(v48 + 24);
            if (v80 >= v79 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
              v48 = v160;
            }

            v5 += 40;
            *(v48 + 16) = v80 + 1;
            v81 = v48 + 16 * v80;
            *(v81 + 32) = v75;
            *(v81 + 40) = v76;
            --v74;
          }

          while (v74);

          v72 = v152;
        }

        v162 = v48;
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v83 = lazy protocol witness table accessor for type [String] and conformance [A]();
        v84 = BidirectionalCollection<>.joined(separator:)();
        v86 = v85;

        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v158);

        *(v72 + 14) = v87;
        *(v72 + 22) = 2080;
        swift_beginAccess();
        v88 = v161;
        v89 = *(v161 + 2);
        if (v89)
        {
          v145 = v83;
          v146 = v82;
          v160 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
          v90 = v160;
          v144 = v88;
          v91 = (v88 + 56);
          do
          {
            v92 = *(v91 - 3);
            v5 = *(v91 - 2);
            v93 = *v91;
            if (*v91)
            {
              v94 = *(v91 - 1);
              v162 = *(v91 - 3);
              *&v163 = v5;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v94, v93);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v92 = v162;
              v5 = v163;
            }

            else
            {
            }

            v160 = v90;
            v96 = *(v90 + 16);
            v95 = *(v90 + 24);
            if (v96 >= v95 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1);
              v90 = v160;
            }

            v91 += 5;
            *(v90 + 16) = v96 + 1;
            v97 = v90 + 16 * v96;
            *(v97 + 32) = v92;
            *(v97 + 40) = v5;
            --v89;
          }

          while (v89);

          v48 = MEMORY[0x1E69E7CC0];
          v72 = v152;
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
          v90 = MEMORY[0x1E69E7CC0];
        }

        v162 = v90;
        v98 = BidirectionalCollection<>.joined(separator:)();
        v100 = v99;

        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v158);

        *(v72 + 24) = v101;
        a4 = v150;
        _os_log_impl(&dword_1DC659000, v150, v149, "[LinkParseExpansion] %s Compatible actions: [%s] Incompatible actions: [%s]", v72, 0x20u);
        v102 = v148;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v102, -1, -1);
        MEMORY[0x1E12A2F50](v72, -1, -1);

        v26 = v153;
      }

      else
      {
      }

      swift_beginAccess();
      v103 = v169;
      v11 = *(v169 + 2);
      if (v11)
      {
        v160 = v48;

        v13 = &v160;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
        v104 = 0;
        v105 = v160;
        v106 = v103 + 66;
        while (v104 < *(v103 + 2))
        {
          v107 = *(v106 - 26);
          v108 = *(v106 - 18);
          v109 = *(v106 - 10);
          v110 = *(v106 - 2);
          v111 = *(v106 - 1);
          v112 = *v106;
          v162 = *(v106 - 34);
          *&v163 = v107;
          *(&v163 + 1) = v108;
          v164 = v109;
          v165 = v110;
          v166 = v111;
          v167 = v112;

          closure #2 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(&v162, v156, v157, &v158);
          v13 = v164;

          a4 = v158;
          v113 = v159;
          v160 = v105;
          v115 = v105[2];
          v114 = v105[3];
          v5 = v115 + 1;
          if (v115 >= v114 >> 1)
          {
            v13 = &v160;
            v152 = v159;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1);
            v113 = v152;
            v105 = v160;
          }

          ++v104;
          v105[2] = v5;
          v116 = &v105[3 * v115];
          v116[4] = a4;
          *(v116 + 5) = v113;
          v106 += 40;
          if (v11 == v104)
          {

            v26 = v153;
            v48 = MEMORY[0x1E69E7CC0];
            goto LABEL_74;
          }
        }

        __break(1u);
        goto LABEL_92;
      }

      v105 = v48;
LABEL_74:
      specialized Array.append<A>(contentsOf:)(v105);

      dispatch thunk of _AnyIteratorBoxBase.next()();
      v52 = v162;
      v51 = v163;
      v5 = v151;
      if (!v163)
      {
        v53 = v143;
        goto LABEL_83;
      }
    }

LABEL_76:

    v53 = v143;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
    }

    v118 = *(v53 + 2);
    v117 = *(v53 + 3);
    v119 = v156;
    v120 = v157;
    if (v118 >= v117 >> 1)
    {
      v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v53);
      v120 = v157;
      v119 = v156;
      v53 = v122;
    }

    *(v53 + 2) = v118 + 1;
    v121 = &v53[16 * v118];
    *(v121 + 4) = v119;
    *(v121 + 5) = v120;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v52 = v162;
    v51 = v163;
    if (v163)
    {
      continue;
    }

    break;
  }

LABEL_83:

  if (*(v53 + 2))
  {
    v123 = *(v5 + 16);
    v162 = *(v5 + 8);
    v158 = v123;
    v124 = v147;
    outlined init with copy of [String : Set<String>](&v162, &v169);
    outlined init with copy of [String : Set<String>](&v158, &v169);

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();

    outlined destroy of ReferenceResolutionClientProtocol?(&v162, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v158, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v169 = v128;
      *v127 = 136315394;
      v157 = v124;

      v129 = MEMORY[0x1E12A16D0](v53, MEMORY[0x1E69E6158]);
      v131 = v130;

      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v169);

      *(v127 + 4) = v132;
      *(v127 + 12) = 2080;
      v133 = Set.description.getter();
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v169);

      *(v127 + 14) = v135;
      _os_log_impl(&dword_1DC659000, v125, v126, "[LinkParseExpansion] Skipped %s as the parse explicitly refers to %s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v128, -1, -1);
      MEMORY[0x1E12A2F50](v127, -1, -1);

      v136 = &v171;
      goto LABEL_87;
    }
  }

  else
  {

    v136 = &v168;
LABEL_87:
  }

  v33 = v170;
  v6 = v139;
LABEL_90:
  (*(v6 + 8))(v140, v141);
  return v33;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGG_G_SSs5NeverOTg504_s14gh9Runtime20J59ExpansionContextV07SessionF0C16debugDescriptionSSvgS2SXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v30;
    v5 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v23 = v1 + 72;
    v24 = v2;
    v25 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v26 = v7;
      v27 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v28 = *v10;
      v29 = v10[1];
      swift_bridgeObjectRetain_n();
      MEMORY[0x1E12A1580](0x5D2E2E2E5B203ALL, 0xE700000000000000);

      v11 = v4;
      v31 = v4;
      v12 = v1;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 16 * v14;
      *(v15 + 32) = v28;
      *(v15 + 40) = v29;
      v8 = 1 << *(v12 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v25;
      v16 = *(v25 + 8 * v9);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v12;
      v4 = v11;
      if (v27 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (v23 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = outlined consume of Set<String>.Index._Variant(v6, v27, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<String>.Index._Variant(v6, v27, 0);
      }

LABEL_4:
      v7 = v26 + 1;
      v6 = v8;
      if (v26 + 1 == v24)
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

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D34C0], &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, MEMORY[0x1E69D34C0], MEMORY[0x1E69D34C8]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D2340], &lazy protocol witness table cache variable for type MatchInfo.AliasType and conformance MatchInfo.AliasType, MEMORY[0x1E69D2340], MEMORY[0x1E69D2348]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D0568], &lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for DeviceClass();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v13, v10, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v29, &v10[v16], &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v10, v30, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x1E69D3460], MEMORY[0x1E69D3470]);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
    goto LABEL_5;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  return 1;
}

Swift::Void __swiftcall LinkExpansionContextBuilder.newSessionStarted()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = one-time initialization token for shared;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v7 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v0;

  *(v0 + 104) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime20LinkExpansionContextV07SessionJ0C_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v8);
}

Swift::Void __swiftcall LinkExpansionContextBuilder.newTurnStarted()()
{
  v1 = v0;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, kLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[LinkExpansionContext] New turn started", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();
  *(v1 + 16) = 0;
}

uint64_t LinkExpansionContextBuilder.build(rrCandidates:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v2[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.build(rrCandidates:), v4, 0);
}

{
  v2 = *(*v1 + 112);
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.build(rrCandidates:), v2, 0);
}

uint64_t LinkExpansionContextBuilder.build(rrCandidates:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = static Log.executor;
  v0[15] = static Log.executor;
  v3 = v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v4 = *(v1 + 104);
  v0[16] = v4;
  if (v4)
  {

    v5 = swift_task_alloc();
    v0[17] = v5;
    v6 = type metadata accessor for LinkExpansionContext.SessionContext();
    *v5 = v0;
    v5[1] = LinkExpansionContextBuilder.build(rrCandidates:);

    return MEMORY[0x1EEE6DA40](v0 + 8, v4, v6);
  }

  else
  {

    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, kLogger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "[LinkExpansionContext] Trying to build LinkExpansionContext before newSessionStarted was called! Returning empty context.", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    if (one-time initialization token for emptyContext != -1)
    {
      swift_once();
    }

    v12 = static LinkExpansionContext.emptyContext;
    v11 = unk_1ECCA1100;
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];

    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v14 + 8))(v13, v15);

    v16 = v0[1];

    return v16(v12, v11);
  }
}

{
  v1 = *(*v0 + 112);

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.build(rrCandidates:), v1, 0);
}

{
  v1 = v0[10];
  v0[18] = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v0[18];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7(v3, v2);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = LinkExpansionContextBuilder.build(rrCandidates:);
    v10 = v0[9];

    return LinkExpansionContextBuilder.collectTurnContext(rrCandidates:)(v10);
  }
}

{
  v1 = v0[20];
  v2 = v0[10];

  *(v2 + 16) = v1;
  v3 = v0[20];

  v4 = v0[18];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(v4, v3);
}

uint64_t *LinkExpansionContext.emptyContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContext.emptyContext;
}

BOOL RRCandidate.isOnScreen.getter()
{
  v56 = type metadata accessor for RRDataSourceMetadataValue();
  v0 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v47 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v47 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - v7;
  v8 = type metadata accessor for RRMetadata();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v47 - v13;
  v14 = type metadata accessor for RREntity();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  v18 = RREntity.metadata.getter();
  (*(v15 + 8))(v17, v14);
  v19 = *(v18 + 16);
  if (v19)
  {
    v22 = *(v9 + 16);
    v21 = v9 + 16;
    v20 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v47 = v18;
    v24 = v18 + v23;
    v25 = *(v21 + 56);
    v59 = (v21 + 16);
    v60 = v25;
    v58 = (v21 + 72);
    v57 = *MEMORY[0x1E69D27E8];
    v49 = (v21 + 80);
    v50 = (v21 - 8);
    v55 = v0;
    v26 = (v0 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v56;
    v51 = v22;
    v52 = v21;
    do
    {
      v29 = v61;
      v20(v61, v24, v8);
      (*v59)(v11, v29, v8);
      v30 = (*v58)(v11, v8);
      if (v30 == v57)
      {
        (*v49)(v11, v8);
        v31 = *v26;
        v32 = v54;
        (*v26)(v54, v11, v28);
        v33 = v27;
        v34 = v53;
        v31(v53, v32, v28);
        v35 = v34;
        v27 = v33;
        v31(v62, v35, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        }

        v37 = v27[2];
        v36 = v27[3];
        if (v37 >= v36 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v27);
        }

        v27[2] = v37 + 1;
        v38 = v27 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v37;
        v28 = v56;
        v31(v38, v62, v56);
        v20 = v51;
      }

      else
      {
        (*v50)(v11, v8);
      }

      v24 += v60;
      --v19;
    }

    while (v19);

    v39 = v27;
    v0 = v55;
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
    v28 = v56;
  }

  v40 = *(v0 + 104);
  v41 = v48;
  v40(v48, *MEMORY[0x1E69D2918], v28);
  v42 = specialized Sequence<>.contains(_:)(v41, v39, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);
  v43 = *(v0 + 8);
  v43(v41, v28);
  if (v42)
  {
    v40(v41, *MEMORY[0x1E69D28F8], v28);
    v44 = specialized Sequence<>.contains(_:)(v41, v39, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);

    v43(v41, v28);
    return !v44;
  }

  else
  {

    return 0;
  }
}

uint64_t RRCandidate.isCommonApp.getter()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v1 + 8))(v3, v0);
  v4 = UsoTask.verbString.getter();
  v6 = v5;

  if (one-time initialization token for kUsoCommonAppEntityName != -1)
  {
    swift_once();
  }

  if (v4 == kUsoCommonAppEntityName._countAndFlagsBits && v6 == kUsoCommonAppEntityName._object)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void *LinkExpansionContextBuilder.__allocating_init(metadataProvider:viewActionsProvider:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v19 = specialized LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(v10, v17, v4, v6, v12, v5, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

uint64_t LinkActionMetadata.logDescription.getter()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *(v0 + 2);
    v6 = *v0;
    v7 = v6;
    outlined init with copy of String(&v7, &v5);
    MEMORY[0x1E12A1580](60, 0xE100000000000000);
    MEMORY[0x1E12A1580](v2, v1);
    MEMORY[0x1E12A1580](62, 0xE100000000000000);
    return v6;
  }

  else
  {
    v3 = *v0;
  }

  return v3;
}

uint64_t one-time initialization function for kUsoCommonAppEntityName()
{
  result = MEMORY[0x1E129C9D0](0xD000000000000012, 0x80000001DCA84990);
  if (v3)
  {
    v4 = v1;
    v5 = v2;
  }

  else
  {
    v5 = 0xEA00000000007070;
    v4 = 0x415F6E6F6D6D6F63;
  }

  kUsoCommonAppEntityName._countAndFlagsBits = v4;
  kUsoCommonAppEntityName._object = v5;
  return result;
}

uint64_t LinkActionMetadata.linkActionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkActionMetadata.entityTypeMetadata.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall LinkActionMetadata.init(linkActionId:entityTypeMetadata:defaultAction:onScreen:)(SiriKitRuntime::LinkActionMetadata *__return_ptr retstr, Swift::String linkActionId, SiriKitRuntime::EntityTypeMetadata entityTypeMetadata, Swift::Bool defaultAction, Swift::Bool onScreen)
{
  retstr->linkActionId = linkActionId;
  retstr->entityTypeMetadata = entityTypeMetadata;
  retstr->defaultAction = defaultAction;
  retstr->onScreen = onScreen;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LinkActionMetadata(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return specialized static LinkActionMetadata.== infix(_:_:)(&v5, &v7) & 1;
}

uint64_t *LinkExpansionContext.SessionContext.emptySessionContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptySessionContext != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContext.SessionContext.emptySessionContext;
}

uint64_t *LinkExpansionContext.TurnContext.emptyTurnContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyTurnContext != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContext.TurnContext.emptyTurnContext;
}

uint64_t static LinkExpansionContext.emptyContext.getter()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  v0 = static LinkExpansionContext.emptyContext;

  return v0;
}

uint64_t LinkExpansionContext.SessionContext.__allocating_init(linkActionMetadata:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t one-time initialization function for emptySessionContext(uint64_t a1)
{
  type metadata accessor for LinkExpansionContext.SessionContext();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static LinkExpansionContext.SessionContext.emptySessionContext = result;
  return result;
}

unint64_t LinkExpansionContext.SessionContext.debugDescription.getter()
{

  v1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGG_G_SSs5NeverOTg504_s14gh9Runtime20J59ExpansionContextV07SessionF0C16debugDescriptionSSvgS2SXEfU_Tf1cn_n(v0);

  _StringGuts.grow(_:)(42);

  v2 = MEMORY[0x1E12A16D0](v1, MEMORY[0x1E69E6158]);
  v4 = v3;

  MEMORY[0x1E12A1580](v2, v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t LinkExpansionContext.SessionContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *LinkExpansionContext.TurnContext.__allocating_init(onScreenActions:onScreenAppBundleIds:onScreenEntityTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *LinkExpansionContext.TurnContext.init(onScreenActions:onScreenAppBundleIds:onScreenEntityTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *one-time initialization function for emptyTurnContext()
{
  type metadata accessor for LinkExpansionContext.TurnContext();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  v2 = MEMORY[0x1E69E7CD0];
  result[2] = MEMORY[0x1E69E7CC8];
  result[3] = v2;
  result[4] = v1;
  static LinkExpansionContext.TurnContext.emptyTurnContext = result;
  return result;
}

uint64_t LinkExpansionContext.TurnContext.debugDescription.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84720);
  v0 = Set.description.getter();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA84750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  v1 = Dictionary.description.getter();
  MEMORY[0x1E12A1580](v1);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0;
}

void *LinkExpansionContext.TurnContext.deinit()
{

  return v0;
}

uint64_t LinkExpansionContext.TurnContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t LinkExpansionContext.LinkActionMetadataView.next()()
{
  v1 = 0;
  v2 = 0;
  v3 = v0[2];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    return v1;
  }

  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = v3 + 16 * v4;
  v1 = *(v5 + 32);
  v2 = *(v5 + 40);
  v6 = *(v0[1] + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_9:
    if (one-time initialization token for kLogger == -1)
    {
LABEL_10:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, kLogger);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25 = v22;
        *v21 = 136315138;
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, &v25);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_1DC659000, v19, v20, "Could not find action metadata for %s in sessionContext! The sessionContext must have been mutated. Ending iteration of action metadata early.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1E12A2F50](v22, -1, -1);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  v8 = v0;

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  if ((v10 & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = *(*(v6 + 56) + 8 * v9);

  v12 = v0;
  v13 = *(*v0 + 16);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    v12 = v8;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  specialized _NativeDictionary.mapValues<A>(_:)(v11, v17);

  swift_bridgeObjectRelease_n();
  v12[3] = v4 + 1;
  return v1;
}

void closure #1 in LinkExpansionContext.LinkActionMetadataView.next()(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    v24 = *a1;
    v25 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v7 = v24;
    v6 = v25;
    v8 = 0;
    v4 = v30;
    v9 = a2 + 56;
    while (v8 < *(v7 + 16))
    {
      v10 = v24 + 32 + 40 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v26 = *(v10 + 33);
      v27 = *(v10 + 32);
      v28 = *(v10 + 16);
      v29 = *(v10 + 24);
      if (*(a2 + 16))
      {
        Hasher.init(_seed:)();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        String.hash(into:)();
        v13 = Hasher._finalize()();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v15);
            v18 = *v17 == v11 && v17[1] == v12;
            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v19 = 1;
        }

        else
        {
LABEL_13:

          v19 = 0;
        }

        v7 = v24;
        v6 = v25;
      }

      else
      {

        v19 = 0;
      }

      v21 = *(v30 + 16);
      v20 = *(v30 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v7 = v24;
        v6 = v25;
      }

      ++v8;
      *(v30 + 16) = v21 + 1;
      v22 = v30 + 40 * v21;
      *(v22 + 32) = v11;
      *(v22 + 40) = v12;
      *(v22 + 48) = v28;
      *(v22 + 56) = v29;
      *(v22 + 64) = v27;
      *(v22 + 65) = v26;
      *(v22 + 66) = v19;
      v9 = a2 + 56;
      if (v8 == v6)
      {
        a3 = v23;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    *a3 = v4;
  }
}

__n128 protocol witness for Sequence.makeIterator() in conformance LinkExpansionContext.LinkActionMetadataView@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance LinkExpansionContext.LinkActionMetadataView()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0, v0[1], v0[2]);

  return v1;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!a2)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_14:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = a6;
    v7[3] = a7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = LinkExpansionContext.LinkActionMetadataView.next()();
      if (!v12)
      {
        a4 = v15;
        a5 = v16;
        v8 = v10 - 1;
        goto LABEL_13;
      }

      *v9 = v11;
      v9[1] = v12;
      v9[2] = v13;
      if (v8 == v10)
      {
        break;
      }

      v9 += 3;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v15;
    a5 = v16;
LABEL_13:
    a6 = v17;
    a7 = v18;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance LinkExpansionContext.LinkActionMetadataView@<X0>(uint64_t *a1@<X8>)
{
  result = LinkExpansionContext.LinkActionMetadataView.next()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t LinkExpansionContext.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA84770);
  type metadata accessor for LinkExpansionContext.TurnContext();

  v2 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA847A0);
  type metadata accessor for LinkExpansionContext.SessionContext();

  v3 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0;
}

void *LinkExpansionContext.actionMetadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v4 + 16), 0);
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v10, v6 + 4, v5, v4);
  v7 = v10;

  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v7);
  if (v9 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMd, &_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMR);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a1;
  result[4] = v6;
  result[5] = 0;
  return result;
}

uint64_t one-time initialization function for appsDenyList()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for appsDenyList);
  swift_arrayDestroy();
  v1 = specialized Set.union<A>(_:)(&outlined read-only object #1 of one-time initialization function for appsDenyList, v0);
  result = swift_arrayDestroy();
  static LinkExpansionContextBuilder.appsDenyList = v1;
  return result;
}

uint64_t *LinkExpansionContextBuilder.appsDenyList.unsafeMutableAddressor()
{
  if (one-time initialization token for appsDenyList != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContextBuilder.appsDenyList;
}

double static LinkExpansionContextBuilder.appsDenyList.getter()
{
  if (one-time initialization token for appsDenyList != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t LinkExpansionContextBuilder.linkExpansionTurnContext.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t closure #1 in LinkExpansionContextBuilder.newSessionStarted()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v5, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.newSessionStarted()()
{
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, kLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[LinkExpansionContext] Collecting SessionContext", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = closure #1 in LinkExpansionContextBuilder.newSessionStarted();

  return v10(v6, v7);
}

{
  v14 = v0;
  v1 = *(v0 + 88);

  v2 = specialized LinkExpansionContextBuilder.extractActionMetadata(allLinkActionsMetadata:)(v1);

  type metadata accessor for LinkExpansionContext.SessionContext();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v0 + 40) = v3;

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v4, v5, "[LinkExpansionContext] SessionContext: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  **(v0 + 48) = v3;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in LinkExpansionContextBuilder.newSessionStarted()(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v2, 0);
}

uint64_t partial apply for closure #1 in LinkExpansionContextBuilder.newSessionStarted()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in LinkExpansionContextBuilder.newSessionStarted()(a1, v4, v5, v6);
}

uint64_t LinkExpansionContextBuilder.collectTurnContext(rrCandidates:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.collectTurnContext(rrCandidates:), v3, 0);
}

{
  v2 = *(*v1 + 64);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.collectTurnContext(rrCandidates:), v2, 0);
}

uint64_t LinkExpansionContextBuilder.collectTurnContext(rrCandidates:)()
{
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, kLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[LinkExpansionContext] Collecting TurnContext", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = specialized LinkExpansionContextBuilder.extractOnScreenBundleIDsFromRRCandidates(_:)(v5);
  v0[10] = v6;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = LinkExpansionContextBuilder.collectTurnContext(rrCandidates:);

  return LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(v6);
}

{
  v16 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];

  v4 = specialized LinkExpansionContextBuilder.extractOnScreenEntityTypesFromRRCandidates(_:)(v3);
  type metadata accessor for LinkExpansionContext.TurnContext();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v0[5] = v5;

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v6, v7, "[LinkExpansionContext] TurnContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v13 = v0[1];

  return v13(v5);
}

uint64_t LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v3, 0);
}

{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v2, 0);
}

uint64_t LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)()
{
  v1 = *(v0 + 56);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);

  return v6(v2, v3);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v0[10]);

  v4 = specialized _NativeSet.intersection(_:)(v1, v3);
  v0[11] = v4;
  v0[5] = MEMORY[0x1E69E7CC8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ShySSGtMd, &_sSS_ShySSGtMR);
  v6 = static MessageBusActor.shared;
  v0[12] = static MessageBusActor.shared;
  v7 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v4;
  v8[3] = v2;
  v8[4] = v0 + 5;

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v9, v5, v10, v6, v7, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v8, v5);
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v1, 0);
}

{

  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t RRCandidate.isAppEntityType.getter()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v7 = *(v1 + 8);
  v7(v6, v0);
  v8 = UsoTask.verbString.getter();
  v10 = v9;

  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v7(v3, v0);
  v11 = UsoEntity.attributes.getter();

  if (!*(v11 + 16))
  {
    goto LABEL_10;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v14);
LABEL_8:

    v16 = dispatch thunk of UsoValue.getAsEntity()();

    if (v16)
    {
      v17 = UsoTask.verbString.getter();
      v19 = v18;

      goto LABEL_12;
    }

LABEL_11:
    v17 = 0;
    v19 = 0;
LABEL_12:
    if (v8 == 0xD000000000000010 && 0x80000001DCA847C0 == v10)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    if (v19)
    {
      if (v17 == 0xD000000000000014 && v19 == 0x80000001DCA847E0)
      {

        v22 = 1;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v22 & 1;
    }

LABEL_23:
    v22 = 0;
    return v22 & 1;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySS_ShySSGt_GMd, &_sScG8IteratorVySS_ShySSGt_GMR);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v5[25] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v7, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)()
{
  v1 = *(v0 + 136);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 136) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v37 = *(v0 + 136);

  v13 = 0;
  v35 = v8;
  v36 = v3;
  while (v7)
  {
LABEL_10:
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = (*(v37 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v7)))));
    v20 = v19[1];
    v38 = *v19;
    v21 = type metadata accessor for TaskPriority();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v38;
    v23[5] = v20;
    v23[6] = v18;
    outlined init with copy of ReferenceResolutionClientProtocol?(v16, v17, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v16) = (*(v22 + 48))(v17, 1, v21);

    v24 = *(v0 + 160);
    if (v16 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 160), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v22 + 8))(v24, v21);
    }

    if (v23[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = dispatch thunk of Actor.unownedExecutor.getter();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v28 = **(v0 + 128);
    v29 = swift_allocObject();
    *(v29 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
    *(v29 + 24) = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ShySSGtMd, &_sSS_ShySSGtMR);
    v30 = v27 | v25;
    if (v27 | v25)
    {
      v30 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v25;
      *(v0 + 40) = v27;
    }

    v14 = *(v0 + 168);
    v7 &= v7 - 1;
    *(v0 + 72) = 1;
    *(v0 + 80) = v30;
    *(v0 + 88) = v28;
    swift_task_create();

    v9 = outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScPSgMd, &_sScPSgMR);
    v8 = v35;
    v3 = v36;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ShySSGtMd, &_sSS_ShySSGtMR);
  TaskGroup.makeAsyncIterator()();
  v31 = static MessageBusActor.shared;
  *(v0 + 208) = static MessageBusActor.shared;
  v32 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v33 = swift_task_alloc();
  *(v0 + 216) = v33;
  *v33 = v0;
  v33[1] = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  v12 = *(v0 + 176);
  v9 = v0 + 96;
  v10 = v31;
  v11 = v32;

  return MEMORY[0x1EEE6D8A8](v9, v10, v11, v12);
}

{
  v1 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v1, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  if (v1)
  {
    v3 = v0[14];
    v4 = v0[19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    v0[15] = *v4;
    *v4 = 0x8000000000000000;
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
    v11 = *(v6 + 16);
    v12 = (v8 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v8;
      if (*(v6 + 24) < v14)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
        v7 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
        if ((v4 & 1) != (v8 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_12:
        if (v4)
        {
LABEL_13:
          v17 = v7;

          v18 = v0[15];
          *(v18[7] + 8 * v17) = v3;

          goto LABEL_18;
        }

LABEL_16:
        v18 = v0[15];
        v18[(v7 >> 6) + 8] |= 1 << v7;
        v20 = (v18[6] + 16 * v7);
        *v20 = v2;
        v20[1] = v1;
        *(v18[7] + 8 * v7) = v3;
        v21 = v18[2];
        v13 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v13)
        {
          __break(1u);
          return MEMORY[0x1EEE6D8A8](v7, v8, v9, v10);
        }

        v18[2] = v22;
LABEL_18:
        *v0[19] = v18;

        v23 = static MessageBusActor.shared;
        v0[26] = static MessageBusActor.shared;
        v24 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

        v25 = swift_task_alloc();
        v0[27] = v25;
        *v25 = v0;
        v25[1] = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
        v10 = v0[22];
        v7 = (v0 + 12);
        v8 = v23;
        v9 = v24;

        return MEMORY[0x1EEE6D8A8](v7, v8, v9, v10);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v19 = v7;
    specialized _NativeDictionary.copy()();
    v7 = v19;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  v6 = v0[7];
  v5 = v0[8];

  return v8(v6, v5, v2, v3);
}

{
  v39 = v0;
  v1 = *(v0 + 88);

  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_17;
    }

    v3 = v38;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        MEMORY[0x1E12A1FE0](v4, *(v0 + 88));
        v5 = [swift_unknownObjectRetain() actionIdentifier];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        swift_unknownObjectRelease_n();
        v38 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v38;
        }

        ++v4;
        *(v3 + 16) = v10 + 1;
        v11 = v3 + 16 * v10;
        *(v11 + 32) = v6;
        *(v11 + 40) = v8;
      }

      while (v2 != v4);
    }

    else
    {
      v12 = (*(v0 + 88) + 32);
      v13 = v2;
      do
      {
        v14 = *v12;
        v15 = [v14 actionIdentifier];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v38 = v3;
        v20 = *(v3 + 16);
        v19 = *(v3 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v3 = v38;
        }

        *(v3 + 16) = v20 + 1;
        v21 = v3 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v12;
        --v13;
      }

      while (v13);
    }
  }

  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

  if (*(v1 + 16) == v2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for kLogger != -1)
  {
    goto LABEL_26;
  }

LABEL_17:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, kLogger);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 88);
  if (v25)
  {
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v38);
    *(v29 + 12) = 2080;
    v31 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNViewAction, 0x1E69AD080);
    v32 = MEMORY[0x1E12A16D0](v26, v31);
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v38);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1DC659000, v23, v24, "Multiple viewActions for a given action identifier on screen for '%s'\nDisambiguting to a viewAction instance is not supported, the action will be routed to any instance matching the action identifier.\nViewActions: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v29, -1, -1);

    goto LABEL_21;
  }

LABEL_20:

LABEL_21:
  **(v0 + 40) = v1;
  v36 = *(v0 + 8);

  return v36();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)()
{
  v1 = v0[12];
  v2 = v0[10];
  *v2 = v0[11];
  v2[1] = v1;
  v3 = one-time initialization token for shared;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v0[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v4, 0);
}

{
  v1 = v0[12];
  v2 = v0[11];
  outlined init with copy of ReferenceResolutionClientProtocol(v0[13] + 64, (v0 + 2));
  v3 = swift_task_alloc();
  v0[15] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);

  return specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:)(0xD00000000000001CLL, 0x80000001DCA849B0, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:));
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), 0, 0);
}

{
  v1 = *(v0 + 136);
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(*(v0 + 80) + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v2, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[9] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v5, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 72);
  if (v1)
  {
    v6 = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  }

  else
  {
    v6 = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t LinkExpansionContextBuilder.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return v0;
}

uint64_t LinkExpansionContextBuilder.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  result = LinkExpansionContext.LinkActionMetadataView.next()();
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 0;
  if (v4)
  {
    v8 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v7)
      {
        v9 = v6[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v10 = v5;
        v11 = v4;
        v12 = result;
        v13 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGtGMR);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 24;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = (v15 + 4);
        v18 = v6[3] >> 1;
        if (v6[2])
        {
          if (v15 != v6 || v17 >= &v6[3 * v18 + 4])
          {
            memmove(v15 + 4, v6 + 4, 24 * v18);
          }

          v6[2] = 0;
        }

        v8 = (v17 + 24 * v18);
        v7 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

        v6 = v15;
        result = v12;
        v4 = v11;
        v5 = v10;
      }

      v20 = __OFSUB__(v7--, 1);
      if (v20)
      {
        break;
      }

      *v8 = result;
      v8[1] = v4;
      v8[2] = v5;
      v8 += 3;
      result = LinkExpansionContext.LinkActionMetadataView.next()();
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v21 = v6[3];
  if (v21 < 2)
  {
    return v6;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v7);
  v23 = v22 - v7;
  if (!v20)
  {
    v6[2] = v23;
    return v6;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  return v9;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return specialized _NativeSet.extractSubset(using:count:)(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *specialized LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[6] = a4;
  a3[7] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  a3[11] = a5;
  a3[12] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_0(a3 + 8);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  a3[2] = 0;
  a3[13] = 0;
  return a3;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t specialized static LinkActionMetadata.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = a1[2] == *(a2 + 16) && v5 == v7;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v7)
  {
    goto LABEL_17;
  }

  if (((v6 ^ v8) & 1) == 0 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0)
  {
    v10 = *(a1 + 34) ^ *(a2 + 34) ^ 1;
    return v10 & 1;
  }

LABEL_17:
  v10 = 0;
  return v10 & 1;
}

uint64_t destroy for LinkActionMetadata(uint64_t a1)
{
}

uint64_t initializeWithCopy for LinkActionMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);

  return a1;
}

uint64_t assignWithCopy for LinkActionMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for LinkActionMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinkActionMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t storeEnumTagSinglePayload for LinkActionMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for LinkExpansionContext()
{
}

void *initializeBufferWithCopyOfBuffer for LinkExpansionContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for LinkExpansionContext(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for LinkExpansionContext(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t destroy for LinkExpansionContext.LinkActionMetadataView(uint64_t a1)
{
}

void *initializeWithCopy for LinkExpansionContext.LinkActionMetadataView(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for LinkExpansionContext.LinkActionMetadataView(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for LinkExpansionContext.LinkActionMetadataView(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinkExpansionContext.LinkActionMetadataView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LinkExpansionContext.LinkActionMetadataView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView()
{
  result = lazy protocol witness table cache variable for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView;
  if (!lazy protocol witness table cache variable for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView);
  }

  return result;
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v24 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v23 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v24 + 48) + 8 * v17);
      v27 = *(*(v24 + 56) + 8 * v17);
      v19 = v18;

      closure #1 in LinkExpansionContext.LinkActionMetadataView.next()(&v27, a2, &v26);

      if (v2)
      {
        break;
      }

      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v5[6] + 8 * v17) = v19;
      *(v5[7] + 8 * v17) = v26;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v5[2] = v22;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v5;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized LinkExpansionContextBuilder.extractOnScreenBundleIDsFromRRCandidates(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v140 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v106 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v106 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v106 - v10;
  v143 = type metadata accessor for RRMetadata();
  v12 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v135 = type metadata accessor for RREntity();
  v18 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v128 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v106 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v126 = &v106 - v25;
  v134 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v134);
  v127 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v106 - v28;
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v33 = &v106 - v30;
  v125 = *(a1 + 16);
  v107 = v31;
  if (v125)
  {
    v142 = v14;
    v34 = 0;
    v36 = *(v31 + 16);
    v35 = v31 + 16;
    v122 = v36;
    v108 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v121 = a1 + v108;
    v130 = *(v35 + 56);
    v133 = (v18 + 8);
    v120 = (v35 - 8);
    v148 = (v12 + 32);
    v149 = v12 + 16;
    v147 = (v12 + 88);
    v146 = *MEMORY[0x1E69D27E8];
    v137 = (v12 + 8);
    v136 = (v12 + 96);
    v145 = (v3 + 32);
    v115 = *MEMORY[0x1E69D2918];
    v114 = (v3 + 104);
    v138 = v3;
    v113 = (v3 + 8);
    v110 = *MEMORY[0x1E69D28F8];
    v123 = v35;
    v109 = (v35 + 16);
    v112 = MEMORY[0x1E69E7CC0];
    v144 = v2;
    v129 = v11;
    v124 = v18;
    v118 = v12;
    v131 = &v106 - v30;
    while (1)
    {
      v132 = v34;
      v122(v33, v121 + v130 * v34, v134, v32);
      if (one-time initialization token for appsDenyList != -1)
      {
        swift_once();
      }

      v37 = static LinkExpansionContextBuilder.appsDenyList;
      v38 = v126;
      RRCandidate.entity.getter();
      v39 = RREntity.id.getter();
      v41 = v40;
      v42 = *v133;
      (*v133)(v38, v135);
      if (*(v37 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v43 = Hasher._finalize()(), v44 = -1 << *(v37 + 32), v45 = v43 & ~v44, ((*(v37 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v37 + 48) + 16 * v45);
          v48 = *v47 == v39 && v47[1] == v41;
          if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v37 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v33 = v131;
      }

      else
      {
LABEL_16:

        v49 = v119;
        v33 = v131;
        RRCandidate.entity.getter();
        RREntity.usoEntity.getter();
        v42(v49, v135);
        v50 = UsoTask.verbString.getter();
        v52 = v51;

        if (one-time initialization token for kUsoCommonAppEntityName != -1)
        {
          swift_once();
        }

        v53 = v129;
        v54 = v118;
        if (v50 == kUsoCommonAppEntityName._countAndFlagsBits && v52 == kUsoCommonAppEntityName._object)
        {

LABEL_22:
          v56 = v116;
          RRCandidate.entity.getter();
          v57 = RREntity.metadata.getter();
          v42(v56, v135);
          v58 = *(v57 + 16);
          if (v58)
          {
            v59 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v117 = v57;
            v60 = v57 + v59;
            v61 = *(v54 + 72);
            v62 = *(v54 + 16);
            v63 = MEMORY[0x1E69E7CC0];
            v64 = v143;
            v65 = v144;
            v66 = v142;
            v141 = v62;
            v62(v17, v60, v143);
            while (1)
            {
              (*v148)(v66, v17, v64);
              v67 = (*v147)(v66, v64);
              if (v67 == v146)
              {
                v68 = v17;
                (*v136)(v66, v64);
                v69 = *v145;
                v70 = v140;
                (*v145)(v140, v66, v65);
                v71 = v65;
                v72 = v139;
                v69(v139, v70, v71);
                v69(v150, v72, v71);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
                }

                v74 = v63[2];
                v73 = v63[3];
                v75 = v138;
                v66 = v142;
                if (v74 >= v73 >> 1)
                {
                  v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v63);
                  v75 = v138;
                  v63 = v77;
                }

                v63[2] = v74 + 1;
                v76 = v63 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v74;
                v65 = v144;
                v69(v76, v150, v144);
                v17 = v68;
                v64 = v143;
                v62 = v141;
              }

              else
              {
                (*v137)(v66, v64);
              }

              v60 += v61;
              if (!--v58)
              {
                break;
              }

              v62(v17, v60, v64);
            }

            v53 = v129;
          }

          else
          {

            v63 = MEMORY[0x1E69E7CC0];
          }

          v78 = *v114;
          v79 = v144;
          (*v114)(v53, v115, v144);
          v80 = specialized Sequence<>.contains(_:)(v53, v63, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);
          v81 = *v113;
          (*v113)(v53, v79);
          if (v80)
          {
            v78(v53, v110, v79);
            v82 = specialized Sequence<>.contains(_:)(v53, v63, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);

            v81(v53, v79);
            if (v82)
            {
              v33 = v131;
              (*v120)(v131, v134);
            }

            else
            {
              v83 = *v109;
              v33 = v131;
              (*v109)(v111, v131, v134);
              v84 = v112;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v152 = v84;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1);
                v84 = v152;
              }

              v87 = *(v84 + 16);
              v86 = *(v84 + 24);
              if (v87 >= v86 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
                v84 = v152;
              }

              *(v84 + 16) = v87 + 1;
              v112 = v84;
              v83((v84 + v108 + v87 * v130), v111, v134);
            }
          }

          else
          {
            v33 = v131;
            (*v120)(v131, v134);
          }

          goto LABEL_4;
        }

        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v55)
        {
          goto LABEL_22;
        }
      }

      (*v120)(v33, v134);
LABEL_4:
      v18 = v124;
      v34 = v132 + 1;
      if (v132 + 1 == v125)
      {
        goto LABEL_46;
      }
    }
  }

  v112 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v88 = *(v112 + 16);
  if (v88)
  {
    v151 = MEMORY[0x1E69E7CC0];
    v89 = v112;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
    v90 = v151;
    v91 = v107 + 16;
    v92 = *(v107 + 16);
    v93 = v89 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v149 = *(v107 + 72);
    v150 = v92;
    v147 = (v107 + 8);
    v148 = (v18 + 8);
    v94 = v127;
    do
    {
      v95 = v134;
      v96 = v91;
      (v150)(v94, v93, v134);
      v97 = v128;
      RRCandidate.entity.getter();
      v98 = RREntity.id.getter();
      v100 = v99;
      (*v148)(v97, v135);
      (*v147)(v94, v95);
      v151 = v90;
      v102 = *(v90 + 16);
      v101 = *(v90 + 24);
      if (v102 >= v101 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
        v90 = v151;
      }

      *(v90 + 16) = v102 + 1;
      v103 = v90 + 16 * v102;
      *(v103 + 32) = v98;
      *(v103 + 40) = v100;
      v93 += v149;
      --v88;
      v91 = v96;
    }

    while (v88);
  }

  else
  {

    v90 = MEMORY[0x1E69E7CC0];
  }

  v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v90);

  return v104;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say32SiriReferenceResolutionDataModel11RRCandidateVGTt1g504_s14d141KitRuntime27LinkExpansionContextBuilderC42extractOnScreenEntityTypesFromRRCandidates33_96F732C182F07CCE7D79D4AD573D548BLLySDySSShySSGGSay0A28efg7Model11I58VGFSSAJcfu_32c81b42e3f50092687f7f7eb8a52d50f3AJSSTf3nnpk_nTf1nc_nTf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for RREntity();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v46 - v9;
  v10 = MEMORY[0x1E69E7CC8];
  v61 = MEMORY[0x1E69E7CC8];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v48 = *(v12 + 64);
  v14 = *(v12 + 56);
  v53 = (v48 + 32) & ~v48;
  v15 = a1 + v53;
  v54 = (v3 + 8);
  v55 = v13;
  v57 = (v12 + 16);
  v47 = xmmword_1DCA66060;
  v49 = v5;
  v50 = v2;
  v51 = v14;
  v52 = v12;
  while (1)
  {
    v58 = v11;
    v55(v59, v15, v60);
    RRCandidate.entity.getter();
    v19 = RREntity.appBundleId.getter();
    v21 = v20;
    v22 = v5;
    (*v54)(v5, v2);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] < v27)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, 1);
      v10 = v61;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
    }

    if (v28)
    {

      v31 = v10[7];
      v32 = *v57;
      (*v57)(v56, v59, v60);
      v33 = *(v31 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v24) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v35 = v58;
      v37 = v33[2];
      v36 = v33[3];
      if (v37 >= v36 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v2 = v50;
      v16 = v51;
      v33[2] = v37 + 1;
      v17 = v33 + v53 + v37 * v16;
      v18 = v16;
      v32(v17, v56, v60);
      v5 = v49;
    }

    else
    {
      v38 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      v39 = v53;
      v40 = swift_allocObject();
      *(v40 + 16) = v47;
      (*v57)((v40 + v39), v59, v60);
      v10[(v24 >> 6) + 8] |= 1 << v24;
      v41 = (v10[6] + 16 * v24);
      *v41 = v19;
      v41[1] = v21;
      *(v10[7] + 8 * v24) = v40;
      v42 = v10[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_18;
      }

      v10[2] = v44;
      v2 = v38;
      v18 = v51;
      v5 = v22;
      v35 = v58;
    }

    v15 += v18;
    v11 = v35 - 1;
    if (!v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *specialized LinkExpansionContextBuilder.extractOnScreenEntityTypesFromRRCandidates(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v114 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v107 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v138 = &v107 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v107 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107 - v12;
  v14 = type metadata accessor for RRMetadata();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v107 - v18;
  v133 = type metadata accessor for RREntity();
  v19 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v125 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v107 - v22;
  v134 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v134);
  v110 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v107 - v25;
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v129 = &v107 - v29;
  v30 = *(a1 + 16);
  v111 = v27;
  v124 = v30;
  v107 = v19;
  if (v30)
  {
    v31 = 0;
    v33 = *(v27 + 16);
    v32 = v27 + 16;
    v120 = v33;
    v108 = (*(v32 + 64) + 32) & ~*(v32 + 64);
    v119 = a1 + v108;
    v126 = *(v32 + 56);
    v118 = (v19 + 8);
    v146 = v15 + 32;
    v147 = v15 + 16;
    v145 = (v15 + 88);
    LODWORD(v144) = *MEMORY[0x1E69D27E8];
    v135 = (v15 + 96);
    v136 = (v15 + 8);
    v143 = (v3 + 32);
    v117 = *MEMORY[0x1E69D2918];
    v128 = (v3 + 104);
    v116 = (v3 + 8);
    v113 = *MEMORY[0x1E69D28F8];
    v109 = (v32 + 16);
    v121 = v32;
    v115 = (v32 - 8);
    v112 = MEMORY[0x1E69E7CC0];
    v137 = v2;
    v122 = v15;
    v142 = v14;
    v140 = v3;
    v123 = v13;
    v33(v129, a1 + v108, v134, v28);
    while (1)
    {
      v35 = v125;
      RRCandidate.entity.getter();
      v36 = RREntity.metadata.getter();
      (*v118)(v35, v133);
      v37 = *(v36 + 16);
      if (v37)
      {
        v130 = v31;
        v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v127 = v36;
        v39 = v36 + v38;
        v40 = *(v15 + 72);
        v41 = *(v15 + 16);
        v42 = MEMORY[0x1E69E7CC0];
        v43 = v141;
        do
        {
          v44 = v148;
          v41(v148, v39, v14);
          (*v146)(v43, v44, v14);
          v45 = (*v145)(v43, v14);
          if (v45 == v144)
          {
            (*v135)(v43, v14);
            v46 = *v143;
            v47 = v139;
            (*v143)(v139, v43, v2);
            v48 = v138;
            v46(v138, v47, v2);
            v46(v149, v48, v2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
            }

            v50 = *(v42 + 2);
            v49 = *(v42 + 3);
            v43 = v141;
            if (v50 >= v49 >> 1)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v42);
            }

            *(v42 + 2) = v50 + 1;
            v2 = v137;
            v46(&v42[((*(v140 + 80) + 32) & ~*(v140 + 80)) + v140[9] * v50], v149, v137);
            v14 = v142;
          }

          else
          {
            (*v136)(v43, v14);
          }

          v39 += v40;
          --v37;
        }

        while (v37);

        v31 = v130;
      }

      else
      {

        v42 = MEMORY[0x1E69E7CC0];
      }

      v130 = v31 + 1;
      v51 = *v128;
      v52 = v123;
      (*v128)(v123, v117, v2);
      v53 = 0;
      v54 = *(v42 + 2);
      do
      {
        if (v54 == v53)
        {
          (*v116)(v52, v2);

LABEL_4:
          (*v115)(v129, v134);
          v14 = v142;
          goto LABEL_5;
        }

        v55 = v53 + 1;
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = v55;
      }

      while ((v56 & 1) == 0);
      v57 = *v116;
      (*v116)(v52, v2);
      v58 = v114;
      v51(v114, v113, v2);
      v59 = specialized Sequence<>.contains(_:)(v58, v42, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920], MEMORY[0x1E69D2928]);

      v57(v58, v2);
      if (v59 || (RRCandidate.isAppEntityType.getter() & 1) == 0)
      {
        goto LABEL_4;
      }

      v60 = *v109;
      (*v109)(v110, v129, v134);
      v61 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v61;
      v150 = v61;
      v14 = v142;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1);
        v63 = v150;
      }

      v65 = *(v63 + 16);
      v64 = *(v63 + 24);
      if (v65 >= v64 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
        v63 = v150;
      }

      *(v63 + 16) = v65 + 1;
      v112 = v63;
      v60((v63 + v108 + v65 * v126), v110, v134);
LABEL_5:
      v31 = v130;
      v15 = v122;
      if (v130 == v124)
      {
        break;
      }

      v120(v129, v119 + v126 * v130, v134, v34);
    }
  }

  else
  {
    v112 = MEMORY[0x1E69E7CC0];
  }

  v66 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say32SiriReferenceResolutionDataModel11RRCandidateVGTt1g504_s14d141KitRuntime27LinkExpansionContextBuilderC42extractOnScreenEntityTypesFromRRCandidates33_96F732C182F07CCE7D79D4AD573D548BLLySDySSShySSGGSay0A28efg7Model11I58VGFSSAJcfu_32c81b42e3f50092687f7f7eb8a52d50f3AJSSTf3nnpk_nTf1nc_nTf4g_n(v112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v68 = result;
  v69 = 0;
  v70 = v66[8];
  v136 = (v66 + 8);
  v140 = v66;
  v71 = 1 << *(v66 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & v70;
  v74 = (v71 + 63) >> 6;
  v75 = v111;
  v147 = v111 + 16;
  v76 = (v107 + 8);
  v77 = (v111 + 8);
  v138 = result + 64;
  v139 = result;
  v137 = v74;
  if (v73)
  {
    while (1)
    {
      v78 = __clz(__rbit64(v73));
      v79 = (v73 - 1) & v73;
LABEL_39:
      v82 = v78 | (v69 << 6);
      v141 = v79;
      v142 = v69;
      v83 = v140[7];
      v84 = v140[6] + 16 * v82;
      v85 = *(v84 + 8);
      v145 = *v84;
      v146 = v82;
      v86 = *(v83 + 8 * v82);
      v87 = *(v86 + 16);
      v143 = v86;
      v144 = v85;
      if (v87)
      {
        v88 = v86 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        v89 = *(v75 + 72);
        v148 = *(v75 + 16);
        v149 = v89;

        v90 = MEMORY[0x1E69E7CC0];
        do
        {
          v92 = v131;
          v93 = v134;
          (v148)(v131, v88, v134);
          v94 = v132;
          RRCandidate.entity.getter();
          v95 = RREntity.dataType.getter();
          v97 = v96;
          (*v76)(v94, v133);
          (*v77)(v92, v93);
          if (v97)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 2) + 1, 1, v90);
            }

            v99 = *(v90 + 2);
            v98 = *(v90 + 3);
            if (v99 >= v98 >> 1)
            {
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v90);
            }

            *(v90 + 2) = v99 + 1;
            v91 = &v90[16 * v99];
            *(v91 + 4) = v95;
            *(v91 + 5) = v97;
          }

          v88 += v149;
          --v87;
        }

        while (v87);
      }

      else
      {

        v90 = MEMORY[0x1E69E7CC0];
      }

      v100 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v90);

      v101 = v146;
      v68 = v139;
      *&v138[(v146 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v146;
      v102 = (*(v68 + 6) + 16 * v101);
      v103 = v144;
      *v102 = v145;
      v102[1] = v103;
      *(*(v68 + 7) + 8 * v101) = v100;
      v104 = *(v68 + 2);
      v105 = __OFADD__(v104, 1);
      v106 = v104 + 1;
      if (v105)
      {
        break;
      }

      *(v68 + 2) = v106;
      v75 = v111;
      v73 = v141;
      v69 = v142;
      v74 = v137;
      if (!v141)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
LABEL_34:
    v80 = v69;
    while (1)
    {
      v69 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v69 >= v74)
      {

        return v68;
      }

      v81 = v136[v69];
      ++v80;
      if (v81)
      {
        v78 = __clz(__rbit64(v81));
        v79 = (v81 - 1) & v81;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized LinkExpansionContext.LinkActionMetadataView.init(sessionContext:turnContext:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return a2;
  }

  v8 = a2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v3, 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v9, v4 + 4, v3, v2);
  v6 = v9;

  result = outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v6);
  if (v5 == v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(a1, v4, v5, v6);
}

uint64_t specialized LinkExpansionContextBuilder.getAssociatedEntityTypeMetadata(actionMetadata:)(void *a1)
{
  v2 = [a1 typeSpecificMetadata];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type LNActionTypeSpecificMetadataKey and conformance LNActionTypeSpecificMetadataKey, type metadata accessor for LNActionTypeSpecificMetadataKey, &protocol conformance descriptor for LNActionTypeSpecificMetadataKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v23);

      if (swift_dynamicCast())
      {
        return v22;
      }
    }

    else
    {
    }
  }

  v8 = [a1 parameters];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNActionParameterMetadata, 0x1E69AC688);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E12A1FE0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v12 valueType];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 memberValueType];

        v15 = v17;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;

        v20 = [v19 typeName];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v21;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_19:

  return 0;
}

unint64_t specialized LinkExpansionContextBuilder.extractActionMetadata(allLinkActionsMetadata:)(uint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v112 = a1;

  v117 = 0;
  v8 = 0;
  v110 = v7;
  v111 = a1 + 64;
LABEL_6:
  if (v6)
  {
    v116 = v2;
    v10 = v8;
  }

  else
  {
    do
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_87;
      }

      if (v10 >= v7)
      {

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v117, 0);
        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
    }

    while (!v6);
    v116 = v2;
  }

  v114 = v10;
  v115 = (v6 - 1) & v6;
  v11 = __clz(__rbit64(v6)) | (v10 << 6);
  v12 = (*(v112 + 48) + 16 * v11);
  v13 = v12[1];
  v120 = *v12;
  v14 = *(*(v112 + 56) + 8 * v11);

  v15 = v14;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo16LNSystemProtocolC_Say14SiriKitRuntime18LinkActionMetadataVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = [v15 systemProtocolDefaults];
  v18 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  v131 = v18;
  v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v113 = v15;
  v19 = [v15 actions];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNActionMetadata, 0x1E69AC678);
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = 0;
  v22 = v20 + 64;
  v132 = v20;
  v23 = 1 << *(v20 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;
  v121 = v16;
  v130 = v13;
  v128 = v20 + 64;
  v127 = v26;
LABEL_18:
  if (v25)
  {
    v136 = v16;
    v27 = v21;
LABEL_24:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = v28 | (v27 << 6);
    v30 = (*(v132 + 48) + 16 * v29);
    v129 = *v30;
    v31 = *(*(v132 + 56) + 8 * v29);
    v135 = v30[1];

    v32 = v31;
    v126 = specialized LinkExpansionContextBuilder.getAssociatedEntityTypeMetadata(actionMetadata:)(v32);
    v133 = v32;
    v134 = v33;
    v35 = v34;
    v36 = [v32 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
    v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
    v39 = 1 << *(v37 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v125 = v35 & 1;
    while (1)
    {
      while (1)
      {
        v43 = v38;
        if (!v41)
        {
          while (1)
          {
            v38 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
              goto LABEL_86;
            }

            if (v38 >= v42)
            {
              break;
            }

            v41 = *(v37 + 64 + 8 * v38);
            ++v43;
            if (v41)
            {
              goto LABEL_32;
            }
          }

          v85 = [v133 systemProtocols];
          v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v86 >> 62)
          {
            v87 = __CocoaSet.count.getter();
          }

          else
          {
            v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = v130;
          v16 = v136;

          if (v87 == 1)
          {
          }

          else
          {
            if (one-time initialization token for kLogger != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            __swift_project_value_buffer(v88, kLogger);

            v89 = v133;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v138[0] = v93;
              *v92 = 136315650;
              *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v130, v138);
              *(v92 + 12) = 2080;
              v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v135, v138);

              *(v92 + 14) = v94;
              *(v92 + 22) = 2080;
              v95 = [v89 systemProtocols];
              v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v97 = MEMORY[0x1E12A16D0](v96, v131);
              v99 = v98;

              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v138);

              *(v92 + 24) = v100;
              v13 = v130;
              _os_log_impl(&dword_1DC659000, v90, v91, "[LinkExpansionContext] Expected exactly one systemProtocol for %s:%s, got %s", v92, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v93, -1, -1);
              v101 = v92;
              v16 = v136;
              MEMORY[0x1E12A2F50](v101, -1, -1);
            }

            else
            {
            }
          }

          v21 = v27;
          v22 = v128;
          v26 = v127;
          goto LABEL_18;
        }

LABEL_32:
        v44 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v45 = *(*(v37 + 48) + ((v38 << 9) | (8 * v44)));
        v46 = objc_opt_self();
        v47 = v45;
        v48 = [v46 protocolOrNilWithIdentifier_];
        if (v48)
        {
          break;
        }
      }

      v49 = v48;
      if (*(v119 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v51 & 1) != 0))
      {
        v52 = (*(v119 + 56) + 16 * v50);
        if (*v52 == v129 && v52[1] == v135)
        {
          v109 = 1;
        }

        else
        {
          v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v109 = 0;
      }

      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v117, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v136;
      v118 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
      v55 = *(v136 + 16);
      v56 = (v54 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_88;
      }

      if (*(v136 + 24) < v57)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = v136;
        if (v54)
        {
          goto LABEL_51;
        }

LABEL_49:
        v59[(v118 >> 6) + 8] |= 1 << v118;
        *(v59[6] + 8 * v118) = v49;
        *(v59[7] + 8 * v118) = MEMORY[0x1E69E7CC0];
        v60 = v59[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_89;
        }

        v59[2] = v62;
        v63 = v49;
        goto LABEL_51;
      }

      v108 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
      v124 = static _DictionaryStorage.copy(original:)();
      if (*(v136 + 16))
      {
        v70 = (v124 + 64);
        v71 = (v136 + 64);
        v72 = ((1 << *(v124 + 32)) + 63) >> 6;
        if (v124 != v136 || v70 >= &v71[8 * v72])
        {
          memmove(v70, v71, 8 * v72);
        }

        v73 = 0;
        *(v124 + 16) = *(v136 + 16);
        v74 = 1 << *(v136 + 32);
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        else
        {
          v75 = -1;
        }

        v76 = v75 & *(v136 + 64);
        v77 = (v74 + 63) >> 6;
        v103 = v77;
        if (v76)
        {
          do
          {
            v78 = __clz(__rbit64(v76));
            v104 = (v76 - 1) & v76;
LABEL_71:
            v81 = v78 | (v73 << 6);
            v82 = *(*(v136 + 48) + 8 * v81);
            v83 = *(*(v136 + 56) + 8 * v81);
            *(*(v124 + 48) + 8 * v81) = v82;
            *(*(v124 + 56) + 8 * v81) = v83;
            v84 = v82;

            v77 = v103;
            v76 = v104;
          }

          while (v104);
        }

        v79 = v73;
        while (1)
        {
          v73 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_90;
          }

          if (v73 >= v77)
          {
            break;
          }

          v80 = *(v136 + 64 + 8 * v73);
          ++v79;
          if (v80)
          {
            v78 = __clz(__rbit64(v80));
            v104 = (v80 - 1) & v80;
            goto LABEL_71;
          }
        }
      }

      v59 = v124;
      if ((v108 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_51:
      v121 = v59;
      v137 = v59[7];
      v106 = *(v137 + 8 * v118);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v106;
      *(v137 + 8 * v118) = v106;
      if ((v64 & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 16) + 1, 1, v106);
        *(v137 + 8 * v118) = v65;
      }

      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      v107 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        *(v137 + 8 * v118) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v107, 1, v65);
      }

      v68 = *(v137 + 8 * v118);
      *(v68 + 16) = v107;
      v69 = v68 + 40 * v67;
      *(v69 + 32) = v129;
      *(v69 + 40) = v135;
      *(v69 + 48) = v126;
      *(v69 + 56) = v134;
      *(v69 + 64) = v125;
      *(v69 + 65) = v109 & 1;
      v117 = specialized thunk for @callee_guaranteed () -> (@owned [String]);
      v136 = v121;
    }

    v105 = v54;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
    v123 = v138[0];
    v118 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
    if ((v105 & 1) != (v58 & 1))
    {
      goto LABEL_91;
    }

    v59 = v123;
    if (v105)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  while (1)
  {
    v27 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      v9 = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v116;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121, v120, v13, v9);

      v2 = v138[0];
      v8 = v114;
      v6 = v115;
      v7 = v110;
      v3 = v111;
      goto LABEL_6;
    }

    v25 = *(v22 + 8 * v27);
    ++v21;
    if (v25)
    {
      v136 = v16;
      goto LABEL_24;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:)(uint64_t a1, uint64_t a2, int *a3)
{
  v3[10] = a1;
  v3[11] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[12] = static MessageBusActor.shared;

  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  v3[13] = v5;
  *v5 = v3;
  v5[1] = specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:);

  return v7(v3 + 8);
}

uint64_t specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:)()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:);
  }

  else
  {
    v3 = specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v18 = v0;

  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, kLogger);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v17);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1DC659000, v4, v5, "[LinkExpansionContext] %s : %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

uint64_t LinkMetadataProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  return v0;
}

Swift::Int LinkMetadataProvider.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t LinkMetadataProvider.actionMetadata()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.actionMetadata(), 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = LinkMetadataProvider.actionMetadata();
  v2 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v2);
}

uint64_t LinkMetadataProvider.actionMetadata()(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.actionMetadata(), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t LinkMetadataProvider.conditionallyEnabledActionMetadata()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.conditionallyEnabledActionMetadata(), 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = LinkMetadataProvider.conditionallyEnabledActionMetadata();
  v2 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v2);
}

{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC8];

  return v1(v2);
}

uint64_t LinkMetadataProvider.conditionallyEnabledActionMetadata()(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.conditionallyEnabledActionMetadata(), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t LinkMetadataProvider.bundles()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.bundles(), 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = LinkMetadataProvider.bundles();
  v2 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v2);
}

{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t LinkMetadataProvider.bundles()(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.bundles(), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t LinkMetadataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LinkMetadataProviding.conditionallyEnabledActionMetadata() in conformance LinkMetadataProvider()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for LinkMetadataProviding.conditionallyEnabledActionMetadata() in conformance LinkMetadataProvider, 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = LinkMetadataProvider.actionMetadata();
  v2 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v2);
}

uint64_t protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider, 0, 0);
}

{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider;
  v2 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v2);
}

uint64_t protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;

  return MEMORY[0x1EEE6DFA0](specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:), 0, 0);
}

{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;

  return MEMORY[0x1EEE6DFA0](specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:), 0, 0);
}

{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;

  return MEMORY[0x1EEE6DFA0](specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:), 0, 0);
}

uint64_t specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)()
{
  v30 = v0;
  v29[1] = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors();
  v2 = swift_allocError();
  if (v1 < 1)
  {
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[12] = 0;
    v3 = *(v0[11] + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA70640;
    *(inited + 32) = [objc_opt_self() conditionallyEnabledProtocol];
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
    lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v0[7] = 0;
    v6 = [v3 actionsConformingToSystemProtocols:isa logicalType:2 bundleIdentifier:0 error:v0 + 7];

    v7 = v0[7];
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v7;

      v10 = v0[1];

      return v10(v8);
    }

    else
    {
      v13 = v7;
      v14 = _convertNSErrorToError(_:)();
      v0[13] = v14;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[9];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29[0] = v21;
        *v20 = 134218498;
        *(v20 + 4) = 0;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v19;
        *(v20 + 22) = 2080;
        v0[8] = v14;
        v22 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v29);

        *(v20 + 24) = v25;
        _os_log_impl(&dword_1DC659000, v17, v18, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1E12A2F50](v21, -1, -1);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v26 = v0[10];
      if (!is_mul_ok(v26, 0xF4240uLL))
      {
        __break(1u);
      }

      v27 = v14;
      v28 = swift_task_alloc();
      v0[14] = v28;
      *v28 = v0;
      v28[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);

      return MEMORY[0x1EEE6DA60](1000000 * v26);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  else
  {

    v3 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

{
  v29 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors();
  v2 = swift_allocError();
  if (v1 < 1)
  {
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v0[7] = 0;
    v3 = *(v0[6] + 16);
    v0[2] = 0;
    v4 = [v3 bundlesWithError_];
    v5 = v0[2];
    if (v4)
    {
      v6 = v4;
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v5;

      v9 = v0[1];

      return v9(v7);
    }

    else
    {
      v12 = v5;
      v13 = _convertNSErrorToError(_:)();
      v0[8] = v13;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.executor);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[4];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28[0] = v20;
        *v19 = 134218498;
        *(v19 + 4) = 0;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v18;
        *(v19 + 22) = 2080;
        v0[3] = v13;
        v21 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v28);

        *(v19 + 24) = v24;
        _os_log_impl(&dword_1DC659000, v16, v17, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v19, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1E12A2F50](v20, -1, -1);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }

      v25 = v0[5];
      if (!is_mul_ok(v25, 0xF4240uLL))
      {
        __break(1u);
      }

      v26 = v13;
      v27 = swift_task_alloc();
      v0[9] = v27;
      *v27 = v0;
      v27[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);

      return MEMORY[0x1EEE6DA60](1000000 * v25);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  else
  {

    v3 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v29 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors();
  v2 = swift_allocError();
  if (v1 < 1)
  {
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v0[7] = 0;
    v3 = *(v0[6] + 16);
    v0[2] = 0;
    v4 = [v3 actionsAndSystemProtocolDefaultsForBundleIdentifier:0 error:v0 + 2];
    v5 = v0[2];
    if (v4)
    {
      v6 = v4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNBundleActionsMetadata, 0x1E69AC730);
      v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v5;

      v9 = v0[1];

      return v9(v7);
    }

    else
    {
      v12 = v5;
      v13 = _convertNSErrorToError(_:)();
      v0[8] = v13;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.executor);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[4];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28[0] = v20;
        *v19 = 134218498;
        *(v19 + 4) = 0;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v18;
        *(v19 + 22) = 2080;
        v0[3] = v13;
        v21 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v28);

        *(v19 + 24) = v24;
        _os_log_impl(&dword_1DC659000, v16, v17, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v19, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1E12A2F50](v20, -1, -1);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }

      v25 = v0[5];
      if (!is_mul_ok(v25, 0xF4240uLL))
      {
        __break(1u);
      }

      v26 = v13;
      v27 = swift_task_alloc();
      v0[9] = v27;
      *v27 = v0;
      v27[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);

      return MEMORY[0x1EEE6DA60](1000000 * v25);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  else
  {

    v3 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)();
}

uint64_t specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(uint64_t a1)
{
  v31 = v1;
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = v1[12] + 1;
  if (v2 == v1[9])
  {
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[13];
    v1[12] = v2;
    v6 = *(v1[11] + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA70640;
    *(inited + 32) = [objc_opt_self() conditionallyEnabledProtocol];
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
    lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v1[7] = 0;
    v9 = [v6 actionsConformingToSystemProtocols:isa logicalType:2 bundleIdentifier:0 error:v1 + 7];

    v10 = v1[7];
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v10;

      v13 = v1[1];

      return v13(v11);
    }

    else
    {
      v14 = v10;
      v15 = _convertNSErrorToError(_:)();
      v1[13] = v15;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.executor);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = v1[9];
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 134218498;
        *(v21 + 4) = v2;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v20;
        *(v21 + 22) = 2080;
        v1[8] = v15;
        v23 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v24 = String.init<A>(describing:)();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v30);

        *(v21 + 24) = v26;
        _os_log_impl(&dword_1DC659000, v18, v19, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v21, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1E12A2F50](v22, -1, -1);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }

      v27 = v1[10];
      if (!is_mul_ok(v27, 0xF4240uLL))
      {
        __break(1u);
      }

      v28 = v15;
      v29 = swift_task_alloc();
      v1[14] = v29;
      *v29 = v1;
      v29[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);

      return MEMORY[0x1EEE6DA60](1000000 * v27);
    }
  }
}

{
  v30 = v1;
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = v1[7] + 1;
  if (v2 == v1[4])
  {
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[8];
    v1[7] = v2;
    v6 = *(v1[6] + 16);
    v1[2] = 0;
    v7 = [v6 bundlesWithError_];
    v8 = v1[2];
    if (v7)
    {
      v9 = v7;
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v8;

      v12 = v1[1];

      return v12(v10);
    }

    else
    {
      v13 = v8;
      v14 = _convertNSErrorToError(_:)();
      v1[8] = v14;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v1[4];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29[0] = v21;
        *v20 = 134218498;
        *(v20 + 4) = v2;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v19;
        *(v20 + 22) = 2080;
        v1[3] = v14;
        v22 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v29);

        *(v20 + 24) = v25;
        _os_log_impl(&dword_1DC659000, v17, v18, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1E12A2F50](v21, -1, -1);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v26 = v1[5];
      if (!is_mul_ok(v26, 0xF4240uLL))
      {
        __break(1u);
      }

      v27 = v14;
      v28 = swift_task_alloc();
      v1[9] = v28;
      *v28 = v1;
      v28[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);

      return MEMORY[0x1EEE6DA60](1000000 * v26);
    }
  }
}

{
  v30 = v1;
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = v1[7] + 1;
  if (v2 == v1[4])
  {
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[8];
    v1[7] = v2;
    v6 = *(v1[6] + 16);
    v1[2] = 0;
    v7 = [v6 actionsAndSystemProtocolDefaultsForBundleIdentifier:0 error:v1 + 2];
    v8 = v1[2];
    if (v7)
    {
      v9 = v7;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNBundleActionsMetadata, 0x1E69AC730);
      v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v8;

      v12 = v1[1];

      return v12(v10);
    }

    else
    {
      v13 = v8;
      v14 = _convertNSErrorToError(_:)();
      v1[8] = v14;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v1[4];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29[0] = v21;
        *v20 = 134218498;
        *(v20 + 4) = v2;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v19;
        *(v20 + 22) = 2080;
        v1[3] = v14;
        v22 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v29);

        *(v20 + 24) = v25;
        _os_log_impl(&dword_1DC659000, v17, v18, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1E12A2F50](v21, -1, -1);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v26 = v1[5];
      if (!is_mul_ok(v26, 0xF4240uLL))
      {
        __break(1u);
      }

      v27 = v14;
      v28 = swift_task_alloc();
      v1[9] = v28;
      *v28 = v1;
      v28[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);

      return MEMORY[0x1EEE6DA60](1000000 * v26);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors()
{
  result = lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors;
  if (!lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors;
  if (!lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors);
  }

  return result;
}

uint64_t dispatch thunk of LinkMetadataProviding.actionMetadata()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LinkMetadataProviding.conditionallyEnabledActionMetadata()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of LinkMetadataProviding.bundles()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v7(a1, a2);
}

void *specialized SimpleOrderedDictionary.values()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v26 - v11;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = (v10 + 56);
    v28 = v10;
    v14 = (v10 + 48);
    v15 = (a2 + 40);
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (*(a1 + 16))
      {
        v17 = *(v15 - 1);
        v18 = *v15;

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        if (v20)
        {
          outlined init with copy of ReferenceResolutionClientProtocol?(*(a1 + 56) + *(v28 + 72) * v19, v6, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        (*v13)(v6, v21, 1, v7);

        if ((*v14)(v6, 1, v7) != 1)
        {
          v22 = v27;
          outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(v6, v27);
          outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(v22, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          v24 = v16[2];
          v23 = v16[3];
          if (v24 >= v23 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
          }

          v16[2] = v24 + 1;
          outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(v29, v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24);
          goto LABEL_5;
        }
      }

      else
      {
        (*v13)(v6, 1, 1, v7);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
LABEL_5:
      v15 += 2;
      if (!--v12)
      {
        return v16;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = v33 - v12;
  v13 = type metadata accessor for UUID();
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = *(v14 + 16);
  v19 = v14 + 16;
  v21 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v43 = *(v19 + 56);
  v44 = v20;
  v33[1] = v8 + 16;
  v41 = (v19 - 8);
  v42 = (v8 + 56);
  v39 = (v8 + 32);
  v40 = (v8 + 48);
  v22 = MEMORY[0x1E69E7CC0];
  v36 = v10;
  v37 = v8;
  v34 = v13;
  v35 = a1;
  v45 = v19;
  v20(v17, v21, v13, v15);
  while (1)
  {
    if (*(a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v25 & 1) != 0))
    {
      (*(v8 + 16))(v6, *(a1 + 56) + *(v8 + 72) * v24, v7);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    (*v42)(v6, v26, 1, v7);
    (*v41)(v17, v13);
    if ((*v40)(v6, 1, v7) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    }

    else
    {
      v27 = v38;
      v28 = *v39;
      (*v39)(v38, v6, v7);
      v28(v10, v27, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
      }

      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v22);
      }

      v22[2] = v30 + 1;
      v8 = v37;
      v31 = v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v37 + 72) * v30;
      v10 = v36;
      v28(v31, v36, v7);
      v13 = v34;
      a1 = v35;
    }

    v21 += v43;
    if (!--v18)
    {
      break;
    }

    v44(v17, v21, v13, v23);
  }

  return v22;
}

uint64_t static EntityTypeMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        return (a3 ^ a6 ^ 1) & 1;
      }

      v6 = a3;
      v7 = a6;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v6;
      a6 = v7;
      if (v8)
      {
        return (a3 ^ a6 ^ 1) & 1;
      }
    }
  }

  else if (!a5)
  {
    return (a3 ^ a6 ^ 1) & 1;
  }

  return 0;
}

SiriKitRuntime::EntityTypeMetadata __swiftcall EntityTypeMetadata.init(entityTypeName:entityTypeRequired:)(Swift::String_optional entityTypeName, Swift::Bool entityTypeRequired)
{
  v2 = entityTypeRequired;
  result.entityTypeName = entityTypeName;
  result.entityTypeRequired = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EntityTypeMetadata(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

uint64_t LinkParseExpansion.linkExpansionContext.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t one-time initialization function for allowListedParsers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMR);
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DCA65720;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D0978], v0);
  v6(v5 + v2, *MEMORY[0x1E69D0988], v0);
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static LinkParseExpansion.allowListedParsers = v7;
  return result;
}

uint64_t *LinkParseExpansion.allowListedParsers.unsafeMutableAddressor()
{
  if (one-time initialization token for allowListedParsers != -1)
  {
    swift_once();
  }

  return &static LinkParseExpansion.allowListedParsers;
}

double static LinkParseExpansion.allowListedParsers.getter()
{
  if (one-time initialization token for allowListedParsers != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t LinkParseExpansion.__allocating_init(linkExpansionContext:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LinkParseExpansion.init(linkExpansionContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LinkParseExpansion.expand(parses:)(void (**a1)(char *, uint64_t), void *a2)
{
  v129 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v91 - v5);
  v132 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v92 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v126 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v131 = v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v91 - v11;
  v13 = type metadata accessor for USOParse();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v120 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = v91 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v91 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v104 = v91 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v108 = v91 - v24;
  v25 = type metadata accessor for Parse();
  v121 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v119 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v130 = v91 - v28;
  if (one-time initialization token for kLogger != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v29 = type metadata accessor for Logger();
    v30 = __swift_project_value_buffer(v29, kLogger);

    v106 = v30;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    v33 = os_log_type_enabled(v31, v32);
    v109 = v13;
    v107 = v14;
    v105 = v6;
    v110 = v20;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v134 = v35;
      *v34 = 136315138;
      v36 = LinkExpansionContext.debugDescription.getter(*(v122 + 16), *(v122 + 24));
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v134);
      v13 = v109;

      *(v34 + 4) = v38;
      v14 = v107;
      _os_log_impl(&dword_1DC659000, v31, v32, "[LinkParseExpansion] Expanding LINK parses from context %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v39 = specialized SimpleOrderedDictionary.values()(a1, v129);
    v20 = v39;
    v6 = MEMORY[0x1E69E7CC0];
    v41 = v108;
    v118 = *(v39 + 2);
    if (v118)
    {
      v42 = 0;
      v115 = v121 + 88;
      v116 = v121 + 16;
      v114 = *MEMORY[0x1E69D0168];
      v113 = (v14 + 56);
      a1 = (v121 + 8);
      v103 = (v121 + 96);
      v124 = (v14 + 32);
      v102 = (v92 + 48);
      v97 = (v92 + 32);
      v125 = v92 + 16;
      v127 = (v92 + 8);
      v100 = (v14 + 16);
      v99 = (v14 + 8);
      v112 = (v14 + 48);
      *&v40 = 136315138;
      v94 = v40;
      v111 = v25;
      v98 = v12;
      v117 = v39;
      v123 = (v121 + 8);
      do
      {
        if (v42 >= *(v20 + 2))
        {
          __break(1u);
          goto LABEL_44;
        }

        v128 = v42;
        v129 = v6;
        v43 = v121;
        v44 = &v20[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v121 + 72) * v42];
        v45 = *(v121 + 16);
        v46 = v130;
        v45(v130, v44, v25);
        v47 = v119;
        v45(v119, v46, v25);
        v48 = (*(v43 + 88))(v47, v25);
        if (v48 == v114)
        {
          (*v103)(v47, v25);
          v49 = *v124;
          v50 = v110;
          (*v124)(v110, v47, v13);
          v51 = v105;
          USOParse.parserIdentifier.getter();
          v52 = v132;
          v53 = (*v102)(v51, 1, v132);
          a1 = v123;
          if (v53 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v54 = v101;
          }

          else
          {
            (*v97)(v131, v51, v52);
            if (one-time initialization token for allowListedParsers != -1)
            {
              swift_once();
            }

            v55 = static LinkParseExpansion.allowListedParsers;
            if (*(static LinkParseExpansion.allowListedParsers + 16))
            {
              v93 = v49;
              lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0998]);
              v56 = dispatch thunk of Hashable._rawHashValue(seed:)();
              v57 = -1 << *(v55 + 32);
              v58 = v56 & ~v57;
              if ((*(v55 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
              {
                v91[1] = v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v59 = ~v57;
                v60 = *(v92 + 72);
                v61 = *(v92 + 16);
                while (1)
                {
                  v62 = v126;
                  v63 = v132;
                  v61(v126, *(v55 + 48) + v60 * v58, v132);
                  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D09A0]);
                  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v65 = *v127;
                  (*v127)(v62, v63);
                  if (v64)
                  {
                    break;
                  }

                  v58 = (v58 + 1) & v59;
                  if (((*(v55 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
                  {
                    v13 = v109;
                    v12 = v98;
                    v50 = v110;
                    a1 = v123;
                    goto LABEL_23;
                  }
                }

                v65(v131, v132);
                v12 = v98;
                v13 = v109;
                v93(v98, v110, v109);
                (*v113)(v12, 0, 1, v13);
                v14 = v107;
                v41 = v108;
                v25 = v111;
                v6 = v129;
                v20 = v117;
                a1 = v123;
                goto LABEL_29;
              }

              v65 = *v127;
LABEL_23:
              v65(v131, v132);
            }

            else
            {
              (*v127)(v131, v52);
            }

            v54 = v101;
            v25 = v111;
          }

          (*v100)(v54, v50, v13);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();
          v68 = v54;
          if (os_log_type_enabled(v66, v67))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v134 = v70;
            *v69 = v94;
            USOParse.parserIdentifier.getter();
            v71 = String.init<A>(describing:)();
            v73 = v72;
            v74 = *v99;
            (*v99)(v68, v109);
            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v134);
            v25 = v111;

            *(v69 + 4) = v75;
            _os_log_impl(&dword_1DC659000, v66, v67, "[LinkParseExpansion] Skipping link parse expansion for parse from %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
            MEMORY[0x1E12A2F50](v70, -1, -1);
            MEMORY[0x1E12A2F50](v69, -1, -1);

            v74(v110, v109);
            v12 = v98;
            v13 = v109;
          }

          else
          {

            v76 = *v99;
            (*v99)(v68, v13);
            v76(v50, v13);
          }

          v14 = v107;
          v6 = v129;
          v20 = v117;
          (*v113)(v12, 1, 1, v13);
          v41 = v108;
        }

        else
        {
          (*v113)(v12, 1, 1, v13);
          a1 = v123;
          (*v123)(v47, v25);
          v6 = v129;
          v20 = v117;
        }

LABEL_29:
        (*a1)(v130, v25);
        if ((*v112)(v12, 1, v13) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
        }

        else
        {
          v77 = *v124;
          v78 = v104;
          (*v124)(v104, v12, v13);
          v77(v120, v78, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
          }

          v80 = v6[2];
          v79 = v6[3];
          if (v80 >= v79 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v6);
          }

          v6[2] = v80 + 1;
          v77(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v80, v120, v13);
          v25 = v111;
        }

        v42 = v128 + 1;
      }

      while (v128 + 1 != v118);
    }

    v134 = MEMORY[0x1E69E7CC0];
    v20 = v6[2];
    if (!v20)
    {
      break;
    }

    v12 = 0;
    v25 = 0;
    a1 = (v14 + 16);
    while (v12 < v6[2])
    {
      (*(v14 + 16))(v41, v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13);
      closure #2 in LinkParseExpansion.expand(parses:)(v41, v122, &v133);
      ++v12;
      (*(v14 + 8))(v41, v13);
      specialized Array.append<A>(contentsOf:)(v133);
      if (v20 == v12)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_40:

  v81 = v134;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v134 = v85;
    *v84 = 136315138;
    v86 = type metadata accessor for ParseUserDataAttachment(0);
    v87 = MEMORY[0x1E12A16D0](v81, v86);
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v134);

    *(v84 + 4) = v89;
    _os_log_impl(&dword_1DC659000, v82, v83, "[LinkParseExpansion] Returning expanded parses: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x1E12A2F50](v85, -1, -1);
    MEMORY[0x1E12A2F50](v84, -1, -1);
  }

  return v81;
}

uint64_t closure #2 in LinkParseExpansion.expand(parses:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, kLogger);
  v12 = *(v5 + 16);
  v12(v9, a1, v4);
  v46 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v45 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v51 = v41;
    *v16 = 136315138;
    v12(v42, v9, v4);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    (*(v5 + 8))(v9, v4);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v51);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v13, v14, "[LinkParseExpansion] Expanding parse %s", v16, 0xCu);
    v21 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  specialized LinkUsoParser.extractParseInformation(usoParse:)(&v51);
  v57 = v51;
  v55 = v52;
  v56[0] = *(&v51 + 1);
  v54 = *(&v52 + 1);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v57, v48, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v56, v48, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v55, v48, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v54, v48, &_sShySSGMd, &_sShySSGMR);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  outlined destroy of ReferenceResolutionClientProtocol?(&v57, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v56, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v55, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v54, &_sShySSGMd, &_sShySSGMR);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v50 = v25;
    *v24 = 136315138;
    v48[0] = v51;
    v48[1] = v52;
    v49 = v53;
    outlined init with copy of ReferenceResolutionClientProtocol?(&v57, v47, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v56, v47, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(&v55, v47, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(&v54, v47, &_sShySSGMd, &_sShySSGMR);
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v50);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1DC659000, v22, v23, "[LinkParseExpansion] Extracted parse metadata %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  v29 = specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(&v51, *(v43 + 16), *(v43 + 24));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v48[0] = v33;
    *v32 = 136315138;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
    v35 = MEMORY[0x1E12A16D0](v29, v34);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v48);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1DC659000, v30, v31, "[LinkParseExpansion] Compatible Link Actions %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1E12A2F50](v33, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v38);
  *(&v41 - 2) = v45;
  v39 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS11appBundleId_SDySSypG8userDatatG_14SiriKitRuntime09ParseUserH10AttachmentVs5NeverOTg5(partial apply for closure #1 in closure #2 in LinkParseExpansion.expand(parses:), (&v41 - 4), v29);
  outlined destroy of ReferenceResolutionClientProtocol?(&v57, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v56, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v55, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v54, &_sShySSGMd, &_sShySSGMR);

  *v44 = v39;
  return result;
}

uint64_t closure #1 in closure #2 in LinkParseExpansion.expand(parses:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v29 = a3;
  v4 = type metadata accessor for Siri_Nlu_External_Parser();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - v8;
  v24 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for Parse();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v23[0] = a1[1];
  v23[1] = v18;
  v25 = a1[2];

  USOParse.userParse.getter();
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.parser.getter();
  (*(v10 + 8))(v12, v24);
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v27 + 8))(v6, v28);
  v19 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  (*(v15 + 104))(v17, *MEMORY[0x1E69D0168], v14);
  v20 = type metadata accessor for ParseUserDataAttachment(0);
  v21 = v29;
  (*(v15 + 16))(v29 + *(v20 + 20), v17, v14);
  UUID.init()();
  result = (*(v15 + 8))(v17, v14);
  *(v21 + *(v20 + 24)) = v25;
  return result;
}

uint64_t LinkParseExpansion.deinit()
{

  return v0;
}

uint64_t LinkParseExpansion.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityTypeMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for EntityTypeMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, char **a3, char **a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v9 = v5 - 1;
    v10 = (result + 66);
    do
    {
      v11 = v9;
      v12 = *v10;
      v13 = *(v10 - 1);
      v14 = *(v10 - 2);
      v15 = *(v10 - 10);
      v16 = *(v10 - 18);
      v17 = *(v10 - 26);
      v18[0] = *(v10 - 34);
      v18[1] = v17;
      v18[2] = v16;
      v18[3] = v15;
      v19 = v14;
      v20 = v13;
      v21 = v12;

      closure #1 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(v18, a2, a3, a4);

      if (v4)
      {
        break;
      }

      v9 = v11 - 1;
      v10 += 40;
    }

    while (v11);
  }

  return result;
}

uint64_t specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, kLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "[LinkParseExpansion] Skipping parse expansion as could not find systemProtocol from parse.", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  v7 = one-time initialization token for kLogger;
  v8 = v3;
  if (v7 != -1)
  {
LABEL_90:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, kLogger);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v137 = v10;

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v137;
    *v14 = v3;
    v15 = v137;
    _os_log_impl(&dword_1DC659000, v11, v12, "[LinkParseExpansion] Evaluating compatible Link actions for %@", v13, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if (v6[4])
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "[LinkParseExpansion] Detected noEntity parse, using entities directly from SRR entity pool.", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v19 = *(a3 + 32);
  }

  else
  {
    if (*(v6[2] + 16))
    {
      v144 = v6[2];

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v25, v26, "[LinkParseExpansion] Detected parse with explicitly mentioned entity type.", v27, 2u);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      goto LABEL_22;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "[LinkParseExpansion] Detected parse without explicitly mentioned entity type.", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v19 = v6[1];
  }

  v144 = v19;

LABEL_22:
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v151 = v34;
    *v33 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v35 = Dictionary.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v151);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v31, v32, "[LinkParseExpansion] Considering salient entities types: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v39 = MEMORY[0x1E69E7CC0];
  v164 = MEMORY[0x1E69E7CC0];

  v40 = specialized LinkExpansionContext.LinkActionMetadataView.init(sessionContext:turnContext:)(a2, a3);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMd, &_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMR);
  inited = swift_initStackObject();
  inited[2] = v40;
  inited[3] = v42;
  inited[4] = v44;
  inited[5] = v46;
  v3 = &v159;
  v160 = v40;
  v161 = v42;
  v162 = v44;
  v163 = v46;

  v48 = LinkExpansionContext.LinkActionMetadataView.next()();
  if (!v49)
  {
    v53 = v39;
    goto LABEL_83;
  }

  v51 = v49;
  v52 = v50;
  a3 = 0;
  v53 = v39;
  v141 = v6;
  while (2)
  {
    v134 = v53;
    v54 = v48;
    while (1)
    {
      v55 = v6[3];
      if (!*(v55 + 16))
      {
        goto LABEL_37;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v56 = Hasher._finalize()();
      v57 = -1 << *(v55 + 32);
      v58 = v56 & ~v57;
      if (((*(v55 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
        break;
      }

      v3 = ~v57;
      while (1)
      {
        v59 = (*(v55 + 48) + 16 * v58);
        v60 = *v59 == v54 && v51 == v59[1];
        if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v58 = (v58 + 1) & v3;
        if (((*(v55 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

LABEL_37:
      if (*(v144 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v51), (v62 & 1) != 0))
      {
        v63 = *(*(v144 + 56) + 8 * v61);
      }

      else
      {
        v63 = 0;
      }

      v158 = v39;
      v150 = v39;
      if (*(v52 + 16))
      {
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v137);
        if (v65)
        {
          v66 = *(*(v52 + 56) + 8 * v64);

          specialized Sequence.forEach(_:)(v66, v63, &v158, &v150);
        }
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      v145 = v54;
      v146 = v51;
      if (os_log_type_enabled(v67, v68))
      {
        v139 = v68;
        log = v67;
        v69 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v147 = v138;
        *v69 = 136315650;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v51, &v147);
        *(v69 + 12) = 2080;
        swift_beginAccess();
        v70 = v158;
        v71 = *(v158 + 2);
        v142 = v69;
        if (v71)
        {
          v149 = v39;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
          v72 = v149;
          v73 = (v70 + 56);
          do
          {
            v75 = *(v73 - 3);
            v74 = *(v73 - 2);
            v76 = *v73;
            if (*v73)
            {
              v77 = *(v73 - 1);
              v151 = *(v73 - 3);
              v152 = v74;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v77, v76);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v75 = v151;
              v74 = v152;
            }

            else
            {
            }

            v149 = v72;
            v79 = *(v72 + 16);
            v78 = *(v72 + 24);
            if (v79 >= v78 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
              v72 = v149;
            }

            v73 += 5;
            *(v72 + 16) = v79 + 1;
            v80 = v72 + 16 * v79;
            *(v80 + 32) = v75;
            *(v80 + 40) = v74;
            --v71;
          }

          while (v71);

          v39 = MEMORY[0x1E69E7CC0];
          v69 = v142;
        }

        else
        {
          v72 = v39;
        }

        v151 = v72;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v6 = lazy protocol witness table accessor for type [String] and conformance [A]();
        v81 = BidirectionalCollection<>.joined(separator:)();
        v83 = v82;

        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v147);

        *(v69 + 14) = v84;
        *(v69 + 22) = 2080;
        swift_beginAccess();
        v85 = v150;
        v86 = *(v150 + 2);
        if (v86)
        {
          v135 = v6;
          v136 = v3;
          v149 = v39;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
          v87 = v149;
          v88 = (v85 + 56);
          do
          {
            v90 = *(v88 - 3);
            v89 = *(v88 - 2);
            v91 = *v88;
            if (*v88)
            {
              v92 = *(v88 - 1);
              v151 = *(v88 - 3);
              v152 = v89;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v92, v91);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v90 = v151;
              v89 = v152;
            }

            else
            {
            }

            v149 = v87;
            v94 = *(v87 + 16);
            v93 = *(v87 + 24);
            if (v94 >= v93 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
              v87 = v149;
            }

            v88 += 5;
            *(v87 + 16) = v94 + 1;
            v95 = v87 + 16 * v94;
            *(v95 + 32) = v90;
            *(v95 + 40) = v89;
            --v86;
          }

          while (v86);

          v39 = MEMORY[0x1E69E7CC0];
          v69 = v142;
          v6 = v135;
          v3 = v136;
        }

        else
        {
          v87 = v39;
        }

        v151 = v87;
        v96 = BidirectionalCollection<>.joined(separator:)();
        v98 = v97;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v147);

        *(v69 + 24) = v99;
        v67 = log;
        _os_log_impl(&dword_1DC659000, log, v139, "[LinkParseExpansion] %s Compatible actions: [%s] Incompatible actions: [%s]", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v138, -1, -1);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }

      swift_beginAccess();
      v8 = v158;
      v100 = *(v158 + 2);
      if (v100)
      {
        v149 = v39;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100, 0);
        a2 = 0;
        v101 = v149;
        v102 = v8 + 66;
        while (a2 < *(v8 + 2))
        {
          v103 = *(v102 - 26);
          v104 = *(v102 - 18);
          v105 = *(v102 - 10);
          v106 = *(v102 - 2);
          v107 = *(v102 - 1);
          v108 = *v102;
          v151 = *(v102 - 34);
          v152 = v103;
          v153 = v104;
          v154 = v105;
          v155 = v106;
          v156 = v107;
          v157 = v108;

          closure #2 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(&v151, v145, v146, &v147);

          v6 = v147;
          v109 = v148;
          v149 = v101;
          v111 = *(v101 + 2);
          v110 = *(v101 + 3);
          v3 = v111 + 1;
          if (v111 >= v110 >> 1)
          {
            v143 = v148;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
            v109 = v143;
            v101 = v149;
          }

          ++a2;
          *(v101 + 2) = v3;
          v112 = &v101[24 * v111];
          *(v112 + 4) = v6;
          *(v112 + 40) = v109;
          v102 += 40;
          if (v100 == a2)
          {

            v39 = MEMORY[0x1E69E7CC0];
            goto LABEL_74;
          }
        }

        __break(1u);
        goto LABEL_90;
      }

      v101 = v39;
LABEL_74:
      specialized Array.append<A>(contentsOf:)(v101);

      v54 = LinkExpansionContext.LinkActionMetadataView.next()();
      v51 = v113;
      v52 = v114;
      v6 = v141;
      if (!v113)
      {
        v53 = v134;
        goto LABEL_83;
      }
    }

LABEL_76:
    v115 = v54;

    v53 = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 2) + 1, 1, v134);
    }

    v117 = *(v53 + 2);
    v116 = *(v53 + 3);
    if (v117 >= v116 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v53);
    }

    *(v53 + 2) = v117 + 1;
    v118 = &v53[16 * v117];
    *(v118 + 4) = v115;
    *(v118 + 5) = v51;
    v48 = LinkExpansionContext.LinkActionMetadataView.next()();
    v51 = v119;
    v52 = v120;
    if (v119)
    {
      continue;
    }

    break;
  }

LABEL_83:

  if (*(v53 + 2))
  {
    v121 = v6[2];
    v151 = v6[1];
    v147 = v121;
    v122 = v137;
    outlined init with copy of ReferenceResolutionClientProtocol?(&v151, &v158, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(&v147, &v158, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();

    outlined destroy of ReferenceResolutionClientProtocol?(&v151, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v147, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v158 = v126;
      *v125 = 136315394;

      v127 = MEMORY[0x1E12A16D0](v53, MEMORY[0x1E69E6158]);
      v129 = v128;

      v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v158);

      *(v125 + 4) = v130;
      *(v125 + 12) = 2080;
      v131 = Set.description.getter();
      v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, &v158);

      *(v125 + 14) = v133;
      _os_log_impl(&dword_1DC659000, v123, v124, "[LinkParseExpansion] Skipped %s as the parse explicitly refers to %s", v125, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v126, -1, -1);
      MEMORY[0x1E12A2F50](v125, -1, -1);
    }
  }

  else
  {
  }

  return v164;
}

uint64_t outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double LinkUsoParser.extractParseInformation(usoParse:)@<D0>(uint64_t a2@<X8>)
{
  specialized LinkUsoParser.extractParseInformation(usoParse:)(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t one-time initialization function for kBundleAliasToFullyQualifiedBundleId()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA6B020;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000001DCA84BC0;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001DCA84BE0;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v3;
  *(inited + 112) = 0xD000000000000019;
  *(inited + 120) = 0x80000001DCA84C00;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  result = swift_arrayDestroy();
  kBundleAliasToFullyQualifiedBundleId._rawValue = v4;
  return result;
}

id LinkParseMetadata.systemProtocol.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t LinkParseMetadata.debugDescription.getter()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(128);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84A90);
  v12 = *v0;
  v9 = v12;
  outlined init with copy of LNSystemProtocol?(&v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v1);

  MEMORY[0x1E12A1580](0x797469746E65202CLL, 0xEF203A7365707954);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  v2 = Dictionary.description.getter();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0xD000000000000018, 0x80000001DCA84AC0);
  v3 = Dictionary.description.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA84AE0);
  v4 = Set.description.getter();
  MEMORY[0x1E12A1580](v4);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA84B00);
  if (v0[4])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[4])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v5, v6);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v10;
}

uint64_t LinkParseMetadata.init(systemProtocol:entityTypes:mentionedEntityTypes:mentionedAppBundleIds:noReferenceVerb:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t LinkUsoParser.isCancelTask(_:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = USOParse.userParse.getter();
  v9 = MEMORY[0x1E129C0F0](v8);
  (*(v1 + 8))(v3, v0);
  if (*(v9 + 16))
  {
    (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v10 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t LinkUsoParser.extractParseInformation(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized LinkUsoParser.getSystemProtocol(usoTask:)(a1);
  v6 = specialized LinkUsoParser.extractIdentifiers(task:)(v5);
  v8 = specialized LinkUsoParser.getEntityTypes(usoTask:identifiers:)(v7, a1, v6);

  v10 = specialized LinkUsoParser.extractMentionedEntityTypes(usoTask:)(a1, v9);
  v12 = specialized LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)(v11);
  result = specialized LinkUsoParser.extractNoReferenceVerb(task:)(a1);
  *a2 = v4;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = result & 1;
  return result;
}

uint64_t closure #1 in LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)(uint64_t a1)
{
  v1 = UsoIdentifier.appBundleId.getter();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v8 = UsoIdentifier.namespace.getter();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10)
  {
    if (v8 == v11 && v10 == v12)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_18:
  v14 = UsoIdentifier.appBundleId.getter();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = 0;
    if ((v19 & 1) == 0)
    {
      return (v7 | v20) & 1;
    }
  }

  v21 = UsoIdentifier.namespace.getter();
  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v23)
  {
    if (v21 == v24 && v23 == v25)
    {
      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v20 = 0;
  }

  return (v7 | v20) & 1;
}

uint64_t UsoIdentifier.appBundleIdAsFullyQualifiedBundleId.getter(uint64_t (*a1)(uint64_t))
{
  if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
  {
    swift_once();
  }

  rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
  v3 = (a1)();
  if (rawValue[2])
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    v7 = v6;

    if (v7)
    {
      v9 = *(rawValue[7] + 16 * v5);

      return v9;
    }
  }

  else
  {
  }

  return a1(v8);
}

uint64_t one-time initialization function for verbMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCctGMd, &_ss23_ContiguousArrayStorageCySS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCctGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA708D0;
  v1 = objc_opt_self();
  v2 = [v1 changeBinarySettingSystemProtocol];
  v3 = swift_allocObject();
  strcpy((v3 + 16), "common_Setting");
  *(v3 + 31) = -18;
  *(v3 + 32) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v4 + 24) = v3;
  *(inited + 32) = 0x656C6261736964;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?);
  *(inited + 56) = v4;
  v5 = [v1 changeBinarySettingSystemProtocol];
  v6 = swift_allocObject();
  strcpy((v6 + 16), "common_Setting");
  *(v6 + 31) = -18;
  *(v6 + 32) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v7 + 24) = v6;
  *(inited + 64) = 0x656C62616E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 88) = v7;
  v8 = [v1 changeBinarySettingSystemProtocol];
  v9 = swift_allocObject();
  strcpy((v9 + 16), "common_Setting");
  *(v9 + 31) = -18;
  *(v9 + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v10 + 24) = v9;
  *(inited + 96) = 0x656C67676F74;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 120) = v10;
  *(inited + 128) = 0x7473756A6461;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = specialized thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?);
  *(inited + 152) = 0;
  v11 = [v1 closeEntityProtocol];
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000010;
  v12[3] = 0x80000001DCA847C0;
  v12[4] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v13 + 24) = v12;
  *(inited + 160) = 0x65736F6C63;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 184) = v13;
  v14 = [v1 copyEntityProtocol];
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000010;
  v15[3] = 0x80000001DCA847C0;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v16 + 24) = v15;
  *(inited + 192) = 2037411683;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 208) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 216) = v16;
  v17 = [v1 createEntitySystemProtocol];
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000010;
  v18[3] = 0x80000001DCA847C0;
  v18[4] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v19 + 24) = v18;
  *(inited + 224) = 0x657461657263;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 248) = v19;
  v20 = [v1 cutSystemProtocol];
  v21 = swift_allocObject();
  v21[2] = 0xD000000000000010;
  v21[3] = 0x80000001DCA847C0;
  v21[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v22 + 24) = v21;
  *(inited + 256) = 7632227;
  *(inited + 264) = 0xE300000000000000;
  *(inited + 272) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 280) = v22;
  v23 = [v1 deleteEntitySystemProtocol];
  v24 = swift_allocObject();
  v24[2] = 0xD000000000000010;
  v24[3] = 0x80000001DCA847C0;
  v24[4] = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v25 + 24) = v24;
  *(inited + 288) = 0x6574656C6564;
  *(inited + 296) = 0xE600000000000000;
  *(inited + 304) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 312) = v25;
  v26 = [v1 enterMarkupProtocol];
  v27 = swift_allocObject();
  v27[2] = 0xD000000000000010;
  v27[3] = 0x80000001DCA847C0;
  v27[4] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v28 + 24) = v27;
  *(inited + 320) = 0x72614D7265746E65;
  *(inited + 328) = 0xEB0000000070756BLL;
  *(inited + 336) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 344) = v28;
  v29 = [v1 exitMarkupProtocol];
  v30 = swift_allocObject();
  v30[2] = 0xD000000000000010;
  v30[3] = 0x80000001DCA847C0;
  v30[4] = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v31 + 24) = v30;
  *(inited + 352) = 0x6B72614D74697865;
  *(inited + 360) = 0xEA00000000007075;
  *(inited + 368) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 376) = v31;
  v32 = [v1 favoriteEntityProtocol];
  v33 = swift_allocObject();
  v33[2] = 0xD000000000000010;
  v33[3] = 0x80000001DCA847C0;
  v33[4] = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v34 + 24) = v33;
  *(inited + 384) = 1701538156;
  *(inited + 392) = 0xE400000000000000;
  *(inited + 400) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 408) = v34;
  v35 = [v1 openEntitySystemProtocol];
  v36 = swift_allocObject();
  v36[2] = 0xD000000000000010;
  v36[3] = 0x80000001DCA847C0;
  v36[4] = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v37 + 24) = v36;
  *(inited + 416) = 1852141679;
  *(inited + 424) = 0xE400000000000000;
  *(inited + 432) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 440) = v37;
  v38 = [v1 pasteSystemProtocol];
  v39 = swift_allocObject();
  v39[2] = 0xD000000000000010;
  v39[3] = 0x80000001DCA847C0;
  v39[4] = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v40 + 24) = v39;
  *(inited + 448) = 0x6574736170;
  *(inited + 456) = 0xE500000000000000;
  *(inited + 464) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 472) = v40;
  v41 = [v1 previewEntityProtocol];
  v42 = swift_allocObject();
  v42[2] = 0xD000000000000010;
  v42[3] = 0x80000001DCA847C0;
  v42[4] = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v43 + 24) = v42;
  *(inited + 480) = 0x77656976657270;
  *(inited + 488) = 0xE700000000000000;
  *(inited + 496) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 504) = v43;
  v44 = [v1 navigateSequentiallyProtocol];
  v45 = swift_allocObject();
  v45[2] = 0xD000000000000010;
  v45[3] = 0x80000001DCA847C0;
  v45[4] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v46 + 24) = v45;
  strcpy((inited + 512), "skipBackward");
  *(inited + 525) = 0;
  *(inited + 526) = -5120;
  *(inited + 528) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 536) = v46;
  v47 = [v1 navigateSequentiallyProtocol];
  v48 = swift_allocObject();
  v48[2] = 0xD000000000000010;
  v48[3] = 0x80000001DCA847C0;
  v48[4] = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v49 + 24) = v48;
  *(inited + 544) = 0x77726F4670696B73;
  *(inited + 552) = 0xEB00000000647261;
  *(inited + 560) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 568) = v49;
  v50 = [v1 searchSystemProtocol];
  v51 = swift_allocObject();
  v51[2] = 0xD000000000000010;
  v51[3] = 0x80000001DCA847C0;
  v51[4] = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v52 + 24) = v51;
  *(inited + 576) = 0x736972616D6D7573;
  *(inited + 584) = 0xE900000000000065;
  *(inited + 592) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 600) = v52;
  v53 = [v1 favoriteEntityProtocol];
  v54 = swift_allocObject();
  v54[2] = 0xD000000000000010;
  v54[3] = 0x80000001DCA847C0;
  v54[4] = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v55 + 24) = v54;
  *(inited + 608) = 0x656B696C6E75;
  *(inited + 616) = 0xE600000000000000;
  *(inited + 624) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 632) = v55;
  v56 = [v1 undoSystemProtocol];
  v57 = swift_allocObject();
  v57[2] = 0xD000000000000010;
  v57[3] = 0x80000001DCA84B20;
  v57[4] = v56;
  v58 = swift_allocObject();
  *(v58 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v58 + 24) = v57;
  *(inited + 640) = 1868852853;
  *(inited + 648) = 0xE400000000000000;
  *(inited + 656) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 664) = v58;
  v59 = [v1 undoSystemProtocol];
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000010;
  v60[3] = 0x80000001DCA84B20;
  v60[4] = v59;
  v61 = swift_allocObject();
  *(v61 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v61 + 24) = v60;
  *(inited + 672) = 1868850546;
  *(inited + 680) = 0xE400000000000000;
  *(inited + 688) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 696) = v61;
  v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCcTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static LinkUsoParser.verbMap = v62;
  return result;
}

void *(*static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)(uint64_t a1, uint64_t a2, void *a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  v7 = a3;
  return partial apply for closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:);
}

id specialized thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)@<X0>(uint64_t *a2@<X8>, double d0_0@<D0>)
{
  result = specialized static LinkUsoParser.adjustmentTaskProtocolExtractor(usoTask:)(d0_0);
  *a2 = result;
  return result;
}

uint64_t *LinkUsoParser.verbMap.unsafeMutableAddressor()
{
  if (one-time initialization token for verbMap != -1)
  {
    swift_once();
  }

  return &static LinkUsoParser.verbMap;
}

double static LinkUsoParser.verbMap.getter()
{
  if (one-time initialization token for verbMap != -1)
  {
    swift_once();
  }

  return result;
}

void *closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = UsoTask.baseEntityAsString.getter();
  v9 = v8;
  if (v7 == a2 && v8 == a3 || (v10 = v7, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v10 == 0x6E456F4E5F6F7375 && v9 == 0xEC00000079746974)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = a4;
  return a4;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      specialized Set._Variant.insert(_:)(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say12SiriOntology13UsoIdentifierVGTt1g504_s14d16KitRuntime13Linkf82ParserV14getEntityTypes7usoTask11identifiersSDySSShySSGG0A8Ontology0eK0C_SayAI0E10G59VGtFSSAMcfu_32d5beb8035f55a7a5a7ad951410eb9d87AMSSTf3nnpk_nTf1nc_nTf4g_nTm(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1E69E7CC8];
  v58 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v4 + 16);
  v10 = v4 + 16;
  v49 = *(v10 + 64);
  v12 = *(v10 + 56);
  v52 = (v49 + 32) & ~v49;
  v53 = v11;
  v13 = a1 + v52;
  v56 = (v10 + 16);
  v48 = xmmword_1DCA66060;
  v50 = v3;
  v51 = v10;
  v57 = &v47 - v7;
  v55 = v12;
  v11(&v47 - v7, a1 + v52, v3);
  while (1)
  {
    if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
    {
      swift_once();
    }

    rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
    v17 = UsoIdentifier.appBundleId.getter();
    if (rawValue[2])
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = (rawValue[7] + 16 * v19);
        v24 = *v22;
        v23 = v22[1];

        goto LABEL_13;
      }
    }

    else
    {
    }

    v24 = UsoIdentifier.appBundleId.getter();
    v23 = v25;
LABEL_13:
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
    v28 = v8[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v8[3] < v30)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1);
      v8 = v58;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    if (v31)
    {

      v34 = v8[7];
      v35 = *v56;
      (*v56)(v54, v57, v3);
      v36 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v36[2] = v39 + 1;
      v14 = v55;
      v15 = v36 + v52 + v39 * v55;
      v3 = v50;
      v35(v15, v54, v50);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
      v40 = v52;
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      (*v56)((v41 + v40), v57, v3);
      v8[(v27 >> 6) + 8] |= 1 << v27;
      v42 = (v8[6] + 16 * v27);
      *v42 = v24;
      v42[1] = v23;
      *(v8[7] + 8 * v27) = v41;
      v43 = v8[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_26;
      }

      v8[2] = v45;
      v14 = v55;
    }

    v13 += v14;
    if (!--v9)
    {
      return v8;
    }

    v53(v57, v13, v3);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized LinkUsoParser.getTask(_:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = USOParse.userParse.getter();
  v12 = MEMORY[0x1E129C0F0](v11);
  (*(v1 + 8))(v3, v0);
  if (!*(v12 + 16))
  {

    return 0;
  }

  (*(v5 + 16))(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  (*(v5 + 32))(v10, v7, v4);
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v15 = result;
    v16 = __CocoaSet.count.getter();
    result = v15;
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_11:

    v14 = 0;
    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E12A1FE0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(result + 32);
  }

LABEL_12:
  (*(v5 + 8))(v10, v4);
  return v14;
}

uint64_t specialized LinkUsoParser.getSystemProtocol(usoTask:)(void *a1)
{
  v2 = UsoTask.verbString.getter();
  v4 = v3;
  if (one-time initialization token for verbMap != -1)
  {
    swift_once();
  }

  v5 = static LinkUsoParser.verbMap;
  if (*(static LinkUsoParser.verbMap + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 16 * v6), v18 = a1, , v8(&v17, &v18), , v17))
  {
    v9 = v17;

    return v9;
  }

  else
  {
    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, kLogger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v18);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1DC659000, v12, v13, "[LinkParseExpansion] Could not find systemProtocol for verb %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t specialized LinkUsoParser.extractIdentifiers(task:)(double a1)
{
  v1 = UsoTask.arguments.getter();
  if (*(v1 + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
    if (v3)
    {
      v4 = *(*(v1 + 56) + 8 * v2);

      if (v4 >> 62)
      {
        goto LABEL_147;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }
  }

  while (2)
  {

    v6 = 0;
LABEL_10:
    v65[5] = v6;
    v7 = UsoTask.arguments.getter();
    if (!*(v7 + 16))
    {
      goto LABEL_18;
    }

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x746567726174, 0xE600000000000000);
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = *(*(v7 + 56) + 8 * v8);

    if (v10 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_14;
      }

LABEL_18:

      v4 = 0;
      goto LABEL_19;
    }

    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_14:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E12A1FE0](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_157;
      }

      v4 = *(v10 + 32);
    }

LABEL_19:
    v11 = 0;
    v65[6] = v4;
    v12 = MEMORY[0x1E69E7CC0];
    v65[0] = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    while (v11 != 2)
    {
      if (v65[v11++ + 5])
      {

        MEMORY[0x1E12A1680](v15);
        if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v4 = v65;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v65[0];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8UsoValueCSgMd, &_s12SiriOntology8UsoValueCSgMR);
    swift_arrayDestroy();
    v65[0] = v12;
    if (v13 >> 62)
    {
LABEL_144:
      v16 = __CocoaSet.count.getter();
      if (!v16)
      {
LABEL_145:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_145;
      }
    }

    if (v16 >= 1)
    {
      v17 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](v17, v13);
        }

        else
        {
        }

        v18 = dispatch thunk of UsoValue.getUsoIdentifiers()();
        v19 = *(v18 + 16);
        v4 = v65[0];
        v20 = *(v65[0] + 16);
        v21 = v20 + v19;
        if (__OFADD__(v20, v19))
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
          goto LABEL_144;
        }

        v22 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v21 <= *(v4 + 24) >> 1)
        {
          if (*(v22 + 16))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v20 <= v21)
          {
            v28 = v20 + v19;
          }

          else
          {
            v28 = v20;
          }

          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v28, 1, v4);
          if (*(v22 + 16))
          {
LABEL_36:
            v24 = (*(v4 + 24) >> 1) - *(v4 + 16);
            type metadata accessor for UsoIdentifier();
            if (v24 < v19)
            {
              goto LABEL_138;
            }

            swift_arrayInitWithCopy();

            if (v19)
            {
              v25 = *(v4 + 16);
              v26 = __OFADD__(v25, v19);
              v27 = v25 + v19;
              if (v26)
              {
                goto LABEL_139;
              }

              *(v4 + 16) = v27;
            }

            goto LABEL_45;
          }
        }

        if (v19)
        {
          goto LABEL_137;
        }

LABEL_45:
        v65[0] = v4;
        if (!dispatch thunk of UsoValue.getAsEntity()())
        {
          goto LABEL_99;
        }

        v29 = UsoEntity.usoIdentifiers.getter();
        specialized Array.append<A>(contentsOf:)(v29);
        v30 = UsoEntity.attributes.getter();
        if (!*(v30 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v32 & 1) == 0))
        {
LABEL_54:

          v34 = MEMORY[0x1E69E7CC0];
          goto LABEL_55;
        }

        v4 = *(*(v30 + 56) + 8 * v31);

        if (v4 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_54;
          }
        }

        else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }
        }

        v33 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v34 = v33;
LABEL_55:
        specialized Array.append<A>(contentsOf:)(v34);
        v35 = UsoEntity.attributes.getter();
        if (!*(v35 + 16) || (v36 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C40), (v37 & 1) == 0))
        {
LABEL_63:

          v39 = MEMORY[0x1E69E7CC0];
          goto LABEL_64;
        }

        v4 = *(*(v35 + 56) + 8 * v36);

        if (v4 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_63;
          }
        }

        else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }
        }

        v38 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v39 = v38;
LABEL_64:
        specialized Array.append<A>(contentsOf:)(v39);
        v40 = UsoEntity.attributes.getter();
        if (!*(v40 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v42 & 1) == 0))
        {
LABEL_80:

          goto LABEL_81;
        }

        v4 = *(*(v40 + 56) + 8 * v41);

        if (v4 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_80;
          }
        }

        else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_142;
          }
        }

        v43 = dispatch thunk of UsoValue.getAsEntity()();

        if (!v43)
        {
          goto LABEL_81;
        }

        v44 = UsoEntity.usoIdentifiers.getter();
        specialized Array.append<A>(contentsOf:)(v44);
        v45 = UsoEntity.attributes.getter();
        if (!*(v45 + 16) || (v46 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v47 & 1) == 0))
        {
LABEL_102:

          v49 = MEMORY[0x1E69E7CC0];
          goto LABEL_103;
        }

        v4 = *(*(v45 + 56) + 8 * v46);

        if (v4 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_102;
          }
        }

        else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            v6 = MEMORY[0x1E12A1FE0](0, v4);
LABEL_8:

            goto LABEL_10;
          }
        }

        v48 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v49 = v48;
LABEL_103:
        specialized Array.append<A>(contentsOf:)(v49);
        v60 = UsoEntity.attributes.getter();
        if (*(v60 + 16))
        {
          v61 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C40);
          if (v62)
          {
            v4 = *(*(v60 + 56) + 8 * v61);

            if (v4 >> 62)
            {
              if (__CocoaSet.count.getter())
              {
LABEL_107:
                if ((v4 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12A1FE0](0, v4);
                }

                else
                {
                  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_152;
                  }
                }

                v63 = dispatch thunk of UsoValue.getUsoIdentifiers()();

                v64 = v63;
                goto LABEL_112;
              }
            }

            else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_107;
            }
          }
        }

        v64 = MEMORY[0x1E69E7CC0];
LABEL_112:
        specialized Array.append<A>(contentsOf:)(v64);

LABEL_81:
        v50 = UsoEntity.attributes.getter();
        if (*(v50 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C20), (v52 & 1) != 0))
        {
          v4 = *(*(v50 + 56) + 8 * v51);

          if (v4 >> 62)
          {
            if (!__CocoaSet.count.getter())
            {
LABEL_122:

              goto LABEL_100;
            }
          }

          else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_122;
          }

          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E12A1FE0](0, v4);
          }

          else
          {
            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }
          }

          v53 = dispatch thunk of UsoValue.getAsEntity()();

          if (v53)
          {
            v54 = UsoEntity.usoIdentifiers.getter();
            specialized Array.append<A>(contentsOf:)(v54);
            v55 = UsoEntity.attributes.getter();
            if (!*(v55 + 16))
            {
              goto LABEL_113;
            }

            v56 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
            if ((v57 & 1) == 0)
            {
              goto LABEL_113;
            }

            v4 = *(*(v55 + 56) + 8 * v56);

            if (v4 >> 62)
            {
              if (!__CocoaSet.count.getter())
              {
                goto LABEL_113;
              }

LABEL_93:
              if ((v4 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1E12A1FE0](0, v4);
              }

              else
              {
                if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_153;
                }
              }

              v58 = dispatch thunk of UsoValue.getUsoIdentifiers()();

              v59 = v58;
            }

            else
            {
              if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

LABEL_113:

              v59 = MEMORY[0x1E69E7CC0];
            }

            specialized Array.append<A>(contentsOf:)(v59);

            goto LABEL_99;
          }
        }

        else
        {
        }

LABEL_99:

LABEL_100:
        if (v16 == ++v17)
        {

          return v65[0];
        }
      }
    }

    __break(1u);
LABEL_147:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      continue;
    }

    break;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_154;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_157:
  __break(1u);
  return result;
}

void *specialized LinkUsoParser.getEntityTypes(usoTask:identifiers:)(double a1, uint64_t a2, uint64_t a3)
{
  v83 = type metadata accessor for UsoIdentifier();
  v73 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v11 == 0xEE00676E69747465)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v12;
    v18 = *(v73 + 16);
    v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v76 = v73 + 16;
    v19 = a3 + v75;
    v80 = *(v73 + 72);
    v81 = v18;
    v78 = (v73 + 8);
    v79 = (v73 + 32);
    v77 = v5;
    v18(v10, v19, v83);
    while (1)
    {

      v21 = UsoIdentifier.namespace.getter();
      if (!v22)
      {
        break;
      }

      if (v21 == v17 && v22 == v14)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v24 = v17;
      v25 = *v79;
      (*v79)(v5, v10, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
        v16 = v84;
      }

      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v16 = v84;
      }

      *(v16 + 16) = v28 + 1;
      v20 = v80;
      v29 = v16 + v75 + v28 * v80;
      v5 = v77;
      v25(v29, v77, v83);
      v17 = v24;
LABEL_9:
      v19 += v20;
      if (!--v15)
      {
        goto LABEL_21;
      }

      v81(v10, v19, v83);
    }

LABEL_8:
    (*v78)(v10, v83);
    v20 = v80;
    goto LABEL_9;
  }

LABEL_21:

  v31 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say12SiriOntology13UsoIdentifierVGTt1g504_s14d16KitRuntime13Linkf82ParserV14getEntityTypes7usoTask11identifiersSDySSShySSGG0A8Ontology0eK0C_SayAI0E10G59VGtFSSAMcfu_32d5beb8035f55a7a5a7ad951410eb9d87AMSSTf3nnpk_nTf1nc_nTf4g_nTm(v16, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v33 = result;
  v34 = 0;
  v35 = v31[8];
  v68 = v31 + 8;
  v36 = 1 << *(v31 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v39 = (v36 + 63) >> 6;
  v80 = (v73 + 8);
  v81 = (v73 + 16);
  v71 = v31;
  v72 = result + 8;
  v69 = v39;
  v70 = result;
  if ((v37 & v35) != 0)
  {
    while (1)
    {
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_30:
      v43 = v40 | (v34 << 6);
      v44 = v31[7];
      v45 = (v31[6] + 16 * v43);
      v46 = v45[1];
      v79 = *v45;
      v47 = *(v44 + 8 * v43);
      v48 = *(v47 + 16);
      if (v48)
      {
        v76 = v43;
        v77 = v38;
        v78 = v34;
        v84 = MEMORY[0x1E69E7CC0];
        v75 = v46;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
        v49 = v84;
        v50 = *(v73 + 80);
        v74 = v47;
        v51 = v47 + ((v50 + 32) & ~v50);
        v52 = *(v73 + 72);
        v53 = *(v73 + 16);
        do
        {
          v55 = v82;
          v54 = v83;
          v53(v82, v51, v83);
          v56 = UsoIdentifier.value.getter();
          v58 = v57;
          (*v80)(v55, v54);
          v84 = v49;
          v60 = *(v49 + 16);
          v59 = *(v49 + 24);
          if (v60 >= v59 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
            v49 = v84;
          }

          *(v49 + 16) = v60 + 1;
          v61 = v49 + 16 * v60;
          *(v61 + 32) = v56;
          *(v61 + 40) = v58;
          v51 += v52;
          --v48;
        }

        while (v48);
        v33 = v70;
        v31 = v71;
        v38 = v77;
        v34 = v78;
        v39 = v69;
        v62 = v75;
        v43 = v76;
      }

      else
      {
        v62 = v46;

        v49 = MEMORY[0x1E69E7CC0];
      }

      v63 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v49);

      *(v72 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v64 = (v33[6] + 16 * v43);
      *v64 = v79;
      v64[1] = v62;
      *(v33[7] + 8 * v43) = v63;
      v65 = v33[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        break;
      }

      v33[2] = v67;
      if (!v38)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v34 >= v39)
      {

        return v33;
      }

      v42 = v68[v34];
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v38 = (v42 - 1) & v42;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;

    (a2)(&v42, v45);

    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = *v46;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v41 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v41 & 1);
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v46;
    if (v29)
    {
      v12 = *(v32[7] + 8 * v25);

      v13 = specialized Set.union<A>(_:)(v22, v12);

      *(v32[7] + 8 * v25) = v13;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v20;
      v33[1] = v21;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}