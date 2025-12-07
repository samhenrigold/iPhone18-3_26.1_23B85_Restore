unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver()
{
  result = lazy protocol witness table cache variable for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver;
  if (!lazy protocol witness table cache variable for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for _EXQuery();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865F3E60](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall _EXActiveQuery.update()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v194 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v202 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v183 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v183 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v183 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v183 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v183 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v200 = &v183 - v20;
  UUID.init()();
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);
  v23 = *&v22[OBJC_IVAR____EXQuery_resultType];
  v201 = v2;
  if (v23)
  {
    v192 = _EXDiscoveryController.identities(matching:)(v22);
    v24 = *&v192[OBJC_IVAR____EXQueryResult_availablility];
    if (!v24)
    {
      goto LABEL_104;
    }

    v25 = v22;
    type metadata accessor for _EXExtensionAvailability();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = v24;
    if (![v21 isKindOfClass_])
    {
      goto LABEL_106;
    }

    v27 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
    *&v27[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = MEMORY[0x1E69E7CD0];
    *&v27[OBJC_IVAR____EXQueryResult_identities] = 0;
    *&v27[OBJC_IVAR____EXQueryResult_availablility] = v24;
    v28 = type metadata accessor for _EXQueryResult();
    v212.receiver = v27;
    v212.super_class = v28;
    v199 = objc_msgSendSuper2(&v212, sel_init);
    swift_beginAccess();

    C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v29);

    v193 = C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n;
    v32 = *(C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n + 16);
    v33 = v202;
    if (v32)
    {
      v34 = (v193 + 32);
      v197 = (v194 + 1);
      v198 = (v194 + 2);
      *&v31 = 136446466;
      v195 = v31;
      v196 = v25;
      do
      {
        v36 = one-time initialization token for discovery;
        v203 = *v34;
        swift_unknownObjectRetain();
        if (v36 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.discovery);
        (*v198)(v33, v200, v2);
        swift_unknownObjectRetain();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v211[0] = v41;
          *v40 = v195;
          lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = v43;
          (*v197)(v202, v201);
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v211);

          *(v40 + 4) = v45;
          *(v40 + 12) = 2082;
          v213 = v203;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation22_EXActiveQueryObserver_pMd, &_s19ExtensionFoundation22_EXActiveQueryObserver_pMR);
          v46 = String.init<A>(describing:)();
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v211);

          *(v40 + 14) = v48;
          v2 = v201;
          _os_log_impl(&dword_1847D1000, v38, v39, "[%{public}s] Sending update observer update to %{public}s", v40, 0x16u);
          swift_arrayDestroy();
          v49 = v41;
          v25 = v196;
          MEMORY[0x1865F56C0](v49, -1, -1);
          v50 = v40;
          v33 = v202;
          MEMORY[0x1865F56C0](v50, -1, -1);
        }

        else
        {

          (*v197)(v33, v2);
        }

        ObjectType = swift_getObjectType();
        (*(*(&v203 + 1) + 24))(v25, v199, ObjectType);
        swift_unknownObjectRelease();
        ++v34;
        --v32;
      }

      while (v32);
    }

    (v194[1])(v200, v2);
    return;
  }

  v202 = v19;
  v184 = v7;
  type metadata accessor for _EXQuery();
  if (![v22 isKindOfClass_])
  {
    goto LABEL_107;
  }

  *&v195 = v16;
  v197 = v13;
  v193 = v10;
  v51 = v22;
  v21 = _EXDiscoveryController.identities(matching:)(v51);
  v198 = v51;

  v52 = *(v21 + OBJC_IVAR____EXQueryResult_identities);

  if (!v52)
  {
    goto LABEL_105;
  }

  swift_beginAccess();
  v53 = *(v1 + 40);
  v54 = MEMORY[0x1E69E7CD0];
  *(v1 + 40) = MEMORY[0x1E69E7CD0];
  v55 = *(v53 + 2);
  v199 = v53;
  v56 = v202;
  v186 = v52;
  *&v187 = v1;
  if (v55)
  {
    v57 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
    *&v57[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = v54;
    *&v57[OBJC_IVAR____EXQueryResult_identities] = v52;
    *&v57[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v58 = type metadata accessor for _EXQueryResult();
    v204.receiver = v57;
    v204.super_class = v58;
    v21 = sel_init;

    v59 = objc_msgSendSuper2(&v204, sel_init);
    v60 = v53 + 56;
    v61 = 1 << v53[32];
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v53 + 7);
    v64 = (v61 + 63) >> 6;
    v191 = (v194 + 2);
    v192 = v59;
    v190 = (v194 + 1);

    v65 = 0;
    *&v66 = 136446466;
    v185 = v66;
    while (v63)
    {
LABEL_26:
      v69 = one-time initialization token for discovery;
      v203 = *(*(v53 + 6) + ((v65 << 10) | (16 * __clz(__rbit64(v63)))));
      v70 = v203;
      swift_unknownObjectRetain();
      if (v69 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Logger.discovery);
      (*v191)(v56, v200, v2);
      swift_unknownObjectRetain();
      v72 = v2;
      v73 = Logger.logObject.getter();
      v74 = v56;
      v75 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      LODWORD(v196) = v75;
      if (os_log_type_enabled(v73, v75))
      {
        v76 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *&v213 = v189;
        *v76 = v185;
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v188 = v73;
        v77 = v72;
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        (*v190)(v202, v77);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v213);

        *(v76 + 4) = v81;
        *(v76 + 12) = 2082;
        v206 = v203;
        swift_unknownObjectRetain();
        v82 = String.init<A>(describing:)();
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v213);

        *(v76 + 14) = v84;
        v53 = v199;
        v85 = v188;
        _os_log_impl(&dword_1847D1000, v188, v196, "[%{public}s] Sending initial observer update to %{public}s", v76, 0x16u);
        v86 = v189;
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v86, -1, -1);
        v87 = v76;
        v56 = v202;
        MEMORY[0x1865F56C0](v87, -1, -1);

        v2 = v201;
      }

      else
      {

        (*v190)(v74, v72);
        v2 = v72;
        v56 = v74;
        v53 = v199;
      }

      v63 &= v63 - 1;
      v67 = swift_getObjectType();
      v21 = v70;
      (*(*(&v203 + 1) + 24))(v198, v192, v67);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v68 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_102;
      }

      if (v68 >= v64)
      {
        break;
      }

      v63 = *&v60[8 * v68];
      ++v65;
      if (v63)
      {
        v65 = v68;
        goto LABEL_26;
      }
    }

    v52 = v186;
    v1 = v187;
    v54 = MEMORY[0x1E69E7CD0];
  }

  v88 = *(v1 + 48);
  v210 = v54;
  *&v203 = v88;
  if ((v52 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, 255, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v89 = *(&v213 + 1);
    v52 = v213;
    v21 = v214;
    v90 = v215;
    v91 = v216;
  }

  else
  {
    v92 = -1 << *(v52 + 32);
    v89 = v52 + 56;
    v21 = ~v92;
    v93 = -v92;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    else
    {
      v94 = -1;
    }

    v91 = v94 & *(v52 + 56);

    v90 = 0;
  }

  v196 = v21;
  v95 = (v21 + 64) >> 6;
  v202 = (v194 + 1);
  if (v52 < 0)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v96 = v90;
    v97 = v91;
    v98 = v90;
    if (!v91)
    {
      break;
    }

LABEL_42:
    v99 = (v97 - 1) & v97;
    v100 = *(*(v52 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v97)))));
    if (!v100)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v102 = [v100 uniqueIdentifier];
      v103 = v197;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = &v210;
      v104 = v195;
      specialized Set._Variant.insert(_:)(v195, v103);

      (*v202)(v104, v201);
      v90 = v98;
      v91 = v99;
      if ((v52 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_44:
      v101 = __CocoaSet.Iterator.next()();
      if (v101)
      {
        v208 = v101;
        type metadata accessor for _EXExtensionIdentity();
        swift_dynamicCast();
        v100 = v206;
        v98 = v90;
        v99 = v91;
        if (v206)
        {
          continue;
        }
      }

      goto LABEL_48;
    }
  }

  while (1)
  {
    v98 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_101;
    }

    if (v98 >= v95)
    {
      break;
    }

    v97 = *(v89 + 8 * v98);
    ++v96;
    if (v97)
    {
      goto LABEL_42;
    }
  }

LABEL_48:
  outlined consume of [String : Any].Iterator._Variant(v52);
  v105 = v210;
  v106 = v203;
  if (*(v203 + 16) <= *(v210 + 16) >> 3)
  {
    *&v206 = v210;

    specialized Set._subtract<A>(_:)(v106);
    v107 = v206;
  }

  else
  {

    v107 = specialized _NativeSet.subtracting<A>(_:)(v106, v105);
  }

  v108 = v201;
  v109 = v199;
  v110 = v187;
  if (*(v105 + 16) <= *(v106 + 16) >> 3)
  {
    *&v206 = v106;
    specialized Set._subtract<A>(_:)(v105);
    v21 = v206;
  }

  else
  {
    v21 = specialized _NativeSet.subtracting<A>(_:)(v105, v106);
  }

  *(v110 + 48) = v105;

  v111 = specialized Set._Variant.filter(_:)(v186, v107);

  if ((v111 & 0xC000000000000001) == 0)
  {
    if (*(v111 + 16) >= 1)
    {
      goto LABEL_56;
    }

LABEL_58:
    v112 = *(v21 + 16);

    if (!v112)
    {

      swift_beginAccess();
      v168 = *(v110 + 32);
      v169 = v168 + 56;
      v170 = 1 << *(v168 + 32);
      v171 = -1;
      if (v170 < 64)
      {
        v171 = ~(-1 << v170);
      }

      v172 = v171 & *(v168 + 56);
      v173 = (v170 + 63) >> 6;
      *&v203 = v168;

      v174 = 0;
      if (!v172)
      {
        goto LABEL_93;
      }

      while (1)
      {
        for (i = v174; ; v174 = i)
        {
          v176 = __clz(__rbit64(v172));
          v172 &= v172 - 1;
          v177 = (*(v203 + 48) + ((i << 10) | (16 * v176)));
          v21 = *v177;
          v178 = v177[1];
          v179 = swift_getObjectType();
          v180 = *(v178 + 16);
          swift_unknownObjectRetain();
          v180(v198, v179, v178);
          swift_unknownObjectRelease();
          v108 = v201;
          if (v172)
          {
            break;
          }

          do
          {
LABEL_93:
            i = v174 + 1;
            if (__OFADD__(v174, 1))
            {
              goto LABEL_103;
            }

            if (i >= v173)
            {
              (*v202)(v200, v108);

              return;
            }

            v172 = *(v169 + 8 * i);
            ++v174;
          }

          while (!v172);
        }
      }
    }

    goto LABEL_59;
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_58;
  }

LABEL_56:

LABEL_59:
  v113 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
  *&v113[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = v21;
  *&v113[OBJC_IVAR____EXQueryResult_identities] = v111;
  *&v113[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v114 = type metadata accessor for _EXQueryResult();
  v209.receiver = v113;
  v209.super_class = v114;
  *&v195 = objc_msgSendSuper2(&v209, sel_init);
  swift_beginAccess();
  v115 = *(v110 + 32);
  v116 = (v115 + 56);
  v117 = 1 << *(v115 + 32);
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  else
  {
    v118 = -1;
  }

  v119 = v118 & *(v115 + 56);
  v120 = (v117 + 63) >> 6;
  v188 = v109 + 7;
  v190 = (v194 + 2);
  v196 = v115;

  v121 = 0;
  *&v122 = 136446466;
  v187 = v122;
  v191 = v120;
  v192 = v116;
  if (!v119)
  {
    goto LABEL_66;
  }

  do
  {
    while (1)
    {
LABEL_70:
      v125 = __clz(__rbit64(v119));
      v119 &= v119 - 1;
      v207 = *(*(v196 + 48) + ((v121 << 10) | (16 * v125)));
      isa = v109[2].isa;
      v203 = v207;
      v197 = *(&v207 + 1);
      if (!isa)
      {
        swift_unknownObjectRetain();
        v137 = v193;
        goto LABEL_77;
      }

      Hasher.init(_seed:)();
      v127 = v203;
      swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v194 = &v183;
      v129 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v131 = &v183 - v130;
      v205 = v203;
      v189 = v127;
      swift_unknownObjectRetain();
      dispatch thunk of Identifiable.id.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of Hashable.hash(into:)();
      v132 = v131;
      v109 = v199;
      (*(v129 + 8))(v132, AssociatedTypeWitness);
      v133 = v188;
      v134 = Hasher._finalize()();
      v135 = -1 << LOBYTE(v109[4].isa);
      v136 = v134 & ~v135;
      v137 = v193;
      if ((*(&v133->isa + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v136))
      {
        break;
      }

LABEL_77:
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v139 = type metadata accessor for Logger();
      __swift_project_value_buffer(v139, static Logger.discovery);
      v140 = v201;
      (*v190)(v137, v200, v201);
      v141 = v203;
      swift_unknownObjectRetain();
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *&v207 = v194;
        *v144 = v187;
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v145 = dispatch thunk of CustomStringConvertible.description.getter();
        v146 = v137;
        v148 = v147;
        (*v202)(v146, v140);
        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v148, &v207);

        *(v144 + 4) = v149;
        *(v144 + 12) = 2082;
        v206 = v203;
        swift_unknownObjectRetain();
        v150 = String.init<A>(describing:)();
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, &v207);

        *(v144 + 14) = v152;
        _os_log_impl(&dword_1847D1000, v142, v143, "[%{public}s] Sending update observer update to %{public}s", v144, 0x16u);
        v153 = v194;
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v153, -1, -1);
        MEMORY[0x1865F56C0](v144, -1, -1);
      }

      else
      {

        (*v202)(v137, v140);
      }

      v120 = v191;
      v116 = v192;
      v123 = swift_getObjectType();
      v21 = v141;
      (*(v197 + 24))(v198, v195, v123);
      swift_unknownObjectRelease();
      v109 = v199;
      if (!v119)
      {
        goto LABEL_66;
      }
    }

    v138 = ~v135;
    lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
    while (1)
    {
      v206 = *(v109[6].isa + v136);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v136 = (v136 + 1) & v138;
      if (((*(&v133->isa + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v136) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    v21 = __swift_project_value_buffer(v154, static Logger.discovery);
    v155 = v184;
    v156 = v201;
    (*v190)(v184, v200, v201);
    swift_unknownObjectRetain();
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = v155;
      v197 = swift_slowAlloc();
      *&v207 = v197;
      *v159 = v187;
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v161 = dispatch thunk of CustomStringConvertible.description.getter();
      v163 = v162;
      (*v202)(v160, v156);
      v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v163, &v207);

      *(v159 + 4) = v164;
      *(v159 + 12) = 2082;
      v206 = v203;
      swift_unknownObjectRetain();
      v165 = String.init<A>(describing:)();
      v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, &v207);

      *(v159 + 14) = v167;
      v109 = v199;
      _os_log_impl(&dword_1847D1000, v157, v158, "[%{public}s] Skipping observer update to %{public}s", v159, 0x16u);
      v21 = v197;
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v21, -1, -1);
      MEMORY[0x1865F56C0](v159, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*v202)(v155, v156);
    }

    v120 = v191;
    v116 = v192;
  }

  while (v119);
LABEL_66:
  while (1)
  {
    v124 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      break;
    }

    if (v124 >= v120)
    {
      (*v202)(v200, v201);

      return;
    }

    v119 = *&v116[8 * v124];
    ++v121;
    if (v119)
    {
      v121 = v124;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_101:
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
  v181 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();

  swift_unexpectedError();
  __break(1u);
LABEL_107:
  v182 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo20_EXExtensionIdentityC_Tt1g5(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 32), v2, v1, v4);
    outlined consume of [String : Any].Iterator._Variant(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  v8 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v11 = 0;
    v19 = -1 << *(v5 + 32);
    v9 = v5 + 56;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v12 = v21 & *(v5 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for _EXExtensionIdentity();
  lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject();
  result = Set.Iterator.init(_cocoa:)();
  v5 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v13 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v10;
  v24 = v8;
  v13 = 0;
  v14 = (v10 + 64) >> 6;
  v8 = 1;
  while (1)
  {
    if (v5 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for _EXExtensionIdentity();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v15 = v11;
    if (!v12)
    {
      break;
    }

    v16 = v11;
LABEL_13:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v5 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v8 == a3)
    {
      v13 = a3;
      goto LABEL_30;
    }

    ++a2;
    v13 = v8;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v11 = v16;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v11 + 1)
  {
    v22 = v11 + 1;
  }

  else
  {
    v22 = v14;
  }

  v11 = v22 - 1;
LABEL_30:
  v10 = v23;
  v8 = v24;
LABEL_32:
  *v8 = v5;
  *(v8 + 8) = v9;
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  *(v8 + 32) = v12;
  return v13;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for _EXExtensionIdentity, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR, type metadata accessor for _EXExtensionIdentity);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for _EXServiceClient.ActiveClientQuery, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMd, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMR, type metadata accessor for _EXServiceClient.ActiveClientQuery);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20_EXExtensionIdentityC_Tt1g5Tm(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          specialized _NativeSet.resize(capacity:)(v28 + 1, a4, a5);
        }

        v29 = v16;
        specialized _NativeSet._unsafeInsertNew(_:)(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

void specialized Set.formUnion<A>(_:)(uint64_t a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[1];
    v3 = v15[2];
    v4 = v15[3];
    v5 = v15[4];
    v6 = v15[5];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
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

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of [String : Any].Iterator._Variant(v2);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for _EXExtensionIdentity();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo18RBSDomainAttributeC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t QueryController.resultDidUpdate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____EXQueryResult_identities))
  {
    v6 = *(a1 + OBJC_IVAR____EXQueryResult_identities);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  v7 = *(a1 + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs);
  v8 = one-time initialization token for discovery;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.discovery);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v86 = v1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    type metadata accessor for _EXExtensionIdentity();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
    v15 = Set.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1847D1000, v10, v11, "Query results update: To add: '%{public}s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865F56C0](v14, -1, -1);
    MEMORY[0x1865F56C0](v13, -1, -1);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v22 = Set.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1847D1000, v18, v19, "Query results update: To remove UUIDs: '%{public}s'", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x1865F56C0](v21, -1, -1);
    MEMORY[0x1865F56C0](v20, -1, -1);
  }

  v25 = v86;
  v26 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  v27 = *&v86[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock];

  os_unfair_lock_lock(v27 + 4);

  v28 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions;
  ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n = MEMORY[0x1E69E7CC0];
  if (*&v25[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions])
  {

    v30 = v25;

    ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20_EXExtensionIdentityCG_AGs5NeverOTg5088_s19ExtensionFoundation15QueryControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n(v31, v7);
  }

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n);

  specialized Set.union<A>(_:)(v6, v32, v33);

  v35 = specialized Set._Variant.filter(_:)(v34, v7);

  if ((v6 & 0xC000000000000001) != 0)
  {
    v36 = __CocoaSet.count.getter();
  }

  else
  {
    v36 = *(v6 + 16);
  }

  v37 = v86;

  if (v36 >= 1 || *(v7 + 16) || !*&v37[v28])
  {
    *&v37[v28] = v35;

    v38 = *&v37[v26];

    os_unfair_lock_unlock(v38 + 4);

    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v42 = os_log_type_enabled(v40, v41);
    v86 = v35;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136446210;
      v45 = type metadata accessor for _EXQuery();

      v47 = MEMORY[0x1865F38E0](v46, v45);
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, aBlock);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_1847D1000, v40, v41, "Query results did change: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x1865F56C0](v44, -1, -1);
      MEMORY[0x1865F56C0](v43, -1, -1);
    }

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136446466;
      type metadata accessor for _EXExtensionIdentity();
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
      v55 = Set.description.getter();
      v57 = v56;

      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, aBlock);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2082;

      v59 = Set.description.getter();
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, aBlock);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_1847D1000, v51, v52, "Update original results:\n%{public}s\nupdated results:\n%{public}s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v54, -1, -1);
      MEMORY[0x1865F56C0](v53, -1, -1);
    }

    else
    {
    }

    v63 = &v39[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
    v64 = *&v39[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
    if (v64 == 1)
    {
    }

    else
    {
      v67 = *(v63 + 2);
      v66 = *(v63 + 3);
      v68 = *(v63 + 1);
      v69 = *&v39[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_notificationQueue];
      v70 = swift_allocObject();
      v70[2] = v64;
      v70[3] = v68;
      v70[4] = v67;
      v70[5] = v66;
      v78 = v66;
      aBlock[4] = partial apply for closure #3 in QueryController.resultDidUpdate(_:);
      aBlock[5] = v70;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_38;
      v79 = _Block_copy(aBlock);
      outlined copy of QueryController.Callbacks?(v64, v68, v67, v66);
      v71 = v69;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v64, v68);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v67, v66);
      v72 = v80;
      static DispatchQoS.unspecified.getter();
      v87 = MEMORY[0x1E69E7CC0];
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v73 = v82;
      v74 = v85;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v75 = v79;
      MEMORY[0x1865F3C00](0, v72, v73, v79);
      _Block_release(v75);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v64, v68);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v67, v78);
      (*(v84 + 8))(v73, v74);
      (*(v81 + 8))(v72, v83);
    }
  }

  else
  {
    *&v37[v28] = v35;

    v76 = *&v37[v26];

    os_unfair_lock_unlock(v76 + 4);
  }
}

uint64_t sub_1847EB650()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      specialized Set._Variant.remove(_:)(v9, v5);
      (*(v7 + 8))(v9, v6);
      outlined destroy of UUID?(v5);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = *MEMORY[0x1E69E9840];
  v55 = type metadata accessor for UUID();
  v6 = *(v55 - 8);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v38 - v9;
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v39 = v12;
    v40 = v3;
    v38 = &v38;
    MEMORY[0x1EEE9AC00](v14);
    v42 = &v38 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v13);
    v15 = 0;
    v16 = *(a1 + 56);
    v43 = a1 + 56;
    v44 = 0;
    v17 = 1 << *(a1 + 32);
    v18 = v17 < 64 ? ~(-1 << v17) : -1;
    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v51 = v6 + 16;
    v41 = v6;
    v53 = a2 + 56;
    v54 = (v6 + 8);
    v46 = v20;
    v47 = a1;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v49 = (v19 - 1) & v19;
LABEL_14:
      v24 = v21 | (v15 << 6);
      v25 = *(a1 + 48);
      v45 = v24;
      v48 = *(v25 + 8 * v24);
      v26 = [v48 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(a2 + 16) && (lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(a2 + 32), v13 = v27 & ~v28, ((*(v53 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v50 = ~v28;
        v29 = *(v41 + 9);
        v6 = *(v41 + 2);
        while (1)
        {
          v3 = a2;
          v12 = v52;
          v30 = v55;
          (v6)(v52, *(a2 + 48) + v29 * v13, v55);
          lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v54;
          (*v54)(v12, v30);
          if (v31)
          {
            break;
          }

          v13 = (v13 + 1) & v50;
          a2 = v3;
          if (((*(v53 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v32(v56, v55);

        *&v42[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        v33 = __OFADD__(v44++, 1);
        a2 = v3;
        v20 = v46;
        a1 = v47;
        v19 = v49;
        if (v33)
        {
          __break(1u);
LABEL_23:
          C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n = specialized _NativeSet.extractSubset(using:count:)(v42, v39, v44, a1);

          return C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n;
        }
      }

      else
      {
LABEL_6:
        (*v54)(v56, v55);

        v20 = v46;
        a1 = v47;
        v19 = v49;
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_23;
      }

      v23 = *(v43 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v49 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = a1;
  v37 = swift_slowAlloc();

  C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n052_s19ExtensionFoundation14_EXActiveQueryC6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n(v37, v12, v36, a2);

  MEMORY[0x1865F56C0](v37, -1, -1);

  return C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n;
}

{
  v3 = v2;
  v69 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v65 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v49 - v10;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v50 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v50);

  if (v13 > 0xD)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v49[1] = v3;
    v49[0] = v49;
    MEMORY[0x1EEE9AC00](v15);
    v54 = v49 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v54, v14);
    v58 = 0;
    v17 = 0;
    v18 = *(a1 + 56);
    v53 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = v19 < 64 ? ~(-1 << v19) : -1;
    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v66 = a2 + 56;
    v64 = v7 + 16;
    v68 = (v7 + 8);
    *&v16 = 138543362;
    v52 = v16;
    v3 = v7;
    v56 = a1;
    v57 = v22;
    v55 = v7;
    v67 = a2;
    v51 = v11;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v63 = (v21 - 1) & v21;
LABEL_14:
      v26 = v23 | (v17 << 6);
      v27 = *(a1 + 48);
      v60 = v26;
      v62 = *(v27 + 8 * v26);
      v7 = [v62 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = *(a2 + 16);
      v59 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v28 && (_s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = v11, v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v66 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v61 = v17;
        v32 = v11;
        v33 = ~v30;
        v34 = *(v3 + 72);
        v35 = *(v3 + 16);
        while (1)
        {
          v36 = v65;
          v35(v65, *(v67 + 48) + v34 * v31, v6);
          _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v7 = dispatch thunk of static Equatable.== infix(_:_:)();
          v14 = *v68;
          (*v68)(v36, v6);
          if (v7)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v66 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            a2 = v67;
            v3 = v55;
            a1 = v56;
            v11 = v32;
            v17 = v61;
            v14(v11, v6);
            goto LABEL_20;
          }
        }

        v11 = v32;
        v14(v32, v6);
        if (one-time initialization token for discovery != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        v7 = __swift_project_value_buffer(v38, static Logger.discovery);
        v14 = v62;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();

        v41 = os_log_type_enabled(v39, v40);
        a2 = v67;
        v3 = v55;
        v17 = v61;
        if (v41)
        {
          v7 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v7 = v52;
          *(v7 + 4) = v14;
          *v42 = v14;
          v43 = v42;
          v44 = v14;
          _os_log_impl(&dword_1847D1000, v39, v40, "Query results: removing '%{public}@'", v7, 0xCu);
          outlined destroy of NSObject?(v43);
          v45 = v43;
          v11 = v51;
          MEMORY[0x1865F56C0](v45, -1, -1);
          MEMORY[0x1865F56C0](v7, -1, -1);
        }

        a1 = v56;
        v22 = v57;
        v21 = v63;
      }

      else
      {
        v14 = *v68;
        (*v68)(v11, v6);
LABEL_20:

        *&v54[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v60;
        v22 = v57;
        v37 = __OFADD__(v58++, 1);
        v21 = v63;
        if (v37)
        {
          goto LABEL_31;
        }
      }
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n = specialized _NativeSet.extractSubset(using:count:)(v54, v50, v58, a1);

        return ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n;
      }

      v25 = *(v53 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v63 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v48 = swift_slowAlloc();

  ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n085_s19ExtensionFoundation15QueryControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n(v48, v50, a1, a2);

  MEMORY[0x1865F56C0](v48, -1, -1);

  return ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n;
}

void *closure #1 in _EXQueryController.init(queries:delegate:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    [v3 queryControllerDelegate:swift_unknownObjectWeakLoadStrong() didUpdateController:v2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2, __n128 a3)
{
  v3 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v3 = v16[2];
    v4 = v16[3];
    v5 = v16[4];
    v6 = v16[5];
    v7 = v16[6];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      outlined consume of [String : Any].Iterator._Variant(v3);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v16, v15);

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for _EXExtensionIdentity();
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v6;
        v14 = v7;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t _EXQuery.ValuesQuery.description.getter()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v6 = 0xD00000000000001ALL;
  v7 = 0x80000001848C34D0;
  v5 = *v0;
  outlined init with copy of _EXQuery.ValuesQuery(v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1865F37A0](v1);

  MEMORY[0x1865F37A0](0x6F6674616C702060, 0xED0000203A736D72);
  LODWORD(v4[0]) = *(v0 + 16);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v2);

  return v6;
}

uint64_t outlined copy of QueryController.Callbacks?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(result, a2);

    return outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(a3, a4);
  }

  return result;
}

void _EXQueryResultUpdate.init(currentExtensions:updatedExtensions:)(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  v5 = MEMORY[0x1EEE9AC00](v42);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = v37 - v7;
  v49 = a2;
  v50 = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    a1 = v51;
    v8 = v52;
    v9 = v53;
    v10 = v54;
    v11 = v55;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v37[1] = v9;
  v15 = (v9 + 64) >> 6;
  v16 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v16 = a2;
  }

  v41 = v16;
  v46 = a2;
  v44 = a2 & 0xC000000000000001;
  v45 = a2 + 56;
  v38 = (v4 + 8);
  v43 = a1;
  while (a1 < 0)
  {
    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v47 = v25, type metadata accessor for _EXExtensionIdentity(), swift_dynamicCast(), v24 = v48, v22 = v10, v23 = v11, !v48))
    {
LABEL_31:
      outlined consume of [String : Any].Iterator._Variant(a1);

      type metadata accessor for _EXExtensionIdentity();
      _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity, MEMORY[0x1E69E81B8]);
      isa = Set._bridgeToObjectiveC()().super.isa;

      _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v36 = Set._bridgeToObjectiveC()().super.isa;

      [v37[2] initWithAddedExtensions:isa removedUUIDs:v36];

      return;
    }

LABEL_21:

    if (v44)
    {
      v26 = v24;
      v27 = __CocoaSet.contains(_:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!v46[2] || (type metadata accessor for _EXExtensionIdentity(), v28 = v46, v29 = NSObject._rawHashValue(seed:)(v46[5]), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0))
      {
LABEL_10:
        v17 = [v24 uniqueIdentifier];
        v18 = v40;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = v39;
        specialized Set._Variant.insert(_:)(v39, v18);

        (*v38)(v19, v42);
        goto LABEL_11;
      }

      v32 = ~v30;
      while (1)
      {
        v33 = *(v46[6] + 8 * v31);
        v34 = static NSObject.== infix(_:_:)();

        if (v34)
        {
          break;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_11:
    v10 = v22;
    v11 = v23;
    a1 = v43;
  }

  v20 = v10;
  v21 = v11;
  v22 = v10;
  if (v11)
  {
LABEL_17:
    v23 = (v21 - 1) & v21;
    v24 = *(*(a1 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v15)
    {
      goto LABEL_31;
    }

    v21 = *(v8 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t _EXQueryController.extensionIdentities.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXQueryController_innerController);
  v2 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock);

  os_unfair_lock_lock(v3 + 4);

  if (*(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions))
  {
    v4 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  return v6;
}

id protocol witness for _InnerAppExtensionIdentity.containingBundleRecord.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 containingBundleRecord];

  return v1;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    specialized _NativeSet.resize(capacity:)(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    v26 = v10;
    specialized _NativeSet.copyAndResize(capacity:)(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v15 + 48) + v19 * a2, v12);
      v20 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v12);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of LocalLSDatabaseObserver.Observer(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for UUID();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v65 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      outlined destroy of UUID?(v30);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        outlined destroy of UUID?(v24);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v64, v65, v80, v24, &v89);

  MEMORY[0x1865F56C0](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  outlined consume of [String : Any].Iterator._Variant(v59);
  return a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _EXActiveQuery.ActiveQueryObserver(void *a1, uint64_t *a2)
{
  swift_getObjectType();
  v2 = Identifiable<>.id.getter();
  swift_getObjectType();
  return v2 == Identifiable<>.id.getter();
}

uint64_t specialized Set._Variant.remove(_:)(void *a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = __CocoaSet.contains(_:)();

    if (v13)
    {
      v14 = specialized Set._Variant._migrateToNative(_:removing:)(v11, v12, a3, a4, a5, a5);

      return v14;
    }

    return 0;
  }

  v25 = v5;
  a2(0);
  v16 = NSObject._rawHashValue(seed:)(*(v9 + 40));
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v9 + 48) + 8 * v18);
    v21 = static NSObject.== infix(_:_:)();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(a3, a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  specialized _NativeSet._delete(at:)(v18);
  result = v24;
  *v25 = v26;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  return specialized Set._Variant.remove(_:)(a1, type metadata accessor for _EXExtensionIdentity, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR, type metadata accessor for _EXExtensionIdentity);
}

{
  return specialized Set._Variant.remove(_:)(a1, type metadata accessor for _EXServiceClient.ActiveClientQuery, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMd, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMR, type metadata accessor for _EXServiceClient.ActiveClientQuery);
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

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
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
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
        v11 = *(*(v3 + 48) + 32 * v6 + 24);
        Hasher.init(_seed:)();

        v12 = v11;
        String.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 32 * v2);
          v17 = (v15 + 32 * v6);
          if (v2 != v6 || v16 >= v17 + 2)
          {
            v10 = v17[1];
            *v16 = *v17;
            v16[1] = v10;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
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
      v25 = v3;
      v26 = v4;
      v24 = (v8 + 1) & v7;
      do
      {
        v9 = *(*(v3 + 48) + 16 * v6);
        Hasher.init(_seed:)();
        swift_getObjectType();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v27 = &v24;
        v11 = *(AssociatedTypeWitness - 8);
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        v12 = v2;
        v14 = &v24 - v13;
        v28 = v9;
        swift_unknownObjectRetain();
        dispatch thunk of Identifiable.id.getter();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of Hashable.hash(into:)();
        v15 = v14;
        v2 = v12;
        (*(v11 + 8))(v15, AssociatedTypeWitness);
        v16 = Hasher._finalize()();
        swift_unknownObjectRelease();
        v17 = v16 & v7;
        if (v12 >= v24)
        {
          if (v17 < v24)
          {
            v3 = v25;
            v4 = v26;
            goto LABEL_5;
          }

          v3 = v25;
          if (v12 >= v17)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v3 = v25;
          if (v17 >= v24 || v12 >= v17)
          {
LABEL_12:
            v18 = *(v3 + 48);
            v19 = (v18 + 16 * v12);
            v20 = (v18 + 16 * v6);
            v4 = v26;
            if (v2 != v6 || v19 >= v20 + 1)
            {
              *v19 = *v20;
              v2 = v6;
            }

            goto LABEL_5;
          }
        }

        v4 = v26;
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
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
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v6, v22);
        v12 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        outlined destroy of AnyHashable(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1847EE338()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t specialized static QueryController.execute(queries:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 preferInProcessDiscovery];

  if (v14)
  {
    v20 = v7;
    if (one-time initialization token for asyncQueryQueue != -1)
    {
      swift_once();
    }

    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    aBlock[4] = partial apply for closure #1 in static QueryController.execute(queries:completion:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_3;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1865F3C00](0, v12, v9, v16);
    _Block_release(v16);
    (*(v20 + 8))(v9, v6);
    (*(v10 + 8))(v12, v21);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;

    _EXServiceClient.fetchExtensions(with:completion:)(a1, partial apply for closure #2 in static QueryController.execute(queries:completion:), v18);
  }
}

uint64_t sub_1847EE768()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1847EE7A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t one-time initialization function for asyncQueryQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static QueryController.asyncQueryQueue = result;
  return result;
}

uint64_t closure #1 in static QueryController.execute(queries:completion:)(unint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for shared != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = _EXDiscoveryController.identities(matching:)(a1);
  v4 = *&v3[OBJC_IVAR____EXQueryResult_identities];

  if (!v4)
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v4 = v8;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }
  }

  v5 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  a2(v5);
}

void type metadata completion function for AppExtensionProcess._InstanceIdentifier(uint64_t a1)
{
  _s7Network15NWApplicationIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t protocol witness for _EXActiveQueryObserver.query(_:resultDidUpdate:) in conformance QueryController(uint64_t a1, void *a2)
{
  type metadata accessor for _EXQueryResultUpdate();
  if ([a2 isKindOfClass_])
  {

    return QueryController.resultDidUpdate(_:)(a2);
  }

  else
  {
    v4 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v41 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v39 - v9;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(v8, a2);
  }

  v10 = MEMORY[0x1E69E7CD0];
  v50 = MEMORY[0x1E69E7CD0];

  v43 = __CocoaSet.makeIterator()();
  v11 = __CocoaSet.Iterator.next()();
  if (v11)
  {
    v12 = v11;
    v42 = type metadata accessor for _EXExtensionIdentity();
    v13 = v12;
    v44 = v41 + 16;
    v45 = a2 + 56;
    v14 = (v41 + 8);
    v40 = MEMORY[0x1E69E7CD0];
    v46 = a2;
    do
    {
      v48 = v13;
      swift_dynamicCast();
      v15 = [v49 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(a2 + 16) && (lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v16 = dispatch thunk of Hashable._rawHashValue(seed:)(), v17 = v46, v18 = -1 << *(v46 + 32), v19 = v16 & ~v18, ((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        v21 = *(v41 + 72);
        v22 = *(v41 + 16);
        while (1)
        {
          v22(v7, *(v17 + 48) + v21 * v19, v4);
          lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v14;
          (*v14)(v7, v4);
          if (v23)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          v17 = v46;
          if (((*(v45 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v24(v47, v4);
        v25 = v49;
        v26 = *(v40 + 16);
        if (*(v40 + 24) <= v26)
        {
          specialized _NativeSet.resize(capacity:)(v26 + 1, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
        }

        v27 = v50;
        result = NSObject._rawHashValue(seed:)(*(v50 + 40));
        v29 = v27 + 56;
        v30 = -1 << *(v27 + 32);
        v31 = result & ~v30;
        v32 = v31 >> 6;
        if (((-1 << v31) & ~*(v27 + 56 + 8 * (v31 >> 6))) != 0)
        {
          v33 = __clz(__rbit64((-1 << v31) & ~*(v27 + 56 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = 0;
          v35 = (63 - v30) >> 6;
          do
          {
            if (++v32 == v35 && (v34 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v36 = v32 == v35;
            if (v32 == v35)
            {
              v32 = 0;
            }

            v34 |= v36;
            v37 = *(v29 + 8 * v32);
          }

          while (v37 == -1);
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
        }

        *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        *(*(v27 + 48) + 8 * v33) = v25;
        v38 = *(v27 + 16) + 1;
        v40 = v27;
        *(v27 + 16) = v38;
      }

      else
      {
LABEL_4:
        (*v14)(v47, v4);
      }

      v13 = __CocoaSet.Iterator.next()();
      a2 = v46;
    }

    while (v13);
  }

  else
  {
    v40 = v10;
  }

  return v40;
}

{
  v5 = type metadata accessor for UUID();
  v48 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v46 - v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E69E7CD0];
    v59 = MEMORY[0x1E69E7CD0];

    v50 = __CocoaSet.makeIterator()();
    v10 = __CocoaSet.Iterator.next()();
    if (v10)
    {
      v11 = v10;
      v49 = type metadata accessor for _EXExtensionIdentity();
      v12 = v11;
      v53 = v48 + 16;
      v54 = a2 + 56;
      v55 = (v48 + 8);
      *&v13 = 138543362;
      v46 = v13;
      do
      {
        v52 = v2;
        v57 = v12;
        swift_dynamicCast();
        v51 = v58;
        v20 = [v58 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(a2 + 16) && (_s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v21 = dispatch thunk of Hashable._rawHashValue(seed:)(), v22 = -1 << *(a2 + 32), v23 = v21 & ~v22, ((*(v54 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
        {
          v24 = ~v22;
          v25 = *(v48 + 72);
          v26 = *(v48 + 16);
          while (1)
          {
            v27 = a2;
            v26(v8, *(a2 + 48) + v25 * v23, v5);
            _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            v29 = *v55;
            (*v55)(v8, v5);
            if (v28)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            a2 = v27;
            if (((*(v54 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v29(v56, v5);
          if (one-time initialization token for discovery != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.discovery);
          v37 = v51;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.debug.getter();

          v40 = os_log_type_enabled(v38, v39);
          a2 = v27;
          v2 = v52;
          if (v40)
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = v46;
            *(v41 + 4) = v37;
            *v42 = v37;
            v43 = v37;
            _os_log_impl(&dword_1847D1000, v38, v39, "Query results: removing '%{public}@'", v41, 0xCu);
            outlined destroy of NSObject?(v42);
            MEMORY[0x1865F56C0](v42, -1, -1);
            MEMORY[0x1865F56C0](v41, -1, -1);
          }
        }

        else
        {
LABEL_13:
          (*v55)(v56, v5);
          v30 = v58;
          v31 = *(v52 + 16);
          if (*(v52 + 24) <= v31)
          {
            specialized _NativeSet.resize(capacity:)(v31 + 1);
          }

          v2 = v59;
          result = NSObject._rawHashValue(seed:)(*(v59 + 40));
          v15 = v2 + 56;
          v16 = -1 << *(v2 + 32);
          v17 = result & ~v16;
          v18 = v17 >> 6;
          if (((-1 << v17) & ~*(v2 + 56 + 8 * (v17 >> 6))) != 0)
          {
            v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = 0;
            v33 = (63 - v16) >> 6;
            do
            {
              if (++v18 == v33 && (v32 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v34 = v18 == v33;
              if (v18 == v33)
              {
                v18 = 0;
              }

              v32 |= v34;
              v35 = *(v15 + 8 * v18);
            }

            while (v35 == -1);
            v19 = __clz(__rbit64(~v35)) + (v18 << 6);
          }

          *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          *(*(v2 + 48) + 8 * v19) = v30;
          ++*(v2 + 16);
        }

        v12 = __CocoaSet.Iterator.next()();
      }

      while (v12);
    }
  }

  else
  {
    v44 = v47;
    v45 = specialized _NativeSet.filter(_:)(a1, a2);
    if (!v44)
    {
      return v45;
    }
  }

  return v2;
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1)
{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _EXExtensionIdentity();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void type metadata accessor for NWApplicationID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7Network15NWApplicationIDVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _InnerAppExtensionIdentity.presentsUserInterface.getter(uint64_t a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6940), (v1 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type LaunchArguments and conformance LaunchArguments()
{
  result = lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments;
  if (!lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments;
  if (!lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments);
  }

  return result;
}

uint64_t LaunchArguments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19ExtensionFoundation15LaunchArgumentsV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedEncodingContainerVy19ExtensionFoundation15LaunchArgumentsV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  v12 = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v8;
  v15 = 0;
  lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType()
{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.serviceDomains.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 496))(&v24, v2, v3);
  v4 = MEMORY[0x1E69E7CC8];
  if (v24 != 8)
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v25 = v6;
    *&v24 = v5;
    outlined init with take of Any(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x767265536E69614DLL, 0xEB00000000656369, isUniquelyReferenced_nonNull_native);
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    if ((*(v9 + 104))(v8, v9))
    {
      v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v25 = v6;
      *&v24 = v10;
      outlined init with take of Any(&v24, v23);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x6C616E7265746E49, 0xEF65636976726553, v11);
    }

    v12 = v1[3];
    v13 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v12);
    (*(v13 + 496))(&v24, v12, v13);
    if (v24 == 7)
    {
      v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v25 = v6;
      *&v24 = v14;
      outlined init with take of Any(&v24, v23);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000026, 0x80000001848C3E90, v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSSDySSypGGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSSDySSypGGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1848BA260;
    *(inited + 32) = 0x6976726553435058;
    *(inited + 40) = 0xEA00000000006563;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSypGtGMR);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1848BA260;
    *(v17 + 32) = 0x7365636976726553;
    v18 = v17 + 32;
    *(v17 + 40) = 0xE800000000000000;
    *(v17 + 48) = v4;
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(v17);
    swift_setDeallocating();
    outlined destroy of NSObject?(v18, &_sSS_SDySSypGtMd, &_sSS_SDySSypGtMR);
    *(inited + 48) = v19;
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSDySSypGGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of NSObject?(inited + 32, &_sSS_SDySSSDySSypGGtMd, &_sSS_SDySSSDySSypGGtMR);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);
    v4 = v21;
  }

  return v4;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of UUID?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC07ServiceC8Observer33_BA93CBAF03EEA85977F926DB446085C4LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC07ServiceC8Observer33_BA93CBAF03EEA85977F926DB446085C4LLCGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for _EXNSExtensionShim.Implementation.Request(0);
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMR);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v49 = v10;
    v40 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v8 + 16);
    v42 = v8;
    v47 = (v8 + 32);
    v20 = result + 64;
    v43 = v11;
    v44 = v7;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v48 = *(v8 + 72);
      v27 = v26 + v48 * v25;
      if (v46)
      {
        (*v47)(v49, v27, v7);
        v28 = *(v11 + 56);
        v29 = *(v45 + 72);
        outlined init with take of _EXNSExtensionShim.Implementation.Request(v28 + v29 * v25, v50);
      }

      else
      {
        (*v41)(v49, v27, v7);
        v30 = *(v11 + 56);
        v29 = *(v45 + 72);
        outlined init with copy of _EXNSExtensionShim.Implementation.Request(v30 + v29 * v25, v50);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v7 = v44;
      (*v47)((*(v13 + 48) + v48 * v21), v49, v44);
      result = outlined init with take of _EXNSExtensionShim.Implementation.Request(v50, *(v13 + 56) + v29 * v21);
      ++*(v13 + 16);
      v8 = v42;
      v11 = v43;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v18;
      }

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.performsUserInteractiveWork.getter(void *a1)
{
  if (specialized _InnerAppExtensionIdentity.presentsUserInterface.getter(a1))
  {
    return 1;
  }

  v3 = [a1 extensionPointRecord];
  v4 = [v3 extensionPointType];

  if (!v4 || (v5 = [a1 extensionPointRecord], v6 = objc_msgSend(v5, sel_extensionPointType), v5, v6 == 1))
  {
    if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C6B70), (v7 & 1) != 0))
    {
      swift_unknownObjectRetain();

      if (swift_dynamicCast())
      {
        return v8;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1847F0758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSypGGMd, &_sSDySSSDySSypGGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          outlined init with take of Any(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          outlined init with take of Any(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          outlined init with take of Any(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          outlined init with take of Any(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    outlined init with take of Any(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          outlined init with take of Any(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          outlined init with take of Any(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.xpcOverlay.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v92 - v3;
  v5 = _EXExtensionProcessIdentity.JobDescriptor.runLoopType.getter();
  v6 = MEMORY[0x1E69E6158];
  v95 = MEMORY[0x1E69E6158];
  *&v94 = v5;
  *(&v94 + 1) = v7;
  outlined init with take of Any(&v94, v93);
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x54706F6F4C6E7552, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  v10 = v96;
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v13 = (*(v12 + 232))(v11, v12);
  v14 = 0x746163696C707041;
  if (v13)
  {
    v14 = 0x6D6574737953;
  }

  v15 = 0xEB000000006E6F69;
  v95 = v6;
  if (v13)
  {
    v15 = 0xE600000000000000;
  }

  *&v94 = v14;
  *(&v94 + 1) = v15;
  outlined init with take of Any(&v94, v93);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v96 = v10;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x5465636976726553, 0xEB00000000657079, v16);
  v17 = v96;
  v18 = MEMORY[0x1E69E6370];
  v95 = MEMORY[0x1E69E6370];
  LOBYTE(v94) = 0;
  outlined init with take of Any(&v94, v93);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v96 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000013, 0x80000001848C3EE0, v19);
  v20 = v96;
  active_platform = dyld_get_active_platform();
  v95 = MEMORY[0x1E69E7668];
  LODWORD(v94) = active_platform;
  outlined init with take of Any(&v94, v93);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x6D726F6674616C50, 0xE800000000000000, v22);
  v23 = v92;
  v96 = v92;
  v24 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  outlined init with copy of UUID?(v1 + *(v24 + 24), v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = type metadata accessor for UUID();
  v26 = (*(*(v25 - 8) + 48))(v4, 1, v25) != 1;
  outlined destroy of NSObject?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v95 = v18;
  LOBYTE(v94) = v26;
  outlined init with take of Any(&v94, v93);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000012, 0x80000001848C3F00, v27);
  v28 = v92;
  v29 = _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *&v94 = v29;
  outlined init with take of Any(&v94, v93);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v28;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000014, 0x80000001848C3F20, v30);
  v31 = v92;
  v96 = v92;
  v32 = v1[3];
  v33 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v32);
  if ((*(v33 + 360))(v32, v33))
  {
    v95 = MEMORY[0x1E69E6530];
    *&v94 = 0;
    outlined init with take of Any(&v94, v93);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v31;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000016, 0x80000001848C3F40, v34);
    v35 = v92;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000016, 0x80000001848C3F40, &v94);
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
    v35 = v96;
  }

  v36 = _EXExtensionProcessIdentity.JobDescriptor.additionalSubServices.getter();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v95 = v37;
  *&v94 = v36;
  outlined init with take of Any(&v94, v93);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000016, 0x80000001848C1EE0, v38);
  v39 = v92;
  v40 = _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v95 = v41;
  *&v94 = v40;
  outlined init with take of Any(&v94, v93);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000010, 0x80000001848C3F60, v42);
  v43 = v92;
  v44 = _EXExtensionProcessIdentity.JobDescriptor.managedByServices.getter();
  v95 = v41;
  *&v94 = v44;
  outlined init with take of Any(&v94, v93);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000013, 0x80000001848C3F80, v45);
  v46 = v92;
  v96 = v92;
  v47 = _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter();
  if (v48)
  {
    v95 = v6;
    *&v94 = v47;
    *(&v94 + 1) = v48;
    outlined init with take of Any(&v94, v93);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v46;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x786F62646E61535FLL, 0xEF656C69666F7250, v49);
    v50 = v92;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x786F62646E61535FLL, 0xEF656C69666F7250, &v94);
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
    v50 = v96;
  }

  v51 = MEMORY[0x1E69E6370];
  v95 = MEMORY[0x1E69E6370];
  LOBYTE(v94) = 0;
  outlined init with take of Any(&v94, v93);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v50;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000016, 0x80000001848C3FA0, v52);
  v53 = v92;
  v54 = v1[3];
  v55 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v54);
  v56 = (*(v55 + 216))(v54, v55);
  v95 = v51;
  LOBYTE(v94) = (v56 & 1) == 0;
  outlined init with take of Any(&v94, v93);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v53;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000011, 0x80000001848C3FC0, v57);
  v58 = v92;
  v59 = _EXExtensionProcessIdentity.JobDescriptor.additionalProperties.getter();
  v95 = v37;
  *&v94 = v59;
  outlined init with take of Any(&v94, v93);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v58;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000015, 0x80000001848C3FE0, v60);
  v61 = v92;
  v96 = v92;
  v62 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationClass.getter();
  if (v63)
  {
    v95 = v6;
    *&v94 = v62;
    *(&v94 + 1) = v63;
    outlined init with take of Any(&v94, v93);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000013, 0x80000001848C4000, v64);
    v96 = v92;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000013, 0x80000001848C4000, &v94);
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  }

  v65 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationDelegateClass.getter();
  if (v66)
  {
    v95 = v6;
    *&v94 = v65;
    *(&v94 + 1) = v66;
    outlined init with take of Any(&v94, v93);
    v67 = v96;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v67;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD00000000000001BLL, 0x80000001848C4020, v68);
    v96 = v92;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001BLL, 0x80000001848C4020, &v94);
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  }

  v69 = v1[3];
  v70 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v69);
  if ((*(v70 + 232))(v69, v70))
  {
    v95 = v6;
    *&v94 = 0x656C69626F6DLL;
    *(&v94 + 1) = 0xE600000000000000;
    outlined init with take of Any(&v94, v93);
    v71 = v96;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v71;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x636341656C6F525FLL, 0xEC000000746E756FLL, v72);
    v96 = v92;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x636341656C6F525FLL, 0xEC000000746E756FLL, &v94);
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  }

  v73 = _EXExtensionProcessIdentity.JobDescriptor.urgentLogSubmission.getter();
  if (v73)
  {
    v95 = v37;
    *&v94 = v73;
    outlined init with take of Any(&v94, v93);
    v74 = v96;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v74;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000014, 0x80000001848C4040, v75);
    v96 = v92;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x80000001848C4040, &v94);
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  }

  v76 = v1[3];
  v77 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v76);
  if ((*(v77 + 152))(v76, v77))
  {
    v95 = v51;
    LOBYTE(v94) = 1;
    outlined init with take of Any(&v94, v93);
    v78 = v96;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v78;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000018, 0x80000001848C4080, v79);
    v96 = v92;
  }

  v80 = v1[3];
  v81 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v80);
  v82 = (*(v81 + 96))(v80, v81);
  if (v83)
  {
    v95 = v6;
    *&v94 = v82;
    *(&v94 + 1) = v83;
    outlined init with take of Any(&v94, v93);
    v84 = v96;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v84;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x737365636F72505FLL, 0xEC00000065707954, v85);
    v86 = v92;
  }

  else
  {
    v86 = v96;
  }

  v95 = v6;
  *&v94 = 558059608;
  *(&v94 + 1) = 0xE400000000000000;
  outlined init with take of Any(&v94, v93);
  v87 = MEMORY[0x1E69E7CC8];
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v87;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0xD000000000000013, 0x80000001848C4060, v88);
  v89 = v92;
  v95 = v37;
  *&v94 = v86;
  outlined init with take of Any(&v94, v93);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v89;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 0x6976726553435058, 0xEA00000000006563, v90);
  return v92;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.runLoopType.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 368))(v1, v2))
  {
    return 0xD000000000000012;
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 496))(&v16 + 5, v3, v4);
  if (BYTE5(v16) == 2)
  {
    return 0xD000000000000012;
  }

  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 496))(&v16 + 4, v5, v6);
  if (BYTE4(v16) == 3)
  {
    return 0xD000000000000012;
  }

  v7 = v0[3];
  v8 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v7);
  (*(v8 + 496))(&v16 + 3, v7, v8);
  if (BYTE3(v16) == 4)
  {
    return 0xD000000000000012;
  }

  v9 = v0[3];
  v10 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v9);
  (*(v10 + 496))(&v16 + 2, v9, v10);
  if (BYTE2(v16) == 5)
  {
    return 0xD000000000000012;
  }

  v11 = v0[3];
  v12 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v11);
  (*(v12 + 496))(&v16 + 1, v11, v12);
  if (BYTE1(v16) == 6)
  {
    return 0xD000000000000012;
  }

  v13 = v0[3];
  v14 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v13);
  (*(v14 + 496))(&v16, v13, v14);
  if (v16 == 7)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6F6F4C6E7552534ELL;
  }
}

BOOL protocol witness for _InnerAppExtensionIdentity.targetsServiceExtensionPoint.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  specialized _InnerAppExtensionIdentity.groupIdentifier.getter(*v0);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

char *_EXExtensionProcessIdentity.JobDescriptor.managedByServices.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = _InnerAppExtensionIdentity.serviceName.getter(v2, v3);
  v6 = v5;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v6;
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  (*(v12 + 496))(&v48 + 5, v11, v12);
  if (BYTE5(v48) != 8)
  {
    v13 = _EXExtensionProcessIdentity.JobDescriptor.xpcSessionMachName.getter();
    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v39 = v13;
      v40 = v14;
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
      v14 = v40;
      v7 = v41;
      v13 = v39;
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
    v18 = v1[3];
    v19 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v18);
    (*(v19 + 496))(&v48 + 4, v18, v19);
    if (BYTE4(v48) == 3 || (v20 = v1[3], v21 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v20), (*(v21 + 496))(&v48 + 3, v20, v21), BYTE3(v48) == 4) || (v22 = v1[3], v23 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v22), (*(v23 + 496))(&v48 + 2, v22, v23), BYTE2(v48) == 5) || (v24 = v1[3], v25 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v24), (*(v25 + 496))(&v48 + 1, v24, v25), BYTE1(v48) == 6))
    {
      v26 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
      v29 = *(v7 + 2);
      v28 = *(v7 + 3);
      if (v29 >= v28 >> 1)
      {
        v42 = v26;
        v43 = v27;
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
        v27 = v43;
        v7 = v44;
        v26 = v42;
      }

      *(v7 + 2) = v29 + 1;
      v30 = &v7[16 * v29];
      *(v30 + 4) = v26;
      *(v30 + 5) = v27;
    }

    v31 = v1[3];
    v32 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v31);
    (*(v32 + 496))(&v48, v31, v32);
    if (v48 == 2)
    {
      v33 = _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter();
      v36 = *(v7 + 2);
      v35 = *(v7 + 3);
      if (v36 >= v35 >> 1)
      {
        v45 = v33;
        v46 = v34;
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
        v34 = v46;
        v7 = v47;
        v33 = v45;
      }

      *(v7 + 2) = v36 + 1;
      v37 = &v7[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v34;
    }
  }

  return v7;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.xpcSessionMachName.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v2 = (v0 + *(v1 + 48));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v4 = (v0 + *(v1 + 28));
    v6 = *v4;
    v7 = v4[1];

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](0x737365732D637078, 0xEB000000006E6F69);
    v3 = v6;
    *v2 = v6;
    v2[1] = v7;
  }

  return v3;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.uiApplicationClass.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 496))(&v8 + 2, v1, v2);
  if (BYTE2(v8) == 7)
  {
    return 0xD000000000000017;
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 496))(&v8 + 1, v3, v4);
  if (BYTE1(v8) == 3)
  {
    return 0xD000000000000017;
  }

  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 496))(&v8, v5, v6);
  if (v8 == 5)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1865F3AE0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *_EXLaunchConfiguration.hostConfiguration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-v3];
  v5 = *(v0 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v6 = type metadata accessor for _EXHostConfiguration(0);
  v7 = objc_allocWithZone(v6);
  v8 = objc_allocWithZone(v6);
  v9 = v5;
  v10 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v9, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v11 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  v12 = *&v10[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
  *&v10[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = v11;
  v13 = v11;

  *&v10[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = *(v1 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);

  v14 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
  v15 = &v10[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
  *v15 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
  *(v15 + 1) = v14;

  *&v10[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = *(v1 + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);

  v16 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
  v17 = *&v10[OBJC_IVAR____EXHostConfiguration_launchPersona];
  *&v10[OBJC_IVAR____EXHostConfiguration_launchPersona] = v16;
  v18 = v16;

  *&v10[OBJC_IVAR____EXHostConfiguration_assertionAttributes] = *(v1 + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);

  v19 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v19, v4, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v20 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
  swift_beginAccess();
  outlined assign with take of AppExtensionIdentity?(v4, &v10[v20], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  swift_endAccess();
  return v10;
}

uint64_t RBSProcessIdentity.Attachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for RBSProcessIdentity.Attachment(0);
    LOBYTE(v11) = 4;
    type metadata accessor for NWApplicationID();
    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8], MEMORY[0x1E6977CB0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RBSProcessIdentity.Attachment.CodingKeys()
{
  v1 = *v0;
  v2 = 0xD00000000000001ELL;
  v3 = 0xD000000000000010;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

uint64_t outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1847F294C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of UUID?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _InnerAppExtensionIdentity.translocatedExecutableURL.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 272))(a1, a2);
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v21 = [v19 _EX_URLForBundleExecutable];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v15 + 56))(v11, v22, 1, v14);
  v23 = v11;
  v24 = v13;
  outlined init with take of URL?(v23, v13);
  outlined init with copy of UUID?(v13, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v25 = v32;
    (*(v15 + 32))(v32, v8, v14);
    if (URL.path.getter() || v26 != 0xE000000000000000)
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        outlined destroy of NSObject?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        return (*(v15 + 8))(v17, v14);
      }
    }

    else
    {
    }

    (*(v15 + 8))(v25, v14);
  }

  v28 = objc_opt_self();
  v29 = MEMORY[0x1865F36D0](0xD000000000000029, 0x80000001848C6E10);
  [v28 _EX_errorWithCode_description_];

  swift_willThrow();
  outlined destroy of NSObject?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*(v15 + 8))(v17, v14);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v45 - v3;
  v54 = type metadata accessor for NWApplicationID();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1848BA260;
  v13 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v14 = (v1 + v13[8]);
  v15 = v14[1];
  *(v12 + 32) = *v14;
  *(v12 + 40) = v15;
  v60 = v12;
  v50 = v13[5];
  outlined init with copy of UUID?(v1 + v50, v11, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v16 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v51 = v16;
  v49 = v18;
  v48 = v17 + 48;
  if ((v18)(v11, 1) == 1)
  {

    outlined destroy of NSObject?(v11, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  }

  else
  {
    v19 = *(v11 + 3);

    outlined destroy of _EXExtensionProcessIdentity.Inner(v11, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    if (v19)
    {
      if (*(v19 + 16))
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1848BAA10;
        *(inited + 32) = 0x614C656C7070412DLL;
        *(inited + 40) = 0xEF7365676175676ELL;
        v56 = 8744;
        v57 = 0xE200000000000000;
        v55 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v21 = BidirectionalCollection<>.joined(separator:)();
        v23 = v22;

        MEMORY[0x1865F37A0](v21, v23);

        MEMORY[0x1865F37A0](10530, 0xE200000000000000);
        v24 = v57;
        *(inited + 48) = v56;
        *(inited + 56) = v24;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      else
      {
      }
    }
  }

  v53 = v4;
  v25 = v1[3];
  v26 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v25);
  (*(v26 + 496))(&v56, v25, v26);
  LOBYTE(v26) = v56;
  v27 = (v1 + v13[7]);
  v28 = *v27;
  v29 = v27[1];
  v30 = v1[3];
  v31 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v30);
  v32 = *(v31 + 168);

  LOBYTE(v30) = v32(v30, v31) & 1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  LOBYTE(v56) = v26;
  v57 = v28;
  v58 = v29;
  v59 = v30;
  lazy protocol witness table accessor for type LaunchArguments and conformance LaunchArguments();
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v35 = v34;

  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1848BAA10;
  *(v36 + 32) = 0xD000000000000010;
  *(v36 + 40) = 0x80000001848C4170;
  *(v36 + 48) = Data.base64EncodedString(options:)(0);
  specialized Array.append<A>(contentsOf:)(v36);
  outlined consume of Data._Representation(v33, v35);
  v37 = v53;
  outlined init with copy of UUID?(v1 + v50, v9, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v38 = v51;
  v39 = v49(v9, 1, v51);
  v40 = v54;
  v41 = v52;
  if (v39 == 1)
  {
    outlined destroy of NSObject?(v9, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    (*(v37 + 56))(v41, 1, 1, v40);
  }

  else
  {
    outlined init with copy of UUID?(&v9[*(v38 + 28)], v52, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    outlined destroy of _EXExtensionProcessIdentity.Inner(v9, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    if ((*(v37 + 48))(v41, 1, v40) != 1)
    {
      v42 = v46;
      (*(v37 + 32))(v46, v41, v40);
      v43 = NWApplicationID.encodedNetworkAppIDArgs()();
      specialized Array.append<A>(contentsOf:)(v43);
      (*(v37 + 8))(v42, v40);
      return v60;
    }
  }

  outlined destroy of NSObject?(v41, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  return v60;
}

uint64_t outlined destroy of _EXExtensionProcessIdentity.Inner(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized _InnerAppExtensionIdentity.type.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  if ((specialized _InnerAppExtensionIdentity.presentsUserInterface.getter(a1) & 1) == 0)
  {
    result = specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter(a1);
    if (result)
    {
      v5 = 8;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_8;
  }

  result = [a1 platform];
  if ((result & 0x80000000) == 0)
  {
    if (result == 1)
    {
      v5 = 2;
    }

    else
    {
      result = specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter(a1);
      if (result)
      {
        v5 = 7;
      }

      else
      {
        result = specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter(a1);
        if (result)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }
      }
    }

LABEL_8:
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LaunchArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LaunchArguments.CodingKeys()
{
  v1 = 0x4E65636976726573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter()
{
  v1 = v0;
  v40 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  outlined init with copy of UUID?(v1 + *(v6 + 20), v5, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v7 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v5, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = *(v5 + 2);

    outlined destroy of _EXExtensionProcessIdentity.Inner(v5, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  }

  v39 = v8;
  v9 = objc_opt_self();
  _EXExtensionProcessIdentity.JobDescriptor.serviceDomains.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v38 = 0;
  v11 = [v9 dataWithJSONObject:isa options:0 error:&v38];

  v12 = v38;
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    static String.Encoding.utf8.getter();
    v16 = String.init(data:encoding:)();
    specialized Dictionary.subscript.setter(v16, v17, 0xD000000000000010, 0x80000001848C4150);
    outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v18 = v12;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.general);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      outlined destroy of NSObject?(v25, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v25, -1, -1);
      MEMORY[0x1865F56C0](v24, -1, -1);
    }

    else
    {
    }
  }

  v28 = v1[3];
  v29 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v28);
  (*(v29 + 496))(&v37, v28, v29);
  v38 = v37;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  v33 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v33;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v32, 0xD00000000000001CLL, 0x80000001848C1F90, isUniquelyReferenced_nonNull_native);
  return v38;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t specialized _InnerAppExtensionIdentity.disableLaunchdCheckinTimeout.getter(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 disableLaunchdCheckinTimeout];

  if (v2)
  {
    return 1;
  }

  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C6B90), (v4 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.additionalSubServices.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 496))(&v26, v1, v2);
  v3 = MEMORY[0x1E69E7CC8];
  if (v26 != 8)
  {
    v4 = MEMORY[0x1E69E6370];
    v27 = MEMORY[0x1E69E6370];
    LOBYTE(v26) = 1;
    outlined init with take of Any(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x737365732D637078, 0xEB000000006E6F69, isUniquelyReferenced_nonNull_native);
    v6 = v0[3];
    v7 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v6);
    (*(v7 + 496))(&v26, v6, v7);
    if (v26 == 3 || (v8 = v0[3], v9 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v8), (*(v9 + 496))(&v26, v8, v9), v26 == 4) || (v10 = v0[3], v11 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v10), (*(v11 + 496))(&v26, v10, v11), v26 == 5) || (v12 = v0[3], v13 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v12), (*(v13 + 496))(&v26, v12, v13), v26 == 6))
    {
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0xD000000000000015, 0x80000001848C3EC0, v14);
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x7672657377656976, 0xEB00000000656369, v15);
    }

    v16 = v0[3];
    v17 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v16);
    (*(v17 + 496))(&v26, v16, v17);
    if (v26 == 2 || (v18 = v0[3], v19 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v18), (*(v19 + 496))(&v26, v18, v19), v26 == 5) || (v20 = v0[3], v21 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v20), (*(v21 + 496))(&v26, v20, v21), v26 == 6))
    {
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0xD000000000000015, 0x80000001848C3EC0, v22);
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x6469726277656976, 0xEA00000000006567, v23);
    }
  }

  return v3;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter()
{
  v1 = v0;
  v2 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33[-v6];
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 forceSandbox];

  if (v9 & 1) != 0 || (v10 = v1[3], v11 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v10), ((*(v11 + 352))(v10, v11)))
  {
    v12 = v1[3];
    v13 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v12);
    v14 = (*(v13 + 328))(v12, v13);
  }

  else
  {
    v14 = 0;
  }

  outlined init with copy of UUID?(v1 + *(v2 + 20), v7, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v15 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v7, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    return v14;
  }

  v16 = *v7;
  v17 = v7[1];

  outlined destroy of _EXExtensionProcessIdentity.Inner(v7, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  if (!v17)
  {
    return v14;
  }

  v18 = v1[3];
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v18);
  v20 = (*(v19 + 336))(v18, v19);
  v34[0] = v16;
  v34[1] = v17;
  MEMORY[0x1EEE9AC00](v20);
  *&v33[-16] = v34;
  LOBYTE(v18) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v33[-32], v20);

  if ((v18 & 1) == 0)
  {

    return v14;
  }

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.general);
  outlined init with copy of _EXExtensionProcessIdentity.Inner(v1, v4, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34[0] = v25;
    *v24 = 136446466;
    v26 = v4[3];
    v27 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v26);
    v28 = (*(v27 + 64))(v26, v27);
    v30 = v29;
    outlined destroy of _EXExtensionProcessIdentity.Inner(v4, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v34);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2082;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v34);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v25, -1, -1);
    MEMORY[0x1865F56C0](v24, -1, -1);
  }

  else
  {

    outlined destroy of _EXExtensionProcessIdentity.Inner(v4, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
  }

  return v16;
}

uint64_t specialized _InnerAppExtensionIdentity.sandboxProfileName.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (v3)
  {
    v4 = [a1 extensionPointRecord];
    v5 = [v4 extensionPointType];

    if (v5 != 1)
    {
      goto LABEL_25;
    }
  }

  v6 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C6C60), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();

    v28 = v9;
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6C80), (v12 & 1) == 0))
  {

    goto LABEL_13;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_unknownObjectRetain();

  v28 = v13;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v16 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
    if (*(v16 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x736E65747845534ELL, 0xEB000000006E6F69);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);
        swift_unknownObjectRetain();

        v26 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_25:
          v14 = 0;
          v15 = 0;
          goto LABEL_26;
        }

        if (*(v28 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6CA0);
          if (v20)
          {
            swift_unknownObjectRetain();

            v21 = swift_dynamicCast();
            if (v21)
            {
              v14 = v19;
            }

            else
            {
              v14 = 0;
            }

            if (v21)
            {
              v15 = v27;
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_25;
  }

LABEL_11:
  v14 = v26;
  v15 = v27;
LABEL_26:
  v22 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  if (AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(v22, 0xD000000000000033, 0x80000001848C6C20, a1) && (swift_dynamicCast() & 1) != 0)
  {
    v14 = v26;
  }

  else if (!v15)
  {
    if (specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter(a1))
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v23 = [objc_opt_self() sharedInstance];
      v24 = [v23 defaultSandboxProfileName];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v14;
}

uint64_t AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v6 = [a4 entitlements];
  v7 = MEMORY[0x1865F36D0](a2, a3);
  v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = Optional._bridgeToObjectiveC()();
  outlined destroy of NSObject?(v11, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t closure #1 in _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter(uint64_t a1)
{
  outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
  v2 = v81;
  v3 = v82;
  __swift_project_boxed_opaque_existential_1(&v80, v81);
  v4 = (*(v3 + 232))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  v5 = (a1 + *(type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0) + 28));
  v7 = *v5;
  v6 = v5[1];
  if (v4)
  {
    outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
    v8 = v81;
    v9 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, v81);

    v10 = _InnerAppExtensionIdentity.serviceName.getter(v8, v9);
    v79 = MEMORY[0x1E69E6158];
    *&v78 = v10;
    *(&v78 + 1) = v11;
    outlined init with take of Any(&v78, v77);
    v12 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v7, v6, isUniquelyReferenced_nonNull_native);

    v14 = v12;
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  }

  else
  {
    v15 = MEMORY[0x1E69E6370];
    v81 = MEMORY[0x1E69E6370];
    LOBYTE(v80) = 1;
    outlined init with take of Any(&v80, &v78);

    v16 = MEMORY[0x1E69E7CC8];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v7, v6, v17);

    v14 = v16;
    outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
    v18 = v81;
    v19 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, v81);
    (*(v19 + 496))(&v78, v18, v19);
    LODWORD(v16) = v78;
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    if (v16 != 8)
    {
      v20 = _EXExtensionProcessIdentity.JobDescriptor.xpcSessionMachName.getter();
      v22 = v21;
      v81 = v15;
      LOBYTE(v80) = 1;
      outlined init with take of Any(&v80, &v78);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = v14;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v20, v22, v23);

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v24 = v81;
      v25 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      v26 = (*(v25 + 384))(v24, v25);
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      v27 = MEMORY[0x1E69E6158];
      if ((v26 & 1) == 0 || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v28 = v81, v29 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v29 + 496))(&v78, v28, v29), v30 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v30 == 4) || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v31 = v81, v32 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v32 + 496))(&v78, v31, v32), v33 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v33 == 6))
      {
        v34 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
        v81 = v27;
        *&v80 = v34;
        *(&v80 + 1) = v35;
        outlined init with take of Any(&v80, &v78);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, 0xD000000000000026, 0x80000001848C3E90, v36);
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v37 = v81;
      v38 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      v39 = (*(v38 + 384))(v37, v38);
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if ((v39 & 1) == 0 || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v40 = v81, v41 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v41 + 496))(&v78, v40, v41), v42 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v42 == 3) || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v43 = v81, v44 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v44 + 496))(&v78, v43, v44), v45 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v45 == 5))
      {
        v46 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
        v81 = v27;
        *&v80 = v46;
        *(&v80 + 1) = v47;
        outlined init with take of Any(&v80, &v78);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, 0xD000000000000026, 0x80000001848C3E90, v48);
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v49 = v81;
      v50 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v50 + 496))(&v78, v49, v50);
      v51 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v51 == 3 || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v52 = v81, v53 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v53 + 496))(&v78, v52, v53), v54 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v54 == 4) || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v55 = v81, v56 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v56 + 496))(&v78, v55, v56), v57 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v57 == 5) || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v58 = v81, v59 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v59 + 496))(&v78, v58, v59), v60 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v60 == 6))
      {
        v61 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
        v63 = v62;
        v81 = v15;
        LOBYTE(v80) = 1;
        outlined init with take of Any(&v80, &v78);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v61, v63, v64);

        v65 = _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter();
        v67 = v66;
        v81 = v15;
        LOBYTE(v80) = 1;
        outlined init with take of Any(&v80, &v78);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v65, v67, v68);
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v69 = v81;
      v70 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v70 + 496))(&v78, v69, v70);
      v71 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v71 == 2)
      {
        v72 = _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter();
        v74 = v73;
        v81 = v15;
        LOBYTE(v80) = 1;
        outlined init with take of Any(&v80, &v78);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v72, v74, v75);
      }
    }
  }

  return v14;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter()
{
  v1 = *(type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0) + 52);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = closure #1 in _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter(v0);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.additionalProperties.getter()
{
  v1 = _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v12 = v2;
  *&v11 = v1;
  outlined init with take of Any(&v11, v10);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0xD000000000000020, 0x80000001848C4100, isUniquelyReferenced_nonNull_native);
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  if ((*(v6 + 488))(v5, v6) == 1)
  {
    v12 = MEMORY[0x1E69E6370];
    LOBYTE(v11) = 1;
    outlined init with take of Any(&v11, v10);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x66666F6B636142, 0xE700000000000000, v7);
  }

  v12 = v2;
  *&v11 = v3;
  outlined init with take of Any(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x42676E696E6E7552, 0xEC0000006472616FLL, v8);
  return v3;
}

uint64_t specialized _InnerAppExtensionIdentity.launchThrottlePolicy.getter(void *a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6AC0), (v2 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      if (v5 == 0x64656C6261736964 && v6 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      if (v5 == 0x656C74746F726874 && v6 == 0xE900000000000064)
      {

        return 1;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v4)
      {
        return 1;
      }
    }
  }

  else
  {
  }

  if (specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter(a1))
  {
    return 2;
  }

  if (specialized _InnerAppExtensionIdentity.launchesViaExtensionKitService.getter(a1))
  {
    if ((specialized _InnerAppExtensionIdentity.presentsUserInterface.getter(a1) & 1) == 0)
    {
      specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter(a1);
      return 0;
    }

    result = [a1 platform];
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    if (result == 1)
    {
      return 0;
    }

    if ((specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter(a1) & 1) == 0)
    {
      specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter(a1);
      return 0;
    }
  }

  return 1;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.uiApplicationDelegateClass.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 496))(&v8 + 2, v1, v2);
  if (BYTE2(v8) == 7)
  {
    return 0xD00000000000001FLL;
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 496))(&v8 + 1, v3, v4);
  if (BYTE1(v8) == 3)
  {
    return 0xD00000000000001FLL;
  }

  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 496))(&v8, v5, v6);
  if (v8 == 5)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _InnerAppExtensionIdentity.requiresUrgentCheckedAllocationsLogSubmission.getter(uint64_t a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002FLL, 0x80000001848C6D20), (v1 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.urgentLogSubmission.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 160))(v1, v2);
  result = MEMORY[0x1E69E7CC8];
  if (v3)
  {
    v9 = MEMORY[0x1E69E6370];
    LOBYTE(v8) = 1;
    v5 = MEMORY[0x1E69E7CC8];
    outlined init with take of Any(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0xD000000000000012, 0x80000001848C40A0, isUniquelyReferenced_nonNull_native);
    result = v5;
  }

  if (!*(result + 16))
  {

    return 0;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.forceCheckedAllocations.getter(uint64_t a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6D50), (v1 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.processType.getter(uint64_t a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0x7365636F72505845, 0xED00006570795473), (v1 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresLegacyInfrastructure.getter(uint64_t a1)
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2620), (v1 & 1) != 0))
  {
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t @objc static _EXLaunchConfiguration.configureRBInfo(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v6 = a3;
  specialized static _EXLaunchConfiguration.configureRBInfo(_:)(v6, a5);

  return 1;
}

uint64_t RBSProcessIdentity.attachment.getter()
{
  v1 = [v0 validationToken];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for RBSProcessIdentity.Attachment(0);
    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment, type metadata accessor for RBSProcessIdentity.Attachment, &protocol conformance descriptor for RBSProcessIdentity.Attachment);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = MEMORY[0x1865F36D0](0xD00000000000001FLL, 0x80000001848C4890);
    [v7 _EX_errorWithCode_description_];

    return swift_willThrow();
  }
}

uint64_t RBSProcessIdentity.Attachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMR);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for RBSProcessIdentity.Attachment(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();
  v22 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v14 = v20;
  v13 = v21;
  LOBYTE(v24) = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v15;
  v18[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v23 = 1;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12[2] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v23 = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v18[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[3] = v24;
  LOBYTE(v24) = 3;
  v12[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[5] = v16;
  type metadata accessor for NWApplicationID();
  LOBYTE(v24) = 4;
  lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8], MEMORY[0x1E6977CB8]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v22, v13);
  outlined init with take of UUID?(v6, v12 + *(v10 + 32), &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(v12, v19, type metadata accessor for RBSProcessIdentity.Attachment);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v12, type metadata accessor for RBSProcessIdentity.Attachment);
}

uint64_t getEnumTagSinglePayload for _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void specialized static _EXLaunchConfiguration.configureRBInfo(_:)(void *a1, char *a2)
{
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.launch);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    format = a2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v11 = [v6 identity];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 xpcServiceIdentifier];

      if (v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v28);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1847D1000, v7, v8, format, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1865F56C0](v10, -1, -1);
    MEMORY[0x1865F56C0](v9, -1, -1);
  }

  specialized static _EXLaunchConfiguration._configureLaunchContext(_:onlyJobInfo:)(v6);
  if (v2)
  {
    v17 = _convertErrorToNSError(_:)();
    v18 = [v17 domain];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        v24 = objc_opt_self();
        v25 = v17;
        v26 = _convertErrorToNSError(_:)();

        [v24 _EX_errorWithCode_underlyingError_];
        swift_willThrow();

        goto LABEL_15;
      }
    }

    swift_willThrow();
LABEL_15:
  }
}

void specialized static _EXLaunchConfiguration._configureLaunchContext(_:onlyJobInfo:)(void *a1)
{
  v337 = *MEMORY[0x1E69E9840];
  v313 = type metadata accessor for URL();
  v312 = *(v313 - 8);
  v2 = MEMORY[0x1EEE9AC00](v313);
  v311 = &v285 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v316 = &v285 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v314 = &v285 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v321 = &v285 - v8;
  v319 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v9 = MEMORY[0x1EEE9AC00](v319);
  v317 = &v285 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v315 = &v285 - v11;
  v318 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v326 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v320 = (&v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325 = type metadata accessor for UUID();
  v324 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v322 = &v285 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v323 = &v285 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v285 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v285 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v285 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLVSgMd, &_sSo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v285 - v26;
  v28 = type metadata accessor for RBSProcessIdentity.Attachment(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v285 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v285 - v33;
  v35 = v327;
  v36 = RBSLaunchContext.hostHandle.getter();
  if (!v35)
  {
    v301 = v24;
    v310 = v34;
    v307 = v29;
    v308 = v28;
    v309 = v27;
    v303 = v31;
    v300 = v19;
    v302 = v22;
    v327 = a1;
    v37 = v36;
    v38 = [objc_opt_self() identifierWithPid_];
    if (!v38)
    {
      v41 = objc_opt_self();
      *v335.val = 0;
      *&v335.val[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      *v335.val = 0xD00000000000002BLL;
      *&v335.val[2] = 0x80000001848C4590;
      atoken.val[0] = [v37 pid];
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F37A0](v42);

      MEMORY[0x1865F37A0](96, 0xE100000000000000);
      v43 = MEMORY[0x1865F36D0](*v335.val, *&v335.val[2]);

      [v41 _EX_errorWithCode_description_];

      swift_willThrow();
      return;
    }

    v304 = v38;
    v306 = v37;
    [v37 auditToken];
    v329 = v331;
    v330 = v332;
    v39 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    v40 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v329, *(&v329 + 1), v330, *(&v330 + 1));
    v44 = v40;
    v45 = v327;
    v46 = v309;
    if (!v40 || (objc_opt_self(), (v47 = swift_dynamicCastObjCClass()) == 0))
    {
      v305 = 0;
LABEL_13:
      v50 = [v45 identity];
      if (!v50)
      {
        v60 = v44;
        v61 = objc_opt_self();
        v62 = MEMORY[0x1865F36D0](0xD000000000000028, 0x80000001848C45C0);
        [v61 _EX_errorWithCode_description_];

        swift_willThrow();
        return;
      }

      v51 = v50;
      v52 = type metadata accessor for NWApplicationID();
      v53 = *(v52 - 8);
      v54 = *(v53 + 56);
      v298 = v53 + 56;
      v54(v310, 1, 1, v52);
      v55 = [v51 personaString];
      v309 = v51;
      if (v55 || (v55 = [v45 managedPersona]) != 0)
      {
        v56 = v55;
        v297 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v299 = v57;
      }

      else
      {
        v297 = 0;
        v299 = 0;
      }

      RBSProcessIdentity.attachment.getter();
      v58 = v46;
      v59 = (v307 + 56);
      v294 = v39;
      v295 = v54;
      v307 = v52;
      v296 = v44;
      v63 = v310;
      outlined destroy of NSObject?(v310, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
      v64 = v308;
      (*v59)(v58, 0, 1, v308);
      v65 = v58;
      v66 = v303;
      outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(v65, v303, type metadata accessor for RBSProcessIdentity.Attachment);
      v67 = *v66;
      v68 = v66[1];
      v69 = v66[2];
      outlined init with copy of UUID?(v66 + *(v64 + 32), v63, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
      v70 = v66[3];

      [v306 auditToken];
      atoken = v335;
      audit_token_to_euid(&atoken);
      v71 = specialized RBSProcessIdentity.Attachment.makeAppExtensionRecord(userID:)();
      v289 = v67;
      v308 = v70;
      v72 = v71;
      v73 = [v72 bundleIdentifier];
      if (v73)
      {
        v288 = v72;
        v293 = v68;
        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v78 = [v309 xpcServiceIdentifier];
        v79 = v326;
        if (v78)
        {
          v292 = v69;
          v80 = v78;
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          if (v75 == v81 && v77 == v83)
          {

            goto LABEL_27;
          }

          v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v84)
          {

LABEL_27:
            v85 = [v309 validationToken];
            v86 = v296;
            v287 = v77;
            if (v85)
            {
              v87 = v85;
              v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v90 = v89;
            }

            else
            {
              v88 = 0;
              v90 = 0xF000000000000000;
            }

            v120 = v288;
            v121 = RBSProcessIdentity.makeProcessIdentityWith(_:validationToken:hostIdentifier:)(v288, v88, v90, v304);
            v290 = 0;
            v122 = v121;
            outlined consume of Data?(v88, v90);
            v123 = [objc_allocWithZone(_EXExtensionIdentity) initWithApplicationExtensionRecord_];
            v124 = [v120 extensionPointRecord];
            v125 = [v124 _EX_parentAppRecord];

            v291 = v122;
            if (v125)
            {
              if (v86)
              {
                v126 = v123;
                v127 = v86;
                v128 = static NSObject.== infix(_:_:)();

                v123 = v126;
                if ((v128 & 1) == 0)
                {
                  goto LABEL_105;
                }

LABEL_101:

                _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v303, type metadata accessor for RBSProcessIdentity.Attachment);
                v217 = v309;
                v218 = v293;
                v219 = v292;
LABEL_121:
                v254 = v291;
                v255 = v308;
                v256 = v289;
                goto LABEL_37;
              }
            }

            else if (!v86)
            {
              goto LABEL_101;
            }

LABEL_105:
            v286 = v123;
            if (v123 && (v241 = MEMORY[0x1865F36D0](0xD000000000000039, 0x80000001848C42F0), type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98), v242 = [v123 entitlementNamed:v241 ofClass:swift_getObjCClassFromMetadata()], v241, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0))
            {
              v243 = *v333.val;
              v244 = [*v333.val BOOLValue];
            }

            else
            {
              v244 = 0;
            }

            v245 = [v288 containingBundleRecord];
            if (v245)
            {
              v246 = v245;
              if (!v86)
              {

                v218 = v293;
                v219 = v292;
                goto LABEL_119;
              }

              v247 = v86;
              v248 = static NSObject.== infix(_:_:)();

              v218 = v293;
              v219 = v292;
              if ((v248 & 1) == 0)
              {
LABEL_119:
                v123 = v286;
                if (v244)
                {
LABEL_120:
                  _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v303, type metadata accessor for RBSProcessIdentity.Attachment);

                  v217 = v309;
                  goto LABEL_121;
                }

LABEL_139:
                if (!v123)
                {
                  goto LABEL_146;
                }

                v277 = objc_opt_self();
                v278 = [v123 requiredHostEntitlements];
                v279 = v123;
                v280 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                specialized _dictionaryUpCast<A, B, C, D>(_:)(v280);

                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                *atoken.val = 0;
                LODWORD(v278) = [v277 auditToken:&v329 hasRequiredEntitlements:isa error:&atoken];

                if (!v278)
                {
                  v283 = v86;
                  v284 = *atoken.val;

                  _convertNSErrorToError(_:)();

                  swift_willThrow();
                  _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v303, type metadata accessor for RBSProcessIdentity.Attachment);
                  outlined destroy of NSObject?(v310, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
                  return;
                }

                v282 = *atoken.val;
                _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v303, type metadata accessor for RBSProcessIdentity.Attachment);

                v217 = v309;
                v254 = v291;
                v255 = v308;
                v256 = v289;
                v123 = v279;
LABEL_37:
                if (!v123)
                {

                  v109 = v254;
                  v110 = v86;
                  v111 = objc_opt_self();
                  v104 = v217;
                  v112 = MEMORY[0x1865F36D0](0xD000000000000027, 0x80000001848C4620);
                  [v111 _EX_errorWithCode_description_];

                  swift_willThrow();
LABEL_60:

LABEL_61:
                  v133 = &_s7Network15NWApplicationIDVSgMd;
                  v134 = &_s7Network15NWApplicationIDVSgMR;
                  v135 = v310;
LABEL_62:
                  outlined destroy of NSObject?(v135, v133, v134);
                  return;
                }

                v289 = v256;
                v308 = v255;
                v292 = v219;
                v103 = v123;
                v104 = v103;
                v291 = v254;
                v303 = v103;
                v293 = v218;
                if (v86)
                {
                  v105 = [v103 containingBundleRecord];
                  if (v105)
                  {
                    v106 = v105;
                    v107 = v86;
                    v108 = static NSObject.== infix(_:_:)();

                    v109 = v291;
                  }

                  else
                  {
                    v109 = v254;
                    v108 = 0;
                  }

                  v113 = [v303 containingBundleRecord];
                  if (v113)
                  {
                    v114 = v113;
                    v115 = v305;
                    v116 = v305;
                    if (v115)
                    {
                      v117 = v116;
                      v118 = static NSObject.== infix(_:_:)();

                      v108 |= v118;
                    }

                    else
                    {
                    }

                    v109 = v291;
                    v104 = v303;
                  }

                  else
                  {
                    v104 = v303;
                    if (!v305)
                    {
                      v119 = 0;
                      v108 = 1;
                    }
                  }
                }

                else
                {
                  v109 = v254;
                  v108 = 0;
                }

                if ([v104 requiresHostToBeContainerApp])
                {
                  v129 = [v104 containingBundleRecord];

                  v130 = v323;
                  if (v129)
                  {

                    if ((v108 & 1) == 0)
                    {

                      v110 = v86;
                      v131 = objc_opt_self();
                      v132 = MEMORY[0x1865F36D0](0xD00000000000003BLL, 0x80000001848C46E0);
                      [v131 _EX_errorWithCode_description_];

                      swift_willThrow();
                      goto LABEL_60;
                    }
                  }
                }

                else
                {

                  v130 = v323;
                }

                v136 = OBJC_IVAR____EXExtensionIdentity__inner;
                swift_beginAccess();
                v294 = v136;
                outlined init with copy of UUID?(v104 + v136, &atoken, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
                if (*&atoken.val[6])
                {
                  outlined init with take of _InnerAppExtensionIdentity(&atoken, &v335);
                  v137 = *&v335.val[6];
                  v138 = v336;
                  __swift_project_boxed_opaque_existential_1(&v335, *&v335.val[6]);
                  v139 = (*(v138 + 224))(v137, v138);
                  if (v140)
                  {
                    v141 = v139;
                    v142 = v140;
                    v143 = v299;
                    __swift_destroy_boxed_opaque_existential_0Tm(&v335);
                    v144 = specialized AuditToken.entitlement<A>(name:)(0xD000000000000025, 0x80000001848C2BD0, v329, *(&v329 + 1), v330, *(&v330 + 1));
                    if (v144)
                    {
                      v145 = v144;
                    }

                    else
                    {
                      v145 = MEMORY[0x1E69E7CC0];
                    }

                    v146 = (v145 + 40);
                    v147 = *(v145 + 16) + 1;
                    v148 = v310;
                    while (--v147)
                    {
                      if (*(v146 - 1) != v141 || v142 != *v146)
                      {
                        v146 += 2;
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v79 = v326;
                      v150 = v291;
                      v130 = v323;
                      goto LABEL_79;
                    }

                    v167 = v86;
                    v168 = objc_opt_self();
                    *atoken.val = 0;
                    *&atoken.val[2] = 0xE000000000000000;
                    _StringGuts.grow(_:)(41);

                    *atoken.val = 0xD000000000000026;
                    *&atoken.val[2] = 0x80000001848C4360;
                    MEMORY[0x1865F37A0](v141, v142);

                    MEMORY[0x1865F37A0](96, 0xE100000000000000);
                    v169 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

                    [v168 _EX_errorWithCode_description_];

                    swift_willThrow();
                    v133 = &_s7Network15NWApplicationIDVSgMd;
                    v134 = &_s7Network15NWApplicationIDVSgMR;
                    v135 = v148;
                    goto LABEL_62;
                  }

                  __swift_destroy_boxed_opaque_existential_0Tm(&v335);
                  v150 = v109;
                  v143 = v299;
LABEL_79:
                  v151 = [v150 uuid];
                  v152 = v325;
                  v153 = v324;
                  v154 = v322;
                  v296 = v86;
                  v299 = v143;
                  if (v151)
                  {
                    v155 = v151;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v156 = v154;
                    v157 = *(v153 + 32);
                    v158 = v302;
                    v157(v302, v156, v152);
                    v159 = v301;
                    v160 = *(v153 + 56);
                    v160(v158, 0, 1, v152);
                    v157(v159, v158, v152);
                    v161 = v159;
                    v160(v159, 0, 1, v152);
                  }

                  else
                  {
                    v162 = *(v324 + 56);
                    v163 = 1;
                    v162(v302, 1, 1, v325);
                    v164 = [v327 oneShotUUID];
                    v165 = v300;
                    if (v164)
                    {
                      v166 = v164;
                      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                      v163 = 0;
                    }

                    v170 = v165;
                    v171 = v163;
                    v172 = v165;
                    v173 = v325;
                    v162(v170, v171, 1, v325);
                    v161 = v301;
                    outlined init with take of UUID?(v172, v301, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    v174 = v302;
                    if ((*(v324 + 48))(v302, 1, v173) != 1)
                    {
                      outlined destroy of NSObject?(v174, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    }
                  }

                  v175 = v327;
                  v176 = [v327 requiredExistingProcess];
                  if (v176)
                  {

                    v177 = v325;
                    v178 = v161;
                    v179 = v324;
                    v180 = v303;
                  }

                  else
                  {
                    v180 = v303;
                    v181 = [v303 requiresLegacyInfrastructure];
                    v177 = v325;
                    v178 = v161;
                    v179 = v324;
                    if (v181)
                    {

                      v182 = objc_opt_self();
                      *v335.val = 0;
                      *&v335.val[2] = 0xE000000000000000;
                      _StringGuts.grow(_:)(44);

                      strcpy(&v335, "Extension ");
                      HIBYTE(v335.val[2]) = 0;
                      v335.val[3] = -369098752;
                      v183 = [v180 bundleIdentifier];
                      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v186 = v185;

                      MEMORY[0x1865F37A0](v184, v186);

                      MEMORY[0x1865F37A0](0xD000000000000020, 0x80000001848C46B0);
                      v187 = MEMORY[0x1865F36D0](*v335.val, *&v335.val[2]);

                      v188 = [v182 _EX_errorWithCode_description_];
LABEL_93:
                      v188;

                      swift_willThrow();
                      outlined destroy of NSObject?(v310, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
                      v133 = &_s10Foundation4UUIDVSgMd;
                      v134 = &_s10Foundation4UUIDVSgMR;
                      v135 = v178;
                      goto LABEL_62;
                    }
                  }

                  v189 = [v180 requiresMultiInstance];
                  v190 = v299;
                  if (v189 && (*(v179 + 48))(v178, 1, v177) == 1)
                  {

                    v191 = objc_opt_self();
                    *v335.val = 0;
                    *&v335.val[2] = 0xE000000000000000;
                    _StringGuts.grow(_:)(75);
                    MEMORY[0x1865F37A0](0xD000000000000010, 0x80000001848C4650);
                    v180 = v303;
                    v192 = [v303 extensionPointIdentifier];
                    v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v195 = v194;

                    MEMORY[0x1865F37A0](v193, v195);

                    MEMORY[0x1865F37A0](0xD000000000000039, 0x80000001848C4670);
                    v187 = MEMORY[0x1865F36D0](*v335.val, *&v335.val[2]);

                    v188 = [v191 _EX_errorWithCode_description_];
                    goto LABEL_93;
                  }

                  v196 = [v175 requiredExistingProcess];
                  v197 = v292;
                  if (v196)
                  {

                    outlined destroy of NSObject?(v310, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
LABEL_96:
                    v133 = &_s10Foundation4UUIDVSgMd;
                    v134 = &_s10Foundation4UUIDVSgMR;
                    v135 = v178;
                    goto LABEL_62;
                  }

                  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  v198 = v318;
                  v199 = *(v318 + 28);
                  v200 = v320;
                  v295(v320 + v199, 1, 1, v307);

                  v201 = (v200 + *(v198 + 32));
                  v202 = v293;
                  *v200 = v289;
                  v200[1] = v202;
                  v200[2] = v308;
                  v200[3] = v197;
                  outlined assign with copy of NWApplicationID?(v310, v200 + v199);
                  *v201 = v297;
                  v201[1] = v190;
                  outlined init with copy of UUID?(v303 + v294, &atoken, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
                  if (*&atoken.val[6])
                  {
                    outlined init with take of _InnerAppExtensionIdentity(&atoken, &v335);
                    v203 = v321;
                    outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(v200, v321, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
                    (*(v79 + 56))(v203, 0, 1, v198);
                    v204 = v130;
                    outlined init with copy of UUID?(v178, v130, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    v205 = v319;
                    v206 = v178;
                    v207 = v317;
                    v208 = &v317[*(v319 + 36)];
                    *v208 = 0;
                    *(v208 + 1) = 0;
                    v209 = (v207 + v205[10]);
                    *v209 = 0;
                    v209[1] = 0;
                    v210 = (v207 + v205[11]);
                    *v210 = 0;
                    v210[1] = 0;
                    v211 = (v207 + v205[12]);
                    *v211 = 0;
                    v211[1] = 0;
                    *(v207 + v205[13]) = 0;
                    v212 = v205[14];
                    *(v207 + v212) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                    *(v207 + v205[15]) = 0;
                    v213 = *&v335.val[6];
                    v214 = v336;
                    __swift_project_boxed_opaque_existential_1(&v335, *&v335.val[6]);
                    v215 = v316;
                    v216 = v290;
                    _InnerAppExtensionIdentity.translocatedExecutableURL.getter(v213, v214, v316);
                    v290 = v216;
                    if (v216)
                    {

                      outlined destroy of NSObject?(v204, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                      outlined destroy of NSObject?(v321, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
                      outlined destroy of NSObject?(v310, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
                      __swift_destroy_boxed_opaque_existential_0Tm(&v335);

                      _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v200, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
                      v135 = v206;
                      v133 = &_s10Foundation4UUIDVSgMd;
                      v134 = &_s10Foundation4UUIDVSgMR;
                      goto LABEL_62;
                    }

                    v220 = v311;
                    URL.absoluteURL.getter();
                    v221 = *(v312 + 8);
                    v222 = v313;
                    v221(v215, v313);
                    v223 = URL.path(percentEncoded:)(0);
                    v221(v220, v222);
                    *(v207 + v205[8]) = v223;
                    outlined init with copy of _InnerAppExtensionIdentity(&v335, v207);
                    v224 = v321;
                    outlined init with copy of UUID?(v321, v207 + v205[5], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
                    v225 = v323;
                    outlined init with copy of UUID?(v323, v207 + v205[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    v226 = *&v335.val[6];
                    v227 = v336;
                    __swift_project_boxed_opaque_existential_1(&v335, *&v335.val[6]);
                    v228 = _InnerAppExtensionIdentity.serviceName.getter(v226, v227);
                    v230 = v229;
                    outlined destroy of NSObject?(v225, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                    outlined destroy of NSObject?(v224, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
                    v231 = (v207 + v205[7]);
                    *v231 = v228;
                    v231[1] = v230;
                    v232 = v315;
                    outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(v207, v315, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v335);
                    v233 = MEMORY[0x1865F36D0](*(v232 + v205[8]), *(v232 + v205[8] + 8));
                    v234 = v327;
                    [v327 _setOverrideExecutablePath_];

                    _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
                    v235 = Array._bridgeToObjectiveC()().super.isa;

                    [v234 setArguments_];

                    v236 = _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
                    specialized _dictionaryUpCast<A, B, C, D>(_:)(v236);

                    v237 = Dictionary._bridgeToObjectiveC()().super.isa;

                    [v234 _setAdditionalEnvironment_];

                    v238 = [v234 attributes];
                    if (v238)
                    {
                      v239 = v238;
                      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
                      v240 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                    }

                    else
                    {
                      v240 = MEMORY[0x1E69E7CC0];
                    }

                    v178 = v301;
                    v328 = v240;
                    outlined init with copy of UUID?(v303 + v294, &atoken, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
                    v257 = v310;
                    if (*&atoken.val[6])
                    {
                      outlined init with take of _InnerAppExtensionIdentity(&atoken, &v335);
                      v258 = *&v335.val[6];
                      v259 = v336;
                      __swift_project_boxed_opaque_existential_1(&v335, *&v335.val[6]);
                      v260 = _InnerAppExtensionIdentity.assertionAttributes.getter(v258, v259);
                      if (v260 >> 62)
                      {
                        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
                        v261 = _bridgeCocoaArray<A>(_:)();
                      }

                      else
                      {

                        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
                        v261 = v260;
                      }

                      specialized Array.append<A>(contentsOf:)(v261);
                      __swift_destroy_boxed_opaque_existential_0Tm(&v335);
                      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
                      v262 = Array._bridgeToObjectiveC()().super.isa;

                      v263 = v327;
                      [v327 setAttributes_];

                      v264 = v315;
                      _EXExtensionProcessIdentity.JobDescriptor.xpcOverlay.getter();
                      v265 = Dictionary._bridgeToObjectiveC()().super.isa;

                      [v263 setExtensionOverlay_];

                      v266 = _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
                      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v266);
                      v267 = Set._bridgeToObjectiveC()().super.isa;

                      [v263 setManagedEndpointLaunchIdentifiers_];

                      v268 = v314;
                      outlined init with copy of UUID?(v264 + *(v319 + 20), v314, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
                      v269 = v318;
                      if ((*(v326 + 48))(v268, 1, v318) == 1)
                      {
                        outlined destroy of NSObject?(v268, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
                        v270 = 0;
                        v271 = &unk_1E6E4E000;
                      }

                      else
                      {
                        v272 = (v268 + *(v269 + 32));
                        v274 = *v272;
                        v273 = v272[1];

                        _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v268, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
                        v271 = &unk_1E6E4E000;
                        if (v273)
                        {
                          v270 = MEMORY[0x1865F36D0](v274, v273);
                        }

                        else
                        {
                          v270 = 0;
                        }
                      }

                      v275 = v327;
                      [v327 setManagedPersona_];

                      v276 = v306;
                      [v275 setHostPid_];

                      outlined destroy of NSObject?(v257, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
                      _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v264, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
                      _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v320, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
                      goto LABEL_96;
                    }

LABEL_147:
                    __break(1u);
                    return;
                  }
                }

                else
                {
                  __break(1u);
                  __break(1u);
                }

                __break(1u);
LABEL_146:
                __break(1u);
                goto LABEL_147;
              }
            }

            else
            {
              v218 = v293;
              v219 = v292;
              if (v86)
              {
                goto LABEL_119;
              }
            }

            v249 = [v288 extensionPointRecord];
            v250 = [v249 extensionPointType];

            if (v250 == 1)
            {
              if (v86)
              {
                v251 = [v86 entitlements];
                v252 = MEMORY[0x1865F36D0](0x6B7361742D746567, 0xEE00776F6C6C612DLL);
                type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
                v253 = [v251 objectForKey:v252 ofClass:swift_getObjCClassFromMetadata()];

                if (v253)
                {
                  _bridgeAnyObjectToAny(_:)();
                  swift_unknownObjectRelease();
                }

                else
                {
                  memset(&v333, 0, sizeof(v333));
                }

                v123 = v286;
                atoken = v333;
                if (*&v333.val[6])
                {
                  if (swift_dynamicCast() && (v333.val[0] & 1) != 0)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_139;
                }
              }

              else
              {
                memset(&atoken, 0, sizeof(atoken));
                v123 = v286;
              }

              outlined destroy of NSObject?(&atoken, &_sypSgMd, &_sypSgMR);
              goto LABEL_139;
            }

            goto LABEL_119;
          }
        }

        v72 = v288;
      }

      v91 = 0xE000000000000000;
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      MEMORY[0x1865F37A0](0xD000000000000014, 0x80000001848C4760);
      v92 = [v72 bundleIdentifier];

      if (v92)
      {
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v94;
      }

      else
      {
        v93 = 0;
      }

      v95 = v303;
      MEMORY[0x1865F37A0](v93, v91);

      MEMORY[0x1865F37A0](0xD000000000000027, 0x80000001848C4780);
      v96 = [v309 xpcServiceIdentifier];
      if (v96)
      {
        v97 = v96;
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;
      }

      else
      {
        v98 = 0;
        v100 = 0xE000000000000000;
      }

      v101 = objc_opt_self();
      MEMORY[0x1865F37A0](v98, v100);

      MEMORY[0x1865F37A0](96, 0xE100000000000000);
      v102 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

      [v101 _EX_errorWithCode_description_];

      swift_willThrow();
      _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v95, type metadata accessor for RBSProcessIdentity.Attachment);
      goto LABEL_61;
    }

    v48 = [v47 containingBundleRecord];
    if (v48)
    {
      v49 = v48;
      objc_opt_self();
      v305 = swift_dynamicCastObjCClass();
      if (v305)
      {
LABEL_11:
        v45 = v327;
        goto LABEL_13;
      }
    }

    v305 = 0;
    goto LABEL_11;
  }
}