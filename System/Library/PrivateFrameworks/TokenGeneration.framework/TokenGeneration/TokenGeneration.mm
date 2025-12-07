uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t TokenGenerator.init(configuration:)(__int128 *a1)
{
  v2 = a1[3];
  v3 = a1[1];
  v17 = a1[2];
  v18 = v2;
  v4 = a1[3];
  v19 = a1[4];
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v13[1] = v3;
  v13[2] = v17;
  v6 = a1[4];
  v13[3] = v4;
  v13[4] = v6;
  v20 = *(a1 + 80);
  v14 = *(a1 + 80);
  v13[0] = v15;
  outlined init with copy of SessionConfiguration(&v15, v12);
  v7 = specialized ModelManagerSession.init(configuration:)(v13);
  *(v1 + 128) = &type metadata for ModelManagerSession;
  *(v1 + 136) = &protocol witness table for ModelManagerSession;
  *(v1 + 104) = v7;
  v8 = v18;
  *(v1 + 48) = v17;
  *(v1 + 64) = v8;
  *(v1 + 80) = v19;
  v9 = v20;
  *(v1 + 96) = v20;
  v10 = v16;
  *(v1 + 16) = v15;
  *(v1 + 32) = v10;
  if (v9 == 1 && __PAIR128__(0x80000001ABA42A70, 0xD00000000000001ALL) != v17)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  type metadata accessor for EventReporter();
  swift_allocObject();
  LOBYTE(v13[0]) = 1;
  *(v1 + 144) = EventReporter.init(userIdentifier:reportToBiome:)();
  return v1;
}

uint64_t specialized ModelManagerSession.init(configuration:)(uint64_t *a1)
{
  v158 = type metadata accessor for Version();
  v157 = *(v158 - 1);
  MEMORY[0x1EEE9AC00](v158);
  v163 = &v133 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Insecure.MD5();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Insecure.MD5Digest();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v155 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v156 = &v133 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v133 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v133 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v148 = &v133 - v14;
  v15 = type metadata accessor for XPCCodableObject();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for CustomAssetConfiguration();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v140 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v137 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v138 = &v133 - v23;
  v24 = type metadata accessor for ModelBundle();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v133 - v28;
  v176 = type metadata accessor for URL();
  v30 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v144 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v133 - v35;
  v37 = a1[1];
  v162 = *a1;
  v38 = a1[2];
  v39 = a1[5];
  v160 = a1[4];
  v40 = a1[7];
  v147 = a1[6];
  v169 = v40;
  v41 = a1[9];
  v159 = a1[8];
  v161 = v41;
  v42 = *(v38 + 16);
  v175 = v30;
  v166 = v37;
  v167 = v39;
  v168 = v38;
  v164 = v25;
  if (v42)
  {
    v178 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v43 = v178;
    v44 = v25 + 16;
    v45 = *(v25 + 16);
    v46 = v38 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v172 = *(v44 + 56);
    v173 = v45;
    v174 = v44;
    v47 = (v44 - 8);
    v171 = (v30 + 32);
    do
    {
      v173(v29, v46, v24);
      ModelBundle.resourceURI.getter();
      v48 = v24;
      (*v47)(v29, v24);
      v178 = v43;
      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v43 = v178;
      }

      *(v43 + 16) = v50 + 1;
      (v175[4])(v43 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + v175[9] * v50, v36, v176);
      v46 += v172;
      --v42;
      v24 = v48;
    }

    while (v42);
    v172 = v43;
    v25 = v164;
  }

  else
  {
    v172 = MEMORY[0x1E69E7CC0];
  }

  v51 = v165;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Log.inference);
  v53 = v172;

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v168;
  if (v56)
  {
    LODWORD(v171) = v55;
    v58 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v178 = v134;
    v135 = v58;
    *v58 = 136315138;
    v59 = *(v53 + 16);
    v60 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v133 = v54;
      v141 = v24;
      v177 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
      v60 = v177;
      v61 = v175[2];
      v62 = v53 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
      v173 = v175[9];
      v174 = v61;
      v63 = (v175 + 1);
      do
      {
        v64 = v170;
        v65 = v176;
        v174(v170, v62, v176);
        v66 = URL.absoluteString.getter();
        v68 = v67;
        (*v63)(v64, v65);
        v177 = v60;
        v70 = *(v60 + 16);
        v69 = *(v60 + 24);
        if (v70 >= v69 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v60 = v177;
        }

        *(v60 + 16) = v70 + 1;
        v71 = v60 + 16 * v70;
        *(v71 + 32) = v66;
        *(v71 + 40) = v68;
        v62 += v173;
        --v59;
      }

      while (v59);
      v51 = v165;
      v57 = v168;
      v24 = v141;
      v25 = v164;
      v54 = v133;
    }

    v177 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v72 = BidirectionalCollection<>.joined(separator:)();
    v74 = v73;

    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v178);

    v76 = v135;
    *(v135 + 1) = v75;
    _os_log_impl(&dword_1AB828000, v54, v171, "Creating ModelManagerSession with asset bundle URIs: %s", v76, 0xCu);
    v77 = v134;
    __swift_destroy_boxed_opaque_existential_0(v134);
    MEMORY[0x1AC5A6CD0](v77, -1, -1);
    MEMORY[0x1AC5A6CD0](v76, -1, -1);
  }

  if (!*(v57 + 16))
  {
    goto LABEL_22;
  }

  (*(v25 + 16))(v51, v57 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24);
  if ((ModelBundle.isFileBased.getter() & 1) == 0)
  {
    (*(v25 + 8))(v51, v24);
LABEL_22:
    if (v169)
    {
      v79 = v169;
      swift_bridgeObjectRetain_n();

      v80 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v147, v79);
      v82 = v81;
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      v83 = v149;
      v84 = v151;
      dispatch thunk of HashFunction.init()();
      outlined copy of Data._Representation(v80, v82);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v80, v82, v83);
      outlined consume of Data._Representation(v80, v82);
      v85 = v152;
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v80, v82);
      (*(v150 + 8))(v83, v84);
      v86 = type metadata accessor for UUID();
      v87 = v155;
      Insecure.MD5Digest.withUnsafeBytes<A>(_:)();
      (*(v153 + 8))(v85, v154);

      v88 = *(v86 - 8);
      (*(v88 + 56))(v87, 0, 1, v86);
      v89 = v156;
      (*(v88 + 32))(v156, v87, v86);
    }

    else
    {
      v86 = type metadata accessor for UUID();
      v90 = *(v86 - 8);
      v91 = v155;
      (*(v90 + 56))(v155, 1, 1, v86);

      v89 = v156;
      UUID.init()();
      if ((*(v90 + 48))(v91, 1, v86) != 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    v92 = v158;
    v93 = v157;
    type metadata accessor for Session();
    type metadata accessor for UUID();
    (*(*(v86 - 8) + 56))(v89, 0, 1, v86);
    if (one-time initialization token for currentInterfaceVersion != -1)
    {
      swift_once();
    }

    v94 = __swift_project_value_buffer(v92, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
    v93[2](v163, v94, v92);
    v95 = Session.__allocating_init(assetBundleURIs:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)();

    return v95;
  }

  ModelBundle.resourceURI.getter();
  type metadata accessor for FoundationModelsExtensionInfo();
  swift_allocObject();
  v78 = FoundationModelsExtensionInfo.init(fileURL:)();
  v141 = v24;
  v96 = v78;
  v173 = 0;
  v97 = v170;
  ModelBundle.resourceURI.getter();
  URL.lastPathComponent.getter();
  v171 = v175[1];
  v171(v97, v176);
  v174 = v96;
  FoundationModelsExtensionInfo.toXPCObject()();
  v98 = v138;
  CustomAssetConfiguration.init(instanceID:templateID:assetData:)();
  v157 = *(v145 + 16);
  (v157)(v137, v98, v146);
  v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v100 = v99;
  v102 = v99[2];
  v101 = v99[3];
  if (v102 >= v101 >> 1)
  {
    v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v99);
  }

  v100[2] = v102 + 1;
  v103 = *(v145 + 32);
  v156 = ((*(v145 + 80) + 32) & ~*(v145 + 80));
  v155 = *(v145 + 72);
  v104 = v146;
  v158 = v103;
  v103(&v156[v100 + v155 * v102], v137, v146);
  v105 = v170;
  ModelBundle.resourceURI.getter();
  URL.lastPathComponent.getter();
  v106 = v105;
  v107 = v100;
  v171(v106, v176);
  FoundationModelsExtensionInfo.toXPCObject()();
  v108 = v139;
  CustomAssetConfiguration.init(instanceID:templateID:assetData:)();
  (v157)(v140, v108, v104);
  v110 = v100[2];
  v109 = v100[3];
  if (v110 >= v109 >> 1)
  {
    v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v100);
  }

  v111 = v164;

  v112 = *(v145 + 8);
  v113 = v146;
  v112(v139, v146);
  v112(v138, v113);
  v107[2] = v110 + 1;
  v158(&v156[v107 + v110 * v155], v140, v113);
  v114 = v141;
  v115 = v175;
  v175 = v107;
  v116 = v148;
  URL.init(string:)();
  result = (v115[6])(v116, 1, v176);
  if (result != 1)
  {

    if (v169)
    {
      v118 = v169;
      swift_bridgeObjectRetain_n();

      v119 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v147, v118);
      v121 = v120;
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      v122 = v149;
      v123 = v151;
      dispatch thunk of HashFunction.init()();
      outlined copy of Data._Representation(v119, v121);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v119, v121, v122);
      outlined consume of Data._Representation(v119, v121);
      v124 = v152;
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v119, v121);
      v125 = v122;
      v114 = v141;
      (*(v150 + 8))(v125, v123);
      v126 = type metadata accessor for UUID();
      v127 = v142;
      Insecure.MD5Digest.withUnsafeBytes<A>(_:)();
      (*(v153 + 8))(v124, v154);

      v128 = *(v126 - 8);
      (*(v128 + 56))(v127, 0, 1, v126);
      v129 = v143;
      v130 = v127;
      v111 = v164;
      (*(v128 + 32))(v143, v130, v126);
    }

    else
    {
      v126 = type metadata accessor for UUID();
      v131 = *(v126 - 8);
      v132 = v142;
      (*(v131 + 56))(v142, 1, 1, v126);

      v129 = v143;
      UUID.init()();
      if ((*(v131 + 48))(v132, 1, v126) != 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    type metadata accessor for Session();
    type metadata accessor for UUID();
    (*(*(v126 - 8) + 56))(v129, 0, 1, v126);
    Version.init(major:minor:patch:)();
    v95 = Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:customAssetConfigurations:)();

    (*(v111 + 8))(v165, v114);
    return v95;
  }

  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMR, type metadata accessor for PromptCompletion.Segment);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VGMR, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0VGMR, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMR, type metadata accessor for Prompt.TokenGenerationNonStringContent);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMR, MEMORY[0x1E69C61C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDescriptionEnvelopeVGMR, type metadata accessor for ToolDescriptionEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMR, type metadata accessor for ToolDescription);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7ContentOGMR, type metadata accessor for PromptCompletion.Content);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV16ModelInformationV5AssetVGMR, MEMORY[0x1E69C64B0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV9CandidateVGMR, MEMORY[0x1E69C64E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryV_AG11ProbabilityOtGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryV_AG11ProbabilityOtGMR, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV10AnnotationVGMR, MEMORY[0x1E69C6450]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMR, type metadata accessor for PromptCompletion.Annotation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation16DocumentResourceVGMR, MEMORY[0x1E69A1500]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, MEMORY[0x1E69DA700]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, MEMORY[0x1E69DA828]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR, type metadata accessor for DocumentResourceEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OtGMd, &_ss23_ContiguousArrayStorageCySS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OtGMR, &_sSS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OtMd, &_sSS_15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOtGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOtGMR, &_s15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMR, MEMORY[0x1E69DA810]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, MEMORY[0x1E69DA800]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V8ToolCallVGMR, MEMORY[0x1E69C62C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit17InferenceResponseV7SegmentVGMR, MEMORY[0x1E69C64D8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR, type metadata accessor for AnnotationEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0OGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0OGMR, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMR, MEMORY[0x1E69A0DF0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR, MEMORY[0x1E69C63A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0VGMR, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMR, MEMORY[0x1E69DA8B8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGGMd, &_ss23_ContiguousArrayStorageCyScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGGMR, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCyScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GGMd, &_ss23_ContiguousArrayStorageCyScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GGMR, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs12ContinuationVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeVGMR, MEMORY[0x1E69A0E80]);
  *v3 = result;
  return result;
}

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
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR, &type metadata for ModelInformation.Asset);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR, &type metadata for PromptCompletion.Candidate);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0VGMR, &type metadata for ModelInformationEnvelope.AssetEnvelope);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR, &type metadata for PromptCompletionEnvelope.CandidateEnvelope);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall TokenGenerator.prewarm()()
{
  v2[0] = 0x746C7561666564;
  v2[1] = 0xE700000000000000;
  v1 = v2;
  TokenGenerator.prewarm(usesGuidedGeneration:urgency:)(0, *(&v0 - 1));
}

Swift::Void __swiftcall TokenGenerator.prewarm(usesGuidedGeneration:urgency:)(Swift::Bool usesGuidedGeneration, TokenGeneration::PrewarmUrgency urgency)
{
  v3 = v2;
  v6 = *urgency.rawValue._countAndFlagsBits;
  v5 = *(urgency.rawValue._countAndFlagsBits + 8);
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.generator);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v19);
    _os_log_impl(&dword_1AB828000, v8, v9, "Requesting prewarm with urgency: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1AC5A6CD0](v11, -1, -1);
    MEMORY[0x1AC5A6CD0](v10, -1, -1);
  }

  v12 = v3[16];
  v13 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  v15 = inited;
  strcpy((inited + 32), "prewarmUrgency");
  *(inited + 47) = -18;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 64) = 0xD000000000000025;
  v16 = 1702195828;
  if (!usesGuidedGeneration)
  {
    v16 = 0x65736C6166;
  }

  v17 = 0xE500000000000000;
  if (usesGuidedGeneration)
  {
    v17 = 0xE400000000000000;
  }

  *(inited + 16) = xmmword_1ABA1D890;
  *(inited + 72) = 0x80000001ABA414E0;
  *(inited + 80) = v16;
  *(inited + 88) = v17;

  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  (*(v13 + 16))(v18, v12, v13);
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t TokenGenerator.__deallocating_deinit()
{
  TokenGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t *TokenGenerator.deinit()
{
  v1 = v0;
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.generator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AB828000, v3, v4, "Deinitializing and cancelling session", v5, 2u);
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
  }

  outlined init with copy of PromptCompletionEvent((v1 + 13), v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 24))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v9);
  outlined consume of SessionConfiguration?(v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9]);
  __swift_destroy_boxed_opaque_existential_0(v1 + 13);

  return v1;
}

uint64_t outlined init with copy of PromptCompletionEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void outlined consume of SessionConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
  }
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateTextDelta(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

void protocol witness for InferenceSessionProtocol.requestPrewarm(metadata:) in conformance ModelManagerSession(Swift::OpaquePointer a1)
{
  Session.requestPrewarm(metadata:)(a1);
  if (v1)
  {
    specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v1);
    swift_willThrow();
  }
}

uint64_t getEnumTagSinglePayload for FinishReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateTextDelta(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope and conformance PromptCompletionEnvelope.SegmentEnvelope, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope, &protocol conformance descriptor for PromptCompletionEnvelope.SegmentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope and conformance PromptCompletionEnvelope.SegmentEnvelope, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope, &protocol conformance descriptor for PromptCompletionEnvelope.SegmentEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t specialized PromptCompletionEnvelope.CandidateEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v27 = 0;
  lazy protocol witness table accessor for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  v27 = 1;
  lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v25;
  v27 = 2;
  lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v25;
  v27 = 3;
  lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v25;
  v24 = v26;
  v27 = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v25;
  v19 = v26;
  v20 = v25;
  v11 = v22;

  v12 = v23;

  v13 = v21;
  v14 = v24;
  outlined copy of FinishReason(v21, v24);
  v15 = v10;
  v16 = v19;
  outlined copy of Data._Representation(v15, v19);
  __swift_destroy_boxed_opaque_existential_0(a1);

  outlined consume of FinishReason(v13, v14);
  v17 = v20;
  result = outlined consume of Data._Representation(v20, v16);
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v17;
  a2[6] = v16;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionEnvelope.CandidateEnvelope@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptCompletionEnvelope.CandidateEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t PromptCompletionEnvelope.SegmentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMR);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v54 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMR);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v72 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMR);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v54 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMR);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v68 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  MEMORY[0x1EEE9AC00](v68);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();
  v27 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v55 = v22;
    v56 = v19;
    v57 = v16;
    v58 = v13;
    v29 = v71;
    v28 = v72;
    v75 = v25;
    v31 = v69;
    v30 = v70;
    v33 = v73;
    v32 = v74;
    v34 = KeyedDecodingContainer.allKeys.getter();
    v35 = (2 * *(v34 + 16)) | 1;
    v76[5] = v34;
    v76[6] = v34 + 32;
    v77 = 0;
    v78 = v35;
    v36 = specialized Collection<>.popFirst()();
    if (v36 == 4 || v77 != v78 >> 1)
    {
      v41 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v30;
      v44 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v44 = v68;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v41 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v31 + 8))(v11, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 1u)
      {
        if (v36 == 2)
        {
          LOBYTE(v76[0]) = 2;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();
          v45 = v28;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
          v46 = v63;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v64 + 8))(v45, v46);
          (*(v31 + 8))(v11, v30);
          swift_unknownObjectRelease();
          v51 = v57;
          *v57 = *v76;
        }

        else
        {
          LOBYTE(v76[0]) = 3;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();
          v48 = v33;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for FileContentEnvelope(0);
          lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope, &protocol conformance descriptor for FileContentEnvelope);
          v51 = v58;
          v49 = v65;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v66 + 8))(v48, v49);
          (*(v31 + 8))(v11, v30);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v53 = v75;
        outlined init with take of DocumentRegistrationEnvelope(v51, v75, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
        v37 = v32;
      }

      else
      {
        v37 = v32;
        if (v36)
        {
          LOBYTE(v76[0]) = 1;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
          v47 = v62;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v61 + 8))(v29, v47);
          (*(v31 + 8))(v11, v30);
          swift_unknownObjectRelease();
          v40 = v56;
          *v56 = *v76;
        }

        else
        {
          LOBYTE(v76[0]) = 0;
          lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();
          v38 = v67;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type TextContentEnvelope and conformance TextContentEnvelope();
          v39 = v60;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v59 + 8))(v38, v39);
          (*(v31 + 8))(v11, v30);
          swift_unknownObjectRelease();
          v40 = v55;
          *v55 = v76[0];
          *(v40 + 1) = *&v76[1];
          *(v40 + 3) = *&v76[3];
        }

        swift_storeEnumTagMultiPayload();
        v52 = v40;
        v53 = v75;
        outlined init with take of DocumentRegistrationEnvelope(v52, v75, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      }

      outlined init with take of DocumentRegistrationEnvelope(v53, v37, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v79);
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionEnvelope.SegmentEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateToolCallDelta(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateToolCallDelta(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t PromptCompletionEnvelope.CandidateEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV09CandidateH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v12 = *v3;
  v11[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV07SegmentE033_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  lazy protocol witness table accessor for type [PromptCompletionEnvelope.SegmentEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 8);
    v11[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v12 = *(v3 + 16);
    v11[0] = 2;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v11[0] = 3;
    lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 40);
    v13 = v12;
    v11[23] = 4;
    outlined init with copy of Data(&v13, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x73746E656D676573;
  v3 = 0x6974617265646F6DLL;
  v4 = 0x65526873696E6966;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6C61436C6F6F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized PromptCompletionEnvelope.SegmentEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys()
{
  v1 = 1954047348;
  v2 = 0x6F69647561;
  if (*v0 != 2)
  {
    v2 = 1701603686;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type TextContentEnvelope and conformance TextContentEnvelope()
{
  result = lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope and conformance TextContentEnvelope);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for CachePolicy(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CachePolicy(unsigned int *a1, int a2)
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

uint64_t specialized TextContentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v19) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v17 = a2;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    v21 = 1;
    lazy protocol witness table accessor for type [AnnotationEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v21 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v14 = v20;
    outlined consume of Data?(0, 0xF000000000000000);

    outlined copy of Data?(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = outlined consume of Data?(v13, v14);
    v16 = v17;
    *v17 = v18;
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v13;
    v16[4] = v14;
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance TextContentEnvelope@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized TextContentEnvelope.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextContentEnvelope.CodingKeys()
{
  v1 = 0x697461746F6E6E61;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

unint64_t lazy protocol witness table accessor for type [AnnotationEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope, &protocol conformance descriptor for AnnotationEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope, &protocol conformance descriptor for AnnotationEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnnotationEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

void outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(result, a2);
  }
}

uint64_t outlined init with take of DocumentRegistrationEnvelope(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope()
{
  result = lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope;
  if (!lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModerationEnvelope and conformance ModerationEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope()
{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope and conformance FinishReasonEnvelope);
  }

  return result;
}

void *specialized FinishReasonEnvelope.init(from:)(void *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMR);
  v34 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v33 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMR);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v33 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMR);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMR);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = a1[3];
  v44 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();
  v15 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v8;
    v33 = v6;
    v17 = v5;
    v18 = v41;
    v19 = v42;
    v43 = v10;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v45 = v20;
    v46 = v20 + 32;
    v47 = 0;
    v48 = v21;
    v22 = specialized Collection<>.popFirst()();
    v14 = v12;
    if (v22 == 4 || v47 != v48 >> 1)
    {
      v23 = v9;
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v26 = &unk_1F206CD18;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v43 + 8))(v12, v23);
      swift_unknownObjectRelease();
    }

    else if (v22 > 1u)
    {
      if (v22 == 2)
      {
        v49 = 2;
        lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v43;
        (*(v39 + 8))(v18, v37);
        (*(v28 + 8))(v12, v9);
      }

      else
      {
        v49 = 3;
        lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v29 = v43;
        (*(v34 + 8))(v19, v40);
        (*(v29 + 8))(v12, v9);
      }

      swift_unknownObjectRelease();
      v14 = 0;
    }

    else if (v22)
    {
      v49 = 1;
      lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v9;
      v31 = v14;
      v32 = v36;
      v14 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v38 + 8))(v17, v32);
      (*(v43 + 8))(v31, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0;
      lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v35 + 8))(v16, v33);
      (*(v43 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v44);
  return v14;
}

void *protocol witness for Decodable.init(from:) in conformance FinishReasonEnvelope@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized FinishReasonEnvelope.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FinishReasonEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized FinishReasonEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t specialized FinishReasonEnvelope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001ABA41D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001ABA41D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001ABA41DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5464656B6F766E69 && a2 == 0xEB000000006C6F6FLL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationShapeEnum(unsigned __int8 *a1, unsigned int a2)
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

unint64_t lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys()
{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys;
  if (!lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FinishReasonEnvelope.CodingKeys()
{
  v1 = 0x5464656B6F766E69;
  if (*v0 == 2)
  {
    v1 = 0xD00000000000001CLL;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationShapeEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined copy of FinishReason(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t outlined consume of FinishReason(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t PromptCompletionEnvelope.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v74);
  }

  v10 = v6;
  v37 = a2;
  LOBYTE(v38) = 0;
  lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v44;
  v35 = v43;
  v36 = v45;
  LOBYTE(v38) = 1;
  lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v11;
  v34 = v43;
  LOBYTE(v38) = 2;
  lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v44;
  v32 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  LOBYTE(v38) = 3;
  lazy protocol witness table accessor for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v12;
  v31 = v43;
  LOBYTE(v38) = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v43;
  v29 = v44;
  v59 = 5;
  lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v5);
  v71 = v64;
  v72 = v65;
  v67 = v60;
  v68 = v61;
  v69 = v62;
  v70 = v63;
  *(&v42[2] + 8) = v62;
  v73 = v66;
  v15 = v35;
  v14 = v36;
  v16 = v34;
  *&v38 = v35;
  *(&v38 + 1) = v33;
  *&v39 = v36;
  *(&v39 + 1) = v34;
  v17 = v31;
  *&v40 = v32;
  *(&v40 + 1) = v30;
  *&v41 = v31;
  *(&v41 + 1) = v13;
  *&v42[0] = v29;
  *(&v42[1] + 8) = v61;
  *(v42 + 8) = v60;
  *(&v42[6] + 1) = v66;
  *(&v42[5] + 8) = v65;
  *(&v42[4] + 8) = v64;
  *(&v42[3] + 8) = v63;
  v18 = v39;
  v19 = v37;
  *v37 = v38;
  v19[1] = v18;
  v20 = v40;
  v21 = v41;
  v22 = v42[1];
  v19[4] = v42[0];
  v19[5] = v22;
  v19[2] = v20;
  v19[3] = v21;
  v23 = v42[2];
  v24 = v42[3];
  v25 = v42[6];
  v19[9] = v42[5];
  v19[10] = v25;
  v26 = v42[4];
  v19[7] = v24;
  v19[8] = v26;
  v19[6] = v23;
  outlined init with copy of PromptCompletionEnvelope(&v38, &v43);
  __swift_destroy_boxed_opaque_existential_0(v74);
  v55 = v70;
  v56 = v71;
  v57 = v72;
  v52 = v67;
  v53 = v68;
  v43 = v15;
  v44 = v33;
  v45 = v14;
  v46 = v16;
  v47 = v32;
  v48 = v30;
  v49 = v17;
  v50 = v13;
  v51 = v29;
  v58 = v73;
  v54 = v69;
  return outlined destroy of PromptCompletionEnvelope(&v43);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x666E496C65646F6DLL;
  v3 = 0x74616469646E6163;
  v4 = 0x617461646174656DLL;
  if (v1 != 4)
  {
    v4 = 0x64657265646E6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6974617265646F6DLL;
  if (v1 != 1)
  {
    v5 = 0x6567617375;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t specialized PromptRenderingEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38) = 0;
  lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v45;
  v37 = v46;
  v10 = v47;
  v36 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(v38) = 1;
  lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v10;
  v31 = v9;
  v35 = v45;
  LOBYTE(v45) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v12;
  LOBYTE(v45) = 3;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  LOBYTE(v38) = 4;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v38) = 5;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v11;
  v14 = v45;
  v58 = 6;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v38 = v31;
  *(&v38 + 1) = v37;
  *&v39 = v30;
  v18 = v14;
  v27 = v14;
  v19 = v36;
  *(&v39 + 1) = v36;
  v20 = v35;
  *&v40 = v35;
  v21 = v34;
  *(&v40 + 1) = v28;
  *&v41 = v34;
  v22 = v33;
  *(&v41 + 1) = v29;
  *&v42 = v33;
  *(&v42 + 1) = v32;
  *&v43 = v18;
  *(&v43 + 1) = v15;
  v44 = v17;
  outlined init with copy of PromptRenderingEnvelope(&v38, &v45);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v45 = v31;
  v46 = v37;
  v47 = v30;
  v48 = v19;
  v49 = v20;
  v50 = v28;
  v51 = v21;
  v52 = v29;
  v53 = v22;
  v54 = v32;
  v55 = v27;
  v56 = v15;
  v57 = v17;
  result = outlined destroy of PromptRenderingEnvelope(&v45);
  v24 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v24;
  *(a2 + 96) = v44;
  v25 = v39;
  *a2 = v38;
  *(a2 + 16) = v25;
  v26 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v26;
  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance PromptRenderingEnvelope@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PromptRenderingEnvelope.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptRenderingEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6F666E4972657375;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6C616E696769726FLL;
  if (v1 != 3)
  {
    v4 = 0x7344496E656B6F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x73746E656D676573;
  if (v1 != 1)
  {
    v5 = 0x64657265646E6572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaTypeEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t specialized PromptRenderingEnvelope.SourceEnvelope.init(from:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptRenderingEnvelope.SourceEnvelope@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = specialized PromptRenderingEnvelope.SourceEnvelope.init(from:)(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void *destructiveInjectEnumTag for ClassificationParameters.ThresholdConfiguration(void *result, int a2)
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

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageEmbeddingEncoding(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for PromptRenderingEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for ClassificationParameters.ThresholdConfiguration(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CompletePromptResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CompletePromptResponse(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v14 = v24;
  v15 = v6;
  v39 = 0;
  lazy protocol witness table accessor for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope();
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v36;
  v12[8] = v35;
  v12[9] = v17;
  v12[10] = v37;
  v18 = v32;
  v12[4] = v31;
  v12[5] = v18;
  v19 = v34;
  v12[6] = v33;
  v12[7] = v19;
  v20 = v28;
  *v12 = v27;
  v12[1] = v20;
  v21 = v30;
  v12[2] = v29;
  v12[3] = v21;
  type metadata accessor for InferenceResponseEnvelope();
  v38 = 1;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type InferenceResponseEnvelope and conformance InferenceResponseEnvelope, MEMORY[0x1E69C6508], MEMORY[0x1E69C6518]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v9, v16);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v15, v12 + *(v10 + 20), &_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  outlined init with copy of DocumentResourceEnvelope(v12, v23, type metadata accessor for CompletePromptResponse);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for CompletePromptResponse);
}

uint64_t InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)()
{
  v1 = v0[22];
  v2 = v0[23];
  static WireFormat.decode<A>(_:from:)(v0[8], v2, v1, v0[8], v0[10]);
  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for OneShotRequest(0);
  lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(&lazy protocol witness table cache variable for type OneShotRequest and conformance OneShotRequest, type metadata accessor for OneShotRequest, &protocol conformance descriptor for OneShotRequest);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v17 = v0[9];
  v0[18] = v5;
  v0[19] = v1;
  v6 = v1;
  v7 = v5;
  OneShotRequest.xpcData.getter(v2);
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
  (*(v4 + 8))(v2, v3);
  v16 = (*(v17 + 40) + **(v17 + 40));
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:);
  v9 = v0[17];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[3];

  return v16(v14, v13, v6, v7, v9, v11, v12, v10);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:)()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  outlined destroy of ToolType(*(v2 + 600), type metadata accessor for OneShotRequest);
  if (v0)
  {
    v3 = closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  }

  else
  {
    v3 = closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 616);
  v2 = *(v0 + 544);
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 192) = *v1;
  *(v0 + 208) = v4;
  *(v0 + 224) = v3;
  v5 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  *(v0 + 272) = v1[5];
  *(v0 + 288) = v5;
  *(v0 + 240) = v7;
  *(v0 + 256) = v6;
  v8 = v1[10];
  v10 = v1[7];
  v9 = v1[8];
  *(v0 + 336) = v1[9];
  *(v0 + 352) = v8;
  *(v0 + 304) = v10;
  *(v0 + 320) = v9;
  v21 = v1[8];
  v22 = v1[9];
  v23 = v1[10];
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  outlined init with copy of PromptCompletionEnvelope(v0 + 192, v0 + 368);
  PromptCompletionEnvelope.unseal()(v2);
  outlined destroy of ToolType(v1, type metadata accessor for CompletePromptResponse);
  *(v0 + 144) = v21;
  *(v0 + 160) = v22;
  *(v0 + 176) = v23;
  *(v0 + 80) = v17;
  *(v0 + 96) = v18;
  *(v0 + 112) = v19;
  *(v0 + 128) = v20;
  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  *(v0 + 48) = v15;
  *(v0 + 64) = v16;
  outlined destroy of PromptCompletionEnvelope(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[69];
  v4 = *(v3 + 128);
  __swift_project_boxed_opaque_existential_1((v3 + 104), v4);
  outlined init with copy of ToolDescription(v2, v1, type metadata accessor for CompletePromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[78] = v5;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  *v5 = v0;
  v5[1] = closure #2 in TokenGenerator.handleCompletePromptTemplateRequest(request:);
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[73];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[77];

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v11, v10, v9, v7, v8, v6, v4, v6);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventUsage(uint64_t a1, int a2)
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

uint64_t PromptCompletionEnvelope.unseal()@<X0>(uint64_t a1@<X8>)
{
  v166 = a1;
  v2 = type metadata accessor for Prompt.Rendering.Source();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v158[13] = v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for Prompt.ToolCall.Kind();
  v4 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Prompt.ToolCall();
  v202 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v7 = v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for FileContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v184);
  v183 = v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v213 = v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v212);
  v211 = (v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v221);
  v214 = v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v220);
  v14 = (v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = type metadata accessor for AnnotationEnvelope(0);
  v180 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v218 = (v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PromptCompletion.Annotation(0);
  v216 = *(v16 - 8);
  v217 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v194);
  v182 = (v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  v203 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v188 = (v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = v158 - v22;
  v24 = type metadata accessor for PromptCompletion.Segment(0);
  v192 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v207 = (v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v168 = v158 - v28;
  v29 = *v1;
  v30 = v1[1];
  v31 = v1[2];
  v32 = v1[3];
  v27.n128_u64[0] = v1[4];
  v165 = v27;
  v33 = v1[6];
  v164 = v1[5];
  v173 = v33;
  v34 = v1[7];
  v169 = v1[8];
  v35 = v1[10];
  v158[3] = v1[9];
  v159 = v35;
  v36 = v1[12];
  v158[2] = v1[11];
  v158[1] = v36;
  v37 = v1[14];
  v158[12] = v1[13];
  v158[11] = v37;
  v38 = v1[16];
  v158[10] = v1[15];
  v158[9] = v38;
  v39 = v1[18];
  v158[8] = v1[17];
  v158[7] = v39;
  v40 = v1[20];
  v158[6] = v1[19];
  v158[5] = v40;
  v158[4] = v1[21];
  ModelInformationEnvelope.unseal()(v29, v30, v31, v226);
  v163 = v226[0];
  v162 = v226[1];
  v161 = v226[2];
  v167 = v34;
  if (v32)
  {
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(v32);
    if (*(v41 + 16))
    {
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
      v43 = static _DictionaryStorage.allocate(capacity:)();
      v41 = v42;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC8];
    }

    v225 = v43;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v41, 1, &v225);
    v160 = v225;
  }

  else
  {
    v160 = 0;
  }

  v44 = v169;
  v45 = *(v173 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v172 = 0;
    v225 = MEMORY[0x1E69E7CC0];
    v170 = v45;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
    v47 = v173;
    v48 = 0;
    v46 = v225;
    v171 = v173 + 32;
    v197 = (v4 + 104);
    v196 = v202 + 32;
    v195 = *MEMORY[0x1E69DA808];
    v198 = v7;
    v49 = v214;
    v222 = v14;
    v215 = v18;
    v191 = v23;
    while (1)
    {
      if (v48 >= *(v47 + 16))
      {
        goto LABEL_89;
      }

      v178 = v46;
      v176 = v48;
      v50 = (v171 + 56 * v48);
      v51 = *v50;
      v181 = v50[1];
      v52 = v50[2];
      v53 = v50[3];
      v54 = v50[4];
      v55 = v50[5];
      v56 = v50[6];
      v57 = *(v51 + 16);
      v179 = v54;
      v204 = v55;
      v175 = v56;
      v189 = v51;
      v174 = v53;
      v177 = v52;
      if (v57)
      {
        break;
      }

      v107 = v181;

      outlined copy of FinishReason(v53, v54);
      outlined copy of Data._Representation(v55, v56);
      v106 = MEMORY[0x1E69E7CC0];
      v108 = MEMORY[0x1E69E7CC0];
LABEL_36:
      v109 = *(v107 + 16);
      v210 = v108;
      if (v109)
      {
        v224 = v106;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
        v110 = v224;
        v111 = v107 + 48;
        do
        {
          v209 = v109;
          v112 = *(v111 - 8);
          v208 = *(v111 - 16);
          v114 = *(v111 + 32);
          v113 = *(v111 + 40);

          outlined copy of Data?(v114, v113);

          v115 = v200;
          v116 = v198;
          Prompt.ToolCall.Function.init(name:arguments:)();
          (*v197)(v115, v195, v201);
          MEMORY[0x1AC5A36E0](v208, v112, v115);
          outlined copy of Data?(v114, v113);
          Prompt.ToolCall._userInfo.setter();

          outlined consume of Data?(v114, v113);
          v224 = v110;
          v118 = *(v110 + 16);
          v117 = *(v110 + 24);
          if (v118 >= v117 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1);
            v110 = v224;
          }

          *(v110 + 16) = v118 + 1;
          (*(v202 + 32))(v110 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v118, v116, v199);
          v111 += 64;
          v109 = v209 - 1;
        }

        while (v209 != 1);
        v186 = v110;
        v49 = v214;
        v18 = v215;
        v14 = v222;
        v23 = v191;
        v106 = MEMORY[0x1E69E7CC0];
        v54 = v179;
        v55 = v204;
      }

      else
      {
        v186 = v106;
      }

      v119 = v177;
      if (v177)
      {
        v120 = *(v177 + 16);
        if (v120)
        {
          v224 = v106;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 0);
          v121 = v224;
          v209 = v119 + 64;
          v122 = _HashTable.startBucket.getter();
          v123 = 0;
          v187 = v119 + 72;
          v190 = v120;
          while ((v122 & 0x8000000000000000) == 0 && v122 < 1 << *(v119 + 32))
          {
            v125 = v122 >> 6;
            if ((*(v209 + 8 * (v122 >> 6)) & (1 << v122)) == 0)
            {
              goto LABEL_85;
            }

            v205 = *(v119 + 36);
            v126 = *(v119 + 56);
            v127 = (*(v119 + 48) + 16 * v122);
            v128 = v127[1];
            v208 = *v127;
            LODWORD(v206) = *(v126 + v122);
            v224 = v121;
            v130 = *(v121 + 16);
            v129 = *(v121 + 24);

            if (v130 >= v129 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1);
              v121 = v224;
            }

            *(v121 + 16) = v130 + 1;
            v131 = v121 + 24 * v130;
            *(v131 + 32) = v208;
            *(v131 + 40) = v128;
            *(v131 + 48) = v206;
            v124 = 1 << *(v119 + 32);
            if (v122 >= v124)
            {
              goto LABEL_86;
            }

            v132 = *(v209 + 8 * v125);
            if ((v132 & (1 << v122)) == 0)
            {
              goto LABEL_87;
            }

            if (v205 != *(v119 + 36))
            {
              goto LABEL_88;
            }

            v133 = v132 & (-2 << (v122 & 0x3F));
            if (v133)
            {
              v124 = __clz(__rbit64(v133)) | v122 & 0x7FFFFFFFFFFFFFC0;
              v18 = v215;
              v23 = v191;
              v55 = v204;
            }

            else
            {
              v134 = v121;
              v135 = v125 << 6;
              v136 = v125 + 1;
              v137 = (v187 + 8 * v125);
              v18 = v215;
              v23 = v191;
              v55 = v204;
              while (v136 < (v124 + 63) >> 6)
              {
                v139 = *v137++;
                v138 = v139;
                v135 += 64;
                ++v136;
                if (v139)
                {
                  outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v122, v205, 0);
                  v124 = __clz(__rbit64(v138)) + v135;
                  goto LABEL_62;
                }
              }

              outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v122, v205, 0);
LABEL_62:
              v121 = v134;
            }

            ++v123;
            v122 = v124;
            if (v123 == v190)
            {
              v49 = v214;
              v14 = v222;
              v54 = v179;
              goto LABEL_66;
            }
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v121 = v106;
LABEL_66:
        if (*(v121 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
          v140 = static _DictionaryStorage.allocate(capacity:)();
          v54 = v179;
        }

        else
        {
          v140 = MEMORY[0x1E69E7CC8];
        }

        v224 = v140;
        v141 = v172;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v121, 1, &v224);
        if (v141)
        {
          goto LABEL_90;
        }

        v172 = 0;
        v209 = v224;
      }

      else
      {
        v209 = 0;
      }

      v142 = v174;
      if (v54 >= 3)
      {
        v143 = v174;
      }

      else
      {
        v143 = 0;
      }

      outlined copy of FinishReason(v174, v54);
      v144 = v175;
      outlined copy of Data._Representation(v55, v175);

      outlined consume of FinishReason(v142, v54);
      outlined consume of Data._Representation(v55, v144);

      v46 = v178;
      v225 = v178;
      v146 = *(v178 + 16);
      v145 = *(v178 + 24);
      if (v146 >= v145 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1);
        v54 = v179;
        v46 = v225;
      }

      v48 = v176 + 1;
      *(v46 + 16) = v146 + 1;
      v147 = (v46 + 56 * v146);
      v147[4] = v210;
      v147[5] = v186;
      v147[6] = v209;
      v147[7] = v143;
      v147[8] = v54;
      v147[9] = v55;
      v147[10] = v144;
      v47 = v173;
      if (v48 == v170)
      {
        v148 = v168;
        v44 = v169;
        goto LABEL_79;
      }
    }

    outlined copy of FinishReason(v53, v54);
    outlined copy of Data._Representation(v55, v56);
    v224 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
    v58 = v188;
    v59 = 0;
    v210 = v224;
    v206 = v51 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
    v208 = v57;
    while (1)
    {
      if (v59 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_84;
      }

      v60 = *(v203 + 72);
      v209 = v59;
      outlined init with copy of DocumentResourceEnvelope(v206 + v60 * v59, v23, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v23, v58, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          outlined destroy of DocumentResourceEnvelope(v23, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
          v82 = v183;
          outlined init with take of DocumentRegistrationEnvelope(v58, v183, type metadata accessor for FileContentEnvelope);
          v83 = type metadata accessor for URL();
          v84 = v207;
          (*(*(v83 - 8) + 16))(v207, v82, v83);
          v85 = v184[6];
          v86 = (v82 + v184[5]);
          v88 = *v86;
          v87 = v86[1];
          v90 = *(v82 + v85);
          v89 = *(v82 + v85 + 8);
          v91 = *(v82 + v184[7]);

          v92 = v82;
          v14 = v222;
          outlined destroy of DocumentResourceEnvelope(v92, type metadata accessor for FileContentEnvelope);
          v93 = type metadata accessor for PromptCompletion.FileContent(0);
          v94 = (v84 + v93[5]);
          *v94 = v88;
          v94[1] = v87;
          v95 = (v84 + v93[6]);
          *v95 = v90;
          v95[1] = v89;
          v51 = v189;
          v58 = v188;
          *(v84 + v93[7]) = v91;
          v55 = v204;
          goto LABEL_28;
        }
      }

      else if (!EnumCaseMultiPayload)
      {
        v62 = v58[1];
        v205 = *v58;
        v63 = v58[2];
        v190 = v58[3];
        v187 = v58[4];
        v64 = *(v63 + 16);
        v186 = v63;
        if (v64)
        {
          v223 = MEMORY[0x1E69E7CC0];
          v185 = v62;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
          v65 = v223;
          v66 = v63 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
          v67 = *(v180 + 72);
          do
          {
            v68 = v218;
            outlined init with copy of DocumentResourceEnvelope(v66, v218, type metadata accessor for AnnotationEnvelope);
            v69 = *v68;
            outlined init with take of DocumentRegistrationEnvelope(v68 + *(v219 + 20), v49, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v70 = v213;
              outlined init with take of DocumentRegistrationEnvelope(v49, v213, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
              v71 = type metadata accessor for DocumentResourceIdentifier();
              (*(*(v71 - 8) + 32))(v14, v70, v71);
            }

            else
            {
              v72 = v211;
              outlined init with take of DocumentRegistrationEnvelope(v49, v211, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
              v73 = *v72;
              v74 = v72[1];
              v75 = *(v212 + 20);
              v76 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
              v77 = type metadata accessor for URL();
              v78 = v222 + v76;
              v14 = v222;
              v79 = v72 + v75;
              v49 = v214;
              (*(*(v77 - 8) + 32))(v78, v79, v77);
              *v14 = v73;
              v14[1] = v74;
              v18 = v215;
            }

            swift_storeEnumTagMultiPayload();
            *v18 = v69;
            outlined init with take of DocumentRegistrationEnvelope(v14, v18 + *(v217 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
            v223 = v65;
            v81 = *(v65 + 16);
            v80 = *(v65 + 24);
            if (v81 >= v80 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
              v65 = v223;
            }

            *(v65 + 16) = v81 + 1;
            outlined init with take of DocumentRegistrationEnvelope(v18, v65 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v81, type metadata accessor for PromptCompletion.Annotation);
            v66 += v67;
            --v64;
          }

          while (v64);
          v23 = v191;
          outlined destroy of DocumentResourceEnvelope(v191, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
          v96 = v204;
          v97 = v185;
        }

        else
        {
          v96 = v55;
          v97 = v62;

          outlined destroy of DocumentResourceEnvelope(v23, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
          v65 = MEMORY[0x1E69E7CC0];
        }

        v98 = v190;
        v99 = v187;
        outlined copy of Data?(v190, v187);
        outlined consume of Data?(0, 0xF000000000000000);

        outlined consume of Data?(v98, v99);
        v100 = v182;
        *v182 = v205;
        v100[1] = v97;
        v100[2] = v65;
        v100[3] = v98;
        v100[4] = v99;
        swift_storeEnumTagMultiPayload();
        outlined init with take of DocumentRegistrationEnvelope(v100, v207, type metadata accessor for PromptCompletion.Content);
        v58 = v188;
        v55 = v96;
        v51 = v189;
        goto LABEL_31;
      }

      outlined destroy of DocumentResourceEnvelope(v23, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      *v207 = *v58;
LABEL_28:
      swift_storeEnumTagMultiPayload();
LABEL_31:
      v101 = v210;
      v224 = v210;
      v103 = *(v210 + 16);
      v102 = *(v210 + 24);
      if (v103 >= v102 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
        v58 = v188;
        v101 = v224;
      }

      v104 = v209 + 1;
      *(v101 + 16) = v103 + 1;
      v105 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v210 = v101;
      outlined init with take of DocumentRegistrationEnvelope(v207, v101 + v105 + *(v192 + 72) * v103, type metadata accessor for PromptCompletion.Segment);
      v59 = v104;
      if (v104 == v208)
      {
        v106 = MEMORY[0x1E69E7CC0];
        v54 = v179;
        v107 = v181;
        v108 = v210;
        goto LABEL_36;
      }
    }
  }

  v148 = v168;
LABEL_79:
  v178 = v46;
  if (v159)
  {
    v149 = v167;
    outlined copy of Data._Representation(v167, v44);

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    v150 = type metadata accessor for Prompt.Rendering();
    (*(*(v150 - 8) + 56))(v148, 0, 1, v150);
  }

  else
  {
    v150 = type metadata accessor for Prompt.Rendering();
    (*(*(v150 - 8) + 56))(v148, 1, 1, v150);
    v149 = v167;
    outlined copy of Data._Representation(v167, v44);
  }

  v151 = v166;
  *(v166 + 24) = 0;
  v152 = *(type metadata accessor for PromptCompletion(0) + 36);
  type metadata accessor for Prompt.Rendering();
  (*(*(v150 - 8) + 56))(v151 + v152, 1, 1, v150);
  v153 = v162;
  *v151 = v163;
  *(v151 + 8) = v153;
  *(v151 + 16) = v161;

  *&v154 = v165.n128_u64[0];
  *(&v154 + 1) = v164;
  v155 = v178;
  *(v151 + 24) = v160;
  *(v151 + 32) = v155;
  *&v156 = v149;
  *(&v156 + 1) = v44;
  *(v151 + 56) = v156;
  *(v151 + 40) = v154;
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v148, v151 + v152, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
}

uint64_t ModelInformationEnvelope.unseal()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = a4;
    v18 = a2;
    v19 = a3;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v7 = (a1 + 72);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 2);
      v20 = *(v7 - 3);
      v11 = *(v7 - 1);
      v12 = *v7;

      outlined copy of Data._Representation(v11, v12);
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v7 += 6;
      *(v21 + 16) = v14 + 1;
      v15 = (v21 + 48 * v14);
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v20;
      v15[7] = v10;
      v15[8] = v11;
      v15[9] = v12;
      --v4;
    }

    while (v4);
    a2 = v18;
    a3 = v19;
    a4 = v17;
  }

  *a4 = v5;
  a4[1] = a2;
  a4[2] = a3;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 48);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[48 * v11])
    {
      memmove(v15, v16, 48 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t outlined init with copy of DocumentResourceEnvelope(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DocumentResourceEnvelope(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of Prompt.Rendering?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  else
  {
    v2 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[16], v0[2], type metadata accessor for PromptCompletion);

  v5 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4 + *(v5 + 20), v3, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
LABEL_21:

    v49 = v0[1];

    return v49();
  }

  v6 = v0[2];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v7 = *(v6 + 32);
  v0[21] = v7;
  v8 = *(v7 + 16);
  v52 = v7;

  if (!v8)
  {
LABEL_20:
    v47 = v0[14];
    v46 = v0[15];
    v48 = v0[13];

    (*(v47 + 8))(v46, v48);
    goto LABEL_21;
  }

  v9 = 0;
  v0[22] = 0;
  do
  {
    v10 = (v0[21] + 56 * v9);
    v11 = v10[4];
    v0[23] = v11;
    v0[24] = v10[5];
    v12 = v10[7];
    v0[25] = v12;
    v13 = v10[8];
    v0[26] = v13;
    v14 = v10[9];
    v0[27] = v14;
    v15 = v10[10];
    v0[28] = v15;
    v0[29] = v10[6];
    v0[30] = *(v11 + 16);

    outlined copy of FinishReason(v12, v13);
    outlined copy of Data._Representation(v14, v15);
    v0[31] = v52;

    v18 = 0;
    while (1)
    {
      if (v18 == v0[30])
      {
        v19 = 1;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return MEMORY[0x1EEE0B778](v16, v17);
        }

        v20 = v0[23];
        if (v18 >= *(v20 + 16))
        {
          goto LABEL_25;
        }

        v22 = v0[9];
        v21 = v0[10];
        v23 = v0[7];
        v24 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
        v25 = v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18;
        v26 = *(v23 + 48);
        *v22 = v18;
        outlined init with copy of PromptCompletion(v25, v22 + v26, type metadata accessor for PromptCompletion.Segment);
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v22, v21, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMR);
        v19 = 0;
        ++v18;
      }

      v0[32] = v18;
      v28 = v0[10];
      v27 = v0[11];
      v29 = v0[7];
      v30 = v0[8];
      (*(v30 + 56))(v28, v19, 1, v29);
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v28, v27, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMR);
      if ((*(v30 + 48))(v27, 1, v29) == 1)
      {
        break;
      }

      v31 = v0[11];
      v33 = v0[6];
      v32 = v0[7];
      v0[33] = *v31;
      v34 = *(v32 + 48);
      outlined init with copy of PromptCompletion(v31 + v34, v33, type metadata accessor for PromptCompletion.Content);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v31 + v34, type metadata accessor for PromptCompletion.Segment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = v0[6];
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_17;
      }

      v16 = outlined destroy of TokenGeneratorCompletionResponseStringStream(v36, type metadata accessor for PromptCompletion.Content);
    }

    v51 = v0[28];
    v38 = v0[26];
    v37 = v0[27];
    v39 = v0[25];
    v40 = v0[22];
    v41 = v0[21];
    swift_bridgeObjectRelease_n();

    outlined consume of FinishReason(v39, v38);
    v36 = outlined consume of Data._Representation(v37, v51);
    v42 = *(v41 + 16);
    if (v40 + 1 == v42)
    {
      goto LABEL_20;
    }

    v9 = v0[22] + 1;
    v0[22] = v9;
  }

  while (v9 < v42);
  __break(1u);
LABEL_17:
  v44 = *v36;
  v43 = v36[1];
  v0[34] = v43;
  v0[35] = v36[2];
  v0[36] = v36[3];
  v0[37] = v36[4];
  v45 = swift_task_alloc();
  v0[38] = v45;
  *v45 = v0;
  v45[1] = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  v16 = v44;
  v17 = v43;

  return MEMORY[0x1EEE0B778](v16, v17);
}

{
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[5];
  *v5 = v0[41];
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v5 + 24) = xmmword_1ABA1D8C0;
  swift_storeEnumTagMultiPayload();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[31];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = v0[22];
  if (v8 >= *(v7 + 2))
  {
    __break(1u);
  }

  else
  {
    v9 = &v7[56 * v8];
    v10 = *(v9 + 4);
    v1 = (v9 + 32);
    v4 = v10;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v10;
    if (v11)
    {
      goto LABEL_4;
    }
  }

  *v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_4:
  v12 = v0[36];
  v13 = v0[37];
  v14 = v0[33];

  v15 = outlined consume of Data?(v12, v13);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = *v1;
  v18 = v0[33];
  if (v18 >= (*v1)[2])
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return MEMORY[0x1EEE0B778](v15, v16);
  }

  v19 = v0[5];
  v1 = v0[2];
  v20 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = *(v20 + 72);
  outlined assign with take of PromptCompletion.Content(v19, v17 + v21 + v22 * v18);
  v1[4] = v7;
  v23 = v0[32];
  v4 = &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd;
  v55 = v7;
  for (v0[31] = v7; ; v0[31] = v55)
  {
    while (1)
    {
      if (v23 == v0[30])
      {
        v24 = 1;
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v25 = v0[23];
        if (v23 >= *(v25 + 16))
        {
          goto LABEL_25;
        }

        v27 = v0[9];
        v26 = v0[10];
        v28 = v25 + v21 + v23 * v22;
        v29 = *(v0[7] + 48);
        *v27 = v23;
        outlined init with copy of PromptCompletion(v28, v27 + v29, type metadata accessor for PromptCompletion.Segment);
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v27, v26, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMR);
        v24 = 0;
        ++v23;
      }

      v0[32] = v23;
      v31 = v0[10];
      v30 = v0[11];
      v32 = v0[7];
      v33 = v0[8];
      (*(v33 + 56))(v31, v24, 1, v32);
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v31, v30, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMR);
      if ((*(v33 + 48))(v30, 1, v32) == 1)
      {
        break;
      }

      v7 = v0[11];
      v35 = v0[6];
      v34 = v0[7];
      v1 = v0[4];
      v0[33] = *v7;
      v36 = *(v34 + 48);
      outlined init with copy of PromptCompletion(&v7[v36], v35, type metadata accessor for PromptCompletion.Content);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(&v7[v36], type metadata accessor for PromptCompletion.Segment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v0[6];
      if (!EnumCaseMultiPayload)
      {
        v48 = *v38;
        v47 = v38[1];
        v0[34] = v47;
        v0[35] = v38[2];
        v0[36] = v38[3];
        v0[37] = v38[4];
        v49 = swift_task_alloc();
        v0[38] = v49;
        *v49 = v0;
        v49[1] = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
        v15 = v48;
        v16 = v47;

        return MEMORY[0x1EEE0B778](v15, v16);
      }

      outlined destroy of TokenGeneratorCompletionResponseStringStream(v38, type metadata accessor for PromptCompletion.Content);
    }

    v39 = v0[26];
    v57 = v0[27];
    v58 = v0[28];
    v40 = v0[25];
    v41 = v0[22];
    v56 = v0[21];
    swift_bridgeObjectRelease_n();

    outlined consume of FinishReason(v40, v39);
    v15 = outlined consume of Data._Representation(v57, v58);
    v42 = *(v56 + 16);
    if (v41 + 1 == v42)
    {
      break;
    }

    v43 = v0[22] + 1;
    v0[22] = v43;
    if (v43 >= v42)
    {
      goto LABEL_31;
    }

    v44 = (v0[21] + 56 * v43);
    v7 = v44[4];
    v0[23] = v7;
    v0[24] = v44[5];
    v45 = v44[7];
    v0[25] = v45;
    v46 = v44[8];
    v0[26] = v46;
    v59 = v44[9];
    v0[27] = v59;
    v1 = v44[10];
    v0[28] = v1;
    v0[29] = v44[6];
    v0[30] = *(v7 + 2);

    outlined copy of FinishReason(v45, v46);
    outlined copy of Data._Representation(v59, v1);

    v23 = 0;
  }

  v51 = v0[14];
  v50 = v0[15];
  v52 = v0[13];

  (*(v51 + 8))(v50, v52);

  v53 = v0[1];

  return v53();
}

{
  v1 = v0[3];
  v0[17] = v1[1];
  v2 = v1[2];
  v0[18] = v1[3];

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  v4 = v0[16];

  return v6(v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[26];
  v4 = v0[25];
  v5 = v0[14];
  v10 = v0[15];
  v11 = v0[28];
  v8 = v0[27];
  v9 = v0[13];
  v12 = v0[2];

  outlined consume of Data?(v1, v2);

  outlined consume of FinishReason(v4, v3);
  outlined consume of Data._Representation(v8, v11);
  (*(v5 + 8))(v10, v9);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v12, type metadata accessor for PromptCompletion);

  v6 = v0[1];

  return v6();
}

uint64_t outlined init with take of PromptCompletion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of PromptCompletion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TokenGeneratorCompletionResponseStringStream(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 312) = v2;

  if (v2)
  {

    v7 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  else
  {
    *(v6 + 320) = a2;
    *(v6 + 328) = a1;
    v7 = closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for PromptCompletion.Content(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtMR);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMd, &_sSi6offset_15TokenGeneration16PromptCompletionV7SegmentV7elementtSgMR);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect(), 0, 0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO7Segment33_A0DC35A8846644F872318E44A8B14F8DLLOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO7Segment33_A0DC35A8846644F872318E44A8B14F8DLLOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t get_enum_tag_for_layout_string_15TokenGeneration12FinishReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMR, type metadata accessor for PromptCompletion.Segment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMR, MEMORY[0x1E69DA8B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE16NonStringContentOGMR, type metadata accessor for Prompt.TokenGenerationNonStringContent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, MEMORY[0x1E69DA700]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, MEMORY[0x1E69DA828]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration15PromptScrubbingO012IntermediateF5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AC0F0V0dE16NonStringContentOGGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration15PromptScrubbingO012IntermediateF5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AC0F0V0dE16NonStringContentOGGMR, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, MEMORY[0x1E69DA800]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR, MEMORY[0x1E69DA7F8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration10AnyToolingVGMR, type metadata accessor for AnyTooling);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR, MEMORY[0x1E69DA6C0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR, MEMORY[0x1E69C6178]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy20ModelManagerServices24CustomAssetConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ModelManagerServices24CustomAssetConfigurationVGMR, MEMORY[0x1E69B26A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV10AnnotationVGMR, type metadata accessor for PromptCompletion.Annotation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR, MEMORY[0x1E69C6360]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration15ToolDescriptionVGMR, type metadata accessor for ToolDescription);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t outlined assign with take of PromptCompletion.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Content(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_store_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

void *sub_1AB834140(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0;
  v2 = v0[21];
  if ((*(*&v0[23] + 48))(v2, 1, *&v0[22]) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = v0[26];
  v4 = v1[24];
  v5 = v1[3];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v4, type metadata accessor for PromptCompletion);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV6result_Sd8durationtMd, &_s15TokenGeneration16PromptCompletionV6result_Sd8durationtMR) + 48);
  outlined init with copy of PromptCompletion(v4, v5, type metadata accessor for PromptCompletion);
  v7 = mach_absolute_time();
  v8 = v7 - *&v3;
  if (v7 < *&v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v1[24];
  v10 = v1[22];
  v12 = v1[3];
  v11 = v1[4];
  v1[29].denom = 0;
  v1[29].numer = 0;
  mach_timebase_info(v1 + 29);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v9, type metadata accessor for PromptCompletion);
  v13.i64[0] = *&v1[29];
  v13.i64[1] = HIDWORD(*&v1[29]);
  v14 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v14.f64[0] = v8;
  v15 = vmulq_f64(v14, vcvtq_f64_u64(v13));
  *(*&v12 + v6) = *&vdivq_f64(v15, vdupq_laneq_s64(v15, 1));
  v16 = *v11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  (MEMORY[0x1AC5A5DB0])(v16, v10, v17, MEMORY[0x1E69E7288]);

  v18 = v1[1];

  return v18();
}

{
  v1 = v0[25];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v0[26] = mach_absolute_time();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v7, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v8, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = swift_task_alloc();
  v0[27] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumenterts5Error_pGMd, &_sScgy15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumenterts5Error_pGMR);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v11 = v0[21];

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v10);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0;
  v2 = v0[21];
  if ((*(*&v0[23] + 48))(v2, 1, *&v0[22]) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = v0[26];
  v4 = v1[24];
  v5 = v1[3];
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v4, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v7 = mach_absolute_time();
  v8 = v7 - *&v3;
  if (v7 < *&v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v1[24];
  v10 = v1[22];
  v12 = v1[3];
  v11 = v1[4];
  v1[29].denom = 0;
  v1[29].numer = 0;
  mach_timebase_info(v1 + 29);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v13.i64[0] = *&v1[29];
  v13.i64[1] = HIDWORD(*&v1[29]);
  v14 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v14.f64[0] = v8;
  v15 = vmulq_f64(v14, vcvtq_f64_u64(v13));
  *(*&v12 + v6) = *&vdivq_f64(v15, vdupq_laneq_s64(v15, 1));
  v16 = *v11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  (MEMORY[0x1AC5A5DB0])(v16, v10, v17, MEMORY[0x1E69E7288]);

  v18 = v1[1];

  return v18();
}

{
  *(v0 + 16) = *(v0 + 224);
  v1 = *(v0 + 152);
  MEMORY[0x1AC5A6AE0]();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    GenerativeError.type.getter();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69A0A60])
    {
      v12 = *(v0 + 128);
      v13 = *(v0 + 104);
      v14 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 72);
      v16 = *(v0 + 80);
      v18 = *(v0 + 64);
      (*(*(v0 + 120) + 96))(v12, *(v0 + 112));
      (*(v15 + 32))(v13, v12, v14);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.generator);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1AB828000, v20, v21, "Aborting execution as closure exceeded maxiumum allotted time.", v22, 2u);
          MEMORY[0x1AC5A6CD0](v22, -1, -1);
        }

        v23 = *(v0 + 152);
        v24 = *(v0 + 144);
        v25 = *(v0 + 96);
        v26 = *(v0 + 104);
        v27 = *(v0 + 88);
        v46 = *(v0 + 160);
        v48 = *(v0 + 80);
        v28 = *(v0 + 72);
        v45 = *(v0 + 64);

        swift_willThrow();
        (*(v25 + 8))(v26, v27);
        (*(v23 + 8))(v46, v24);
        (*(v28 + 8))(v48, v45);
      }

      else
      {
        v36 = *(v0 + 152);
        v37 = *(v0 + 144);
        v39 = *(v0 + 96);
        v38 = *(v0 + 104);
        v40 = *(v0 + 88);
        v47 = *(v0 + 160);
        v49 = *(v0 + 80);
        v42 = *(v0 + 64);
        v41 = *(v0 + 72);
        swift_willThrow();
        (*(v39 + 8))(v38, v40);
        (*(v36 + 8))(v47, v37);
        (*(v41 + 8))(v49, v42);
      }
    }

    else
    {
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v32 = *(v0 + 144);
      v34 = *(v0 + 120);
      v33 = *(v0 + 128);
      v35 = *(v0 + 112);
      swift_willThrow();
      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v33, v35);
    }
  }

  else
  {
    v29 = *(v0 + 136);
    v4(v29, 1, 1, *(v0 + 144));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  MEMORY[0x1AC5A5DB0](**(v0 + 32), *(v0 + 176), v2, MEMORY[0x1E69E7288]);

  v43 = *(v0 + 8);

  return v43();
}

{
  v1 = v0[23];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v0[24] = mach_absolute_time();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v7, &_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v8, &_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = swift_task_alloc();
  v0[25] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySS7content_SaySSG6tokensts5Error_pGMd, &_sScgySS7content_SaySSG6tokensts5Error_pGMR);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(timeout:_:);

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v10);
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[2];
  v1 = v0[3];
  if (!*&v1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = v0;
  v4 = v0[24];
  v5 = v3[4];
  v6 = mach_absolute_time();
  if (v6 < v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = v6 - v4;
  v19 = v2;
  v7 = v3[6];
  v3[27].denom = 0;
  v3[27].numer = 0;
  mach_timebase_info(v3 + 27);
  v8 = v3[27];
  v9 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v9, v10, v11, MEMORY[0x1E69E7288]);

  v12 = v3[1];
  v13.i64[0] = v8.numer;
  v13.i64[1] = v8.denom;
  v14 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v14.f64[0] = v18;
  v15 = vmulq_f64(v14, vcvtq_f64_u64(v13));
  v16 = vdivq_f64(v15, vdupq_laneq_s64(v15, 1));

  return (v12)(v19, v1, v5, v16);
}

{
  *(v0 + 40) = *(v0 + 208);
  v1 = *(v0 + 168);
  MEMORY[0x1AC5A6AE0]();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    GenerativeError.type.getter();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69A0A60])
    {
      v12 = *(v0 + 144);
      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v18 = *(v0 + 80);
      (*(*(v0 + 136) + 96))(v12, *(v0 + 128));
      (*(v15 + 32))(v13, v12, v14);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.generator);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1AB828000, v20, v21, "Aborting execution as closure exceeded maxiumum allotted time.", v22, 2u);
          MEMORY[0x1AC5A6CD0](v22, -1, -1);
        }

        v23 = *(v0 + 168);
        v24 = *(v0 + 160);
        v25 = *(v0 + 112);
        v26 = *(v0 + 120);
        v27 = *(v0 + 104);
        v48 = *(v0 + 176);
        v50 = *(v0 + 96);
        v28 = *(v0 + 88);
        v47 = *(v0 + 80);

        swift_willThrow();
        (*(v25 + 8))(v26, v27);
        (*(v23 + 8))(v48, v24);
        (*(v28 + 8))(v50, v47);
      }

      else
      {
        v36 = *(v0 + 168);
        v37 = *(v0 + 160);
        v39 = *(v0 + 112);
        v38 = *(v0 + 120);
        v40 = *(v0 + 104);
        v49 = *(v0 + 176);
        v51 = *(v0 + 96);
        v42 = *(v0 + 80);
        v41 = *(v0 + 88);
        swift_willThrow();
        (*(v39 + 8))(v38, v40);
        (*(v36 + 8))(v49, v37);
        (*(v41 + 8))(v51, v42);
      }
    }

    else
    {
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v32 = *(v0 + 160);
      v34 = *(v0 + 136);
      v33 = *(v0 + 144);
      v35 = *(v0 + 128);
      swift_willThrow();
      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v33, v35);
    }
  }

  else
  {
    v29 = *(v0 + 152);
    v4(v29, 1, 1, *(v0 + 160));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v43 = **(v0 + 48);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
  MEMORY[0x1AC5A5DB0](v43, v44, v2, MEMORY[0x1E69E7288]);

  v45 = *(v0 + 8);

  return v45();
}

{
  v1 = v0[25];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v0[26] = mach_absolute_time();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration16PromptCompletionV_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v7);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration16PromptCompletionV_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = swift_task_alloc();
  v0[27] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy15TokenGeneration16PromptCompletionVs5Error_pGMd, &_sScgy15TokenGeneration16PromptCompletionVs5Error_pGMR);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v11 = v0[21];

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v10);
}

{
  v1 = v0[22];
  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v0[23] = mach_absolute_time();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v7, &_sSSSgMd, &_sSSSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v8, &_sSSSgMd, &_sSSSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = swift_task_alloc();
  v0[24] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySSSgs5Error_pGMd, &_sScgySSSgs5Error_pGMR);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(timeout:_:);

  return MEMORY[0x1EEE6DAC8](v0 + 2, 0, 0, v10);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
LABEL_7:
    __break(1u);
  }

  v3 = *(v0 + 184);
  v4 = mach_absolute_time();
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = v4 - v3;
  v5 = *(v0 + 40);
  *(v0 + 212) = 0;
  *(v0 + 208) = 0;
  mach_timebase_info((v0 + 208));
  v6 = *(v0 + 208);
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v7, v8, v9, MEMORY[0x1E69E7288]);

  v10 = *(v0 + 8);
  v11.i64[0] = v6;
  v11.i64[1] = HIDWORD(v6);
  v12 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v12.f64[0] = v16;
  v13 = vmulq_f64(v12, vcvtq_f64_u64(v11));
  v14 = vdivq_f64(v13, vdupq_laneq_s64(v13, 1));

  return v10(v2, v1, v14);
}

{
  *(v0 + 32) = *(v0 + 200);
  v1 = *(v0 + 160);
  MEMORY[0x1AC5A6AE0]();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 120);
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    GenerativeError.type.getter();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69A0A60])
    {
      v12 = *(v0 + 136);
      v13 = *(v0 + 112);
      v14 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v18 = *(v0 + 72);
      (*(*(v0 + 128) + 96))(v12, *(v0 + 120));
      (*(v15 + 32))(v13, v12, v14);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.generator);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1AB828000, v20, v21, "Aborting execution as closure exceeded maxiumum allotted time.", v22, 2u);
          MEMORY[0x1AC5A6CD0](v22, -1, -1);
        }

        v23 = *(v0 + 160);
        v24 = *(v0 + 152);
        v25 = *(v0 + 104);
        v26 = *(v0 + 112);
        v27 = *(v0 + 96);
        v48 = *(v0 + 168);
        v50 = *(v0 + 88);
        v28 = *(v0 + 80);
        v47 = *(v0 + 72);

        swift_willThrow();
        (*(v25 + 8))(v26, v27);
        (*(v23 + 8))(v48, v24);
        (*(v28 + 8))(v50, v47);
      }

      else
      {
        v36 = *(v0 + 160);
        v37 = *(v0 + 152);
        v39 = *(v0 + 104);
        v38 = *(v0 + 112);
        v40 = *(v0 + 96);
        v49 = *(v0 + 168);
        v51 = *(v0 + 88);
        v42 = *(v0 + 72);
        v41 = *(v0 + 80);
        swift_willThrow();
        (*(v39 + 8))(v38, v40);
        (*(v36 + 8))(v49, v37);
        (*(v41 + 8))(v51, v42);
      }
    }

    else
    {
      v31 = *(v0 + 160);
      v30 = *(v0 + 168);
      v32 = *(v0 + 152);
      v34 = *(v0 + 128);
      v33 = *(v0 + 136);
      v35 = *(v0 + 120);
      swift_willThrow();
      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v33, v35);
    }
  }

  else
  {
    v29 = *(v0 + 144);
    v4(v29, 1, 1, *(v0 + 152));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v43 = **(v0 + 40);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  MEMORY[0x1AC5A5DB0](v43, v44, v2, MEMORY[0x1E69E7288]);

  v45 = *(v0 + 8);

  return v45();
}

{
  v1 = v0[25];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v0[26] = mach_absolute_time();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v7, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v8, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = swift_task_alloc();
  v0[27] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyScsySSs5Error_pGsAA_pGMd, &_sScgyScsySSs5Error_pGsAA_pGMR);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v11 = v0[21];

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v10);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0;
  v2 = *(v0 + 184);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v5 = *(v1 + 208);
  v6 = *(v1 + 192);
  v7 = *(v1 + 24);
  (*(v2 + 32))(v6, v3, v4);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR) + 48);
  (*(v2 + 16))(v7, v6, v4);
  v9 = mach_absolute_time();
  v10 = v9 - v5;
  if (v9 < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(v1 + 192);
  v13 = *(v1 + 176);
  v12 = *(v1 + 184);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  *(v1 + 236) = 0;
  *(v1 + 232) = 0;
  mach_timebase_info((v1 + 232));
  (*(v12 + 8))(v11, v13);
  v16.i64[0] = *(v1 + 232);
  v16.i64[1] = HIDWORD(*(v1 + 232));
  v17 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v17.f64[0] = v10;
  v18 = vmulq_f64(v17, vcvtq_f64_u64(v16));
  *(v15 + v8) = *&vdivq_f64(v18, vdupq_laneq_s64(v18, 1));
  v19 = *v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v19, v13, v20, MEMORY[0x1E69E7288]);

  v21 = *(v1 + 8);

  return v21();
}

{
  v1 = v0[31];
  v2 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  v0[32] = mach_absolute_time();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:), v7, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), v8, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_sScPSgMd, &_sScPSgMR);
  v9 = swift_task_alloc();
  v0[33] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy15TokenGeneration21PromptCompletionEvent_pSgs5Error_pGMd, &_sScgy15TokenGeneration21PromptCompletionEvent_pSgs5Error_pGMR);
  *v9 = v0;
  v9[1] = specialized closure #1 in withTimeout<A>(timeout:_:);

  return MEMORY[0x1EEE6DAC8](v0 + 7, 0, 0, v10);
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  if (*(v0 + 80) == 1)
  {
LABEL_7:
    __break(1u);
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v3;
  *(v0 + 48) = *(v0 + 88);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, v2, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v4 = mach_absolute_time();
  v5 = v4 - v1;
  if (v4 < v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *(v0 + 280) = 0;
  mach_timebase_info((v0 + 280));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v8 = *(v0 + 280);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  v10 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v10.f64[0] = v5;
  v11 = vmulq_f64(v10, vcvtq_f64_u64(v9));
  *(v6 + 40) = *&vdivq_f64(v11, vdupq_laneq_s64(v11, 1));
  v12 = *v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1AC5A5DB0](v12, v13, v14, MEMORY[0x1E69E7288]);

  v15 = *(v0 + 8);

  return v15();
}

{
  *(v0 + 96) = *(v0 + 272);
  v1 = *(v0 + 232);
  MEMORY[0x1AC5A6AE0]();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    GenerativeError.type.getter();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69A0A60])
    {
      v12 = *(v0 + 208);
      v13 = *(v0 + 184);
      v14 = *(v0 + 168);
      v15 = *(v0 + 176);
      v17 = *(v0 + 152);
      v16 = *(v0 + 160);
      v18 = *(v0 + 144);
      (*(*(v0 + 200) + 96))(v12, *(v0 + 192));
      (*(v15 + 32))(v13, v12, v14);
      GenerativeError.RuntimeError.type.getter();
      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69A0A38])
      {
        if (one-time initialization token for generator != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.generator);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1AB828000, v20, v21, "Aborting execution as closure exceeded maxiumum allotted time.", v22, 2u);
          MEMORY[0x1AC5A6CD0](v22, -1, -1);
        }

        v23 = *(v0 + 232);
        v24 = *(v0 + 224);
        v25 = *(v0 + 176);
        v26 = *(v0 + 184);
        v27 = *(v0 + 168);
        v48 = *(v0 + 240);
        v50 = *(v0 + 160);
        v28 = *(v0 + 152);
        v47 = *(v0 + 144);

        swift_willThrow();
        (*(v25 + 8))(v26, v27);
        (*(v23 + 8))(v48, v24);
        (*(v28 + 8))(v50, v47);
      }

      else
      {
        v36 = *(v0 + 232);
        v37 = *(v0 + 224);
        v39 = *(v0 + 176);
        v38 = *(v0 + 184);
        v40 = *(v0 + 168);
        v49 = *(v0 + 240);
        v51 = *(v0 + 160);
        v42 = *(v0 + 144);
        v41 = *(v0 + 152);
        swift_willThrow();
        (*(v39 + 8))(v38, v40);
        (*(v36 + 8))(v49, v37);
        (*(v41 + 8))(v51, v42);
      }
    }

    else
    {
      v31 = *(v0 + 232);
      v30 = *(v0 + 240);
      v32 = *(v0 + 224);
      v34 = *(v0 + 200);
      v33 = *(v0 + 208);
      v35 = *(v0 + 192);
      swift_willThrow();
      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v33, v35);
    }
  }

  else
  {
    v29 = *(v0 + 216);
    v4(v29, 1, 1, *(v0 + 224));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
    swift_willThrow();
  }

  v43 = **(v0 + 112);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  MEMORY[0x1AC5A5DB0](v43, v44, v2, MEMORY[0x1E69E7288]);

  v45 = *(v0 + 8);

  return v45();
}

{

  return specialized closure #1 in withTimeout<A>(timeout:_:)();
}

uint64_t sub_1AB834590(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined init with copy of PromptCompletion.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s15TokenGeneration28Promptkit_Wireformat_PromptsV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  result = UnknownStorage.init()();
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t _s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  result = UnknownStorage.init()();
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  return result;
}

uint64_t _s15TokenGeneration46Promptkit_Wireformat_PromptComponentCustomDataV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xF000000000000000;
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration42Promptkit_Wireformat_AttachmentPlaceholderV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return UnknownStorage.init()();
}

uint64_t _s15TokenGeneration46Promptkit_Wireformat_RecursiveSchemaKindObjectV21InternalSwiftProtobuf7MessageAadEPxycfCTW_0@<X0>(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  result = UnknownStorage.init()();
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AB834B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t sub_1AB834CB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB834EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for UnknownStorage();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1AB834FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AB835130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB8351E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = type metadata accessor for UnknownStorage();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1AB8353C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1AB835500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB8355B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83565C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AB83570C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB8357EC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for UnknownStorage();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_1AB83597C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for UnknownStorage();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AB835C10(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 119)
  {
    v4 = *a1 >> 57;
    v5 = v4 & 8 | *a1 & 7;
    if (v5)
    {
      return ((v4 >> 4) | (8 * v5)) ^ 0x7F;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

unint64_t *sub_1AB835CC8(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 119)
  {
    v6 = (~a2 >> 3) & 0xF | (16 * (~a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AB835DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for UnknownStorage();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1AB835EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB83605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for UnknownStorage();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1AB836198(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB8362F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 116)
  {
    v4 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v4 >= 0x75)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

unint64_t *sub_1AB83639C(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 116)
  {
    v6 = (~a2 >> 4) & 7 | (8 * (~a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AB83644C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AB8364FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB8365AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB8366DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB83680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for UnknownStorage();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1AB836948(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB836A78(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB836BA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB836CD8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB836E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB836F38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = type metadata accessor for UnknownStorage();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[9];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1AB83717C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v18 = type metadata accessor for UnknownStorage();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1AB8373B4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 <= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 5;
    if (v4 >= 5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AB837464(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AB837584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AB8376D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AB837804(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AB837B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB837B78()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB837D40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB837D7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB837DB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB837DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB837E24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMd, &_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMR);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AB837ECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AB837FB4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB838148()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AB838258(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB838314(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB8383D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1AB83847C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB8384B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB83852C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB838564()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB83859C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB838630()
{

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB8387B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AB838920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(*a1 + 16))
  {
    v3 = *(*a1 + 32);
  }

  else
  {
    v3 = 0;
    result = 0xE000000000000000;
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_1AB838988@<X0>(uint64_t *a1@<X8>)
{
  result = ModelInformation.version.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AB8389CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AB838A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AB838AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB838B6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB838C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_1AB838D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1AB838DC4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB838E80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB838F5C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB838FDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMd, &_s15Synchronization6AtomicVy15TokenGeneration22PromptCompletionStreamV14TriggeredState33_0373B4B0401CBA7445BA6D378A084D04LLOGMR);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB8390C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Prompt.Rendering();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB839174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Prompt.Rendering();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOs0E3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized OneShotRequest.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AB839428()
{

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB8398B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1AB839A14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for PromptTemplateInfoEnvelope(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AB839B74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8] + 80);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1AB839D4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 80) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[12];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_1AB839F24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PromptVariantEnvelope(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1AB83A0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for XPCDictionary();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for PromptVariantEnvelope(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1AB83A234(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1AB83A398(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for XPCDictionary();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for PromptTemplateInfoEnvelope(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AB83A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCDictionary();
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

uint64_t sub_1AB83A5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCDictionary();
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

uint64_t sub_1AB83A6CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB83A788(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB83A89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}