void *FeatureVectorizer.Transformer.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = v4;
  v5 = a1;
  v6 = type metadata accessor for FeatureVectorizer.Transformer.CodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for FeatureVectorizer<A>.Transformer.CodingKeys, v6);
  v19 = type metadata accessor for KeyedDecodingContainer(0, v6, WitnessTable);
  v20 = *(v19 - 8);
  v7 = *(v20 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v23 = &v17;
  dispatch thunk of Decoder.container<A>(keyedBy:)(v6, v6, WitnessTable, v10, v18);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v22 = a1;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
    v24 = 0;
    v12 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
    v13 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)(v11, &v24, v19, v11, v12);
    v25[0] = 1;
    WitnessTable = v17;

    KeyedDecodingContainer.decode(_:forKey:)(v25, v13);
    v16 = v15;
    (*(v20 + 8))(v23, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v16;
    v5 = WitnessTable;
    WitnessTable;
  }

  return v5;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)(a1);
  Rectangle.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = FeatureVectorizer.Transformer.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance FeatureVectorizer<A>.Transformer.CodingKeys()
{
  v1 = v0;
  result = Rectangle.CodingKeys.init(intValue:)();
  *v1 = result;
  return result;
}

void *protocol witness for Decodable.init(from:) in conformance FeatureVectorizer<A>.Transformer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = FeatureVectorizer.Transformer.init(from:)(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v5)
  {
    *v6 = result;
    v6[1] = v8;
    v6[2] = v9;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [ColumnDescriptor]);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor, &type metadata for ColumnDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor, &type metadata for ColumnDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor and conformance ColumnDescriptor = result;
  }

  return result;
}

void CMLDictionary.add(_:)(uint64_t a1)
{
  v145 = v1;
  v139 = type metadata accessor for URL(0);
  v2 = *(v139 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v143 = &v119;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v140 = &v119;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v144 = &v119;
  v11 = type metadata accessor for _Model.Parameters(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  outlined init with copy of _Model.Parameters(a1, &v119);
  switch(swift_getEnumCaseMultiPayload(&v119, v11))
  {
    case 0u:
      v15 = specialized handling<A, B>(_:_:)(v119);
      if (!v15)
      {
        BUG();
      }

      v16 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v16, v137);
      v17 = CMLFeatureValue.init(rawValue:ownsValue:)(v15, 1);
      CMLDictionary.add(key:value:)(0x726574695F78616DLL, 0xEE00736E6F697461, v17);
      goto LABEL_50;
    case 1u:
      v66 = specialized handling<A, B>(_:_:)(v119);
      if (!v66)
      {
        BUG();
      }

      v67 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v67, v136);
      v68 = CMLFeatureValue.init(rawValue:ownsValue:)(v66, 1);
      CMLDictionary.add(key:value:)(0x69735F6863746162, 0xEA0000000000657ALL, v68);
      goto LABEL_50;
    case 2u:
      v48 = v119;
      v49 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v50 = CMLFeatureValue.__allocating_init(_:)(v48, v49);
      v49;
      CMLDictionary.add(key:value:)(0x6972616C696D6973, 0xEF657079745F7974, v50);
      goto LABEL_50;
    case 3u:
      v54 = v120[0];
      v55 = v120[1];
      v56 = specialized handling<A, B>(_:_:)();
      v144 = v55;
      if (!v56)
      {
        BUG();
      }

      v57 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v57, v133);
      v58 = CMLFeatureValue.init(rawValue:ownsValue:)(v56, 1);
      CMLDictionary.add(key:value:)(0x6C6F687365726874, 0xE900000000000064, v58);

      v59 = specialized handling<A, B>(_:_:)(v54);
      if (!v59)
      {
        BUG();
      }

      swift_initStackObject(v57, v134);
      v60 = CMLFeatureValue.init(rawValue:ownsValue:)(v59, 1);
      CMLDictionary.add(key:value:)(0xD00000000000001ALL, ("customEmbeddingURL" + 0x8000000000000000), v60);

      v61 = specialized handling<A, B>(_:_:)(v144);
      if (!v61)
      {
        BUG();
      }

      swift_initStackObject(v57, v135);
      v62 = CMLFeatureValue.init(rawValue:ownsValue:)(v61, 1);
      CMLDictionary.add(key:value:)(0x617461645F78616DLL, 0xEF7365737361705FLL, v62);
      goto LABEL_50;
    case 4u:
      v37 = v119;
      if (v119)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)(v119);
        v40 = v39;
        type metadata accessor for CMLFeatureValue();

        v41 = CMLFeatureValue.__allocating_init(_:)(v38, v40);
        v40;
        CMLDictionary.add(key:value:)(0x65676175676E616CLL, 0xE800000000000000, v41);
      }

      return;
    case 5u:
      v75 = v119;
      v76 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v77 = CMLFeatureValue.__allocating_init(_:)(v75, v76);
      v76;
      CMLDictionary.add(key:value:)(0x687469726F676C61, 0xE90000000000006DLL, v77);
      goto LABEL_50;
    case 6u:
      v142 = v2;
      v87 = v119;
      v88 = v120[0];
      v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?));
      outlined init with take of URL?(&v120[-1] + *(v89 + 48), v144);
      v90 = type metadata accessor for CMLFeatureValue();

      v141 = v90;
      v91 = CMLFeatureValue.__allocating_init(_:)(v87, v88);
      v88;
      CMLDictionary.add(key:value:)(0x6E69646465626D65, 0xE900000000000067, v91);
      v92 = v139;

      v93 = v144;
      v94 = v140;
      outlined init with copy of URL?(v144, v140);
      if (__swift_getEnumTagSinglePayload(v94, 1, v92) == 1)
      {
        outlined destroy of URL?(v93);
        v95 = v94;
      }

      else
      {
        v114 = v143;
        (*(v142 + 32))(v143, v94, v92);
        v115 = URL.path.getter(v114);
        v117 = v116;

        v118 = CMLFeatureValue.__allocating_init(_:)(v115, v117);
        v117;
        CMLDictionary.add(key:value:)(0xD000000000000012, ("algorithm_revision" + 0x8000000000000000), v118);

        (*(v142 + 8))(v143, v92);
        v95 = v144;
      }

      outlined destroy of URL?(v95);
      return;
    case 7u:
      v63 = specialized handling<A, B>(_:_:)(v119);
      if (!v63)
      {
        BUG();
      }

      v64 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v64, v132);
      v65 = CMLFeatureValue.init(rawValue:ownsValue:)(v63, 1);
      CMLDictionary.add(key:value:)(0xD000000000000012, ("prediction_window" + 0x8000000000000000), v65);
      goto LABEL_50;
    case 8u:
      v102 = specialized handling<A, B>(_:_:)(v119);
      if (!v102)
      {
        BUG();
      }

      v103 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v103, v131);
      v104 = CMLFeatureValue.init(rawValue:ownsValue:)(v102, 1);
      CMLDictionary.add(key:value:)(0xD000000000000011, ("annotation_scale" + 0x8000000000000000), v104);
      goto LABEL_50;
    case 9u:
      v45 = v119;
      v46 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v47 = CMLFeatureValue.__allocating_init(_:)(v45, v46);
      v46;
      CMLDictionary.add(key:value:)(0x705F656369766564, 0xED00007963696C6FLL, v47);
      goto LABEL_50;
    case 0xAu:
      v99 = v119;
      v100 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v101 = CMLFeatureValue.__allocating_init(_:)(v99, v100);
      v100;
      CMLDictionary.add(key:value:)(0xD000000000000010, ("annotation_origin" + 0x8000000000000000), v101);
      goto LABEL_50;
    case 0xBu:
      v34 = v119;
      v35 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v36 = CMLFeatureValue.__allocating_init(_:)(v34, v35);
      v35;
      CMLDictionary.add(key:value:)(0xD000000000000011, ("annotation_position" + 0x8000000000000000), v36);
      goto LABEL_50;
    case 0xCu:
      v42 = v119;
      v43 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v44 = CMLFeatureValue.__allocating_init(_:)(v42, v43);
      v43;
      CMLDictionary.add(key:value:)(0xD000000000000013, ("default_model_input_size" + 0x8000000000000000), v44);
      goto LABEL_50;
    case 0xDu:
      v81 = v120[0];
      v82 = specialized handling<A, B>(_:_:)(v119);
      if (!v82)
      {
        BUG();
      }

      v83 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v83, v129);
      v84 = CMLFeatureValue.init(rawValue:ownsValue:)(v82, 1);
      CMLDictionary.add(key:value:)(0x6469775F64697267, 0xEA00000000006874, v84);

      v85 = specialized handling<A, B>(_:_:)(v81);
      if (!v85)
      {
        BUG();
      }

      swift_initStackObject(v83, v130);
      v86 = CMLFeatureValue.init(rawValue:ownsValue:)(v85, 1);
      CMLDictionary.add(key:value:)(0x6965685F64697267, 0xEB00000000746867, v86);
      goto LABEL_50;
    case 0xEu:
      v31 = v119;
      v32 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v33 = CMLFeatureValue.__allocating_init(_:)(v31, v32);
      v32;
      CMLDictionary.add(key:value:)(0x6C65646F6DLL, 0xE500000000000000, v33);
      goto LABEL_50;
    case 0xFu:
      v51 = v119;
      v52 = v120[0];
      type metadata accessor for CMLFeatureValue();

      v53 = CMLFeatureValue.__allocating_init(_:)(v51, v52);
      v52;
      CMLDictionary.add(key:value:)(0x6966697373616C63, 0xEA00000000007265, v53);
      goto LABEL_50;
    case 0x10u:
      v18 = v119;
      v19 = tc_v1_flex_list_create(0);
      if (!v19)
      {
        BUG();
      }

      v20 = v19;
      v21 = type metadata accessor for CMLSequence();
      inited = swift_initStackObject(v21, v127);
      *(inited + 16) = v20;
      v144 = inited;
      *(inited + 24) = 1;
      v143 = *(v18 + 16);
      if (v143)
      {

        v23 = 0;
        do
        {
          v24 = *(v18 + 8 * v23 + 32);
          v138[3] = &type metadata for Int;
          v138[4] = &protocol witness table for Int;
          v138[0] = v24;
          v25 = __swift_project_boxed_opaque_existential_0Tm(v138, &type metadata for Int);
          v26 = specialized handling<A, B>(_:_:)(*v25);
          if (!v26)
          {
            BUG();
          }

          v27 = v18;
          v28 = type metadata accessor for CMLFeatureValue();
          swift_initStackObject(v28, v128);
          v29 = CMLFeatureValue.init(rawValue:ownsValue:)(v26, 1);
          __swift_destroy_boxed_opaque_existential_1Tm(v138);
          CMLSequence.append(_:)(v29);
          v23 = (v23 + 1);

          v18 = v27;
        }

        while (v143 != v23);
        v27;
      }

      type metadata accessor for CMLFeatureValue();
      v30 = CMLFeatureValue.__allocating_init(_:)(v144);
      v18;
      CMLDictionary.add(key:value:)(0x69735F726579616CLL, 0xEB0000000073657ALL, v30);
      goto LABEL_50;
    case 0x11u:
      v69 = specialized handling<A, B>(_:_:)(v119);
      if (!v69)
      {
        BUG();
      }

      v70 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v70, v126);
      v71 = CMLFeatureValue.init(rawValue:ownsValue:)(v69, 1);
      CMLDictionary.add(key:value:)(0xD000000000000018, ("min_model_input_size" + 0x8000000000000000), v71);
      goto LABEL_50;
    case 0x12u:
      v96 = specialized handling<A, B>(_:_:)(v119);
      if (!v96)
      {
        BUG();
      }

      v97 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v97, v125);
      v98 = CMLFeatureValue.init(rawValue:ownsValue:)(v96, 1);
      CMLDictionary.add(key:value:)(0xD000000000000014, ("max_model_input_size" + 0x8000000000000000), v98);
      goto LABEL_50;
    case 0x13u:
      v108 = specialized handling<A, B>(_:_:)(v119);
      if (!v108)
      {
        BUG();
      }

      v109 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v109, v124);
      v110 = CMLFeatureValue.init(rawValue:ownsValue:)(v108, 1);
      CMLDictionary.add(key:value:)(0xD000000000000014, ("reporting_interval" + 0x8000000000000000), v110);
      goto LABEL_50;
    case 0x14u:
      v72 = specialized handling<A, B>(_:_:)(v119);
      if (!v72)
      {
        BUG();
      }

      v73 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v73, v123);
      v74 = CMLFeatureValue.init(rawValue:ownsValue:)(v72, 1);
      CMLDictionary.add(key:value:)(0xD000000000000012, ("CreateML/_Parameters.swift" + 0x8000000000000000), v74);
      goto LABEL_50;
    case 0x15u:
      v78 = specialized handling<A, B>(_:_:)(v119);
      if (!v78)
      {
        BUG();
      }

      v79 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v79, v122);
      v80 = CMLFeatureValue.init(rawValue:ownsValue:)(v78, 1);
      CMLDictionary.add(key:value:)(0x645F6C6574786574, 0xEE00797469736E65, v80);
      goto LABEL_50;
    case 0x16u:
      v105 = specialized handling<A, B>(_:_:)(v119);
      if (!v105)
      {
        BUG();
      }

      v106 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v106, v121);
      v107 = CMLFeatureValue.init(rawValue:ownsValue:)(v105, 1);
      CMLDictionary.add(key:value:)(0x74735F656C797473, 0xEE006874676E6572, v107);
      goto LABEL_50;
    case 0x17u:
      v111 = specialized handling<A, B>(_:_:)(v119);
      if (!v111)
      {
        BUG();
      }

      v112 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v112, v120);
      v113 = CMLFeatureValue.init(rawValue:ownsValue:)(v111, 1);
      CMLDictionary.add(key:value:)(0x6D6172665F6D756ELL, 0xEA00000000007365, v113);
LABEL_50:

      return;
    case 0x18u:
      JUMPOUT(0x208778);
  }
}

uint64_t type metadata accessor for _Model.Parameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for _Model.Parameters;
  if (!type metadata singleton initialization cache for _Model.Parameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for _Model.Parameters);
  }

  return result;
}

uint64_t outlined init with copy of _Model.Parameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _Model.Parameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for _Model.Parameters(char *__dst, char **__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *__src;
    *v3 = *__src;
    v3 = &v7[(v5 + 16) & ~v5];

    return v3;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 2u:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 2);
        return v3;
      case 4u:
        v13 = *__src;
        *v3 = *__src;
        v13;
        swift_storeEnumTagMultiPayload(v3, a3, 4);
        return v3;
      case 5u:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 5);
        return v3;
      case 6u:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        v8 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
        v9 = &__dst[v8];
        v10 = __src + v8;
        v11 = type metadata accessor for URL(0);
        if (__swift_getEnumTagSinglePayload(v10, 1, v11))
        {
          v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
          memcpy(v9, v10, *(*(v12 - 8) + 64));
        }

        else
        {
          (*(*(v11 - 8) + 16))(v9, v10, v11);
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
        }

        swift_storeEnumTagMultiPayload(__dst, a3, 6);
        return v3;
      case 9u:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 9);
        return v3;
      case 0xAu:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 10);
        return v3;
      case 0xBu:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 11);
        return v3;
      case 0xCu:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 12);
        return v3;
      case 0xEu:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 14);
        return v3;
      case 0xFu:
        *__dst = *__src;
        *(__dst + 1) = __src[1];

        swift_storeEnumTagMultiPayload(__dst, a3, 15);
        return v3;
      case 0x10u:
        *__dst = *__src;

        swift_storeEnumTagMultiPayload(__dst, a3, 16);
        return v3;
      default:
        result = memcpy(__dst, __src, *(v4 + 64));
        break;
    }
  }

  return result;
}

void destroy for _Model.Parameters(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload(a1, a2))
  {
    case 2u:
    case 5u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
      *(a1 + 8);
      break;
    case 4u:

      break;
    case 6u:
      *(a1 + 8);
      v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
      v3 = type metadata accessor for URL(0);
      if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
      {
        (*(*(v3 - 8) + 8))(v2, v3);
      }

      break;
    case 0x10u:
      *a1;
      break;
    default:
      return;
  }
}

void *initializeWithCopy for _Model.Parameters(void *__dst, void *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 2u:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      goto LABEL_17;
    case 4u:
      v10 = *__src;
      *__dst = *__src;
      v10;
      swift_storeEnumTagMultiPayload(__dst, a3, 4);
      goto LABEL_17;
    case 5u:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 5);
      goto LABEL_17;
    case 6u:
      *__dst = *__src;
      __dst[1] = __src[1];

      v5 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
      v6 = __dst + v5;
      v7 = __src + v5;
      v8 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8))
      {
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
        memcpy(v6, v7, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(*(v8 - 8) + 16))(v6, v7, v8);
        __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
      }

      swift_storeEnumTagMultiPayload(__dst, a3, 6);
      goto LABEL_17;
    case 9u:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 9);
      goto LABEL_17;
    case 0xAu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 10);
      goto LABEL_17;
    case 0xBu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 11);
      goto LABEL_17;
    case 0xCu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 12);
      goto LABEL_17;
    case 0xEu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 14);
      goto LABEL_17;
    case 0xFu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 15);
      goto LABEL_17;
    case 0x10u:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 16);
LABEL_17:
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

void *assignWithCopy for _Model.Parameters(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of _Model.Parameters(__dst);
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 2u:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 4u:
      v10 = *__src;
      *__dst = *__src;
      v10;
      swift_storeEnumTagMultiPayload(__dst, a3, 4);
      return __dst;
    case 5u:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 5);
      return __dst;
    case 6u:
      *__dst = *__src;
      __dst[1] = __src[1];

      v5 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
      v6 = __dst + v5;
      v7 = __src + v5;
      v8 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8))
      {
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
        memcpy(v6, v7, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(*(v8 - 8) + 16))(v6, v7, v8);
        __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
      }

      swift_storeEnumTagMultiPayload(__dst, a3, 6);
      return __dst;
    case 9u:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 9);
      return __dst;
    case 0xAu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 10);
      return __dst;
    case 0xBu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 11);
      return __dst;
    case 0xCu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 12);
      return __dst;
    case 0xEu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 14);
      return __dst;
    case 0xFu:
      *__dst = *__src;
      __dst[1] = __src[1];

      swift_storeEnumTagMultiPayload(__dst, a3, 15);
      return __dst;
    case 0x10u:
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 16);
      return __dst;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *initializeWithTake for _Model.Parameters(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 6)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  *__dst = *__src;
  v4 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
  v5 = &__dst[v4];
  v6 = &__src[v4];
  v7 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(v5, v6, v7);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  swift_storeEnumTagMultiPayload(__dst, a3, 6);
  return __dst;
}

char *assignWithTake for _Model.Parameters(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of _Model.Parameters(__dst);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 6)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    *__dst = *__src;
    v4 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, custom: URL?)) + 48);
    v5 = &__dst[v4];
    v6 = &__src[v4];
    v7 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(v5, v6, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 32))(v5, v6, v7);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload(__dst, a3, 6);
  }

  return __dst;
}

uint64_t type metadata completion function for _Model.Parameters(uint64_t a1)
{
  v6[0] = &value witness table for Builtin.Int64 + 64;
  v6[1] = &value witness table for Builtin.Int64 + 64;
  v6[2] = &unk_345F48;
  v6[3] = &unk_345F60;
  v6[4] = &unk_345F78;
  v6[5] = &unk_345F48;
  result = type metadata accessor for URL?(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2(v5, &unk_345F48);
    v6[6] = v5;
    v6[7] = &value witness table for Builtin.Int64 + 64;
    v6[8] = &value witness table for Builtin.Int64 + 64;
    v6[9] = &unk_345F48;
    v6[10] = &unk_345F48;
    v6[11] = &unk_345F48;
    v6[12] = &unk_345F48;
    v6[13] = &unk_345F90;
    v6[14] = &unk_345F48;
    v6[15] = &unk_345F48;
    v6[16] = &value witness table for Builtin.BridgeObject + 64;
    v6[17] = &value witness table for Builtin.Int64 + 64;
    v6[18] = &value witness table for Builtin.Int64 + 64;
    v6[19] = &value witness table for Builtin.Int64 + 64;
    v6[20] = &value witness table for Builtin.Int64 + 64;
    v6[21] = &value witness table for Builtin.Int64 + 64;
    v6[22] = &value witness table for Builtin.Int64 + 64;
    v6[23] = &value witness table for Builtin.Int64 + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 24, v6, v3, v4);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for URL?(uint64_t a1)
{
  result = lazy cache variable for type metadata for URL?;
  if (!lazy cache variable for type metadata for URL?)
  {
    v2 = type metadata accessor for URL(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for URL? = result;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *__src;
    *v3 = *__src;
    v3 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    if (EnumCaseMultiPayload == 2)
    {
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        return memcpy(__dst, __src, *(v4 + 64));
      }

      v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v9 = type metadata accessor for URL(0);
          (*(*(v9 - 8) + 16))(__dst, __src, v9);
          v10 = v8;
          v11 = 0;
          goto LABEL_14;
        case 1u:
          v23 = type metadata accessor for URL(0);
          (*(*(v23 - 8) + 16))(__dst, __src, v23);
          v24 = 1;
          goto LABEL_13;
        case 2u:
          *__dst = *__src;

          v24 = 2;
          goto LABEL_13;
        case 3u:
          v25 = v8;
          v20 = *__src;
          v21 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v21);
          *__dst = v20;
          __dst[8] = v21;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          v22 = *(__src + 4);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = v22;
          __dst[80] = __src[80];

          v11 = 3;
          v10 = v25;
          goto LABEL_14;
        case 4u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 16))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v16 = v15[12];
          *&__dst[v16] = *&__src[v16];
          *&__dst[v16 + 8] = *&__src[v16 + 8];
          v17 = v15[16];
          *&__dst[v17] = *&__src[v17];
          *&__dst[v17 + 8] = *&__src[v17 + 8];
          v18 = v15[20];
          __dst[v18 + 32] = __src[v18 + 32];
          v19 = *&__src[v18];
          *&__dst[v18 + 16] = *&__src[v18 + 16];
          *&__dst[v18] = v19;

          v24 = 4;
LABEL_13:
          v11 = v24;
          v10 = v8;
LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v10, v11);
          swift_storeEnumTagMultiPayload(__dst, a3, 1);
          break;
        case 5u:
          JUMPOUT(0x209578);
      }
    }
  }

  return v3;
}

uint64_t destroy for MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    return *a1;
  }

  if (result == 1)
  {
    v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
      case 1:
        v4 = type metadata accessor for URL(0);
        result = (*(*(v4 - 8) + 8))(a1, v4);
        break;
      case 2:
        return *a1;
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        result = *(a1 + 40);
        break;
      case 4:
        v5 = type metadata accessor for DataFrame(0);
        (*(*(v5 - 8) + 8))(a1, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(a1 + *(v6 + 48) + 8);
        result = *(a1 + *(v6 + 64) + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    *__dst = *__src;

    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v5))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        v7 = v5;
        v8 = 0;
        goto LABEL_12;
      case 1u:
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 16))(__dst, __src, v19);
        v20 = 1;
        goto LABEL_11;
      case 2u:
        *__dst = *__src;

        v20 = 2;
        goto LABEL_11;
      case 3u:
        v21 = v5;
        v16 = *__src;
        v17 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v17);
        *__dst = v16;
        __dst[8] = v17;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);
        v18 = *(__src + 4);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = v18;
        __dst[80] = __src[80];

        v8 = 3;
        v7 = v21;
        goto LABEL_12;
      case 4u:
        v10 = type metadata accessor for DataFrame(0);
        (*(*(v10 - 8) + 16))(__dst, __src, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v12 = v11[12];
        *&__dst[v12] = *&__src[v12];
        *&__dst[v12 + 8] = *&__src[v12 + 8];
        v13 = v11[16];
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];
        v14 = v11[20];
        __dst[v14 + 32] = __src[v14 + 32];
        v15 = *&__src[v14];
        *&__dst[v14 + 16] = *&__src[v14 + 16];
        *&__dst[v14] = v15;

        v20 = 4;
LABEL_11:
        v8 = v20;
        v7 = v5;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v7, v8);
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        break;
    }
  }

  return __dst;
}

char *assignWithCopy for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    if (EnumCaseMultiPayload == 2)
    {
      *__dst = *__src;

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
      }

      v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v5))
      {
        case 0u:
          v6 = type metadata accessor for URL(0);
          (*(*(v6 - 8) + 16))(__dst, __src, v6);
          v7 = v5;
          v8 = 0;
          goto LABEL_13;
        case 1u:
          v19 = type metadata accessor for URL(0);
          (*(*(v19 - 8) + 16))(__dst, __src, v19);
          v20 = 1;
          goto LABEL_12;
        case 2u:
          *__dst = *__src;

          v20 = 2;
          goto LABEL_12;
        case 3u:
          v21 = v5;
          v16 = *__src;
          v17 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v17);
          *__dst = v16;
          __dst[8] = v17;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);
          v18 = *(__src + 4);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = v18;
          __dst[80] = __src[80];

          v8 = 3;
          v7 = v21;
          goto LABEL_13;
        case 4u:
          v10 = type metadata accessor for DataFrame(0);
          (*(*(v10 - 8) + 16))(__dst, __src, v10);
          v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v12 = v11[12];
          *&__dst[v12] = *&__src[v12];
          *&__dst[v12 + 8] = *&__src[v12 + 8];
          v13 = v11[16];
          *&__dst[v13] = *&__src[v13];
          *&__dst[v13 + 8] = *&__src[v13 + 8];
          v14 = v11[20];
          __dst[v14 + 32] = __src[v14 + 32];
          v15 = *&__src[v14];
          *&__dst[v14 + 16] = *&__src[v14 + 16];
          *&__dst[v14] = v15;

          v20 = 4;
LABEL_12:
          v8 = v20;
          v7 = v5;
LABEL_13:
          swift_storeEnumTagMultiPayload(__dst, v7, v8);
          swift_storeEnumTagMultiPayload(__dst, a3, 1);
          break;
      }
    }
  }

  return __dst;
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLSoundClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 4)
  {
    v11 = type metadata accessor for DataFrame(0);
    (*(*(v11 - 8) + 32))(__dst, __src, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v12[12]] = *&__src[v12[12]];
    *&__dst[v12[16]] = *&__src[v12[16]];
    v13 = v12[20];
    v14 = *&__src[v13 + 16];
    *&__dst[v13] = *&__src[v13];
    *&__dst[v13 + 16] = v14;
    __dst[v13 + 32] = __src[v13 + 32];
    v15 = 4;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v15 = 1;
LABEL_9:
    v8 = v15;
    v7 = v4;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
    goto LABEL_12;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = v4;
  v8 = 0;
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_12:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLSoundClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v4);
  if (EnumCaseMultiPayload == 4)
  {
    v11 = type metadata accessor for DataFrame(0);
    (*(*(v11 - 8) + 32))(__dst, __src, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v12[12]] = *&__src[v12[12]];
    *&__dst[v12[16]] = *&__src[v12[16]];
    v13 = v12[20];
    v14 = *&__src[v13 + 16];
    *&__dst[v13] = *&__src[v13];
    *&__dst[v13 + 16] = v14;
    __dst[v13 + 32] = __src[v13 + 32];
    v15 = 4;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 32))(__dst, __src, v10);
    v15 = 1;
LABEL_10:
    v8 = v15;
    v7 = v4;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
    goto LABEL_13;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 32))(__dst, __src, v6);
  v7 = v4;
  v8 = 0;
LABEL_11:
  swift_storeEnumTagMultiPayload(__dst, v7, v8);
LABEL_13:
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

uint64_t type metadata completion function for MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_345FB8;
  result = type metadata accessor for MLSoundClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

Swift::tuple_training_OpaquePointer_validation_OpaquePointer_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.ValidationData.splitFeatures(trainingData:)(Swift::OpaquePointer trainingData)
{
  v23 = v1;
  v3 = v2;
  rawValue = trainingData._rawValue;
  v4 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v2, v22);
  switch(swift_getEnumCaseMultiPayload(v22, v7))
  {
    case 0u:
      v3 = specialized Collection.randomSplit<A, B>(strategy:)(v22[0], v22[1], v23, rawValue);
      v13 = v12;
      goto LABEL_8;
    case 1u:
      v13 = rawValue;
      outlined init with take of MLSoundClassifier.DataSource(v22, v22);
      v16 = MLSoundClassifier.DataSource.annotatedFeatures()();
      if (v17)
      {
        goto LABEL_7;
      }

      v3 = v16;
      if (v16)
      {

        outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.DataSource);

        v3;
      }

      else
      {
        v13 = "max_item_neighborhood_size" + 0x8000000000000000;
        v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
        *v21 = 0xD000000000000031;
        *(v21 + 8) = "max_item_neighborhood_size" + 0x8000000000000000;
        *(v21 + 16) = 0;
        *(v21 + 32) = 0;
        *(v21 + 48) = 0;
        swift_willThrow();
LABEL_7:
        outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.DataSource);
      }

LABEL_8:
      v18 = v13;
      v19 = v3;
      result.validation.value._rawValue = v19;
      result.training._rawValue = v18;
      result.validation.is_nil = v11;
      return result;
    case 2u:
      outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v13 = "max_item_neighborhood_size" + 0x8000000000000000;
      v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
      *v15 = 0xD000000000000031;
      *(v15 + 8) = "max_item_neighborhood_size" + 0x8000000000000000;
      *(v15 + 16) = 0;
      *(v15 + 32) = 0;
      *(v15 + 48) = 0;
      swift_willThrow();
      goto LABEL_8;
    case 3u:
      v13 = rawValue;

      v3 = 0;
      goto LABEL_8;
  }
}

uint64_t outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

Swift::tuple_training_OpaquePointer_validation_OpaquePointer_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.ValidationData.splitFiles(trainingData:)(Swift::OpaquePointer trainingData)
{
  v34 = v1;
  rawValue = trainingData._rawValue;
  v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v33 = v31;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v32 = v31;
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v31;
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v2, v31);
  switch(swift_getEnumCaseMultiPayload(v31, v9))
  {
    case 0u:
      v3 = specialized Collection.randomSplit<A, B>(strategy:)(v31[0], v31[1], v32, rawValue);
      v13 = v15;
      goto LABEL_15;
    case 1u:
      v20 = v32;
      outlined init with take of MLSoundClassifier.DataSource(v31, v32);
      v21 = v34;
      v22 = MLSoundClassifier.DataSource.labeledSounds()();
      if (v21)
      {
        goto LABEL_8;
      }

      v26 = v22;
      v3 = specialized Sequence.flatMap<A>(_:)(v22);
      v26;
      if (!*(v3 + 16))
      {
        v3;
        v13 = "uld use features." + 0x8000000000000000;
        v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
        *v30 = 0xD00000000000002ELL;
        *(v30 + 8) = "uld use features." + 0x8000000000000000;
        *(v30 + 16) = 0;
        *(v30 + 32) = 0;
        *(v30 + 48) = 0;
        swift_willThrow();
LABEL_8:
        v19 = v20;
        goto LABEL_9;
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLSoundClassifier.DataSource);
      goto LABEL_14;
    case 2u:
      v16 = v33;
      *v33 = v31[0];
      swift_storeEnumTagMultiPayload(v16, v3, 2);
      v17 = v34;
      v18 = MLSoundClassifier.DataSource.labeledSounds()();
      if (v17)
      {
        v19 = v33;
LABEL_9:
        outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLSoundClassifier.DataSource);
      }

      else
      {
        v23 = v18;
        v3 = specialized Sequence.flatMap<A>(_:)(v18);
        v23;
        outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLSoundClassifier.DataSource);
        if (*(v3 + 16))
        {
LABEL_14:
          v13 = rawValue;
        }

        else
        {
          v3;
          v13 = "uld use features." + 0x8000000000000000;
          v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
          *v25 = 0xD00000000000002ELL;
          *(v25 + 8) = "uld use features." + 0x8000000000000000;
          *(v25 + 16) = 0;
          *(v25 + 32) = 0;
          *(v25 + 48) = 0;
          swift_willThrow();
        }
      }

LABEL_15:
      v27 = v13;
      v28 = v3;
      result.validation.value._rawValue = v28;
      result.training._rawValue = v27;
      result.validation.is_nil = v14;
      return result;
    case 3u:
      v13 = rawValue;

      v3 = 0;
      goto LABEL_15;
  }
}

uint64_t MLSoundClassifier.ModelParameters.ValidationData.validate(modelParameters:)(uint64_t a1)
{
  v2 = v1;
  v12 = a1;
  v3 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v13 = &v12;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v2, &v12);
  result = swift_getEnumCaseMultiPayload(&v12, v6);
  switch(result)
  {
    case 0:
    case 3:
      return result;
    case 1:
      v11 = v13;
      outlined init with take of MLSoundClassifier.DataSource(&v12, v13);
      MLSoundClassifier.DataSource.validate(modelParameters:)(v12);
      result = outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLSoundClassifier.DataSource);
      break;
    case 2:
      result = outlined destroy of MLActivityClassifier.ModelParameters(&v12, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      break;
  }

  return result;
}

uint64_t destroy for RecommenderModel(void *a1)
{
  *a1;
  a1[1];
  a1[2];
  a1[3];
  a1[7];
  a1[8];

  v2 = a1[13];
  if (v2)
  {
    v2;
    a1[14];
  }

  a1[15];
  return a1[16];
}

uint64_t initializeWithCopy for RecommenderModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v2 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v2;
  v4 = *(a2 + 104);

  if (v4)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v4;
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t *assignWithCopy for RecommenderModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v2;
  v3 = a1[1];
  a1[1] = a2[1];

  v3;
  v4 = a1[2];
  a1[2] = a2[2];

  v4;
  v5 = a1[3];
  a1[3] = a2[3];

  v5;
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  v6 = a1[7];
  a1[7] = a2[7];

  v6;
  v7 = a1[8];
  a1[8] = a2[8];

  v7;
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v8 = a1 + 12;
  v9 = a2 + 12;
  v10 = a1[13];
  v11 = a2[13];
  if (v10)
  {
    if (v11)
    {
      a1[12] = a2[12];
      a1[13] = a2[13];

      v10;
      v12 = a1[14];
      a1[14] = a2[14];

      v12;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v8 = *v9;
      a1[14] = a2[14];
    }
  }

  else if (v11)
  {
    a1[12] = a2[12];
    a1[13] = a2[13];
    a1[14] = a2[14];
  }

  else
  {
    a1[14] = a2[14];
    *v8 = *v9;
  }

  v13 = a1[15];
  a1[15] = a2[15];

  v13;
  v14 = a1[16];
  a1[16] = a2[16];

  v14;
  a1[17] = a2[17];
  a1[18] = a2[18];
  return a1;
}

uint64_t *assignWithTake for RecommenderModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1[2];
  a1[2] = a2[2];
  v5;
  v6 = a1[3];
  a1[3] = a2[3];
  v6;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v7 = a1[7];
  a1[7] = a2[7];
  v7;
  v8 = a1[8];
  a1[8] = a2[8];
  v8;
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v9 = a1 + 12;
  v10 = a2 + 12;
  v11 = a1[13];
  if (v11)
  {
    v12 = a2[13];
    if (v12)
    {
      a1[12] = a2[12];
      a1[13] = v12;
      v11;
      v13 = a1[14];
      a1[14] = a2[14];
      v13;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v9 = *v10;
      a1[14] = a2[14];
    }
  }

  else
  {
    a1[14] = a2[14];
    *v9 = *v10;
  }

  v14 = a1[15];
  a1[15] = a2[15];
  v14;
  v15 = a1[16];
  a1[16] = a2[16];
  v15;
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for RecommenderModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for RecommenderModel(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 152) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

uint64_t type metadata completion function for Recommendation(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v7[0] = *(v1 - 8) + 64;
    v4 = swift_checkMetadataState(319, *(a1 + 24));
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v7[1] = *(v4 - 8) + 64;
      v7[2] = &value witness table for Builtin.Int64 + 64;
      v7[3] = &value witness table for Builtin.Int64 + 64;
      v2 = 0;
      swift_initStructMetadata(a1, 0, 4, v7, a1 + 32);
    }
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for Recommendation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = v7 | *(v5 + 80) & 0xF8;
  if (v8 > 7 || ((v7 | *(v5 + 80)) & 0x100000) != 0 || (v9 = ~v7, v10 = *(v5 + 64) + v7, v11 = *(v6 + 64), ((((v11 + (v9 & v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v18 = *a2;
    *a1 = *a2;

    return (v18 + (((v8 | 7) + 16) & ~(v8 | 7)));
  }

  else
  {
    v12 = v11 + 7;
    v20 = *(a3 + 24);
    v19 = *(v4 - 8);
    (*(v5 + 16))(a1);
    v13 = v9 & (a1 + v10);
    v14 = v9 & (a2 + v10);
    (*(v19 + 16))(v13, v14, v20);
    result = a1;
    v16 = ((v12 + v13) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return result;
}

uint64_t destroy for Recommendation(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  (*(v2 + 8))(a1);
  return (*(*(*(a2 + 24) - 8) + 8))((*(*(*(a2 + 24) - 8) + 80) + *(v2 + 64) + a1) & ~*(*(*(a2 + 24) - 8) + 80));
}

uint64_t initializeWithCopy for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 16))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 24))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 32))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for Recommendation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(a1);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = v6 + *(v4 + 64);
  v8 = ~v6;
  v9 = v8 & (v7 + a1);
  v10 = v8 & (a2 + v7);
  (*(v5 + 40))(v9, v10);
  v11 = *(v5 + 64);
  v12 = ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for Recommendation(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  v10 = v7;
  if (v9 > v7)
  {
    v10 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = ~*(v8 + 80);
  v12 = *(v6 + 64) + *(v8 + 80);
  if (v10 < a2)
  {
    v13 = ((((*(v8 + 64) + (v11 & v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = a2 - v10 + 1;
    v15 = 2;
    if ((v13 & 0xFFFFFFF8) == 0)
    {
      v15 = v14;
    }

    v16 = 1;
    if (v15 >= 0x100)
    {
      v16 = 2 * (v15 >= &loc_10000) + 2;
    }

    result = 0;
    if (v15 < 2)
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 0:
        goto LABEL_20;
      case 1:
        v18 = *(a1 + v13);
        goto LABEL_16;
      case 2:
        v18 = *(a1 + v13);
        goto LABEL_16;
      case 3:
        BUG();
      case 4:
        v18 = *(a1 + v13);
LABEL_16:
        if (v18)
        {
          v19 = v18 - 1;
          v20 = 0;
          if ((v13 & 0xFFFFFFF8) != 0)
          {
            v19 = 0;
            v20 = *a1;
          }

          return v10 + (v19 | v20) + 1;
        }

LABEL_20:
        if (!v10)
        {
          return result;
        }

        break;
    }
  }

  if (v7 >= v9)
  {
    v9 = v7;
    v5 = v4;
  }

  else
  {
    a1 = (v11 & (a1 + v12));
  }

  return __swift_getEnumTagSinglePayload(a1, v9, v5);
}

uint64_t storeEnumTagSinglePayload for Recommendation(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = *(result - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = v9;
  if (v11 > v9)
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ~v13;
  v16 = (((((v15 & v14) + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = 0;
  v18 = 1;
  if (v12 < a3)
  {
    v19 = a3 - v12 + 1;
    v20 = 2;
    if (!v16)
    {
      v20 = v19;
    }

    v21 = 2 * (v20 >= &loc_10000) + 2;
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    v17 = 0;
    if (v20 >= 2)
    {
      v17 = v21;
    }
  }

  if (a2 > v12)
  {
    if (v16)
    {
      __bzero(a1, v16);
      *a1 = a2 + ~v12;
    }

    else
    {
      v18 = a2 - v12;
    }

    result = v17;
    switch(v17)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v16) = v18;
        return result;
      case 2u:
        *(a1 + v16) = v18;
        return result;
      case 3u:
        goto LABEL_28;
      case 4u:
        *(a1 + v16) = v18;
        return result;
    }
  }

  switch(v17)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v16) = 0;
      break;
    case 2u:
      *(a1 + v16) = 0;
      break;
    case 3u:
LABEL_28:
      BUG();
    case 4u:
      *(a1 + v16) = 0;
      break;
  }

  if (a2)
  {
    if (v9 >= v11)
    {
      v22 = a1;
      v11 = v9;
      v7 = result;
    }

    else
    {
      v22 = (v15 & (a1 + v14));
    }

    return __swift_storeEnumTagSinglePayload(v22, a2, v11, v7);
  }

  return result;
}

uint64_t Dictionary<>.updateValue(tensor:forKey:prefix:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v46 = a4;
  v47 = a3;
  v7 = type metadata accessor for TensorShape(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v38 = v5;
  v11._countAndFlagsBits = a2;
  v11._object = v47;
  v40 = Dictionary<>.getTensorNames(forKey:prefix:)(v11, v46, v49);
  v39 = v12;
  v43 = v13;
  v42 = v14;
  v47 = a1;
  Tensor.shape.getter(v11._countAndFlagsBits, v11._object, v12);
  v15 = lazy protocol witness table accessor for type TensorShape and conformance TensorShape();
  v16 = dispatch thunk of Collection.count.getter(v7, v15);
  if (v16)
  {
    v17 = v16;
    v45 = _swiftEmptyArrayStorage;
    v18 = 0;
    if (v16 > 0)
    {
      v18 = v16;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v48 = v45;
    v44 = v36;
    v49 = v7;
    v19 = v15;
    dispatch thunk of Collection.startIndex.getter(v7, v15);
    if (v17 < 0)
    {
      BUG();
    }

    v46 = v17;
    v7 = v49;
    v20 = v44;
    v21 = v48;
    do
    {
      v22 = dispatch thunk of Collection.subscript.read(v36, v37, v7, v19);
      v49 = *v23;
      v22(v36, 0);
      v45 = v21;
      v24 = v19;
      v25 = v21[2];
      v26 = v21[3];
      v27 = v25 + 1;
      if (v26 >> 1 <= v25)
      {
        v48 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v27, 1);
        v24 = v48;
        v20 = v44;
        v21 = v45;
      }

      v28 = v49;
      v21[2] = v27;
      *&v21[v25 + 4] = v28;
      v19 = v24;
      dispatch thunk of Collection.formIndex(after:)(v37, v7, v24);
      --v46;
    }

    while (v46);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    v20 = v36;
  }

  (*(v41 + 8))(v20, v7);
  v29 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v38);
  v36[0] = *v29;
  v31 = v42;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v43, v42, isUniquelyReferenced_nonNull_native);
  v31;
  *v29 = v36[0];
  v32 = Tensor.scalars<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
  v33 = swift_isUniquelyReferenced_nonNull_native(*v29);
  v36[0] = *v29;
  v34 = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v40, v39, v33);
  v34;
  result = v36[0];
  *v29 = v36[0];
  return result;
}

uint64_t Dictionary<>.getTensorNames(forKey:prefix:)(Swift::String a1, uint64_t a2, uint64_t a3)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (a3)
  {

    v5._countAndFlagsBits = 46;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = object;
    String.append(_:)(v5);
    countAndFlagsBits = a2;
  }

  else
  {
  }

  v6._countAndFlagsBits = 0x65706168732ELL;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  return countAndFlagsBits;
}

uint64_t lazy protocol witness table accessor for type TensorShape and conformance TensorShape()
{
  result = lazy protocol witness table cache variable for type TensorShape and conformance TensorShape;
  if (!lazy protocol witness table cache variable for type TensorShape and conformance TensorShape)
  {
    v1 = type metadata accessor for TensorShape(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TensorShape, v1);
    lazy protocol witness table cache variable for type TensorShape and conformance TensorShape = result;
  }

  return result;
}

uint64_t Dictionary<>.tensor(forKey:prefix:)(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = v5;
  v54 = a3;
  v50 = v4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v47 = &v47;
  v54 = Dictionary<>.getTensorNames(forKey:prefix:)(a1, a2, v54);
  v12 = v11;
  LOBYTE(a2) = v13;
  v15 = specialized Dictionary.subscript.getter(v14, v13, a4);
  a2;
  if (!v15)
  {
    v32 = v12;
LABEL_24:
    v32;
    v36 = type metadata accessor for Tensor(0);
    return __swift_storeEnumTagSinglePayload(v50, 1, 1, v36);
  }

  v53 = v15;
  v16 = specialized Dictionary.subscript.getter(v54, v12, a4);
  v12;
  if (!v16)
  {
    v32 = v53;
    goto LABEL_24;
  }

  v17 = v53;
  v18 = *(v53 + 16);
  if (!v18 || (v19 = *(v53 + 32), v19.f64[0] < 1.0) || (v20 = _mm_or_pd(_mm_and_pd(xmmword_33DFE0, v19), xmmword_345A50), v20.f64[0] = v20.f64[0] + v19.f64[0], _mm_round_sd(v20, v20, 11).f64[0] != v19.f64[0]))
  {
LABEL_21:
    v16;
    v33 = specialized _arrayForceCast<A, B>(_:)(v17);
    v17;
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    static MLCreateError.invalidTensorDimensions(value:)(v33);
    v33;
    return swift_willThrow();
  }

  if (v18 != 1)
  {
    v21 = 5;
    do
    {
      v22 = v21 - 4 + 1;
      if (__OFADD__(1, v21 - 4))
      {
        BUG();
      }

      v23 = *(v53 + 8 * v21);
      if (v23.f64[0] < 1.0)
      {
        goto LABEL_21;
      }

      v24 = _mm_or_pd(_mm_and_pd(v23, xmmword_33DFE0), xmmword_345A50);
      v24.f64[0] = v24.f64[0] + v23.f64[0];
      if (_mm_round_sd(v24, v24, 11).f64[0] != v23.f64[0])
      {
        goto LABEL_21;
      }

      ++v21;
    }

    while (v22 != v18);
  }

  v48 = v16;
  v51 = _swiftEmptyArrayStorage;
  v25 = 0;
  v54 = v18;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
  v26 = v54;
  v27 = v53;
  v28 = v51;
  do
  {
    v29 = *(v27 + 8 * v25 + 32);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      BUG();
    }

    if (v29 <= -9.223372036854778e18)
    {
      BUG();
    }

    if (v29 >= 9.223372036854776e18)
    {
      BUG();
    }

    v51 = v28;
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    if (v31 >> 1 <= v30)
    {
      v49 = v29;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 >= 2, v30 + 1, 1);
      v29 = v49;
      v26 = v54;
      v27 = v53;
      v28 = v51;
    }

    ++v25;
    *(v28 + 16) = v30 + 1;
    *(v28 + 8 * v30 + 32) = v29;
  }

  while (v26 != v25);
  v27;
  v37 = *(v28 + 16);
  v38 = 1;
  if (v37)
  {
    for (i = 0; i != v37; ++i)
    {
      v40 = v38;
      v38 *= *(v28 + 8 * i + 32);
      if (!is_mul_ok(*(v28 + 8 * i + 32), v40))
      {
        BUG();
      }
    }
  }

  v41 = v48;
  if (*(v48 + 16) != v38)
  {
    v48;

    v46 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v46, 0, 0);
    static MLCreateError.invalidTensorSize(expected:actual:)();
    return swift_willThrow();
  }

  v42 = v47;
  TensorShape.init(_:)(v28);
  v43 = type metadata accessor for TensorShape(0);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  v44 = v50;
  Array<A>.floatTensor(shape:)(v42, v41, -9.223372036854778e18, 9.223372036854776e18);
  v41;
  outlined destroy of TensorShape?(v42);
  v45 = type metadata accessor for Tensor(0);
  return __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
}

uint64_t static MLCreateError.invalidTensorDimensions(value:)(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(29);
  0;
  *&v7 = 0xD00000000000001BLL;
  *(&v7 + 1) = "Invalid tensor size: expected " + 0x8000000000000000;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Numeric);
  v4._countAndFlagsBits = Array.description.getter(a1, v3);
  object = v4._object;
  String.append(_:)(v4);
  result = object;
  *v2 = v7;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  return result;
}

uint64_t static MLCreateError.invalidTensorSize(expected:actual:)()
{
  v1 = v0;
  _StringGuts.grow(_:)(43);
  0;
  *&v8 = 0xD00000000000001ELL;
  *(&v8 + 1) = "d validation should use files." + 0x8000000000000000;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 0x6C6175746361202CLL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  result = v6;
  *v1 = v8;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  return result;
}

char *static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = DataFrame.columns.getter(a1);
  v7 = v6;
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v6);
  v7;
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v10 = specialized Collection<>.firstIndex(of:)(v9, MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  if (v11)
  {
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    _StringGuts.grow(_:)(53);
    v12._countAndFlagsBits = 0x6320746567726154;
    v12._object = 0xEF27206E6D756C6FLL;
    String.append(_:)(v12);
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    v12._object = "Invalid tensor dimensions: " + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v12);
    v13 = 0;
    v14 = 0xE000000000000000;
LABEL_8:
    v21 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v21, 0, 0);
    *v22 = v13;
    *(v22 + 8) = v14;
    *(v22 + 16) = 0;
    *(v22 + 32) = 0;
    *(v22 + 48) = 1;
    swift_willThrow();
    return v14;
  }

  v15 = v10;
  if (!swift_isUniquelyReferenced_nonNull_native(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n))
  {
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = specialized _ArrayBuffer._consumeAndCreateNew()(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  }

  v16 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2];
  if (v15 >= v16)
  {
    BUG();
  }

  v17 = v16 - 1;
  v18 = v17 - v15;
  v19 = 2 * v15;
  v20 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[v19 + 5];
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[v19 + 6], v18, &MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[v19 + 4]);
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2] = v17;
  v20;
  v14 = static _FeatureUtilities.selectFeatures(from:select:)(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n, a4);
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
  if (!*(v14 + 2))
  {
    v14;
    v14 = " in the given table." + 0x8000000000000000;
    v13 = 0xD000000000000038;
    goto LABEL_8;
  }

  return v14;
}

void *static _FeatureUtilities.selectFeatures(from:select:)(void *a1, uint64_t a2)
{
  v2 = a1;
  if (!a2)
  {

    return v2;
  }

  v20 = *(a2 + 16);
  if (!v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = a1[2];
  v21 = a2 + 32;
  v22 = a2;

  v23 = a1 + 9;
  v2 = _swiftEmptyArrayStorage;
  for (i = 0; i != v20; ++i)
  {
    v24 = v2;
    v4 = *(v21 + 16 * i);
    v5 = *(v21 + 16 * i + 8);
    if (!v27)
    {
LABEL_13:
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(66);
      v10._countAndFlagsBits = 0x27206E6D756C6F43;
      v10._object = 0xE800000000000000;
      String.append(_:)(v10);
      v10._countAndFlagsBits = v4;
      v10._object = v5;
      String.append(_:)(v10);
      v5;
      v10._countAndFlagsBits = 0xD000000000000038;
      v10._object = "ven training data frame." + 0x8000000000000000;
      String.append(_:)(v10);
      static os_log_type_t.error.getter(0xD000000000000038);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v12 = swift_allocObject(v11, 64, 7);
      *(v12 + 16) = 1;
      *(v12 + 24) = 2;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 32) = v26;

      print(_:separator:terminator:)(v12, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v12;
      type metadata accessor for OS_os_log();
      v13 = static OS_os_log.default.getter(0, 32);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v15 = swift_allocObject(v14, 72, 7);
      *(v15 + 16) = 1;
      *(v15 + 24) = 2;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v15 + 32) = v26;

      os_log(_:dso:log:type:_:)("%@\n");
      0;

      v15;
      v2 = v24;
      continue;
    }

    if (v4 ^ a1[4] | v5 ^ a1[5] && (_stringCompareWithSmolCheck(_:_:expecting:)(a1[4], a1[5], *(v21 + 16 * i), *(v21 + 16 * i + 8), 0) & 1) == 0)
    {
      if (v27 == 1)
      {
        goto LABEL_13;
      }

      if (v4 ^ a1[6] | v5 ^ a1[7] && (_stringCompareWithSmolCheck(_:_:expecting:)(a1[6], a1[7], v4, v5, 0) & 1) == 0)
      {
        if (v27 == 2)
        {
          goto LABEL_13;
        }

        v16 = v23;
        v17 = 2;
        while (1)
        {
          if (__OFADD__(1, v17++))
          {
            BUG();
          }

          if (!(v4 ^ *(v16 - 1) | v5 ^ *v16) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v16 - 1), *v16, v4, v5, 0) & 1) != 0)
          {
            break;
          }

          v16 += 2;
          if (v17 == v27)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v6 = v24;
    if (!swift_isUniquelyReferenced_nonNull_native(v24))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
    }

    v7 = v6[2];
    v8 = v6;
    if (v6[3] >> 1 <= v7)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
    }

    v8[2] = v7 + 1;
    v2 = v8;
    v9 = 2 * v7;
    v8[v9 + 4] = v4;
    v8[v9 + 5] = v5;
  }

  v22;
  return v2;
}

Swift::Int MLBoundingBoxCoordinatesOrigin.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin()
{
  result = lazy protocol witness table cache variable for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin;
  if (!lazy protocol witness table cache variable for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLBoundingBoxCoordinatesOrigin, &type metadata for MLBoundingBoxCoordinatesOrigin);
    lazy protocol witness table cache variable for type MLBoundingBoxCoordinatesOrigin and conformance MLBoundingBoxCoordinatesOrigin = result;
  }

  return result;
}

id _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = specialized NSLocking.withLock<A>(_:)(partial apply for specialized closure #1 in EventCollector.getLast<A>(metric:type:));

  return v3;
}

unsigned __int8 specialized NSLocking.withLock<A>(_:)(void (*a1)(void))
{
  [v2 lock];
  a1();
  if (v1)
  {
    return [v2 unlock];
  }

  [v2 unlock];
  return v4;
}

id specialized NSLocking.withLock<A>(_:)(void (*a1)(void))
{
  [v2 lock];
  a1();
  if (v1)
  {
    return [v2 unlock];
  }

  [v2 unlock];
  return v4;
}

{
  [v1 lock];
  a1();
  return [v1 unlock];
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Event(0) - 8);
  v7 = v5 - 1;
  v8 = v7 * *(v6 + 72) + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + a3;
  v12 = -*(v6 + 72);
  while (1)
  {
    v9 = a1(v8);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    v8 += v12;
    if (v7-- == 0)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized closure #1 in EventCollector.getLast<A>(metric:type:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Event?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(a1 + 24);
  v19 = a2;
  v13 = a2;
  *&v17[0] = v5;

  v6 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for closure #1 in closure #1 in EventCollector.getLast<A>(metric:type:), v12, v5);
  v15 = v17;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_18CreateMLComponents5EventVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v14, v6, v7 & 1, v16);
  v5;
  v8 = type metadata accessor for Event(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Event?);
    memset(v17, 0, sizeof(v17));
  }

  else
  {
    v9 = Event.metrics.getter();
    (*(*(v8 - 8) + 8))(v12, v8);
    specialized Dictionary.subscript.getter(v19, v9);
    v9;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable?);
  if (swift_dynamicCast(&v18, v17, v10, &type metadata for Double, 6))
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

{
  v4 = v2;
  result = specialized closure #1 in EventCollector.getLast<A>(metric:type:)(a1, a2);
  if (!v3)
  {
    *v4 = result;
    *(v4 + 8) = v6 & 1;
  }

  return result;
}

uint64_t TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()(v2);
  v4 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  v7 = type metadata accessor for TreeRegressor(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  v9 = type metadata accessor for TreeRegressorModel(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v1 + v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v1 + v11 + 16) = -1;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

void (**TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7))(uint64_t, uint64_t, uint64_t)
{
  v81 = v7;
  v77 = a6;
  v82 = a5;
  v69 = a4;
  v76 = a2;
  v70 = a1;
  v83 = *v8;
  v84 = type metadata accessor for BoostedTreeConfiguration(0);
  v78 = *(v84 - 8);
  v10 = *(v78 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v66 = &v63;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v71 = &v63;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v65 = &v63;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v67 = &v63;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v74 = &v63;
  v24 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v79 = &v63;
  v28 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  v68 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  v80 = v24;
  __swift_storeEnumTagSinglePayload(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, 1, 1, v24);
  DataFrame.init()(v28);
  v29 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  v85 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v85);
  v30 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  v73 = type metadata accessor for TreeRegressor(0);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v73);
  v31 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  v32 = type metadata accessor for TreeRegressorModel(0);
  v33 = v31;
  v34 = v70;
  v35 = v69;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v32);
  v36 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v8 + v36 + 16) = -1;
  v37 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v8 + v37 + 16) = -1;
  v72 = a3;
  v38 = a3;
  v39 = v82;
  v40 = v81;
  v41 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v34, v38, v35, v82);
  v81 = v40;
  if (v40)
  {
    v35;
    v39;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    (*(v78 + 8))(v77, v84);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for DataFrame?);
    v42 = v85;
    v43 = *(*(v85 - 8) + 8);
    v43(v34, v85);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v43(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v42);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for TreeRegressor?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for TreeRegressorModel?);
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16));
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));
    swift_deallocPartialClassInstance(v8, v83, *(*v8 + 48), *(*v8 + 52));
  }

  else
  {
    v75 = v41;
    v39;
    v82 = *(v85 - 8);
    v44 = v79;
    (*(v82 + 16))(v79, v34);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, v74, &demangling cache variable for type metadata for DataFrame?);
    v45 = v44 + v80[8];
    v83 = *(v78 + 16);
    v83(v45, v77, v84);
    v46 = v35;
    v47 = v44 + v80[5];
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v85);

    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v74, v47, &demangling cache variable for type metadata for DataFrame?);
    v48 = v80;
    v49 = v80[6];
    v50 = v79;
    *(v79 + v49) = v72;
    *(v50 + v49 + 8) = v46;
    v51 = v75;
    *(v50 + *(v48 + 28)) = v75;
    v52 = v67;
    outlined init with copy of MLActivityClassifier.Model(v50, v67, type metadata accessor for PersistentParametersForTreeBasedMethods);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v48);
    v53 = v68;
    swift_beginAccess(v68, v64, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v52, v53, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    swift_endAccess(v64);
    outlined init with copy of MLActivityClassifier.Model(a7, v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    v54 = v51;
    v55 = v51;

    v56 = v71;
    BoostedTreeConfiguration.init()(v55);
    v57 = v65;
    *v65 = v72;
    v57[1] = v69;
    v57[2] = v54;
    v57[3] = v54;
    v57[4] = 0xD000000000000013;
    v57[5] = ("raining samples." + 0x8000000000000000);
    v58 = v66;
    v83(v66, v56, v84);

    BaseTreeRegressor.init(configuration:)(v58);
    v59 = *(v78 + 8);
    v60 = v84;
    v59(v71, v84);
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    v59(v77, v60);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for DataFrame?);
    (*(v82 + 8))(v70, v85);
    outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for PersistentParametersForTreeBasedMethods);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v73);
    v61 = v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
    swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, v64, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v57, v61, &demangling cache variable for type metadata for TreeRegressor?);
    swift_endAccess(v64);
  }

  return v8;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeRegressorTrainingSessionDelegate.setUp()()
{
  v56 = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v50 = v46;
  v59 = type metadata accessor for BoostedTreeConfiguration(0);
  v57 = *(v59 - 8);
  v4 = *(v57 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v52 = v46;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v51 = v46;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v53 = v46;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v54 = v46;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v48 = v46;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = v56 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v56 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, v46, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v46, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v58 = v19;
  if (__swift_getEnumTagSinglePayload(v46, 1, v19) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v46, v46, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v24 = v56;
  v25 = v56 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v56 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v47, 33, 0);
  v26 = type metadata accessor for DataFrame(0);
  (*(*(v26 - 8) + 24))(v25, v46, v26);
  swift_endAccess(v47);
  v27 = &v46[v58[5]];
  v28 = v24 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v24 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, v47, 33, 0);
  outlined assign with copy of DataFrame?(v27, v28);
  swift_endAccess(v47);
  v29 = v58[6];
  v55 = v46;
  v60 = *&v46[v29];
  v30 = *&v46[v29 + 8];
  v31 = *&v46[v58[7]];

  v32 = v53;
  BoostedTreeConfiguration.init()(v31);
  v33 = v48;
  *v48 = v60;
  v33[1] = v30;
  v33[2] = v31;
  v33[3] = v31;
  v33[4] = 0xD000000000000013;
  v33[5] = "raining samples." + 0x8000000000000000;
  v49 = *(v57 + 16);
  v49(v51, v32, v59);
  v60 = type metadata accessor for TreeRegressor(0);

  BaseTreeRegressor.init(configuration:)(v51);
  v34 = v59;
  v57 = *(v57 + 8);
  (v57)(v32, v59);
  v35 = v60;
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v60);
  v36 = v56 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v56 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, v47, 33, 0);
  v37 = v33;
  v38 = v49;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v37, v36, &demangling cache variable for type metadata for TreeRegressor?);
  v38(v52, &v55[v58[8]], v34);
  if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
  {
    BUG();
  }

  v39 = v53;
  v40 = v52;
  v38(v53, v52, v59);
  BaseTreeRegressor.configuration.setter(v39);
  (v57)(v40, v59);
  swift_endAccess(v47);
  v41 = v36;
  v42 = v54;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v54, &demangling cache variable for type metadata for TreeRegressor?);
  if (__swift_getEnumTagSinglePayload(v42, 1, v60) == 1)
  {
    BUG();
  }

  v58 = *v42;
  v43 = v42[1];
  v59 = type metadata accessor for TreeRegressorModel(0);
  v44 = v50;

  BaseTreeRegressor.makeTransformer()(v43);
  *v44 = v58;
  *(v44 + 8) = v43;
  *(v44 + 16) = 0;
  *(v44 + 32) = 0;
  outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for TreeRegressor);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v59);
  v45 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v56;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v56, v47, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v44, v45, &demangling cache variable for type metadata for TreeRegressorModel?);
  swift_endAccess(v47);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeRegressorTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v70 = v1;
  v76 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v69 = v62;
  v71 = type metadata accessor for BoostedTreeConfiguration(0);
  v72 = *(v71 - 8);
  v6 = *(v72 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = v62;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v73 = v62;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v65 = v62;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v67 = v62;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v74 = v62;
  v64 = type metadata accessor for MLCheckpoint(0);
  v19 = *(*(v64 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v75 = v62;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, v62, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v62, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v68 = v25;
  if (__swift_getEnumTagSinglePayload(v62, 1, v25) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v62, v62, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v30 = v74;
  specialized BidirectionalCollection.last.getter(rawValue);
  v31 = v64;
  if (__swift_getEnumTagSinglePayload(v30, 1, v64) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLCheckpoint?);
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v33 = 0xD00000000000001DLL;
    *(v33 + 8) = "reated." + 0x8000000000000000;
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 48) = 0;
    swift_willThrow();
LABEL_16:
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for PersistentParametersForTreeBasedMethods);
    return;
  }

  v34 = 0xEB0000000064657ALL;
  v35 = v30;
  v36 = v75;
  outlined init with take of MLClassifierMetrics(v35, v75, type metadata accessor for MLCheckpoint);
  switch(*(v36 + *(v31 + 20)))
  {
    case 0:
      v37 = 0x696C616974696E69;
      break;
    case 1:
      v37 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0;
      goto LABEL_12;
    case 3:
      v37 = 0x697461756C617665;
LABEL_10:
      v34 = 0xEA0000000000676ELL;
      break;
    case 4:
      v34 = 0xEB00000000676E69;
      v37 = 0x636E657265666E69;
      break;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)(v37, v34, 0x676E696E69617274, 0xE800000000000000, 0);
  v34;
  if ((v38 & 1) == 0)
  {
    v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
    *v61 = 0xD000000000000028;
    *(v61 + 8) = "" + 0x8000000000000000;
    *(v61 + 16) = 0;
    *(v61 + 32) = 0;
    *(v61 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLCheckpoint);
    goto LABEL_16;
  }

LABEL_12:
  v39 = v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v63, 33, 0);
  v40 = type metadata accessor for DataFrame(0);
  (*(*(v40 - 8) + 24))(v39, v62, v40);
  swift_endAccess(v63);
  v41 = v68;
  v42 = &v62[*(v68 + 20)];
  v43 = v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, v63, 33, 0);
  outlined assign with copy of DataFrame?(v42, v43);
  swift_endAccess(v63);
  v44 = *(v41 + 24);
  rawValue = *&v62[v44];
  v45 = *&v62[v44 + 8];
  v46 = *(v41 + 28);
  v74 = v62;
  v47 = *&v62[v46];

  v48 = v73;
  BoostedTreeConfiguration.init()(v47);
  v49 = v67;
  *v67 = rawValue;
  v49[1] = v45;
  v49[2] = v47;
  v49[3] = v47;
  v49[4] = 0xD000000000000013;
  v49[5] = "raining samples." + 0x8000000000000000;
  v50 = v66;
  (*(v72 + 16))(v66, v48, v71);
  rawValue = type metadata accessor for TreeRegressor(0);

  BaseTreeRegressor.init(configuration:)(v50);
  (*(v72 + 8))(v73, v71);
  v51 = rawValue;
  __swift_storeEnumTagSinglePayload(v49, 0, 1, rawValue);
  v52 = v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v76 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, v63, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v49, v52, &demangling cache variable for type metadata for TreeRegressor?);
  swift_endAccess(v63);
  v53 = v65;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, v65, &demangling cache variable for type metadata for TreeRegressor?);
  if (__swift_getEnumTagSinglePayload(v53, 1, v51) == 1)
  {
    BUG();
  }

  v54 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
  v55 = v69;
  v56 = v75;
  v57 = v70;
  SupervisedTabularEstimator.read(from:)(v75, v51, v54);
  outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for TreeRegressor);
  if (!v57)
  {
    v58 = type metadata accessor for TreeRegressorModel(0);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v58);
    v59 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v76;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v76, v63, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v55, v59, &demangling cache variable for type metadata for TreeRegressorModel?);
    swift_endAccess(v63);
  }
}

Swift::Int_optional __swiftcall TreeRegressorTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  if (*phase == 2)
  {
    v2 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters + v1;
    v3 = 0;
    v4.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v2);
  }

  else
  {
    v3 = 1;
    v4.value = 0;
  }

  v4.is_nil = v3;
  return v4;
}

uint64_t TreeRegressorTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[19] = v1;
  v2[18] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v2[22] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnyColumn(0);
  v2[23] = v5;
  v6 = *(v5 - 8);
  v2[24] = v6;
  v2[25] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v2[26] = v7;
  v8 = *(v7 - 8);
  v2[27] = v8;
  v2[28] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataFrame(0);
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[31] = swift_task_alloc(v11);
  v2[32] = swift_task_alloc(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?);
  v2[33] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[34] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[35] = swift_task_alloc((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeRegressorTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t TreeRegressorTrainingSessionDelegate.train(from:)(float a1)
{
  v2 = v1[35];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v1[19];
  swift_beginAccess(v3, (v1 + 2), 0, 0);
  v81 = v3;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for TreeRegressorModel?);
  v68 = type metadata accessor for TreeRegressorModel(0);
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v2, 1, v68);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for TreeRegressorModel?);
  if (v3 == 1)
  {
    BUG();
  }

  v4 = v1[34];
  v5 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v1[19];
  swift_beginAccess(v5, (v1 + 5), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5, v4, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v4, 1, v6);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (v5 == 1)
  {
    BUG();
  }

  v7 = v1[18];
  v8 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters + v1[19];
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = *(*(v9 + 20) + v8);
  v11 = v10 + v7;
  if (__OFADD__(v10, v7))
  {
    BUG();
  }

  v12 = *(v8 + *(v9 + 28));
  v13 = v12 - v7;
  if (__OFSUB__(v12, v7))
  {
    BUG();
  }

  v65 = v12;
  v14 = v1;
  v15 = (v1 + 8);
  v16 = (v14 + 11);
  v72 = (v14 + 14);
  v66 = v14;
  v57 = (v14 + 17);
  if (v10 < v13)
  {
    v13 = v10;
  }

  v17 = type metadata accessor for EventCollector();
  swift_allocObject(v17, 32, 7);
  v18 = EventCollector.init()();
  if (v13 < 0)
  {
    BUG();
  }

  v61 = v11;
  v67 = v18;
  v64 = v13;
  if (v13)
  {
    v62 = v66[33];
    v19 = v66[30];
    v63 = v66[27];
    v20 = v66[19];
    v60 = v66[24];
    v21 = v20 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor;
    v22 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData + v20;
    v58 = v21;
    swift_beginAccess(v21, v15, 0, 0);
    v59 = v22;
    v23 = v22;
    v24 = v19;
    swift_beginAccess(v23, v16, 0, 0);
    v25 = v13;
    v70 = v24;
    do
    {
      v56 = v25;
      v26 = v66[33];
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v58, v26, &demangling cache variable for type metadata for TreeRegressor?);
      v27 = type metadata accessor for TreeRegressor(0);
      if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
      {
        BUG();
      }

      (*(v24 + 16))(v66[32], v59, v66[29]);
      swift_beginAccess(v81, v72, 33, 0);
      if (__swift_getEnumTagSinglePayload(v81, 1, v68) == 1)
      {
        BUG();
      }

      ML16ColumnDescriptorVsAE_pTg5 = v81[2];
      if (ML16ColumnDescriptorVsAE_pTg5)
      {
      }

      else
      {
        v29 = v66[32];
        v30 = *(v62 + 16);
        v31 = swift_task_alloc(32);
        *(v31 + 16) = v29;

        ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), v31, v30);
        v30;
        v31;
        v81[2] = ML16ColumnDescriptorVsAE_pTg5;
        v81[3] = 0xD000000000000013;
        v81[4] = "raining samples." + 0x8000000000000000;
      }

      ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(ML16ColumnDescriptorVsAE_pTg5);
      ML16ColumnDescriptorVsAE_pTg5;
      v66[17] = ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v34 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
      DataFrame.selecting<A>(columnNames:)(v57, v33, v34);
      ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
      _s11TabularData0B5FrameV8CreateMLE8asMatrix2of11descriptors13includingBias0D12MLComponents05DenseG0VyxGxm_SayAD16ColumnDescriptorVGSbtKSBRzlFSf_Tt0g5(ML16ColumnDescriptorVsAE_pTg5, 0, a1);
      v35 = v66[33];
      v78 = v66[23];
      v36 = v66[25];
      v74 = *(v70 + 8);
      v74(v66[31], v66[29]);
      DataFrame.subscript.getter(*v35, *(v62 + 8));
      v37 = AnyColumn.convertedToFloats()();
      (*(v60 + 8))(v36, v78);
      if (!v37)
      {
        BUG();
      }

      BaseTreeRegressor.update(_:features:annotations:eventHandler:)(v81 + *(v68 + 24), v66[28], v37, partial apply for closure #1 in LinearRegressorTrainingSessionDelegate.train(from:), v67);
      v79 = v66[33];
      v76 = v66[32];
      v38 = v66[29];
      (*(v63 + 8))(v66[28], v66[26]);

      swift_endAccess(v72);

      v74(v76, v38);
      outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for TreeRegressor);
      v25 = v56 - 1;
      v24 = v70;
    }

    while (v56 != 1);
  }

  v39 = v66[22];
  v40 = v66[20];
  v41 = v66[21];
  static MetricsKey.trainingMaximumError.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v39);
  v44 = v43;
  v45 = *(v41 + 8);
  v45(v39, v40);
  v82 = v45;
  if ((v44 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(8, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v47 = v66[20];
  v48 = v66[22];
  static MetricsKey.trainingError.getter();
  v49 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v48);
  v51 = v50;
  v82(v48, v47);
  if ((v51 & 1) == 0)
  {
    v52 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(7, v52, *&v49);
  }

  v53 = v66[35];
  v54 = v66[34];
  v77 = v66[33];
  v75 = v66[32];
  v80 = v66[31];
  v71 = v66[28];
  v73 = v66[22];
  v69 = v66[25];
  v83 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

  _swiftEmptyDictionarySingleton;
  v53;
  v54;
  v77;
  v75;
  v80;
  v71;
  v69;
  v73;
  return (v66[1])(v64, v83, v61 >= v65);
}

uint64_t TreeRegressorTrainingSessionDelegate.evaluate(from:)()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[26] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v1[29] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[32] = swift_task_alloc(v7);
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v8 = type metadata accessor for DataFrame(0);
  v1[36] = v8;
  v9 = *(v8 - 8);
  v1[37] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[38] = swift_task_alloc(v10);
  v1[39] = swift_task_alloc(v10);
  v1[40] = swift_task_alloc(v10);
  v1[41] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v1[42] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TreeRegressorModel(0);
  v1[43] = v12;
  v1[44] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeRegressorTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + *(v0 + 200);
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for TreeRegressorModel?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 336), &demangling cache variable for type metadata for TreeRegressorModel?);
LABEL_5:
    v77 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 200);
  outlined init with take of MLClassifierMetrics(*(v0 + 336), *(v0 + 352), type metadata accessor for TreeRegressorModel);
  v5 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v4;
  swift_beginAccess(v5, v0 + 40, 0, 0);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 352), type metadata accessor for TreeRegressorModel);
    goto LABEL_5;
  }

  v68 = *(v0 + 320);
  v81 = *(v0 + 296);
  v73 = *(v0 + 288);
  v12 = *(v6 + 24);
  v64 = *(v5 + v12);
  v13 = *(v5 + v12 + 8);
  v14 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData + *(v0 + 200);
  swift_beginAccess(v14, v0 + 64, 0, 0);
  v60 = v14;
  (*(v81 + 16))(v68, v14, v73);

  TreeRegressorModel.applied(to:eventHandler:)(v68, 0, 0);
  v42 = *(v0 + 288);
  v69 = *(v0 + 280);
  v74 = *(v0 + 272);
  v48 = *(v0 + 240);
  v15 = *(v0 + 232);
  v58 = v13;
  v16 = *(v0 + 224);
  v82 = *(v0 + 216);
  v50 = *(v0 + 200);
  v44 = *(v0 + 208);
  v54 = *(*(v0 + 296) + 8);
  (v54)(*(v0 + 320));
  DataFrame.subscript.getter(v64, v13, &type metadata for Double);
  *(v0 + 136) = 0;
  v56 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  OptionalColumnProtocol.filled(with:)(v0 + 136, v82, v56);
  v17 = *(v16 + 8);
  v17(v15, v82);
  swift_beginAccess(v60, v0 + 88, 32, 0);
  DataFrame.subscript.getter(v64, v13, &type metadata for Double);
  swift_endAccess(v0 + 88);
  *(v0 + 144) = 0;
  OptionalColumnProtocol.filled(with:)(v0 + 144, v82, v56);
  v53 = v17;
  v17(v15, v82);
  v83 = lazy protocol witness table accessor for type Double and conformance Double();
  v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
  maximumAbsoluteError<A, B, C>(_:_:)(v69, v74, &type metadata for Double, v48, v48, v83, v18, v18);
  v61 = *(v0 + 152);
  rootMeanSquaredError<A, B, C>(_:_:)(v69, v74, &type metadata for Double, v48, v48, v83, v18, v18);
  v19 = *(v0 + 160);
  v20 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v21 = *(v50 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v22 = *(v50 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  *(v50 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics) = v61;
  *(v50 + v20 + 8) = v19;
  v23 = *(v50 + v20 + 16);
  *(v50 + v20 + 16) = 0;
  outlined consume of MLRegressorMetrics?(v21, v22, v23);
  v24 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData + v50;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData + v50, v0 + 112, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v44, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(v44, 1, v42) == 1)
  {
    v70 = *(v0 + 328);
    v75 = *(v0 + 288);
    v65 = *(v0 + 280);
    v25 = *(v0 + 272);
    v84 = *(v0 + 352);
    v26 = *(v0 + 248);
    v27 = *(v0 + 240);
    v28 = *(v0 + 200);
    v78 = *(v0 + 208);
    v58;
    v29 = *(v26 + 8);
    v29(v25, v27);
    v29(v65, v27);
    v54(v70, v75);
    outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for TreeRegressorModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for DataFrame?);
    v30 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
    v31 = *(v28 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v32 = *(v28 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    *(v28 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = 0;
    v33 = *(v28 + v30 + 16);
    *(v28 + v30 + 16) = -1;
  }

  else
  {
    v71 = v18;
    v34 = *(v0 + 312);
    (*(*(v0 + 296) + 32))(v34, *(v0 + 208), *(v0 + 288));
    TreeRegressorModel.applied(to:eventHandler:)(v34, 0, 0);
    v41 = *(v0 + 352);
    v45 = *(v0 + 328);
    v76 = *(v0 + 312);
    v52 = *(v0 + 304);
    v49 = *(v0 + 288);
    v46 = *(v0 + 280);
    v47 = *(v0 + 272);
    v79 = *(v0 + 264);
    v62 = *(v0 + 256);
    v51 = *(v0 + 248);
    v40 = *(v0 + 240);
    v35 = *(v0 + 232);
    v43 = *(v0 + 200);
    v36 = *(v0 + 216);
    DataFrame.subscript.getter(v64, v58, &type metadata for Double);
    *(v0 + 168) = 0;
    OptionalColumnProtocol.filled(with:)(v0 + 168, v36, v56);
    v53(v35, v36);
    DataFrame.subscript.getter(v64, v58, &type metadata for Double);
    v58;
    *(v0 + 176) = 0;
    OptionalColumnProtocol.filled(with:)(v0 + 176, v36, v56);
    v53(v35, v36);
    maximumAbsoluteError<A, B, C>(_:_:)(v79, v62, &type metadata for Double, v40, v40, v83, v71, v71);
    v66 = *(v0 + 184);
    rootMeanSquaredError<A, B, C>(_:_:)(v79, v62, &type metadata for Double, v40, v40, v83, v71, v71);
    v37 = *(v51 + 8);
    v37(v62, v40);
    v37(v79, v40);
    v54(v52, v49);
    v54(v76, v49);
    v37(v47, v40);
    v37(v46, v40);
    v54(v45, v49);
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for TreeRegressorModel);
    v38 = *(v0 + 192);
    v39 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
    v31 = *(v43 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v32 = *(v43 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    *(v43 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics) = v66;
    *(v43 + v39 + 8) = v38;
    v33 = *(v43 + v39 + 16);
    *(v43 + v39 + 16) = 0;
  }

  outlined consume of MLRegressorMetrics?(v31, v32, v33);
  v77 = 1;
LABEL_6:
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v55 = *(v0 + 304);
  v57 = *(v0 + 280);
  v59 = *(v0 + 272);
  v63 = *(v0 + 264);
  v72 = *(v0 + 256);
  v80 = *(v0 + 208);
  v67 = *(v0 + 232);
  *(v0 + 352);
  v7;
  v8;
  v9;
  v10;
  v55;
  v57;
  v59;
  v63;
  v72;
  v67;
  v80;
  return (*(v0 + 8))(v77, 1);
}

char TreeRegressorTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v32 = v2;
  v30 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = v25;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for TreeRegressorModel(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v27 = v25;
  v31 = *a2;
  v29 = v3;
  v14 = v3 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, v25, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, v25, &demangling cache variable for type metadata for TreeRegressorModel?);
  if (__swift_getEnumTagSinglePayload(v25, 1, v10) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for TreeRegressorModel?);
    return 0;
  }

  v15 = 0xEB0000000064657ALL;
  v16 = v27;
  outlined init with take of MLClassifierMetrics(v25, v27, type metadata accessor for TreeRegressorModel);
  switch(v31)
  {
    case 0:
      v17 = 0x696C616974696E69;
      break;
    case 1:
      v17 = 0x6974636172747865;
      goto LABEL_9;
    case 2:
      0;
      goto LABEL_11;
    case 3:
      v17 = 0x697461756C617665;
LABEL_9:
      v15 = 0xEA0000000000676ELL;
      break;
    case 4:
      v15 = 0xEB00000000676E69;
      v17 = 0x636E657265666E69;
      break;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v17, v15, 0x676E696E69617274, 0xE800000000000000, 0);
  v15;
  if ((v18 & 1) == 0)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for TreeRegressorModel);
    return 0;
  }

LABEL_11:
  v19 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor + v29;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor + v29, v26, 0, 0);
  v20 = v28;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v28, &demangling cache variable for type metadata for TreeRegressor?);
  v21 = type metadata accessor for TreeRegressor(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    BUG();
  }

  v22 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
  v23 = v32;
  SupervisedTabularEstimator.write(_:to:overwrite:)(v16, v30, 1, v21, v22);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for TreeRegressorModel);
  result = outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for TreeRegressor);
  if (!v23)
  {
    return 1;
  }

  return result;
}

uint64_t TreeRegressorTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000031;
    *(v12 + 8) = "Selected features" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
    PersistentParametersForTreeBasedMethods.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
  }
}

NSURL *TreeRegressorTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = PersistentParametersForTreeBasedMethods.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for PersistentParametersForTreeBasedMethods);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v24, v20, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for PersistentParametersForTreeBasedMethods);
      v26 = v36;
      TreeRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for PersistentParametersForTreeBasedMethods);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  return result;
}

uint64_t TreeRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = v2;
  v5 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a2 + v6);
  v10 = *(a2 + v6 + 8);
  v47 = a1;
  v48 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v45 = a2, v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v48, a1 = v47, v13 = v11, a2 = v45, (v12 & 1) == 0))
  {
    v41 = v9;
    v42 = v10;
    v47 = v8;
    v48 = v13;

    v21 = String.init<A>(_:)(&v41, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v46 = v33;
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    v20 = 0xED00006E6D756C6FLL;
    v22 = 0x6320746567726154;
  }

  else
  {
    v14 = *(a1 + *(v5 + 28));

    v43 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *(a2 + *(v5 + 28));

    v45 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    LOBYTE(v16) = v17;
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v16;
    if (v18)
    {
      result = static BoostedTreeConfiguration.firstIncompatibility(_:_:)();
      v20 = v36;
      if (!v36)
      {
        return result;
      }

      v46 = v40;
      v21 = v39;
      v47 = v38;
      v22 = v35;
      v48 = v37;
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    }

    else
    {
      v44 = "Classifier.swift" + 0x8000000000000000;

      v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
      v48 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v47 = v27;
      v43;

      v28 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v30 = v29;
      v20 = "Classifier.swift" + 0x8000000000000000;
      v45;
      v41 = v28;
      v42 = v30;
      v21 = String.init<A>(_:)(&v41, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v46 = v31;
      v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
      v22 = 0xD000000000000011;
    }
  }

  *v24 = v22;
  *(v24 + 8) = v20;
  *(v24 + 16) = v48;
  *(v24 + 24) = v47;
  *(v24 + 32) = v21;
  *(v24 + 40) = v46;
  *(v24 + 48) = 3;
  return swift_willThrow();
}

uint64_t TreeRegressorTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for TreeRegressor?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for TreeRegressorModel?);
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16));
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));
  return v0;
}

uint64_t type metadata accessor for TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeRegressorTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for TreeRegressorTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeRegressorTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for PersistentParametersForTreeBasedMethods?, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v8[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v8[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TreeRegressor?, type metadata accessor for TreeRegressor);
          if (v6 <= 0x3F)
          {
            v8[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TreeRegressorModel?, type metadata accessor for TreeRegressorModel);
            if (v7 <= 0x3F)
            {
              v8[5] = *(result - 8) + 64;
              v8[6] = &unk_346158;
              v8[7] = &unk_346158;
              result = swift_updateClassMetadata2(a1, 256, 8, v8, a1 + 80);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(288);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeRegressorTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance TreeRegressorTrainingSessionDelegate()
{
  v1 = swift_task_alloc(368);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeRegressorTrainingSessionDelegate.evaluate(from:)();
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (*(a2 + 16) <= a1)
  {
    BUG();
  }

  v3 = v2;
  v4 = type metadata accessor for MLCheckpoint(0);
  return outlined init with copy of MLActivityClassifier.Model(((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a2 + *(*(v4 - 8) + 72) * a1, v3, type metadata accessor for MLCheckpoint);
}

{
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (*(a2 + 16) <= a1)
  {
    BUG();
  }

  v3 = v2;
  v4 = type metadata accessor for Event(0);
  return (*(*(v4 - 8) + 16))(v3, ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + a2 + *(*(v4 - 8) + 72) * a1, v4);
}

NSURL *BlobsFile.init()()
{
  v1 = v0;
  *v3 = 0;
  *&v3[8] = 0xC000000000000000;
  *&v4[0] = 0x200000000;
  memset(v4 + 8, 0, 56);
  *&v3[16] = 0x200000000;
  *&v3[24] = 0;
  *&v3[32] = v4[1];
  *&v3[48] = v4[2];
  *&v3[64] = 0uLL;
  *&v3[80] = _swiftEmptyArrayStorage;
  specialized Data.append<A>(contentsOf:)(&stru_20.vmsize, 0);
  result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v3, v4);
  qmemcpy(v1, v3, 0x58uLL);
  return result;
}

void *BlobsFile.floatBlob(at:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  v4 = *(v2 + 10);
  if (*(v4 + 16) <= a1)
  {
    BUG();
  }

  v5 = a1 << 6;
  v6 = *(v4 + v5 + 32);
  v7 = *(v4 + v5 + 48);
  v8 = *(v4 + v5 + 64);
  v22 = *(v4 + v5 + 80);
  v21 = v8;
  v20 = v7;
  v19 = v6;
  if (BlobMetadata.dataType.getter() == 1)
  {
    v23 = *v2;
    switch(*(&v23 + 1) >> 62)
    {
      case 0:
        LODWORD(v18[0]) = v23;
        WORD2(v18[0]) = WORD2(v23);
        *(v18 + 6) = *(&v23 + 6);
        v9 = *(&v19 + 1);
        v10 = v20;
        if ((v20 | *(&v19 + 1)) < 0)
        {
          BUG();
        }

        goto LABEL_11;
      case 1:
        if (v23 >> 32 < v23)
        {
          BUG();
        }

        v16 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v23, v23 >> 32, *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL, &v19);
        if (v1)
        {
          outlined release of Data(&v23);
          BUG();
        }

        v3 = v16;
        outlined release of Data(&v23);
        break;
      case 2:
        v13 = *(v23 + 16);
        v14 = *(v23 + 24);

        v15 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v13, v14, *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL, &v19);
        if (v1)
        {

          BUG();
        }

        v3 = v15;

        break;
      case 3:
        memset(v18, 0, 14);
        v9 = *(&v19 + 1);
        v10 = v20;
        if ((v20 | *(&v19 + 1)) < 0)
        {
          BUG();
        }

LABEL_11:
        v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v18 + v10, v9 >> 2);
        break;
    }
  }

  else
  {
    v11 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
    swift_allocError(&type metadata for BlobsFileError, v11, 0, 0);
    *v12 = 2;
    swift_willThrow();
  }

  return v3;
}

void *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __DataStorage._bytes.getter(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v7))
    {
      BUG();
    }

    v8 = v6 + a1 - v7;
  }

  else
  {
    v8 = 0;
  }

  __DataStorage._length.getter();
  if (v8)
  {
    v9 = *(a4 + 16);
    if (v9 < 0)
    {
      BUG();
    }

    v10 = (v8 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a4 + 8);
  if (v11 < 0)
  {
    BUG();
  }

  return specialized _copyCollectionToContiguousArray<A>(_:)(v10, v11 >> 2);
}

uint64_t storeEnumTagSinglePayload for BlobsFileError(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFE)
  {
    v4 = a3 + 2;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t initializeWithCopy for BlobsFile(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for BlobsFile(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Data._Representation(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;

  v9;
  return a1;
}

void *__swift_memcpy88_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x58uLL);
  return result;
}

uint64_t assignWithTake for BlobsFile(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of Data._Representation(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for BlobsFile(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 80) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 80) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for BlobsFile(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 88) = 0;
    }

    if (a2)
    {
      *(a1 + 80) = 2 * (a2 - 1);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer.PersistentParameters(void *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    v15 = a3;
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v7(a1 + *(v8 + 48), &a2[*(v8 + 48)], v6);
    v9 = *(v8 + 64);
    *(a1 + v9 + 8) = a2[v9 + 8];
    *(a1 + v9) = *&a2[v9];
    *(a1 + v15[5]) = a2[v15[5]];
    v10 = v15[6];
    __dst = a1 + v10;
    v11 = &a2[v10];
    if (__swift_getEnumTagSinglePayload(v11, 1, v6))
    {
      v12 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
      memcpy(__dst, v11, *(*(v12 - 8) + 64));
    }

    else
    {
      v7(__dst, v11, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    *(a1 + v15[7]) = *&a2[v15[7]];
    *(a1 + v15[8]) = *&a2[v15[8]];
    *(a1 + v15[9]) = a2[v15[9]];
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), v2);
  v5 = a1 + *(a2 + 24);
  result = __swift_getEnumTagSinglePayload(v5, 1, v2);
  if (!result)
  {
    return (v3)(v5, v2);
  }

  return result;
}

char *initializeWithCopy for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(*(v3 - 8) + 16);
  v4(a1, a2, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v4(&a1[*(v5 + 48)], &a2[*(v5 + 48)], v3);
  v6 = *(v5 + 64);
  a1[v6 + 8] = a2[v6 + 8];
  *&a1[v6] = *&a2[v6];
  a1[a3[5]] = a2[a3[5]];
  v7 = a3[6];
  __dst = &a1[v7];
  v8 = &a2[v7];
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    v9 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v4(__dst, v8, v3);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

char *assignWithCopy for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  v17 = *(v4 - 8);
  v5 = *(v17 + 24);
  v5(a1, a2, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v15 = v5;
  v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
  v7 = *(v6 + 64);
  a1[v7 + 8] = a2[v7 + 8];
  *&a1[v7] = *&a2[v7];
  a1[a3[5]] = a2[a3[5]];
  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v9, 1, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v17 + 16))(v9, v10, v4);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
      goto LABEL_9;
    }

    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v15(v9, v10, v4);
      goto LABEL_9;
    }

    (*(v17 + 8))(v9, v4, v12, v15);
    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  memcpy(v9, v10, v13);
LABEL_9:
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

char *initializeWithTake for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(*(v3 - 8) + 32);
  v4(a1, a2, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v4(&a1[*(v5 + 48)], &a2[*(v5 + 48)], v3);
  v6 = *(v5 + 64);
  a1[v6 + 8] = a2[v6 + 8];
  *&a1[v6] = *&a2[v6];
  a1[a3[5]] = a2[a3[5]];
  v7 = a3[6];
  __dst = &a1[v7];
  v8 = &a2[v7];
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    v9 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v4(__dst, v8, v3);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

char *assignWithTake for MLStyleTransfer.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for URL(0);
  v17 = *(v4 - 8);
  v5 = *(v17 + 40);
  v5(a1, a2, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v15 = v5;
  v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
  v7 = *(v6 + 64);
  a1[v7 + 8] = a2[v7 + 8];
  *&a1[v7] = *&a2[v7];
  a1[a3[5]] = a2[a3[5]];
  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v9, 1, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v4);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v17 + 32))(v9, v10, v4);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
      goto LABEL_9;
    }

    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v15(v9, v10, v4);
      goto LABEL_9;
    }

    (*(v17 + 8))(v9, v4, v12, v15);
    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  }

  memcpy(v9, v10, v13);
LABEL_9:
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

uint64_t sub_2108E0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  if (*(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 84) == a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 254)
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v4 = *(a3 + 24) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = *(a1 + *(a3 + 20));
  result = 0;
  if (v6 >= 2)
  {
    return v6 - 1;
  }

  return result;
}

uint64_t sub_21096D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  if (*(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 84) == a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  }

  else
  {
    if (a3 == 254)
    {
      result = *(a4 + 20);
      *(a1 + result) = a2 + 1;
      return result;
    }

    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v6 = *(a4 + 24) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLStyleTransfer.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLStyleTransfer.PersistentParameters;
  if (!type metadata singleton initialization cache for MLStyleTransfer.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLStyleTransfer.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v4, *(result - 8) + 64, *(result - 8) + 64, "\t");
    v5[0] = v4;
    v5[1] = &unk_3462B0;
    result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v5[2] = *(result - 8) + 64;
      v5[3] = &value witness table for Builtin.Int64 + 64;
      v5[4] = &value witness table for Builtin.Int64 + 64;
      v5[5] = &unk_3462B0;
      swift_initStructMetadata(a1, 256, 6, v5, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLStyleTransfer.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v98 = v1;
  v108 = a1;
  v3 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v106 = &v95;
  v112 = type metadata accessor for URL(0);
  v111 = *(v112 - 8);
  v6 = *(v111 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v99 = &v95;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v103 = &v95;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v105 = &v95;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v110 = &v95;
  v15 = alloca(v6);
  v16 = alloca(v6);
  v17 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v95 = &type metadata for Any + 8;
  v107 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v109 = v2;
  outlined init with copy of MLTrainingSessionParameters(v2, &v95, type metadata accessor for MLStyleTransfer.DataSource);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v21 = (&v95 + *(v20 + 48));
  v22 = *(v20 + 64);
  v101 = *(&v95 + v22);
  v113 = *(&v95 + v22 + 8);
  v23 = *(v111 + 32);
  v24 = v112;
  v23(&v95, &v95, v112);
  v25 = v110;
  v100 = v23;
  v23(v110, v21, v24);
  v104 = &v95;
  *&v26 = URL.path.getter(v25);
  LOBYTE(v23) = BYTE8(v26);
  v117 = v26;
  *&v27 = URL.path.getter(v25);
  LOBYTE(v24) = BYTE8(v27);
  v116[0] = v27;
  v114 = 0;
  v115 = 0xE000000000000000;
  v102 = lazy protocol witness table accessor for type String and conformance String();
  v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v116, &v114, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v102, v102, v102);
  v30 = v29;
  v23;
  v24;
  v31 = v105;
  URL.init(fileURLWithPath:)(v28, v30);
  v30;
  v32 = URL.path.getter(v30);
  v34 = v33;
  v111 = *(v111 + 8);
  (v111)(v31, v112);
  v118 = &type metadata for String;
  *&v117 = v32;
  *(&v117 + 1) = v34;
  outlined init with take of Any(&v117, v116);
  v35 = v107;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v107);
  v114 = v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0x6D695F656C797473, 0xEB00000000656761, isUniquelyReferenced_nonNull_native);
  v96 = v114;
  v107 = "sing the style image URL." + 0x8000000000000000;
  *&v37 = URL.path.getter(v116);
  v97 = *(&v37 + 1);
  v117 = v37;
  *&v38 = URL.path.getter(v116);
  LOBYTE(v35) = BYTE8(v38);
  v116[0] = v38;
  v114 = 0;
  v115 = 0xE000000000000000;
  v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v116, &v114, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v102, v102, v102);
  v41 = v40;
  v42 = v111;
  v97;
  v35;
  v43 = v105;
  URL.init(fileURLWithPath:)(v39, v41);
  v41;
  v44 = URL.path.getter(v41);
  v46 = v45;
  v42(v43, v112);
  v118 = &type metadata for String;
  *&v117 = v44;
  *(&v117 + 1) = v46;
  outlined init with take of Any(&v117, v116);
  v47 = v96;
  v48 = swift_isUniquelyReferenced_nonNull_native(v96);
  v114 = v47;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0xD000000000000011, v107, v48);
  v49 = v114;
  if (v113 != 1)
  {
    v118 = &type metadata for UInt;
    *&v117 = v101;
    outlined init with take of Any(&v117, v116);
    v50 = swift_isUniquelyReferenced_nonNull_native(v49);
    v114 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0xD000000000000011, ("sing the content directory URL." + 0x8000000000000000), v50);
    v49 = v114;
  }

  v51 = v112;
  v42(v110, v112);
  v42(v104, v51);
  v52 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v53 = *(v52 + 20);
  v110 = v52;
  v54 = *(v109 + v53);
  v55 = 7237219;
  if (v54)
  {
    v55 = 0x6574694C6E6E63;
  }

  v118 = &type metadata for String;
  *&v117 = v55;
  *(&v117 + 1) = (v54 << 58) | 0xE300000000000000;
  outlined init with take of Any(&v117, v116);
  v56 = swift_isUniquelyReferenced_nonNull_native(v49);
  v114 = v49;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0x687469726F676C61, 0xE90000000000006DLL, v56);
  v57 = v114;
  v58 = *(v109 + *(v52 + 28));
  v118 = &type metadata for Int;
  *&v117 = v58;
  outlined init with take of Any(&v117, v116);
  v59 = swift_isUniquelyReferenced_nonNull_native(v57);
  v114 = v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0x645F6C6574786574, 0xEE00797469736E65, v59);
  v60 = v114;
  v61 = v110;
  v62 = v109;
  v63 = *(v109 + *(v110 + 8));
  v118 = &type metadata for Int;
  *&v117 = v63;
  outlined init with take of Any(&v117, v116);
  v64 = swift_isUniquelyReferenced_nonNull_native(v60);
  v114 = v60;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0x74735F656C797473, 0xEE006874676E6572, v64);
  v65 = v114;
  v66 = *(v62 + *(v61 + 9));
  v67 = 1869903201;
  if (*(v62 + *(v61 + 9)))
  {
    v67 = 7696483;
  }

  v118 = &type metadata for String;
  *&v117 = v67;
  *(&v117 + 1) = ((v66 ^ 1u) << 56) - 0x1D00000000000000;
  outlined init with take of Any(&v117, v116);
  v68 = swift_isUniquelyReferenced_nonNull_native(v65);
  v114 = v65;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0x656369766564, 0xE600000000000000, v68);
  v69 = v114;
  v70 = v106;
  outlined init with copy of MLTrainingSessionParameters(v109 + *(v61 + 6), v106, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v71 = v112;
  if (__swift_getEnumTagSinglePayload(v70, 1, v112) == 1)
  {
    outlined destroy of MLStyleTransfer.ModelParameters.ValidationData(v70);
  }

  else
  {
    v72 = v103;
    v100(v103, v70, v71);
    v109 = v69;
    *&v73 = URL.path.getter(v72);
    v110 = *(&v73 + 1);
    v117 = v73;
    *&v74 = URL.path.getter(v72);
    v106 = *(&v74 + 1);
    v116[0] = v74;
    v114 = 0;
    v115 = 0xE000000000000000;
    v75 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v116, &v114, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v102, v102, v102);
    v76 = v71;
    v78 = v77;
    v110;
    v106;
    v69 = v105;
    URL.init(fileURLWithPath:)(v75, v78);
    v78;
    v79 = URL.path.getter(v78);
    v81 = v80;
    (v111)(v69, v76);
    v118 = &type metadata for String;
    *&v117 = v79;
    *(&v117 + 1) = v81;
    outlined init with take of Any(&v117, v116);
    v82 = v109;
    v83 = swift_isUniquelyReferenced_nonNull_native(v109);
    v114 = v82;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, 0x69746164696C6176, 0xEA00000000006E6FLL, v83);
    LOBYTE(v69) = v114;
    (v111)(v103, v112);
  }

  v84 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v69;
  *&v117 = 0;
  v86 = [v84 dataWithPropertyList:isa format:200 options:0 error:&v117];
  v87 = v86;

  v88 = v117;
  if (v87)
  {
    v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v87);
    v91 = v90;

    v92 = v99;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    Data.write(to:options:)(v92, 0, v89, v91);
    (v111)(v92, v112);
    outlined consume of Data._Representation(v89, v91);
  }

  else
  {
    v93 = v88;
    _convertNSErrorToError(_:)(v88);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

NSURL *MLStyleTransfer.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v109 = v2;
  v110 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v107 = &v102;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v106 = &v102;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v111 = &v102;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v105 = &v102;
  v14 = alloca(v5);
  v15 = alloca(v5);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v16 = v109;
  v17 = Data.init(contentsOf:options:)(&v102, 0);
  v109 = v16;
  if (!v16)
  {
    v116 = a1;
    v108 = v4;
    v20 = *(v4 + 8);
    v21 = v18;
    v22 = v17;
    v117 = v20;
    v20(&v102, v3);
    v23 = objc_opt_self(NSPropertyListSerialization);
    v115 = v22;
    v114 = v21;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v122[0] = 0;
    v25 = [v23 propertyListWithData:isa options:0 format:0 error:v122];
    v26 = v25;

    v27 = v122[0];
    if (!v26)
    {
      v33 = v27;
      _convertNSErrorToError(_:)(v27);

      swift_willThrow();
      outlined consume of Data._Representation(v115, v114);
      v117(v116, v3);
      return __stack_chk_guard;
    }

    v118 = v3;
    _bridgeAnyObjectToAny(_:)(v26);
    swift_unknownObjectRelease(v26);
    outlined init with copy of Any(v124, v122);
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    if (!swift_dynamicCast(&string, v122, &type metadata for Any + 8, v28, 6))
    {
      v34 = "parameters.plist" + 0x8000000000000000;
      v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
      v37 = 0xD000000000000037;
      goto LABEL_15;
    }

    countAndFlagsBits = string._countAndFlagsBits;
    specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, string._countAndFlagsBits);
    if (v123)
    {
      if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for String, 6))
      {
        v119 = countAndFlagsBits;
        object = string._object;
        v31 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLStyleTransfer.PersistentParameters.init(sessionDirectory:), string);
        object;
        if (v31)
        {
          if (v31 != 1)
          {
            v119;
            v34 = "ontain an algorithm." + 0x8000000000000000;
            v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
            v37 = 0xD000000000000049;
            goto LABEL_15;
          }

          v32 = 1;
        }

        else
        {
          v32 = 0;
        }

        v40 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
        v41 = v110;
        *(v110 + v40[5]) = v32;
        specialized Dictionary.subscript.getter(0x645F6C6574786574, 0xEE00797469736E65, v119);
        if (v123)
        {
          if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for Int, 6))
          {
            v42 = string._countAndFlagsBits;
            goto LABEL_25;
          }
        }

        else
        {
          outlined destroy of Any?(v122);
        }

        v42 = 256;
LABEL_25:
        *(v41 + v40[7]) = v42;
        specialized Dictionary.subscript.getter(0x74735F656C797473, 0xEE006874676E6572, v119);
        v44 = 5;
        if (v123)
        {
          if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for Int, 6))
          {
            v44 = string._countAndFlagsBits;
          }
        }

        else
        {
          outlined destroy of Any?(v122);
        }

        *(v41 + v40[8]) = v44;
        specialized Dictionary.subscript.getter(0x656369766564, 0xE600000000000000, v119);
        if (v123)
        {
          if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for String, 6))
          {
            v45.value = _MLDevice.init(rawValue:)(string).value;
            if (v45.value != CreateML__MLDevice_unknownDefault)
            {
              *(v41 + v40[9]) = v45.value & 1;
LABEL_35:
              v46 = v119;
              specialized Dictionary.subscript.getter(0x6D695F656C797473, 0xEB00000000656761, v119);
              if (v123)
              {
                if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for String, 6))
                {
                  v103 = v40;
                  v47 = string._countAndFlagsBits;
                  v48 = string._object;
                  v104 = objc_opt_self(NSFileManager);
                  v49 = [v104 defaultManager];
                  v50 = v49;
                  v113 = v47;
                  v112 = v48;
                  v51 = String._bridgeToObjectiveC()();
                  v120 = [v50 fileExistsAtPath:v51];

                  if (v120)
                  {
                    v52 = v105;
                    v53 = v112;
                    URL.init(fileURLWithPath:)(v113, v112);
                    v53;
                  }

                  else
                  {
                    v55 = v112;
                    URL.init(fileURLWithPath:)(v113, v112);
                    v55;
                    v56 = URL.path.getter(v55);
                    LOBYTE(v55) = v57;
                    v58 = v105;
                    URL.appendingPathComponent(_:)(v56, v57);
                    v52 = v58;
                    v55;
                    v117(v111, v118);
                  }

                  v59 = v119;
                  specialized Dictionary.subscript.getter(0xD000000000000011, ("sing the style image URL." + 0x8000000000000000), v119);
                  if (v123)
                  {
                    if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for String, 6))
                    {
                      v60 = string._countAndFlagsBits;
                      v61 = string._object;
                      v62 = [v104 defaultManager];
                      v63 = v62;
                      v113 = v60;
                      v112 = v61;
                      v64 = String._bridgeToObjectiveC()();
                      LOBYTE(v60) = [v63 fileExistsAtPath:v64];

                      if (v60)
                      {
                        v65 = v112;
                        URL.init(fileURLWithPath:)(v113, v112);
                        v65;
                      }

                      else
                      {
                        v70 = v111;
                        v71 = v112;
                        URL.init(fileURLWithPath:)(v113, v112);
                        v71;
                        v72 = URL.path.getter(v71);
                        LOBYTE(v71) = v73;
                        URL.appendingPathComponent(_:)(v72, v73);
                        v71;
                        v117(v70, v118);
                      }

                      specialized Dictionary.subscript.getter(0xD000000000000011, ("sing the content directory URL." + 0x8000000000000000), v119);
                      v74 = v103;
                      if (v123)
                      {
                        LODWORD(v75) = swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for Int, 6);
                        if (v75)
                        {
                          if (string._countAndFlagsBits < 0)
                          {
                            BUG();
                          }

                          v112 = string._countAndFlagsBits;
                          LODWORD(v113) = 0;
LABEL_57:
                          v76 = v119;
                          specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v119);
                          v76;
                          if (v123)
                          {
                            if (swift_dynamicCast(&string, v122, &type metadata for Any + 8, &type metadata for String, 6))
                            {
                              v77 = string._countAndFlagsBits;
                              v78 = string._object;
                              v79 = [v104 defaultManager];
                              v80 = v79;
                              v119 = v77;
                              v81 = String._bridgeToObjectiveC()();
                              LOBYTE(v77) = [v80 fileExistsAtPath:v81];

                              if (v77)
                              {
                                URL.init(fileURLWithPath:)(v119, v78);
                                outlined consume of Data._Representation(v115, v114);
                                v78;
                                v82 = v118;
                                (v117)(v116);
                              }

                              else
                              {
                                v85 = v111;
                                URL.init(fileURLWithPath:)(v119, v78);
                                v78;
                                v86 = URL.path.getter(v78);
                                v88 = v87;
                                v89 = v116;
                                URL.appendingPathComponent(_:)(v86, v87);
                                v88;
                                outlined consume of Data._Representation(v115, v114);
                                v90 = v89;
                                v91 = v118;
                                v92 = v117;
                                v117(v90, v118);
                                v93 = v85;
                                v82 = v91;
                                v92(v93, v91);
                              }

                              v84 = v110;
                              v94 = v108;
                              __swift_destroy_boxed_opaque_existential_1Tm(v124);
                              v95 = v84 + v103[6];
                              v111 = *(v94 + 32);
                              (v111)(v95, v107, v82);
                              __swift_storeEnumTagSinglePayload(v95, 0, 1, v82);
                              goto LABEL_66;
                            }

                            outlined consume of Data._Representation(v115, v114);
                          }

                          else
                          {
                            outlined consume of Data._Representation(v115, v114);
                            outlined destroy of Any?(v122);
                          }

                          v83 = v118;
                          v117(v116, v118);
                          __swift_destroy_boxed_opaque_existential_1Tm(v124);
                          v84 = v110;
                          __swift_storeEnumTagSinglePayload(v110 + v74[6], 1, 1, v83);
                          v111 = *(v108 + 32);
                          v82 = v83;
LABEL_66:
                          v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
                          v97 = v84 + *(v96 + 48);
                          v110 = *(v96 + 64);
                          v98 = v84;
                          v99 = v84;
                          v100 = v111;
                          (v111)(v98, v105, v82);
                          (v100)(v97, v106, v82);
                          v101 = v110;
                          *(v99 + v110) = v112;
                          *(v99 + v101 + 8) = v113;
                          return __stack_chk_guard;
                        }
                      }

                      else
                      {
                        v75 = outlined destroy of Any?(v122);
                      }

                      LOBYTE(v75) = 1;
                      LODWORD(v113) = v75;
                      v112 = 0;
                      goto LABEL_57;
                    }

                    v59;
                  }

                  else
                  {
                    v59;
                    outlined destroy of Any?(v122);
                  }

                  v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
                  *v67 = 0xD00000000000003FLL;
                  *(v67 + 8) = "content_directory" + 0x8000000000000000;
                  *(v67 + 16) = 0;
                  *(v67 + 32) = 0;
                  *(v67 + 48) = 0;
                  swift_willThrow();
                  outlined consume of Data._Representation(v115, v114);
                  v68 = v118;
                  v69 = v117;
                  v117(v116, v118);
                  v69(v52, v68);
LABEL_16:
                  __swift_destroy_boxed_opaque_existential_1Tm(v124);
                  return __stack_chk_guard;
                }

                v46;
              }

              else
              {
                v46;
                outlined destroy of Any?(v122);
              }

              v34 = "ontain a valid algorithm." + 0x8000000000000000;
              v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
              v37 = 0xD000000000000039;
LABEL_15:
              *v36 = v37;
              *(v36 + 8) = v34;
              *(v36 + 16) = 0;
              *(v36 + 32) = 0;
              *(v36 + 48) = 0;
              swift_willThrow();
              outlined consume of Data._Representation(v115, v114);
              v117(v116, v118);
              goto LABEL_16;
            }
          }
        }

        else
        {
          outlined destroy of Any?(v122);
        }

        *(v41 + v40[9]) = 0;
        goto LABEL_35;
      }

      countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits;
      outlined destroy of Any?(v122);
    }

    v34 = "ningSessionDelegate" + 0x8000000000000000;
    v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
    v37 = 0xD000000000000044;
    goto LABEL_15;
  }

  v19 = *(v4 + 8);
  v19(a1, v3);
  v19(&v102, v3);
  return __stack_chk_guard;
}

uint64_t outlined destroy of MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

double MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.getter()
{
  if (*(v0 + 16))
  {
    return 0.975;
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t (*MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 16))
  {
    v2 = 0x3FEF333333333333;
  }

  else
  {
    v2 = *(v1 + 8);
  }

  *a1 = v2;
  return MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify(uint64_t *a1)
{
  result = *a1;
  v2 = a1[1];
  *(v2 + 8) = *a1;
  *(v2 + 16) = 0;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractor.getter()
{
  v2 = *(v1 + 32);
  *result = *(v1 + 24);
  *(result + 8) = v2;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractor.setter(uint64_t *a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v3;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:)(uint64_t *a1, double a2)
{
  v3 = *a1;
  *result = a2;
  *(result + 8) = 0;
  v4 = *(a1 + 8);
  *(result + 16) = 1;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

char MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:featureExtractionTimeWindowSize:)(uint64_t *a1, uint64_t a2, char a3, double a4)
{
  v6 = a2;
  v7 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  if ((a3 & 1) == 0)
  {
    if (*&a2 < 0.5)
    {
      v21 = a4;
      v20 = v8;
      v22 = v9;
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(108);
      v10._object = ". Clamping it to " + 0x8000000000000000;
      v10._countAndFlagsBits = 0xD000000000000056;
      String.append(_:)(v10);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v10._object = "ximum supported value " + 0x8000000000000000;
      v10._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v10);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      v11 = v18;
      v12 = v19;
      v13 = static os_log_type_t.default.getter(46);
      v10._countAndFlagsBits = v11;
      v10._object = v12;
      log(_:type:)(v10, v13);
      v6 = 0x3FE0000000000000;
LABEL_6:
      v12;
      v9 = v22;
      v8 = v20;
      a4 = v21;
      goto LABEL_7;
    }

    if (*&a2 > 15.0)
    {
      v21 = a4;
      v20 = v8;
      v22 = v9;
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(108);
      v14._object = "r MLShapedArray<Double> values." + 0x8000000000000000;
      v14._countAndFlagsBits = 0xD000000000000056;
      String.append(_:)(v14);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v14._object = "ximum supported value " + 0x8000000000000000;
      v14._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v14);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v14._countAndFlagsBits = 46;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v18;
      v12 = v19;
      v16 = static os_log_type_t.default.getter(46);
      v14._countAndFlagsBits = v15;
      v14._object = v12;
      log(_:type:)(v14, v16);
      v6 = 0x402E000000000000;
      goto LABEL_6;
    }
  }

LABEL_7:
  *v7 = a4;
  *(v7 + 8) = v6;
  *(v7 + 16) = a3 & 1;
  *(v7 + 24) = v8;
  result = v9 & 1;
  *(v7 + 32) = result;
  return result;
}

id key path getter for MLWordEmbedding.model : MLWordEmbedding()
{
  v1 = v0;
  result = MLWordEmbedding.model.getter();
  *v1 = result;
  return result;
}

void (*MLWordEmbedding.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

id MLWordEmbedding.modelParameters.getter()
{
  v2 = *(v1 + 24);
  *v0 = *(v1 + 24);
  return v2;
}

NSURL *MLWordEmbedding.init(dictionary:parameters:)(void *a1, uint64_t a2)
{
  v92 = v3;
  v93 = a1;
  v76 = v2;
  v94 = type metadata accessor for UUID(0);
  v89 = *(v94 - 1);
  v4 = *(v89 + 8);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v90 = &v75;
  v84 = type metadata accessor for URL(0);
  v86 = *(v84 - 8);
  v7 = v86[8];
  v8 = alloca(v7);
  v9 = alloca(v7);
  v75 = &v75;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v79 = &v75;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v91 = &v75;
  v14 = alloca(v7);
  v15 = alloca(v7);
  v85 = &v75;
  v16 = alloca(v7);
  v17 = alloca(v7);
  v88 = &v75;
  v18 = alloca(v7);
  v19 = alloca(v7);
  v20 = alloca(v7);
  v21 = alloca(v7);
  v22 = *(a2 + 8);
  v83 = *a2;
  v95[0] = v83;
  v95[1] = v22;
  MLWordEmbedding.ModelParameters.validateRevision()();
  if (v23)
  {
    v93;
    v24 = v83;
  }

  else
  {
    v80 = v22;
    v87 = &v75;
    v92 = &v75;
    v25 = objc_opt_self(NSFileManager);
    v26 = v83;

    v27 = [v25 defaultManager];
    v28 = v27;
    NSFileManager.createTemporaryModelDirectory()();
    if (v29)
    {

      swift_bridgeObjectRelease_n(v93, 2);
    }

    else
    {
      v82 = 0;
      NSFileManager.temporaryModelDirectory.getter();
      v30 = v90;
      UUID.init()();
      v31 = UUID.uuidString.getter();
      v81 = v32;
      (*(v89 + 1))(v30, v94);
      v95[0] = v31;
      v95[1] = v81;
      v33._countAndFlagsBits = 45;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v33._countAndFlagsBits = 0x65626D4564726F57;
      v33._object = 0xED0000676E696464;
      String.append(_:)(v33);
      LOBYTE(v31) = v95[1];
      v89 = v28;
      URL.appendingPathComponent(_:)(v95[0], v95[1]);
      v31;
      v34 = v88;
      URL.appendingPathExtension(_:)(7627108, 0xE300000000000000);
      URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLEmbedding, NLEmbedding_ptr);
      v90 = v26;
      v94 = v26;
      v35 = v93;
      v36 = v82;
      static NLEmbedding.write(_:language:revision:to:)(v93, v83, v80, v34);
      if (v36)
      {
        v37 = v35;
        v35;

        v38 = v94;
        v39 = v86[1];
        v40 = v84;
        v39(v85, v84);
        v39(v88, v40);
        v39(v87, v40);
        v39(v92, v40);
        v37;
      }

      else
      {

        v41 = v86[2];
        v42 = v91;
        v41(v91, v88, v84);
        v43 = @nonobjc NLEmbedding.__allocating_init(contentsOf:)(v42);
        v81 = v41;
        v44 = v43;
        v45 = [v44 dimension];
        v91 = v44;
        v77 = [v44 vocabularySize];
        v96[0] = v83;
        v96[1] = v80;
        memset(v95, 0, sizeof(v95));
        v94 = v94;
        static MLWordEmbedding.write(dictionary:parameters:to:metadata:)(v93, v96, v85, v95);
        v82 = 0;
        v78 = v45;

        v46 = objc_opt_self(MLModel);
        URL._bridgeToObjectiveC()(v46);
        v48 = v47;
        v95[0] = 0;
        v49 = [(NSURL *)v46 compileModelAtURL:v47 error:v95];
        v50 = v49;

        v51 = v95[0];
        if (v50)
        {
          v52 = v79;
          static URL._unconditionallyBridgeFromObjectiveC(_:)(v50);
          v51;

          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
          v53 = v75;
          v54 = v52;
          v55 = v84;
          v81(v75, v54, v84);
          v56 = v82;
          v57 = @nonobjc MLModel.__allocating_init(contentsOf:)(v53);
          if (!v56)
          {
            v69 = v57;
            v94 = v94;
            v70 = v55;
            v90 = v69;
            static MLWordEmbedding.reportAnalytics(vocabularySize:dimension:language:)(v77, v78, v83);

            v71 = v86[1];
            v71(v79, v55);
            v72 = v85;
            $defer #1 () in MLWordEmbedding.init(dictionary:parameters:)();

            v71(v72, v70);
            v71(v88, v70);
            v71(v87, v70);
            v71(v92, v70);
            v73 = v76;
            *v76 = v91;
            LOBYTE(v71) = v93;
            v73[1] = v93;
            v74 = v90;
            v73[2] = v90;
            v73[3] = v83;
            v73[4] = v80;
            v73[5] = v78;
            v73[6] = v77;

            v71;
            return __stack_chk_guard;
          }

          v58 = v86[1];
          v58(v79, v55);

          v59 = v55;
          v93;

          v60 = v85;
          $defer #1 () in MLWordEmbedding.init(dictionary:parameters:)();

          v58(v60, v59);
          v58(v88, v59);
          v58(v87, v59);
          v58(v92, v59);
          v61 = v93;
        }

        else
        {
          v62 = v95[0];

          v63 = v93;
          v93;

          _convertNSErrorToError(_:)(v51);
          swift_willThrow();
          v64 = v85;
          $defer #1 () in MLWordEmbedding.init(dictionary:parameters:)();
          (objc_release)(v89);
          v65 = v86[1];
          v66 = v64;
          v67 = v84;
          v65(v66, v84);
          v65(v88, v67);
          v65(v87, v67);
          v65(v92, v67);
          v61 = v63;
        }

        v61;
      }

      v26 = v90;
    }

    v24 = v26;
  }

  return __stack_chk_guard;
}

id @nonobjc NLEmbedding.__allocating_init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = 0;
  v4 = [ObjCClassFromMetadata embeddingWithContentsOfURL:v2 error:&v12];
  v5 = v4;

  v6 = v12;
  if (v5)
  {
    v7 = type metadata accessor for URL(0);
    v8 = *(*(v7 - 8) + 8);
    v6;
    v8(a1, v7);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow();
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v5;
}

NSURL *$defer #1 () in MLWordEmbedding.init(dictionary:parameters:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

char static MLWordEmbedding.reportAnalytics(vocabularySize:dimension:language:)(int a1, int a2, uint64_t a3)
{
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordEmbedding, __PAIR128__(0xEF657A6953207972, 0x616C756261636F56), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordEmbedding, __PAIR128__(0xE90000000000006ELL, 0x6F69736E656D6944), a2);
    if (a3)
    {
      v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
      v6._object = v5;
    }

    else
    {
      v6._object = "formers Text Embedding" + 0x8000000000000000;
      v6._countAndFlagsBits = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_wordEmbedding, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), v6);
    return v6._object;
  }

  return result;
}

Swift::Bool __swiftcall MLWordEmbedding.contains(_:)(Swift::String a1)
{
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 containsString:v3];

  return v2 != 0;
}

unint64_t MLWordEmbedding.description.getter()
{
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8._object = v1;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(v8);
  v8._object;
  v2._countAndFlagsBits = 0x6F69736E656D6944;
  v2._object = 0xEB00000000203A6ELL;
  String.append(_:)(v2);
  110;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8._object = v3;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(v8);
  v8._object;
  v2._countAndFlagsBits = 0xD000000000000011;
  v2._object = "WordEmbedding\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v2);
  ("WordEmbedding\n\nParameters\n" + 0x8000000000000000);
  v9 = *(v0 + 24);
  v9._countAndFlagsBits;
  v4 = MLWordEmbedding.ModelParameters.description.getter();
  v6 = v5;

  v2._countAndFlagsBits = v4;
  v2._object = v6;
  String.append(_:)(v2);
  v6;
  return 0xD00000000000001ALL;
}

unint64_t MLWordEmbedding.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v8 = *(v0 + 24);
  v7 = v1;

  v4 = v3;
  v5 = MLWordEmbedding.description.getter();

  v2;
  return v5;
}

void *MLWordEmbedding.playgroundDescription.getter()
{
  v10 = v0;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v12 = *(v1 + 24);
  v11 = v2;

  v5 = v4;
  v6 = MLWordEmbedding.description.getter();
  v8 = v7;

  v3;
  result = &type metadata for String;
  v10[3] = &type metadata for String;
  *v10 = v6;
  v10[1] = v8;
  return result;
}

uint64_t initializeWithCopy for MLWordEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v3;

  v4;
  v5;
  return a1;
}

uint64_t assignWithCopy for MLWordEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5;
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  v6;

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  *(a1 + 24) = v9;
  v9;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for MLWordEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3;

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLWordEmbedding(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLWordEmbedding(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLTextClassifier.prediction(from:)(Swift::String from)
{
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 predictedLabelForString:v3];
  v5 = v4;

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(v5);
    v8 = v7;
  }

  else
  {
    v8 = 0xE000000000000000;
    v6 = 0;
  }

  result._countAndFlagsBits = v6;
  result._object = v8;
  return result;
}

void *MLTextClassifier.predictions(from:)(uint64_t a1)
{
  v3 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = &v18;
  outlined init with copy of MLTextClassifier(v2, &v18);
  v7 = *(a1 + 16);
  if (v7)
  {
    v20 = v1;
    v25 = _swiftEmptyArrayStorage;
    v18 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v25;
    v21 = &v18;
    v19 = v18;
    v9 = (a1 + 40);
    do
    {
      v22 = v8;
      v10 = *v9;

      v11 = String._bridgeToObjectiveC()();
      v12 = [v19 predictedLabelForString:v11];
      v13 = v12;

      if (v13)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)(v13);
        v24 = v14;
        v10;
      }

      else
      {
        v10;
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      v8 = v22;
      v25 = v22;
      v15 = v22[2];
      if (v22[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22[3] >= 2uLL, v15 + 1, 1);
        v8 = v25;
      }

      v8[2] = v15 + 1;
      v16 = 2 * v15;
      v8[v16 + 4] = v23;
      v8[v16 + 5] = v24;
      v9 += 2;
      --v18;
    }

    while (v18);
    v6 = v21;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  outlined destroy of MLTextClassifier(v6);
  return v8;
}

uint64_t outlined init with copy of MLTextClassifier(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *MLTextClassifier.predictionWithAllLabelsAndConfidences(text:)(uint64_t a1, uint64_t a2)
{
  v55 = *(v2 + 8);
  v3 = *(v55 + 16);
  v4 = NLModel.predictedLabelHypotheses(for:maximumCount:)(a1, a2, v3);
  v5 = v4[2];
  if (v3 < v5)
  {
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v7 = 0xD000000000000037;
    *(v7 + 8) = "Vocabulary Size: " + 0x8000000000000000;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
    swift_willThrow();
    v4;
    return v4;
  }

  if (v3 == v5)
  {
    return v4;
  }

  specialized _NativeDictionary.makeIterator()(v4);
  v8 = v49;
  v9 = v50;
  v10 = (v48 + 64) >> 6;
  v11 = 0.0;
  while (1)
  {
    if (v9)
    {
      v12 = v8;
      goto LABEL_29;
    }

    v13 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v13 >= v10)
    {
      goto LABEL_30;
    }

    v9 = *(v47 + 8 * v13);
    if (v9)
    {
      v12 = v8 + 1;
      goto LABEL_29;
    }

    v12 = v8 + 2;
    if (v8 + 2 >= v10)
    {
      goto LABEL_30;
    }

    v9 = *(v47 + 8 * v13 + 8);
    if (!v9)
    {
      v12 = v8 + 3;
      if (v8 + 3 >= v10)
      {
        goto LABEL_30;
      }

      v9 = *(v47 + 8 * v13 + 16);
      if (!v9)
      {
        v12 = v8 + 4;
        if (v8 + 4 >= v10)
        {
          goto LABEL_30;
        }

        v9 = *(v47 + 8 * v13 + 24);
        if (!v9)
        {
          v12 = v8 + 5;
          if (v8 + 5 >= v10)
          {
            goto LABEL_30;
          }

          v9 = *(v47 + 8 * v13 + 32);
          if (!v9)
          {
            v12 = v8 + 6;
            if (v8 + 6 >= v10)
            {
              goto LABEL_30;
            }

            v9 = *(v47 + 8 * v13 + 40);
            if (!v9)
            {
              v12 = v8 + 7;
              if (v8 + 7 >= v10)
              {
                goto LABEL_30;
              }

              v9 = *(v47 + 8 * v13 + 48);
              if (!v9)
              {
                v12 = v8 + 8;
                if (v8 + 8 >= v10)
                {
                  goto LABEL_30;
                }

                v9 = *(v47 + 8 * v13 + 56);
                if (!v9)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_29:
    _BitScanForward64(&v15, v9);
    v9 &= v9 - 1;
    v11 = v11 + *(*(v46 + 56) + ((v12 << 9) | (8 * v15)));
    v8 = v12;
  }

  v14 = v8 + 9;
  while (v14 < v10)
  {
    v9 = *(v47 + 8 * v14++);
    if (v9)
    {
      v12 = v14 - 1;
      goto LABEL_29;
    }
  }

LABEL_30:
  swift_bridgeObjectRetain_n(v4, 2);
  v16 = 0;
  outlined consume of [String : [Double]].Iterator._Variant(v46);
  v17 = v3 - v4[2];
  v4;
  v18 = 1 << *(v55 + 32);
  v51 = (1.0 - v11) / v17;
  v19 = ~(-1 << v18);
  if (v18 >= 64)
  {
    v19 = -1;
  }

  v20 = *(v55 + 56) & v19;
  v54 = (v18 + 63) >> 6;

  while (2)
  {
    v21 = v16;
LABEL_34:
    if (v20)
    {
LABEL_35:
      v22 = v21;
      goto LABEL_50;
    }

    v23 = v21 + 1;
    if (__OFADD__(1, v21))
    {
      BUG();
    }

    if (v23 >= v54)
    {
      goto LABEL_67;
    }

    v20 = *(v55 + 8 * v23 + 56);
    if (v20)
    {
      v22 = v21 + 1;
LABEL_50:
      _BitScanForward64(&v24, v20);
      v52 = v20 & (v20 - 1);
      v25 = *(v55 + 48);
      v26 = (v22 << 10) | (16 * v24);
      v27 = *(v25 + v26);
      v28 = *(v25 + v26 + 8);
      v29 = v4[2];

      if (!v29 || (, specialized __RawDictionaryStorage.find<A>(_:)(v27, v28), v31 = v30, v4, (v31 & 1) == 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
        v53 = v27;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v4[2], v35);
        v37 = v4[2] + v35;
        if (v36)
        {
          BUG();
        }

        v57 = v33;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
        {
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v28);
          LOBYTE(v38) = v38 & 1;
          LOBYTE(v39) = v57;
          v16 = v22;
          if ((v57 & 1) != v38)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v28, v38, v39);
            BUG();
          }

          v40 = v53;
        }

        else
        {
          v16 = v22;
          v40 = v53;
          LOBYTE(v39) = v57;
        }

        if (v39)
        {
          *(v4[7] + 8 * v34) = v51;
          v28;
        }

        else
        {
          v4[(v34 >> 6) + 8] |= 1 << v34;
          v41 = v4[6];
          v42 = 16 * v34;
          *(v41 + v42) = v40;
          *(v41 + v42 + 8) = v28;
          *(v4[7] + 8 * v34) = v51;
          v43 = v4[2];
          v36 = __OFADD__(1, v43);
          v44 = v43 + 1;
          if (v36)
          {
            BUG();
          }

          v4[2] = v44;
        }

        v20 = v52;
        continue;
      }

      v28;
      v21 = v22;
      v20 = v52;
      goto LABEL_34;
    }

    break;
  }

  v22 = v21 + 2;
  if (v21 + 2 >= v54)
  {
    goto LABEL_67;
  }

  v20 = *(v55 + 8 * v23 + 64);
  if (v20)
  {
    goto LABEL_50;
  }

  v22 = v21 + 3;
  if (v21 + 3 >= v54)
  {
    goto LABEL_67;
  }

  v20 = *(v55 + 8 * v23 + 72);
  if (v20)
  {
    goto LABEL_50;
  }

  v22 = v21 + 4;
  if (v21 + 4 >= v54)
  {
    goto LABEL_67;
  }

  v20 = *(v55 + 8 * v23 + 80);
  if (v20)
  {
    goto LABEL_50;
  }

  v22 = v21 + 5;
  if (v21 + 5 >= v54)
  {
    goto LABEL_67;
  }

  v20 = *(v55 + 8 * v23 + 88);
  if (v20)
  {
    goto LABEL_50;
  }

  v22 = v21 + 6;
  if (v21 + 6 >= v54)
  {
    goto LABEL_67;
  }

  v20 = *(v55 + 8 * v23 + 96);
  if (v20)
  {
    goto LABEL_50;
  }

  v32 = v21 + 7;
  while (v32 < v54)
  {
    v20 = *(v55 + 8 * v32++ + 56);
    if (v20)
    {
      v21 = v32 - 1;
      goto LABEL_35;
    }
  }

LABEL_67:

  return v4;
}

uint64_t *MLTextClassifier.predictionsWithConfidence(from:)(uint64_t a1)
{
  v3 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v21 = &v17;
  outlined init with copy of MLTextClassifier(v2, &v17);
  v6 = *(a1 + 16);
  if (v6)
  {
    v22 = v1;
    v20 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v20;
    v8 = (a1 + 40);
    while (1)
    {
      v9 = v7;
      v18 = v6;
      v10 = *(v8 - 1);
      v19 = v8;
      v11 = *v8;

      v7 = v21;
      v12 = v22;
      v13 = MLTextClassifier.predictionWithAllLabelsAndConfidences(text:)(v10, v11);
      v22 = v12;
      if (v12)
      {
        break;
      }

      v14 = v13;
      v11;
      v7 = v9;
      v20 = v9;
      v15 = v9[2];
      if (v9[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2, v15 + 1, 1);
        v7 = v20;
      }

      v7[2] = v15 + 1;
      v7[v15 + 4] = v14;
      v8 = v19 + 2;
      v6 = v18 - 1;
      if (v18 == 1)
      {
        goto LABEL_10;
      }
    }

    v11;
    outlined destroy of MLTextClassifier(v21);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_10:
    outlined destroy of MLTextClassifier(v21);
  }

  return v7;
}

uint64_t *MLTextClassifier.predictions(from:)(uint64_t a1, double a2)
{
  v32 = v2;
  v4 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v8);
  v9 = v8;
  v10 = &v29;
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v7, v9, a2);
  outlined init with copy of MLTextClassifier(v3, &v29);
  v12 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
  if (v12)
  {
    v37 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v37;
    v33 = &v29;
    v31 = v29;
    v34 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v14 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 5;
    do
    {
      v29 = v12;
      v30 = v14;
      v15 = *v14;

      v16 = String._bridgeToObjectiveC()();
      v17 = [v31 predictedLabelForString:v16];
      v18 = v17;

      if (v18)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)(v18);
        v36 = v19;
        v15;
      }

      else
      {
        v15;
        v35 = 0;
        v36 = 0xE000000000000000;
      }

      v37 = v13;
      v20 = v13[2];
      v21 = v29;
      if (v13[3] >> 1 <= v20)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13[3] >= 2uLL, v20 + 1, 1);
        v13 = v37;
      }

      v13[2] = v20 + 1;
      v22 = 2 * v20;
      v13[v22 + 4] = v35;
      v13[v22 + 5] = v36;
      v14 = v30 + 2;
      v12 = v21 - 1;
    }

    while (v12);
    v10 = v33;
    LOBYTE(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5) = v34;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  outlined destroy of MLTextClassifier(v10);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v37 = v13;
  v23 = alloca(24);
  v24 = alloca(32);
  v31 = &v37;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v27 = v26;
  v37;
  result = v32;
  *v32 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v27 & 1;
  return result;
}

uint64_t *MLTextClassifier.predictionsWithConfidence(from:)(uint64_t a1, double a2)
{
  v33 = v3;
  v31 = v2;
  v5 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *a1;
  v9 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v9);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v8, v9, a2);
  v34 = &v29;
  outlined init with copy of MLTextClassifier(v4, &v29);
  v11 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
  if (v11)
  {
    v35 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v36 = v35;
    v32 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v12 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 5;
    while (1)
    {
      v30 = v11;
      v13 = *(v12 - 1);
      v14 = *v12;

      v15 = v33;
      v16 = MLTextClassifier.predictionWithAllLabelsAndConfidences(text:)(v13, v14);
      if (v15)
      {
        break;
      }

      v17 = v16;
      v33 = 0;
      v14;
      v18 = v36;
      v35 = v36;
      v19 = v36[2];
      v20 = v36[3];
      v21 = v19 + 1;
      if (v20 >> 1 <= v19)
      {
        v36 = (v19 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v21, 1);
        v21 = v36;
        v18 = v35;
      }

      v18[2] = v21;
      v36 = v18;
      v18[v19 + 4] = v17;
      v12 += 2;
      v11 = v30 - 1;
      if (v30 == 1)
      {
        LOBYTE(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5) = v32;
        v23 = v36;
        goto LABEL_10;
      }
    }

    v14;
    outlined destroy of MLTextClassifier(v34);
    return v32;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_10:
    outlined destroy of MLTextClassifier(v34);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v35 = v23;
    v24 = alloca(24);
    v25 = alloca(32);
    v31 = &v35;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
    v28 = v27;
    v35;
    result = v31;
    *v31 = ML14_UntypedColumnC_s5Error_pTt1g5;
    *(result + 8) = v28 & 1;
  }

  return result;
}

uint64_t outlined destroy of MLTextClassifier(uint64_t a1)
{
  v1 = type metadata accessor for MLTextClassifier(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLWordTagger.ModelParameters.init(validation:algorithm:language:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = v3;
  v5 = v3;
  v6 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  LOBYTE(v6) = *(a2 + 16);
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 24) = a3;
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(a1, v10);
  MLWordTagger.ModelParameters.validation.setter(v10);
  return outlined destroy of MLWordTagger.ModelParameters.ValidationData(a1);
}

uint64_t MLWordTagger.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 32, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

void MLWordTagger.ModelParameters.init(validationData:algorithm:language:tokenColumnValidationData:labelColumnValidationData:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a4;
  v9 = v7;
  v20 = a6;
  v21 = a5;
  v10 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a2 + 16);
  *(v9 + 80) = 0;
  *(v9 + 64) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 1;
  *v9 = *a2;
  *(v9 + 16) = v15;
  *(v9 + 24) = a3;
  v17 = v13;
  v18 = v14;
  v16 = a3;
  MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v17, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  MLWordTagger.ModelParameters.validation.setter(&v17);
  MLWordTagger.ModelParameters.tokenColumnValidationData.setter(v19, v21);
  MLWordTagger.ModelParameters.labelColumnValidationData.setter(v20, a7);
}

id MLWordTagger.ModelParameters.description.getter()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  if (*(v0 + 16) == 1)
  {
    if (*v0)
    {
      if (*v0 == 1)
      {
        v1 = 0xD000000000000027;
        v2 = "Unspecified Language";
      }

      else
      {
        v1 = 0xD000000000000046;
        v2 = "Average Tokens per Sequence";
      }
    }

    else
    {
      v1 = 0xD000000000000016;
      v2 = "ge Model Text Embedding";
    }

    v13 = v1;

    v5 = 0x6C65646F4D20;
    v4._object = 0xE600000000000000;
    String.append(_:)(v4);
    v2;
    v4._countAndFlagsBits = v13;
    v3 = (v2 | 0x8000000000000000);
  }

  else
  {
    v3 = "Dynamic Text Embedding" + 0x8000000000000000;
    v4._countAndFlagsBits = 0xD00000000000001ELL;
  }

  v4._object = v3;
  String.append(_:)(v4);
  v3;
  v6._countAndFlagsBits = v14;
  v7 = v15;
  v14 = 0xD000000000000010;
  v15 = "than the trained model." + 0x8000000000000000;
  v6._object = v7;
  String.append(_:)(v6);
  v7;

  v6._countAndFlagsBits = 0x676175676E614C0ALL;
  v6._object = 0xEB00000000203A65;
  String.append(_:)(v6);
  ("than the trained model." + 0x8000000000000000);
  v14 = *(v0 + 24);
  v14;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v14 = String.init<A>(describing:)(&v14, v8);
  v15 = v9;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v10 = v14;
  v11 = v15;
  v14 = 0xD000000000000010;
  v15 = "than the trained model." + 0x8000000000000000;

  v6._countAndFlagsBits = v10;
  v6._object = v11;
  String.append(_:)(v6);
  ("than the trained model." + 0x8000000000000000);
  v11;
  return v14;
}

uint64_t MLWordTagger.ModelParameters.algorithm.getter()
{
  v2 = *(v1 + 16);
  *result = *v1;
  *(result + 16) = v2;
  return result;
}

char MLWordTagger.ModelParameters.algorithm.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

void *MLWordTagger.ModelParameters.language.getter()
{
  v1 = *(v0 + 24);
  v1;
  return v1;
}

uint64_t MLWordTagger.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 32, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLWordTagger.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLWordTagger.ModelParameters.validationData : MLWordTagger.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLWordTagger.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLWordTagger.ModelParameters.validationData : MLWordTagger.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLWordTagger.ModelParameters.validationData.setter(&v3);
}

uint64_t MLWordTagger.ModelParameters.validationData.setter(uint64_t *a1)
{
  v1 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v6, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  return MLWordTagger.ModelParameters.validation.setter(&v6);
}

uint64_t MLWordTagger.ModelParameters.validation.setter(uint64_t a1)
{
  *(v1 + 72);
  *(v1 + 64) = 0;
  v4[3] = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLWordTagger.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 32);
}

void (*MLWordTagger.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  *(a1 + 24) = malloc(*(*(v3 - 8) + 64));
  MLWordTagger.ModelParameters.validationData.getter(a2);
  return MLWordTagger.ModelParameters.validationData.modify;
}

void MLWordTagger.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  if (a2)
  {
    v5 = v3;
    outlined copy of MLDataTable?(v2, v3);
    MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v6, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
    MLWordTagger.ModelParameters.validation.setter(v4);
    outlined consume of MLDataTable?(v2, v5);
  }

  else
  {
    MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v6, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
    MLWordTagger.ModelParameters.validation.setter(v4);
  }

  free(v4);
}

uint64_t MLWordTagger.ModelParameters.tokenColumnValidationData.getter()
{
  v1 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of Any?(v0 + 32, &v11);
  if (!v12)
  {
    BUG();
  }

  outlined init with take of Any(&v11, &v9);
  swift_dynamicCast(&v9, &v9, &type metadata for Any + 8, v1, 7);
  if (swift_getEnumCaseMultiPayload(&v9, v1) == 1)
  {
    v5 = v9;
    v6 = v10;
    v7 = BYTE8(v9);
    SBYTE8(v11);
    outlined consume of Result<_DataTable, Error>(v5, v7);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v9);
    v6 = *(v0 + 64);
  }

  return v6;
}

uint64_t MLWordTagger.ModelParameters.tokenColumnValidationData.setter(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v19 = a1;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  outlined init with copy of Any?(v2 + 32, &v16);
  if (!v17)
  {
    BUG();
  }

  outlined init with take of Any(&v16, &v13);
  swift_dynamicCast(&v13, &v13, &type metadata for Any + 8, v3, 7);
  if (swift_getEnumCaseMultiPayload(&v13, v3) == 1)
  {
    v9 = v13;
    v21 = BYTE8(v13);
    v18 = v16;
    v15;
    *(v2 + 72);
    v10 = v19;
    if (!v20)
    {
      v10 = 1954047348;
    }

    v11 = 0xE400000000000000;
    if (v20)
    {
      v11 = v20;
    }

    *(v2 + 64) = 0;
    *&v13 = v9;
    BYTE8(v13) = v21;
    v14 = v10;
    v15 = v11;
    v16 = v18;
    swift_storeEnumTagMultiPayload(&v13, v3, 1);
    return MLWordTagger.ModelParameters.validation.setter(&v13);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v13);
    *(v2 + 72);
    *(v2 + 64) = v19;
    result = v20;
    *(v2 + 72) = v20;
  }

  return result;
}

uint64_t (*MLWordTagger.ModelParameters.tokenColumnValidationData.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = MLWordTagger.ModelParameters.tokenColumnValidationData.getter();
  a1[1] = v2;
  return MLWordTagger.ModelParameters.tokenColumnValidationData.modify;
}

uint64_t MLWordTagger.ModelParameters.labelColumnValidationData.getter()
{
  v1 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of Any?(v0 + 32, &v11);
  if (!v12)
  {
    BUG();
  }

  outlined init with take of Any(&v11, &v9);
  swift_dynamicCast(&v9, &v9, &type metadata for Any + 8, v1, 7);
  if (swift_getEnumCaseMultiPayload(&v9, v1) == 1)
  {
    v5 = v9;
    v6 = v11;
    v7 = BYTE8(v9);
    v10;
    outlined consume of Result<_DataTable, Error>(v5, v7);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v9);
    v6 = *(v0 + 80);
  }

  return v6;
}

uint64_t key path setter for MLWordTagger.ModelParameters.tokenColumnValidationData : MLWordTagger.ModelParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t MLWordTagger.ModelParameters.labelColumnValidationData.setter(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v18 = a1;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  outlined init with copy of Any?(v2 + 32, &v15);
  if (!v16)
  {
    BUG();
  }

  outlined init with take of Any(&v15, &v13);
  swift_dynamicCast(&v13, &v13, &type metadata for Any + 8, v3, 7);
  if (swift_getEnumCaseMultiPayload(&v13, v3) == 1)
  {
    v9 = v13;
    v20 = BYTE8(v13);
    v17 = v14;
    SBYTE8(v15);
    *(v2 + 88);
    v10 = v18;
    if (!v19)
    {
      v10 = 0x6C6562616CLL;
    }

    v11 = 0xE500000000000000;
    if (v19)
    {
      v11 = v19;
    }

    *(v2 + 80) = 0;
    *&v13 = v9;
    BYTE8(v13) = v20;
    v14 = v17;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    swift_storeEnumTagMultiPayload(&v13, v3, 1);
    return MLWordTagger.ModelParameters.validation.setter(&v13);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v13);
    *(v2 + 88);
    *(v2 + 80) = v18;
    result = v19;
    *(v2 + 88) = v19;
  }

  return result;
}

uint64_t (*MLWordTagger.ModelParameters.labelColumnValidationData.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = MLWordTagger.ModelParameters.labelColumnValidationData.getter();
  a1[1] = v2;
  return MLWordTagger.ModelParameters.labelColumnValidationData.modify;
}

uint64_t MLWordTagger.ModelParameters.tokenColumnValidationData.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v5);
  }

  a3(v4, v5);
  return v5;
}

uint64_t (*MLWordTagger.ModelParameters.maxIterations.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  return MLWordTagger.ModelParameters.maxIterations.modify;
}

uint64_t MLWordTagger.ModelParameters.maxIterations.modify(uint64_t a1)
{
  result = *(a1 + 16);
  v2 = *(a1 + 8);
  *(result + 96) = *a1;
  *(result + 104) = v2;
  return result;
}

uint64_t key path setter for MLWordTagger.ModelParameters.validation : MLWordTagger.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(a1, v6);
  return MLWordTagger.ModelParameters.validation.setter(v6);
}

void (*MLWordTagger.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x58uLL);
  *a1 = v2;
  *(v2 + 8) = v1;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 9) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 10) = v5;
  outlined init with copy of Any?(v1 + 32, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLWordTagger.ModelParameters.validation.modify;
}

void MLWordTagger.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of MLWordTagger.ModelParameters.ValidationData(v3, v4);
    MLWordTagger.ModelParameters.validation.setter(v4);
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(v3);
  }

  else
  {
    MLWordTagger.ModelParameters.validation.setter(v3);
  }

  free(v3);
  free(v4);
  free(v2);
}

void MLWordTagger.ModelParameters.init(validationData:algorithm:language:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v12 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v6 = *(*(v12 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  LOBYTE(v6) = *(a2 + 16);
  v13 = v5 + 32;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 24) = a3;
  v14 = a3;
  static MLWordTagger.generateTextTable(_:tokenColumn:labelColumn:)(a1, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  a1;
  MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(v11, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  *(v5 + 64) = 0;
  v11[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  outlined init with take of MLWordTagger.ModelParameters.ValidationData(&v10, boxed_opaque_existential_0);
  outlined assign with take of Any?(v11, v13);
  MLWordTagger.ModelParameters.tokenColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLWordTagger.ModelParameters.labelColumnValidationData.setter(0x736C6562616CLL, 0xE600000000000000);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLWordTagger.ModelParameters.validateRevision()()
{
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    if (v1)
    {
      return;
    }

    v1 = *v0;
  }

  if (!NLPSequenceModelIsRevisionSupported(v1))
  {
    _StringGuts.grow(_:)(29);
    0;
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v2._object;
    String.append(_:)(v2);
    object;
    v4._object = "und in the model." + 0x8000000000000000;
    v4._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v4);
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0x6E6F697369766552;
    *(v6 + 8) = 0xE900000000000020;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    swift_willThrow();
  }
}

id MLWordTagger.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLWordTagger.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t outlined init with take of MLWordTagger.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t sub_215856(uint64_t a1)
{
  v2 = v1;
  result = MLWordTagger.ModelParameters.tokenColumnValidationData.getter();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_215886(uint64_t a1)
{
  v2 = v1;
  result = MLWordTagger.ModelParameters.labelColumnValidationData.getter();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_2158B6()
{
  v1 = v0;
  result = MLWordTagger.ModelParameters.maxIterations.getter();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t destroy for MLWordTagger.ModelParameters(uint64_t a1)
{
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  *(a1 + 72);
  return *(a1 + 88);
}

uint64_t initializeWithCopy for MLWordTagger.ModelParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v4 = *(a2 + 56);
  v3;
  if (v4)
  {
    *(a1 + 56) = v4;
    (**(v4 - 8))(a1 + 32, a2 + 32, v4);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for MLWordTagger.ModelParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  v4;

  v5 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v5)
    {
      *(a1 + 56) = v5;
      (**(v5 - 8))(a1 + 32, a2 + 32);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v6;
    goto LABEL_8;
  }

  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 32), (a2 + 32));
LABEL_8:
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v7;
  *(a1 + 80) = *(a2 + 80);
  v8 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v8;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *__swift_memcpy105_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x69uLL);
  return result;
}

uint64_t assignWithTake for MLWordTagger.ModelParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v5;
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLWordTagger.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLWordTagger.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 104) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 105) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v2[3] = v3;
  v4 = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = v4;
  v5 = (a2 + *a2);
  v6 = swift_task_alloc(a2[1]);
  v2[5] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TQ0_;
  return v5(v4);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TQ0_()
{
  v2 = *(*v1 + 40);
  *(*v1 + 48) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY1_()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload(v1, *(v0 + 24), 0);
  outlined init with take of DataFrame?(v1, v2, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY2_()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 48);
  swift_storeEnumTagMultiPayload(v1, v2, 1);
  *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v2[3] = v3;
  v4 = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = v4;
  v5 = (a2 + *a2);
  v6 = swift_task_alloc(a2[1]);
  v2[5] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TQ0_;
  return v5(v4);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TQ0_()
{
  v2 = *(*v1 + 40);
  *(*v1 + 48) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TY1_()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload(v1, *(v0 + 24), 0);
  outlined init with take of DataFrame?(v1, v2, &demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  v2[3] = v3;
  v4 = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = v4;
  v5 = (a2 + *a2);
  v6 = swift_task_alloc(a2[1]);
  v2[5] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TQ0_;
  return v5(v4);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TQ0_()
{
  v2 = *(*v1 + 40);
  *(*v1 + 48) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TY1_()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload(v1, *(v0 + 24), 0);
  outlined init with take of DataFrame?(v1, v2, &demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  *(v0 + 32);
  return (*(v0 + 8))();
}

char MLObjectDetector.init(checkpoint:)(uint64_t a1)
{
  v33 = v2;
  v31 = v1;
  v32 = type metadata accessor for URL(0);
  v34 = *(v32 - 8);
  v3 = *(v34 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v30 = &v25;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v25;
  v8 = *(type metadata accessor for MLCheckpoint(0) - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v36 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, &v25, type metadata accessor for MLCheckpoint);
  v12 = *(v8 + 80);
  v13 = ~*(v8 + 80) & (v12 + 16);
  v14 = swift_allocObject(&unk_393C68, v13 + v9, v12 | 7);
  outlined init with take of MLClassifierMetrics(&v25, v14 + v13, type metadata accessor for MLCheckpoint);
  v15 = v33;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLObjectDetector.init(checkpoint:), v14);
  if (v15)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLCheckpoint);
  }

  else
  {
    v17 = v16;

    *v31 = v17;
    v18 = v35;
    URL.deletingLastPathComponent()(v14);
    v19 = v30;
    (*(v34 + 16))(v30, v18, v32);
    MLObjectDetector.PersistentParameters.init(sessionDirectory:)(v19);
    memcpy(__dst, __src, 0x81uLL);
    memcpy(v27, __src, sizeof(v27));
    v33 = type metadata accessor for MLObjectDetector(0);
    v21 = v31;
    outlined retain of MLObjectDetector.PersistentParameters(__dst);
    MLObjectDetector.PersistentParameters.modelParameters.getter();
    outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLCheckpoint);
    memcpy(v26, v27, 0x81uLL);
    outlined release of MLObjectDetector.PersistentParameters(v26);
    (*(v34 + 8))(v35, v32);
    outlined release of MLObjectDetector.PersistentParameters(__dst);
    result = __dst[64];
    v22 = __dst[65];
    v23 = __dst[66];
    v24 = *(v33 + 24);
    *(v21 + v24) = __dst[64];
    *(v21 + v24 + 1) = v22;
    *(v21 + v24 + 2) = v23;
  }

  return result;
}

uint64_t sub_2162F9()
{
  v11 = v0;
  v1 = type metadata accessor for MLCheckpoint(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = v5 + *(v1 + 28);
  v9 = type metadata accessor for Date(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(*(v1 + 32) + v5);
  return swift_deallocObject(v11, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLObjectDetector.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLCheckpoint(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(checkpoint:)(a1, v4);
}

uint64_t outlined retain of MLObjectDetector.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  outlined copy of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined copy of MLDataTable?(v1, v2);

  return a1;
}

_BYTE *static MLObjectDetector.train(trainingData:annotationType:parameters:sessionParameters:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, __m128 a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v12[0] = *a2;
  v12[1] = v6;
  v12[2] = v7;
  result = static MLObjectDetector.makeTrainingSession(trainingData:annotationType:parameters:sessionParameters:)(a1, v12, a3, a4, a5);
  if (!v5)
  {
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLObjectDetector>);
    v11 = swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLJob.init(_:)(v11, v9);
  }

  return result;
}

_BYTE *static MLObjectDetector.makeTrainingSession(trainingData:annotationType:parameters:sessionParameters:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, __m128 a5)
{
  v56 = v5;
  v48 = a4;
  v52 = a3;
  v18 = a2;
  v6 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v37;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v43 = &v37;
  v11 = *(*(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = &v37;
  v14 = type metadata accessor for MLObjectDetector.DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  LOBYTE(v54) = *a2;
  v57 = a2[1];
  LOBYTE(v18) = a2[2];
  v53 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, &v37, type metadata accessor for MLObjectDetector.DataSource);
  if (swift_getEnumCaseMultiPayload(&v37, v14) == 2)
  {
    LOBYTE(v55) = v18;
    v18 = v37;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    v22 = v38;
    v38 = v37;
    LOBYTE(v39) = v22;
    v23 = v56;
    static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(&v38, v19, v40, v41, v42);
    v21;
    v20;
    outlined consume of Result<_DataTable, Error>(v18, v22);
    v56 = v23;
    if (v23)
    {
      return v18;
    }

    LOBYTE(v18) = v55;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v37, type metadata accessor for MLObjectDetector.DataSource);
  }

  v24 = v56;
  static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(v53, 0, 0, 0, 0, a5);
  v56 = v24;
  v25 = v52;
  if (!v24)
  {
    v26 = v18;
    v27 = v38;
    v28 = v39;
    v50 = v38;
    v51 = v39;
    MLObjectDetector.ModelParameters.ValidationData.generateTables(trainingData:)(&v38, &v45, &v50, a5);
    v56 = 0;
    v59 = v28;
    v49 = v27;
    v29 = v38;
    v55 = v39;
    v53 = v45;
    v58 = v46;
    LOBYTE(v39) = v39 & 1;
    LOBYTE(v50) = v54;
    BYTE1(v50) = v57;
    BYTE2(v50) = v26;
    outlined init with copy of MLTrainingSessionParameters(v25, v47, type metadata accessor for MLObjectDetector.ModelParameters);
    v30 = v43;
    outlined init with copy of MLTrainingSessionParameters(v48, v43, type metadata accessor for MLTrainingSessionParameters);
    v18 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
    swift_allocObject(v18, *(v18 + 12), *(v18 + 26));
    v52 = v29;
    outlined copy of Result<_DataTable, Error>(v29, v55);
    v54 = v58;
    outlined copy of MLDataTable?(v53, v58);
    v31 = v56;
    v32 = ObjectDetectorTrainingSessionDelegate.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:sessionParameters:)(&v38, &v45, 0x7461506567616D69, 0xE900000000000068, 0x697461746F6E6E61, 0xEA00000000006E6FLL, &v50, v47, v30);
    v56 = v31;
    if (v31)
    {
      outlined consume of Result<_DataTable, Error>(v52, v55);
      outlined consume of MLDataTable?(v53, v54);
      outlined consume of Result<_DataTable, Error>(v49, v59);
    }

    else
    {
      v41 = v18;
      v42 = &protocol witness table for ObjectDetectorTrainingSessionDelegate;
      v38 = v32;
      v34 = v44;
      outlined init with copy of MLTrainingSessionParameters(v48, v44, type metadata accessor for MLTrainingSessionParameters);
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>);
      swift_allocObject(v35, *(v35 + 48), *(v35 + 52));

      v36 = v56;
      v18 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v38, v34, 17);
      outlined consume of Result<_DataTable, Error>(v52, v55);
      outlined consume of MLDataTable?(v53, v54);

      outlined consume of Result<_DataTable, Error>(v49, v59);
      v56 = v36;
    }
  }

  return v18;
}

void *static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLObjectDetector>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLObjectDetector.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ObjectDetectorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ObjectDetectorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 17);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v40 = a5;
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v42 = v30;
  v14 = *(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = alloca(v15);
  v19 = alloca(v15);
  if (a2)
  {
    v30[0] = a1;
    swift_storeEnumTagMultiPayload(v30, v7, 1);
    swift_errorRetain(a1);
    v41(v30);
    return outlined destroy of Result<MLObjectDetector, Error>(v30);
  }

  else
  {
    v37 = v14;
    v36 = v15;
    v35 = v30;
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, __src);
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v22 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
    swift_dynamicCast(__dst, __src, v21, v22, 7);
    v38 = __dst[0];
    v23 = (__dst[0] + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters);
    memcpy(__dst, (__dst[0] + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
    memmove(__src, v23, 0x81uLL);
    if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(__src) == 1)
    {
      BUG();
    }

    memcpy(v32, __src, sizeof(v32));
    memcpy(v31, __dst, 0x81uLL);
    outlined retain of MLObjectDetector.PersistentParameters(v31);
    v39 = v30;
    MLObjectDetector.PersistentParameters.modelParameters.getter();
    memcpy(v30, v32, 0x81uLL);
    outlined release of MLObjectDetector.PersistentParameters(v30);
    v24 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v24);
    v25 = v35;
    outlined init with copy of MLTrainingSessionParameters(v30, v35, type metadata accessor for MLObjectDetector.ModelParameters);
    v26 = *(v37 + 80);
    v27 = ~*(v37 + 80) & (v26 + 40);
    v28 = (v36 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject(&unk_393C90, v28 + 16, v26 | 7);
    *(v29 + 16) = 0;
    *(v29 + 32) = v38;
    outlined init with take of MLClassifierMetrics(v25, v29 + v27, type metadata accessor for MLObjectDetector.ModelParameters);
    *(v29 + v28) = v41;
    *(v29 + v28 + 8) = v40;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v42, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), v29);

    return outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLObjectDetector.ModelParameters);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[4] = a6;
  v7[3] = a5;
  v7[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  v7[6] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)()
{
  v1 = swift_task_alloc(32);
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc(64);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5Tu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5Tu))(*(v0 + 48), &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), v1);
}

{
  v1 = *(*v0 + 56);
  *(*v0 + 64);
  v1;
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  outlined destroy of Result<MLObjectDetector, Error>(v1);
  v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a3;
  v3[20] = a2;
  v3[19] = a1;
  v4 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v3[22] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);
  *(v0 + 184) = v4;
  outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLObjectDetector.ModelParameters);
  memcpy((v0 + 16), (OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters + v2), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(v0 + 16) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 81);
  *(v0 + 145) = *(v0 + 80);
  *(v0 + 146) = v5;
  *(v0 + 147) = *(v0 + 82);
  v6 = type metadata accessor for _Model();
  swift_allocObject(v6, 48, 7);
  swift_retain_n(v4, 2);
  v7 = swift_task_alloc(80);
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  return _Model.init(impl:)(v4);
}

{
  v1 = *(v0 + 208);
  v8 = *(v0 + 147);
  v2 = *(v0 + 145);
  v9 = *(v0 + 146);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);

  *v4 = v1;
  v5 = type metadata accessor for MLObjectDetector(0);
  outlined init with take of MLClassifierMetrics(v3, v4 + *(v5 + 20), type metadata accessor for MLObjectDetector.ModelParameters);
  v6 = *(v5 + 24);
  *(v4 + v6) = v2;
  *(v4 + v6 + 1) = v9;
  *(v4 + v6 + 2) = v8;
  v3;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 176);

  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLObjectDetector.ModelParameters);
  v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v5 = *(*v2 + 192);
  v4 = *v2;
  *(*v2 + 200) = v1;
  v5;
  if (v1)
  {
    v6 = closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  }

  else
  {
    *(v4 + 208) = a1;
    v6 = closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t outlined destroy of Result<MLObjectDetector, Error>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t _s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(uint64_t a1)
{
  result = 0;
  if ((*(a1 + 40) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + 40) >> 1) + 1;
  }

  return result;
}

uint64_t sub_2171D2()
{
  v1 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 40);
  v19 = *(v2 + 64);
  swift_unknownObjectRelease(*(v0 + 16));

  v5 = v4 + v0;
  v6 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v6);
  switch(EnumCaseMultiPayload)
  {
    case 3:
LABEL_7:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 8))(v4 + v0, v11);
      v21 = v1;
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(v5 + *(v12 + 48) + 8);
      v13 = *(v12 + 64);
      v1 = v21;
      v10 = *(v5 + v13 + 8);
      goto LABEL_8;
    case 2:
LABEL_6:
      outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
      *(v5 + 24);
      v10 = *(v5 + 40);
LABEL_8:
      v10;
      break;
    case 1:
      v8 = type metadata accessor for MLObjectDetector.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v4 + v0, v8))
      {
        case 0u:
          v9 = type metadata accessor for URL(0);
          (*(*(v9 - 8) + 8))(v4 + v0, v9);
          break;
        case 1u:
          v22 = v1;
          v16 = type metadata accessor for URL(0);
          v20 = *(*(v16 - 8) + 8);
          v20(v4 + v0, v16);
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v18 = v16;
          v1 = v22;
          v20(v5 + *(v17 + 48), v18);
          break;
        case 2u:
          goto LABEL_6;
        case 3u:
          goto LABEL_7;
        default:
          goto LABEL_9;
      }

      break;
  }

LABEL_9:
  v14 = *(v1 + 40);
  if (*(v5 + v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + v5));
  }

  return swift_deallocObject(v0, ((v19 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 40);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v7 = v1 + v4;
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = swift_task_alloc(80);
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(a1, v6, v12, v13, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(224);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(a1, v3, v4);
}

uint64_t MLFewShotSoundClassifier.performValidationStep(on:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v44 = a3;
  v38 = a2;
  v39 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = v31;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = type metadata accessor for Tensor(0);
  v10 = *(v9 - 8);
  v37 = v9;
  v36 = v10;
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = alloca(v11);
  v15 = alloca(v11);
  v40 = v31;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v43 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v9);
  LODWORD(v45) = *(v3 + 24);
  v18 = v3 + *(type metadata accessor for MLFewShotSoundClassifier(0) + 40);
  v32 = v44;
  v33 = v45;
  _mm_storel_ps(v34, _mm_shuffle_ps(*(v3 + 28), *(v3 + 28), 225));
  *&v34[3] = v31;
  v19 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  v20 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
  v42 = valueWithGradient<A>(at:of:)(v31, v18, partial apply for closure #1 in MLFewShotSoundClassifier.performStep(on:), v31, v19, v20);
  v21 = v36;
  v22 = *(v36 + 16);
  v45 = v31;
  v23 = v37;
  v41 = v22;
  v22(v43, v31, v37);
  v24 = v23;
  v44 = v31;
  v25 = v35;
  outlined init with copy of Tensor?(v31, v35);
  v26 = v25;
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    BUG();
  }

  v27 = *(v21 + 8);
  v27(v45, v24);
  v28 = v40;
  (*(v21 + 32))(v40, v26, v24);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for Tensor?);
  v42;
  v29 = v43;
  v41(v39, v43, v24);
  softmax(_:alongAxis:)(v28, -1);
  v27(v28, v24);
  return (v27)(v29, v24);
}

uint64_t closure #1 in MLFewShotSoundClassifier.performStep(on:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, _BYTE *a3, float a4, float a5, float a6)
{
  v241 = a3;
  v267 = a6;
  *&v263 = a5;
  *&v276 = a4;
  v265 = a1;
  v243 = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v242 = v240;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v259 = v240;
  v255 = type metadata accessor for TensorShape(0);
  v262 = *(v255 - 8);
  v13 = *(v262 + 8);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v256 = v240;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LossReduction?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v274 = v240;
  v283 = type metadata accessor for Tensor(0);
  v273 = *(v283 - 8);
  v19 = *(v273 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v245 = v240;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v254 = v240;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v257 = v240;
  v26 = alloca(v19);
  v27 = alloca(v19);
  v260 = v240;
  v28 = alloca(v19);
  v29 = alloca(v19);
  v270 = v240;
  v30 = alloca(v19);
  v31 = alloca(v19);
  v275 = v240;
  v32 = alloca(v19);
  v33 = alloca(v19);
  v281 = v240;
  v34 = alloca(v19);
  v35 = alloca(v19);
  v279 = v240;
  v36 = alloca(v19);
  v37 = alloca(v19);
  v282 = v240;
  v38 = alloca(v19);
  v39 = alloca(v19);
  v280 = v240;
  v40 = alloca(v19);
  v41 = alloca(v19);
  v278 = v240;
  v42 = alloca(v19);
  v43 = alloca(v19);
  v272 = v240;
  v44 = alloca(v19);
  v45 = alloca(v19);
  v268 = v240;
  v46 = alloca(v19);
  v47 = alloca(v19);
  v258 = v240;
  v48 = alloca(v19);
  v49 = alloca(v19);
  v269 = v240;
  v50 = alloca(v19);
  v51 = alloca(v19);
  v277 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier.Output(0);
  v52 = *(*(v277 - 8) + 64);
  v53 = alloca(v52);
  v54 = alloca(v52);
  v271 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v251 = v240;
  v266 = a2;
  DataSample.features.getter(v271);
  v55 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  v56 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
  v252 = v240;
  Layer.callAsFunction(_:)(v240, v55, v56);
  v265 = *(v273 + 8);
  v265(v240, v283);
  v57 = &v240[*(v277 + 28)];
  v58 = v269;
  DataSample.labels.getter(v271);
  LODWORD(v55) = enum case for LossReduction.mean(_:);
  v59 = type metadata accessor for LossReduction(0);
  v60 = v274;
  (*(*(v59 - 8) + 104))(v274, v55, v59);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v59);
  softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)(v57, v58, -1, v60, 0.0);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for LossReduction?);
  v61 = v58;
  v62 = v265;
  v265(v61, v283);
  v63 = v258;
  DataSample.labels.getter(v271);
  v64 = v268;
  v244 = v57;
  softmax(_:alongAxis:)(v57, -1);
  v65 = v278;
  v66 = v64;
  v67 = v63;
  static Tensor.* infix(_:_:)(v66, v63);
  Tensor.sum(alongAxes:)(&outlined read-only object #0 of closure #1 in MLFewShotSoundClassifier.performStep(on:));
  v68 = v283;
  v62(v65, v283);
  v69 = v279;
  Tensor.init(floatLiteral:)(1.0);
  v70 = v282;
  static Tensor.- infix(_:_:)(v69, v67);
  v62(v69, v68);
  v71 = v280;
  static Tensor.* infix(_:_:)(v268, v70);
  v62(v70, v68);
  v72 = v278;
  Tensor.max(alongAxes:)(&outlined read-only object #1 of closure #1 in MLFewShotSoundClassifier.performStep(on:));
  v62(v71, v68);
  v73 = v272;
  static Tensor.- infix(_:_:)(v272, v72);
  v62(v72, v68);
  v62(v73, v68);
  v62(v268, v68);
  v62(v258, v68);
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>);
  v75 = v273;
  v77 = *(v273 + 80);
  v78 = (v77 + 32) & ~*(v273 + 80);
  v274 = *(v273 + 72);
  v76 = v274;
  v79 = swift_allocObject(v74, v78 + 4 * v274, v77 | 7);
  v261 = v79;
  *(v79 + 16) = 4;
  *(v79 + 24) = 8;
  v80 = v79 + v78;
  DataSample.features.getter(v271);
  v81 = v80 + v76;
  v82 = *(v75 + 16);
  v83 = v252;
  v84 = v283;
  v82(v81, v252, v283);
  v82(v80 + 2 * v274, (v83 + *(v277 + 20)), v84);
  v246 = 3 * v274;
  v85 = v83 + *(v277 + 24);
  v271 = v82;
  v82(3 * v274 + v80, v85, v84);
  LOBYTE(v80) = v261;
  v86 = gradient(at:of:)(v261, v269);
  v80;
  v277 = v86;
  if (!*(v86 + 16))
  {
    BUG();
  }

  v261 = v277 + v78;
  v271(v268, v277 + v78, v283);
  v253 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v87 = v253;
  v88 = swift_allocObject(v253, 48, 7);
  v88[2] = 2;
  v88[3] = 4;
  v89 = v256;
  Tensor.shape.getter(v87, 48, v90);
  v91 = TensorShape.subscript.getter(0);
  v92 = *(v262 + 1);
  v93 = v255;
  v92(v89, v255);
  v88[4] = v91;
  v88[5] = -1;
  TensorShape.init(_:)(v88);
  v94 = v272;
  Tensor.reshaped(to:)(v89);
  v262 = v92;
  v92(v89, v93);
  v95 = alloca(24);
  v96 = alloca(32);
  v241 = v94;
  v97 = v278;
  v98 = v283;
  withoutGradient<A>(_:)(partial apply for closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:), v240, v283);
  v264 = 0;
  v99 = v282;
  static Tensor.+ infix<A>(_:_:)(v97, v248, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v269, v99);
  v100 = v265;
  v265(v99, v98);
  v273 = Tensor.scalarType.getter(v99, v98, v101, v102);
  v266 = v103;
  v104 = type metadata accessor for ComputeDevice(0);
  v105 = v259;
  __swift_storeEnumTagSinglePayload(v259, 1, 1, v104);
  v106 = v273;
  Tensor.init(coercing:scalarType:on:)(v248, v273, v266, v105);
  v249 = &type metadata for Float;
  v250 = &protocol witness table for Float;
  *&v266 = (1.0 - *&v263) * *&v276;
  *v248 = *&v266;
  v109 = Tensor.scalarType.getter(v248, v106, v107, v108);
  v111 = v110;
  v273 = v104;
  __swift_storeEnumTagSinglePayload(v105, 1, 1, v104);
  v112 = v279;
  Tensor.init(coercing:scalarType:on:)(v248, v109, v111, v105);
  v113 = v270;
  v114 = v280;
  static Tensor.- infix(_:_:)(v112, v280);
  v115 = v275;
  relu(_:)(v113);
  v116 = v283;
  v100(v113, v283);
  static Tensor.+ infix(_:_:)(v114, v115);
  v100(v115, v116);
  v117 = v260;
  static Tensor.- infix(_:_:)(v282, v281);
  relu(_:)(v117);
  v100(v117, v116);
  v118 = v282;
  static Tensor.- infix(_:_:)(v113, v282);
  v100(v113, v116);
  Tensor.mean()();
  v100(v115, v116);
  v100(v281, v116);
  v100(v279, v116);
  v100(v118, v116);
  v100(v280, v116);
  v100(v278, v116);
  v100(v272, v116);
  v100(v268, v116);
  if (*(v277 + 16) < 2uLL)
  {
    BUG();
  }

  v271(v272, v261 + v274, v283);
  v119 = v253;
  v120 = swift_allocObject(v253, 48, 7);
  v120[2] = 2;
  v120[3] = 4;
  v121 = v256;
  Tensor.shape.getter(v119, 48, v122);
  v123 = TensorShape.subscript.getter(0);
  v124 = v255;
  v125 = v262;
  v262(v121, v255);
  v120[4] = v123;
  v120[5] = -1;
  TensorShape.init(_:)(v120);
  v126 = v278;
  Tensor.reshaped(to:)(v121);
  v125(v121, v124);
  v127 = alloca(24);
  v128 = alloca(32);
  v285 = v126;
  v129 = v280;
  v130 = v283;
  v131 = v264;
  withoutGradient<A>(_:)(closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply, v284, v283);
  v247 = v131;
  v132 = v279;
  static Tensor.+ infix<A>(_:_:)(v129, v248, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v269, v132);
  v133 = v132;
  v134 = v265;
  v265(v133, v130);
  v263 = Tensor.scalarType.getter(v133, v130, v135, v136);
  v264 = v137;
  v138 = v259;
  v139 = v273;
  __swift_storeEnumTagSinglePayload(v259, 1, 1, v273);
  v140 = v263;
  Tensor.init(coercing:scalarType:on:)(v248, v263, v264, v138);
  v249 = &type metadata for Float;
  v250 = &protocol witness table for Float;
  LODWORD(v248[0]) = v266;
  v143 = Tensor.scalarType.getter(v248, v140, v141, v142);
  v145 = v144;
  __swift_storeEnumTagSinglePayload(v138, 1, 1, v139);
  v146 = v281;
  Tensor.init(coercing:scalarType:on:)(v248, v143, v145, v138);
  v147 = v260;
  v148 = v146;
  v149 = v282;
  static Tensor.- infix(_:_:)(v148, v282);
  v150 = v270;
  relu(_:)(v147);
  v151 = v283;
  v134(v147, v283);
  static Tensor.+ infix(_:_:)(v149, v150);
  v134(v150, v151);
  v152 = v257;
  v153 = v279;
  static Tensor.- infix(_:_:)(v279, v275);
  relu(_:)(v152);
  v154 = v152;
  v155 = v283;
  v134(v154, v283);
  static Tensor.- infix(_:_:)(v147, v153);
  v134(v147, v155);
  Tensor.mean()();
  v134(v150, v155);
  v134(v275, v155);
  v134(v281, v155);
  v134(v153, v155);
  v134(v282, v155);
  v134(v280, v155);
  v134(v278, v155);
  v134(v272, v155);
  if (*(v277 + 16) < 3uLL)
  {
    BUG();
  }

  v271(v278, v261 + 2 * v274, v283);
  v156 = v253;
  v157 = swift_allocObject(v253, 48, 7);
  v157[2] = 2;
  v157[3] = 4;
  v158 = v256;
  Tensor.shape.getter(v156, 48, v159);
  v160 = TensorShape.subscript.getter(0);
  v161 = v255;
  v162 = v262;
  v262(v158, v255);
  v157[4] = v160;
  v157[5] = -1;
  TensorShape.init(_:)(v157);
  v163 = v280;
  Tensor.reshaped(to:)(v158);
  v162(v158, v161);
  v164 = alloca(24);
  v165 = alloca(32);
  v285 = v163;
  v166 = v282;
  v167 = v283;
  v168 = v247;
  withoutGradient<A>(_:)(closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply, v284, v283);
  v264 = v168;
  v169 = v281;
  static Tensor.+ infix<A>(_:_:)(v166, v248, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v269, v169);
  v170 = v169;
  v171 = v265;
  v265(v170, v167);
  v274 = Tensor.scalarType.getter(v170, v167, v172, v173);
  v263 = v174;
  v175 = v259;
  v176 = v273;
  __swift_storeEnumTagSinglePayload(v259, 1, 1, v273);
  v177 = v274;
  Tensor.init(coercing:scalarType:on:)(v248, v274, v263, v175);
  v249 = &type metadata for Float;
  v250 = &protocol witness table for Float;
  LODWORD(v248[0]) = v266;
  v180 = Tensor.scalarType.getter(v248, v177, v178, v179);
  v274 = v181;
  __swift_storeEnumTagSinglePayload(v175, 1, 1, v176);
  v182 = v275;
  v183 = v257;
  Tensor.init(coercing:scalarType:on:)(v248, v180, v274, v175);
  v184 = v279;
  static Tensor.- infix(_:_:)(v182, v279);
  v185 = v260;
  relu(_:)(v183);
  v186 = v283;
  v171(v183, v283);
  static Tensor.+ infix(_:_:)(v184, v185);
  v171(v185, v186);
  v187 = v254;
  v188 = v281;
  static Tensor.- infix(_:_:)(v281, v270);
  relu(_:)(v187);
  v189 = v187;
  v190 = v283;
  v171(v189, v283);
  static Tensor.- infix(_:_:)(v183, v188);
  v171(v183, v190);
  Tensor.mean()();
  v171(v185, v190);
  v171(v270, v190);
  v171(v275, v190);
  v171(v188, v190);
  v171(v279, v190);
  v171(v282, v190);
  v171(v280, v190);
  v171(v278, v190);
  if (*(v277 + 16) < 4uLL)
  {
    BUG();
  }

  v271(v280, v246 + v261, v283);
  v277;
  v191 = v253;
  v192 = swift_allocObject(v253, 48, 7);
  v192[2] = 2;
  v192[3] = 4;
  v193 = v256;
  Tensor.shape.getter(v191, 48, v194);
  v195 = TensorShape.subscript.getter(0);
  v196 = v255;
  v197 = v262;
  v262(v193, v255);
  v192[4] = v195;
  v192[5] = -1;
  TensorShape.init(_:)(v192);
  v198 = v282;
  Tensor.reshaped(to:)(v193);
  v197(v193, v196);
  v199 = alloca(24);
  v200 = alloca(32);
  v285 = v198;
  v201 = v279;
  v202 = v283;
  withoutGradient<A>(_:)(closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply, v284, v283);
  v203 = v275;
  static Tensor.+ infix<A>(_:_:)(v201, v248, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v269, v203);
  v204 = v203;
  v205 = v265;
  v265(v204, v202);
  v276 = Tensor.scalarType.getter(v204, v202, v206, v207);
  v277 = v208;
  v209 = v259;
  __swift_storeEnumTagSinglePayload(v259, 1, 1, v273);
  v210 = v276;
  Tensor.init(coercing:scalarType:on:)(v248, v276, v277, v209);
  v213 = Tensor.scalarType.getter(v248, v210, v211, v212);
  v276 = v214;
  __swift_storeEnumTagSinglePayload(v209, 1, 1, v273);
  v215 = v270;
  Tensor.init(coercing:scalarType:on:)(v248, v213, v276, v209);
  v216 = v254;
  v217 = v281;
  static Tensor.- infix(_:_:)(v215, v281);
  v218 = v257;
  relu(_:)(v216);
  v205(v216, v202);
  v219 = v260;
  static Tensor.+ infix(_:_:)(v217, v218);
  v220 = v218;
  v221 = v205;
  v205(v220, v202);
  v222 = v245;
  v223 = v275;
  static Tensor.- infix(_:_:)(v275, v219);
  v224 = v254;
  relu(_:)(v222);
  v221(v222, v202);
  v225 = v257;
  static Tensor.- infix(_:_:)(v224, v223);
  v226 = v221;
  v221(v224, v202);
  Tensor.mean()();
  v221(v225, v202);
  v221(v260, v202);
  v221(v270, v202);
  v221(v275, v202);
  v221(v281, v202);
  v221(v279, v202);
  v221(v282, v202);
  v227 = v280;
  v228 = v280;
  v221(v280, v202);
  v249 = &type metadata for Double;
  v250 = &protocol witness table for Double;
  v248[0] = 0x3FD0000000000000;
  v270 = Tensor.scalarType.getter(v228, v202, v229, v248);
  v276 = v230;
  v231 = v259;
  __swift_storeEnumTagSinglePayload(v259, 1, 1, v273);
  v232 = v227;
  Tensor.init(coercing:scalarType:on:)(v248, v270, v276, v231);
  v233 = v275;
  static Tensor.+ infix(_:_:)(v258, v268);
  v234 = v281;
  static Tensor.+ infix(_:_:)(v233, v272);
  v226(v233, v202);
  v235 = v279;
  static Tensor.+ infix(_:_:)(v234, v278);
  v226(v234, v202);
  v236 = v282;
  static Tensor.* infix(_:_:)(v235, v232);
  v226(v235, v202);
  v237 = v251;
  static Tensor.+ infix(_:_:)(v251, v236);
  v226(v236, v202);
  v226(v280, v202);
  v226(v278, v202);
  v226(v272, v202);
  v226(v268, v202);
  v226(v258, v202);
  v226(v269, v202);
  v226(v237, v202);
  v238 = v242;
  v271(v242, v244, v202);
  outlined destroy of MLFewShotSoundClassifier.TemporalClassifier.Output(v252);
  __swift_storeEnumTagSinglePayload(v238, 0, 1, v202);
  return outlined assign with take of Tensor?(v238, v241);
}

uint64_t lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier()
{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier)
  {
    v1 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.TemporalClassifier, v1);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier = result;
  }

  return result;
}

uint64_t closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)()
{
  v9[2] = v0;
  v1 = type metadata accessor for Tensor(0);
  v10 = *(v1 - 8);
  v2 = *(v10 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  Tensor.squared()();
  Tensor.sum(alongAxes:)(&outlined read-only object #0 of closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:));
  v7 = *(v10 + 8);
  v7(v9, v1);
  sqrt(_:)(v9);
  return (v7)(v9, v1);
}

uint64_t outlined destroy of MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1)
{
  v1 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier.Output(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply()
{
  return partial apply for closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)();
}

{
  return partial apply for closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)();
}

void one-time initialization function for tmpPath()
{
  v0 = NSTemporaryDirectory();
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);
  v4 = v3;

  tmpPath._countAndFlagsBits = v2;
  tmpPath._object = v4;
}

uint64_t static BoostedTreeConfiguration.firstIncompatibility(_:_:)()
{
  v23 = v0;
  v1 = BoostedTreeConfiguration.maximumIterations.getter();
  if (v1 != BoostedTreeConfiguration.maximumIterations.getter())
  {
    BoostedTreeConfiguration.maximumIterations.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v7 = v10;
    BoostedTreeConfiguration.maximumIterations.getter();
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = 0xEF736E6F69746172;
    v4 = 0x657469202E78614DLL;
    goto LABEL_16;
  }

  v2 = BoostedTreeConfiguration.maximumDepth.getter();
  if (v2 != BoostedTreeConfiguration.maximumDepth.getter())
  {
    BoostedTreeConfiguration.maximumDepth.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v7 = v11;
    BoostedTreeConfiguration.maximumDepth.getter();
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = 0xEA00000000006874;
    v4 = 0x706564202E78614DLL;
    goto LABEL_16;
  }

  v24 = BoostedTreeConfiguration.minimumLossReduction.getter();
  if (v24 != BoostedTreeConfiguration.minimumLossReduction.getter())
  {
    v5 = "Algorithm Type: " + 0x8000000000000000;
    v12 = BoostedTreeConfiguration.minimumLossReduction.getter();
    v6 = Double.description.getter(v12);
    v7 = v13;
    v14 = BoostedTreeConfiguration.minimumLossReduction.getter();
    result = Double.description.getter(v14);
    v4 = 0xD000000000000013;
    goto LABEL_16;
  }

  v25 = BoostedTreeConfiguration.minimumChildWeight.getter();
  if (v25 != BoostedTreeConfiguration.minimumChildWeight.getter())
  {
    v4 = 0xD000000000000011;
    v5 = "Min. loss reduction" + 0x8000000000000000;
    v15 = BoostedTreeConfiguration.minimumChildWeight.getter();
    v6 = Double.description.getter(v15);
    v7 = v16;
    v17 = BoostedTreeConfiguration.minimumChildWeight.getter();
LABEL_13:
    result = Double.description.getter(v17);
    goto LABEL_16;
  }

  v3 = BoostedTreeConfiguration.randomSeed.getter();
  if (v3 != BoostedTreeConfiguration.randomSeed.getter())
  {
    BoostedTreeConfiguration.randomSeed.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v7 = v18;
    BoostedTreeConfiguration.randomSeed.getter();
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = 0xEB00000000646565;
    v4 = 0x73206D6F646E6152;
    goto LABEL_16;
  }

  v26 = BoostedTreeConfiguration.rowSubsample.getter();
  if (v26 != BoostedTreeConfiguration.rowSubsample.getter())
  {
    v19 = BoostedTreeConfiguration.rowSubsample.getter();
    v6 = Double.description.getter(v19);
    v7 = v20;
    v21 = BoostedTreeConfiguration.rowSubsample.getter();
    result = Double.description.getter(v21);
    v5 = 0xEE00656C706D6173;
    v4 = 0x2062757320776F52;
    goto LABEL_16;
  }

  v27 = (BoostedTreeConfiguration.columnSubsample.getter)();
  if (v27 != (BoostedTreeConfiguration.columnSubsample.getter)())
  {
    v4 = 0xD000000000000011;
    v5 = "Min. child weight" + 0x8000000000000000;
    v17 = (BoostedTreeConfiguration.columnSubsample.getter)();
    v6 = Double.description.getter(v17);
    v7 = v22;
    BoostedTreeConfiguration.columnSubsample.getter();
    goto LABEL_13;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  result = 0;
  v9 = 0;
LABEL_16:
  *v23 = v4;
  v23[1] = v5;
  v23[2] = v6;
  v23[3] = v7;
  v23[4] = result;
  v23[5] = v9;
  return result;
}

uint64_t MLSupportVectorClassifier.predictions(from:)(uint64_t a1)
{
  v22 = v2;
  v23 = a1;
  v17[1] = v1;
  v21 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v3 = *(v21 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = v17;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v20 = v6;
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v17;
  (*(v7 + 16))(v17, v23, v6);
  outlined init with copy of MLTrainingSessionParameters(v22, v17, type metadata accessor for MLSupportVectorClassifier);
  v11 = *(v7 + 80);
  v12 = ~*(v7 + 80) & (v11 + 16);
  v13 = *(v21 + 80);
  v14 = ~v13 & (v12 + v13 + v8);
  v15 = swift_allocObject(&unk_393CB8, v14 + v3, v13 | v11 | 7);
  (*(v7 + 32))(v15 + v12, v19, v20);
  outlined init with take of MLClassifierMetrics(v18, v15 + v14, type metadata accessor for MLSupportVectorClassifier);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.predictions(from:), v15);
}

uint64_t type metadata accessor for MLSupportVectorClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSupportVectorClassifier;
  if (!type metadata singleton initialization cache for MLSupportVectorClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSupportVectorClassifier);
  }

  return result;
}

uint64_t *MLSupportVectorClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v29 = v3;
  v32 = v4;
  v36 = v2;
  v31 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v30 = *(v31 + 64);
  v5 = alloca(v30);
  v6 = alloca(v30);
  v37 = &v26;
  v39 = type metadata accessor for DataFrame(0);
  v35 = *(v39 - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v34 = &v26;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v33 = &v26;
  v15 = *(a1 + 8);
  v27 = *a1;
  v28 = v15;
  outlined copy of Result<_DataTable, Error>(v27, v15);
  DataFrame.init(_:)(&v27);
  v38 = &v26;
  v16 = v35;
  (*(v35 + 16))(&v26, &v26, v39);
  outlined init with copy of MLTrainingSessionParameters(v32, v37, type metadata accessor for MLSupportVectorClassifier);
  v17 = *(v16 + 80);
  v18 = ~*(v16 + 80) & (v17 + 16);
  v19 = *(v31 + 80);
  v20 = ~v19 & (v18 + v19 + v7);
  v21 = swift_allocObject(&unk_393CE0, v20 + v30, v19 | v17 | 7);
  (*(v16 + 32))(v21 + v18, v34, v39);
  v22 = v21 + v20;
  v23 = v33;
  outlined init with take of MLClassifierMetrics(v37, v22, type metadata accessor for MLSupportVectorClassifier);
  v24 = v29;
  specialized blockAwait<A>(_:)(&closure #1 in MLSupportVectorClassifier.predictions(from:)partial apply, v21);

  if (v24)
  {
    return (*(v16 + 8))(v38, v39);
  }

  *a2.i64 = (*(v16 + 8))(v38, v39);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v23, 1, a2);
}

uint64_t MLSupportVectorClassifier.evaluation(on:)(uint64_t a1)
{
  v21 = v2;
  v22 = a1;
  v17[1] = v1;
  v20 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v3 = *(v20 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = v17;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v17;
  (*(v7 + 16))(v17, v22, v6);
  outlined init with copy of MLTrainingSessionParameters(v21, v17, type metadata accessor for MLSupportVectorClassifier);
  v11 = *(v7 + 80);
  v12 = ~*(v7 + 80) & (v11 + 16);
  v13 = *(v20 + 80);
  v14 = ~v13 & (v12 + v13 + v8);
  v15 = swift_allocObject(&unk_393D08, v14 + v3, v13 | v11 | 7);
  (*(v7 + 32))(v15 + v12, v19, v6);
  outlined init with take of MLClassifierMetrics(v18, v15 + v14, type metadata accessor for MLSupportVectorClassifier);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.evaluation(on:), v15);
}

{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLSupportVectorClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLSupportVectorClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v46 = v2;
  v39 = v3;
  v45 = a2;
  v44 = a1;
  v4 = *(*(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v35;
  v41 = type metadata accessor for Model(0);
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v38 = v35;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v37, v45, sizeof(v37));
  v16 = v46;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v44, 0x56537261656E694CLL, 0xE90000000000004DLL, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v16)
  {
    v46 = 0;
    v43 = v7;
    v42 = v35;
    v45 = v11;
    v44 = v12;
    outlined init with copy of MLTrainingSessionParameters(v39, v40, type metadata accessor for MLSupportVectorClassifier.Model);
    v18 = *&v37[8];
    if (*&v37[8])
    {
      v19 = *v37;
      v20 = *&v37[16];
      v21 = *&v37[24];
      v22 = *&v37[32];
      v23 = *&v37[48];
      v24 = *&v37[56];
      v25 = *&v37[64];
    }

    else
    {
      v26 = NSFullUserName();
      v27 = v26;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v27);
      v18 = v28;

      v21 = "RandomForestRegressor" + 0x8000000000000000;
      *v35 = v19;
      *&v35[8] = v18;
      *&v35[16] = 0xD000000000000033;
      *&v35[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v35[32] = 0;
      *&v35[48] = 49;
      *&v35[56] = 0xE100000000000000;
      *&v35[64] = 0;
      *v36 = v19;
      *&v36[8] = v18;
      *&v36[16] = 0xD000000000000033;
      *&v36[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v36[32] = 0;
      *&v36[48] = 49;
      *&v36[56] = 0xE100000000000000;
      *&v36[64] = 0;
      outlined retain of MLModelMetadata(v35);
      outlined release of MLModelMetadata(v36);
      v24 = 0xE100000000000000;
      v23 = 49;
      v22 = 0;
      v20 = 0xD000000000000033;
      v25 = 0;
    }

    *v36 = v19;
    *&v36[8] = v18;
    *&v36[16] = v20;
    *&v36[24] = v21;
    *&v36[32] = v22;
    *&v36[48] = v23;
    *&v36[56] = v24;
    *&v36[64] = v25;
    outlined retain of MLModelMetadata?(v37);
    v29 = v38;
    v30 = v40;
    v31 = v46;
    MLSupportVectorClassifier.Model.export(metadata:)(v36);
    qmemcpy(v35, v36, sizeof(v35));
    outlined release of MLModelMetadata(v35);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLSupportVectorClassifier.Model);
    if (v31)
    {
      return (*(v44 + 8))(v42, v45);
    }

    else
    {
      v32 = v42;
      Model.write(to:)(v42);
      v46 = 0;
      v33 = v44;
      v34 = v45;
      (*(v43 + 8))(v29, v41);
      return (*(v33 + 8))(v32, v34);
    }
  }

  return result;
}

uint64_t MLSupportVectorClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = v3;
  v21 = a3;
  v19 = a2;
  v18 = a1;
  v22 = type metadata accessor for URL.DirectoryHint(0);
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v16;
  v10 = type metadata accessor for URL(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v16, v21, sizeof(v16));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
  (*(v20 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
  v14 = v19;

  URL.init(filePath:directoryHint:relativeTo:)(v18, v14, v16, v23);
  MLSupportVectorClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLSupportVectorClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLSupportVectorClassifier(0);
  v25._countAndFlagsBits = MLSupportVectorClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v8;
  v9 = *(v5 + 40);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.description.getter();
  v12 = v11;
  v23 = 0xD000000000000024;
  v24 = "rtVectorClassifier.swift" + 0x8000000000000000;
  v13._countAndFlagsBits = v25._countAndFlagsBits;
  v25._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v22._object;
  String.append(_:)(v22);
  v15 = v21._object;
  String.append(_:)(v21);
  v15;
  if (v7 > 1)
  {
    v18 = object;
  }

  else
  {
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v16._countAndFlagsBits = v25._object;
    v16._object = v12;
    String.append(_:)(v16);
    v17 = v21._object;
    String.append(_:)(v21);
    object;
    v18 = v12;
    LOBYTE(v12) = v17;
  }

  v18;
  v12;
  v25._countAndFlagsBits;
  return v23;
}

NSAttributedString MLSupportVectorClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLSupportVectorClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLSupportVectorClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSupportVectorClassifier(0) + 20);

  *(v1 + v2) = a1;
}

uint64_t MLSupportVectorClassifier.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLSupportVectorClassifier(0) + 24));

  return v1;
}

uint64_t MLSupportVectorClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLSupportVectorClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLSupportVectorClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSupportVectorClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLSupportVectorClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  return outlined init with copy of MLSupportVectorClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLSupportVectorClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSupportVectorClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v107 = v6;
  v122 = a5;
  v112 = a4;
  v111 = a3;
  v115 = a2;
  v119 = a1;
  v7 = v5;
  v103 = v5;
  v116 = type metadata accessor for DataFrame(0);
  v120 = *(v116 - 8);
  v8 = *(v120 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v101 = v89;
  v98 = v8;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v110 = v89;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v97 = v89;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v93 = v89;
  v92 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8);
  v18 = *(v92 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v109 = v89;
  v108 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v121 = v89;
  v23 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v99 = v89;
  v26 = *(*(type metadata accessor for MLSupportVectorClassifier.Classifier(0) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v113 = v89;
  v114 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v29 = *(*(v114 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v118 = v89;
  v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v96 = *(v104 - 8);
  v32 = *(v96 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v102 = v89;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v94 = v89;
  v95 = v32;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v123 = v89;
  v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v117 = *(v105 - 8);
  v39 = v117[8];
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = type metadata accessor for MLSupportVectorClassifier(0);
  v106 = *(v42 + 36);
  v43 = v7 + v106;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v89);
  (v117[1])(v89, v105);
  v44 = v103;
  *(v103 + v106) = 0;
  v117 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v105 = v43;
  swift_storeEnumTagMultiPayload(v43, v117, 1);
  v100 = v42;
  v45 = *(v42 + 40);
  v46 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v47 = swift_allocError(&type metadata for MLCreateError, v46, 0, 0);
  *v48 = 0xD0000000000000C0;
  *(v48 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v48 + 16) = 0;
  *(v48 + 32) = 0;
  *(v48 + 48) = 0;
  *(v44 + v45) = v47;
  v106 = v44 + v45;
  swift_storeEnumTagMultiPayload(v44 + v45, v117, 2);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v122 + 8, &v90, &demangling cache variable for type metadata for Any?);
  if (!v91)
  {
    BUG();
  }

  v49 = v123;
  v50 = (v123 + *(v104 + 48));
  outlined init with take of Any(&v90, v89);
  swift_dynamicCast(v118, v89, &type metadata for Any + 8, v114, 7);
  v51 = v49;
  v52 = v119;
  v53 = v107;
  MLSupportVectorClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v51, v50, v119);
  if (v53)
  {
    v111;
    v112;
    outlined destroy of MLSupportVectorClassifier.ModelParameters(v122);
    (*(v120 + 8))(v52, v116);
    outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
LABEL_5:
    outlined destroy of MLActivityClassifier.ModelParameters(v105, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v106, type metadata accessor for MLClassifierMetrics);
  }

  v117 = v50;
  outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v54 = v111;
  v55 = v112;
  v56 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v123, v115, v111, v112);
  v55;
  DataFrame.subscript.getter(v115, v54);
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(v122, v89);

  MLSupportVectorClassifier.Classifier.init(labelsColumn:targetColumnName:featureColumnNames:parameters:)(v99, v115, v54, v56, v89);
  v118 = v56;
  MLSupportVectorClassifier.Classifier.fitted(to:validateOn:eventHandler:)(v123, v117, 0, 0);
  v58 = v100;
  v59 = *(v100 + 24);
  v60 = v103;
  *(v103 + v59) = v115;
  *(v60 + v59 + 8) = v54;
  v117 = (v60 + *(v58 + 32));
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(v122, v117);
  *(v60 + *(v58 + 28)) = v118;
  v61 = v109;
  outlined init with copy of MLTrainingSessionParameters(v121, v109, type metadata accessor for MLSupportVectorClassifier.Model);
  v62 = *(v92 + 80);
  v63 = ~*(v92 + 80) & (v62 + 16);
  v108 += v63;
  v107 = v62 | 7;
  v64 = swift_allocObject(&unk_393D30, v108, v62 | 7);
  v112 = v63;
  outlined init with take of MLClassifierMetrics(v61, v64 + v63, type metadata accessor for MLSupportVectorClassifier.Model);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v64);
  v66 = v65;
  v114 = 0;

  v67 = *(v100 + 20);
  v115 = v66;
  v68 = v103;
  *(v103 + v67) = v66;
  v69 = v121;
  outlined init with copy of MLTrainingSessionParameters(v121, v68, type metadata accessor for MLSupportVectorClassifier.Model);
  v70 = v109;
  outlined init with copy of MLTrainingSessionParameters(v69, v109, type metadata accessor for MLSupportVectorClassifier.Model);
  v71 = v94;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, v94, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v72 = *(v96 + 80);
  v73 = ~v72 & (v108 + v72);
  v74 = swift_allocObject(&unk_393D58, v73 + v95, v107 | v72);
  outlined init with take of MLClassifierMetrics(v70, v74 + v112, type metadata accessor for MLSupportVectorClassifier.Model);
  outlined init with take of (training: DataFrame, validation: DataFrame?)(v71, v74 + v73);
  v75 = v93;
  v76 = v114;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v74);
  if (v76)
  {

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v122);
    (*(v120 + 8))(v119, v116);
    v77 = v111;
    v78 = v123;
    outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLSupportVectorClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v113, type metadata accessor for MLSupportVectorClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for MLSupportVectorClassifier.Model);
    v118;
    v77;

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v117);
    goto LABEL_5;
  }

  outlined assign with take of MLClassifierMetrics(v75, v105);
  v79 = v102;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, v102, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v80 = v79 + *(v104 + 48);
  v81 = v116;
  if (__swift_getEnumTagSinglePayload(v80, 1, v116) == 1)
  {
    outlined destroy of MLSupportVectorClassifier.ModelParameters(v122);
    v82 = *(v120 + 8);
    v82(v119, v81);
    outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLSupportVectorClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v113, type metadata accessor for MLSupportVectorClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, &demangling cache variable for type metadata for DataFrame?);
    return (v82)(v102, v81);
  }

  else
  {
    v83 = v120;
    v104 = *(v120 + 32);
    (v104)(v110, v80, v81);
    v114 = *(v83 + 8);
    (v114)(v102, v81);
    outlined init with copy of MLTrainingSessionParameters(v121, v109, type metadata accessor for MLSupportVectorClassifier.Model);
    (*(v83 + 16))(v101, v110, v81);
    v84 = *(v83 + 80);
    v85 = ~v84 & (v84 + v108);
    v86 = swift_allocObject(&unk_393D80, v85 + v98, v84 | v107);
    outlined init with take of MLClassifierMetrics(v109, v86 + v112, type metadata accessor for MLSupportVectorClassifier.Model);
    (v104)(v86 + v85, v101, v81);
    v87 = v97;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v86);

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v122);
    v88 = v114;
    (v114)(v119, v81);
    v88(v110, v81);
    outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLSupportVectorClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v113, type metadata accessor for MLSupportVectorClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    return outlined assign with take of MLClassifierMetrics(v87, v106);
  }
}