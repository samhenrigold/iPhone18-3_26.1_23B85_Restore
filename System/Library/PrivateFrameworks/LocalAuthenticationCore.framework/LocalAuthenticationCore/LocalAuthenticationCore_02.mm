unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t LACDTOMutablePendingPolicyEvaluation.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v126 = &v118[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v6 = MEMORY[0x1EEE9AC00](v133);
  v8 = &v118[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v132 = &v118[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = &v118[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v129 = &v118[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v127 = &v118[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v128 = &v118[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v134 = &v118[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v118[-v21];
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v135 = v22;
  v136 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v118[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v118[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v118[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v118[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v118[-v35];
  outlined init with copy of (String, Any)(a1, v138, &_sypSgMd, _sypSgMR);
  if (!v139)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v138, &_sypSgMd, _sypSgMR);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACDTOPendingPolicyEvaluation_pMd, &_sSo29LACDTOPendingPolicyEvaluation_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v120 = v8;
  v121 = v3;
  v122 = v4;
  v123 = v1;
  v37 = v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier;
  v38 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v39 = *(v37 + 1);
  v125 = v137;
  v40 = [v137 identifier];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v38 == v41 && v39 == v43)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v46 = v123;
  v47 = (*((*MEMORY[0x1E69E7D40] & *v123) + 0xA0))(v44);
  v49 = v48;
  v50 = [v125 callbackReason];
  if (!v50)
  {
    if (!v49)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v51 = v50;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (v49)
  {
    v46 = v123;
    if (v54)
    {
      if (v47 == v52 && v49 == v54)
      {
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_20;
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:

    return 0;
  }

  v46 = v123;
  if (v54)
  {

    goto LABEL_41;
  }

LABEL_20:
  (*((*MEMORY[0x1E69E7D40] & *v46) + 0xB8))(v50);
  v56 = [v125 callbackURL];
  if (v56)
  {
    v57 = v56;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = v135;
  v60 = v136;
  (*(v136 + 56))(v34, v58, 1, v135);
  v61 = *(v25 + 48);
  outlined init with copy of (String, Any)(v36, v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v62 = v59;
  outlined init with copy of (String, Any)(v34, &v27[v61], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v63 = *(v60 + 48);
  if (v63(v27, 1, v62) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v63(&v27[v61], 1, v62) == 1)
    {
      v64 = outlined destroy of AsyncStream<()>.Continuation?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_31;
    }

LABEL_28:
    v65 = &_s10Foundation3URLVSg_ADtMd;
    v66 = _s10Foundation3URLVSg_ADtMR;
LABEL_29:
    v67 = v27;
LABEL_40:
    outlined destroy of AsyncStream<()>.Continuation?(v67, v65, v66);
    goto LABEL_41;
  }

  outlined init with copy of (String, Any)(v27, v31, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v63(&v27[v61], 1, v62) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v136 + 8))(v31, v62);
    goto LABEL_28;
  }

  v68 = v136;
  v69 = &v27[v61];
  v70 = v130;
  (*(v136 + 32))(v130, v69, v62);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v119 = dispatch thunk of static Equatable.== infix(_:_:)();
  v71 = *(v68 + 8);
  v71(v70, v62);
  outlined destroy of AsyncStream<()>.Continuation?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v71(v31, v62);
  v64 = outlined destroy of AsyncStream<()>.Continuation?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v119 & 1) == 0)
  {
LABEL_41:
    swift_unknownObjectRelease();
    return 0;
  }

LABEL_31:
  v72 = v131;
  (*((*MEMORY[0x1E69E7D40] & *v46) + 0xD0))(v64);
  v73 = [v125 notificationScheduledAt];
  if (v73)
  {
    v74 = v134;
    v75 = v73;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = 0;
    v77 = v132;
  }

  else
  {
    v76 = 1;
    v77 = v132;
    v74 = v134;
  }

  v79 = v121;
  v78 = v122;
  v136 = *(v122 + 56);
  (v136)(v74, v76, 1, v121);
  v80 = *(v133 + 48);
  outlined init with copy of (String, Any)(v72, v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Any)(v74, &v77[v80], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v81 = *(v78 + 48);
  if (v81(v77, 1, v79) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v81(&v77[v80], 1, v79) == 1)
    {
      v82 = outlined destroy of AsyncStream<()>.Continuation?(v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_45;
    }

LABEL_39:
    v65 = &_s10Foundation4DateVSg_ADtMd;
    v66 = &_s10Foundation4DateVSg_ADtMR;
    v67 = v77;
    goto LABEL_40;
  }

  v83 = v128;
  outlined init with copy of (String, Any)(v77, v128, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v81(&v77[v80], 1, v79) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v122 + 8))(v83, v79);
    goto LABEL_39;
  }

  v85 = v72;
  v86 = v122;
  v87 = &v77[v80];
  v88 = v126;
  (*(v122 + 32))(v126, v87, v79);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LODWORD(v135) = dispatch thunk of static Equatable.== infix(_:_:)();
  v89 = *(v86 + 8);
  v89(v88, v79);
  outlined destroy of AsyncStream<()>.Continuation?(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v89(v83, v79);
  v82 = outlined destroy of AsyncStream<()>.Continuation?(v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v135 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_45:
  v90 = v127;
  (*((*MEMORY[0x1E69E7D40] & *v123) + 0xE8))(v82);
  v91 = [v125 coolOffStarted];
  if (v91)
  {
    v92 = v129;
    v93 = v91;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = 0;
  }

  else
  {
    v94 = 1;
    v92 = v129;
  }

  v95 = v121;
  (v136)(v92, v94, 1, v121);
  v96 = v95;
  v97 = *(v133 + 48);
  v27 = v120;
  outlined init with copy of (String, Any)(v90, v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of (String, Any)(v92, &v27[v97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v81(v27, 1, v95) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v98 = v81(&v27[v97], 1, v95);
    v99 = v123;
    if (v98 == 1)
    {
      v100 = outlined destroy of AsyncStream<()>.Continuation?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v101 = v124;
  outlined init with copy of (String, Any)(v27, v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v102 = v81(&v27[v97], 1, v95);
  v99 = v123;
  if (v102 == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v122 + 8))(v101, v95);
LABEL_53:
    v65 = &_s10Foundation4DateVSg_ADtMd;
    v66 = &_s10Foundation4DateVSg_ADtMR;
    goto LABEL_29;
  }

  v103 = v90;
  v104 = v122;
  v105 = &v27[v97];
  v106 = v126;
  (*(v122 + 32))(v126, v105, v95);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v107 = dispatch thunk of static Equatable.== infix(_:_:)();
  v108 = *(v104 + 8);
  v108(v106, v96);
  outlined destroy of AsyncStream<()>.Continuation?(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v103, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v108(v101, v96);
  v100 = outlined destroy of AsyncStream<()>.Continuation?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v107 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_55:
  v109 = (*((*MEMORY[0x1E69E7D40] & *v99) + 0x100))(v100);
  v111 = v110;
  v112 = [v125 ratchetUUID];
  if (!v112)
  {
    if (!v111)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v113 = v112;
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;

  if (!v111)
  {
    swift_unknownObjectRelease();
    if (!v116)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v116)
  {
LABEL_62:
    swift_unknownObjectRelease();

    return 0;
  }

  if (v109 == v114 && v111 == v116)
  {

LABEL_63:
    swift_unknownObjectRelease();
    return 1;
  }

  v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

  swift_unknownObjectRelease();
  result = 0;
  if (v117)
  {
    return 1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for LACDTOMutablePendingPolicyEvaluation(uint64_t a1)
{
  type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LACDTOMutablePendingPolicyEvaluation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACDTOMutablePendingPolicyEvaluation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized LACDTOMutablePendingPolicyEvaluation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C61766E497369 && a2 == 0xED00006465746164 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6163 && a2 == 0xEE006E6F73616552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6361626C6C6163 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B0355330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5366664F6C6F6F63 && a2 == 0xEE00646574726174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5574656863746172 && a2 == 0xEB00000000444955)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t dispatch thunk of LACPreboardUPPManaging.installUPP(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v9(a1, a2, a3);
}

id LACPreboardUPPManager.uppProfile.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in LACPreboardUPPManager.uppProfile.getter();
    v3 = *(v0 + 32);
    *(v0 + 32) = v2;
    v4 = v2;
    outlined consume of LACPreboardUPPProfile??(v3);
  }

  outlined copy of LACPreboardUPPProfile??(v1);
  return v2;
}

id closure #1 in LACPreboardUPPManager.uppProfile.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() getUPPProfile];
  if (!result)
  {
    v5 = LACLogPreboard(0);
    Logger.init(_:)();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B0233000, v6, v7, "Unable to fetch UPP profile", v8, 2u);
      MEMORY[0x1B27246A0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t LACPreboardUPPManager.teamName.getter()
{
  v0 = LACPreboardUPPManager.uppProfile.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 teamName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void *LACPreboardUPPManager.__allocating_init(storage:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 1;
  result[2] = a1;
  return result;
}

void *LACPreboardUPPManager.init(storage:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 1;
  v2[2] = a1;
  return v2;
}

uint64_t LACPreboardUPPManager.installUPP(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](LACPreboardUPPManager.installUPP(for:), 0, 0);
}

uint64_t LACPreboardUPPManager.installUPP(for:)()
{
  v1 = LACPreboardUPPManager.uppProfile.getter();
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v5 = [v2 teamID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v0[6] = v8;
    v15 = (*(v3 + 64) + **(v3 + 64));
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = LACPreboardUPPManager.installUPP(for:);
    v10 = v0[3];

    return v15(v6, v8, v10, ObjectType, v3);
  }

  else
  {
    v12 = objc_opt_self();
    v13 = MEMORY[0x1B27229A0](0x20676E697373694DLL, 0xEF656C69666F7270);
    [v12 errorWithCode:-1000 debugDescription:v13];

    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

{
  v1 = [*(v0 + 40) uuid];
  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = MEMORY[0x1B27229A0](v2);
  }

  v3 = *(v0 + 72);
  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v5 = *(v0 + 64);
    outlined copy of Data._Representation(v5, *(v0 + 72));
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v3);
  }

  v6 = objc_opt_self();
  *(v0 + 16) = 0;
  v7 = [v6 installProfileWithUUID:v1 signature:isa error:v0 + 16];

  v8 = *(v0 + 16);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v14 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  outlined consume of Data?(v9, v10);

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LACPreboardUPPManager.installUPP(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = LACPreboardUPPManager.installUPP(for:);
  }

  else
  {

    v5 = LACPreboardUPPManager.installUPP(for:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t LACPreboardUPPManager.deinit()
{
  swift_unknownObjectRelease();
  outlined consume of LACPreboardUPPProfile??(*(v0 + 32));
  return v0;
}

void outlined consume of LACPreboardUPPProfile??(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t LACPreboardUPPManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  outlined consume of LACPreboardUPPProfile??(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LACPreboardUPPManaging.teamName.getter in conformance LACPreboardUPPManager()
{
  v0 = LACPreboardUPPManager.uppProfile.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 teamName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t protocol witness for LACPreboardUPPManaging.installUPP(for:) in conformance LACPreboardUPPManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return LACPreboardUPPManager.installUPP(for:)(a1);
}

id outlined copy of LACPreboardUPPProfile??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id LACDTOEnvironmentProvider.__allocating_init(locationProvider:featureController:ratchetStateProvider:lostModeController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider] = a1;
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController] = a2;
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider] = a3;
  *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id LACDTOEnvironmentProvider.init(locationProvider:featureController:ratchetStateProvider:lostModeController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider] = a1;
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController] = a2;
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider] = a3;
  *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for LACDTOEnvironmentProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = LACLogDTOEnvironment(v12);
  Logger.init(_:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v5;
    v19 = a4;
    v20 = a2;
    v21 = a3;
    v22 = a1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1B0233000, v16, v17, "Environment query will start", v18, 2u);
    v24 = v23;
    a1 = v22;
    a3 = v21;
    a2 = v20;
    a4 = v19;
    v5 = v33;
    MEMORY[0x1B27246A0](v24, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v25 = [objc_opt_self() environmentUpdateWillStart];
  [v25 send];

  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_featureController);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = partial apply for closure #1 in LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:);
  v29[4] = v26;
  v29[5] = a1;
  v29[6] = a2;
  aBlock[4] = partial apply for closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOFeatureState) -> ();
  aBlock[3] = &block_descriptor_6;
  v30 = _Block_copy(aBlock);

  [v27 fetchStateWithCompletion_];
  _Block_release(v30);
}

uint64_t closure #1 in LACDTOEnvironmentProvider.fetchEnvironment(policy:options:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() environmentUpdateDidFinish];
  [v11 send];

  v13 = LACLogDTOEnvironment(v12);
  Logger.init(_:)();
  if (a2)
  {
    v14 = static os_log_type_t.error.getter();
  }

  else
  {
    v14 = static os_log_type_t.default.getter();
  }

  v15 = v14;
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v30 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a1;
    v34 = v19;
    *v18 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17LACDTOEnvironment_pSgMd, &_sSo17LACDTOEnvironment_pSgMR);
    v20 = Optional.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);
    v31 = a4;
    v23 = a3;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v33 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v25 = Optional.debugDescription.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v34);

    *(v18 + 14) = v27;
    a3 = v23;
    _os_log_impl(&dword_1B0233000, v16, v15, "Environment query did finish env=%s, err=%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v19, -1, -1);
    MEMORY[0x1B27246A0](v18, -1, -1);

    (*(v32 + 8))(v10, v30);
  }

  else
  {

    (*(v32 + 8))(v10, v8);
  }

  return a3(a1, a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id LACDTOEnvironmentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACDTOEnvironmentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACDTOEnvironmentProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, void (*a3)(id, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([a1 isEnabled])
    {
      v13 = *&v12[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = a3;
      v15[4] = a4;
      v15[5] = a5;
      v15[6] = a6;
      v15[7] = a1;
      aBlock[4] = partial apply for closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTORatchetStateComposite?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_19_0;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      [v13 ratchetStateCompositeWithCompletion_];
      _Block_release(v16);

      swift_unknownObjectRelease();
    }

    else
    {
      v17 = [objc_opt_self() nullInstance];
      [v17 setFeatureState_];
      v18 = v17;
      a3(v17, 0);
    }
  }
}

void closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a2)
    {
      a4(0, a2);
    }

    else
    {
      if (!a1)
      {
        __break(1u);
        return;
      }

      v16 = objc_allocWithZone(LACDTOMutableLostModeFetchRequest);
      v17 = a1;
      v18 = [v16 init];
      [v18 setPolicy_];
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v18 setOptions_];

      [v18 setIsDTOEnabled_];
      v20 = [v17 ratchetState];
      [v18 setRatchetState_];

      v21 = [v17 watchdogs];
      [v18 setBiometryWatchdogPack_];

      v22 = *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_lostModeController];
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a4;
      v24[4] = a5;
      v24[5] = a8;
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOLostModeState) -> ();
      aBlock[3] = &block_descriptor_26;
      v25 = _Block_copy(aBlock);
      v26 = v18;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      [v22 fetchLostMode:v26 completion:v25];
      _Block_release(v25);

      swift_unknownObjectRelease();
      v15 = v26;
    }
  }
}

char *closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *&result[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_locationProvider];
    v11 = result;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    v13[6] = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOLostModeState) -> ();
    aBlock[3] = &block_descriptor_33;
    v14 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v15 = a1;

    [v10 checkIsInFamiliarLocationWithCompletion_];
    _Block_release(v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *&result[OBJC_IVAR____TtC23LocalAuthenticationCore25LACDTOEnvironmentProvider_ratchetStateProvider];
    v13 = result;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a1;
    v15[7] = a6;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTORatchetStateComposite?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_40;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v17 = a1;
    v18 = a6;

    [v12 ratchetStateCompositeWithCompletion_];
    _Block_release(v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in LACDTOEnvironmentProvider.performFetchEnvironment(policy:options:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a2)
    {
      a4(0, a2);
    }

    else if (a1)
    {
      v15 = objc_allocWithZone(LACDTOMutableEnvironment);
      v16 = a1;
      v17 = [v15 init];
      [v17 setConfirmed_];
      v18 = [v16 watchdogs];
      [v17 setBiometryWatchdogPack_];

      [v17 setFeatureState_];
      [v17 setLocationState_];
      [v17 setLostModeState_];
      v19 = [v16 ratchetState];
      [v17 setRatchetState_];

      v20 = [v16 gracePeriodState];
      [v17 setGracePeriodState_];

      v21 = v17;
      a4(v17, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTORatchetStateComposite?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACDTOFeatureState) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t LACCompanionAuthenticationProviderDummy.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t LACCompanionAuthenticationProviderDummy.domainState(for:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v40 = a2;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isCompanionDeviceMocked])
  {
    v39 = v3;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v10 + 8))(v12, v9);
    static String.Encoding.utf8.getter();
    v13 = String.data(using:allowLossyConversion:)();
    v15 = v14;

    (*(v6 + 8))(v8, v5);
    if (v15 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      outlined copy of Data._Representation(v13, v15);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v13, v15);
    }

    v19 = [objc_opt_self() createHashForDomainState_];

    if (v19)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySiypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySiypGtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0342810;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_yptGMd, &_ss23_ContiguousArrayStorageCySi_yptGMR);
      v38 = a3;
      v25 = swift_initStackObject();
      v37 = xmmword_1B0342820;
      *(v25 + 16) = xmmword_1B0342820;
      v26 = *(v39 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
      *(v25 + 32) = v26;
      v27 = v25 + 32;
      *(v25 + 64) = MEMORY[0x1E69E6370];
      *(v25 + 40) = 1;
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v25);
      v39 = v13;
      v29 = v28;
      swift_setDeallocating();
      outlined destroy of (Int, Any)(v27);
      *(inited + 48) = v29;
      *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 64) = v30;
      v31 = swift_initStackObject();
      *(v31 + 32) = v26;
      v32 = v31 + 32;
      *(v31 + 16) = v37;
      *(v31 + 64) = MEMORY[0x1E6969080];
      *(v31 + 40) = v20;
      *(v31 + 48) = v22;
      v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v31);
      swift_setDeallocating();
      outlined copy of Data._Representation(v20, v22);
      outlined destroy of (Int, Any)(v32);
      *(inited + 72) = v33;
      v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySiypGTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDySiypGtMd, &_sSS_SDySiypGtMR);
      swift_arrayDestroy();
      v35 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v34);

      (v40)(v35, 0);

      outlined consume of Data._Representation(v20, v22);
      v36 = v39;
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v40();

      v36 = v13;
    }

    return outlined consume of Data?(v36, v15);
  }

  else
  {
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    (v40)(v17, 0);
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiypGMd, &_sSDySiypGMR);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    outlined init with take of Any(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    outlined init with take of Any(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = outlined init with take of Any(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id LACCompanionAuthenticationProviderDummy.__allocating_init(companion:replyQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate] = 0;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion] = a1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LACCompanionAuthenticationProviderDummy.init(companion:replyQueue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate] = 0;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t LACCompanionAuthenticationProviderDummy.authenticate(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v4 + 16))(a1, v6, v3);
  (*(v4 + 56))(a1, 0, 1, v3);
  $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(v1, v6);
  return (*(v4 + 8))(v6, v3);
}

void $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
  if (v13 == 2)
  {
    v14 = [objc_opt_self() isMacCompanionSessionActive];
    if (!v14)
    {
LABEL_9:
      v22[1] = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue);
      v15 = swift_allocObject();
      v23 = v7;
      v16 = v5;
      v17 = v15;
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
      v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      (*(v11 + 32))(v19 + v18, v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = partial apply for closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:);
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_7;
      v20 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v26 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v21 = v25;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B2722D20](0, v9, v21, v20);
      _Block_release(v20);
      (*(v16 + 8))(v21, v4);
      (*(v24 + 8))(v9, v23);

      return;
    }
  }

  else
  {
    if (v13 != 4)
    {
      goto LABEL_9;
    }

    v14 = [objc_opt_self() isVisionCompanionSessionActive];
    if (!v14)
    {
      goto LABEL_9;
    }
  }
}

id LACCompanionAuthenticationProviderDummy.cancelAuthentication(with:)(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
  if (v2 == 2)
  {
    result = [objc_opt_self() isMacCompanionSessionActive];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v2 == 4)
  {
    result = [objc_opt_self() isVisionCompanionSessionActive];
    if (result)
    {
LABEL_6:

      v3 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
      result = swift_beginAccess();
      v4 = *(v1 + v3);
      if (v4)
      {
        swift_unknownObjectRetain();
        v5 = v1;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v7 = objc_opt_self();
        v8 = MEMORY[0x1B27229A0](0xD00000000000001CLL, 0x80000001B0355640);
        v9 = [v7 errorWithCode:-4 debugDescription:v8];

        v10 = _convertErrorToNSError(_:)();
        [v4 authenticationProvider:v5 didFailAuthenticationWithID:isa error:v10];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id LACCompanionAuthenticationProviderDummy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACCompanionAuthenticationProviderDummy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
      swift_beginAccess();
      v5 = *&v3[v4];
      if (v5)
      {
        swift_unknownObjectRetain();

        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v9 = objc_opt_self();
          v10 = MEMORY[0x1B27229A0](0xD000000000000026, 0x80000001B03557D0);
          v11 = [v9 errorWithCode:-1 debugDescription:v10];

          v12 = _convertErrorToNSError(_:)();
          [v5 authenticationProvider:v7 didFailAuthenticationWithID:isa error:v12];

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t outlined destroy of (Int, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_yptMd, &_sSi_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized LACCompanionAuthenticationProviderDummy.domainState(for:completion:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isCompanionDeviceMocked])
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v9 + 8))(v11, v8);
    static String.Encoding.utf8.getter();
    v12 = String.data(using:allowLossyConversion:)();
    v14 = v13;

    (*(v5 + 8))(v7, v4);
    if (v14 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      outlined copy of Data._Representation(v12, v14);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v12, v14);
    }

    v17 = [objc_opt_self() createHashForDomainState_];

    if (v17)
    {
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySiypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySiypGtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0342810;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_yptGMd, &_ss23_ContiguousArrayStorageCySi_yptGMR);
      v22 = swift_initStackObject();
      v37 = v12;
      v35 = xmmword_1B0342820;
      *(v22 + 16) = xmmword_1B0342820;
      v23 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
      *(v22 + 32) = v23;
      v24 = v22 + 32;
      *(v22 + 64) = MEMORY[0x1E69E6370];
      *(v22 + 40) = 1;
      v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v22);
      swift_setDeallocating();
      outlined destroy of (Int, Any)(v24);
      *(inited + 48) = v25;
      *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 64) = v26;
      v27 = swift_initStackObject();
      *(v27 + 32) = v23;
      v28 = v27 + 32;
      *(v27 + 16) = v35;
      *(v27 + 64) = MEMORY[0x1E6969080];
      v29 = v36;
      *(v27 + 40) = v36;
      *(v27 + 48) = v19;
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_ypTt0g5Tf4g_n(v27);
      swift_setDeallocating();
      outlined copy of Data._Representation(v29, v19);
      outlined destroy of (Int, Any)(v28);
      *(inited + 72) = v30;
      v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySiypGTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SDySiypGtMd, &_sSS_SDySiypGtMR);
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v31);

      v32 = Dictionary._bridgeToObjectiveC()().super.isa;
      (*(a2 + 16))(a2, v32, 0);

      outlined consume of Data._Representation(v29, v19);
      v33 = v37;
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v34 = Dictionary._bridgeToObjectiveC()().super.isa;
      (*(a2 + 16))(a2, v34, 0);

      v33 = v12;
    }

    outlined consume of Data?(v33, v14);
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v37 = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, v37, 0);

    v16 = v37;
  }
}

void partial apply for closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)()
{
  type metadata accessor for UUID();
  v1 = *(v0 + 16);

  closure #1 in $defer #1 () in LACCompanionAuthenticationProviderDummy.authenticate(with:)(v1);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *closure #1 in LACCompanionAuthenticationCoordinator.mockedAuthProvider.getter(void *a1)
{
  v2 = [a1 companion];
  v3 = [a1 replyQueue];
  v4 = type metadata accessor for LACCompanionAuthenticationProviderDummy();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate] = 0;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion] = v2;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_replyQueue] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_delegate;
  swift_beginAccess();
  *&v6[v7] = a1;
  swift_unknownObjectRelease();
  v8 = a1;
  return v6;
}

id LACCompanionAuthenticationCoordinator.init(companion:reply:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCompanion:a1 replyQueue:a2];

  return v3;
}

char *LACCompanionAuthenticationCoordinator.init(companion:reply:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider] = 0;
  v5 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  *&v2[v5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = [objc_allocWithZone(LACCompanionAuthenticationProviderSharing) initForCompanion:a1 replyQueue:a2];
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider] = v6;
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator_companion] = a1;
  *&v2[OBJC_IVAR___LACCompanionAuthenticationCoordinator_replyQueue] = a2;
  v13.receiver = v2;
  v13.super_class = LACCompanionAuthenticationCoordinator;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider];
  v10 = v8;
  [v9 setDelegate_];
  v11 = [objc_opt_self() sharedInstance];
  [v11 addObserver:v10 notification:@"com.apple.LocalAuthentication.GlobalDomainDidChange"];

  return v10;
}

uint64_t LACCompanionAuthenticationCoordinator.description.getter()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();

  v7 = v1;
  MEMORY[0x1B2722A80](0xD000000000000011, 0x80000001B0355800);
  v2 = NSStringFromLACCompanionType([v0 companion]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2722A80](v3, v5);

  return v7;
}

id LACCompanionAuthenticationCoordinator.isAvailable.getter()
{
  v1 = [objc_msgSend(v0 authenticationProvider)];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t LACCompanionAuthenticationCoordinator.domainState(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 authenticationProvider];
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_8;
  v8 = _Block_copy(v10);

  [v7 domainStateForRequest:a1 completion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

uint64_t LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 replyQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v13, v10, v17);
  _Block_release(v17);

  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void closure #1 in LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v78 = a3;
  v79 = a4;
  v5 = type metadata accessor for Logger();
  v81 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v74 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v74 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v27 = a2;
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_7:
    v32 = outlined destroy of AsyncStream<()>.Continuation?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v33 = LACLogABM(v32);
    v34 = v77;
    Logger.init(_:)();
    v35 = v27;
    swift_unknownObjectRetain();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543618;
      swift_beginAccess();
      v40 = swift_unknownObjectWeakLoadStrong();
      *(v38 + 4) = v40;
      *v39 = v40;
      *(v38 + 12) = 1026;
      *(v38 + 14) = [v35 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v36, v37, "%{public}@ Unable to start companion authentication for request: %{public}u", v38, 0x12u);
      outlined destroy of AsyncStream<()>.Continuation?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v39, -1, -1);
      MEMORY[0x1B27246A0](v38, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v81 + 8))(v34, v5);
    v41 = objc_opt_self();
    v42 = MEMORY[0x1B27229A0](0xD000000000000026, 0x80000001B03557D0);
    v43 = [v41 errorWithCode:-1000 debugDescription:v42];

    v44 = v43;
    (v78)(0, v43);

    return;
  }

  v25 = Strong;
  v74 = v19;
  v76 = v5;
  v26 = [Strong authenticationProvider];

  v27 = a2;
  v28 = [v26 authenticateWithRequest_];
  swift_unknownObjectRelease();
  if (v28)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v80;
  (*(v16 + 56))(v12, v29, 1, v15);
  outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v12, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = (*(v16 + 48))(v14, 1, v15);
  v5 = v76;
  if (v31 == 1)
  {
    goto LABEL_7;
  }

  v45 = *(v16 + 32);
  v45(v30, v14, v15);
  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  v47 = v15;
  v48 = v16;
  v77 = v47;
  if (v46)
  {
    v49 = v46;
    (*(v16 + 16))(v22, v30, v47);
    type metadata accessor for LACCompanionAuthenticationPendingRequest(0);
    v50 = swift_allocObject();
    v45(v50 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_identifier, v22, v47);
    *(v50 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request) = a2;
    v51 = (v50 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion);
    v52 = v79;
    *v51 = v78;
    v51[1] = v52;
    v53 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
    swift_beginAccess();
    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *&v49[v53];
    *&v49[v53] = 0x8000000000000000;
    v55 = v50;
    v30 = v80;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v80, isUniquelyReferenced_nonNull_native);
    *&v49[v53] = v82;
    v47 = v77;
    swift_endAccess();
  }

  v56 = LACLogABM(v46);
  v57 = v75;
  Logger.init(_:)();
  v58 = v74;
  (*(v48 + 16))(v74, v30, v47);
  swift_unknownObjectRetain_n();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v78 = v62;
    v79 = swift_slowAlloc();
    v82 = v79;
    *v61 = 138543874;
    swift_beginAccess();
    v63 = swift_unknownObjectWeakLoadStrong();
    *(v61 + 4) = v63;
    *v62 = v63;
    *(v61 + 12) = 2082;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v64 = v77;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = *(v48 + 8);
    v68(v58, v64);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v82);

    *(v61 + 14) = v69;
    *(v61 + 22) = 1026;
    LODWORD(v69) = [a2 identifier];
    swift_unknownObjectRelease();
    *(v61 + 24) = v69;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1B0233000, v59, v60, "%{public}@ Did start companion session with id: %{public}s for request %{public}u", v61, 0x1Cu);
    v70 = v78;
    outlined destroy of AsyncStream<()>.Continuation?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v70, -1, -1);
    v71 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x1B27246A0](v71, -1, -1);
    MEMORY[0x1B27246A0](v61, -1, -1);

    (*(v81 + 8))(v75, v76);
    v68(v80, v64);
  }

  else
  {

    swift_unknownObjectRelease_n();
    v72 = *(v48 + 8);
    v73 = v77;
    v72(v58, v77);
    (*(v81 + 8))(v57, v76);
    v72(v30, v73);
  }
}

Swift::Void __swiftcall LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:)(Swift::UInt32 forRequestIdentifier)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = type metadata accessor for DispatchQoS();
  v8 = *(v15[0] - 8);
  MEMORY[0x1EEE9AC00](v15[0]);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 replyQueue];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = forRequestIdentifier;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15[0]);
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:)(uint64_t a1, int a2)
{
  LODWORD(v105) = a2;
  v108 = type metadata accessor for UUID();
  v3 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v98 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v106 = v89 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v96 = v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v104 = v89 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v89 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v57 = v13;
    v54 = v6;
    v55 = v98;
LABEL_17:
    v77 = outlined destroy of AsyncStream<()>.Continuation?(v57, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
    v78 = LACLogABM(v77);
    v79 = v97;
    Logger.init(_:)();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1B0233000, v80, v81, "No authentication to cancel", v82, 2u);
      MEMORY[0x1B27246A0](v82, -1, -1);
    }

    return (*(v55 + 8))(v79, v54);
  }

  v107 = v14;
  v90 = v15;
  v91 = v13;
  v92 = v18;
  v89[0] = v5;
  v95 = v9;
  v93 = v26;
  v89[1] = a1;
  v94 = v6;
  v28 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  v29 = Strong;
  swift_beginAccess();
  v30 = *&v29[v28];

  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v101 = (v3 + 16);
  v103 = (v3 + 8);

  v37 = 0;
  v38 = v96;
  v99 = v30 + 64;
  v102 = v3;
  v100 = v30;
  if (v34)
  {
    while (1)
    {
      v39 = v37;
LABEL_9:
      v40 = __clz(__rbit64(v34)) | (v39 << 6);
      v41 = v104;
      (*(v3 + 16))(v104, *(v30 + 48) + *(v3 + 72) * v40, v108);
      v42 = *(*(v30 + 56) + 8 * v40);
      v43 = v107;
      *(v41 + *(v107 + 48)) = v42;
      outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v41, v38, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
      v44 = v106;
      outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v38, v106);
      v45 = *(*(v44 + *(v43 + 48)) + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request);
      v3 = v102;

      swift_unknownObjectRetain();

      v46 = [v45 identifier];
      swift_unknownObjectRelease();
      (*(v3 + 8))(v44, v108);
      if (v46 == v105)
      {
        break;
      }

      v34 &= v34 - 1;
      result = outlined destroy of AsyncStream<()>.Continuation?(v38, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
      v37 = v39;
      v30 = v100;
      v31 = v99;
      if (!v34)
      {
        goto LABEL_6;
      }
    }

    v49 = v91;
    outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v38, v91, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
    v47 = v90;
    v48 = *(v90 + 56);
    v50 = v49;
    v51 = 0;
LABEL_13:
    v52 = v107;
    v48(v50, v51, 1, v107);

    v53 = (*(v47 + 48))(v49, 1, v52) == 1;
    v54 = v94;
    v55 = v98;
    v56 = v95;
    v57 = v49;
    v58 = v92;
    if (!v53)
    {
      v59 = v93;
      v60 = outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v57, v93, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
      v61 = LACLogABM(v60);
      Logger.init(_:)();
      outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v59, v58);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        LODWORD(v104) = v63;
        v65 = v64;
        v66 = swift_slowAlloc();
        v101 = v66;
        v105 = swift_slowAlloc();
        v109[0] = v105;
        *v65 = 138543618;
        swift_beginAccess();
        v67 = swift_unknownObjectWeakLoadStrong();
        *(v65 + 4) = v67;
        *v66 = v67;
        *(v65 + 12) = 2082;
        v68 = v106;
        outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v58, v106);

        v69 = v89[0];
        v70 = v108;
        (*(v3 + 32))(v89[0], v68, v108);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        (*(v3 + 8))(v69, v70);
        outlined destroy of AsyncStream<()>.Continuation?(v58, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v109);

        *(v65 + 14) = v74;
        _os_log_impl(&dword_1B0233000, v62, v104, "%{public}@ Will cancel companion authentication for session: %{public}s", v65, 0x16u);
        v75 = v101;
        outlined destroy of AsyncStream<()>.Continuation?(v101, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v75, -1, -1);
        v76 = v105;
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x1B27246A0](v76, -1, -1);
        MEMORY[0x1B27246A0](v65, -1, -1);

        (*(v55 + 8))(v95, v54);
      }

      else
      {

        outlined destroy of AsyncStream<()>.Continuation?(v58, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        (*(v55 + 8))(v56, v54);
      }

      swift_beginAccess();
      v83 = swift_unknownObjectWeakLoadStrong();
      v84 = v93;
      if (v83)
      {
        v85 = v83;
        v86 = [v83 authenticationProvider];

        v87 = v106;
        outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(v84, v106);

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v103)(v87, v108);
        [v86 cancelAuthenticationWithID_];
        swift_unknownObjectRelease();
      }

      return outlined destroy of AsyncStream<()>.Continuation?(v84, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
    }

    goto LABEL_17;
  }

LABEL_6:
  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v35)
    {

      v47 = v90;
      v48 = *(v90 + 56);
      v49 = v91;
      v50 = v91;
      v51 = 1;
      goto LABEL_13;
    }

    v34 = *(v31 + 8 * v39);
    ++v37;
    if (v34)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall LACCompanionAuthenticationCoordinator.init()(LACCompanionAuthenticationCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t LACCompanionAuthenticationCoordinator.notificationCenter(_:didReceive:)(uint64_t a1, const __CFString *a2)
{
  result = LACDarwinNotificationsEqual(a2, @"com.apple.LocalAuthentication.GlobalDomainDidChange");
  if (result)
  {

    return LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()();
  }

  return result;
}

id LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()()
{
  v97 = type metadata accessor for DispatchWorkItemFlags();
  v0 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v2 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for UUID();
  v115 = *(v120 - 8);
  v4 = MEMORY[0x1EEE9AC00](v120);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v88 - v12;
  v102 = type metadata accessor for Logger();
  v14 = *(v102 - 8);
  v15 = MEMORY[0x1EEE9AC00](v102);
  v101 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v88 - v17;
  result = [objc_opt_self() companionAuthentication];
  if (result)
  {
    v113 = v13;
    v20 = result;
    v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v21;

    v23 = LACLogABM(v22);
    Logger.init(_:)();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B0233000, v24, v25, "Will simulate companion authentication success", v26, 2u);
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    v27 = *(v14 + 8);
    v100 = v14 + 8;
    v99 = v27;
    v27(v18, v102);
    v28 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
    v29 = v98;
    swift_beginAccess();
    v30 = *&v29[v28];
    v31 = *(v30 + 64);
    v92 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v91 = (v32 + 63) >> 6;
    v111 = v115 + 16;
    v114 = (v115 + 32);
    v108 = (v115 + 8);
    v90 = v123;
    v89 = (v0 + 8);
    v88 = (v2 + 8);
    v107 = v30;

    v35 = 0;
    v36 = v113;
    v116 = v11;
    v106 = v6;
    if (!v34)
    {
      goto LABEL_10;
    }

    do
    {
      while (1)
      {
        v37 = v35;
LABEL_17:
        v42 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v43 = v42 | (v37 << 6);
        v44 = v107;
        v45 = v115;
        v46 = v112;
        v47 = v120;
        (*(v115 + 16))(v112, *(v107 + 48) + *(v115 + 72) * v43, v120);
        v48 = *(*(v44 + 56) + 8 * v43);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        v50 = *(v49 + 48);
        v51 = *(v45 + 32);
        v11 = v116;
        v40 = v114;
        v51(v116, v46, v47);
        *&v11[v50] = v48;
        (*(*(v49 - 8) + 56))(v11, 0, 1, v49);

        v39 = v37;
        v36 = v113;
        v41 = MEMORY[0x1E69E7CC0];
        v6 = v106;
LABEL_18:
        outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(v11, v36, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetSgMR);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        if ((*(*(v52 - 8) + 48))(v36, 1, v52) == 1)
        {

          return outlined consume of Data._Representation(v110, v109);
        }

        v119 = v39;
        v53 = *(v36 + *(v52 + 48));
        v54 = *v40;
        (*v40)(v6, v36, v120);
        v55 = [*(v53 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request) acmContextData];
        v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v41);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v60 = Data._bridgeToObjectiveC()().super.isa;
        v117 = v56;
        v118 = v58;
        v61 = v41;
        v62 = v6;
        v63 = Data._bridgeToObjectiveC()().super.isa;
        LODWORD(v58) = MKBVerifyPasswordWithContext();

        if (v58)
        {
          break;
        }

        v72 = v98;
        v105 = [v98 replyQueue];
        v73 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v74 = [v72 authenticationProvider];
        v75 = v115;
        v76 = *(v115 + 16);
        v104 = v53;
        v77 = v112;
        v78 = v120;
        v76(v112, v62, v120);
        v79 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v73;
        *(v80 + 24) = v74;
        v103 = v73;
        v54((v80 + v79), v77, v78);
        v123[2] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess();
        v123[3] = v80;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v123[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v123[1] = &block_descriptor_55;
        v81 = _Block_copy(aBlock);

        swift_unknownObjectRetain();
        v82 = v94;
        static DispatchQoS.unspecified.getter();
        v121 = v61;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v83 = v96;
        v84 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v85 = v105;
        MEMORY[0x1B2722D20](0, v82, v83, v81);
        outlined consume of Data._Representation(v117, v118);
        _Block_release(v81);
        swift_unknownObjectRelease();

        v86 = v78;
        v36 = v113;
        (*v89)(v83, v84);
        (*v88)(v82, v95);
        (*(v115 + 8))(v62, v86);

        v35 = v119;
        v6 = v62;
        v11 = v116;
        if (!v34)
        {
          goto LABEL_10;
        }
      }

      v65 = v117;
      v66 = v118;
      v67 = LACLogABM(v64);
      v68 = v101;
      Logger.init(_:)();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1B0233000, v69, v70, "Passcode verification failed", v71, 2u);
        MEMORY[0x1B27246A0](v71, -1, -1);
      }

      outlined consume of Data._Representation(v65, v66);

      v99(v68, v102);
      v6 = v62;
      result = (*v108)(v62, v120);
      v35 = v119;
      v11 = v116;
    }

    while (v34);
LABEL_10:
    if (v91 <= v35 + 1)
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = v91;
    }

    v39 = v38 - 1;
    v40 = v114;
    v41 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v91)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
        (*(*(v87 - 8) + 56))(v11, 1, 1, v87);
        v34 = 0;
        goto LABEL_18;
      }

      v34 = *(v92 + 8 * v37);
      ++v35;
      if (v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = LACLogABM(v9);
  Logger.init(_:)();
  (*(v4 + 16))(v6, a2, v3);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v30 = v7;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v15 + 4) = Strong;
    v29 = v16;
    *v16 = Strong;
    *(v15 + 12) = 1026;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v28 = v14;
      v19 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
      swift_beginAccess();
      v20 = *&v18[v19];
      if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        swift_endAccess();

        v24 = *(v23 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_request);
        swift_unknownObjectRetain();

        LODWORD(v18) = [v24 identifier];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();

        LODWORD(v18) = 0;
      }

      LOBYTE(v14) = v28;
    }

    (*(v4 + 8))(v6, v3);
    *(v15 + 14) = v18;

    _os_log_impl(&dword_1B0233000, v13, v14, "%{public}@ Did start companion authentication for request %{public}u", v15, 0x12u);
    v25 = v29;
    outlined destroy of AsyncStream<()>.Continuation?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v25, -1, -1);
    MEMORY[0x1B27246A0](v15, -1, -1);

    v7 = v30;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didCompleteAuthenticationWith:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for Logger();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    v43 = LACLogABM(Strong);
    Logger.init(_:)();
    v44 = v3;
    (*(v4 + 16))(v12, a2, v3);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v47 = 136446210;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v4 + 8))(v12, v44);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v62);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1B0233000, v45, v46, "Companion authentication finished for session: %{public}s but there is no pending authentication for it", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B27246A0](v48, -1, -1);
      MEMORY[0x1B27246A0](v47, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v12, v44);
    }

    return (*(v59 + 8))(v17, v60);
  }

  v19 = Strong;
  v20 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  swift_beginAccess();
  v21 = *&v19[v20];
  if (!*(v21 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v23 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_9;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  v26 = v3;
  if (v25)
  {
    v27 = v25;
    (*(v4 + 16))(v10, a2, v3);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v10);
    swift_endAccess();
  }

  v28 = LACLogABM(v25);
  v29 = v58;
  Logger.init(_:)();
  (*(v4 + 16))(v7, a2, v26);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v57 = v24;
    v33 = v32;
    v34 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61 = v56;
    *v33 = 138543618;
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    *(v33 + 4) = v35;
    *v34 = v35;
    v36 = v34;
    *(v33 + 12) = 2082;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v4 + 8))(v7, v26);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v61);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_1B0233000, v30, v31, "%{public}@ Companion authentication successfully finished for session: %{public}s", v33, 0x16u);
    outlined destroy of AsyncStream<()>.Continuation?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v36, -1, -1);
    v41 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1B27246A0](v41, -1, -1);
    v42 = v33;
    v24 = v57;
    MEMORY[0x1B27246A0](v42, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v26);
  }

  (*(v59 + 8))(v29, v60);
  v54 = *(v24 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v54();
}

uint64_t @objc LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v15 = a1;
  specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(v14, a5, a6, a7);
  swift_unknownObjectRelease();

  return (*(v12 + 8))(v14, v11);
}

uint64_t closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(uint64_t a1, void *a2, void *a3)
{
  v75 = a2;
  v4 = type metadata accessor for Logger();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v70 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v72 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v20 = Strong;
  v21 = OBJC_IVAR___LACCompanionAuthenticationCoordinator_pendingSessions;
  swift_beginAccess();
  v22 = *&v20[v21];
  if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v75), (v24 & 1) == 0))
  {
    swift_endAccess();

LABEL_9:
    v51 = LACLogABM(Strong);
    Logger.init(_:)();
    (*(v11 + 16))(v14, v75, v10);
    v52 = a3;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v11;
      v75 = v7;
      v57 = v55;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77[0] = v59;
      *v57 = 136446466;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v10;
      v62 = a3;
      v64 = v63;
      (*(v56 + 8))(v14, v61);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v64, v77);

      *(v57 + 4) = v65;
      *(v57 + 12) = 2112;
      v66 = v62;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v67;
      *v58 = v67;
      _os_log_impl(&dword_1B0233000, v53, v54, "Companion authentication failed for session: %{public}s with error: %@ but there is no pending authentication for it", v57, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v58, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B27246A0](v59, -1, -1);
      MEMORY[0x1B27246A0](v57, -1, -1);

      return (*(v73 + 8))(v75, v74);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
      return (*(v73 + 8))(v7, v74);
    }
  }

  v25 = v9;
  v26 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  v71 = v26;

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  v28 = v10;
  v29 = v11;
  v30 = v75;
  if (v27)
  {
    v31 = v27;
    (*(v11 + 16))(v18, v75, v28);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v18);
    swift_endAccess();
  }

  v32 = LACLogABM(v27);
  v33 = v25;
  Logger.init(_:)();
  v34 = v72;
  (*(v29 + 16))(v72, v30, v28);

  v35 = a3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = v75;
    *v38 = 138543874;
    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    *(v38 + 4) = v40;
    *v39 = v40;
    *(v38 + 12) = 2082;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v41 = v37;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v34;
    v44 = v42;
    v46 = v45;
    (*(v29 + 8))(v43, v28);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v76);

    *(v38 + 14) = v47;
    *(v38 + 22) = 2112;
    v48 = a3;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 24) = v49;
    v39[1] = v49;
    _os_log_impl(&dword_1B0233000, v36, v41, "%{public}@ Companion authentication failed for session: %{public}s with error: %@", v38, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v39, -1, -1);
    v50 = v75;
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x1B27246A0](v50, -1, -1);
    MEMORY[0x1B27246A0](v38, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v34, v28);
  }

  (*(v73 + 8))(v33, v74);
  v69 = *(v71 + OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_completion);

  v69(0, a3);
}

uint64_t LACCompanionAuthenticationPendingRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCoreP33_7C23A2E67F893FA563A4E1A97AE88CD340LACCompanionAuthenticationPendingRequest_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v4 authenticationProvider:a2 didCompleteAuthenticationWithID:isa];
  }
}

uint64_t specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didStartAuthenticationWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v21[1] = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v21[0] = [v4 replyQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v21[0];
  MEMORY[0x1B2722D20](0, v11, v8, v18);
  _Block_release(v18);

  (*(v26 + 8))(v8, v6);
  (*(v24 + 8))(v11, v25);
}

uint64_t specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [v3 replyQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v12 + 32))(v18 + v16, v14, v11);
  v19 = v25;
  *(v18 + v17) = v25;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34;
  v20 = _Block_copy(aBlock);

  v21 = v19;
  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  MEMORY[0x1B2722D20](0, v10, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);
}

unint64_t type metadata accessor for LACCompanionAuthenticationCoordinator()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationCoordinator;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationCoordinator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationCoordinator);
  }

  return result;
}

uint64_t type metadata accessor for LACCompanionAuthenticationPendingRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACCompanionAuthenticationPendingRequest;
  if (!type metadata singleton initialization cache for LACCompanionAuthenticationPendingRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACCompanionAuthenticationPendingRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(v3, (v0 + v2), v4);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in LACCompanionAuthenticationCoordinator.authenticationProvider(_:didCompleteAuthenticationWith:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void partial apply for closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()()
{
  type metadata accessor for UUID();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  closure #1 in LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()(v1, v2);
}

uint64_t outlined init with copy of (key: UUID, value: LACCompanionAuthenticationPendingRequest)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMd, &_s10Foundation4UUIDV3key_23LocalAuthenticationCore012LACCompanionE14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLC5valuetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: UUID, value: LACCompanionAuthenticationPendingRequest)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id LACCredentialExtractablePasswordAuthorizer.init(acmHelper:)(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v1 initWithACMHelper:a1 featureFlags:v3 signPoster:v4];

  swift_unknownObjectRelease();
  return v5;
}

id LACCredentialExtractablePasswordAuthorizer.init(acmHelper:featureFlags:signPoster:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithACMHelper:a1 featureFlags:a2 signPoster:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

{
  *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_acmHelper) = a1;
  *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) = a2;
  *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster) = a3;
  v5.super_class = LACCredentialExtractablePasswordAuthorizer;
  return objc_msgSendSuper2(&v5, sel_init);
}

void LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractableCredential(_:)(void *a1)
{
  v3 = v1;
  v23 = type metadata accessor for Logger();
  v22 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v7.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v8 = LACCredentialExtractablePasswordAuthorizer.fetchExtractablePasswordCredentialAge()();
  v9 = v2;
  if (!v2)
  {
    v10 = v8;

    v7.super.super.isa = v10;
    specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractablePasswordCredential(_:credentialAge:)(a1, v7.super.super.isa);

    v9 = 0;
  }

  v11 = *(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster);
  v12 = [v11 extractableCredentialReadAttemptWithAge:v7.super.super.isa accessAllowed:v9 == 0];
  [v12 send];

  if (v9)
  {
    v13 = [a1 signingID];
    if (!v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = MEMORY[0x1B27229A0](v14);
    }

    v15 = [v11 extractableCredentialFailedReadAttemptWithAge:v7.super.super.isa signingID:v13];

    [v15 send];
    v16 = [*(v3 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) featureFlagExtractableCredentialProtectionEnabled];
    if (v16)
    {
      swift_willThrow();
    }

    else
    {
      v17 = LACLogCredentials(v16);
      Logger.init(_:)();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1B0233000, v18, v19, "Temporarily waiving access requirements", v20, 2u);
        MEMORY[0x1B27246A0](v20, -1, -1);
      }

      (*(v22 + 8))(v6, v23);
    }
  }

  else
  {
  }
}

id LACCredentialExtractablePasswordAuthorizer.fetchExtractablePasswordCredentialAge()()
{
  v29[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_acmHelper);
  v29[0] = 0;
  v6 = [v5 ageForDataWithType:7 error:v29];
  if (v6)
  {
    v7 = v29[0];
  }

  else
  {
    v8 = v29[0];
    v9 = _convertNSErrorToError(_:)();

    v10 = swift_willThrow();
    v11 = LACLogCredentials(v10);
    Logger.init(_:)();
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = v2;
      v16 = v15;
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004BLL, 0x80000001B0355C30, v29);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v26 = v14;
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v29);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_1B0233000, v13, v26, "%s (%s)", v16, 0x16u);
      v20 = v27;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v20, -1, -1);
      MEMORY[0x1B27246A0](v16, -1, -1);

      (*(v28 + 8))(v4, v1);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    v21 = objc_opt_self();
    v22 = _convertErrorToNSError(_:)();
    v23 = MEMORY[0x1B27229A0](0xD00000000000004BLL, 0x80000001B0355C30);
    [v21 errorWithCode:-1000 underlyingError:v22 debugDescription:v23];

    swift_willThrow();
  }

  return v6;
}

void LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanWriteExtractableCredential(_:)(void *a1)
{
  v4 = type metadata accessor for Logger();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanWriteExtractablePasswordCredential(_:)(a1);
  if (v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_signPoster);
  v9 = [v8 extractableCredentialWriteAttemptWithAccessAllowed_];
  [v9 send];

  if (v7)
  {
    v10 = [a1 signingID];
    if (!v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x1B27229A0](v11);
    }

    v12 = [v8 extractableCredentialFailedWriteAttemptWithSigningID_];

    [v12 send];
    v13 = [*(v1 + OBJC_IVAR___LACCredentialExtractablePasswordAuthorizer_featureFlags) featureFlagExtractableCredentialProtectionEnabled];
    if (v13)
    {
      swift_willThrow();
    }

    else
    {
      v14 = LACLogCredentials(v13);
      Logger.init(_:)();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B0233000, v15, v16, "Temporarily waiving access requirements", v17, 2u);
        MEMORY[0x1B27246A0](v17, -1, -1);
      }

      (*(v19 + 8))(v6, v4);
    }
  }
}

uint64_t @objc LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractableCredential(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
  return 1;
}

void __swiftcall LACCredentialExtractablePasswordAuthorizer.init()(LACCredentialExtractablePasswordAuthorizer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanReadExtractablePasswordCredential(_:credentialAge:)(void *a1, __CFString *a2)
{
  v41 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  if (![a1 isFirstPartyClient])
  {
    goto LABEL_5;
  }

  v40 = v9;
  v10 = v4;
  v11 = v3;
  v12 = [a1 signingID];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of LACCredentialExtractablePasswordAuthorizer.checkOriginatorIsExemptedFromAccessRequirements(_:));
  swift_arrayDestroy();
  v17._object = 0x80000001B0355C10;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  if (String.hasPrefix(_:)(v17))
  {
  }

  v19 = specialized Set.contains(_:)(v13, v15, v16);

  v3 = v11;
  v4 = v10;
  v9 = v40;
  if ((v19 & 1) == 0)
  {
LABEL_5:
    v20 = @"com.apple.private.LocalAuthentication.ExtractCredential";
    v21 = [a1 checkEntitlement_];
    v22 = [a1 checkEntitlement_];
    if ((v21 & 1) == 0 && !v22)
    {
      v23 = LACLogCredentials(v22);
      Logger.init(_:)();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        *v26 = 136315138;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = @"com.apple.private.LocalAuthentication.ExtractCredential";
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v42);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1B0233000, v24, v25, "Extracting a LACredentialTypeExtractablePassword requires the '%s' entitlement", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B27246A0](v27, -1, -1);
        MEMORY[0x1B27246A0](v26, -1, -1);

        (*(v4 + 8))(v7, v3);
        v20 = v41;
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }

LABEL_14:
      [objc_opt_self() missingEntitlementError_];
      return swift_willThrow();
    }

    result = [(__CFString *)v41 unsignedIntegerValue];
    if (result >= 0x927C1)
    {
      v20 = @"com.apple.private.LocalAuthentication.ContextData.ExtendedMaxAge";
      result = [a1 checkEntitlement_];
      if ((result & 1) == 0)
      {
        v31 = LACLogCredentials(result);
        Logger.init(_:)();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v40 = v9;
          v36 = v35;
          v42 = v35;
          *v34 = 134218242;
          *(v34 + 4) = 600;
          *(v34 + 12) = 2080;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v42);

          *(v34 + 14) = v39;
          _os_log_impl(&dword_1B0233000, v32, v33, "Extracting a LACredentialTypeExtractablePassword after %ld secs requires the '%s' entitlement", v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x1B27246A0](v36, -1, -1);
          MEMORY[0x1B27246A0](v34, -1, -1);

          (*(v4 + 8))(v40, v3);
        }

        else
        {

          (*(v4 + 8))(v9, v3);
        }

        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t specialized LACCredentialExtractablePasswordAuthorizer.checkOriginatorCanWriteExtractablePasswordCredential(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isFirstPartyClient])
  {
    goto LABEL_5;
  }

  v6 = [a1 signingID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of LACCredentialExtractablePasswordAuthorizer.checkOriginatorIsExemptedFromAccessRequirements(_:));
  swift_arrayDestroy();
  v11._object = 0x80000001B0355C10;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  if (String.hasPrefix(_:)(v11))
  {
  }

  v13 = specialized Set.contains(_:)(v7, v9, v10);

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = [a1 checkEntitlement_];
    result = [a1 checkEntitlement_];
    if ((v14 & 1) == 0 && (result & 1) == 0)
    {
      v15 = LACLogCredentials(result);
      Logger.init(_:)();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v27 = v19;
        *v18 = 136315138;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);
        v26 = v2;
        v23 = v3;
        v24 = v22;

        *(v18 + 4) = v24;
        _os_log_impl(&dword_1B0233000, v16, v17, "Stashing a LACredentialTypeExtractablePassword requires the '%s' entitlement", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B27246A0](v19, -1, -1);
        MEMORY[0x1B27246A0](v18, -1, -1);

        (*(v23 + 8))(v5, v26);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      [objc_opt_self() missingEntitlementError_];
      return swift_willThrow();
    }
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id LACCompanionAuthenticationController.isSessionActive.getter()
{
  v1 = [objc_msgSend(v0 sessionMonitor)];
  swift_unknownObjectRelease();
  return v1;
}

id LACCompanionAuthenticationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 replyQueue:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

char *LACCompanionAuthenticationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_companion] = 0;
  v11 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  *&v5[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_authenticator] = a1;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_clientInfoProvider] = a2;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_environmentProvider] = a3;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_sessionMonitor] = a4;
  *&v5[OBJC_IVAR___LACCompanionAuthenticationController_replyQueue] = a5;
  v17.receiver = v5;
  v17.super_class = LACCompanionAuthenticationController;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  v14 = *&v13[OBJC_IVAR___LACCompanionAuthenticationController_sessionMonitor];
  v15 = v13;
  [v14 addObserver_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

uint64_t LACCompanionAuthenticationController.domainState(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 authenticator];
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_9;
  v8 = _Block_copy(v10);

  [v7 domainStateForRequest:a1 completion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

void LACCompanionAuthenticationController.processRequest(_:configuration:completion:)(void *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v51 = a2;
  v8 = type metadata accessor for Logger();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = [v5 replyQueue];
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if ([v5 canProcessRequest_])
    {
      type metadata accessor for LACCompanionAuthenticationControllerPendingRequest(0);
      v19 = swift_allocObject();
      UUID.init()();
      *(v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
      *(v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
      (*(v11 + 56))(v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, 1, 1, v10);
      *(v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
      swift_unknownObjectRetain();
      v20 = [v51 nextProcessor];
      *(v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v20;
      v21 = (v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
      *v21 = v55;
      v21[1] = a4;
      *(v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = 0;
      v22 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v50 = *(v11 + 16);
      v50(v13, v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v10);
      v23 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *&v5[v23];
      *&v5[v23] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
      v25 = *(v11 + 8);
      v47[1] = v11 + 8;
      v49 = v25;
      v25(v13, v10);
      *&v5[v23] = v56;
      v26 = swift_endAccess();
      v27 = LACLogABM(v26);
      v28 = v54;
      Logger.init(_:)();
      v55 = a1;
      swift_unknownObjectRetain_n();

      v29 = v5;
      v30 = Logger.logObject.getter();
      LODWORD(v23) = static os_log_type_t.default.getter();

      v31 = v29;

      v48 = v23;
      v32 = v23;
      v33 = v30;
      if (os_log_type_enabled(v30, v32))
      {
        v34 = swift_slowAlloc();
        v51 = v22;
        v35 = v34;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v57[0] = v37;
        *v35 = 138543874;
        v38 = v31;
        *(v35 + 4) = v31;
        *v36 = v31;
        v39 = v36;
        *(v35 + 12) = 2082;
        v50(v13, &v51[v19], v10);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v40 = v38;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        v49(v13, v10);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v57);

        *(v35 + 14) = v44;
        *(v35 + 22) = 1024;
        LODWORD(v44) = [v55 identifier];
        swift_unknownObjectRelease();
        *(v35 + 24) = v44;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v33, v48, "%{public}@ Registered pending request: %{public}s for evaluation request rid: %u", v35, 0x1Cu);
        outlined destroy of AsyncStream<()>.Continuation?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v39, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B27246A0](v37, -1, -1);
        v45 = v35;
        v22 = v51;
        MEMORY[0x1B27246A0](v45, -1, -1);

        (*(v52 + 8))(v54, v53);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v52 + 8))(v28, v53);
      }

      LACCompanionAuthenticationController.processAndEvaluateRequest(with:)(&v22[v19]);
    }

    else
    {
      v46 = [objc_opt_self() resultWithNext_];
      (v55)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.__allocating_init(request:configuration:completion:state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  UUID.init()();
  *(v10 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
  *(v10 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
  swift_unknownObjectRetain();
  v13 = [a2 nextProcessor];
  swift_unknownObjectRelease();

  *(v10 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v13;
  v14 = (v10 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  *v14 = a3;
  v14[1] = a4;
  *(v10 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = a5;
  return v10;
}

void LACCompanionAuthenticationController.processAndEvaluateRequest(with:)(char *a1)
{
  v2 = v1;
  v117 = a1;
  v120[3] = *MEMORY[0x1E69E9840];
  v119 = type metadata accessor for UUID();
  v3 = *(v119 - 1);
  v4 = MEMORY[0x1EEE9AC00](v119);
  v115 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v107 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v107 - v9;
  v118 = type metadata accessor for Logger();
  v116 = *(v118 - 8);
  v11 = MEMORY[0x1EEE9AC00](v118);
  v113 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v107 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v107 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v107 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = [v2 replyQueue];
  (*(v21 + 104))(v23, *MEMORY[0x1E69E8020], v20);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
  }

  v25 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v26 = *&v2[v25];
  v27 = v117;
  if (*(v26 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v117), (v29 & 1) != 0))
  {
    v30 = *(*(v26 + 56) + 8 * v28);
    swift_endAccess();

    v32 = LACLogABM(v31);
    Logger.init(_:)();
    v33 = v27;
    v34 = v119;
    v108 = *(v3 + 16);
    v109 = v3 + 16;
    v108(v10, v33, v119);
    v35 = v2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v38 = os_log_type_enabled(v36, v37);
    v111 = v3;
    if (v38)
    {
      v39 = v3;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v112 = v30;
      v42 = v41;
      v107 = swift_slowAlloc();
      v120[0] = v107;
      *v40 = 138543618;
      *(v40 + 4) = v35;
      *v42 = v35;
      *(v40 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v43 = v35;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v110 = *(v39 + 8);
      v110(v10, v119);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v120);
      v48 = v118;
      v34 = v119;

      *(v40 + 14) = v47;
      _os_log_impl(&dword_1B0233000, v36, v37, "%{public}@ Will process request: %{public}s", v40, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = v42;
      v30 = v112;
      MEMORY[0x1B27246A0](v49, -1, -1);
      v50 = v107;
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x1B27246A0](v50, -1, -1);
      MEMORY[0x1B27246A0](v40, -1, -1);

      v51 = *(v116 + 8);
      v51(v19, v48);
    }

    else
    {

      v110 = *(v3 + 8);
      v110(v10, v34);
      v51 = *(v116 + 8);
      v48 = v118;
      v51(v19, v118);
    }

    v68 = [v35 isSessionActive];
    v69 = v115;
    if (v68)
    {
      v70 = *(v30 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);
      v120[0] = 0;
      if ([v35 canAuthenticateRequest:v70 availabilityError:0 error:v120])
      {
        v71 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
        v72 = v120[0];
        LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)((v30 + v71));
      }

      else
      {
        v112 = v30;
        v81 = v120[0];
        v82 = _convertNSErrorToError(_:)();

        v83 = swift_willThrow();
        v84 = LACLogABM(v83);
        v85 = v113;
        Logger.init(_:)();
        v108(v69, v117, v34);
        v86 = v35;
        v87 = v82;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v120[0] = v119;
          *v90 = 138543874;
          *(v90 + 4) = v86;
          *v91 = v86;
          *(v90 + 12) = 2082;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v92 = v69;
          v93 = v86;
          v94 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v117) = v89;
          v95 = v94;
          v97 = v96;
          v110(v92, v34);
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v120);

          *(v90 + 14) = v98;
          *(v90 + 22) = 2112;
          v99 = v82;
          v100 = _swift_stdlib_bridgeErrorToNSError();
          *(v90 + 24) = v100;
          v91[1] = v100;
          _os_log_impl(&dword_1B0233000, v88, v117, "%{public}@ Failing request: %{public}s with error: %@ - Authentication not supported", v90, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v91, -1, -1);
          v101 = v119;
          __swift_destroy_boxed_opaque_existential_0(v119);
          MEMORY[0x1B27246A0](v101, -1, -1);
          MEMORY[0x1B27246A0](v90, -1, -1);

          v102 = v113;
        }

        else
        {

          v110(v69, v34);
          v102 = v85;
        }

        v51(v102, v118);
        v103 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
        v104 = objc_opt_self();
        v105 = _convertErrorToNSError(_:)();
        v106 = [v104 resultWithFailure_];

        LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v112 + v103, v106);
      }
    }

    else
    {
      v73 = v30;
      v74 = LACLogABM(v68);
      Logger.init(_:)();
      v75 = v35;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138543362;
        *(v78 + 4) = v75;
        *v79 = v75;
        v80 = v75;
        _os_log_impl(&dword_1B0233000, v76, v77, "%{public}@ Companion session is not active, evaluating right away", v78, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v79, -1, -1);
        MEMORY[0x1B27246A0](v78, -1, -1);
      }

      v51(v114, v48);
      LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v73 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, 0);
    }
  }

  else
  {
    v52 = swift_endAccess();
    v53 = LACLogABM(v52);
    Logger.init(_:)();
    v54 = v27;
    v55 = v119;
    (*(v3 + 16))(v8, v54, v119);
    v56 = v2;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v117 = v15;
      v60 = v59;
      v61 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v120[0] = v115;
      *v60 = 138543618;
      *(v60 + 4) = v56;
      *v61 = v56;
      *(v60 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = v56;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v3 + 8))(v8, v55);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v120);

      *(v60 + 14) = v66;
      _os_log_impl(&dword_1B0233000, v57, v58, "%{public}@ Cannot process request: %{public}s, no such pending request", v60, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v61, -1, -1);
      v67 = v115;
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x1B27246A0](v67, -1, -1);
      MEMORY[0x1B27246A0](v60, -1, -1);

      (*(v116 + 8))(v117, v118);
    }

    else
    {

      (*(v3 + 8))(v8, v55);
      (*(v116 + 8))(v15, v118);
    }
  }
}

void LACCompanionAuthenticationController.postProcessRequest(_:result:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v29 = a4;
  v28 = type metadata accessor for Logger();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = LACCompanionAuthenticationController.postProcessRequest(_:result:)(a1, a2);
  v12 = LACLogABM(v11);
  Logger.init(_:)();
  swift_unknownObjectRetain_n();
  v13 = v4;
  v14 = a2;
  v15 = v11;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 138544130;
    *(v19 + 4) = v13;
    *v20 = v13;
    *(v19 + 12) = 1026;
    v21 = v13;
    v22 = [a1 identifier];
    swift_unknownObjectRelease();
    *(v19 + 14) = v22;
    swift_unknownObjectRelease();
    *(v19 + 18) = 2112;
    *(v19 + 20) = v14;
    *(v19 + 28) = 2112;
    *(v19 + 30) = v15;
    v20[1] = v14;
    v20[2] = v15;
    v23 = v14;
    v24 = v15;
    _os_log_impl(&dword_1B0233000, v16, v17, "%{public}@ Processed result for rid: %{public}u original: %@, processed: %@", v19, 0x26u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v20, -1, -1);
    v25 = v19;
    a3 = v27;
    MEMORY[0x1B27246A0](v25, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(v8 + 8))(v10, v28);
  a3(v15);
}

id LACCompanionAuthenticationController.postProcessRequest(_:result:)(void *a1, void *a2)
{
  v3 = v2;
  v69 = a2;
  v70 = a1;
  v4 = type metadata accessor for Logger();
  v66 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - v7;
  v64 = type metadata accessor for UUID();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = [v2 replyQueue];
  v13 = *MEMORY[0x1E69E8020];
  v14 = *(v10 + 104);
  v14(v12, v13, v9);
  v15 = _dispatchPreconditionTest(_:)();
  v16 = *(v10 + 8);
  result = v16(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v65 = v4;
  v18 = LACCompanionAuthenticationController.pendingRequest(for:)(v70);
  if (v18)
  {
    v19 = v18;
    (*(*v18 + 152))(3);
    *v12 = [v3 replyQueue];
    v14(v12, v13, v9);
    v20 = _dispatchPreconditionTest(_:)();
    result = v16(v12, v9);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v22 = v67;
      v23 = *(v68 + 16);
      v24 = v64;
      v23(v67, v19 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v64);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, v22);
      v25 = swift_endAccess();
      if ((*(*v19 + 168))(v25))
      {
        v26 = LACCompanionAuthenticationController.mapResult(_:for:)(v69, v19);
        v27 = LACLogABM(v26);
        v28 = v63;
        Logger.init(_:)();
        v29 = v3;

        v30 = v26;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v70 = v30;
          v34 = v33;
          v35 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v71[0] = v69;
          *v34 = 138543874;
          *(v34 + 4) = v29;
          *v35 = v29;
          *(v34 + 12) = 2082;
          v36 = v19 + v21;
          v37 = v67;
          v23(v67, v36, v24);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v38 = v29;
          v39 = v32;
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v41;
          (*(v68 + 8))(v37, v24);
          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v71);

          *(v34 + 14) = v43;
          *(v34 + 22) = 2080;
          v44 = [v70 debugDescription];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v71);

          *(v34 + 24) = v48;
          _os_log_impl(&dword_1B0233000, v31, v39, "%{public}@ Post-processing request: %{public}s with result: %s", v34, 0x20u);
          outlined destroy of AsyncStream<()>.Continuation?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27246A0](v35, -1, -1);
          v49 = v69;
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v49, -1, -1);
          v50 = v34;
          v30 = v70;
          MEMORY[0x1B27246A0](v50, -1, -1);

          (*(v66 + 8))(v63, v65);
        }

        else
        {

          (*(v66 + 8))(v28, v65);
        }

        return v30;
      }

      else
      {
        v60 = v69;

        return v60;
      }
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v51 = LACLogABM(0);
  v52 = v62;
  Logger.init(_:)();
  swift_unknownObjectRetain_n();
  v53 = v3;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138543618;
    *(v56 + 4) = v53;
    *v57 = v53;
    *(v56 + 12) = 1026;
    v58 = v53;
    v59 = [v70 identifier];
    swift_unknownObjectRelease();
    *(v56 + 14) = v59;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1B0233000, v54, v55, "%{public}@ No pending request for rid: %{public}u", v56, 0x12u);
    outlined destroy of AsyncStream<()>.Continuation?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v57, -1, -1);
    MEMORY[0x1B27246A0](v56, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(v66 + 8))(v52, v65);
  v61 = v69;

  return v61;
}

void @objc LACCompanionAuthenticationController.processRequest(_:configuration:completion:)(void *a1, int a2, uint64_t a3, void *a4, void *aBlock, void (*a6)(uint64_t, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a1;
  a6(a3, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall LACCompanionAuthenticationController.cancelAllRequests()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v2);
  outlined destroy of AsyncStream<()>.Continuation?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t LACCompanionAuthenticationController.cancelRequests(forContextID:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v4);
  return outlined destroy of AsyncStream<()>.Continuation?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t LACCompanionAuthenticationController.configureRequest(forPreflight:)(void *a1)
{
  specialized LACCompanionAuthenticationController.configureRequest(forPreflight:)(a1);

  return swift_unknownObjectRetain();
}

void __swiftcall LACCompanionAuthenticationController.init()(LACCompanionAuthenticationController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t LACCompanionAuthenticationController.handleSessionUpdate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = [v1 replyQueue];
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = LACLogABM(result);
    Logger.init(_:)();
    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543618;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 1024;
      *(v19 + 14) = [v16 isSessionActive];
      _os_log_impl(&dword_1B0233000, v17, v18, "%{public}@ Companion session changed to isActive: %{BOOL}d", v19, 0x12u);
      outlined destroy of AsyncStream<()>.Continuation?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v20, -1, -1);
      MEMORY[0x1B27246A0](v19, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    (*(v6 + 8))(v8, v5);
    result = [v16 isSessionActive];
    if ((result & 1) == 0)
    {
      v21 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      result = swift_beginAccess();
      if ((*(&v16->isa + v21))[2])
      {
        v22 = type metadata accessor for UUID();
        (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
        LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v4);
        return outlined destroy of AsyncStream<()>.Continuation?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**a1 + 216))(v5);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return a1 & 1;
}

void LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v129 = type metadata accessor for UUID();
  v5 = *(v129 - 8);
  v6 = MEMORY[0x1EEE9AC00](v129);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v122 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v130 = v11;
  v131 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v125 = &v122 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v127 = (&v122 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v122 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = [v3 replyQueue];
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v25 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v26 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v27 = *&v3[v26];
  if (!*(v27 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v29 & 1) == 0))
  {
    v51 = swift_endAccess();
    v52 = LACLogABM(v51);
    Logger.init(_:)();
    v53 = v129;
    (*(v5 + 16))(v8, a1, v129);
    v54 = v3;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v128 = v15;
      v58 = v57;
      v59 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock[0] = v127;
      *v58 = 138543618;
      *(v58 + 4) = v54;
      *v59 = v54;
      *(v58 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v60 = v54;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v5 + 8))(v8, v53);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, aBlock);

      *(v58 + 14) = v64;
      _os_log_impl(&dword_1B0233000, v55, v56, "%{public}@ Cannot authenticate request: %{public}s, no such pending request", v58, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v59, -1, -1);
      v65 = v127;
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x1B27246A0](v65, -1, -1);
      MEMORY[0x1B27246A0](v58, -1, -1);

      (*(v131 + 8))(v128, v130);
    }

    else
    {

      (*(v5 + 8))(v8, v53);
      (*(v131 + 8))(v15, v130);
    }

    return;
  }

  v30 = *(*(v27 + 56) + 8 * v28);
  swift_endAccess();
  v31 = v5;
  v32 = *(*v30 + 152);

  v124 = v30;
  v33 = v32(1);
  v34 = LACLogABM(v33);
  v35 = v128;
  Logger.init(_:)();
  v36 = v129;
  (*(v31 + 16))(v10, a1, v129);
  v37 = v3;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v123 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v122 = v42;
    v43 = v37;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v41 = 138543618;
    *(v41 + 4) = v43;
    *v42 = v43;
    *(v41 + 12) = 2082;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v45 = v43;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v31 + 8))(v10, v36);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, aBlock);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_1B0233000, v38, v39, "%{public}@ Will authenticate request: %{public}s", v41, 0x16u);
    v50 = v122;
    outlined destroy of AsyncStream<()>.Continuation?(v122, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B27246A0](v44, -1, -1);
    MEMORY[0x1B27246A0](v41, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v10, v36);
  }

  v66 = v130;
  v67 = *(v131 + 8);
  v67(v35, v130);
  v68 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request;
  v69 = v124;
  v70 = [*(v124 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) client];
  if (!v70)
  {
    v81 = v67;
    v82 = LACLogABM(0);
    v83 = v125;
    Logger.init(_:)();
    v84 = v123;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138543362;
      *(v87 + 4) = v84;
      *v88 = v84;
      v89 = v84;
      _os_log_impl(&dword_1B0233000, v85, v86, "%{public}@ Missing client info", v87, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v88, -1, -1);
      MEMORY[0x1B27246A0](v87, -1, -1);
    }

    v81(v83, v66);
    v90 = objc_opt_self();
    v91 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0355F90);
    v92 = [v90 errorWithCode:-1000 debugDescription:v91];

    v93 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
    v94 = objc_opt_self();
    v95 = _convertErrorToNSError(_:)();
    v96 = [v94 resultWithFailure_];

    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v69 + v93, v96);

    goto LABEL_25;
  }

  v71 = v70;
  v72 = v123;
  v73 = [v123 clientInfoProvider];
  v74 = [*(v69 + v68) options];
  if (v74)
  {
    v75 = v67;
    v76 = v71;
    v77 = v66;
    v78 = v72;
    v79 = v74;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = v78;
    v66 = v77;
    v71 = v76;
    v67 = v75;
    v69 = v124;
    v80.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v80.super.isa = 0;
  }

  v97 = [v73 infoForXPCClient:v71 evaluationOptions:v80.super.isa];

  swift_unknownObjectRelease();
  v98 = *(v69 + v68);
  swift_unknownObjectRetain();
  v99 = v97;
  v100 = [objc_allocWithZone(LACCompanionAuthenticationRequest) initWithEvaluationRequest:v98 clientInfo:v99 companionType:{objc_msgSend(v72, sel_companion)}];
  swift_unknownObjectRelease();

  if (!v100)
  {
    v110 = LACLogABM(v101);
    Logger.init(_:)();
    v111 = v72;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138543362;
      *(v114 + 4) = v111;
      *v115 = v111;
      v116 = v111;
      _os_log_impl(&dword_1B0233000, v112, v113, "%{public}@ Unable to create authentication request", v114, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v115, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v115, -1, -1);
      MEMORY[0x1B27246A0](v114, -1, -1);
    }

    v67(v127, v66);
    v117 = objc_opt_self();
    v118 = MEMORY[0x1B27229A0](0xD000000000000027, 0x80000001B0355FB0);
    v92 = [v117 errorWithCode:-1000 debugDescription:v118];

    v119 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
    v120 = objc_opt_self();
    v121 = _convertErrorToNSError(_:)();
    v96 = [v120 resultWithFailure_];

    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v69 + v119, v96);

    swift_unknownObjectRelease();

LABEL_25:
    return;
  }

  v102 = objc_opt_self();
  v103 = _convertErrorToNSError(_:)();
  v104 = [v102 mechanismTreeFromError_];

  if (v104)
  {
    [v100 setIsFallbackAvailable_];
  }

  v105 = [v72 authenticator];
  v106 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = swift_allocObject();
  *(v107 + 16) = v106;
  *(v107 + 24) = v69;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:);
  aBlock[5] = v107;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_48_0;
  v108 = _Block_copy(aBlock);

  v109 = v100;

  [v105 authenticateRequest:v109 completion:v108];
  _Block_release(v108);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void closure #1 in LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = _convertErrorToNSError(_:)();
    v7 = [v5 errorWithCode:-1 underlyingError:v6];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v11 = objc_opt_self();
      v12 = _convertErrorToNSError(_:)();
      v13 = [v11 resultWithFailure_];

      LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + v10, v13);
    }
  }

  else
  {
    v14 = *(*a4 + 200);

    v14(v15);
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      return;
    }

    v7 = v16;
    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, 0);
  }
}

void LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v70 = type metadata accessor for UUID();
  v5 = *(v70 - 8);
  v6 = MEMORY[0x1EEE9AC00](v70);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v66 - v9;
  v11 = type metadata accessor for Logger();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v66 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = [v3 replyQueue];
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
    swift_beginAccess();
    v22 = *&v3[v21];
    if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();

      v27 = LACLogABM(v26);
      v28 = v69;
      Logger.init(_:)();
      v29 = v5;
      v30 = v70;
      (*(v5 + 16))(v10, a1, v70);
      v31 = v3;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v66 = v35;
        v67 = swift_slowAlloc();
        v73[0] = v67;
        *v34 = 138543618;
        *(v34 + 4) = v31;
        *v35 = v31;
        *(v34 + 12) = 2082;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v36 = v29;
        v37 = v31;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v36 + 8))(v10, v30);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v73);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_1B0233000, v32, v33, "%{public}@ Will finish processing of request: %{public}s", v34, 0x16u);
        v42 = v66;
        outlined destroy of AsyncStream<()>.Continuation?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v42, -1, -1);
        v43 = v67;
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x1B27246A0](v43, -1, -1);
        MEMORY[0x1B27246A0](v34, -1, -1);

        (*(v71 + 8))(v69, v72);
      }

      else
      {

        (*(v5 + 8))(v10, v30);
        (*(v71 + 8))(v28, v72);
      }

      (*(*v25 + 152))(2);
      if (v68)
      {
        v60 = *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
        v61 = v68;

        v60(v61);
      }

      else
      {
        v62 = *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
        v63 = objc_opt_self();
        v64 = *(v25 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);

        v65 = [v63 resultWithNext_];
        v62();
      }
    }

    else
    {
      v44 = swift_endAccess();
      v45 = LACLogABM(v44);
      Logger.init(_:)();
      v46 = v5;
      v47 = v70;
      (*(v5 + 16))(v8, a1, v70);
      v48 = v3;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v69 = v14;
        v53 = v52;
        v68 = swift_slowAlloc();
        v73[0] = v68;
        *v51 = 138543618;
        *(v51 + 4) = v48;
        *v53 = v48;
        *(v51 + 12) = 2082;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v54 = v48;
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        (*(v46 + 8))(v8, v47);
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v73);

        *(v51 + 14) = v58;
        _os_log_impl(&dword_1B0233000, v49, v50, "%{public}@ Cannot finish processing of request: %{public}s, no such pending request", v51, 0x16u);
        outlined destroy of AsyncStream<()>.Continuation?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v53, -1, -1);
        v59 = v68;
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x1B27246A0](v59, -1, -1);
        MEMORY[0x1B27246A0](v51, -1, -1);

        (*(v71 + 8))(v69, v72);
      }

      else
      {

        (*(v5 + 8))(v8, v47);
        (*(v71 + 8))(v14, v72);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(char *a1)
{
  v2 = v1;
  v124 = a1;
  v121 = type metadata accessor for UUID();
  v3 = *(v121 - 8);
  v4 = MEMORY[0x1EEE9AC00](v121);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v119 = v9;
  v120 = (&v112 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v112 - v10;
  v12 = type metadata accessor for Logger();
  v122 = *(v12 - 8);
  v123 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v118 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v112 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = [v2 replyQueue];
  (*(v21 + 104))(v23, *MEMORY[0x1E69E8020], v20);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v25 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v26 = *&v2[v25];
  v27 = v124;
  if (!*(v26 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v124), (v29 & 1) == 0))
  {
    v49 = swift_endAccess();
    v50 = LACLogABM(v49);
    v51 = v15;
    Logger.init(_:)();
    v52 = v121;
    (*(v3 + 16))(v6, v27, v121);
    v53 = v2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v124 = v51;
      v120 = v58;
      aBlock[0] = v58;
      *v56 = 138543618;
      *(v56 + 4) = v53;
      *v57 = v53;
      *(v56 + 12) = 2082;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v59 = v53;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v3 + 8))(v6, v52);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, aBlock);

      *(v56 + 14) = v63;
      _os_log_impl(&dword_1B0233000, v54, v55, "%{public}@ Cannot preflight request: %{public}s, no such pending request", v56, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v57, -1, -1);
      v64 = v120;
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x1B27246A0](v64, -1, -1);
      MEMORY[0x1B27246A0](v56, -1, -1);

      (*(v122 + 8))(v124, v123);
    }

    else
    {

      (*(v3 + 8))(v6, v52);
      (*(v122 + 8))(v15, v123);
    }

    return;
  }

  v30 = *(*(v26 + 56) + 8 * v28);
  swift_endAccess();
  v116 = v30;

  v32 = LACLogABM(v31);
  Logger.init(_:)();
  v33 = *(v3 + 16);
  v34 = v121;
  v114 = v3 + 16;
  v113 = v33;
  v33(v11, v27, v121);
  v35 = v2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v117 = v3;
  v115 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v112 = v40;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v39 = 138543618;
    *(v39 + 4) = v35;
    *v40 = v35;
    *(v39 + 12) = 2082;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v42 = v35;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = *(v3 + 8);
    v46(v11, v34);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, aBlock);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_1B0233000, v36, v37, "%{public}@ Will preflight request: %{public}s", v39, 0x16u);
    v48 = v112;
    outlined destroy of AsyncStream<()>.Continuation?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1B27246A0](v41, -1, -1);
    MEMORY[0x1B27246A0](v39, -1, -1);
  }

  else
  {

    v46 = *(v3 + 8);
    v46(v11, v34);
  }

  v65 = *(v122 + 8);
  v65(v19, v123);
  v66 = v34;
  v67 = v116;
  (*(*v116 + 176))(1);
  v68 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request;
  v69 = [*(v67 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) options];
  if (!v69)
  {
    v127 = 0u;
    v128 = 0u;
    v73 = v117;
    goto LABEL_21;
  }

  v70 = v46;
  v71 = v69;
  v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = 1000;
  type metadata accessor for LACPolicyOption(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption, type metadata accessor for LACPolicyOption, &protocol conformance descriptor for LACPolicyOption);
  AnyHashable.init<A>(_:)();
  v73 = v117;
  if (!*(v72 + 16) || (v74 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v75 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
    v127 = 0u;
    v128 = 0u;
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v72 + 56) + 32 * v74, &v127);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v128 + 1))
  {
LABEL_21:
    outlined destroy of AsyncStream<()>.Continuation?(&v127, &_sypSgMd, _sypSgMR);
LABEL_22:
    v96 = [*(v67 + v68) shallowCopy];
    v97 = [v115 configureRequestForPreflight_];
    swift_unknownObjectRelease();
    v98 = *(v67 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor);
    v99 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v100 = [v99 defaultConfiguration];
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = v120;
    v113(v120, v124, v66);
    v103 = (*(v73 + 80) + 40) & ~*(v73 + 80);
    v104 = swift_allocObject();
    v105 = v73;
    v106 = v104;
    *(v104 + 2) = v101;
    *(v104 + 3) = v97;
    *(v104 + 4) = v67;
    (*(v105 + 32))(&v104[v103], v102, v66);
    aBlock[4] = partial apply for specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:);
    aBlock[5] = v106;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
    aBlock[3] = &block_descriptor_29;
    v107 = _Block_copy(aBlock);

    [v98 processRequest:v97 configuration:v100 completion:v107];
    swift_unknownObjectRelease_n();
    _Block_release(v107);

    return;
  }

  v76 = swift_dynamicCast();
  if (!v76 || (aBlock[0] & 1) == 0)
  {
    goto LABEL_22;
  }

  v77 = LACLogABM(v76);
  v78 = v118;
  Logger.init(_:)();

  v79 = v115;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v119 = v83;
    v124 = swift_slowAlloc();
    aBlock[0] = v124;
    *v82 = 138543618;
    *(v82 + 4) = v79;
    *v83 = v79;
    *(v82 + 12) = 2082;
    v84 = (v67 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id);
    v85 = v120;
    v86 = v121;
    v113(v120, v84, v121);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    LODWORD(v115) = v81;
    v87 = v79;
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v89;
    v91 = v86;
    v67 = v116;
    v70(v85, v91);
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, aBlock);

    *(v82 + 14) = v92;
    _os_log_impl(&dword_1B0233000, v80, v115, "%{public}@ Not preflying request: %{public}s - not interactive evaluation", v82, 0x16u);
    v93 = v119;
    outlined destroy of AsyncStream<()>.Continuation?(v119, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v93, -1, -1);
    v94 = v124;
    __swift_destroy_boxed_opaque_existential_0(v124);
    MEMORY[0x1B27246A0](v94, -1, -1);
    MEMORY[0x1B27246A0](v82, -1, -1);

    v95 = v118;
  }

  else
  {

    v95 = v78;
  }

  v65(v95, v123);
  v108 = *(v67 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  v109 = objc_opt_self();
  v110 = *(v67 + v68);

  v111 = [v109 resultWithNext_];
  v108();
}

void specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([a1 rawValue] == 1)
    {
      v14 = objc_opt_self();
      _StringGuts.grow(_:)(29);

      v35 = [a3 identifier];
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2722A80](v15);

      v16 = MEMORY[0x1B27229A0](0xD00000000000001BLL, 0x80000001B0355050);

      v17 = [v14 errorWithCode:-1000 debugDescription:v16];

      v18 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v19 = objc_opt_self();
      v20 = _convertErrorToNSError(_:)();
      v21 = [v19 resultWithFailure_];

      LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + v18, v21);
    }

    else
    {
      v33 = a3;
      v34 = a4;
      v22 = *(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor);
      v23 = [v22 respondsToSelector_];
      v24 = closure #1 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:);
      if (v23)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v22;
        v26 = swift_allocObject();
        *(v26 + 16) = partial apply;
        *(v26 + 24) = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned LACEvaluationRequest, @unowned LACEvaluationResult, @unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned LACEvaluationResult) -> ()) -> ();
        *(v27 + 24) = v26;
        swift_unknownObjectRetain();

        v24 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed LACEvaluationRequest, @guaranteed LACEvaluationResult, @guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ()) -> ();
      }

      v32 = v24;
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
      v29 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      (*(v10 + 32))(v30 + v29, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      *(v30 + ((v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;

      v32(v33, a1, partial apply for closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:), v30);
    }
  }
}

void closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(void *a1, void *a2, NSObject *a3, uint64_t a4)
{
  v120 = a3;
  v123 = a2;
  v125[3] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v117 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v116 - v13;
  v122 = type metadata accessor for Logger();
  v15 = *(v122 - 8);
  v16 = MEMORY[0x1EEE9AC00](v122);
  v118 = (&v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v116 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v116 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v116 - v24;
  v119 = a1;
  v26 = [a1 error];
  v121 = v15;
  if (v26)
  {
    v125[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v124[0];
      v28 = objc_opt_self();
      v29 = v27;
      v30 = _convertErrorToNSError(_:)();

      LODWORD(v28) = [v28 error:v30 hasCode:-1004];
      if (v28)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v33 = Strong;
          v34 = a4;
          v35 = *(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);
          v36 = v29;
          v37 = _convertErrorToNSError(_:)();

          v124[0] = 0;
          LODWORD(v35) = [v33 canAuthenticateRequest:v35 availabilityError:v37 error:v124];

          v38 = v124[0];
          if (v35)
          {
            v39 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
            v40 = v36;
            v41 = v38;
            LACCompanionAuthenticationController.authenticateRequest(with:availabilityError:)(v34 + v39, v40);
          }

          else
          {
            v116 = a4;
            v85 = v124[0];
            v86 = _convertNSErrorToError(_:)();

            v87 = swift_willThrow();
            v88 = LACLogABM(v87);
            v89 = v118;
            Logger.init(_:)();
            v90 = v7;
            v91 = v117;
            v92 = v6;
            (*(v7 + 16))(v117, v120, v6);
            v93 = v33;
            v94 = v86;
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v120 = v95;
              v98 = v97;
              v99 = swift_slowAlloc();
              LODWORD(v119) = v96;
              v100 = v99;
              v123 = swift_slowAlloc();
              v124[0] = v123;
              *v98 = 138543874;
              *(v98 + 4) = v93;
              *v100 = v33;
              *(v98 + 12) = 2082;
              lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v101 = v92;
              v102 = v93;
              v103 = dispatch thunk of CustomStringConvertible.description.getter();
              v105 = v104;
              (*(v90 + 8))(v91, v101);
              v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, v124);

              *(v98 + 14) = v106;
              *(v98 + 22) = 2112;
              v107 = v86;
              v108 = _swift_stdlib_bridgeErrorToNSError();
              *(v98 + 24) = v108;
              v100[1] = v108;
              v109 = v120;
              _os_log_impl(&dword_1B0233000, v120, v119, "%{public}@ Failing request: %{public}s with error: %@ - Authentication not supported", v98, 0x20u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              MEMORY[0x1B27246A0](v100, -1, -1);
              v110 = v123;
              __swift_destroy_boxed_opaque_existential_0(v123);
              MEMORY[0x1B27246A0](v110, -1, -1);
              MEMORY[0x1B27246A0](v98, -1, -1);

              (*(v121 + 8))(v118, v122);
            }

            else
            {

              (*(v90 + 8))(v91, v92);
              (*(v121 + 8))(v89, v122);
            }

            v112 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
            v113 = objc_opt_self();
            v114 = _convertErrorToNSError(_:)();
            v115 = [v113 resultWithFailure_];

            LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v116 + v112, v115);
          }
        }

        else
        {
          v78 = LACLogABM(0);
          Logger.init(_:)();

          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *v81 = 138543362;
            swift_beginAccess();
            v83 = swift_unknownObjectWeakLoadStrong();
            *(v81 + 4) = v83;
            *v82 = v83;
            _os_log_impl(&dword_1B0233000, v79, v80, "%{public}@ Companion authentication controller already deallocated", v81, 0xCu);
            outlined destroy of AsyncStream<()>.Continuation?(v82, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1B27246A0](v82, -1, -1);
            MEMORY[0x1B27246A0](v81, -1, -1);
            v84 = v29;
          }

          else
          {
            v84 = v79;
            v79 = v29;
          }

          v111 = v121;

          (*(v111 + 8))(v25, v122);
        }
      }

      else
      {
        v58 = LACLogABM(v31);
        Logger.init(_:)();
        v59 = v6;
        (*(v7 + 16))(v14, v120, v6);
        v60 = v29;

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v116 = a4;
          v65 = v64;
          v120 = swift_slowAlloc();
          v125[0] = v120;
          *v63 = 138543874;
          swift_beginAccess();
          v66 = swift_unknownObjectWeakLoadStrong();
          *(v63 + 4) = v66;
          *v65 = v66;
          *(v63 + 12) = 2082;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v118 = v61;
          v67 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v117) = v62;
          v68 = v60;
          v70 = v69;
          (*(v7 + 8))(v14, v59);
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v70, v125);
          v60 = v68;

          *(v63 + 14) = v71;
          *(v63 + 22) = 2112;
          *(v63 + 24) = v68;
          v65[1] = v68;
          v72 = v68;
          v73 = v118;
          _os_log_impl(&dword_1B0233000, v118, v117, "%{public}@ Preflight for request: %{public}s finished with error: %@", v63, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          v74 = v65;
          a4 = v116;
          MEMORY[0x1B27246A0](v74, -1, -1);
          v75 = v120;
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x1B27246A0](v75, -1, -1);
          MEMORY[0x1B27246A0](v63, -1, -1);
        }

        else
        {

          (*(v7 + 8))(v14, v59);
        }

        (*(v121 + 8))(v23, v122);
        swift_beginAccess();
        v76 = swift_unknownObjectWeakLoadStrong();
        if (v76)
        {
          v77 = v76;
          LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v119);
        }
      }

      return;
    }

    v15 = v121;
  }

  v42 = LACLogABM(v26);
  Logger.init(_:)();
  v43 = v7;
  v44 = v6;
  (*(v7 + 16))(v12, v120, v6);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v125[0] = v120;
    *v47 = 138543618;
    swift_beginAccess();
    v49 = swift_unknownObjectWeakLoadStrong();
    *(v47 + 4) = v49;
    *v48 = v49;
    *(v47 + 12) = 2082;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v44;
    v53 = v52;
    (*(v43 + 8))(v12, v51);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, v125);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_1B0233000, v45, v46, "%{public}@ Preflight for request: %{public}s finished with success", v47, 0x16u);
    outlined destroy of AsyncStream<()>.Continuation?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v48, -1, -1);
    v55 = v120;
    __swift_destroy_boxed_opaque_existential_0(v120);
    MEMORY[0x1B27246A0](v55, -1, -1);
    MEMORY[0x1B27246A0](v47, -1, -1);

    (*(v121 + 8))(v20, v122);
  }

  else
  {

    (*(v43 + 8))(v12, v44);
    (*(v15 + 8))(v20, v122);
  }

  swift_beginAccess();
  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v57 = v56;
    LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v119);
  }
}

uint64_t LACCompanionAuthenticationController.pendingRequest(for:)(void *a1)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
      v13 = *(v12 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request);

      LODWORD(v13) = [v13 identifier];
      if (v13 == [a1 identifier])
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v12;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id LACCompanionAuthenticationController.mapResult(_:for:)(void *a1, uint64_t a2)
{
  v3 = v2;
  LACEvaluationResult.resultWithAssociatedValue.getter(&v17);
  v6 = v17;
  v5 = v18;
  v7 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v7 == 2)
    {
      outlined consume of LACEvaluationResultWithAssociatedValue(v17, v18);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return a1;
  }

  else
  {
    if (v7)
    {
      v11 = objc_opt_self();
      v12 = _convertErrorToNSError(_:)();
      v13 = [v3 mapError_];

      v14 = _convertErrorToNSError(_:)();
      v10 = [v11 resultWithFailure_];

      outlined consume of LACEvaluationResultWithAssociatedValue(v6, v5);
    }

    else
    {
      v8 = objc_opt_self();
      LACCompanionAuthenticationController.mapValue(_:for:)(v6, a2);
      outlined consume of LACEvaluationResultWithAssociatedValue(v6, v5);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v10 = [v8 resultWithSuccess_];
    }

    return v10;
  }
}

uint64_t LACCompanionAuthenticationController.mapValue(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(*a2 + 192))())
  {

    v5 = MEMORY[0x1E69E6530];
    AnyHashable.init<A>(_:)();
    v6 = [objc_msgSend(v3 sessionMonitor)];
    swift_unknownObjectRelease();
    v11 = v5;
    *&v10 = v6;
    outlined init with take of Any(&v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v12, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v12);
  }

  else
  {
  }

  return a1;
}

Swift::Int LACCompanionAuthenticationControllerPendingRequest.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](a1);
  return Hasher._finalize()();
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.completion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);

  return v1;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.state.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.isProcessedByController.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.isProcessedByController.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.companionAuthenticationResult.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for LACCompanionAuthenticationControllerPendingRequest.contextID : LACCompanionAuthenticationControllerPendingRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 224))(v6);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.contextID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v9, v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  outlined destroy of AsyncStream<()>.Continuation?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  closure #1 in LACCompanionAuthenticationControllerPendingRequest.contextID.getter(v1, a1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of UUID?(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t closure #1 in LACCompanionAuthenticationControllerPendingRequest.contextID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = [*(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) contextID];
  if (v11)
  {
    v12 = v11;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = *(v5 + 32);
    v13(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v13)(a2, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    UUID.init()();
    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return outlined destroy of AsyncStream<()>.Continuation?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  return result;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.contextID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  swift_beginAccess();
  outlined assign with take of UUID?(v5, v1 + v8);
  return swift_endAccess();
}

void (*LACCompanionAuthenticationControllerPendingRequest.contextID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for UUID();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  LACCompanionAuthenticationControllerPendingRequest.contextID.getter(v10);
  return LACCompanionAuthenticationControllerPendingRequest.contextID.modify;
}

void LACCompanionAuthenticationControllerPendingRequest.contextID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
    swift_beginAccess();
    outlined assign with take of UUID?(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
    swift_beginAccess();
    outlined assign with take of UUID?(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.init(request:configuration:completion:state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  UUID.init()();
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
  swift_unknownObjectRetain();
  v13 = [a2 nextProcessor];
  swift_unknownObjectRelease();

  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v13;
  v14 = (v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
  *v14 = a3;
  v14[1] = a4;
  *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = a5;
  return v5;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.deinit()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined destroy of AsyncStream<()>.Continuation?(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v0;
}

uint64_t LACCompanionAuthenticationControllerPendingRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined destroy of AsyncStream<()>.Continuation?(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LACCompanionAuthenticationControllerPendingRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for LACCompanionAuthenticationControllerPendingRequest;
  if (!type metadata singleton initialization cache for LACCompanionAuthenticationControllerPendingRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized LACCompanionAuthenticationController.processRequest(_:configuration:completion:)(void *a1, char *a2, char *a3, void (**a4)(void, void))
{
  v47 = a2;
  v7 = type metadata accessor for Logger();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = swift_allocObject();
  *(v51 + 16) = a4;
  _Block_copy(a4);
  *v16 = [a3 replyQueue];
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    if ([a3 canProcessRequest_])
    {
      type metadata accessor for LACCompanionAuthenticationControllerPendingRequest(0);
      v18 = swift_allocObject();
      UUID.init()();
      *(v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_isProcessedByController) = 0;
      *(v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_companionAuthenticationResult) = 0;
      v19 = v10;
      (*(v10 + 56))(v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest____lazy_storage___contextID, 1, 1, v9);
      *(v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_request) = a1;
      swift_unknownObjectRetain();
      v20 = [v47 nextProcessor];
      *(v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_nextProcessor) = v20;
      v21 = (v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_completion);
      v22 = v51;
      *v21 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ();
      v21[1] = v22;
      *(v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_state) = 0;
      v46 = *(v19 + 16);
      v47 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
      v46(v12, v18 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v9);
      v23 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *&a3[v23];
      *&a3[v23] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v12, isUniquelyReferenced_nonNull_native);
      v45 = *(v19 + 8);
      v45(v12, v9);
      *&a3[v23] = v52;
      v25 = swift_endAccess();
      v26 = LACLogABM(v25);
      v27 = v50;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();

      v28 = a3;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v43 = v30;
        v32 = v31;
        v33 = swift_slowAlloc();
        v42 = v33;
        v44 = swift_slowAlloc();
        v53[0] = v44;
        *v32 = 138543874;
        *(v32 + 4) = v28;
        *v33 = v28;
        *(v32 + 12) = 2082;
        v46(v12, &v47[v18], v9);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v34 = v28;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v45(v12, v9);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v53);

        *(v32 + 14) = v38;
        *(v32 + 22) = 1024;
        LODWORD(v38) = [a1 identifier];
        swift_unknownObjectRelease();
        *(v32 + 24) = v38;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v29, v43, "%{public}@ Registered pending request: %{public}s for evaluation request rid: %u", v32, 0x1Cu);
        v39 = v42;
        outlined destroy of AsyncStream<()>.Continuation?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v39, -1, -1);
        v40 = v44;
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x1B27246A0](v40, -1, -1);
        MEMORY[0x1B27246A0](v32, -1, -1);

        (*(v48 + 8))(v50, v49);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v48 + 8))(v27, v49);
      }

      LACCompanionAuthenticationController.processAndEvaluateRequest(with:)(&v47[v18]);
    }

    else
    {
      v41 = [objc_opt_self() resultWithNext_];
      (a4)[2](a4, v41);
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized LACCompanionAuthenticationController.postProcessRequest(_:result:completion:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = LACCompanionAuthenticationController.postProcessRequest(_:result:)(a1, a2);
  v13 = LACLogABM(v12);
  Logger.init(_:)();
  swift_unknownObjectRetain_n();
  v14 = a3;
  v15 = a2;
  v16 = v12;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = v8;
    v22 = v21;
    *v20 = 138544130;
    *(v20 + 4) = v14;
    *v21 = v14;
    *(v20 + 12) = 1026;
    v23 = v14;
    v24 = [a1 identifier];
    swift_unknownObjectRelease();
    *(v20 + 14) = v24;
    swift_unknownObjectRelease();
    *(v20 + 18) = 2112;
    *(v20 + 20) = v15;
    *(v20 + 28) = 2112;
    *(v20 + 30) = v16;
    v22[1] = v15;
    v22[2] = v16;
    v25 = v15;
    v26 = v16;
    _os_log_impl(&dword_1B0233000, v17, v18, "%{public}@ Processed result for rid: %{public}u original: %@, processed: %@", v20, 0x26u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v27 = v22;
    v8 = v29;
    MEMORY[0x1B27246A0](v27, -1, -1);
    v28 = v20;
    a4 = v30;
    MEMORY[0x1B27246A0](v28, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(v9 + 8))(v11, v8);
  (*(a4 + 16))(a4, v16);
}

void *specialized LACCompanionAuthenticationController.configureRequest(forPreflight:)(void *a1)
{
  v2 = [a1 options];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *&v11 = -1023;
  AnyHashable.init<A>(_:)();
  v5 = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E6370];
  outlined init with take of Any(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v13, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v13);
  *&v11 = 1000;
  AnyHashable.init<A>(_:)();
  v12 = v5;
  LOBYTE(v11) = 1;
  outlined init with take of Any(&v11, v10);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v13, v7);
  outlined destroy of AnyHashable(v13);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 updateOptions_];

  return a1;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State()
{
  result = lazy protocol witness table cache variable for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State;
  if (!lazy protocol witness table cache variable for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACCompanionAuthenticationControllerPendingRequest.State and conformance LACCompanionAuthenticationControllerPendingRequest.State);
  }

  return result;
}

void type metadata completion function for LACCompanionAuthenticationControllerPendingRequest(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t getEnumTagSinglePayload for LACCompanionAuthenticationControllerPendingRequest.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACCompanionAuthenticationControllerPendingRequest.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void partial apply for specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  specialized closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(a1, v4, v5, v6, v7);
}

void partial apply for closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in closure #1 in LACCompanionAuthenticationController.preflightAndEvaluateRequest(with:)(a1, v5, (v1 + v4), v6);
}

id one-time initialization function for vendedListeners()
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  vendedListeners = result;
  return result;
}

NSXPCListener __swiftcall LACConcurrentIdleUIListenerProvider.anonymousListener(withIdentifier:)(NSNumber withIdentifier)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() anonymousListener];
  v8 = LACLogConcurrentEvaluations(v7);
  Logger.init(_:)();
  v9 = v1;
  v10 = v7;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v9;
    v14[1] = v10;
    v15 = v9;
    v16 = v10;
    _os_log_impl(&dword_1B0233000, v11, v12, "%@ vending a new listener %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v14, -1, -1);
    MEMORY[0x1B27246A0](v13, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  [v10 setDelegate_];
  [v10 activate];
  if (one-time initialization token for vendedListeners != -1)
  {
    swift_once();
  }

  [vendedListeners setObject:withIdentifier.super.super.isa forKey:v10];
  return v10;
}

Swift::Bool __swiftcall LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = LACLogConcurrentEvaluations(v7);
  Logger.init(_:)();
  v11 = v2;
  v12 = shouldAcceptNewConnection.super.isa;
  v13 = _.super.isa;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412802;
    *(v16 + 4) = v11;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v11;
    v17[1] = v12;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v13;
    v17[2] = v13;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    _os_log_impl(&dword_1B0233000, v14, v15, "%@ received a new connection %@ for listener %@", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v17, -1, -1);
    MEMORY[0x1B27246A0](v16, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v21 = [objc_opt_self() interfaceForXPCProtocol_];
  [(objc_class *)v12 setExportedInterface:v21];

  -[objc_class setExportedObject:](v12, sel_setExportedObject_, [v11 handler]);
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = [v11 handler];
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v23;
  v26[4] = v24;
  aBlock[4] = partial apply for closure #1 in LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10;
  v27 = _Block_copy(aBlock);

  [(objc_class *)v12 setInvalidationHandler:v27];
  _Block_release(v27);
  [(objc_class *)v12 resume];
  return 1;
}

void closure #1 in LACConcurrentIdleUIListenerProvider.listener(_:shouldAcceptNewConnection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v29 = v4;
    v10 = LACLogConcurrentEvaluations(Strong);
    Logger.init(_:)();

    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = a3;
      v15 = v14;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v15 = 136315394;
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      v30 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15NSXPCConnectionCSgMd, &_sSo15NSXPCConnectionCSgMR);
      v17 = Optional.debugDescription.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v31);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v11;
      v21 = v26;
      *v26 = v9;
      v22 = v11;
      _os_log_impl(&dword_1B0233000, v12, v13, "%s invalidated, %@ listener", v15, 0x16u);
      outlined destroy of NSObject?(v21);
      MEMORY[0x1B27246A0](v21, -1, -1);
      v23 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B27246A0](v23, -1, -1);
      MEMORY[0x1B27246A0](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v29);
    if (one-time initialization token for vendedListeners != -1)
    {
      swift_once();
    }

    v24 = [vendedListeners objectForKey_];
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      [v25 connectionInvalidatedForIdentifier_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double LACPreboardUseCaseProvider.provider.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of (String, Any)(v1 + 16, &v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  if (*(&v8 + 1) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(&v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
    v3 = type metadata accessor for LACPreboardUseCaseProviderAMFI();
    v4 = swift_allocObject();
    *(a1 + 24) = v3;
    *(a1 + 32) = &protocol witness table for LACPreboardUseCaseProviderAMFI;
    *a1 = v4;
    outlined init with copy of (String, Any)(a1, &v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    swift_beginAccess();
    outlined assign with take of LACPreboardUseCaseProviding??(&v7, v1 + 16);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t outlined assign with take of LACPreboardUseCaseProviding??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for LACPreboardUseCaseProvider.provider : LACPreboardUseCaseProvider(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of (String, Any)(a1, v7, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
  v3 = *a2;
  v5[0] = v7[0];
  v5[1] = v7[1];
  v6 = v8;
  swift_beginAccess();
  outlined assign with take of LACPreboardUseCaseProviding??(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t LACPreboardUseCaseProvider.provider.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  swift_beginAccess();
  outlined assign with take of LACPreboardUseCaseProviding??(v4, v1 + 16);
  return swift_endAccess();
}

void (*LACPreboardUseCaseProvider.provider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  *(v3 + 104) = v1;
  LACPreboardUseCaseProvider.provider.getter(v3);
  return LACPreboardUseCaseProvider.provider.modify;
}

void LACPreboardUseCaseProvider.provider.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of (String, Any)(*a1, v2 + 40, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    swift_beginAccess();
    outlined assign with take of LACPreboardUseCaseProviding??(v2 + 40, v3 + 16);
    swift_endAccess();
    outlined destroy of AsyncStream<()>.Continuation?(v2, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
  }

  else
  {
    v4 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v4;
    *(v2 + 9) = *(v2 + 4);
    swift_beginAccess();
    outlined assign with take of LACPreboardUseCaseProviding??(v2 + 40, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

double LACPreboardUseCaseProvider.__allocating_init(globalDomain:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *&result = 1;
  *(v2 + 40) = xmmword_1B0342B10;
  *(v2 + 56) = a1;
  return result;
}

uint64_t LACPreboardUseCaseProvider.init(globalDomain:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = xmmword_1B0342B10;
  *(v1 + 56) = a1;
  return v1;
}

uint64_t LACPreboardUseCaseProvider.preboardUseCase.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  LACPreboardUseCaseProvider.provider.getter(&v37);
  if (v38)
  {
    outlined init with take of LACPreboardUseCaseProviding(&v37, v39);
    v8 = v40;
    v9 = v41;
    __swift_project_boxed_opaque_existential_0(v39, v40);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10 == -1 && (v11 = [*(v0 + 56) preboardMode]) != 0)
    {
      v12 = v11;
      v36 = [v11 integerValue];

      static LACPreboardUseCaseProviding.allUseCases.getter();
      v14 = *(v13 + 16);
      if (v14)
      {
        *&v37 = MEMORY[0x1E69E7CC0];
        v35 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
        v15 = v35;
        v16 = v37;
        v17 = *(v37 + 16);
        v18 = 32;
        do
        {
          v19 = *(v15 + v18);
          *&v37 = v16;
          v20 = *(v16 + 24);
          if (v17 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
            v15 = v35;
            v16 = v37;
          }

          *(v16 + 16) = v17 + 1;
          *(v16 + 8 * v17 + 32) = v19;
          v18 += 8;
          ++v17;
          --v14;
        }

        while (v14);
      }

      else
      {

        v16 = MEMORY[0x1E69E7CC0];
      }

      v27 = *(v16 + 16);
      v28 = 32;
      do
      {
        if (!v27)
        {

          goto LABEL_21;
        }

        v29 = *(v16 + v28);
        v28 += 8;
        --v27;
      }

      while (v29 != v36);

      v31 = LACLogPreboard(v30);
      Logger.init(_:)();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v36;
        _os_log_impl(&dword_1B0233000, v32, v33, "Using mocked use case: %ld", v34, 0xCu);
        MEMORY[0x1B27246A0](v34, -1, -1);
      }

      (*(v2 + 8))(v7, v1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      return v36;
    }

    else
    {
LABEL_21:
      __swift_destroy_boxed_opaque_existential_0(v39);
      return v10;
    }
  }

  else
  {
    v21 = outlined destroy of AsyncStream<()>.Continuation?(&v37, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    v22 = LACLogPreboard(v21);
    Logger.init(_:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B0233000, v23, v24, "Unsupported platform", v25, 2u);
      MEMORY[0x1B27246A0](v25, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return -1;
  }
}

uint64_t LACPreboardUseCaseProvider.completeCurrentUseCase(success:)(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  return MEMORY[0x1EEE6DFA0](LACPreboardUseCaseProvider.completeCurrentUseCase(success:), 0, 0);
}

uint64_t LACPreboardUseCaseProvider.completeCurrentUseCase(success:)()
{
  v1 = *(*(v0 + 96) + 56);
  v2 = [v1 preboardMode];
  if (v2)
  {

    [v1 setPreboardMode_];
    v3 = *(v0 + 8);
LABEL_3:

    return v3();
  }

  LACPreboardUseCaseProvider.provider.getter(v0 + 56);
  if (!*(v0 + 80))
  {
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 56, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgMR);
    v9 = objc_opt_self();
    v10 = MEMORY[0x1B27229A0](0xD000000000000014, 0x80000001B0355FF0);
    [v9 errorWithCode:-1020 debugDescription:v10];

    swift_willThrow();
    v3 = *(v0 + 8);
    goto LABEL_3;
  }

  outlined init with take of LACPreboardUseCaseProviding((v0 + 56), v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v5);
  v11 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = LACPreboardUseCaseProvider.completeCurrentUseCase(success:);
  v8 = *(v0 + 120);

  return v11(v8, v5, v6);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = LACPreboardUseCaseProvider.completeCurrentUseCase(success:);
  }

  else
  {
    v2 = LACPreboardUseCaseProvider.completeCurrentUseCase(success:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t LACPreboardUseCaseProvider.deinit()
{
  outlined destroy of AsyncStream<()>.Continuation?(v0 + 16, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LACPreboardUseCaseProvider.__deallocating_deinit()
{
  outlined destroy of AsyncStream<()>.Continuation?(v0 + 16, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMd, &_s23LocalAuthenticationCore27LACPreboardUseCaseProviding_pSgSgMR);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LACPreboardUseCaseProviding.completeCurrentUseCase(success:) in conformance LACPreboardUseCaseProvider(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return LACPreboardUseCaseProvider.completeCurrentUseCase(success:)(a1);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id LACConcurrentEvaluationControllerModel.__allocating_init(clientInfoProvider:helper:manager:replyQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider] = a1;
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper] = a2;
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] = a3;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider, off_1E7A94978);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a2;
  v13 = a4;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) initWithHandler:a3 replyQueue:v13];

  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider] = v14;
  *&v10[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue] = v13;
  v17.receiver = v10;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

id LACConcurrentEvaluationControllerModel.init(clientInfoProvider:helper:manager:replyQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider] = a1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper] = a2;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] = a3;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider, off_1E7A94978);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = a2;
  v13 = a4;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) initWithHandler:a3 replyQueue:v13];

  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider] = v14;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue] = v13;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

id LACConcurrentEvaluationControllerModel.canProcessRequest(_:)(void *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper) isConcurrentEvaluationAvailable];
  if (result)
  {
    return [a1 isInteractive];
  }

  return result;
}

void LACConcurrentEvaluationControllerModel.processRequest(_:configuration:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper];
  if ([v13 isConcurrentEvaluationAvailable] && objc_msgSend(a1, sel_isInteractive))
  {
    v65 = v10;
    v66 = v13;
    v14 = [a1 options];
    if (v14)
    {
      v15 = v14;
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v68[0] = 1089;
      AnyHashable.init<A>(_:)();
      if (*(v16 + 16))
      {
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
        if (v18)
        {
          outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v70);
          outlined destroy of AnyHashable(v69);

          if (*(&v71 + 1))
          {
            outlined destroy of Any?(&v70);
            goto LABEL_19;
          }

LABEL_13:
          v64 = a4;
          v20 = MEMORY[0x1E69E6370];
          outlined destroy of Any?(&v70);
          v21 = [a1 options];
          if (v21)
          {
            v22 = v21;
            v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v24 = LACConcurrentEvaluationControllerModel.isConcurrencyDisabled(for:)(a1);
          *&v70 = 1089;
          AnyHashable.init<A>(_:)();
          *(&v71 + 1) = v20;
          v25 = v24 & 1;
          LOBYTE(v70) = v24 & 1;
          outlined init with take of Any(&v70, v68);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v23;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v69, isUniquelyReferenced_nonNull_native);
          v27 = outlined destroy of AnyHashable(v69);
          v62 = v67;
          v28 = LACLogConcurrentEvaluations(v27);
          Logger.init(_:)();
          v63 = v5;
          v29 = v5;
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v61 = v31;
            v33 = v32;
            v60 = swift_slowAlloc();
            v69[0] = v60;
            *v33 = 136446466;
            v34 = [v29 description];
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            HIDWORD(v59) = v25;
            v36 = v35;
            v37 = a3;
            v39 = v38;

            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, v69);
            a3 = v37;

            *(v33 + 4) = v40;
            *(v33 + 12) = 1024;
            *(v33 + 14) = HIDWORD(v59);
            _os_log_impl(&dword_1B0233000, v30, v61, "%{public}s setting disableConcurrentEvaluation to %{BOOL}d", v33, 0x12u);
            v41 = v60;
            __swift_destroy_boxed_opaque_existential_0(v60);
            MEMORY[0x1B27246A0](v41, -1, -1);
            MEMORY[0x1B27246A0](v33, -1, -1);
          }

          (*(v65 + 8))(v12, v9);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [a1 updateOptions_];

          v5 = v63;
LABEL_19:
          v43 = [a1 options];
          if (v43)
          {
            v44 = v43;
            v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v68[0] = 1089;
            AnyHashable.init<A>(_:)();
            if (*(v45 + 16))
            {
              v46 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
              if (v47)
              {
                outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v70);
                outlined destroy of AnyHashable(v69);

                if (*(&v71 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    if (v69[0])
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_30;
                  }

LABEL_29:
                  if ([v66 isConcurrentEvaluationEnabled])
                  {
LABEL_34:
                    [*&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] registerRequest_];
                    v58 = [objc_opt_self() resultWithNext_];
                    a3();

                    return;
                  }

LABEL_30:
                  v48 = [a1 payload];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  else
                  {
                    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  }

                  *&v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(&v70 + 1) = v51;
                  AnyHashable.init<A>(_:)();
                  v52 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider];
                  v53 = [a1 identifier];
                  v54 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
                  v55 = [v52 anonymousListenerWithIdentifier_];

                  *(&v71 + 1) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSXPCListener, 0x1E696B0D8);
                  *&v70 = v55;
                  outlined init with take of Any(&v70, v68);
                  v56 = swift_isUniquelyReferenced_nonNull_native();
                  v67 = v50;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v69, v56);
                  outlined destroy of AnyHashable(v69);
                  v57 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [a1 updatePayload_];

                  goto LABEL_34;
                }

LABEL_28:
                outlined destroy of Any?(&v70);
                goto LABEL_29;
              }
            }

            outlined destroy of AnyHashable(v69);
          }

          v70 = 0u;
          v71 = 0u;
          goto LABEL_28;
        }
      }

      outlined destroy of AnyHashable(v69);
    }

    v70 = 0u;
    v71 = 0u;
    goto LABEL_13;
  }

  v66 = [objc_opt_self() resultWithNext_];
  a3();
  v19 = v66;
}

uint64_t LACConcurrentEvaluationControllerModel.isConcurrencyDisabled(for:)(void *a1)
{
  if ([a1 customUI])
  {
    return 1;
  }

  v3 = [a1 client];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider);
  v6 = [a1 options];
  if (v6)
  {
    v7 = v6;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v10 = [v5 infoForXPCClient:v4 evaluationOptions:v8.super.isa];

  v11 = [*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper) isConcurrentEvaluationEnabledForClientInfo_];
  swift_unknownObjectRelease();

  return v11 ^ 1;
}

void LACConcurrentEvaluationControllerModel.postProcessRequest(_:result:completion:)(void *a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  if ((LACConcurrentEvaluationControllerModel.shouldStash(request:for:)(a1, a2) & 1) != 0 && (v9 = [a2 error]) != 0)
  {
    v10 = v9;
    LACConcurrentEvaluationControllerModel.stashRequest(_:for:completion:)(a1, v9, a3, a4);
  }

  else
  {
    [*(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager) unregisterRequest_];
    a3(a2);
  }
}

id LACConcurrentEvaluationControllerModel.shouldStash(request:for:)(void *a1, void *a2)
{
  result = [a1 isInteractive];
  if (result)
  {
    v6 = [a2 error];
    if (v6)
    {
      v7 = v6;
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = [objc_opt_self() error:v8 hasCode:-4 subcode:34];

    if (!v9)
    {
      return 0;
    }

    v10 = [a1 options];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = 1089;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
        if (v14)
        {
          outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v18);
          outlined destroy of AnyHashable(v17);

          if (*(&v19 + 1))
          {
            if (swift_dynamicCast())
            {
              v15 = v17[0];
              return (v15 ^ 1);
            }

LABEL_16:
            v15 = [*(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper) isConcurrentEvaluationEnabled];
            return (v15 ^ 1);
          }

LABEL_15:
          outlined destroy of Any?(&v18);
          goto LABEL_16;
        }
      }

      outlined destroy of AnyHashable(v17);
    }

    v18 = 0u;
    v19 = 0u;
    goto LABEL_15;
  }

  return result;
}

uint64_t LACConcurrentEvaluationControllerModel.stashRequest(_:for:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v13, v10);
  if (v16)
  {
    swift_unknownObjectRetain();
    v19 = a2;

    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 userInfo];

    v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v22 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
      v27 = v26;

      if (v27)
      {
        outlined init with copy of Any(*(v22 + 56) + 32 * v25, v36);

        if (swift_dynamicCast())
        {
          v16 = v35[15] ^ 1;
          goto LABEL_9;
        }

LABEL_8:
        v16 = 1;
LABEL_9:
        v17 = OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests;
        swift_beginAccess();
        v10 = *(v5 + v17);
        swift_unknownObjectRetain();
        v28 = a2;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + v17) = v10;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_14:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
  *(v5 + v17) = v10;
LABEL_10:
  v31 = *(v10 + 16);
  v30 = *(v10 + 24);
  if (v31 >= v30 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v10);
  }

  *(v10 + 16) = v31 + 1;
  v32 = (v10 + 32 * v31);
  v32[4] = a1;
  v32[5] = a2;
  v32[6] = a3;
  v32[7] = a4;
  *(v5 + v17) = v10;
  swift_endAccess();
  v33 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager);
  [v33 addObserver:v5 forRequest:a1];
  [v33 stashRequest:a1 acceptsIdleUI:v16 & 1];
  swift_unknownObjectRelease();
}

id LACConcurrentEvaluationControllerModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACConcurrentEvaluationControllerModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACConcurrentEvaluationControllerModel.systemReady(for:manager:)(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v72 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v77 = v6;
    v78 = v5;
    [a2 removeObserver:v2 forRequest:a1];
    v17 = OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests;
    swift_beginAccess();
    v79 = v2;
    v74 = v17;
    v18 = *&v2[v17];
    v19 = *(v18 + 16);

    v20 = a1;
    if (v19)
    {
      v21 = 0;
      v22 = 56;
      while (1)
      {
        if (v21 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v23 = *(v18 + v22 - 24);
        v24 = *(v18 + v22 - 16);
        swift_unknownObjectRetain();
        v25 = v24;

        v26 = [v23 identifier];
        v27 = v20;
        v28 = [v20 identifier];

        swift_unknownObjectRelease();

        if (v26 == v28)
        {
          break;
        }

        ++v21;
        v22 += 32;
        v20 = v27;
        if (v19 == v21)
        {
          goto LABEL_7;
        }
      }

      v43 = v79;
      v44 = *&v79[v74];
      if (v21 >= *(v44 + 16))
      {
        goto LABEL_19;
      }

      v45 = (v44 + v22);
      v46 = *(v45 - 3);
      v47 = *(v45 - 2);
      v48 = *v45;
      v73 = *(v45 - 1);
      swift_beginAccess();
      swift_unknownObjectRetain();
      v49 = v47;
      v76 = v48;

      specialized Array.remove(at:)(v21);
      v51 = v50;
      swift_endAccess();
      swift_unknownObjectRelease();

      v53 = LACLogConcurrentEvaluations(v52);
      v54 = v75;
      Logger.init(_:)();
      v55 = v27;
      swift_unknownObjectRetain_n();
      v56 = v43;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v79 = v47;
        v80[0] = v60;
        v61 = v60;
        *v59 = 136446466;
        v62 = v54;
        v63 = [v56 description];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v80);

        *(v59 + 4) = v67;
        *(v59 + 12) = 1024;
        LODWORD(v67) = [v55 identifier];
        swift_unknownObjectRelease();
        *(v59 + 14) = v67;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v57, v58, "%{public}s retrying stashed request rid: %u", v59, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v61);
        v68 = v61;
        v47 = v79;
        MEMORY[0x1B27246A0](v68, -1, -1);
        MEMORY[0x1B27246A0](v59, -1, -1);

        (*(v77 + 8))(v62, v78);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v77 + 8))(v54, v78);
      }

      v69 = objc_opt_self();
      v70 = _convertErrorToNSError(_:)();
      v71 = [v69 resultWithRetry:v46 error:v70];

      v73(v71);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:

      v30 = LACLogConcurrentEvaluations(v29);
      v31 = v76;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v32 = v79;
      v33 = v20;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v80[0] = v37;
        *v36 = 136446466;
        v38 = [v32 description];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v80);

        *(v36 + 4) = v42;
        *(v36 + 12) = 1024;
        LODWORD(v42) = [v33 identifier];
        swift_unknownObjectRelease();
        *(v36 + 14) = v42;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v34, v35, "%{public}s no stashed record for request rid: %u", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B27246A0](v37, -1, -1);
        MEMORY[0x1B27246A0](v36, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v77 + 8))(v31, v78);
    }
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t LACConcurrentEvaluationControllerModel.systemDidCancel(_:manager:)(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v71 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v76 = v6;
    v77 = v5;
    [a2 removeObserver:v2 forRequest:a1];
    v17 = OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests;
    swift_beginAccess();
    v78 = v2;
    v73 = v17;
    v18 = *&v2[v17];
    v19 = *(v18 + 16);

    v20 = a1;
    if (v19)
    {
      v21 = 0;
      v22 = 56;
      while (1)
      {
        if (v21 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v23 = *(v18 + v22 - 24);
        v24 = *(v18 + v22 - 16);
        swift_unknownObjectRetain();
        v25 = v24;

        v26 = [v23 identifier];
        v27 = v20;
        v28 = [v20 identifier];

        swift_unknownObjectRelease();

        if (v26 == v28)
        {
          break;
        }

        ++v21;
        v22 += 32;
        v20 = v27;
        if (v19 == v21)
        {
          goto LABEL_7;
        }
      }

      v43 = v78;
      v44 = *&v78[v73];
      if (v21 >= *(v44 + 16))
      {
        goto LABEL_19;
      }

      v45 = v44 + v22;
      v46 = *(v45 - 24);
      v47 = *(v45 - 16);
      v72 = *(v45 - 8);
      swift_beginAccess();
      v75 = v46;
      swift_unknownObjectRetain();
      v48 = v47;

      specialized Array.remove(at:)(v21);
      v50 = v49;
      swift_endAccess();
      swift_unknownObjectRelease();

      v52 = LACLogConcurrentEvaluations(v51);
      v53 = v74;
      Logger.init(_:)();
      v54 = v27;
      swift_unknownObjectRetain_n();
      v55 = v43;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v78 = v47;
        v79[0] = v59;
        v60 = v59;
        *v58 = 136446466;
        v61 = v53;
        v62 = [v55 description];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v79);

        *(v58 + 4) = v66;
        *(v58 + 12) = 1024;
        LODWORD(v66) = [v54 identifier];
        swift_unknownObjectRelease();
        *(v58 + 14) = v66;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v56, v57, "%{public}s canceling stashed request: %u", v58, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v60);
        v67 = v60;
        v47 = v78;
        MEMORY[0x1B27246A0](v67, -1, -1);
        MEMORY[0x1B27246A0](v58, -1, -1);

        (*(v76 + 8))(v61, v77);
      }

      else
      {

        swift_unknownObjectRelease_n();
        (*(v76 + 8))(v53, v77);
      }

      v68 = objc_opt_self();
      v69 = _convertErrorToNSError(_:)();
      v70 = [v68 resultWithFailure_];

      v72(v70);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:

      v30 = LACLogConcurrentEvaluations(v29);
      v31 = v75;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v32 = v78;
      v33 = v20;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v79[0] = v37;
        *v36 = 136446466;
        v38 = [v32 description];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v79);

        *(v36 + 4) = v42;
        *(v36 + 12) = 1024;
        LODWORD(v42) = [v33 identifier];
        swift_unknownObjectRelease();
        *(v36 + 14) = v42;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v34, v35, "%{public}s no stashed record for request rid: %u", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B27246A0](v37, -1, -1);
        MEMORY[0x1B27246A0](v36, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v76 + 8))(v31, v77);
    }
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

void @objc LACConcurrentEvaluationControllerModel.systemReady(for:manager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id specialized LACConcurrentIdleUIListenerProvider.__allocating_init(handler:replyQueue:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithHandler:a1 replyQueue:a2];
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LACConcurrentEvaluationStashedRequest(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LACConcurrentEvaluationStashedRequest(uint64_t result, int a2, int a3)
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

void specialized LACConcurrentEvaluationControllerModel.processRequest(_:configuration:completion:)(void *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper];
  if ([v10 isConcurrentEvaluationAvailable] && objc_msgSend(a1, sel_isInteractive))
  {
    v63 = v7;
    v11 = [a1 options];
    if (v11)
    {
      v12 = v11;
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v65[0] = 1089;
      AnyHashable.init<A>(_:)();
      if (*(v13 + 16))
      {
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
        if (v15)
        {
          outlined init with copy of Any(*(v13 + 56) + 32 * v14, &v67);
          outlined destroy of AnyHashable(v66);

          if (*(&v68 + 1))
          {
            outlined destroy of Any?(&v67);
            goto LABEL_19;
          }

LABEL_13:
          v62 = v10;
          v17 = MEMORY[0x1E69E6370];
          outlined destroy of Any?(&v67);
          v18 = [a1 options];
          if (v18)
          {
            v19 = v18;
            v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v21 = LACConcurrentEvaluationControllerModel.isConcurrencyDisabled(for:)(a1);
          *&v67 = 1089;
          AnyHashable.init<A>(_:)();
          *(&v68 + 1) = v17;
          v22 = v21 & 1;
          LOBYTE(v67) = v21 & 1;
          outlined init with take of Any(&v67, v65);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v20;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v66, isUniquelyReferenced_nonNull_native);
          v24 = outlined destroy of AnyHashable(v66);
          v61 = v64;
          v25 = LACLogConcurrentEvaluations(v24);
          Logger.init(_:)();
          v26 = a2;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v59 = a2;
            v30 = v29;
            v31 = swift_slowAlloc();
            v60 = a3;
            v58 = v31;
            v66[0] = v31;
            *v30 = 136446466;
            v32 = [v26 description];
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v22;
            v35 = v34;

            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v66);

            *(v30 + 4) = v36;
            *(v30 + 12) = 1024;
            *(v30 + 14) = v57;
            _os_log_impl(&dword_1B0233000, v27, v28, "%{public}s setting disableConcurrentEvaluation to %{BOOL}d", v30, 0x12u);
            v37 = v58;
            __swift_destroy_boxed_opaque_existential_0(v58);
            a3 = v60;
            MEMORY[0x1B27246A0](v37, -1, -1);
            v38 = v30;
            a2 = v59;
            MEMORY[0x1B27246A0](v38, -1, -1);
          }

          v63[1](v9, v6);
          v10 = v62;
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [a1 updateOptions_];

LABEL_19:
          v40 = [a1 options];
          if (v40)
          {
            v41 = v40;
            v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v65[0] = 1089;
            AnyHashable.init<A>(_:)();
            if (*(v42 + 16))
            {
              v43 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
              if (v44)
              {
                outlined init with copy of Any(*(v42 + 56) + 32 * v43, &v67);
                outlined destroy of AnyHashable(v66);

                if (*(&v68 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    if (v66[0])
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_30;
                  }

LABEL_29:
                  if ([v10 isConcurrentEvaluationEnabled])
                  {
LABEL_34:
                    [*&a2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] registerRequest_];
                    v55 = [objc_opt_self() resultWithNext_];
                    (*(a3 + 16))(a3, v55);

                    return;
                  }

LABEL_30:
                  v45 = [a1 payload];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  else
                  {
                    v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
                  }

                  *&v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(&v67 + 1) = v48;
                  AnyHashable.init<A>(_:)();
                  v49 = *&a2[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider];
                  v50 = [a1 identifier];
                  v51 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
                  v52 = [v49 anonymousListenerWithIdentifier_];

                  *(&v68 + 1) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSXPCListener, 0x1E696B0D8);
                  *&v67 = v52;
                  outlined init with take of Any(&v67, v65);
                  v53 = swift_isUniquelyReferenced_nonNull_native();
                  v64 = v47;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v66, v53);
                  outlined destroy of AnyHashable(v66);
                  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [a1 updatePayload_];

                  goto LABEL_34;
                }

LABEL_28:
                outlined destroy of Any?(&v67);
                goto LABEL_29;
              }
            }

            outlined destroy of AnyHashable(v66);
          }

          v67 = 0u;
          v68 = 0u;
          goto LABEL_28;
        }
      }

      outlined destroy of AnyHashable(v66);
    }

    v67 = 0u;
    v68 = 0u;
    goto LABEL_13;
  }

  v63 = [objc_opt_self() resultWithNext_];
  (*(a3 + 16))(a3, v63);
  v16 = v63;
}

uint64_t static LACGlobalDomain.companionAuthentication.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 valueForFlagCompanionSessionAuthentication];

  if (!v1)
  {
    return 0;
  }

  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void key path getter for static LACGlobalDomain.companionAuthentication : LACGlobalDomain.Type(uint64_t *a1@<X8>)
{
  v2 = [swift_getObjCClassFromMetadata() companionAuthentication];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *a1 = v4;
  a1[1] = v6;
}

void key path setter for static LACGlobalDomain.companionAuthentication : LACGlobalDomain.Type(uint64_t a1)
{
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [swift_getObjCClassFromMetadata() setCompanionAuthentication_];
}

id static LACGlobalDomain.releaseUIDelegate.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 valueForFlagReleaseUIDelegate];

  return v1;
}

id LACGlobalDomain.isDTOStrictModeEnabled.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

id @objc static LACGlobalDomain.isCompanionDeviceMocked.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 *a3];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLValue];

  return v6;
}

id static LACGlobalDomain.isCompanionDeviceMocked.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t @objc static LACGlobalDomain.isCompanionDeviceMocked.setter(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  v11[3] = MEMORY[0x1E69E6370];
  LOBYTE(v11[0]) = a3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 *a4];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  specialized static LACGlobalDomain.setObject(_:forKey:)(v11, v7, v9);

  return outlined destroy of Any?(v11);
}

uint64_t static LACGlobalDomain.isCompanionDeviceMocked.setter(char a1, SEL *a2)
{
  v9[3] = MEMORY[0x1E69E6370];
  LOBYTE(v9[0]) = a1;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 *a2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  specialized static LACGlobalDomain.setObject(_:forKey:)(v9, v5, v7);

  return outlined destroy of Any?(v9);
}

void specialized static LACGlobalDomain.setObject(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = *MEMORY[0x1E696A400];
  v9 = [v7 persistentDomainForName_];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v20 = v10;
  outlined init with copy of Any?(a1, &v18);
  if (v19)
  {
    outlined init with take of Any(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, a3, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    outlined destroy of Any?(&v18);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v17);
    outlined destroy of Any?(v17);
  }

  v12 = [v6 standardUserDefaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setPersistentDomain:isa forName:v8];

  v14 = [v6 standardUserDefaults];
  [v14 synchronize];

  v15 = [objc_opt_self() sharedInstance];
  [v15 postNotification_];
}

uint64_t specialized static LACGlobalDomain.companionAuthentication.setter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v16 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E6969080];
    v4 = a1;
    v5 = a2;
  }

  v14 = v4;
  v15 = v5;
  v17 = v6;
  v7 = objc_opt_self();
  outlined copy of Data?(a1, a2);
  v8 = [v7 sharedInstance];
  v9 = [v8 flagCompanionSessionAuthenticationKey];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  specialized static LACGlobalDomain.setObject(_:forKey:)(&v14, v10, v12);
  outlined consume of Data?(a1, a2);

  return outlined destroy of Any?(&v14);
}

uint64_t specialized LACGlobalDomain.isDTOStrictModeEnabled.setter(unint64_t a1, SEL *a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = type metadata accessor for NSNumber();
    v4 = v3;
  }

  else
  {
    v4 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v4;
  v13[3] = a1;
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 sharedInstance];
  v8 = [v7 *a2];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  specialized static LACGlobalDomain.setObject(_:forKey:)(v13, v9, v11);

  return outlined destroy of Any?(v13);
}

id keypath_get_5Tm@<X0>(SEL *a1@<X3>, void *a2@<X8>)
{
  result = [swift_getObjCClassFromMetadata() *a1];
  *a2 = result;
  return result;
}

id keypath_set_6Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = *a5;

  return [ObjCClassFromMetadata v8];
}

id keypath_get_3Tm@<X0>(SEL *a1@<X3>, _BYTE *a2@<X8>)
{
  result = [swift_getObjCClassFromMetadata() *a1];
  *a2 = result;
  return result;
}

id keypath_set_4Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = *a5;

  return [ObjCClassFromMetadata v8];
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t LACCompanionAuthenticationSessionMonitor.handleSessionUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v0 replyQueue];
  v7 = [v0 observers];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v0;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationSessionMonitor.handleSessionUpdate();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_25;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v14;
  MEMORY[0x1B2722D20](0, v6, v3, v9);
  _Block_release(v9);

  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

id LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initForCompanion:a1 environmentProvider:a2 replyQueue:a3];
  swift_unknownObjectRelease();

  return v4;
}

{
  v3 = specialized LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t LACCompanionAuthenticationSessionMonitor.description.getter()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();

  v7 = v1;
  MEMORY[0x1B2722A80](0xD000000000000011, 0x80000001B0355800);
  v2 = NSStringFromLACCompanionType([v0 companion]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2722A80](v3, v5);

  return v7;
}

uint64_t LACCompanionAuthenticationSessionMonitor.isAvailable.getter()
{
  LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_0(v3, v4);
  LOBYTE(v0) = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v0 & 1;
}

uint64_t LACCompanionAuthenticationSessionMonitor.refresh(completion:)(uint64_t a1, uint64_t a2)
{
  LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  (*(v5 + 32))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

Swift::Void __swiftcall LACCompanionAuthenticationSessionMonitor.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMd, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v77 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v77 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v77 - v16;
  v18 = [v1 isAvailable];
  v19 = v18;
  v20 = LACLogABM(v18);
  if (v19)
  {
    Logger.init(_:)();
    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v79 = v5;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v78 = v3;
      v27 = v2;
      v28 = v15;
      v29 = v6;
      v30 = v26;
      *v25 = 138543362;
      *(v25 + 4) = v21;
      *v26 = v21;
      v31 = v21;
      _os_log_impl(&dword_1B0233000, v22, v23, "%{public}@ Starting listener for session monitoring", v25, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v32 = v30;
      v6 = v29;
      v15 = v28;
      v2 = v27;
      v3 = v78;
      MEMORY[0x1B27246A0](v32, -1, -1);
      v33 = v25;
      v5 = v79;
      MEMORY[0x1B27246A0](v33, -1, -1);
    }

    v36 = *(v6 + 8);
    v34 = v6 + 8;
    v35 = v36;
    v36(v17, v5);
    v37 = [v21 isMonitoring];
    if (v37)
    {
      v38 = LACLogABM(v37);
      Logger.init(_:)();
      v39 = v21;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        *(v42 + 4) = v39;
        *v43 = v39;
        v44 = v39;
        _os_log_impl(&dword_1B0233000, v40, v41, "%{public}@ session listener already registered", v42, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v43, -1, -1);
        MEMORY[0x1B27246A0](v42, -1, -1);
      }

      v35(v12, v5);
    }

    else
    {
      v77 = v35;
      v78 = v34;
      v53 = &v21[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider];
      swift_beginAccess();
      v54 = *(v53 + 3);
      v55 = *(v53 + 4);
      v56 = __swift_project_boxed_opaque_existential_0(v53, v54);
      v57 = *(v54 - 8);
      MEMORY[0x1EEE9AC00](v56);
      v59 = &v77 - v58;
      (*(v57 + 16))(&v77 - v58);
      v60 = (*(v55 + 24))(v54, v55);
      (*(v57 + 8))(v59, v54);
      v85 = v60;
      LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v82);
      v61 = v83;
      v62 = v84;
      __swift_project_boxed_opaque_existential_0(v82, v83);
      v81 = (*(v62 + 24))(v61, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x1E695BED8]);
      v63 = v80;
      Publishers.CombineLatest.init(_:_:)();
      __swift_destroy_boxed_opaque_existential_0(v82);
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      *(v65 + 16) = partial apply for closure #1 in LACCompanionAuthenticationSessionMonitor.start();
      *(v65 + 24) = v64;
      lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<AnyPublisher<Bool, Never>, AnyPublisher<Bool, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMd, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMR, MEMORY[0x1E695BC68]);
      v66 = Publisher<>.sink(receiveValue:)();

      (*(v3 + 8))(v63, v2);
      *&v21[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription] = v66;

      v68 = LACLogABM(v67);
      Logger.init(_:)();
      v69 = v15;
      v70 = v21;
      v71 = v69;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138543362;
        *(v74 + 4) = v70;
        *v75 = v70;
        v76 = v70;
        _os_log_impl(&dword_1B0233000, v72, v73, "%{public}@ Did start listener for session events", v74, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v75, -1, -1);
        MEMORY[0x1B27246A0](v74, -1, -1);
      }

      v77(v71, v79);
    }
  }

  else
  {
    Logger.init(_:)();
    v45 = v1;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v6;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138543362;
      *(v49 + 4) = v45;
      *v50 = v45;
      v51 = v45;
      _os_log_impl(&dword_1B0233000, v46, v47, "%{public}@ Did not start listener - provider not available", v49, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v50, -1, -1);
      v52 = v49;
      v6 = v48;
      MEMORY[0x1B27246A0](v52, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void closure #1 in LACCompanionAuthenticationSessionMonitor.start()(char a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v12), v6, v7 = v13, v8 = v14, __swift_project_boxed_opaque_existential_0(v12, v13), LOBYTE(v6) = (*(v8 + 8))(v7, v8), __swift_destroy_boxed_opaque_existential_0(v12), (v6 & 1) != 0))
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    [v9 setIsUnderlyingSessionActive_];
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v10 = v11;
    [v11 setIsUnderlyingSessionActive_];
  }
}

Swift::Void __swiftcall LACCompanionAuthenticationSessionMonitor.stop()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = [v1 isMonitoring];
  if (v9 && *&v1[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription])
  {
    *&v1[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription] = 0;
    AnyCancellable.cancel()();
    v11 = LACLogABM(v10);
    Logger.init(_:)();
    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_1B0233000, v13, v14, "%{public}@ Did stop listener for AKS events", v15, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v16, -1, -1);
      MEMORY[0x1B27246A0](v15, -1, -1);
    }
  }

  else
  {
    v18 = LACLogABM(v9);
    Logger.init(_:)();
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1B0233000, v20, v21, "%{public}@ Cannot stop monitoring, no AKS listener registered", v22, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v23, -1, -1);
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    v8 = v6;
  }

  (*(v3 + 8))(v8, v2);
}

uint64_t LACCompanionAuthenticationSessionMonitor.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v4 replyQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v19;
  MEMORY[0x1B2722D20](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void closure #1 in LACCompanionAuthenticationSessionMonitor.add(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong observers];

    [v7 *a3];
  }
}

void @objc LACCompanionAuthenticationSessionMonitor.add(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void __swiftcall LACCompanionAuthenticationSessionMonitor.init()(LACCompanionAuthenticationSessionMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void closure #1 in LACCompanionAuthenticationSessionMonitor.handleSessionUpdate()(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 allObjects];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo48LACCompanionAuthenticationSessionMonitorObserver_pMd, &_sSo48LACCompanionAuthenticationSessionMonitorObserver_pMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_19;
  }

  if (v9 < 0)
  {
    v29 = v9;
  }

  else
  {
    v29 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v11 = MEMORY[0x1B2722F00](v29);
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v37 = v9 & 0xC000000000000001;
    v13 = (v5 + 8);
    *&v10 = 138543874;
    v30 = v10;
    v33 = v7;
    v34 = v4;
    v31 = v13;
    v32 = v9;
    do
    {
      if (v37)
      {
        v14 = MEMORY[0x1B2722E50](v12, v9);
        v15 = v14;
      }

      else
      {
        v15 = *(v9 + 8 * v12 + 32);
        v14 = swift_unknownObjectRetain();
      }

      v16 = LACLogABM(v14);
      Logger.init(_:)();
      v38 = a2;
      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v40 = v36;
        *v19 = v30;
        v21 = v38;
        *(v19 + 4) = v38;
        *v20 = a2;
        *(v19 + 12) = 1024;
        *(v19 + 14) = [v21 isUnderlyingSessionActive];
        *(v19 + 18) = 2080;
        v39 = v15;
        swift_unknownObjectRetain();
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

        *(v19 + 20) = v24;
        _os_log_impl(&dword_1B0233000, v17, v18, "%{public}@ Companion session updated isActive: %{BOOL}d. Informing observer %s", v19, 0x1Cu);
        outlined destroy of AsyncStream<()>.Continuation?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v25 = v20;
        v4 = v34;
        MEMORY[0x1B27246A0](v25, -1, -1);
        v26 = v36;
        __swift_destroy_boxed_opaque_existential_0(v36);
        v27 = v26;
        v9 = v32;
        v7 = v33;
        MEMORY[0x1B27246A0](v27, -1, -1);
        v28 = v19;
        v13 = v31;
        MEMORY[0x1B27246A0](v28, -1, -1);
      }

      else
      {
      }

      (*v13)(v7, v4);
      ++v12;
      [v15 companionAuthenticationSessionMonitorDidUpdate_];
      swift_unknownObjectRelease();
    }

    while (v11 != v12);
LABEL_19:

    return;
  }

  __break(1u);
}