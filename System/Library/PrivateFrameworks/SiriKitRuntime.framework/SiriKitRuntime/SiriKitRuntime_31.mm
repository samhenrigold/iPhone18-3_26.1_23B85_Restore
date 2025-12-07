char *UsoTask.parseEntity(userEntities:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_15:
    v9 = v3[1].u64[0];
    if (!v9)
    {
      v11 = 0;
LABEL_30:

      return v11;
    }

    if (v9 < 8)
    {
      v10 = 0;
      LODWORD(v11) = 0;
LABEL_28:
      v24 = v9 - v10;
      v25 = &v3[2].u8[v10];
      do
      {
        v26 = *v25++;
        v11 = v26 | v11;
        --v24;
      }

      while (v24);
      goto LABEL_30;
    }

    if (v9 >= 0x20)
    {
      v10 = v9 & 0x7FFFFFFFFFFFFFE0;
      v12 = v3 + 3;
      v13 = 0uLL;
      v14 = v9 & 0x7FFFFFFFFFFFFFE0;
      v15 = 0uLL;
      do
      {
        v13 = vorrq_s8(v12[-1], v13);
        v15 = vorrq_s8(*v12, v15);
        v12 += 2;
        v14 -= 32;
      }

      while (v14);
      v16 = vorrq_s8(v15, v13);
      *v16.i8 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      v17 = v16.i64[0] | HIDWORD(v16.i64[0]) | ((v16.i64[0] | HIDWORD(v16.i64[0])) >> 16);
      v11 = v17 | (v17 >> 8);
      if (v9 == v10)
      {
        goto LABEL_30;
      }

      if ((v9 & 0x18) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
      v10 = 0;
    }

    v18 = v10;
    v10 = v9 & 0x7FFFFFFFFFFFFFF8;
    v19 = v11;
    v20 = &v3[2].i8[v18];
    v21 = v18 - (v9 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v22 = *v20++;
      v19 = vorr_s8(v22, v19);
      v21 += 8;
    }

    while (v21);
    v23 = *&v19 | HIDWORD(*&v19) | ((*&v19 | HIDWORD(*&v19)) >> 16);
    v11 = v23 | (v23 >> 8);
    if (v9 == v10)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v27 = MEMORY[0x1E69E7CC0];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v27;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](v5, a1);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v2 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }
      }

      v6 = UsoTask.parseEntity(userEntity:)();

      v8 = v27[1].u64[0];
      v7 = v27[1].u64[1];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      v27[1].i64[0] = v8 + 1;
      v27[2].i8[v8] = v6;
      if (v2 == v5)
      {

        goto LABEL_15;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t UsoTask.parseEntity(userEntity:)()
{
  v1 = v0;
  v114 = type metadata accessor for UsoIdentifier.NluComponent();
  v2 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v103 = v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v113);
  v100 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v98 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v98 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v98 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v107 = v98 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v98 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v116 = v98 - v23;
  v24 = type metadata accessor for IdentifierAppBundle();
  v25 = *(v24 - 8);
  v131 = v24;
  v132 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v130 = v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v129 = v98 - v28;
  v134 = type metadata accessor for UsoIdentifier();
  v29 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v104 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v133 = v98 - v32;
  v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v34 + 16);

  v128 = v35;
  v98[1] = v1;
  if (!v35)
  {

LABEL_52:

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  v108 = v16;
  v99 = v10;
  v36 = 0;
  v126 = v29 + 16;
  v125 = *MEMORY[0x1E69D1AE0];
  v123 = (v132 + 104);
  v122 = (v132 + 8);
  v112 = *MEMORY[0x1E69D1768];
  v111 = (v2 + 104);
  v110 = (v2 + 56);
  v109 = (v2 + 48);
  v101 = (v2 + 32);
  v105 = (v2 + 8);
  v124 = (v29 + 8);
  v106 = v13;
  v37 = v133;
  v127 = v34;
  v115 = v29;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
LABEL_53:
      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, static Logger.executor);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_1DC659000, v94, v95, "PhoneAffinityScorer Found an unsupported UsoEntity_common_UserEntity", v96, 2u);
        MEMORY[0x1E12A2F50](v96, -1, -1);
      }

      return 1;
    }

    v38 = *(v29 + 72);
    v121 = v34 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v120 = v38;
    v132 = v36;
    v119 = *(v29 + 16);
    v119(v37, v121 + v38 * v36, v134);
    v39 = v129;
    UsoIdentifier.appBundleSemantic.getter();
    v40 = v130;
    v41 = v131;
    v118 = *v123;
    v118(v130, v125, v131);
    v42 = MEMORY[0x1E129CA00](v39, v40);
    v43 = v40;
    v44 = v7;
    v45 = *v122;
    (*v122)(v43, v41);
    v46 = v39;
    v37 = v133;
    v117 = v45;
    v45(v46, v41);
    v7 = v44;
    v47 = v116;
    if ((v42 & 1) == 0)
    {
      goto LABEL_8;
    }

    UsoIdentifier.sourceComponent.getter();
    v48 = v114;
    (*v111)(v21, v112, v114);
    (*v110)(v21, 0, 1, v48);
    v49 = *(v113 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v44, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, v44 + v49, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v50 = *v109;
    if ((*v109)(v44, 1, v48) == 1)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v44, v107, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    if (v50(v44 + v49, 1, v48) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v105)(v107, v48);
LABEL_7:
      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
      v13 = v106;
      goto LABEL_8;
    }

    v51 = v44 + v49;
    v52 = v103;
    (*v101)(v103, v51, v48);
    lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
    v102 = dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *v105;
    (*v105)(v52, v48);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v53(v107, v48);
    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v13 = v106;
    if (v102)
    {
      goto LABEL_17;
    }

LABEL_8:
    (*v124)(v37, v134);
LABEL_9:
    v36 = v132 + 1;
    v34 = v127;
    v29 = v115;
    if (v128 == (v132 + 1))
    {

      v57 = 0;
      v58 = &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR;
      v59 = v100;
      v60 = v104;
      while (1)
      {
        if (v57 >= *(v34 + 16))
        {
          goto LABEL_60;
        }

        v133 = v57;
        v119(v60, v121 + v120 * v57, v134);
        v61 = v58;
        v62 = v129;
        UsoIdentifier.appBundleSemantic.getter();
        v64 = v130;
        v63 = v131;
        v118(v130, v125, v131);
        v65 = MEMORY[0x1E129CA00](v62, v64);
        v66 = v64;
        v67 = v117;
        v117(v66, v63);
        v68 = v62;
        v58 = v61;
        v69 = v108;
        v67(v68, v63);
        if (v65)
        {
          UsoIdentifier.sourceComponent.getter();
          v70 = v114;
          (*v111)(v13, v112, v114);
          (*v110)(v13, 0, 1, v70);
          v71 = *(v113 + 48);
          outlined init with copy of ReferenceResolutionClientProtocol?(v69, v59, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
          outlined init with copy of ReferenceResolutionClientProtocol?(v13, v59 + v71, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
          v72 = *v109;
          if ((*v109)(v59, 1, v70) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
            outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
            if (v72(v59 + v71, 1, v70) != 1)
            {
              goto LABEL_24;
            }

            outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
          }

          else
          {
            v73 = v99;
            outlined init with copy of ReferenceResolutionClientProtocol?(v59, v99, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
            if (v72(v59 + v71, 1, v70) == 1)
            {
              v13 = v106;
              outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
              outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
              (*v105)(v73, v70);
              v60 = v104;
LABEL_24:
              outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
              goto LABEL_25;
            }

            v74 = v59 + v71;
            v75 = v103;
            (*v101)(v103, v74, v70);
            lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(&lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            v77 = *v105;
            v78 = v100;
            (*v105)(v75, v70);
            v13 = v106;
            outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
            outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
            v59 = v78;
            v77(v73, v70);
            outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, v58);
            v60 = v104;
            if ((v76 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v79 = UsoIdentifier.namespace.getter();
          if (v80)
          {
            if (v79 == 0x7250726577736E61 && v80 == 0xED0000746375646FLL)
            {
            }

            else
            {
              v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v81 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            if (one-time initialization token for kAnswerProductValues != -1)
            {
              swift_once();
            }

            v82 = static UsoTask.kAnswerProductValues;
            v83 = UsoIdentifier.value.getter();
            v85 = v84;
            if (*(v82 + 16))
            {
              v86 = v83;
              Hasher.init(_seed:)();
              String.hash(into:)();
              v87 = Hasher._finalize()();
              v88 = -1 << *(v82 + 32);
              v89 = v87 & ~v88;
              if ((*(v82 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89))
              {
                v90 = ~v88;
                while (1)
                {
                  v91 = (*(v82 + 48) + 16 * v89);
                  v92 = *v91 == v86 && v91[1] == v85;
                  if (v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v89 = (v89 + 1) & v90;
                  if (((*(v82 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                (*v124)(v104, v134);

                return 0;
              }

LABEL_49:

              v59 = v100;
              v60 = v104;
            }

            else
            {

              v59 = v100;
            }
          }
        }

LABEL_25:
        v57 = (v133 + 1);
        (*v124)(v60, v134);
        v34 = v127;
        if (v57 == v128)
        {
          goto LABEL_52;
        }
      }
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  if (v50(v44 + v49, 1, v48) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v13 = v106;
LABEL_17:
  v54 = UsoIdentifier.namespace.getter();
  if (!v55)
  {
    goto LABEL_8;
  }

  if (v54 != 0x746553656E6F6870 || v55 != 0xEC000000676E6974)
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v124)(v37, v134);
    if (v56)
    {
      goto LABEL_58;
    }

    goto LABEL_9;
  }

  (*v124)(v37, v134);
LABEL_58:

  return 2;
}

uint64_t one-time initialization function for forceEnabled(uint64_t a1)
{
  return one-time initialization function for forceEnabled(a1, &static InCallFeatureFlags.forceEnabled);
}

{
  return one-time initialization function for forceEnabled(a1, &static PhoneFeatureFlags.forceEnabled);
}

uint64_t *InCallFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static InCallFeatureFlags.forceEnabled;
}

uint64_t one-time initialization function for forceEnabled(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  *a2 = result;
  return result;
}

uint64_t *PhoneFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static PhoneFeatureFlags.forceEnabled;
}

uint64_t PhoneFeatureFlags.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static PhoneFeatureFlags.forceEnabled;
  os_unfair_lock_lock((static PhoneFeatureFlags.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for PhoneFeatureFlags;
    v3[4] = lazy protocol witness table accessor for type PhoneFeatureFlags and conformance PhoneFeatureFlags();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized UsoTask.parseEntity(trigger:)(uint64_t result)
{
  if (result)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "PhoneAffinityScorer Found an unsupported UsoEntity_common_EventTrigger", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallFeatureFlags and conformance InCallFeatureFlags()
{
  result = lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags;
  if (!lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags;
  if (!lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallFeatureFlags and conformance InCallFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneFeatureFlags and conformance PhoneFeatureFlags()
{
  result = lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags;
  if (!lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags;
  if (!lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneFeatureFlags and conformance PhoneFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SettingParseOptions and conformance SettingParseOptions()
{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions;
  if (!lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingParseOptions and conformance SettingParseOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneSettingParseResult(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for PhoneSettingParseResult(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for PhoneSettingParseResult(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PhoneSettingParseResult(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

SiriKitRuntime::PhotosAffinityScorer __swiftcall PhotosAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CE30;
  v1 = 0xD000000000000027;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t one-time initialization function for supportedIntents()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedIntents);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.supportedIntents = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.supportedIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedIntents != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.supportedIntents;
}

uint64_t one-time initialization function for sharedIntents()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for sharedIntents);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.sharedIntents = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.sharedIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedIntents != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.sharedIntents;
}

uint64_t one-time initialization function for supportedApps()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedApps);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.supportedApps = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.supportedApps.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedApps != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.supportedApps;
}

uint64_t one-time initialization function for supportedEntities()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedEntities);
  result = swift_arrayDestroy();
  static PhotosAffinityScorer.supportedEntities = v0;
  return result;
}

uint64_t *PhotosAffinityScorer.supportedEntities.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedEntities != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.supportedEntities;
}

uint64_t *PhotosAffinityScorer.ignoredApps.unsafeMutableAddressor()
{
  if (one-time initialization token for ignoredApps != -1)
  {
    swift_once();
  }

  return &static PhotosAffinityScorer.ignoredApps;
}

unint64_t closure #2 in PhotosAffinityScorer.isMediaPlaying(with:)()
{
  v0 = type metadata accessor for UsoEntity_common_PlaybackState.DefinedValues();
  v44 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v38 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v43 = v38 - v11;
  v12 = type metadata accessor for RREntity();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v13 + 8))(v15, v12);
  v16 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

  result = MEMORY[0x1E129C9E0](v16);
  if (result >> 62)
  {
    v18 = result;
    v19 = __CocoaSet.count.getter();
    result = v18;
    if (!v19)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0);
LABEL_7:

    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v46, &_sypSgMd, &_sypSgMR);
    if (v46[3])
    {
      type metadata accessor for UsoTask_noVerb_common_MediaItem();
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);

        v28 = 0;
        return v28 & 1;
      }

      v38[0] = v2;
      v38[1] = v16;
      v20 = v48;

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v40 = v20;

      if (v46[0] && (v21 = dispatch thunk of UsoEntity_common_MediaItem.playbackState.getter(), , v21))
      {
        v22 = v3;
        v23 = v43;
        dispatch thunk of UsoEntity_common_PlaybackState.definedValue.getter();

        v24 = v44;
      }

      else
      {
        v22 = v3;
        v23 = v43;
        v24 = v44;
        (*(v44 + 56))(v43, 1, 1, v0);
      }

      v29 = v45;
      (*(v24 + 104))(v45, *MEMORY[0x1E69D2050], v0);
      (*(v24 + 56))(v29, 0, 1, v0);
      v30 = *(v22 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v23, v5, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v39 = v30;
      outlined init with copy of ReferenceResolutionClientProtocol?(v29, &v5[v30], &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v31 = *(v24 + 48);
      v41 = v0;
      if (v31(v5, 1, v0) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);
        if (v31(&v5[v39], 1, v41) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          v28 = 1;
          return v28 & 1;
        }
      }

      else
      {
        v32 = v42;
        outlined init with copy of ReferenceResolutionClientProtocol?(v5, v42, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        v33 = v39;
        v34 = v41;
        if (v31(&v5[v39], 1, v41) != 1)
        {
          v35 = v44;
          v36 = v38[0];
          (*(v44 + 32))(v38[0], &v5[v33], v34);
          lazy protocol witness table accessor for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues();
          v28 = dispatch thunk of static Equatable.== infix(_:_:)();

          v37 = *(v35 + 8);
          v37(v36, v34);
          outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);
          v37(v32, v34);
          outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          return v28 & 1;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);
        (*(v44 + 8))(v32, v34);
      }

      v26 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd;
      v27 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR;
      v25 = v5;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);

      v25 = v46;
      v26 = &_sypSgMd;
      v27 = &_sypSgMR;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v25, v26, v27);
    v28 = 0;
    return v28 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized PhotosAffinityScorer.unsupportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v153 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v152 = &v115 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v161 = &v115 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v115 - v10;
  v12 = type metadata accessor for RRMetadata();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v115 - v17;
  v146 = type metadata accessor for RREntity();
  v19 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v139 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v115 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v115 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v115 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v115 - v28;
  v145 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v145);
  v138 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v115 - v31;
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v32);
  v144 = &v115 - v35;
  v136 = *(a1 + 16);
  v116 = v33;
  if (v136)
  {
    v36 = 0;
    v38 = *(v33 + 16);
    v37 = v33 + 16;
    v133 = v38;
    v117 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v132 = a1 + v117;
    v140 = *(v37 + 56);
    v143 = (v19 + 8);
    v131 = (v37 - 8);
    v159 = (v13 + 32);
    v160 = v13 + 16;
    v158 = (v13 + 88);
    v157 = *MEMORY[0x1E69D27E8];
    v149 = (v13 + 8);
    v148 = (v13 + 96);
    v156 = (v3 + 32);
    v126 = *MEMORY[0x1E69D2918];
    v125 = (v3 + 104);
    v151 = v3;
    v124 = (v3 + 8);
    v121 = *MEMORY[0x1E69D28F8];
    v134 = v37;
    v119 = (v37 + 16);
    v122 = MEMORY[0x1E69E7CC0];
    v150 = v2;
    v39 = v144;
    v127 = v11;
    v135 = v19;
    v123 = v13;
    v147 = v18;
    while (1)
    {
      v141 = v36;
      v133(v39, v132 + v140 * v36, v145, v34);
      if (one-time initialization token for ignoredApps != -1)
      {
        swift_once();
      }

      v40 = static PhotosAffinityScorer.ignoredApps;
      v41 = v137;
      RRCandidate.entity.getter();
      v42 = RREntity.appBundleId.getter();
      v44 = v43;
      v142 = *v143;
      v142(v41, v146);
      if (*(v40 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v45 = Hasher._finalize()();
        v46 = -1 << *(v40 + 32);
        v47 = v45 & ~v46;
        if ((*(v40 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
        {
          v48 = ~v46;
          while (1)
          {
            v49 = (*(v40 + 48) + 16 * v47);
            v50 = *v49 == v42 && v49[1] == v44;
            if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v47 = (v47 + 1) & v48;
            if (((*(v40 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_4;
        }
      }

LABEL_17:

      v51 = v130;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      v142(v51, v146);
      v52 = UsoTask.verbString.getter();
      v54 = v53;

      if (one-time initialization token for kUsoCommonAppEntityName != -1)
      {
        swift_once();
      }

      if (v52 == kUsoCommonAppEntityName._countAndFlagsBits && v54 == kUsoCommonAppEntityName._object)
      {
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v56 = v128;
      RRCandidate.entity.getter();
      v57 = RREntity.metadata.getter();
      v142(v56, v146);
      v58 = *(v57 + 16);
      if (v58)
      {
        v59 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v129 = v57;
        v60 = v57 + v59;
        v61 = *(v123 + 72);
        v63 = MEMORY[0x1E69E7CC0];
        v154 = *(v123 + 16);
        v62 = v154;
        v155 = v61;
        v154(v18, v60, v12);
        while (1)
        {
          (*v159)(v15, v18, v12);
          v64 = (*v158)(v15, v12);
          if (v64 == v157)
          {
            v65 = v12;
            (*v148)(v15, v12);
            v66 = *v156;
            v67 = v153;
            v68 = v15;
            (*v156)(v153, v15, v2);
            v69 = v2;
            v70 = v152;
            v66(v152, v67, v69);
            v66(v161, v70, v69);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
            }

            v72 = v63[2];
            v71 = v63[3];
            v73 = v151;
            v15 = v68;
            if (v72 >= v71 >> 1)
            {
              v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v63);
              v73 = v151;
              v63 = v75;
            }

            v12 = v65;
            v63[2] = v72 + 1;
            v74 = v63 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v72;
            v2 = v150;
            v66(v74, v161, v150);
            v18 = v147;
            v62 = v154;
            v61 = v155;
          }

          else
          {
            (*v149)(v15, v12);
          }

          v60 += v61;
          if (!--v58)
          {
            break;
          }

          v62(v18, v60, v12);
        }
      }

      else
      {

        v63 = MEMORY[0x1E69E7CC0];
      }

      v76 = *v125;
      v77 = v127;
      (*v125)(v127, v126, v2);
      v78 = specialized Sequence<>.contains(_:)(v77, v63);
      v155 = *v124;
      v155(v77, v2);
      if (!v78)
      {
        v96 = v144;
        (*v131)(v144, v145);
        v39 = v96;

        goto LABEL_5;
      }

      v76(v77, v121, v2);
      v79 = specialized Sequence<>.contains(_:)(v77, v63);

      v155(v77, v2);
      if (!v79)
      {
        if (one-time initialization token for supportedApps != -1)
        {
          swift_once();
        }

        v80 = static PhotosAffinityScorer.supportedApps;
        v81 = v118;
        RRCandidate.entity.getter();
        v82 = RREntity.appBundleId.getter();
        v84 = v83;
        v142(v81, v146);
        if (*(v80 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v85 = Hasher._finalize()(), v86 = -1 << *(v80 + 32), v87 = v85 & ~v86, ((*(v80 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) != 0))
        {
          v88 = ~v86;
          while (1)
          {
            v89 = (*(v80 + 48) + 16 * v87);
            v90 = *v89 == v82 && v89[1] == v84;
            if (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v87 = (v87 + 1) & v88;
            if (((*(v80 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v39 = v144;
          (*v131)(v144, v145);
        }

        else
        {
LABEL_49:

          v91 = *v119;
          (*v119)(v120, v144, v145);
          v92 = v122;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v163 = v92;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 16) + 1, 1);
            v92 = v163;
          }

          v95 = *(v92 + 16);
          v94 = *(v92 + 24);
          if (v95 >= v94 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
            v92 = v163;
          }

          *(v92 + 16) = v95 + 1;
          v122 = v92;
          v91((v92 + v117 + v95 * v140), v120, v145);
          v39 = v144;
        }

        goto LABEL_5;
      }

LABEL_4:
      v39 = v144;
      (*v131)(v144, v145);
LABEL_5:
      v36 = v141 + 1;
      v19 = v135;
      if (v141 + 1 == v136)
      {
        goto LABEL_57;
      }
    }
  }

  v122 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v97 = *(v122 + 16);
  if (v97)
  {
    v162 = MEMORY[0x1E69E7CC0];
    v98 = v122;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97, 0);
    v99 = v162;
    v100 = v116 + 16;
    v101 = *(v116 + 16);
    v102 = v98 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v160 = *(v116 + 72);
    v161 = v101;
    v158 = (v116 + 8);
    v159 = (v19 + 8);
    v103 = v138;
    do
    {
      v104 = v145;
      v105 = v100;
      (v161)(v103, v102, v145);
      v106 = v139;
      RRCandidate.entity.getter();
      v107 = RREntity.appBundleId.getter();
      v109 = v108;
      (*v159)(v106, v146);
      (*v158)(v103, v104);
      v162 = v99;
      v111 = v99[2];
      v110 = v99[3];
      if (v111 >= v110 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
        v99 = v162;
      }

      v99[2] = v111 + 1;
      v112 = &v99[2 * v111];
      v112[4] = v107;
      v112[5] = v109;
      v102 += v160;
      --v97;
      v100 = v105;
    }

    while (v97);

    if (v99[2])
    {
      goto LABEL_63;
    }

LABEL_65:
    v113 = 0;
    goto LABEL_66;
  }

  v99 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_65;
  }

LABEL_63:
  v113 = v99[4];

LABEL_66:

  return v113;
}

uint64_t specialized PhotosAffinityScorer.isMediaPlaying(with:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for RRMetadata();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v58 = type metadata accessor for RREntity();
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v12 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v44 - v15;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v63 = &v44 - v19;
  v56 = *(a1 + 16);
  v46 = v17;
  if (v56)
  {
    v20 = 0;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v48 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v53 = a1 + v48;
    v54 = v22;
    v60 = *(v21 + 56);
    v52 = (v10 + 8);
    v67 = v4 + 16;
    v66 = *MEMORY[0x1E69D2908];
    v65 = *MEMORY[0x1E69D27E8];
    v64 = v4 + 104;
    v23 = (v4 + 8);
    v55 = v21;
    v49 = (v21 - 8);
    v50 = (v21 + 16);
    v61 = MEMORY[0x1E69E7CC0];
    v59 = v12;
    v22(v63, a1 + v48, v12, v18);
LABEL_6:
    v62 = v20 + 1;
    v24 = v57;
    RRCandidate.entity.getter();
    v25 = RREntity.metadata.getter();
    (*v52)(v24, v58);
    v12 = 0;
    v26 = *(v25 + 16);
    while (1)
    {
      if (v26 == v12)
      {

        v12 = v59;
        (*v49)(v63, v59);
LABEL_4:
        v20 = v62;
        if (v62 == v56)
        {
          goto LABEL_16;
        }

        v54(v63, v53 + v60 * v62, v12, v18);
        goto LABEL_6;
      }

      if (v12 >= *(v25 + 16))
      {
        break;
      }

      (*(v4 + 16))(v9, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v3);
      v27 = type metadata accessor for RRDataSourceMetadataValue();
      (*(*(v27 - 8) + 104))(v6, v66, v27);
      (*(v4 + 104))(v6, v65, v3);
      v28 = static RRMetadata.== infix(_:_:)();
      v29 = *(v4 + 8);
      v29(v6, v3);
      v29(v9, v3);
      if (v28)
      {

        v30 = *v50;
        (*v50)(v51, v63, v59);
        v31 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
          v31 = v68;
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v31 = v68;
        }

        *(v31 + 16) = v34 + 1;
        v61 = v31;
        v35 = v31 + v48 + v34 * v60;
        v12 = v59;
        v30(v35, v51, v59);
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:

    result = (*v25)(v9, v12);
    __break(1u);
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v36 = 0;
    v37 = v61;
    v38 = *(v61 + 16);
    v39 = v46;
    v25 = v46 + 8;
    v23 = v47;
    v9 = v45;
    do
    {
      v40 = v36;
      if (v38 == v36)
      {
        break;
      }

      if (v36 >= *(v37 + 16))
      {
        goto LABEL_23;
      }

      (*(v39 + 16))(v9, v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, v12, v18);
      v41 = closure #2 in PhotosAffinityScorer.isMediaPlaying(with:)();
      if (v23)
      {
        goto LABEL_24;
      }

      v42 = v41;
      ++v36;
      (*v25)(v9, v12);
      v37 = v61;
    }

    while ((v42 & 1) == 0);

    return v38 != v40;
  }

  return result;
}

uint64_t specialized PhotosAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v155 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v154 = &v119 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v165 = &v119 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v157 = type metadata accessor for RRMetadata();
  v12 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  v149 = type metadata accessor for RREntity();
  v18 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v143 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v119 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v119 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v141 = &v119 - v27;
  v148 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v148);
  v142 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v123 = &v119 - v30;
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v35 = &v119 - v32;
  v140 = *(a1 + 16);
  v121 = v33;
  if (v140)
  {
    v156 = v14;
    v36 = 0;
    v38 = *(v33 + 16);
    v37 = v33 + 16;
    v137 = v38;
    v120 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v136 = a1 + v120;
    v144 = *(v37 + 56);
    v147 = (v18 + 8);
    v135 = (v37 - 8);
    v163 = (v12 + 32);
    v164 = v12 + 16;
    v162 = (v12 + 88);
    v161 = *MEMORY[0x1E69D27E8];
    v152 = (v12 + 8);
    v151 = (v12 + 96);
    v160 = (v3 + 32);
    v129 = *MEMORY[0x1E69D2918];
    v153 = v3;
    v128 = (v3 + 8);
    v126 = *MEMORY[0x1E69D28F8];
    v138 = v37;
    v122 = (v37 + 16);
    v125 = MEMORY[0x1E69E7CC0];
    v159 = v2;
    v130 = v11;
    v139 = v18;
    v127 = v12;
    v145 = &v119 - v32;
    v158 = (v3 + 104);
    v150 = v17;
    while (1)
    {
      v146 = v36;
      v137(v35, v136 + v144 * v36, v148, v34);
      if (one-time initialization token for ignoredApps != -1)
      {
        swift_once();
      }

      v39 = static PhotosAffinityScorer.ignoredApps;
      v40 = v141;
      RRCandidate.entity.getter();
      v41 = RREntity.appBundleId.getter();
      v43 = v42;
      v44 = *v147;
      (*v147)(v40, v149);
      v45 = v158;
      v46 = v159;
      if (*(v39 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v47 = Hasher._finalize()();
        v48 = -1 << *(v39 + 32);
        v49 = v47 & ~v48;
        if ((*(v39 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          break;
        }
      }

LABEL_17:

      v53 = v134;
      v35 = v145;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      v44(v53, v149);
      v54 = UsoTask.verbString.getter();
      v56 = v55;

      if (one-time initialization token for kUsoCommonAppEntityName != -1)
      {
        swift_once();
      }

      v57 = v157;
      if (v54 == kUsoCommonAppEntityName._countAndFlagsBits && v56 == kUsoCommonAppEntityName._object)
      {
      }

      else
      {
        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v58 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v59 = v131;
      RRCandidate.entity.getter();
      v60 = RREntity.metadata.getter();
      v133 = v44;
      v44(v59, v149);
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = (*(v127 + 80) + 32) & ~*(v127 + 80);
        v132 = v60;
        v63 = v60 + v62;
        v64 = *(v127 + 72);
        v65 = *(v127 + 16);
        v66 = MEMORY[0x1E69E7CC0];
        v67 = v156;
        v65(v17, v63, v57);
        while (1)
        {
          (*v163)(v67, v17, v57);
          v68 = (*v162)(v67, v57);
          if (v68 == v161)
          {
            (*v151)(v67, v57);
            v69 = *v160;
            v70 = v155;
            (*v160)(v155, v67, v46);
            v71 = v46;
            v72 = v154;
            v69(v154, v70, v71);
            v69(v165, v72, v71);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
            }

            v74 = v66[2];
            v73 = v66[3];
            v75 = v153;
            v67 = v156;
            if (v74 >= v73 >> 1)
            {
              v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v66);
              v75 = v153;
              v66 = v77;
            }

            v66[2] = v74 + 1;
            v76 = v66 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v74;
            v46 = v159;
            v69(v76, v165, v159);
            v17 = v150;
            v57 = v157;
            v45 = v158;
          }

          else
          {
            (*v152)(v67, v57);
          }

          v63 += v64;
          if (!--v61)
          {
            break;
          }

          v65(v17, v63, v57);
        }

        v35 = v145;
      }

      else
      {

        v66 = MEMORY[0x1E69E7CC0];
      }

      v78 = *v45;
      v79 = v130;
      v80 = v159;
      (*v45)(v130, v129, v159);
      v81 = specialized Sequence<>.contains(_:)(v79, v66);
      v82 = *v128;
      (*v128)(v79, v80);
      if (!v81)
      {
        (*v135)(v35, v148);

        goto LABEL_5;
      }

      v78(v79, v126, v80);
      v83 = specialized Sequence<>.contains(_:)(v79, v66);

      v82(v79, v80);
      if (v83)
      {
        goto LABEL_4;
      }

      if (one-time initialization token for supportedApps != -1)
      {
        swift_once();
      }

      v84 = static PhotosAffinityScorer.supportedApps;
      v85 = v124;
      RRCandidate.entity.getter();
      v86 = RREntity.appBundleId.getter();
      v88 = v87;
      v133(v85, v149);
      if (*(v84 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v89 = Hasher._finalize()();
        v90 = -1 << *(v84 + 32);
        v91 = v89 & ~v90;
        if ((*(v84 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
        {
          v92 = ~v90;
          while (1)
          {
            v93 = (*(v84 + 48) + 16 * v91);
            v94 = *v93 == v86 && v93[1] == v88;
            if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v91 = (v91 + 1) & v92;
            if (((*(v84 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v95 = *v122;
          v35 = v145;
          (*v122)(v123, v145, v148);
          v96 = v125;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v96;
          v167 = v96;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 16) + 1, 1);
            v98 = v167;
          }

          v100 = *(v98 + 16);
          v99 = *(v98 + 24);
          if (v100 >= v99 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
            v98 = v167;
          }

          *(v98 + 16) = v100 + 1;
          v125 = v98;
          v95((v98 + v120 + v100 * v144), v123, v148);
          goto LABEL_5;
        }

LABEL_49:
        v35 = v145;
        (*v135)(v145, v148);
      }

      else
      {
        (*v135)(v35, v148);
      }

LABEL_5:
      v36 = v146 + 1;
      v18 = v139;
      if (v146 + 1 == v140)
      {
        goto LABEL_59;
      }
    }

    v50 = ~v48;
    while (1)
    {
      v51 = (*(v39 + 48) + 16 * v49);
      v52 = *v51 == v41 && v51[1] == v43;
      if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v49 = (v49 + 1) & v50;
      if (((*(v39 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v35 = v145;
LABEL_4:
    (*v135)(v35, v148);
    goto LABEL_5;
  }

  v125 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v101 = *(v125 + 16);
  if (v101)
  {
    v166 = MEMORY[0x1E69E7CC0];
    v102 = v125;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v101, 0);
    v103 = v166;
    v104 = v121 + 16;
    v105 = *(v121 + 16);
    v106 = v102 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v164 = *(v121 + 72);
    v165 = v105;
    v162 = (v121 + 8);
    v163 = (v18 + 8);
    v107 = v142;
    do
    {
      v108 = v148;
      v109 = v104;
      (v165)(v107, v106, v148);
      v110 = v143;
      RRCandidate.entity.getter();
      v111 = RREntity.appBundleId.getter();
      v113 = v112;
      (*v163)(v110, v149);
      (*v162)(v107, v108);
      v166 = v103;
      v115 = v103[2];
      v114 = v103[3];
      if (v115 >= v114 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1);
        v103 = v166;
      }

      v103[2] = v115 + 1;
      v116 = &v103[2 * v115];
      v116[4] = v111;
      v116[5] = v113;
      v106 += v164;
      --v101;
      v104 = v109;
    }

    while (v101);

    if (v103[2])
    {
      goto LABEL_65;
    }

LABEL_67:
    v117 = 0;
    goto LABEL_68;
  }

  v103 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_67;
  }

LABEL_65:
  v117 = v103[4];

LABEL_68:

  return v117;
}

uint64_t specialized PhotosAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v32, v33, "[PhotosAffinityScorer] Not a Uso parse, returning .default", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v3, v0);
  (*(v5 + 32))(v7, v3, v4);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.executor);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DC659000, v37, v38, "[PhotosAffinityScorer] Unable to extract task from uso parse, returning .default", v39, 2u);
      MEMORY[0x1E12A2F50](v39, -1, -1);

      (*(v5 + 8))(v7, v4);
      return 2;
    }

    (*(v5 + 8))(v7, v4);
    return 2;
  }

  v80 = v4;
  v81 = v5;
  v8 = UsoTask.verbString.getter();
  v10 = v9;
  v11 = UsoTask.baseEntityAsString.getter();
  v13 = v12;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.executor);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v82 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v79 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v83 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v10, &v83);
    *(v20 + 12) = 2080;
    *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v83);
    _os_log_impl(&dword_1DC659000, v16, v17, "[PhotosAffinityScorer] UsoTask for %s:%s", v20, 0x16u);
    swift_arrayDestroy();
    v22 = v21;
    v8 = v82;
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v83 = v8;
  v84 = v10;

  MEMORY[0x1E12A1580](58, 0xE100000000000000);

  MEMORY[0x1E12A1580](v11, v13);

  v23 = v83;
  v24 = v84;
  if (one-time initialization token for supportedIntents != -1)
  {
    v77 = v83;
    swift_once();
    v23 = v77;
  }

  v25 = specialized Set.contains(_:)(v23, v24, static PhotosAffinityScorer.supportedIntents);

  if (v25)
  {
    SiriEnvironment.salientEntitiesProvider.getter();
    v26 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

    v27 = specialized PhotosAffinityScorer.unsupportedAppIsOnScreen(with:)(v26);
    v29 = v28;

    if (v29)
    {
      v82 = v27;

      if (v11 == 0x6E456F4E5F6F7375 && v13 == 0xEC00000079746974)
      {

        v30 = v81;
LABEL_34:

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v83 = v57;
          *v56 = 136315138;
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v29, &v83);

          *(v56 + 4) = v58;
          _os_log_impl(&dword_1DC659000, v54, v55, "[PhotosAffinityScorer] UsoTask is shared, unsupported app (%s) is on screen and no entity specified, returning .unsupported", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1E12A2F50](v57, -1, -1);
          MEMORY[0x1E12A2F50](v56, -1, -1);
        }

        else
        {
        }

        (*(v30 + 8))(v7, v80);
        return 0;
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = v81;
      if (v53)
      {
        goto LABEL_34;
      }

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v62, v63))
      {

        goto LABEL_48;
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v83 = v65;
      *v64 = 136315138;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v29, &v83);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_1DC659000, v62, v63, "[PhotosAffinityScorer] UsoTask is not shared, unsupported app (%s) is on screen, returning .default", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);

LABEL_46:

LABEL_48:
      (*(v30 + 8))(v7, v80);
      return 2;
    }

    v83 = v82;
    v84 = v10;

    MEMORY[0x1E12A1580](58, 0xE100000000000000);

    MEMORY[0x1E12A1580](v11, v13);

    v43 = v83;
    v44 = v84;
    if (one-time initialization token for sharedIntents != -1)
    {
      v78 = v83;
      swift_once();
      v43 = v78;
    }

    v45 = specialized Set.contains(_:)(v43, v44, static PhotosAffinityScorer.sharedIntents);

    v30 = v81;
    if ((v45 & 1) == 0)
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v35 = 2;
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1DC659000, v59, v60, "[PhotosAffinityScorer] UsoTask is not shared, returning .default", v61, 2u);
        MEMORY[0x1E12A2F50](v61, -1, -1);

        (*(v30 + 8))(v7, v80);
        return v35;
      }

      goto LABEL_46;
    }

    SiriEnvironment.salientEntitiesProvider.getter();
    v46 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

    v48 = specialized PhotosAffinityScorer.isMediaPlaying(with:)(v46, v47);

    if (v48)
    {
      v49 = Logger.logObject.getter();
      LOBYTE(v50) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "[PhotosAffinityScorer] UsoTask is shared and media is playing on device, returning .low";
LABEL_53:
        _os_log_impl(&dword_1DC659000, v49, v50, v52, v51, 2u);
        MEMORY[0x1E12A2F50](v51, -1, -1);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    SiriEnvironment.salientEntitiesProvider.getter();
    v67 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

    v68 = specialized PhotosAffinityScorer.supportedAppIsOnScreen(with:)(v67);
    v70 = v69;

    if (!v70)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "[PhotosAffinityScorer] UsoTask is shared and unsupported app is on screen, returning .low";
        goto LABEL_53;
      }

LABEL_54:

      (*(v30 + 8))(v7, v80);
      return 1;
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v83 = v74;
      *v73 = 136315138;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v83);

      *(v73 + 4) = v75;
      _os_log_impl(&dword_1DC659000, v71, v72, "[PhotosAffinityScorer] UsoTask is shared and supported app (%s) is on screen, returning .high", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x1E12A2F50](v74, -1, -1);
      MEMORY[0x1E12A2F50](v73, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v7, v80);
    return 3;
  }

  else
  {

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "[PhotosAffinityScorer] UsoTask (verb + entity combination) is not supported, returning .unsupported", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    (*(v81 + 8))(v7, v80);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_PlaybackState.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues);
  }

  return result;
}

uint64_t static PlatformErrorActions.renderCompanionBuildUnsupportedForPersonalRequests()(unsigned int *a1)
{
  v2 = type metadata accessor for SiriKitPlatformErrorCase();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *a1, v2, v4);
  SiriKitPlatformErrorCase.makePluginActionToRenderError()();
  return (*(v3 + 8))(v6, v2);
}

SiriKitRuntime::PlaybackControlsAffinityScorer __swiftcall PlaybackControlsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CBD0;
  v1 = 0xD00000000000002FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

SiriKitRuntime::PlaybackControlsAffinityScorer::ParseAttributes __swiftcall PlaybackControlsAffinityScorer.ParseAttributes.init(hasControlsSupportedIdentifier:hasAirPlaySetting:)(Swift::Bool hasControlsSupportedIdentifier, Swift::Bool hasAirPlaySetting)
{
  if (hasAirPlaySetting)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | hasControlsSupportedIdentifier);
}

void closure #2 in static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)(uint64_t a1, _BYTE *a2, double a3)
{
  v51 = a2;
  v50 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Google_Protobuf_StringValue();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v56 = a1;
  Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
  v17 = Google_Protobuf_StringValue.value.getter();
  v19 = v18;
  v52 = *(v11 + 8);
  v52(v16, v10);
  v55[0] = v17;
  v55[1] = v19;
  v54 = v55;
  LOBYTE(v17) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v53, &outlined read-only object #0 of one-time initialization function for kSupportedIdentifierNamespaces);

  if (v17)
  {
    v48 = v3;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);
    v21 = v9;
    v22 = v9;
    v23 = v50;
    v46 = *(v5 + 16);
    v46(v22, v56, v50);
    v24 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v47))
    {
      v25 = swift_slowAlloc();
      v44 = v10;
      v26 = v25;
      v45 = swift_slowAlloc();
      v55[0] = v45;
      *v26 = 136315138;
      v43 = v24;
      v46(v49, v21, v23);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      (*(v5 + 8))(v21, v23);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v55);

      v31 = v26;
      v32 = v43;
      v10 = v44;
      *(v31 + 1) = v30;
      v33 = v31;
      _os_log_impl(&dword_1DC659000, v32, v47, "PlaybackControlsAffinityScorer Found matching identifier %s", v31, 0xCu);
      v34 = v45;
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v34, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v21, v23);
    }

    *v51 = 1;
  }

  Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
  Google_Protobuf_StringValue.init(stringLiteral:)();
  v35 = static Google_Protobuf_StringValue.== infix(_:_:)();
  v36 = v52;
  v52(v13, v10);
  v36(v16, v10);
  if (v35)
  {
    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x79616C70726961 && v37 == 0xE700000000000000)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        return;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.executor);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "PlaybackControlsAffinityScorer Task has AirPlay setting", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    v51[1] = 1;
  }
}

unint64_t closure #2 in PlaybackControlsAffinityScorer.isMediaPlaying(with:)()
{
  v0 = type metadata accessor for UsoEntity_common_PlaybackState.DefinedValues();
  v44 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v38 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v43 = v38 - v11;
  v12 = type metadata accessor for RREntity();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v13 + 8))(v15, v12);
  v16 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();

  result = MEMORY[0x1E129C9E0](v16);
  if (result >> 62)
  {
    v18 = result;
    v19 = __CocoaSet.count.getter();
    result = v18;
    if (!v19)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0);
LABEL_7:

    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v46, &_sypSgMd, &_sypSgMR);
    if (v46[3])
    {
      type metadata accessor for UsoTask_noVerb_common_MediaItem();
      if ((swift_dynamicCast() & 1) == 0)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);

        v28 = 0;
        return v28 & 1;
      }

      v38[0] = v2;
      v38[1] = v16;
      v20 = v48;

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v40 = v20;

      if (v46[0] && (v21 = dispatch thunk of UsoEntity_common_MediaItem.playbackState.getter(), , v21))
      {
        v22 = v3;
        v23 = v43;
        dispatch thunk of UsoEntity_common_PlaybackState.definedValue.getter();

        v24 = v44;
      }

      else
      {
        v22 = v3;
        v23 = v43;
        v24 = v44;
        (*(v44 + 56))(v43, 1, 1, v0);
      }

      v29 = v45;
      (*(v24 + 104))(v45, *MEMORY[0x1E69D2050], v0);
      (*(v24 + 56))(v29, 0, 1, v0);
      v30 = *(v22 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v23, v5, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v39 = v30;
      outlined init with copy of ReferenceResolutionClientProtocol?(v29, &v5[v30], &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
      v31 = *(v24 + 48);
      v41 = v0;
      if (v31(v5, 1, v0) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);
        if (v31(&v5[v39], 1, v41) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          v28 = 1;
          return v28 & 1;
        }
      }

      else
      {
        v32 = v42;
        outlined init with copy of ReferenceResolutionClientProtocol?(v5, v42, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        v33 = v39;
        v34 = v41;
        if (v31(&v5[v39], 1, v41) != 1)
        {
          v35 = v44;
          v36 = v38[0];
          (*(v44 + 32))(v38[0], &v5[v33], v34);
          lazy protocol witness table accessor for type UsoEntity_common_PlaybackState.DefinedValues and conformance UsoEntity_common_PlaybackState.DefinedValues();
          v28 = dispatch thunk of static Equatable.== infix(_:_:)();

          v37 = *(v35 + 8);
          v37(v36, v34);
          outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);
          v37(v32, v34);
          outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
          return v28 & 1;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);
        (*(v44 + 8))(v32, v34);
      }

      v26 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMd;
      v27 = &_s12SiriOntology30UsoEntity_common_PlaybackStateC13DefinedValuesOSg_AFtMR;
      v25 = v5;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sypSgMd, &_sypSgMR);

      v25 = v46;
      v26 = &_sypSgMd;
      v27 = &_sypSgMR;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v25, v26, v27);
    v28 = 0;
    return v28 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)(double a1)
{
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UserParse();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = &v42 - v15;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v42 - v19;
  v52 = 0;
  v20 = USOParse.userParse.getter();
  v21 = MEMORY[0x1E129C0F0](v20);
  (*(v11 + 8))(v13, v10);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    while (v23 < *(v21 + 16))
    {
      (*(v7 + 16))(v9, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v6);
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {

        v25 = v51;
        (*(v7 + 32))(v51, v9, v6);
        v24 = 0;
        goto LABEL_8;
      }

      ++v23;
      (*(v7 + 8))(v9, v6);
      if (v22 == v23)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_6:

  v24 = 1;
  v25 = v51;
LABEL_8:
  (*(v7 + 56))(v25, v24, 1, v6);
  if ((*(v7 + 48))(v25, 1, v6) != 1)
  {
    v32 = v43;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v7 + 8))(v25, v6);
    v33 = v42;
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v44 + 8))(v32, v45);
    (*(v49 + 32))(v48, v33, v50);
    v34 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v35 = *(v34 + 16);
    v37 = v46;
    v36 = v47;
    if (!v35)
    {
LABEL_17:
      (*(v49 + 8))(v48, v50);

      v30 = v52;
      if (HIBYTE(v52))
      {
        v31 = 256;
      }

      else
      {
        v31 = 0;
      }

      return v31 | v30;
    }

    v38 = 0;
    v39 = (v46 + 8);
    while (v38 < *(v34 + 16))
    {
      v40 = (*(v37 + 16))(v3, v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v38, v36);
      closure #2 in static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)(v3, &v52, v40);
      ++v38;
      (*v39)(v3, v36);
      if (v35 == v38)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_22;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  if (one-time initialization token for executor != -1)
  {
LABEL_23:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.executor);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DC659000, v27, v28, "PlaybackControlsAffinityScorer Could not extract userStatedTask", v29, 2u);
    MEMORY[0x1E12A2F50](v29, -1, -1);
  }

  v30 = 0;
  v31 = 0;
  return v31 | v30;
}

uint64_t specialized PlaybackControlsAffinityScorer.unsupportedByControls(usoTask:)(uint64_t a1, double a2)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v31, v30, &_sypSgMd, &_sypSgMR);
  if (!v30[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sypSgMd, &_sypSgMR);
    v16 = v30;
    goto LABEL_33;
  }

  type metadata accessor for UsoTask_setNumber_common_Setting();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v6 = v29;

  dispatch thunk of Uso_VerbTemplate_ReferenceNumberTrigger.reference.getter();

  if (!v30[0] || (v7 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v7))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sypSgMd, &_sypSgMR);

    return 0;
  }

  v26 = v6;
  v28 = *(v7 + 16);
  if (!v28)
  {
LABEL_21:

    if (one-time initialization token for executor != -1)
    {
LABEL_36:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "PlaybackControlsAffinityScorer task is unsupported by controls", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sypSgMd, &_sypSgMR);
    return 1;
  }

  v8 = 0;
  v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v27 = 0x80000001DCA79700;
  v10 = (v3 + 8);
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    (*(v3 + 16))(v5, v9 + *(v3 + 72) * v8, v2);
    v11 = UsoIdentifier.namespace.getter();
    if (!v12)
    {
LABEL_7:
      (*v10)(v5, v2);
      goto LABEL_8;
    }

    if (v11 == 0xD000000000000010 && v12 == v27)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (UsoIdentifier.value.getter() == 0x6465657073 && v14 == 0xE500000000000000)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v10)(v5, v2);
    if (v15)
    {
      goto LABEL_27;
    }

LABEL_8:
    if (v28 == ++v8)
    {
      goto LABEL_21;
    }
  }

  (*v10)(v5, v2);
LABEL_27:

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.executor);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DC659000, v23, v24, "PlaybackControlsAffinityScorer task is playback speed, supported by controls", v25, 2u);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  else
  {
  }

LABEL_32:
  v16 = v31;
LABEL_33:
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sypSgMd, &_sypSgMR);
  return 0;
}

uint64_t specialized PlaybackControlsAffinityScorer.controlsShouldSkip(usoTask:parseAttributes:)(uint64_t a1, char a2)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v14, v12, &_sypSgMd, &_sypSgMR);
  if (!v13)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sypSgMd, &_sypSgMR);
LABEL_8:
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v12, &_sypSgMd, &_sypSgMR);
    if (v13)
    {
      type metadata accessor for UsoTask_play_common_MediaItem();
      if (swift_dynamicCast())
      {

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.executor);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_23;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "PlaybackControlsAffinityScorer Task is play::common_MediaItem, controls should *NOT* take a first pass";
        goto LABEL_22;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v12, &_sypSgMd, &_sypSgMR);
    if (v13)
    {
      type metadata accessor for UsoTask_noVerb_common_Setting();
      if (swift_dynamicCast())
      {

        if (a2)
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.executor);
          v4 = Logger.logObject.getter();
          v5 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_23;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "PlaybackControlsAffinityScorer Task is an AirPlay task, controls should *NOT* take a first pass";
          goto LABEL_22;
        }
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sypSgMd, &_sypSgMR);
    }

    v10 = 0;
    goto LABEL_26;
  }

  type metadata accessor for UsoTask_play_uso_NoEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_23;
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = "PlaybackControlsAffinityScorer Task is play::noEntity, controls should *NOT* take a first pass";
LABEL_22:
  _os_log_impl(&dword_1DC659000, v4, v5, v7, v6, 2u);
  MEMORY[0x1E12A2F50](v6, -1, -1);
LABEL_23:

  v10 = 1;
LABEL_26:
  outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sypSgMd, &_sypSgMR);
  return v10;
}

uint64_t specialized PlaybackControlsAffinityScorer.isMediaPlaying(with:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for RRMetadata();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v58 = type metadata accessor for RREntity();
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v12 = type metadata accessor for RRCandidate();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v44 - v15;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v63 = &v44 - v19;
  v56 = *(a1 + 16);
  v46 = v17;
  if (v56)
  {
    v20 = 0;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v48 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v53 = a1 + v48;
    v54 = v22;
    v60 = *(v21 + 56);
    v52 = (v10 + 8);
    v67 = v4 + 16;
    v66 = *MEMORY[0x1E69D2908];
    v65 = *MEMORY[0x1E69D27E8];
    v64 = v4 + 104;
    v23 = (v4 + 8);
    v55 = v21;
    v49 = (v21 - 8);
    v50 = (v21 + 16);
    v61 = MEMORY[0x1E69E7CC0];
    v59 = v12;
    v22(v63, a1 + v48, v12, v18);
LABEL_6:
    v62 = v20 + 1;
    v24 = v57;
    RRCandidate.entity.getter();
    v25 = RREntity.metadata.getter();
    (*v52)(v24, v58);
    v12 = 0;
    v26 = *(v25 + 16);
    while (1)
    {
      if (v26 == v12)
      {

        v12 = v59;
        (*v49)(v63, v59);
LABEL_4:
        v20 = v62;
        if (v62 == v56)
        {
          goto LABEL_16;
        }

        v54(v63, v53 + v60 * v62, v12, v18);
        goto LABEL_6;
      }

      if (v12 >= *(v25 + 16))
      {
        break;
      }

      (*(v4 + 16))(v9, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v3);
      v27 = type metadata accessor for RRDataSourceMetadataValue();
      (*(*(v27 - 8) + 104))(v6, v66, v27);
      (*(v4 + 104))(v6, v65, v3);
      v28 = static RRMetadata.== infix(_:_:)();
      v29 = *(v4 + 8);
      v29(v6, v3);
      v29(v9, v3);
      if (v28)
      {

        v30 = *v50;
        (*v50)(v51, v63, v59);
        v31 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
          v31 = v68;
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v31 = v68;
        }

        *(v31 + 16) = v34 + 1;
        v61 = v31;
        v35 = v31 + v48 + v34 * v60;
        v12 = v59;
        v30(v35, v51, v59);
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:

    result = (*v25)(v9, v12);
    __break(1u);
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v36 = 0;
    v37 = v61;
    v38 = *(v61 + 16);
    v39 = v46;
    v25 = v46 + 8;
    v23 = v47;
    v9 = v45;
    do
    {
      v40 = v36;
      if (v38 == v36)
      {
        break;
      }

      if (v36 >= *(v37 + 16))
      {
        goto LABEL_23;
      }

      (*(v39 + 16))(v9, v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, v12, v18);
      v41 = closure #2 in PlaybackControlsAffinityScorer.isMediaPlaying(with:)();
      if (v23)
      {
        goto LABEL_24;
      }

      v42 = v41;
      ++v36;
      (*v25)(v9, v12);
      v37 = v61;
    }

    while ((v42 & 1) == 0);

    return v38 != v40;
  }

  return result;
}

uint64_t specialized PlaybackControlsAffinityScorer.controlsShouldTakeAFirstPass(at:with:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v12)
  {
    type metadata accessor for UsoTask_restart_uso_NoEntity();
    if (swift_dynamicCast())
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.executor);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_20;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "PlaybackControlsAffinityScorer Task is repeat::noEntity, controls should take a first pass";
LABEL_19:
      _os_log_impl(&dword_1DC659000, v2, v3, v5, v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
LABEL_20:

      return 1;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (v12)
  {
    type metadata accessor for UsoTask_skipForward_uso_NoEntity();
    if (swift_dynamicCast())
    {
LABEL_14:

      SiriEnvironment.salientEntitiesProvider.getter();
      v6 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

      v8 = specialized PlaybackControlsAffinityScorer.isMediaPlaying(with:)(v6, v7);

      if (v8)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.executor);
        v2 = Logger.logObject.getter();
        v3 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v2, v3))
        {
          goto LABEL_20;
        }

        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "PlaybackControlsAffinityScorer UsoTask is .skipForward/.skipBackward::uso_NoEntity and media is playing on device, returning .high";
        goto LABEL_19;
      }

      return 0;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v12)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_skipBackward_uso_NoEntity();
  if (swift_dynamicCast())
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t specialized PlaybackControlsAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "PlaybackControlsAffinityScorer Got unexpected parse", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v3, v0);
  (*(v5 + 32))(v7, v3, v4);
  v8 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v8)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v13 = 2;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "PlaybackControlsAffinityScorer Could not extract usoTask from parse", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      (*(v5 + 8))(v7, v4);
      return v13;
    }

    (*(v5 + 8))(v7, v4);
    return 2;
  }

  v10 = v8;
  v11 = specialized static PlaybackControlsAffinityScorer.ParseAttributes.from(usoParse:)(v9);
  if ((specialized PlaybackControlsAffinityScorer.unsupportedByControls(usoTask:)(v10, v12) & 1) == 0)
  {
    if (specialized PlaybackControlsAffinityScorer.controlsShouldSkip(usoTask:parseAttributes:)(v10, HIBYTE(v11) & 1))
    {
      (*(v5 + 8))(v7, v4);

      return 1;
    }

    if (specialized PlaybackControlsAffinityScorer.controlsShouldTakeAFirstPass(at:with:)(v10))
    {
      (*(v5 + 8))(v7, v4);

      return 3;
    }

    if ((v11 & 1) == 0)
    {
      (*(v5 + 8))(v7, v4);

      return 2;
    }

    static UsoTask_CodegenConverter.convert(task:)();

    (*(v5 + 8))(v7, v4);
    if (v25)
    {
      type metadata accessor for UsoTask_setNumber_common_Setting();
      if (swift_dynamicCast())
      {

        return 2;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sypSgMd, &_sypSgMR);
    }

    return 3;
  }

  (*(v5 + 8))(v7, v4);

  return 0;
}

void *PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(a1, a2, a3, a4, a5, v5, ObjectType);
}

void *PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return specialized PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(a1, a2, a3, a4, a5, v5);
}

uint64_t PreExecutionActionHandler.getPreExecutionMitigationDecision(rcState:inputOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46[-v13];
  v15 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v46[-v20];
  v52 = (*(*a1 + 504))(v19);
  v22 = *(v16 + 104);
  v51 = *MEMORY[0x1E69D0270];
  v23 = v22(v21);
  (*(*a1 + 552))(v23);
  v50 = *MEMORY[0x1E69D0278];
  v53 = v22;
  v54 = v16 + 104;
  v22(v11);
  (*(v16 + 56))(v11, 0, 1, v15);
  v24 = *(v4 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol?(v14, v6, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v11, &v6[v24], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v56 = v16;
  v25 = *(v16 + 48);
  if (v25(v6, 1, v15) != 1)
  {
    v27 = v49;
    outlined init with copy of ReferenceResolutionClientProtocol?(v6, v49, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    if (v25(&v6[v24], 1, v15) != 1)
    {
      v28 = v56;
      v29 = v48;
      (*(v56 + 32))(v48, &v6[v24], v15);
      lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0288]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v28 + 8);
      v30(v29, v15);
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v30(v27, v15);
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v26 = v52;
      if ((v47 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    (*(v56 + 8))(v27, v15);
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    v26 = v52;
    goto LABEL_12;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  if (v25(&v6[v24], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v26 = v52;
LABEL_8:
  if (PreExecutionDecision.rawValue.getter(v26) == 0xD000000000000019 && 0x80000001DCA7AFC0 == v31)
  {
    goto LABEL_10;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_12;
  }

  if (PreExecutionDecision.rawValue.getter(v26) == 0xD000000000000010 && 0x80000001DCA7B070 == v41)
  {
    goto LABEL_10;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_12;
  }

  if (PreExecutionDecision.rawValue.getter(v26) == 0xD000000000000017 && 0x80000001DCA7B090 == v43)
  {
LABEL_10:
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      v45 = v56;
      (*(v56 + 8))(v21, v15);
      v53(v21, v50, v15);
      return (*(v45 + 32))(v55, v21, v15);
    }
  }

LABEL_12:
  if (v26 > 7u)
  {
    v33 = v56;
    v34 = v51;
  }

  else
  {
    v33 = v56;
    v34 = v51;
    if (v26 != 3)
    {
      v34 = v50;
    }
  }

  v35 = *(v33 + 8);
  v35(v21, v15);
  v53(v21, v34, v15);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.conversationBridge);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    swift_beginAccess();
    *(v39 + 4) = TTResponseMessage.MitigationDecision.rawValue.getter();
    _os_log_impl(&dword_1DC659000, v37, v38, "preExecution Mitigation Decision %ld", v39, 0xCu);
    MEMORY[0x1E12A2F50](v39, -1, -1);
  }

  swift_beginAccess();
  (*(v33 + 16))(v55, v21, v15);
  return (v35)(v21, v15);
}

uint64_t PreExecutionActionHandler.actOnPreExecutionDecision(rcState:requestId:inputOrigin:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v121 = a2;
  v116 = a4;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  v107 = v6;
  v108 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v105);
  v10 = &v103 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v103 - v14;
  v15 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v123 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v119);
  v18 = &v103 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v28 = &v103 - v27;
  v124 = (*(*a1 + 504))(v26);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.conversationBridge);

  v114 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v118 = a1;
  v122 = a3;
  v106 = v10;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v125[0] = v35;
    *v34 = 136315394;
    v36 = (*(*a1 + 832))();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v125);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = PreExecutionDecision.rawValue.getter(v124);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v125);

    *(v34 + 14) = v41;
    a1 = v118;
    _os_log_impl(&dword_1DC659000, v31, v32, "Taking action on preExecution decision for RC: %s, preExecutionDecision: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v35, -1, -1);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v42 = *(*a1 + 552);
  v109 = *a1 + 552;
  v110 = v42;
  v42();
  v43 = v123;
  (*(v123 + 104))(v24, *MEMORY[0x1E69D0278], v15);
  (*(v43 + 56))(v24, 0, 1, v15);
  v44 = *(v119 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v28, v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v24, &v18[v44], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v45 = *(v43 + 48);
  if (v45(v18, 1, v15) != 1)
  {
    v52 = v115;
    outlined init with copy of ReferenceResolutionClientProtocol?(v18, v115, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    if (v45(&v18[v44], 1, v15) != 1)
    {
      v54 = v123;
      v55 = &v18[v44];
      v56 = v113;
      (*(v123 + 32))(v113, v55, v15);
      lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0288]);
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v54 + 8);
      v58(v56, v15);
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v58(v52, v15);
      v53 = outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v47 = v122;
      v49 = v120;
      v50 = v116;
      v51 = v117;
      v48 = v124;
      if ((v57 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    (*(v123 + 8))(v52, v15);
    v47 = v122;
    LOBYTE(v48) = v124;
LABEL_10:
    v53 = outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    v49 = v120;
    goto LABEL_16;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v46 = v45(&v18[v44], 1, v15);
  v47 = v122;
  v48 = v124;
  if (v46 != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v49 = v120;
  v50 = v116;
  v51 = v117;
LABEL_12:
  if (PreExecutionDecision.rawValue.getter(v48) == 0xD000000000000019 && 0x80000001DCA7AFC0 == v59)
  {
    goto LABEL_14;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v60 & 1) == 0)
  {
    if (PreExecutionDecision.rawValue.getter(v48) == 0xD000000000000010 && 0x80000001DCA7B070 == v63)
    {
      goto LABEL_14;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_16;
    }

    if (PreExecutionDecision.rawValue.getter(v48) == 0xD000000000000017 && 0x80000001DCA7B090 == v65)
    {
LABEL_14:

      goto LABEL_16;
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v66 & 1) == 0)
    {
      v67 = (*(*v49[7] + 176))(v48, v50);
      v68 = v121;
      PreExecutionActionHandler.mitigateRequest(requestId:dismissUI:logToStream:mitigatedByURS:)(v121, v47, v67 & 1, 1, 1);
      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for InsightRequestSummaryLogger(0);
      v70 = __swift_project_value_buffer(v69, static Logger.insightRequestSummaryLogger);

      specialized InsightRequestSummaryLogger.emitDebug(_:)(v70, v48, v68, v47);

      v72 = v107;
      v71 = v108;
      (*(v108 + 104))(v51, *MEMORY[0x1E69D04C0], v107);
      (*(v71 + 56))(v51, 0, 1, v72);
      v73 = *(v105 + 48);
      v74 = v50;
      v75 = v106;
      outlined init with copy of ReferenceResolutionClientProtocol?(v74, v106, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v51, v75 + v73, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      v76 = *(v71 + 48);
      if (v76(v75, 1, v72) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
        if (v76(v75 + v73, 1, v72) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
          goto LABEL_59;
        }
      }

      else
      {
        v98 = v104;
        outlined init with copy of ReferenceResolutionClientProtocol?(v75, v104, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
        if (v76(v75 + v73, 1, v72) != 1)
        {
          v99 = v108;
          v100 = v75 + v73;
          v101 = v103;
          (*(v108 + 32))(v103, v100, v72);
          lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E0]);
          v124 = dispatch thunk of static Equatable.== infix(_:_:)();
          v102 = *(v99 + 8);
          v102(v101, v72);
          outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
          v102(v98, v72);
          outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
          if ((v124 & 1) == 0)
          {
            return 1;
          }

LABEL_59:
          (*(*v49[3] + 232))(5, v68, v47);
          return 1;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
        (*(v108 + 8))(v98, v72);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
      return 1;
    }
  }

LABEL_16:
  (*(*v49[7] + 184))(v53);
  if (v48 > 5u)
  {
    if (v48 > 8u)
    {
      v61 = v121;
      if (v48 - 10 < 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v61 = v121;
      if (v48 != 6)
      {
        if (v48 == 7)
        {
          PreExecutionActionHandler.mitigateDueToEmptyASR(requestId:)(v121, v47);
        }

        else
        {
          ((*v49)[28])(v121, v47);

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v125[0] = v94;
            *v93 = 136315394;
            *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v47, v125);
            *(v93 + 12) = 2080;
            v95 = PreExecutionDecision.rawValue.getter(8u);
            v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v125);

            *(v93 + 14) = v97;
            _os_log_impl(&dword_1DC659000, v91, v92, "Action taken on requestId: %s is: %s", v93, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v94, -1, -1);
            MEMORY[0x1E12A2F50](v93, -1, -1);
          }
        }

        return 1;
      }
    }

    ((*v49)[27])(v61, v47);
    return 1;
  }

  if (v48 <= 2u)
  {
    if (v48)
    {
      if (v48 == 1)
      {
        PreExecutionActionHandler.mitigateRequest(requestId:dismissUI:logToStream:mitigatedByURS:)(v121, v47, 1, 0, 0);
      }

      else
      {
        PreExecutionActionHandler.rejectUnrelatedAnnounceCallsFollowup(requestId:catId:rcState:)(v121, v47, 0xD000000000000032, 0x80000001DCA85360, v118);
      }
    }

    else
    {
      PreExecutionActionHandler.rejectRequestSinceUserIsOnCall(requestId:rcState:)(v121, v47, v118);
    }

    return 1;
  }

  if (v48 != 3)
  {
    if (v48 == 4)
    {
      v62 = "OfflineServerFallback#NoConnection";
    }

    else
    {
      v62 = "OfflineServerFallback#AirplaneMode";
    }

    PreExecutionActionHandler.rejectOfflineServerFallback(requestId:rcState:catId:)(v121, v47, v118, 0xD000000000000022, (v62 - 32) | 0x8000000000000000);
    return 1;
  }

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v125[0] = v80;
    *v79 = 136315138;
    v81 = v111;
    v110();
    v82 = Optional.debugDescription.getter();
    v84 = v83;
    outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v125);

    *(v79 + 4) = v85;
    _os_log_impl(&dword_1DC659000, v77, v78, "mitigationDecision = %s. Overriding mitigator decision..", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x1E12A2F50](v80, -1, -1);
    MEMORY[0x1E12A2F50](v79, -1, -1);
  }

  v61 = v121;
LABEL_45:

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v125[0] = v89;
    *v88 = 136315138;
    *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v47, v125);
    _os_log_impl(&dword_1DC659000, v86, v87, "Action taken on requestId: %s is: No action taken", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x1E12A2F50](v89, -1, -1);
    MEMORY[0x1E12A2F50](v88, -1, -1);
  }

  return 0;
}

uint64_t PreExecutionActionHandler.rejectUnrelatedAnnounceCallsFollowup(requestId:catId:rcState:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v54 = a3;
  v55 = a4;
  v8 = type metadata accessor for SelectedUserAttributes();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for UserID();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v56 = v9;
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v52 = a1;
  v53 = a2;
  v51 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v61 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v61);
    _os_log_impl(&dword_1DC659000, v20, v21, "Rejecting this request: %s because it's an unrelated followup to an announced call.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v26 = *(v60 + 48);
  v27 = *(a5 + 3);
  v49 = *(a5 + 2);
  v50 = v25;
  v48 = v27;
  v28 = (*(v58 + 16))(v57, &a5[OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId], v59);
  v29 = *(*a5 + 792);
  v29(v28);
  v30 = v56;
  v31 = *(v56 + 48);
  if (v31(v16, 1, v8))
  {
    v32 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v33 = 0;
  }

  else
  {
    v34 = v47;
    (*(v30 + 16))(v47, v16, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v33 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v32 = (*(v30 + 8))(v34, v8);
  }

  v35 = v51;
  v29(v32);
  if (v31(v35, 1, v8))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = 0;
  }

  else
  {
    v37 = v56;
    v38 = v47;
    (*(v56 + 16))(v47, v35, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v37 + 8))(v38, v8);
  }

  v40 = v52;
  v39 = v53;
  v41 = swift_allocObject();
  v41[2] = v60;
  v41[3] = v40;
  v41[4] = v39;
  v42 = *(*v26 + 104);

  HIBYTE(v45) = 1;
  LOBYTE(v45) = v36 & 1;
  v43 = v57;
  v42(v40, v39, v49, v48, v54, v55, v57, v33 & 1, v45, v50, 0, closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)partial apply, v41);

  return (*(v58 + 8))(v43, v59);
}

uint64_t PreExecutionActionHandler.rejectRequestSinceUserIsOnCall(requestId:rcState:)(uint64_t a1, unint64_t a2, char *a3)
{
  v53 = type metadata accessor for SelectedUserAttributes();
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UserID();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationBridge);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  v19 = os_log_type_enabled(v17, v18);
  v46 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v60);
    _os_log_impl(&dword_1DC659000, v17, v18, "Rejecting this request: %s since user is on a phone call", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    v6 = v46;
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v22 = AFSupportsSiriInCall();
  v54 = a1;
  v55 = a2;
  v52 = v10;
  if ((v22 & 1) != 0 || (AFSupportsCallHangUp() & 1) == 0)
  {
    v51 = 0xD00000000000002BLL;
    v50 = "dDuringRingingCall";
  }

  else
  {
    v50 = "UnsupportedDuringActiveCall";
    v51 = 0xD000000000000035;
  }

  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24 = *(v59 + 48);
  v25 = *(a3 + 3);
  v48 = *(a3 + 2);
  v49 = v23;
  v47 = v25;
  v26 = (*(v57 + 16))(v56, &a3[OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId], v58);
  v27 = *(*a3 + 792);
  v27(v26);
  v28 = v6;
  v29 = *(v6 + 48);
  v30 = v53;
  if (v29(v13, 1, v53))
  {
    v31 = outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v32 = 0;
  }

  else
  {
    v33 = v45;
    (*(v28 + 16))(v45, v13, v30);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v32 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v31 = (*(v28 + 8))(v33, v30);
  }

  v34 = v52;
  v27(v31);
  if (v29(v34, 1, v30))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v35 = 0;
  }

  else
  {
    v37 = v45;
    v36 = v46;
    (*(v46 + 16))(v45, v34, v30);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v35 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v36 + 8))(v37, v30);
  }

  v38 = v55;
  v39 = swift_allocObject();
  v40 = v54;
  v39[2] = v59;
  v39[3] = v40;
  v39[4] = v38;
  v41 = *(*v24 + 104);

  v42 = v32 & 1;
  v43 = v56;
  v41(v40, v38, v48, v47, v51, v50 | 0x8000000000000000, v56, v42, v35 & 1, v49, 0, partial apply for closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:), v39);

  return (*(v57 + 8))(v43, v58);
}

void PreExecutionActionHandler.mitigateDueToEmptyASR(requestId:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_1DC659000, v5, v6, "Mitigating this request: %s due to empty ASR", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(a1, a2, v9, v10);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_1DC659000, oslog, v11, "RequestID: %s has been mitigated", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }
}

void PreExecutionActionHandler.mitigateRequest(requestId:dismissUI:logToStream:mitigatedByURS:)(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v6 = v5;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v33 = a1;
  oslog = a5;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
    *(v15 + 12) = 2080;
    if (a5)
    {
      v17 = 7562585;
    }

    else
    {
      v17 = 28494;
    }

    v18 = v6;
    v19 = a4;
    if (a5)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE200000000000000;
    }

    v21 = a3;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v34);
    a4 = v19;
    v6 = v18;

    *(v15 + 14) = v22;
    a3 = v21;
    _os_log_impl(&dword_1DC659000, v13, v14, "Mitigating this request: %s. Requested to mitigate by Speech: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for InsightRequestSummaryLogger(0);
  v24 = __swift_project_value_buffer(v23, static Logger.insightRequestSummaryLogger);

  specialized InsightRequestSummaryLogger.emitDebug(_:)(v24, v33, a2, a3 & 1, oslog & 1);

  if (a3)
  {
    if (a4)
    {
      (*(*v6[3] + 176))(v33, a2, 2);
    }

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(v33, a2, v25, v26);

    osloga = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(osloga, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a2, &v34);
      _os_log_impl(&dword_1DC659000, osloga, v27, "RequestID: %s has been mitigated", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }
  }

  else
  {
    v30 = (*v6)[28];

    v30(v33, a2);
  }
}

void PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69C7B18]) init];
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  v17 = MEMORY[0x1E12A1410](v14, v16);

  [v13 setAceId_];

  v18 = v13;
  v19 = MEMORY[0x1E12A1410](a1, a2);
  [v18 setRefId_];

  v20 = MEMORY[0x1E12A1410](a3, v24);
  [v18 setReason_];

  v21 = *(v5 + 16);
  aBlock[4] = closure #1 in PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_12;
  v22 = _Block_copy(aBlock);
  [v21 handleCommand:v18 completion:v22];
  _Block_release(v22);

  PreExecutionActionHandler.cancelRequest(requestId:)(a1, a2);
}

uint64_t PreExecutionActionHandler.rejectOfflineServerFallback(requestId:rcState:catId:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v8 = type metadata accessor for SelectedUserAttributes();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for UserID();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v56 = v9;
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v52 = a1;
  v53 = a2;
  v51 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v61 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v61);
    _os_log_impl(&dword_1DC659000, v20, v21, "Rejecting this request: %s because it's an offline server fallback", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v26 = *(v60 + 48);
  v27 = *(a3 + 3);
  v49 = *(a3 + 2);
  v50 = v25;
  v48 = v27;
  v28 = (*(v58 + 16))(v57, &a3[OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId], v59);
  v29 = *(*a3 + 792);
  v29(v28);
  v30 = v56;
  v31 = *(v56 + 48);
  if (v31(v16, 1, v8))
  {
    v32 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v33 = 0;
  }

  else
  {
    v34 = v47;
    (*(v30 + 16))(v47, v16, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v33 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v32 = (*(v30 + 8))(v34, v8);
  }

  v35 = v51;
  v29(v32);
  if (v31(v35, 1, v8))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = 0;
  }

  else
  {
    v37 = v56;
    v38 = v47;
    (*(v56 + 16))(v47, v35, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v36 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v37 + 8))(v38, v8);
  }

  v40 = v52;
  v39 = v53;
  v41 = swift_allocObject();
  v41[2] = v60;
  v41[3] = v40;
  v41[4] = v39;
  v42 = *(*v26 + 104);

  HIBYTE(v45) = 1;
  LOBYTE(v45) = v36 & 1;
  v43 = v57;
  v42(v40, v39, v49, v48, v54, v55, v57, v33 & 1, v45, v50, 0, closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)partial apply, v41);

  return (*(v58 + 8))(v43, v59);
}

uint64_t closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = one-time initialization token for shared;

  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MessageBusActor.shared;
  v14 = lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = a1 & 1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:), v15);
}

uint64_t closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a5;
  *(v7 + 64) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:), v8, 0);
}

uint64_t closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)()
{
  v1 = **(v0 + 40);
  if (*(v0 + 64) == 1)
  {
    v2 = (v1 + 224);
  }

  else
  {
    v2 = (v1 + 216);
  }

  (*v2)(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 8);

  return v3();
}

void PreExecutionActionHandler.failRequest(requestId:)(uint64_t a1, uint64_t a2, const char *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, a3, v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v18 = [objc_allocWithZone(*a4) init];
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v22 = MEMORY[0x1E12A1410](v19, v21);

  [v18 setAceId_];

  v23 = v18;
  v24 = MEMORY[0x1E12A1410](a1, a2);
  [v23 setRefId_];

  v25 = *(v27[1] + 16);
  aBlock[4] = v28;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = v29;
  v26 = _Block_copy(aBlock);
  [v25 handleCommand:v23 completion:v26];
  _Block_release(v26);
}

void closure #1 in PreExecutionActionHandler.failRequest(requestId:)(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v5, a3, v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }
}

void PreExecutionActionHandler.cancelRequest(requestId:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7760]) init];
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = MEMORY[0x1E12A1410](v11, v13);

  [v10 setAceId_];

  v15 = MEMORY[0x1E12A1410](a1, a2);
  [v10 setRefId_];

  v16 = *(v3 + 16);
  aBlock[4] = closure #1 in PreExecutionActionHandler.cancelRequest(requestId:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_9_1;
  v17 = _Block_copy(aBlock);
  [v16 handleCommand:v10 completion:v17];
  _Block_release(v17);
}

void closure #1 in PreExecutionActionHandler.closeAssistantAndCancelRequest(requestId:closeAssistantReason:)(uint64_t a1, void *a2, const char *a3, ...)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationBridge);
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v10 = Optional.debugDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t PreExecutionActionHandler.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PreExecutionActionHandler.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PreExecutionActionHandler();
  v12 = swift_allocObject();

  return specialized PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(a1, a2, a3, a4, a5, v12);
}

void *specialized PreExecutionActionHandler.init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  type metadata accessor for MitigationDismissalHelper();
  swift_allocObject();
  a6[7] = MitigationDismissalHelper.init()();
  return a6;
}

uint64_t lazy protocol witness table accessor for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in PreExecutionActionHandler.submitDialog(requestId:catId:rcState:shouldSpeak:parameters:catSource:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t PreExecutionDecision.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v3 = 0x757165526C696166;
    v4 = 0xD000000000000015;
    if (a1 != 10)
    {
      v4 = 0x747065636361;
    }

    if (a1 != 9)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000024;
    v6 = 0xD000000000000010;
    if (a1 != 7)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    if (a1 <= 8u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else
  {
    v1 = 0xD000000000000021;
    if (a1 != 1)
    {
      v1 = 0xD000000000000024;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000017;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PreExecutionDecision(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PreExecutionDecision.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PreExecutionDecision.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PreExecutionDecision()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreExecutionDecision.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PreExecutionDecision(uint64_t a1)
{
  PreExecutionDecision.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PreExecutionDecision(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PreExecutionDecision.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExecutionDecision@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PreExecutionDecision.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExecutionDecision@<X0>(unint64_t *a1@<X8>)
{
  result = PreExecutionDecision.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized PreExecutionDecision.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExecutionDecision.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PreExecutionDecision and conformance PreExecutionDecision()
{
  result = lazy protocol witness table cache variable for type PreExecutionDecision and conformance PreExecutionDecision;
  if (!lazy protocol witness table cache variable for type PreExecutionDecision and conformance PreExecutionDecision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExecutionDecision and conformance PreExecutionDecision);
  }

  return result;
}

uint64_t PreExecutionDecisionMaker.evaluate(rules:)(uint64_t a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationBridge);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Evaluating Pre-Execution Decision..", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(a1 + 16);
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 + 32;
    while (v8 < *(v6 + 16))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v9, v24);
      v10 = v25;
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      a1 = (*(v11 + 16))(v10, v11);
      if (a1 > 0xAu)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          v14 = v25;
          v15 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v13 = (*(v15 + 8))(v14, v15);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          goto LABEL_14;
        }
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

LABEL_12:
  LODWORD(a1) = 11;
  v13 = 7;
LABEL_14:
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v20 = PreExecutionDecision.rawValue.getter(a1);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v16, v17, "Pre-Execution Decision was evaluated as: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  return v13 | (a1 << 8);
}

uint64_t PreExecutionDialogHandler.__allocating_init(executionOutputSubmitter:preferences:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PreExecutionDialogHandler.init(executionOutputSubmitter:preferences:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, void *a12, void (*a13)(void), uint64_t a14)
{
  v47 = a7;
  v48 = a5;
  v49 = a1;
  v18 = type metadata accessor for UserID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = PreExecutionDialogHandler.createCATContext()();
  if (v21)
  {
    v42 = a13;
    v44 = v21;
    v45 = a8;
    v46 = a2;
    v38 = a10;
    v40 = a9;
    if (a12)
    {
      v43 = a12;
    }

    else
    {
      v41 = a6;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = objc_opt_self();
      v24 = ObjCClassFromMetadata;
      a6 = v41;
      v43 = [v23 bundleForClass_];
    }

    v41 = objc_opt_self();
    v25 = a12;
    v26 = v48;
    v39 = MEMORY[0x1E12A1410](v48, a6);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(a11);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    (*(v19 + 16))(&isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v18);
    v27 = a6;
    v28 = (*(v19 + 80) + 73) & ~*(v19 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v42;
    *(v29 + 24) = a14;
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;
    v30 = v49;
    *(v29 + 48) = v14;
    *(v29 + 56) = v30;
    *(v29 + 64) = v46;
    *(v29 + 72) = v38 & 1;
    (*(v19 + 32))(v29 + v28, &isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    v31 = (v29 + v28 + v20);
    *v31 = v45 & 1;
    v31[1] = v40 & 1;
    aBlock[4] = partial apply for closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_17;
    v32 = _Block_copy(aBlock);
    v33 = v44;

    v34 = v43;
    v35 = v39;
    v36 = isa;
    [v41 execute:v43 catId:v39 parameters:isa globals:v33 completion:v32];
    _Block_release(v32);
  }

  else
  {
    a13();
  }
}

void closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(uint64_t a1, id a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13)
{
  if (a2)
  {
    v16 = a2;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1DC659000, v19, v20, "CAT.execute failed: %@", v21, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    a3(0);
    v25 = a2;
  }

  else
  {
    v29 = a13;
    v30 = a11;
    v31 = a9;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.conversationBridge);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v42);
      _os_log_impl(&dword_1DC659000, v33, v34, "Submitting executionOutput for catId %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v37 = v36;
      v29 = a13;
      v31 = a9;
      MEMORY[0x1E12A2F50](v37, -1, -1);
      v38 = v35;
      v30 = a11;
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v41 = (*(*a7 + 128))(a1, a8, v31, a10 & 1);
    (*(*a7 + 112))(v41, a8, v31, v30, a12 & 1, v29 & 1, a3, a4);
    v25 = v41;
  }
}

uint64_t PreExecutionDialogHandler.submitAddViews(addViews:requestId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v170 = a7;
  v171 = a8;
  v172 = a1;
  v167 = a5;
  v168 = a6;
  v166 = a4;
  v173 = a3;
  v174 = a2;
  updated = type metadata accessor for ContextUpdateScope();
  v149 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v151 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v147 = &v137 - v14;
  v15 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v143 = &v137 - v18;
  v145 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v138 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v165 = &v137 - v23;
  v24 = type metadata accessor for UserID();
  v163 = *(v24 - 8);
  v164 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v162 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for RequestType();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RequestSummary.ExecutionSource();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v137 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v137 - v38;
  v40 = type metadata accessor for FlowOutputMessage.InAppResponse();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  (*(v28 + 104))(v33, *MEMORY[0x1E69D0678], v27);
  v41 = *(v28 + 16);
  v157 = v33;
  v41(v30, v33, v27);
  v155 = v39;
  outlined init with copy of ReferenceResolutionClientProtocol?(v39, v36, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v153 = type metadata accessor for ExecutionOutput(0);
  v42 = objc_allocWithZone(v153);
  v43 = &v42[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v44 = v173;
  *v43 = v174;
  v43[1] = v44;
  v45 = v44;
  v46 = &v42[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &v42[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &v42[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v48 = 0;
  *(v48 + 1) = 0;
  v49 = &v42[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v49 = 0;
  *(v49 + 1) = 0;
  v156 = v30;
  v158 = v27;
  v50 = v27;
  v51 = v172;
  v41(&v42[OBJC_IVAR___SKRExecutionOutput_executionSource], v30, v50);
  v154 = v36;
  outlined init with copy of ReferenceResolutionClientProtocol?(v36, &v42[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  v53 = one-time initialization token for executor;
  v54 = v51;
  v55 = v54;
  v56 = off_1E8646000;
  if (v52)
  {
    v141 = v28;
    v57 = v54;

    if (v53 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.executor);
    v59 = v57;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v145;
    v172 = v52;
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v176 = v66;
      *v64 = 136315394;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v176);
      *(v64 + 12) = 2112;
      *(v64 + 14) = v172;
      *v65 = v172;
      v67 = v59;
      _os_log_impl(&dword_1DC659000, v60, v61, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v64, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      v68 = v66;
      v52 = v172;
      MEMORY[0x1E12A2F50](v68, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    v69 = [v52 promptContextProto];
    v140 = v42;
    v146 = v55;
    if (v69)
    {
      v70 = v69;
      v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v178 = 0;
      v176 = 0u;
      v177 = 0u;
      outlined copy of Data._Representation(v71, v73);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(v74);
      v75 = v143;
      Message.init(serializedData:extensions:partial:options:)();
      v124 = v144;
      (*(v144 + 56))(v75, 0, 1, v63);
      v125 = v139;
      (*(v124 + 32))(v139, v75, v63);
      v126 = v138;
      (*(v124 + 16))(v138, v125, v63);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        LODWORD(v142) = v128;
        v130 = v126;
        v131 = v129;
        v143 = swift_slowAlloc();
        *&v176 = v143;
        *v131 = 136315394;
        *(v131 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v176);
        *(v131 + 12) = 2080;
        v132 = Message.textFormatString()();
        v133 = *(v124 + 8);
        v133(v130, v63);
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132._countAndFlagsBits, v132._object, &v176);

        *(v131 + 14) = v134;
        _os_log_impl(&dword_1DC659000, v127, v142, "ExecutionOutput: %s: NFCU has prompt context %s", v131, 0x16u);
        v135 = v143;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v135, -1, -1);
        MEMORY[0x1E12A2F50](v131, -1, -1);

        outlined consume of Data._Representation(v71, v73);
        v133(v139, v63);
      }

      else
      {

        outlined consume of Data._Representation(v71, v73);
        v136 = *(v124 + 8);
        v136(v126, v63);
        v136(v125, v63);
      }
    }

    else
    {
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v176 = v79;
        *v78 = 136315138;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v176);
        _os_log_impl(&dword_1DC659000, v76, v77, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x1E12A2F50](v79, -1, -1);
        MEMORY[0x1E12A2F50](v78, -1, -1);
      }
    }

    v80 = type metadata accessor for Parse.DirectInvocation();
    v81 = v147;
    (*(*(v80 - 8) + 56))(v147, 1, 1, v80);
    v82 = type metadata accessor for PommesContext();
    v83 = v148;
    (*(*(v82 - 8) + 56))(v148, 1, 1, v82);
    v84 = v149;
    v85 = v151;
    v86 = updated;
    (*(v149 + 104))(v151, *MEMORY[0x1E69CFF08], updated);
    v87 = type metadata accessor for ExecutionContextUpdate(0);
    v88 = objc_allocWithZone(v87);
    v89 = v150;
    outlined init with copy of ReferenceResolutionClientProtocol?(v83, v150, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v90 = v172;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v89, v172);
    *&v88[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v88[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v90;
    *&v88[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v88[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v88[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v81, &v88[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v88[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v89, &v88[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v84 + 16))(&v88[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v85, v86);
    v91 = &v88[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v91 = 0;
    v91[1] = 0;
    v88[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v175.receiver = v88;
    v175.super_class = v87;
    v56 = off_1E8646000;
    v92 = objc_msgSendSuper2(&v175, sel_init);
    (*(v84 + 8))(v85, v86);
    outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v42 = v140;
    *&v140[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v92;
    *&v42[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v28 = v141;
    v93 = v153;
    v94 = v173;
    v55 = v146;
  }

  else
  {

    if (v53 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    __swift_project_value_buffer(v95, static Logger.executor);
    v96 = v55;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v146 = v55;
      v102 = v101;
      *&v176 = v101;
      *v99 = 136315394;
      *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v176);
      *(v99 + 12) = 2112;
      *(v99 + 14) = v96;
      *v100 = v172;
      v103 = v96;
      _os_log_impl(&dword_1DC659000, v97, v98, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v99, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v100, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v104 = v100;
      v51 = v172;
      MEMORY[0x1E12A2F50](v104, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      v55 = v146;
      MEMORY[0x1E12A2F50](v102, -1, -1);
      v105 = v99;
      v56 = off_1E8646000;
      MEMORY[0x1E12A2F50](v105, -1, -1);
    }

    *&v42[OBJC_IVAR___SKRExecutionOutput_command] = v51;
    *&v42[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v106 = v96;
    v93 = v153;
    v94 = v45;
  }

  v179.receiver = v42;
  v179.super_class = v93;
  v107 = objc_msgSendSuper2(&v179, v56[390]);
  outlined destroy of ReferenceResolutionClientProtocol?(v154, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v108 = *(v28 + 8);
  v109 = v158;
  v108(v156, v158);

  v108(v157, v109);
  outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v110 = v160;
  v111 = v159;
  v112 = v161;
  (*(v160 + 104))(v159, *MEMORY[0x1E69D0548], v161);
  v114 = v163;
  v113 = v164;
  v115 = v162;
  (*(v163 + 16))(v162, v166, v164);
  type metadata accessor for ConversationContextUpdateMetadata(0);
  v116 = swift_allocObject();
  *(v116 + 16) = 1;
  (*(v110 + 32))(v116 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v111, v112);
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = 0;
  (*(v114 + 32))(v116 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v115, v113);
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v167 & 1;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v168 & 1;
  v117 = *(v169 + 16);
  v118 = type metadata accessor for UUID();
  v176 = 0u;
  v177 = 0u;
  v178 = 0;
  v119 = v165;
  (*(*(v118 - 8) + 56))(v165, 1, 1, v118);
  v120 = swift_allocObject();
  v121 = v171;
  *(v120 + 16) = v170;
  *(v120 + 24) = v121;
  v122 = *(*v117 + 296);

  v122(v107, v174, v94, 0, 0, &v176, 0, v116, 0, 0, v119, 0, 0, partial apply for closure #1 in PreExecutionDialogHandler.submitAddViews(addViews:requestId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:), v120);

  outlined destroy of ReferenceResolutionClientProtocol?(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return outlined destroy of ReferenceResolutionClientProtocol?(&v176, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
}

id PreExecutionDialogHandler.createCATContext()()
{
  v1 = *(v0 + 24);
  v2 = [v1 languageCode];
  if (!v2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to retrieve input language code";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v1 outputVoice];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 languageCode];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E699A098]) initWithInputLocale:v3 outputVoiceLocale:v6];

      return v7;
    }
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to retrieve outputVoice language code";
LABEL_13:
    _os_log_impl(&dword_1DC659000, v10, v11, v13, v12, 2u);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

LABEL_14:

  return 0;
}

void partial apply for closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for UserID() - 8);
  v6 = v2 + ((*(v5 + 80) + 73) & ~*(v5 + 80));
  closure #1 in PreExecutionDialogHandler.submitDialog(requestId:rcId:catId:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:shouldSpeak:parameters:catSource:completion:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v6, *(v6 + *(v5 + 64)), *(v6 + *(v5 + 64) + 1));
}

id PreExecutionDialogHandler.generateAddViewsForCATResult(result:requestId:shouldSpeak:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v9 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v10 = v8;
  v11 = [v9 init];
  v12 = [v11 UUIDString];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x1E12A1410](v13);
  }

  [v10 setAceId_];

  v14 = v10;
  v15 = MEMORY[0x1E12A1410](a2, a3);
  [v14 setRefId_];

  v16 = [a1 print];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17[2])
  {
    v18 = v17[4];
    v19 = v17[5];

    v20 = MEMORY[0x1E12A1410](v18, v19);
  }

  else
  {

    v20 = 0;
  }

  [v14 setText_];

  v21 = [a1 dialogId];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22[2])
  {
    v23 = v22[4];
    v24 = v22[5];

    v25 = MEMORY[0x1E12A1410](v23, v24);
  }

  else
  {

    v25 = 0;
  }

  [v14 setDialogIdentifier_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v26 = v14;
  isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  [v26 setListenAfterSpeaking_];

  v28 = [a1 meta];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(0x79726F6765746163, 0xE800000000000000), (v31 & 1) != 0))
  {
    v32 = (*(v29 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];

    v35 = MEMORY[0x1E12A1410](v33, v34);
  }

  else
  {

    v35 = 0;
  }

  [v26 setDialogCategory_];

  if (a4)
  {
    v36 = [a1 print];
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v37[2])
    {
      v38 = v37[4];
      v39 = v37[5];

      v40 = MEMORY[0x1E12A1410](v38, v39);
    }

    else
    {

      v40 = 0;
    }

    [v26 setSpeakableText_];
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v42 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v43 = v41;
  v44 = [v42 init];
  v45 = [v44 UUIDString];

  if (!v45)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = MEMORY[0x1E12A1410](v46);
  }

  [v43 setAceId_];

  v47 = v43;
  v48 = MEMORY[0x1E12A1410](a2, a3);
  [v47 setRefId_];

  [v47 setDialogPhase_];
  [v47 setDisplayTarget_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1DCA70640;
  *(v49 + 32) = v26;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v47 setViews_];

  return v47;
}

uint64_t PreExecutionDialogHandler.deinit()
{

  return v0;
}

uint64_t PreExecutionDialogHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(double a1)
{
  result = lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext;
  if (!lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext);
  }

  return result;
}

SiriKitRuntime::PreExecutionRuleType __swiftcall ExecutionOverrideType.asPreExecutionType()()
{
  result = *v0;
  v2 = 1 << *v0;
  if ((v2 & 0x53) == 0)
  {
    if ((v2 & 0xAC) != 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.conversationBridge);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11 = v7;
        *v6 = 136315650;
        v8 = String.init<A>(describing:)();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2080;
        *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA85510, &v11);
        *(v6 + 22) = 2080;
        *(v6 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001DCA85540, &v11);
        _os_log_impl(&dword_1DC659000, v4, v5, "ExecutionOverrideType value of %s not expected; mapping to .none for PreExecutionRuleType. If you added a rule recently; make sure to explicitly update it's mapping value in %s.%s", v6, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v7, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);
      }
    }

    return 7;
  }

  return result;
}

unint64_t PreExecutionRuleType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v1 = 0x5253417974706D65;
    if (a1 != 6)
    {
      v1 = 1701736302;
    }

    v2 = 0xD000000000000022;
    if (a1 != 4)
    {
      v2 = 0xD000000000000017;
    }

    v3 = a1 <= 5u;
  }

  else
  {
    v1 = 0xD000000000000023;
    if (a1 != 2)
    {
      v1 = 0xD000000000000022;
    }

    v2 = 0xD000000000000021;
    if (!a1)
    {
      v2 = 0xD000000000000016;
    }

    v3 = a1 <= 1u;
  }

  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PreExecutionRuleType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PreExecutionRuleType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PreExecutionRuleType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PreExecutionRuleType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreExecutionRuleType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PreExecutionRuleType(uint64_t a1)
{
  PreExecutionRuleType.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PreExecutionRuleType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PreExecutionRuleType.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PreExecutionRuleType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PreExecutionRuleType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreExecutionRuleType@<X0>(unint64_t *a1@<X8>)
{
  result = PreExecutionRuleType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized PreExecutionRuleType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PreExecutionRuleType.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PreExecutionRuleType and conformance PreExecutionRuleType()
{
  result = lazy protocol witness table cache variable for type PreExecutionRuleType and conformance PreExecutionRuleType;
  if (!lazy protocol witness table cache variable for type PreExecutionRuleType and conformance PreExecutionRuleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreExecutionRuleType and conformance PreExecutionRuleType);
  }

  return result;
}

uint64_t RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v109 = a2;
  v110 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = v103 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v122 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CamUSOParse();
  v127 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13NLRouterParseVSgMd, &_s11SiriKitFlow13NLRouterParseVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v136 = v103 - v12;
  v13 = type metadata accessor for NLRouterParse();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v133 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v108 = v103 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v107 = v103 - v19;
  v20 = type metadata accessor for Input();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CamParse();
  v112 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v134 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v124 = v103 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v111 = v103 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v103 - v29;
  v137 = type metadata accessor for Parse();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v138 = (v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v105 = (v103 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v103 - v35;
  if (RankedAction.flowHandlerId.getter() == 0xD000000000000021 && 0x80000001DCA7CC80 == v37)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v39 = RankedAction.userData.getter();
  if (v39)
  {
    v40 = v39;
    v41 = v111;
    RankedAction.parse.getter();
    CamParse.asLinkParse(userData:)(v40, v30);

    (*(v112 + 8))(v41, v22);
    v42 = v135;
    v43 = v137;
    if ((*(v135 + 48))(v30, 1, v137) != 1)
    {
      (*(v42 + 32))(v36, v30, v43);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v104 = a1;
      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.executor);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_1DC659000, v95, v96, "Converting RankedAction to PluginAction with LinkParse", v97, 2u);
        MEMORY[0x1E12A2F50](v97, -1, -1);
      }

      v138 = RankedAction.flowHandlerId.getter();
      v98 = v137;
      (*(v42 + 16))(v105, v36, v137);
      v99 = v42;
      Input.init(parse:)();
      outlined init with copy of ActionParaphrase?(v109, v107);
      v100 = v104;
      v101 = v108;
      RankedAction.loggingId.getter();
      v102 = type metadata accessor for UUID();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)();
      return (*(v99 + 8))(v36, v98);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

LABEL_8:
  v44 = RankedAction.userData.getter();
  if (v44)
  {
    v45 = v44;
    if (*(v44 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(0x726574756F526C6ELL, 0xE800000000000000), (v47 & 1) != 0))
    {
      outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v139);

      v48 = v136;
      v49 = swift_dynamicCast();
      (*(v14 + 56))(v48, v49 ^ 1u, 1, v13);
      if ((*(v14 + 48))(v48, 1, v13) != 1)
      {
        (*(v14 + 32))(v133, v48, v13);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Logger.executor);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        v53 = os_log_type_enabled(v51, v52);
        v54 = v135;
        if (v53)
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_1DC659000, v51, v52, "Converting RankedAction to PluginAction with NLRouterParse", v55, 2u);
          MEMORY[0x1E12A2F50](v55, -1, -1);
        }

        v138 = RankedAction.flowHandlerId.getter();
        v56 = v105;
        v57 = v133;
        (*(v14 + 16))(v105, v133, v13);
        (*(v54 + 104))(v56, *MEMORY[0x1E69D0180], v137);
        Input.init(parse:)();
        outlined init with copy of ActionParaphrase?(v109, v107);
        v58 = a1;
        v59 = v108;
        RankedAction.loggingId.getter();
        v60 = type metadata accessor for UUID();
        (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
        PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)();
        return (*(v14 + 8))(v57, v13);
      }
    }

    else
    {

      v48 = v136;
      (*(v14 + 56))(v136, 1, 1, v13);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s11SiriKitFlow13NLRouterParseVSgMd, &_s11SiriKitFlow13NLRouterParseVSgMR);
  }

  v62 = RankedAction.alternatives.getter();
  v63 = *(v62 + 16);
  if (v63)
  {
    v103[2] = v4;
    v104 = a1;
    v139 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
    v64 = v139;
    v132 = *(v112 + 16);
    v65 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v103[1] = v62;
    v66 = v62 + v65;
    v67 = *(v112 + 72);
    v130 = (v112 + 88);
    v131 = v67;
    v129 = *MEMORY[0x1E69CE300];
    v119 = *MEMORY[0x1E69CE2F8];
    v115 = *MEMORY[0x1E69CE308];
    v114 = *MEMORY[0x1E69D0178];
    v128 = (v135 + 104);
    v136 = (v112 + 8);
    v133 = (v112 + 16);
    v125 = (v112 + 96);
    v113 = *MEMORY[0x1E69D0138];
    v118 = (v127 + 32);
    v117 = (v127 + 8);
    v116 = *MEMORY[0x1E69D0168];
    v127 = v135 + 32;
    v68 = v134;
    v69 = v124;
    while (1)
    {
      v70 = v132;
      v132(v69, v66, v22);
      v70(v68, v69, v22);
      v71 = (*v130)(v68, v22);
      if (v71 == v129)
      {
        (*v125)(v68, v22);
        v72 = *v118;
        v73 = v120;
        v126 = v66;
        v74 = v121;
        v72(v120, v68, v121);
        CamUSOParse.userParse.getter();
        CamUSOParse.parserIdentifier.getter();
        CamUSOParse.appBundleId.getter();
        CamUSOParse.groupIndex.getter();
        v75 = v63;
        v76 = v64;
        v77 = v22;
        v78 = v138;
        v69 = v124;
        USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
        v79 = v74;
        v66 = v126;
        (*v117)(v73, v79);
        v80 = *v128;
        v81 = v78;
        v22 = v77;
        v64 = v76;
        v63 = v75;
        v82 = &v141 + 4;
      }

      else
      {
        if (v71 != v119)
        {
          v83 = v137;
          if (v71 == v115)
          {
            (*v128)(v138, v114, v137);
          }

          else
          {
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v86 = type metadata accessor for Logger();
            __swift_project_value_buffer(v86, static Logger.executor);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&dword_1DC659000, v87, v88, "Unknown CamParse type, defaulting to Parse.empty!", v89, 2u);
              MEMORY[0x1E12A2F50](v89, -1, -1);
            }

            v83 = v137;
            (*v128)(v138, v114, v137);
            (*v136)(v68, v22);
          }

          goto LABEL_26;
        }

        (*v125)(v68, v22);
        v81 = v138;
        *v138 = *v68;
        v80 = *v128;
        v82 = &v140;
      }

      v83 = v137;
      v80(v81, *(v82 - 64), v137);
LABEL_26:
      (*v136)(v69, v22);
      v139 = v64;
      v85 = *(v64 + 16);
      v84 = *(v64 + 24);
      if (v85 >= v84 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
        v83 = v137;
        v64 = v139;
      }

      *(v64 + 16) = v85 + 1;
      (*(v135 + 32))(v64 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v85, v138, v83);
      v66 += v131;
      --v63;
      v68 = v134;
      if (!v63)
      {

        a1 = v104;
        goto LABEL_38;
      }
    }
  }

LABEL_38:
  RankedAction.flowHandlerId.getter();
  v90 = v111;
  RankedAction.parse.getter();
  CamParse.asSKEParse()(v105);
  (*(v112 + 8))(v90, v22);
  Input.init(parse:alternatives:)();
  outlined init with copy of ActionParaphrase?(v109, v107);
  v91 = a1;
  v92 = v108;
  RankedAction.loggingId.getter();
  v93 = type metadata accessor for UUID();
  (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
  return PluginAction.init(flowHandlerId:input:speechPackage:actionParaphrase:loggingId:)();
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReactiveUIEventActor();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  static ReactiveUIEventActor.shared = v2;
  return result;
}

uint64_t static ReactiveUIEventActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void ReactiveUIEventActor.deliver(event:)(void *a1)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v4 = *(v1 + 120);
    v5 = one-time initialization token for executor;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_1DC659000, v8, v9, "[ReactiveEventActor] Dispatching  Event %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v2(v7);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v2, v4);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v14, "[ReactiveEventActor] No registered handler", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }
}

uint64_t ReactiveUIEventActor.setHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "[ReactiveEventActor] setting new handler", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v10 = *(v3 + 112);
  v11 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v10, v11);
}

uint64_t ReactiveUIEventActor.deinit()
{
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(*(v0 + 112), *(v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ReactiveUIEventActor.__deallocating_deinit()
{
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(*(v0 + 112), *(v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance ReactiveUIEventActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance ReactiveUIEventActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReactiveUIEventActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

SiriKitRuntime::ReaderAffinityScorer __swiftcall ReaderAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CD50;
  v1 = 0xD00000000000001FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t *ReaderAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static ReaderAffinityScorer.kAppBundleIdMatches;
}

double static ReaderAffinityScorer.kAppBundleIdMatches.getter()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t specialized ReaderAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v67 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v52 - v7;
  v62 = type metadata accessor for RREntity();
  v9 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RRCandidate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 + 16);
  if (!v60)
  {
    return 0;
  }

  v59 = type metadata accessor for UsoEntity_common_App();
  v15 = 0;
  v17 = *(v12 + 16);
  v16 = v12 + 16;
  v58 = v17;
  v57 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v56 = *(v16 + 56);
  v55 = (v9 + 8);
  v68 = v4 + 16;
  v65 = (v4 + 8);
  v66 = (v4 + 32);
  v54 = (v16 - 8);
  v69 = v4;
  v53 = v11;
  v52[1] = v16;
  v52[0] = v14;
  v17(v14, v57, v11);
  while (1)
  {
    v18 = v61;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*v55)(v18, v62);
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v19 = v74;
    if (!v74)
    {
      (*v54)(v14, v11);
      goto LABEL_4;
    }

    v64 = v15;

    v20 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v63 = v19;

    v71 = *(v20 + 16);
    if (v71)
    {
      break;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v14 = v52[0];
    v11 = v53;
    (*v54)(v52[0], v53);

    v51 = *(v23 + 16);

    v15 = v64;
    if (v51)
    {
      return 1;
    }

LABEL_4:
    if (++v15 == v60)
    {
      return 0;
    }

    v58(v14, v57 + v56 * v15, v11);
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v70 = v20;
  while (v22 < *(v20 + 16))
  {
    v73 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v72 = *(v4 + 72);
    v24 = v3;
    (*(v4 + 16))(v8, v20 + v73 + v72 * v22, v3);
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v25 = static ReaderAffinityScorer.kAppBundleIdMatches;
    v26 = v8;
    v27 = UsoIdentifier.appBundleId.getter();
    v29 = v28;
    if (*(v25 + 16))
    {
      v30 = v27;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v31 = Hasher._finalize()();
      v32 = -1 << *(v25 + 32);
      v33 = v31 & ~v32;
      if ((*(v25 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        do
        {
          v35 = (*(v25 + 48) + 16 * v33);
          v36 = *v35 == v30 && v35[1] == v29;
          if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_33;
          }

          v33 = (v33 + 1) & v34;
        }

        while (((*(v25 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
      }
    }

    v37 = UsoIdentifier.value.getter();
    v39 = v38;
    if (*(v25 + 16))
    {
      v40 = v37;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v25 + 32);
      v43 = v41 & ~v42;
      if ((*(v25 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (1)
        {
          v45 = (*(v25 + 48) + 16 * v43);
          v46 = *v45 == v40 && v45[1] == v39;
          if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v25 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

LABEL_33:

        v47 = *v66;
        v8 = v26;
        v3 = v24;
        (*v66)(v67, v26, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = v75;
        }

        v20 = v70;
        v50 = *(v23 + 16);
        v49 = *(v23 + 24);
        if (v50 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
          v23 = v75;
        }

        *(v23 + 16) = v50 + 1;
        result = v47((v23 + v73 + v50 * v72), v67, v24);
        goto LABEL_10;
      }
    }

LABEL_9:

    v8 = v26;
    v3 = v24;
    result = (*v65)(v26, v24);
    v20 = v70;
LABEL_10:
    ++v22;
    v4 = v69;
    if (v22 == v71)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized ReaderAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  v132 = type metadata accessor for RREntity();
  v116 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RRCandidate();
  v4 = *(v3 - 8);
  v135 = v3;
  v136 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v114 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v133 = v110 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v115 = v110 - v9;
  v134 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v130 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v129 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UserParse();
  v126 = *(v16 - 8);
  v127 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v125 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v124 = v110 - v19;
  v123 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v117 = v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = v110 - v22;
  v23 = type metadata accessor for USOParse();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Parse();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v28 + 88))(v30, v27) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor == -1)
    {
LABEL_10:
      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.executor);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1DC659000, v46, v47, "ReaderAffinityScorer received an unexpected parse", v48, 2u);
        MEMORY[0x1E12A2F50](v48, -1, -1);
      }

      (*(v28 + 8))(v30, v27);
      return 2;
    }

LABEL_85:
    swift_once();
    goto LABEL_10;
  }

  (*(v28 + 96))(v30, v27);
  (*(v24 + 32))(v26, v30, v23);
  v31 = specialized static AffinityScorerUtils.getTask(_:)();
  if (v31)
  {
    v32 = v31;
    v112 = v26;
    v137 = UsoTask.verbString.getter();
    v138 = v33;
    MEMORY[0x1E12A1580](14906, 0xE200000000000000);
    v110[1] = v32;
    v34 = UsoTask.baseEntityAsString.getter();
    MEMORY[0x1E12A1580](v34);

    v30 = v137;
    v35 = v138;
    if (v137 == 0xD000000000000012 && 0x80000001DCA855B0 == v138 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v36 = v23;
      if (one-time initialization token for executor != -1)
      {
LABEL_88:
        swift_once();
      }

      v111 = v24;
      v37 = type metadata accessor for Logger();
      v38 = __swift_project_value_buffer(v37, static Logger.executor);

      v110[0] = v38;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      v41 = os_log_type_enabled(v39, v40);
      v113 = v36;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v137 = v43;
        *v42 = 136315138;
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v35, &v137);

        *(v42 + 4) = v30;
        _os_log_impl(&dword_1DC659000, v39, v40, "ReaderAffinityScorer found %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1E12A2F50](v43, -1, -1);
        v44 = v42;
        v36 = v113;
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      else
      {
      }

      v54 = v125;
      v55 = USOParse.userParse.getter();
      v27 = MEMORY[0x1E129C0F0](v55);
      (*(v126 + 8))(v54, v127);
      v24 = *(v27 + 16);
      if (v24)
      {
        v28 = 0;
        v30 = v13 + 8;
        while (v28 < *(v27 + 16))
        {
          (*(v13 + 16))(v15, v27 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28, v12);
          if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
          {

            v57 = v124;
            (*(v13 + 32))(v124, v15, v12);
            v56 = 0;
            goto LABEL_29;
          }

          ++v28;
          (*v30)(v15, v12);
          if (v24 == v28)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

LABEL_24:

      v56 = 1;
      v57 = v124;
LABEL_29:
      (*(v13 + 56))(v57, v56, 1, v12);
      if ((*(v13 + 48))(v57, 1, v12) == 1)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v57);
      }

      else
      {
        v35 = v118;
        Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
        v58 = *(v13 + 8);
        v13 += 8;
        v58(v57, v12);
        v59 = v117;
        Siri_Nlu_External_UserStatedTask.task.getter();
        (*(v119 + 8))(v35, v120);
        (*(v122 + 32))(v121, v59, v123);
        v60 = Siri_Nlu_External_UsoGraph.identifiers.getter();
        v12 = v60;
        v61 = *(v60 + 16);
        if (v61)
        {
          v13 = 0;
          v62 = v129;
          v127 = v60 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
          v126 = v130 + 16;
          v15 = v130 + 8;
          while (1)
          {
            if (v13 >= *(v12 + 16))
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            (*(v130 + 16))(v62, v127 + *(v130 + 72) * v13, v134);
            if (one-time initialization token for kAppBundleIdMatches != -1)
            {
              swift_once();
            }

            v35 = static ReaderAffinityScorer.kAppBundleIdMatches;
            v63 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
            v24 = v64;
            if (*(v35 + 16))
            {
              v65 = v63;
              Hasher.init(_seed:)();
              String.hash(into:)();
              v66 = Hasher._finalize()();
              v67 = -1 << *(v35 + 32);
              v30 = v66 & ~v67;
              if ((*(v35 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
              {
                break;
              }
            }

LABEL_33:
            ++v13;
            v62 = v129;
            (*v15)(v129, v134);

            v36 = v113;
            if (v13 == v61)
            {
              goto LABEL_50;
            }
          }

          v68 = ~v67;
          while (1)
          {
            v69 = (*(v35 + 48) + 16 * v30);
            v70 = *v69 == v65 && v69[1] == v24;
            if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v30 = (v30 + 1) & v68;
            if (((*(v35 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          (*v15)(v129, v134);

          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_1DC659000, v71, v72, "ReaderAffinityScorer found matching identifier", v73, 2u);
            MEMORY[0x1E12A2F50](v73, -1, -1);
          }

          (*(v122 + 8))(v121, v123);
          goto LABEL_74;
        }

LABEL_50:

        (*(v122 + 8))(v121, v123);
      }

      v24 = v111;
      v74 = v135;
      SiriEnvironment.salientEntitiesProvider.getter();
      v35 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

      v127 = *(v35 + 16);
      if (v127)
      {
        v30 = 0;
        v129 = (v35 + ((*(v136 + 80) + 32) & ~*(v136 + 80)));
        v134 = v136 + 16;
        v12 = v116 + 8;
        v130 = v136 + 8;
        v75 = v133;
        while (1)
        {
          if (v30 >= *(v35 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v76 = *(v136 + 16);
          v76(v75, &v129[*(v136 + 72) * v30], v74);
          if (one-time initialization token for kAppBundleIdMatches != -1)
          {
            swift_once();
          }

          v77 = static ReaderAffinityScorer.kAppBundleIdMatches;
          v13 = v131;
          RRCandidate.entity.getter();
          v78 = RREntity.appBundleId.getter();
          v80 = v79;
          (*v12)(v13, v132);
          if (*(v77 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v81 = Hasher._finalize()();
            v82 = -1 << *(v77 + 32);
            v13 = v81 & ~v82;
            if ((*(v77 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
            {
              break;
            }
          }

LABEL_53:
          ++v30;
          v75 = v133;
          v74 = v135;
          (*v130)(v133, v135);

          v24 = v111;
          v36 = v113;
          if (v30 == v127)
          {
            goto LABEL_69;
          }
        }

        v15 = ~v82;
        while (1)
        {
          v83 = (*(v77 + 48) + 16 * v13);
          v84 = *v83 == v78 && v83[1] == v80;
          if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v15;
          if (((*(v77 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        v85 = v135;
        v86 = v115;
        (*(v136 + 32))(v115, v133, v135);
        v87 = v114;
        v76(v114, v86, v85);
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v137 = v91;
          *v90 = 136315138;
          lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate(COERCE_DOUBLE(136315138));
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v87;
          v95 = v94;
          v96 = *v130;
          (*v130)(v93, v85);
          v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v95, &v137);

          *(v90 + 4) = v97;
          _os_log_impl(&dword_1DC659000, v88, v89, "ReaderAffinityScorer found salient reader entity %s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          MEMORY[0x1E12A2F50](v91, -1, -1);
          MEMORY[0x1E12A2F50](v90, -1, -1);

          v96(v86, v85);
        }

        else
        {

          v104 = *v130;
          (*v130)(v87, v85);
          v104(v86, v85);
        }

LABEL_74:
        (*(v111 + 8))(v112, v113);
        return 3;
      }

LABEL_69:

      SiriEnvironment.salientEntitiesProvider.getter();
      v98 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

      v100 = specialized ReaderAffinityScorer.supportedAppIsOnScreen(with:)(v98, v99);

      if (v100)
      {
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_1DC659000, v101, v102, "ReaderAffinityScorer found commonApp entity with Safari bundle ID", v103, 2u);
          MEMORY[0x1E12A2F50](v103, -1, -1);
        }

        (*(v24 + 8))(v112, v36);
        return 3;
      }

      (*(v24 + 8))(v112, v36);

      return 1;
    }

    if (v30 == 0xD000000000000016 && 0x80000001DCA855D0 == v35)
    {
    }

    else
    {
      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v105 & 1) == 0)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        __swift_project_value_buffer(v106, static Logger.executor);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_1DC659000, v107, v108, "ReaderAffinityScorer could not find a supported parse or identifiers", v109, 2u);
          MEMORY[0x1E12A2F50](v109, -1, -1);
        }

        (*(v24 + 8))(v112, v23);
        return 1;
      }
    }

    (*(v24 + 8))(v112, v23);

    return 3;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.executor);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DC659000, v51, v52, "ReaderAffinityScorer could not extract usoTask from parse", v53, 2u);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }

  (*(v24 + 8))(v26, v23);
  return 0;
}

unint64_t lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate(double a1)
{
  result = lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate;
  if (!lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate)
  {
    type metadata accessor for RRCandidate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate);
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1E12A1FE0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t SiriEnvironment.recentDialogs.getter()
{
  type metadata accessor for RecentDialogsEnvironmentProvider();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider, v0, type metadata accessor for RecentDialogsEnvironmentProvider, &protocol conformance descriptor for RecentDialogsEnvironmentProvider);

  return dispatch thunk of SiriEnvironment.subscript.getter();
}

uint64_t RecentDialogTracker.__allocating_init(timeProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RecentDialogTracker.init(timeProvider:)(a1, a2);
  return v4;
}

uint64_t RecentDialogTracker.init(timeProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) = 0;
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs) = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DC659000, v10, v11, "RecentDialogTracker initalized", v12, 2u);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v13 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider);
  *v13 = a1;
  v13[1] = a2;
  return v3;
}

void RecentDialogTracker.maybeMemorizeDialog(command:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DialogPhase();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v55 - v13;
  RecentDialogTracker.filterExpired()();
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v55 = v4;
  v17 = a1;
  v56 = v16;
  v57 = v17;
  v18 = [v16 dialogPhase];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  DialogPhase.init(aceValue:)();
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
LABEL_8:
    if (one-time initialization token for conversationBridge != -1)
    {
LABEL_44:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationBridge);
    v23 = v57;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59[0] = v27;
      *v26 = 136315138;
      v28 = [v56 dialogPhase];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v59);

      *(v26 + 4) = v50;
      _os_log_impl(&dword_1DC659000, v24, v25, "RecentDialogTracker: ignoring dialog in phase %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  static DialogPhase.reflection.getter();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, 255, MEMORY[0x1E69CFD40], MEMORY[0x1E69CFD48]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  if (v20)
  {
    goto LABEL_8;
  }

  if (!*(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.conversationBridge);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "RecentDialogTracker: currentRequestId is not set when maybeMemorizeDialog is called", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    return;
  }

  v33 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;

  swift_beginAccess();
  while (1)
  {
    v34 = *(v2 + v33);
    if (v34 >> 62)
    {
      if (__CocoaSet.count.getter() < 2)
      {
        goto LABEL_28;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v35 = *(v2 + v33);
    if (v35 >> 62)
    {
      break;
    }

    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_19:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v2 + v33) = v35;
    if (v35 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      __break(1u);
      goto LABEL_44;
    }

    v38 = v37 - 1;
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20);
    *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) = v38;
    *(v2 + v33) = v35;
    swift_endAccess();
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  v40 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider);
  v41 = v57;
  v40();
  static Date.+ infix(_:_:)();
  (*(v58 + 8))(v6, v55);
  v42 = objc_allocWithZone(type metadata accessor for RecentDialog());
  v43 = RecentDialog.init(addViews:expiresAt:requestId:)();
  swift_beginAccess();
  if (*(v2 + v33) >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v43);
    swift_endAccess();

    *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) = 1;
    RecentDialogTracker.updateSiriEnvironment()();
    if (one-time initialization token for conversationBridge != -1)
    {
      goto LABEL_47;
    }
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.conversationBridge);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    v48 = *(v2 + v33);
    if (v48 >> 62)
    {
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v47 + 4) = v49;

    _os_log_impl(&dword_1DC659000, v45, v46, "RecentDialogTracker: memorized the last dialog, got %ld in total.", v47, 0xCu);
    MEMORY[0x1E12A2F50](v47, -1, -1);
  }

  else
  {
  }
}

Swift::Bool __swiftcall DialogPhase.shouldTrack()()
{
  v0 = type metadata accessor for DialogPhase();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DialogPhase.reflection.getter();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, 255, MEMORY[0x1E69CFD40], MEMORY[0x1E69CFD48]);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

double RecentDialogTracker.getRecentDialogs()(double a1)
{
  v2 = v1;
  RecentDialogTracker.filterExpired()();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (v8 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v9;

    _os_log_impl(&dword_1DC659000, v4, v5, "RecentDialogTracker: returning %ld recent dialogs.", v6, 0xCu);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  return result;
}

uint64_t RecentDialogTracker.filterExpired()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_timeProvider))(v4);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_recentDialogs;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v24 = v6;

  v9 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in RecentDialogTracker.filterExpired(), v23, v8);
  v10 = v9;
  v11 = v9 >> 62;
  if (v9 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(v1 + v7);
  if (v13 >> 62)
  {
    if (v12 >= __CocoaSet.count.getter())
    {
      goto LABEL_19;
    }
  }

  else if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    *(v1 + v7) = v10;

    RecentDialogTracker.updateSiriEnvironment()();
    return (*(v3 + 8))(v6, v2);
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_19;
  }

  v17 = swift_slowAlloc();
  *v17 = 134217984;
  v18 = *(v1 + v7);
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    v20 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
LABEL_10:
      result = *(v20 + 16);
      goto LABEL_17;
    }
  }

  v22 = v19;
  result = __CocoaSet.count.getter();
  v19 = v22;
LABEL_17:
  if (!__OFSUB__(v19, result))
  {
    *(v17 + 4) = v19 - result;

    _os_log_impl(&dword_1DC659000, v15, v16, "RecentDialogTracker: removed %ld expired dialog(s)", v17, 0xCu);
    MEMORY[0x1E12A2F50](v17, -1, -1);

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RecentDialogTracker.filterExpired()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecentDialog.expiresAt.getter();
  v6 = static Date.> infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

Swift::Bool __swiftcall DialogPhase.canBeReplayed()()
{
  v1 = v0;
  v2 = type metadata accessor for DialogPhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  (*(v3 + 16))(&v14 - v8, v1, v2, v7);
  static DialogPhase.summary.getter();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, 255, MEMORY[0x1E69CFD40], MEMORY[0x1E69CFD48]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    static DialogPhase.completion.getter();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v5, v2);
  }

  v11(v9, v2);
  return v12 & 1;
}

uint64_t RecentDialogTracker.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return v0;
}

uint64_t RecentDialogTracker.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return swift_deallocClassInstance();
}

uint64_t RecentDialogsEnvironmentProvider.__allocating_init(storage:)()
{

  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t RecentDialogsEnvironmentProvider.init(storage:)()
{

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RecentDialogsEnvironmentProvider@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RecentDialogsEnvironmentProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RecentDialogTracker(uint64_t a1)
{
  result = type metadata singleton initialization cache for RecentDialogTracker;
  if (!type metadata singleton initialization cache for RecentDialogTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RecentDialogTracker(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t RemoteConversationClient.__allocating_init(identifier:remoteConversationXPCProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = specialized RemoteConversationClient.__allocating_init(identifier:remoteConversationXPCProvider:)(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

uint64_t RemoteConversationClient.identifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t key path setter for RemoteConversationClient.currentRcId : RemoteConversationClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 168) = v3;
  *(v4 + 176) = v2;
}

uint64_t RemoteConversationClient.currentRcId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 168);

  return v1;
}

uint64_t RemoteConversationClient.currentRcId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t RemoteConversationClient.init(identifier:remoteConversationXPCProvider:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  outlined init with take of NSExtensionProtocol(a3, v3 + 128);
  return v3;
}

uint64_t RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.warmup(refId:), v2, 0);
}

uint64_t RemoteConversationClient.warmup(refId:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "warmup(refId:)", 14, 2);
  v5 = v2[19];
  v6 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v5);
  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = *(v6 + 16);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = specialized FlowExtensionConversationHandler.warmup(refId:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return (v12)(v0 + 7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.warmup(refId:), v7, v10, v5, v6);
}

uint64_t closure #1 in RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.warmup(refId:)()
{
  v16 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 48);
    v14 = *(v0 + 32);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v14;
    *(v3 + 40) = v2;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = closure #1 in RemoteConversationClient.warmup(refId:);
    v5 = *(v0 + 16);
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x722870756D726177, 0xEE00293A64496665, partial apply for closure #1 in closure #1 in RemoteConversationClient.warmup(refId:), v3, v6);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x722870756D726177, 0xEE00293A64496665, &v15);
      _os_log_impl(&dword_1DC659000, v8, v9, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

void closure #1 in closure #1 in RemoteConversationClient.warmup(refId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - v12;
  v14 = MEMORY[0x1E12A1410](a4, a5, v11);
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.reset();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_214;
  v17 = _Block_copy(aBlock);

  [a2 warmupWithRefId:v14 reply:v17];
  _Block_release(v17);
}

uint64_t RemoteConversationClient.cancel(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.cancel(_:), v1, 0);
}

uint64_t RemoteConversationClient.cancel(_:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "cancel(_:)", 10, 2);
  v4 = v1[19];
  v5 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v4);
  v6 = swift_allocObject();
  v0[4] = v6;
  *(v6 + 16) = v2;
  v10 = (*(v5 + 16) + **(v5 + 16));
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = RemoteConversationClient.cancel(_:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return v10(v0 + 6, &async function pointer to partial apply for closure #1 in RemoteConversationClient.cancel(_:), v6, v8, v4, v5);
}

{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {

    v4 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t closure #1 in RemoteConversationClient.cancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.cancel(_:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.cancel(_:)()
{
  v16 = v0;
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = swift_task_alloc();
    v0[6] = v4;
    v4[2] = v1;
    v4[3] = v3;
    v4[4] = v2;
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.cancel(_:);
    v6 = v0[2];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x5F286C65636E6163, 0xEA0000000000293ALL, partial apply for closure #1 in closure #1 in RemoteConversationClient.cancel(_:), v4, v7);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5F286C65636E6163, 0xEA0000000000293ALL, &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.warmup(refId:), 0, 0);
}

void closure #1 in closure #1 in RemoteConversationClient.cancel(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  (*(v8 + 16))(aBlock - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.reset();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_207;
  v14 = _Block_copy(aBlock);

  [a2 cancelWithCancellationReason:a4 reply:v14];
  _Block_release(v14);
}

uint64_t RemoteConversationClient.ensureReady()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.ensureReady(), v0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "ensureReady()", 13, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = RemoteConversationClient.ensureReady();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return v8(v0 + 40, &async function pointer to closure #1 in RemoteConversationClient.ensureReady(), 0, v6, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = RemoteConversationClient.ensureReady();
  }

  else
  {
    v4 = RemoteConversationClient.ensureReady();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1DC659000, v5, v6, "Error calling startTurn: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for UserInputResult(0);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for Input();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.accept(input:speechData:), v3, 0);
}

uint64_t RemoteConversationClient.accept(input:speechData:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v21 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v7, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "accept(input:speechData:)", 25, 2);
  v9 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v8 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8];
  swift_beginAccess();
  v5[21] = v9;
  v5[22] = v8;

  v10 = v5[19];
  v11 = v5[20];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v10);
  (*(v3 + 16))(v1, v6, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v0[16] = v13;
  (*(v3 + 32))(v13 + v12, v1, v2);
  *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v14 = *(v11 + 8);
  v15 = v4;
  v20 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = RemoteConversationClient.accept(input:speechData:);
  v17 = v0[9];
  v18 = v0[5];

  return v20(v18, &async function pointer to partial apply for closure #1 in RemoteConversationClient.accept(input:speechData:), v13, v17, v10, v11);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = RemoteConversationClient.accept(input:speechData:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = RemoteConversationClient.accept(input:speechData:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Input();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.accept(input:speechData:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.accept(input:speechData:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v15 = *(v0 + 24);
  (*(v4 + 16))(v1, *(v0 + 40), v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v15;
  *(v8 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)) = v5;
  swift_unknownObjectRetain();
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:);
  *(v10 + 24) = v8;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = type metadata accessor for UserInputResult(0);
  *v11 = v0;
  v11[1] = closure #1 in RemoteConversationClient.accept(input:speechData:);
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)specialized partial apply, v10, v12);
}

{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.accept(input:speechData:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.prepare(bridge:), v2, 0);
}

uint64_t RemoteConversationClient.prepare(bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  v8 = *(v0 + 16);
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "prepare(bridge:)", 16, 2);
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v8;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = RemoteConversationClient.prepare(bridge:);

  return v9();
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = RemoteConversationClient.ensureReady();
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t RemoteConversationClient.paraphrase()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.paraphrase(), v1, 0);
}

uint64_t RemoteConversationClient.paraphrase()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "paraphrase()", 12, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v9 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = type metadata accessor for ConversationParaphraseResult(0);
  *v5 = v0;
  v5[1] = UndoCommand.execute();
  v7 = v0[2];

  return v9(v7, &async function pointer to closure #1 in RemoteConversationClient.paraphrase(), 0, v6, v3, v4);
}

uint64_t closure #1 in RemoteConversationClient.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.paraphrase(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.paraphrase()()
{
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.paraphrase();
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for ConversationParaphraseResult(0);
  *v3 = v0;
  v3[1] = closure #1 in RemoteConversationClient.paraphrase();
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v2, v4);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.paraphrase(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in RemoteConversationClient.paraphrase()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMd, &_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.paraphrase();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_127;
  v11 = _Block_copy(aBlock);

  [a2 paraphraseWithReply_];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.paraphrase()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for ConversationParaphraseResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg + 8);
  if (v8)
  {
    *v7 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg);
    v7[1] = v8;
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase, v4, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v9 = type metadata accessor for ActionParaphrase();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (v11(v4, 1, v9) == 1)
    {
      static ActionParaphrase.noParaphrase()();
      if (v11(v4, 1, v9) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      }
    }

    else
    {
      (*(v10 + 32))(v7, v4, v9);
    }
  }

  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMd, &_sScCy14SiriKitRuntime28ConversationParaphraseResultOs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.commit(bridge:), v3, 0);
}

uint64_t RemoteConversationClient.commit(bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  v11 = *(v0 + 24);
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "commit(bridge:)", 15, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = v11;
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v12 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  v8 = type metadata accessor for ConversationCommitResult(0);
  *v7 = v0;
  v7[1] = RemoteConversationClient.commit(bridge:);
  v9 = *(v0 + 16);

  return v12(v9, &async function pointer to partial apply for closure #1 in RemoteConversationClient.commit(bridge:), v5, v8, v3, v4);
}

{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t closure #1 in RemoteConversationClient.drainAsyncWork()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.drainAsyncWork(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.drainAsyncWork()()
{
  v15 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = closure #1 in RemoteConversationClient.reset();
    v5 = v0[2];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD000000000000010, 0x80000001DCA81470, partial apply for closure #1 in closure #1 in RemoteConversationClient.drainAsyncWork(), v3, v6);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001DCA81470, &v14);
      _os_log_impl(&dword_1DC659000, v8, v9, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.flexibleExecutionSupportOptions(), v1, 0);
}

uint64_t RemoteConversationClient.flexibleExecutionSupportOptions()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "flexibleExecutionSupportOptions()", 33, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v9 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = type metadata accessor for FlexibleExecutionSupportOptions();
  v0[8] = v6;
  *v5 = v0;
  v5[1] = RemoteConversationClient.flexibleExecutionSupportOptions();
  v7 = v0[5];

  return v9(v7, &async function pointer to closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions(), 0, v6, v3, v4);
}

{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = RemoteConversationClient.flexibleExecutionSupportOptions();
  }

  else
  {
    v4 = RemoteConversationClient.flexibleExecutionSupportOptions();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v19 = v0;
  v1 = v0[8];
  v2 = v0[4];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[5], v2, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 48))(v2, 1, v1);
  v5 = v0[4];
  if (v4 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[4], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA857B0, &v18);
      _os_log_impl(&dword_1DC659000, v6, v7, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[2];
    v13 = __swift_project_value_buffer(v10, static FlexibleExecutionSupportOptions.none);
    (*(v3 + 16))(v12, v13, v10);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  else
  {
    v14 = v0[8];
    v15 = v0[2];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[5], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    (*(v3 + 32))(v15, v5, v14);
  }

  v16 = v0[1];

  return v16();
}

{
  v19 = v0;
  (*(*(v0[8] - 8) + 56))(v0[5], 1, 1);
  v1 = v0[8];
  v2 = v0[4];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[5], v2, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 48))(v2, 1, v1);
  v5 = v0[4];
  if (v4 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[4], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA857B0, &v18);
      _os_log_impl(&dword_1DC659000, v6, v7, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[2];
    v13 = __swift_project_value_buffer(v10, static FlexibleExecutionSupportOptions.none);
    (*(v3 + 16))(v12, v13, v10);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  else
  {
    v14 = v0[8];
    v15 = v0[2];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[5], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    (*(v3 + 32))(v15, v5, v14);
  }

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()()
{
  v19 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain_n();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *(v4 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[7] = v5;
    v6 = type metadata accessor for FlexibleExecutionSupportOptions();
    *v5 = v0;
    v5[1] = closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
    v7 = v0[2];

    return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v4, v6);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA857B0, &v18);
      _os_log_impl(&dword_1DC659000, v9, v10, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v13 = v0[2];
    v14 = type metadata accessor for FlexibleExecutionSupportOptions();
    v15 = __swift_project_value_buffer(v14, static FlexibleExecutionSupportOptions.none);
    (*(*(v14 - 8) + 16))(v13, v15, v14);
    v16 = v0[1];

    return v16();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
  }

  else
  {

    v2 = closure #1 in RemoteConversationClient.warmup(refId:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMd, &_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_91;
  v11 = _Block_copy(aBlock);

  [a2 flexibleExecutionSupportOptionsWithReply_];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(void *a1)
{
  v2 = type metadata accessor for FlexibleExecutionSupportOptions();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMd, &_sScCy11SiriKitFlow31FlexibleExecutionSupportOptionsVs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t RemoteConversationClient.isCorrectable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.isCorrectable(), v0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "isCorrectable()", 15, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = RemoteConversationClient.isCorrectable();
  v6 = MEMORY[0x1E69E6370];

  return v8(v0 + 5, &async function pointer to closure #1 in RemoteConversationClient.isCorrectable(), 0, v6, v3, v4);
}

{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = RemoteConversationClient.isCorrectable();
  }

  else
  {
    v4 = RemoteConversationClient.isCorrectable();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t RemoteConversationClient.isCorrectable()(uint64_t a1)
{
  v10 = v1;
  v2 = *(v1 + 40);
  if (v2 == 2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636572726F437369, 0xEF2928656C626174, &v9);
      _os_log_impl(&dword_1DC659000, v3, v4, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  v7 = *(v1 + 8);

  return v7(v2 & 1);
}

{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636572726F437369, 0xEF2928656C626174, &v8);
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return false.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(0);
}

uint64_t closure #1 in RemoteConversationClient.isCorrectable()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.isCorrectable(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.isCorrectable()()
{
  v15 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = closure #1 in RemoteConversationClient.reset();
    v5 = v0[2];
    v6 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x636572726F437369, 0xEF2928656C626174, partial apply for closure #1 in closure #1 in RemoteConversationClient.isCorrectable(), v3, v6);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636572726F437369, 0xEF2928656C626174, &v14);
      _os_log_impl(&dword_1DC659000, v8, v9, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    *v0[2] = 0;
    v12 = v0[1];

    return v12();
  }
}

uint64_t RemoteConversationClient.invalidate()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.invalidate(), v0, 0);
}

{
  v1 = v0[5];
  v2 = v1[19];
  v0[6] = v2;
  v3 = v1[20];
  v0[7] = v3;
  v0[8] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v5 = *(v3 + 24);
  v4 = v3 + 24;
  v0[9] = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[10] = v4 & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.invalidate(), v6, 0);
}

{
  v1 = (*(v0 + 72))(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t RemoteConversationClient.description.getter()
{
  _StringGuts.grow(_:)(17);

  strcpy(v2, "FlowExtension(");
  HIBYTE(v2[1]) = -18;
  MEMORY[0x1E12A1580](*(v0 + 112), *(v0 + 120));
  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v2[0];
}

uint64_t static RemoteConversationClient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void *RemoteConversationClient.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RemoteConversationClient(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RemoteConversationClient()
{
  v1 = *v0;
  _StringGuts.grow(_:)(17);

  strcpy(v3, "FlowExtension(");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x1E12A1580](*(v1 + 112), *(v1 + 120));
  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v3[0];
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RemoteConversationClient(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 112) == *(*a2 + 112) && *(*a1 + 120) == *(*a2 + 120))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized RemoteConversationClient.__allocating_init(identifier:remoteConversationXPCProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  type metadata accessor for RemoteConversationClient();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 184) = 2;
  *(v11 + 112) = a1;
  *(v11 + 120) = a2;
  outlined init with take of NSExtensionProtocol(&v13, v11 + 128);
  return v11;
}

uint64_t partial apply for closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for Input() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.accept(input:speechData:)(a1, a2, a3, v3 + v9, v10);
}

uint64_t dispatch thunk of RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of RemoteConversationClient.cancel(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t dispatch thunk of RemoteConversationClient.reset()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v4();
}

uint64_t dispatch thunk of RemoteConversationClient.ensureReady()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v4();
}

uint64_t dispatch thunk of RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.accept(input:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 240) + **(*v3 + 240));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 248) + **(*v2 + 248));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of RemoteConversationClient.paraphrase()(uint64_t a1)
{
  v6 = (*(*v1 + 256) + **(*v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t dispatch thunk of RemoteConversationClient.commit(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 264) + **(*v3 + 264));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteConversationClient.isEmpty()()
{
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v4();
}

uint64_t dispatch thunk of RemoteConversationClient.drainAsyncWork()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v4();
}

uint64_t dispatch thunk of RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1)
{
  v6 = (*(*v1 + 288) + **(*v1 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t dispatch thunk of RemoteConversationClient.isCorrectable()()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v4();
}

uint64_t dispatch thunk of RemoteConversationClient.invalidate()()
{
  v4 = (*(*v0 + 304) + **(*v0 + 304));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of RemoteConversationClient.invalidate();

  return v4();
}

uint64_t dispatch thunk of RemoteConversationClient.invalidate()(char a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1 & 1);
}

uint64_t objectdestroy_107Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Input() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in RemoteConversationClient.accept(input:speechData:)(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

Swift::Int RemoteConversationConnectionInvalidationResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult()
{
  result = lazy protocol witness table cache variable for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult;
  if (!lazy protocol witness table cache variable for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteConversationConnectionInvalidationResult and conformance RemoteConversationConnectionInvalidationResult);
  }

  return result;
}

uint64_t dispatch thunk of RemoteConversationConnectionProviding.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of RemoteConversationConnectionProviding.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF14SiriKitRuntime24RemoteConversationClientCSg_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}