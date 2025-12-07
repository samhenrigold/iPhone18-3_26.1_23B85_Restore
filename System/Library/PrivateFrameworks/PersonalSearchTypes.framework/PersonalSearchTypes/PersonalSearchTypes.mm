uint64_t one-time initialization function for client()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.client);
  __swift_project_value_buffer(v0, static Logging.client);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for server()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.server);
  __swift_project_value_buffer(v0, static Logging.server);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for endpoint()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.endpoint);
  __swift_project_value_buffer(v0, static Logging.endpoint);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logging.client.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for Logging(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E4753ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
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

PersonalSearchTypes::PersonalSearchQueryOptions __swiftcall PersonalSearchQueryOptions.init(maxResult:locale:)(Swift::Int_optional maxResult, Swift::String_optional locale)
{
  *v2 = maxResult.value;
  *(v2 + 8) = maxResult.is_nil;
  *(v2 + 16) = locale;
  result.locale = locale;
  result.maxResult = maxResult;
  return result;
}

BOOL static PersonalSearchQueryOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 16) && v6 == v7;
    return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v7;
}

uint64_t PersonalSearchQueryOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7573655278616DLL && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchQueryOptions.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x6C7573655278616DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchQueryOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchQueryOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchQueryOptions.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchQueryOptions.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchQueryOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchQueryOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchQueryOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_36();
  lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();
  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_6();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v16)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v18 = OUTLINED_FUNCTION_16();
  v19(v18);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

void PersonalSearchQueryOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_24();
  lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    HIBYTE(a12) = 0;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v36;
    OUTLINED_FUNCTION_27();
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v34;
    v41 = v40;
    (*(v31 + 8))(v39, v29);
    *v28 = v35;
    *(v28 + 8) = v37 & 1;
    *(v28 + 16) = v38;
    *(v28 + 24) = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_20();
}

PersonalSearchTypes::StructuredQuery __swiftcall StructuredQuery.init(searchTerms:filterType:)(Swift::OpaquePointer searchTerms, Swift::OpaquePointer filterType)
{
  v2->_rawValue = searchTerms._rawValue;
  v2[1]._rawValue = filterType._rawValue;
  result.filterType = filterType;
  result.searchTerms = searchTerms;
  return result;
}

uint64_t static StructuredQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_30();

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v3);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes0bC6ResultV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v230 - v11;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v253 = &v230 - v14;
  v248 = type metadata accessor for PersonalSearchResult(0);
  v15 = MEMORY[0x28223BE20](v248);
  v254 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v230 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v252 = a2 + v21;
  v234 = (v6 + 32);
  v235 = v9;
  v236 = (v6 + 8);
  v237 = v12;
  v238 = *(v17 + 72);
  v240 = v4;
  while (1)
  {
    outlined init with copy of PersonalSearchResult(v22, v19);
    v246 = v22;
    v23 = v254;
    outlined init with copy of PersonalSearchResult(v252, v254);
    v25 = *v19;
    v24 = *(v19 + 1);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    v28 = *(v19 + 4);
    v29 = *(v19 + 5);
    v30 = v19[48];
    v32 = *v23;
    v31 = *(v23 + 8);
    v34 = *(v23 + 16);
    v33 = *(v23 + 24);
    v36 = *(v23 + 32);
    v35 = *(v23 + 40);
    v37 = *(v23 + 48);
    v250 = *v23;
    v251 = v27;
    v249 = v31;
    if (v30)
    {
      break;
    }

    v70 = v28;
    if (v37)
    {
      v233 = v36;
      v239 = v35;
      outlined copy of PersonalSearchResult.ResultIdentifier(v32, v31, v34, v33, v36, v35, 1);
      v181 = OUTLINED_FUNCTION_2();
      outlined copy of PersonalSearchResult.ResultIdentifier(v181, v182, v183, v184, v185, v186, v187);
      v188 = OUTLINED_FUNCTION_2();
      outlined consume of PersonalSearchResult.ResultIdentifier(v188, v189, v190, v191, v192, v193, v194);
      v176 = OUTLINED_FUNCTION_8();
      v180 = v233;
      goto LABEL_68;
    }

    v241 = v25;
    v242 = v24;
    v71 = v25 == v32 && v24 == v31;
    v244 = v34;
    if (!v71 && (v72 = v32, v73 = v31, v74 = v26, v75 = _stringCompareWithSmolCheck(_:_:expecting:)(), v27 = v251, v26 = v74, v34 = v244, v32 = v72, v31 = v73, (v75 & 1) == 0) || (v27 == v34 ? (v76 = v26 == v33) : (v76 = 0), !v76 && (v77 = v31, v78 = v26, v79 = _stringCompareWithSmolCheck(_:_:expecting:)(), v32 = v250, v26 = v78, v31 = v77, (v79 & 1) == 0)))
    {
      OUTLINED_FUNCTION_32();
      v239 = v35;
      outlined copy of PersonalSearchResult.ResultIdentifier(v195, v196, v197, v198, v199, v35, 0);
      v200 = OUTLINED_FUNCTION_2();
      outlined copy of PersonalSearchResult.ResultIdentifier(v200, v201, v202, v203, v204, v205, v206);
      v207 = OUTLINED_FUNCTION_2();
      outlined consume of PersonalSearchResult.ResultIdentifier(v207, v208, v209, v210, v211, v212, v213);
      v176 = OUTLINED_FUNCTION_8();
      v180 = v233;
      goto LABEL_64;
    }

    v243 = v26;
    v80 = v70;
    v81 = v29;
    if (v70 == v36 && v29 == v35)
    {
      outlined copy of PersonalSearchResult.ResultIdentifier(v32, v31, v34, v33, v70, v29, 0);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_22();
      outlined copy of PersonalSearchResult.ResultIdentifier(v129, v130, v131, v132, v133, v134, v135);
      OUTLINED_FUNCTION_22();
      outlined consume of PersonalSearchResult.ResultIdentifier(v136, v137, v138, v139, v140, v141, v142);
      OUTLINED_FUNCTION_22();
      goto LABEL_37;
    }

    v83 = v36;
    v84 = v31;
    v85 = v35;
    v86 = v33;
    v231 = v33;
    v87 = v80;
    v245 = v81;
    v232 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v88 = OUTLINED_FUNCTION_11();
    outlined copy of PersonalSearchResult.ResultIdentifier(v88, v89, v90, v91, v83, v35, 0);
    v93 = v241;
    v92 = v242;
    OUTLINED_FUNCTION_33();
    v94 = v245;
    outlined copy of PersonalSearchResult.ResultIdentifier(v95, v96, v97, v98, v87, v245, 0);
    outlined consume of PersonalSearchResult.ResultIdentifier(v93, v92, v84, v86, v87, v94, 0);
    outlined consume of PersonalSearchResult.ResultIdentifier(v250, v249, v244, v231, v83, v85, 0);
    v69 = v240;
    if ((v232 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_38:
    v143 = *(v248 + 20);
    v144 = &v19[v143];
    v145 = v254 + v143;
    v146 = *&v19[v143] == *(v254 + v143) && *&v19[v143 + 8] == *(v254 + v143 + 8);
    if (!v146 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_70;
    }

    v147 = *(v144 + 3);
    v148 = *(v145 + 24);
    if (v147)
    {
      if (!v148)
      {
        goto LABEL_70;
      }

      v149 = *(v144 + 2) == *(v145 + 16) && v147 == v148;
      if (!v149 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (v148)
    {
      goto LABEL_70;
    }

    v150 = *(type metadata accessor for PersonalSearchResult.DisplayRepresentation(0) + 24);
    v151 = *(v247 + 48);
    v152 = &v144[v150];
    v153 = v253;
    outlined init with copy of URL?(v152, v253);
    outlined init with copy of URL?(v145 + v150, v153 + v151);
    OUTLINED_FUNCTION_35(v153);
    if (v38)
    {
      OUTLINED_FUNCTION_35(v253 + v151);
      if (!v38)
      {
        goto LABEL_66;
      }

      outlined destroy of (URL?, URL?)(v253, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v154 = v253;
      v155 = v237;
      outlined init with copy of URL?(v253, v237);
      OUTLINED_FUNCTION_35(v154 + v151);
      if (v156)
      {
        (*v236)(v155, v69);
LABEL_66:
        outlined destroy of (URL?, URL?)(v253, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
        goto LABEL_70;
      }

      v157 = v253;
      v158 = v253 + v151;
      v159 = v235;
      (*v234)(v235, v158, v69);
      lazy protocol witness table accessor for type URL and conformance URL();
      LODWORD(v251) = dispatch thunk of static Equatable.== infix(_:_:)();
      v160 = *v236;
      (*v236)(v159, v69);
      v160(v155, v69);
      outlined destroy of (URL?, URL?)(v157, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((v251 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    outlined destroy of PersonalSearchResult(v254);
    outlined destroy of PersonalSearchResult(v19);
    v252 += v238;
    v22 = v246 + v238;
    if (!--v20)
    {
      return 1;
    }
  }

  v242 = v28;
  v245 = v29;
  v239 = v35;
  if ((v37 & 1) == 0)
  {
    outlined copy of PersonalSearchResult.ResultIdentifier(v32, v31, v34, v33, v36, v35, 0);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_10();
    outlined copy of PersonalSearchResult.ResultIdentifier(v162, v163, v164, v165, v166, v167, v168);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_10();
    outlined consume of PersonalSearchResult.ResultIdentifier(v169, v170, v171, v172, v173, v174, v175);
    v176 = OUTLINED_FUNCTION_8();
    v180 = v36;
LABEL_64:
    v214 = v239;
    v215 = 0;
    goto LABEL_69;
  }

  v38 = v25 == v32 && v24 == v31;
  if (v38 || (v39 = v32, v244 = v34, v40 = v31, v41 = v26, v42 = _stringCompareWithSmolCheck(_:_:expecting:)(), v27 = v251, v26 = v41, v34 = v244, (v42 & 1) != 0))
  {
    if (v27 == v34 && v26 == v33)
    {
      v99 = v27;
      v100 = v26;
      OUTLINED_FUNCTION_10();
      outlined copy of PersonalSearchResult.ResultIdentifier(v101, v102, v103, v104, v105, v106, v107);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      outlined copy of PersonalSearchResult.ResultIdentifier(v108, v109, v110, v111, v112, v113, v114);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      outlined consume of PersonalSearchResult.ResultIdentifier(v115, v116, v117, v118, v119, v120, v121);
      v123 = v249;
      v122 = v250;
      v124 = v99;
      v125 = v100;
      v126 = v36;
      v127 = v239;
      v128 = 1;
LABEL_37:
      outlined consume of PersonalSearchResult.ResultIdentifier(v122, v123, v124, v125, v126, v127, v128);
      v69 = v240;
      goto LABEL_38;
    }

    v243 = v26;
    LODWORD(v241) = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_10();
    outlined copy of PersonalSearchResult.ResultIdentifier(v44, v45, v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_10();
    outlined copy of PersonalSearchResult.ResultIdentifier(v51, v52, v53, v54, v55, v56, v57);
    OUTLINED_FUNCTION_10();
    outlined consume of PersonalSearchResult.ResultIdentifier(v58, v59, v60, v61, v62, v63, v64);
    v65 = OUTLINED_FUNCTION_8();
    outlined consume of PersonalSearchResult.ResultIdentifier(v65, v66, v67, v68, v233, v239, 1);
    v69 = v240;
    if ((v241 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_38;
  }

  outlined copy of PersonalSearchResult.ResultIdentifier(v39, v40, v244, v33, v36, v35, 1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  outlined copy of PersonalSearchResult.ResultIdentifier(v216, v217, v218, v219, v220, v221, v222);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  outlined consume of PersonalSearchResult.ResultIdentifier(v223, v224, v225, v226, v227, v228, v229);
  v176 = OUTLINED_FUNCTION_8();
  v180 = v36;
LABEL_68:
  v214 = v239;
  v215 = 1;
LABEL_69:
  outlined consume of PersonalSearchResult.ResultIdentifier(v176, v177, v178, v179, v180, v214, v215);
LABEL_70:
  outlined destroy of PersonalSearchResult(v254);
  outlined destroy of PersonalSearchResult(v19);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes20EntityTypeIdentifierV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t StructuredQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEB00000000736D72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79547265746C6966 && a2 == 0xEA00000000006570)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t StructuredQuery.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x79547265746C6966;
  }

  else
  {
    return 0x6554686372616573;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StructuredQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StructuredQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StructuredQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StructuredQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v23 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();

  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_12();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v23)
  {
    OUTLINED_FUNCTION_12();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v24 = OUTLINED_FUNCTION_16();
  v25(v24);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

void StructuredQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24();
  v16 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_28702D248, v17, v16);
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
    v18 = OUTLINED_FUNCTION_23();
    v19(v18);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_20();
}

PersonalSearchTypes::EntityTypeIdentifier __swiftcall EntityTypeIdentifier.init(bundleId:entityTypeName:)(Swift::String bundleId, Swift::String_optional entityTypeName)
{
  v2->value = bundleId;
  v2[1] = entityTypeName;
  result.entityTypeName = entityTypeName;
  result.bundleId = bundleId;
  return result;
}

uint64_t static EntityTypeIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

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

unint64_t lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
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

uint64_t EntityTypeIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEE00656D614E6570)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int PersonalSearchQueryOptions.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](a1 & 1);
  return Hasher._finalize()();
}

uint64_t EntityTypeIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7954797469746E65;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PersonalSearchQueryOptions.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EntityTypeIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EntityTypeIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void EntityTypeIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_36();
  lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();
  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_6();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v18 = OUTLINED_FUNCTION_16();
  v19(v18);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

void EntityTypeIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24();
  v28 = lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_28702D1B8, v29, v28);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v31;
    OUTLINED_FUNCTION_27();
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v34;
    v38 = v33;
    v36 = OUTLINED_FUNCTION_23();
    v37(v36);
    *v26 = v30;
    v26[1] = v32;
    v26[2] = v38;
    v26[3] = v35;

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  OUTLINED_FUNCTION_20();
}

__n128 PersonalSearchQuery.init(searchQuery:structuredQuery:typeIdentifiers:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = *a3;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 40) = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 32) = a4;
  *(a6 + 56) = v7;
  return result;
}

uint64_t PersonalSearchQuery.structuredQuery.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of StructuredQuery?(v2, v3);
}

uint64_t outlined copy of StructuredQuery?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t PersonalSearchQuery.options.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of PersonalSearchQueryOptions?(v2, v3, v4, v5);
}

uint64_t outlined copy of PersonalSearchQueryOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t static PersonalSearchQuery.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v129 = a1[5];
  v130 = a2[5];
  v131 = a2[6];
  v128 = a2[7];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[8];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v9)
    {
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v9))
      {
        v127 = v5;
        v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v8);
        v14 = OUTLINED_FUNCTION_14();
        outlined copy of StructuredQuery?(v14, v15);
        v16 = OUTLINED_FUNCTION_19();
        outlined copy of StructuredQuery?(v16, v17);
        v18 = OUTLINED_FUNCTION_14();
        outlined copy of StructuredQuery?(v18, v19);
        v20 = OUTLINED_FUNCTION_19();
        outlined consume of StructuredQuery?(v20, v21);

        v22 = OUTLINED_FUNCTION_14();
        outlined consume of StructuredQuery?(v22, v23);
        if ((v13 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }

      v32 = OUTLINED_FUNCTION_14();
      outlined copy of StructuredQuery?(v32, v33);
      v34 = OUTLINED_FUNCTION_19();
      outlined copy of StructuredQuery?(v34, v35);
      v36 = OUTLINED_FUNCTION_14();
      outlined copy of StructuredQuery?(v36, v37);
      v38 = OUTLINED_FUNCTION_19();
      outlined consume of StructuredQuery?(v38, v39);

      v30 = OUTLINED_FUNCTION_14();
LABEL_16:
      outlined consume of StructuredQuery?(v30, v31);
      return 0;
    }

    outlined copy of StructuredQuery?(v2, v4);
    outlined copy of StructuredQuery?(0, v8);
    v26 = OUTLINED_FUNCTION_14();
    outlined copy of StructuredQuery?(v26, v27);

LABEL_14:
    v28 = OUTLINED_FUNCTION_14();
    outlined consume of StructuredQuery?(v28, v29);
    v30 = OUTLINED_FUNCTION_19();
    goto LABEL_16;
  }

  outlined copy of StructuredQuery?(0, v4);
  if (v9)
  {
    v24 = OUTLINED_FUNCTION_19();
    outlined copy of StructuredQuery?(v24, v25);
    goto LABEL_14;
  }

  v127 = v5;
  outlined copy of StructuredQuery?(0, v8);
  outlined consume of StructuredQuery?(0, v4);
LABEL_20:
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes20EntityTypeIdentifierV_Tt1g5(v3, v10))
  {
    v42 = v7;
    if (v7 == 1)
    {
      outlined copy of PersonalSearchQueryOptions?(v129, v127, v6, 1);
      v43 = v128;
      if (v12 == 1)
      {
        v40 = 1;
        outlined copy of PersonalSearchQueryOptions?(v130, v131, v128, 1);
        v44 = OUTLINED_FUNCTION_3();
        outlined consume of PersonalSearchQueryOptions?(v44, v45, v46, 1);
        return v40;
      }

      v47 = v12;
      v58 = OUTLINED_FUNCTION_16();
      outlined copy of PersonalSearchQueryOptions?(v58, v59, v128, v12);
      goto LABEL_27;
    }

    v47 = v12;
    v43 = v128;
    if (v12 == 1)
    {
      v48 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v48, v49, v50, v51);
      v52 = OUTLINED_FUNCTION_16();
      outlined copy of PersonalSearchQueryOptions?(v52, v53, v128, 1);
      v54 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v54, v55, v56, v57);

LABEL_27:
      v60 = OUTLINED_FUNCTION_0();
      outlined consume of PersonalSearchQueryOptions?(v60, v61, v62, v63);
      v64 = OUTLINED_FUNCTION_16();
      v66 = v43;
      v67 = v47;
LABEL_43:
      outlined consume of PersonalSearchQueryOptions?(v64, v65, v66, v67);
      return 0;
    }

    if (v127)
    {
      if ((v131 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v131 & 1 | (v129 != v130))
    {
      goto LABEL_40;
    }

    if (!v42)
    {
      v98 = OUTLINED_FUNCTION_3();
      outlined copy of PersonalSearchQueryOptions?(v98, v99, v100, 0);
      v88 = 0;
      if (v12)
      {
        goto LABEL_41;
      }

      v101 = OUTLINED_FUNCTION_4();
      outlined copy of PersonalSearchQueryOptions?(v101, v102, v103, 0);
      v104 = OUTLINED_FUNCTION_3();
      outlined copy of PersonalSearchQueryOptions?(v104, v105, v106, 0);
      v107 = OUTLINED_FUNCTION_4();
      v110 = 0;
      goto LABEL_47;
    }

    if (v12)
    {
      if (v6 != v128 || v42 != v12)
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v70 = OUTLINED_FUNCTION_0();
        outlined copy of PersonalSearchQueryOptions?(v70, v71, v72, v73);
        v74 = OUTLINED_FUNCTION_4();
        outlined copy of PersonalSearchQueryOptions?(v74, v75, v76, v12);
        v77 = OUTLINED_FUNCTION_0();
        outlined copy of PersonalSearchQueryOptions?(v77, v78, v79, v80);
        v81 = OUTLINED_FUNCTION_4();
        outlined consume of PersonalSearchQueryOptions?(v81, v82, v83, v12);
        if ((v69 & 1) == 0)
        {
LABEL_42:

          v64 = OUTLINED_FUNCTION_0();
          goto LABEL_43;
        }

LABEL_48:

        v123 = OUTLINED_FUNCTION_0();
        outlined consume of PersonalSearchQueryOptions?(v123, v124, v125, v126);
        return 1;
      }

      v111 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v111, v112, v113, v114);
      v115 = OUTLINED_FUNCTION_26();
      outlined copy of PersonalSearchQueryOptions?(v115, v116, v117, v118);
      v119 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v119, v120, v121, v122);
      v107 = OUTLINED_FUNCTION_26();
LABEL_47:
      outlined consume of PersonalSearchQueryOptions?(v107, v108, v109, v110);
      goto LABEL_48;
    }

LABEL_40:
    v84 = OUTLINED_FUNCTION_0();
    outlined copy of PersonalSearchQueryOptions?(v84, v85, v86, v87);
    v88 = v42;
LABEL_41:
    v89 = OUTLINED_FUNCTION_4();
    outlined copy of PersonalSearchQueryOptions?(v89, v90, v91, v12);
    v92 = OUTLINED_FUNCTION_3();
    outlined copy of PersonalSearchQueryOptions?(v92, v93, v94, v88);
    v95 = OUTLINED_FUNCTION_4();
    outlined consume of PersonalSearchQueryOptions?(v95, v96, v97, v12);
    goto LABEL_42;
  }

  return 0;
}

uint64_t outlined consume of StructuredQuery?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of PersonalSearchQueryOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t PersonalSearchQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657551776172 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7275746375727473 && a2 == 0xEF79726575516465;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65644965707974 && a2 == 0xEF73726569666974;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int PersonalSearchQuery.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](a1);
  return Hasher._finalize()();
}

uint64_t PersonalSearchQuery.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7972657551776172;
  switch(a1)
  {
    case 1:
      result = 0x7275746375727473;
      break;
    case 2:
      result = 0x6E65644965707974;
      break;
    case 3:
      result = 0x736E6F6974706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchQuery.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchQuery.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchQuery.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v9 = v1[2];
  v18 = v1[3];
  v16 = v1[6];
  v17 = v1[5];
  v14 = v1[8];
  v15 = v1[7];
  v10 = v5[3];
  v11 = v5;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();
  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    outlined copy of StructuredQuery?(v9, v18);
    lazy protocol witness table accessor for type StructuredQuery and conformance StructuredQuery();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_12();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of StructuredQuery?(v9, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMd, &_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [EntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [EntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type EntityTypeIdentifier and conformance EntityTypeIdentifier, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_6();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined copy of PersonalSearchQueryOptions?(v17, v16, v15, v14);
    lazy protocol witness table accessor for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_12();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of PersonalSearchQueryOptions?(v17, v16, v15, v14);
  }

  (*(v7 + 8))(v3, v13);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StructuredQuery and conformance StructuredQuery()
{
  result = lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery;
  if (!lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery;
  if (!lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityTypeIdentifier and conformance EntityTypeIdentifier()
{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions);
  }

  return result;
}

void PersonalSearchQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    LOBYTE(v44) = 0;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v32;
    LOBYTE(v43[0]) = 1;
    lazy protocol witness table accessor for type StructuredQuery and conformance StructuredQuery();
    OUTLINED_FUNCTION_34(&type metadata for StructuredQuery, v43);
    v41 = v44;
    v40 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMd, &_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMR);
    LOBYTE(v43[0]) = 2;
    lazy protocol witness table accessor for type [EntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [EntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type EntityTypeIdentifier and conformance EntityTypeIdentifier, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v44;
    a13 = 3;
    lazy protocol witness table accessor for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions();
    OUTLINED_FUNCTION_34(&type metadata for PersonalSearchQueryOptions, &a13);
    v33 = OUTLINED_FUNCTION_7();
    v34(v33);
    v38 = v53;
    v37 = v54;
    v35 = v56;
    v36 = v55;
    v43[0] = v31;
    v43[1] = v42;
    v43[2] = v41;
    v43[3] = v40;
    v43[4] = v39;
    v43[5] = v53;
    v43[6] = v54;
    v43[7] = v55;
    v43[8] = v56;
    memcpy(v29, v43, 0x48uLL);
    outlined init with copy of PersonalSearchQuery(v43, &v44);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v44 = v31;
    v45 = v42;
    v46 = v41;
    v47 = v40;
    v48 = v39;
    v49 = v38;
    v50 = v37;
    v51 = v36;
    v52 = v35;
    outlined destroy of PersonalSearchQuery(&v44);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t lazy protocol witness table accessor for type [EntityTypeIdentifier] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMd, &_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchQueryOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchQueryOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StructuredQuery(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StructuredQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityTypeIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityTypeIdentifier(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_19PersonalSearchTypes15StructuredQueryVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19PersonalSearchTypes0aB12QueryOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for PersonalSearchQuery(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchQuery(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PersonalSearchQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E4789ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityTypeIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E478BBCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of PersonalSearchResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalSearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PersonalSearchResult.ResultIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

uint64_t outlined consume of PersonalSearchResult.ResultIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined destroy of PersonalSearchResult(uint64_t a1)
{
  v2 = type metadata accessor for PersonalSearchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (URL?, URL?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

void *OUTLINED_FUNCTION_15()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_36()
{
  v3 = *(v0 + 16);
  *(v2 - 104) = *(v0 + 24);
  *(v2 - 96) = v3;
  return __swift_project_boxed_opaque_existential_1(v1, v1[3]);
}

uint64_t PersonalSearchResult.init(spotlightIdentifier:bundleId:title:subtitle:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 1;
  OUTLINED_FUNCTION_17_0();
  v16 = (a9 + v15);
  *v16 = a5;
  v16[1] = a6;
  v16[2] = a7;
  v16[3] = a8;
  OUTLINED_FUNCTION_28_0();

  return outlined init with take of URL?(a10, v16 + v17);
}

PersonalSearchTypes::PersonalSearchResult::SpotlightResultIdentifier __swiftcall PersonalSearchResult.SpotlightResultIdentifier.init(identifier:bundleId:)(Swift::String identifier, Swift::String bundleId)
{
  *v2 = identifier;
  v2[1] = bundleId;
  result.bundleId = bundleId;
  result.identifier = identifier;
  return result;
}

uint64_t PersonalSearchResult.DisplayRepresentation.init(title:subtitle:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  OUTLINED_FUNCTION_28_0();

  return outlined init with take of URL?(a5, a6 + v8);
}

uint64_t type metadata accessor for PersonalSearchResult(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PersonalSearchResult.init(appEntityIdentifier:bundleId:typeId:title:subtitle:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = 0;
  OUTLINED_FUNCTION_17_0();
  v16 = (a9 + v15);
  *v16 = a7;
  v16[1] = a8;
  v16[2] = a10;
  v16[3] = a11;
  OUTLINED_FUNCTION_28_0();

  return outlined init with take of URL?(a12, v16 + v17);
}

void __swiftcall PersonalSearchResult.AppEntityResultIdentifier.init(identifier:bundleId:typeId:)(PersonalSearchTypes::PersonalSearchResult::AppEntityResultIdentifier *__return_ptr retstr, Swift::String identifier, Swift::String bundleId, Swift::String typeId)
{
  retstr->identifier = identifier;
  retstr->bundleId = bundleId;
  retstr->typeId = typeId;
}

uint64_t PersonalSearchResult.DisplayRepresentation.icon.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_28_0();

  return outlined init with copy of URL?(v2 + v4, a2);
}

uint64_t PersonalSearchResult.DisplayRepresentation.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13();
  _StringGuts.grow(_:)(38);

  MEMORY[0x25F8B4230](*v0, v0[1]);
  MEMORY[0x25F8B4230](0x697462757320200ALL, 0xED0000203A656C74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x25F8B4230](v3);

  MEMORY[0x25F8B4230](0x3A6E6F636920200ALL, 0xE900000000000020);
  OUTLINED_FUNCTION_28_0();
  outlined init with copy of URL?(v0 + v4, v1);
  v5 = String.init<A>(describing:)();
  MEMORY[0x25F8B4230](v5);

  MEMORY[0x25F8B4230](10, 0xE100000000000000);
  return 0x3A656C7469742020;
}

BOOL static PersonalSearchResult.DisplayRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = *a1 == *a2 && a1[1] == a2[1];
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[3];
  v19 = a2[3];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = a1[2] == a2[2] && v18 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = *(type metadata accessor for PersonalSearchResult.DisplayRepresentation(0) + 24);
  v22 = *(v13 + 48);
  outlined init with copy of URL?(a1 + v21, v16);
  outlined init with copy of URL?(a2 + v21, &v16[v22]);
  OUTLINED_FUNCTION_48(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_48(&v16[v22]);
    if (v17)
    {
      _s10Foundation3URLVSg_ADtWOhTm_0(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return 1;
    }

    goto LABEL_23;
  }

  outlined init with copy of URL?(v16, v2);
  OUTLINED_FUNCTION_48(&v16[v22]);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_36_0();
    v25(v24);
LABEL_23:
    _s10Foundation3URLVSg_ADtWOhTm_0(v16, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  (*(v7 + 32))(v11, &v16[v22], v5);
  OUTLINED_FUNCTION_1_0();
  lazy protocol witness table accessor for type URL and conformance URL(v27, v28, MEMORY[0x277CC9278]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v7 + 8);
  v31 = OUTLINED_FUNCTION_30();
  v30(v31);
  v32 = OUTLINED_FUNCTION_36_0();
  v30(v32);
  _s10Foundation3URLVSg_ADtWOhTm_0(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (v29 & 1) != 0;
}

uint64_t _s10Foundation3URLVSg_ADtWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t PersonalSearchResult.DisplayRepresentation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1852793705 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t PersonalSearchResult.DisplayRepresentation.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 1852793705;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.DisplayRepresentation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchResult.DisplayRepresentation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalSearchResult.DisplayRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_26_0(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();
  OUTLINED_FUNCTION_43(&unk_28702D860);
  OUTLINED_FUNCTION_29_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_29_0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    OUTLINED_FUNCTION_41();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_0();
    lazy protocol witness table accessor for type URL and conformance URL(v8, v9, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_29_0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PersonalSearchResult.DisplayRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_17();
  v22 = v21;
  v37 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  v26 = type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v30 = (v29 - v28);
  OUTLINED_FUNCTION_26_0(v22, v22[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    *v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v30[1] = v31;
    OUTLINED_FUNCTION_27();
    v30[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30[3] = v32;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_1_0();
    lazy protocol witness table accessor for type URL and conformance URL(v33, v34, MEMORY[0x277CC9280]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = OUTLINED_FUNCTION_15_0();
    v36(v35);
    outlined init with take of URL?(v20, v30 + *(v26 + 24));
    outlined init with copy of PersonalSearchResult.DisplayRepresentation(v30, v37, type metadata accessor for PersonalSearchResult.DisplayRepresentation);
    __swift_destroy_boxed_opaque_existential_1(v22);
    outlined destroy of PersonalSearchResult.DisplayRepresentation(v30, type metadata accessor for PersonalSearchResult.DisplayRepresentation);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x25F8B4230]();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x25F8B4230](v1, v2);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_18_0();
  return v4;
}

uint64_t static PersonalSearchResult.AppEntityResultIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_30();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644965707974 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x644965707974;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.AppEntityResultIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResult.AppEntityResultIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_17();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13();
  v29 = *(v19 + 16);
  v28 = *(v19 + 32);
  OUTLINED_FUNCTION_26_0(v23, v23[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v20)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_49(v29);
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_49(v28);
  }

  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

void PersonalSearchResult.AppEntityResultIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_17();
  a18 = v21;
  a19 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26_0(v24, v24[3]);
  v31 = lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_28702D7D0, v32, v31);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    BYTE7(a10) = 0;
    v33 = OUTLINED_FUNCTION_47(&a10 + 7, v27);
    v42 = v34;
    OUTLINED_FUNCTION_27();
    v40 = OUTLINED_FUNCTION_47(&a10 + 6, v27);
    v41 = v35;
    OUTLINED_FUNCTION_41();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v37;
    v39 = v36;
    (*(v29 + 8))(v20, v27);
    *v26 = v33;
    v26[1] = v42;
    v26[2] = v40;
    v26[3] = v41;
    v26[4] = v39;
    v26[5] = v38;

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.debugDescription.getter()
{
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x25F8B4230]();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_18_0();
  return v1;
}

uint64_t static PersonalSearchResult.SpotlightResultIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_30();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.SpotlightResultIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResult.SpotlightResultIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v32 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13();
  v30 = *v22;
  v31 = v22[2];
  OUTLINED_FUNCTION_26_0(v26, v26[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_49(v30);
  if (!v23)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_49(v31);
  }

  (*(v32 + 8))(v24, v27);
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

void PersonalSearchResult.SpotlightResultIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_17();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26_0(v27, v27[3]);
  v34 = lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_28702D740, v35, v34);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    HIBYTE(a12) = 0;
    v36 = OUTLINED_FUNCTION_47(&a12 + 1, v30);
    v38 = v37;
    OUTLINED_FUNCTION_27();
    v39 = OUTLINED_FUNCTION_47(&a12, v30);
    v41 = v40;
    v42 = v39;
    (*(v32 + 8))(v23, v30);
    *v29 = v36;
    v29[1] = v38;
    v29[2] = v42;
    v29[3] = v41;

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResult.ResultIdentifier.debugDescription.getter()
{
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x25F8B4230]();
    OUTLINED_FUNCTION_10_0();
    v1 = v4;
    v2 = v3;
  }

  MEMORY[0x25F8B4230](v1, v2);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_18_0();
  return v6;
}

void static PersonalSearchResult.ResultIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 40);
  v132 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      v134[0] = *a1;
      v134[1] = v2;
      v134[2] = v4;
      v134[3] = v3;
      v134[4] = v132;
      v134[5] = v5;
      v133[0] = v8;
      v133[1] = v7;
      v133[2] = v9;
      v133[3] = v10;
      v133[4] = v11;
      v133[5] = v12;
      static PersonalSearchResult.AppEntityResultIdentifier.== infix(_:_:)(v134, v133);
      v58 = OUTLINED_FUNCTION_37();
      outlined copy of PersonalSearchResult.ResultIdentifier(v58, v59, v60, v61, v11, v12, 0);
      OUTLINED_FUNCTION_27_0();
      outlined copy of PersonalSearchResult.ResultIdentifier(v62, v63, v64, v65, v66, v67, v68);
      OUTLINED_FUNCTION_27_0();
      outlined consume of PersonalSearchResult.ResultIdentifier(v69, v70, v71, v72, v73, v74, v75);
      v76 = OUTLINED_FUNCTION_37();
      outlined consume of PersonalSearchResult.ResultIdentifier(v76, v77, v78, v79, v11, v12, 0);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
LABEL_14:
    v129 = *(a2 + 8);
    v131 = *(a2 + 16);
    outlined copy of PersonalSearchResult.ResultIdentifier(*a2, v129, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_7_0();
    outlined copy of PersonalSearchResult.ResultIdentifier(v43, v44, v45, v46, v132, v5, v6);
    OUTLINED_FUNCTION_7_0();
    outlined consume of PersonalSearchResult.ResultIdentifier(v47, v48, v49, v50, v132, v5, v6);
    v51 = v8;
    v52 = v129;
    v53 = v131;
    v54 = v11;
    v55 = v10;
    v56 = v12;
    v57 = v13;
LABEL_15:
    outlined consume of PersonalSearchResult.ResultIdentifier(v51, v52, v53, v55, v54, v56, v57);
    goto LABEL_18;
  }

  if (*a1 != v8 || v2 != v7)
  {
    v130 = *(a2 + 16);
    v15 = *(a2 + 8);
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = v130;
    if ((v16 & 1) == 0)
    {
      OUTLINED_FUNCTION_39();
      outlined copy of PersonalSearchResult.ResultIdentifier(v108, v109, v110, v111, v112, v113, v114);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20_0();
      outlined copy of PersonalSearchResult.ResultIdentifier(v115, v116, v117, v118, v119, v120, v121);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20_0();
      outlined consume of PersonalSearchResult.ResultIdentifier(v122, v123, v124, v125, v126, v127, v128);
      v51 = v8;
      v52 = v15;
      v53 = v130;
      v55 = v10;
      v54 = v11;
      v56 = v12;
      v57 = 1;
      goto LABEL_15;
    }
  }

  if (v4 == v9 && v3 == v10)
  {
    OUTLINED_FUNCTION_39();
    outlined copy of PersonalSearchResult.ResultIdentifier(v80, v81, v82, v83, v84, v85, v86);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_20_0();
    outlined copy of PersonalSearchResult.ResultIdentifier(v87, v88, v89, v90, v91, v92, v93);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_20_0();
    outlined consume of PersonalSearchResult.ResultIdentifier(v94, v95, v96, v97, v98, v99, v100);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_39();
    outlined consume of PersonalSearchResult.ResultIdentifier(v101, v102, v103, v104, v105, v106, v107);
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_39();
    outlined copy of PersonalSearchResult.ResultIdentifier(v18, v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_20_0();
    outlined copy of PersonalSearchResult.ResultIdentifier(v25, v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_20_0();
    outlined consume of PersonalSearchResult.ResultIdentifier(v32, v33, v34, v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_38();
    outlined consume of PersonalSearchResult.ResultIdentifier(v39, v40, v41, v42, v11, v12, 1);
  }

LABEL_18:
  OUTLINED_FUNCTION_42();
}

uint64_t PersonalSearchResult.ResultIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResult.ResultIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6867696C746F7073;
  }

  else
  {
    return 0x7469746E45707061;
  }
}

uint64_t PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](0);
  return Hasher._finalize()();
}

uint64_t _s19PersonalSearchTypes0aB6ResultV0D10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOs0G3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.ResultIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.ResultIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.ResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.ResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResult.ResultIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v28 = v5;
  v29 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v26 = v8;
  v27 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = v0[1];
  v30 = *v0;
  v31 = v17;
  v18 = v0[3];
  v32 = v0[2];
  v33 = v18;
  v19 = v0[4];
  v24 = v0[5];
  v25 = v19;
  v20 = *(v0 + 48);
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20)
  {
    v35[0] = 1;
    lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();
    OUTLINED_FUNCTION_46(&unk_28702D6B0, v35);
    OUTLINED_FUNCTION_40();
    lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier();
    v21 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v1, v21);
  }

  else
  {
    v35[0] = 0;
    lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();
    OUTLINED_FUNCTION_46(&unk_28702D620, v35);
    OUTLINED_FUNCTION_40();
    v36 = v25;
    v37 = v24;
    lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier();
    v22 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v11, v22);
  }

  (*(v13 + 8))(v16, v20);
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier);
  }

  return result;
}

void PersonalSearchResult.ResultIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v50 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v47 = v6;
  v48 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v46 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v49 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v44 = v8;
  v45 = v12;
  v16 = v50;
  v17 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v17, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v28 = &type metadata for PersonalSearchResult.ResultIdentifier;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v1, v13);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_20();
    return;
  }

  if (v20 < (v21 >> 1))
  {
    HIDWORD(v43) = *(v19 + v20);
    specialized ArraySlice.subscript.getter(v20 + 1, v21 >> 1, v18, v19, v20, v21);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if ((v43 & 0x100000000) != 0)
      {
        LOBYTE(v51) = 1;
        lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();
        OUTLINED_FUNCTION_45(&unk_28702D6B0, &v51);
        lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier();
        OUTLINED_FUNCTION_44();
        swift_unknownObjectRelease();
        v29 = OUTLINED_FUNCTION_23_0();
        v30(v29);
        v31 = OUTLINED_FUNCTION_11_0();
        v32(v31);
        v33 = 0;
        v34 = 0;
        v35 = v51;
        v36 = v52;
        v37 = v53;
        v38 = v54;
      }

      else
      {
        LOBYTE(v51) = 0;
        lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();
        OUTLINED_FUNCTION_45(&unk_28702D620, &v51);
        lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier();
        OUTLINED_FUNCTION_44();
        swift_unknownObjectRelease();
        v39 = OUTLINED_FUNCTION_23_0();
        v40(v39);
        v41 = OUTLINED_FUNCTION_11_0();
        v42(v41);
        v35 = v51;
        v36 = v52;
        v37 = v53;
        v38 = v54;
        v33 = v55;
        v34 = v56;
      }

      *v16 = v35;
      *(v16 + 8) = v36;
      *(v16 + 16) = v37;
      *(v16 + 24) = v38;
      *(v16 + 32) = v33;
      *(v16 + 40) = v34;
      *(v16 + 48) = BYTE4(v43);
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t PersonalSearchResult.description.getter()
{
  OUTLINED_FUNCTION_17_0();

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[6])
  {
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    v6 = v0[4];
    v5 = v0[5];
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x25F8B4230]();
    OUTLINED_FUNCTION_10_0();
    v3 = v6;
    v4 = v5;
  }

  MEMORY[0x25F8B4230](v3, v4);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x25F8B4230](v1, v2);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x25F8B4230](10, 0xE100000000000000);
  OUTLINED_FUNCTION_17_0();
  v7 = PersonalSearchResult.DisplayRepresentation.debugDescription.getter();
  MEMORY[0x25F8B4230](v7);

  return v9;
}

uint64_t PersonalSearchResult.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return outlined copy of PersonalSearchResult.ResultIdentifier(v2, v3, v4, v5, v6, v7, v8);
}

void static PersonalSearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v41[0] = *a1;
  v41[1] = v2;
  v37 = v2;
  v38 = v41[0];
  v41[2] = v3;
  v41[3] = v4;
  v35 = v4;
  v36 = v3;
  v41[4] = v5;
  v41[5] = v6;
  v33 = v6;
  v34 = v5;
  v42 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v39[0] = *a2;
  v39[1] = v8;
  v39[2] = v9;
  v39[3] = v10;
  v39[4] = v11;
  v39[5] = v12;
  v40 = v13;
  outlined copy of PersonalSearchResult.ResultIdentifier(v41[0], v2, v3, v4, v5, v6, v7);
  v14 = OUTLINED_FUNCTION_16_0();
  outlined copy of PersonalSearchResult.ResultIdentifier(v14, v15, v16, v17, v18, v19, v20);
  static PersonalSearchResult.ResultIdentifier.== infix(_:_:)(v41, v39);
  v32 = v21;
  v22 = OUTLINED_FUNCTION_16_0();
  outlined consume of PersonalSearchResult.ResultIdentifier(v22, v23, v24, v25, v26, v27, v28);
  outlined consume of PersonalSearchResult.ResultIdentifier(v38, v37, v36, v35, v34, v33, v7);
  if (v32)
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_42();

    static PersonalSearchResult.DisplayRepresentation.== infix(_:_:)(v29, v30);
  }

  else
  {
    OUTLINED_FUNCTION_42();
  }
}

uint64_t PersonalSearchResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025E48D420 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResult.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalSearchResult.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_26_0(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();
  OUTLINED_FUNCTION_43(&unk_28702D500);
  v13 = *v4;
  v14 = *(v4 + 8);
  v15 = *(v4 + 16);
  v16 = *(v4 + 24);
  v17 = *(v4 + 32);
  v18 = *(v4 + 40);
  v19 = *(v4 + 48);
  outlined copy of PersonalSearchResult.ResultIdentifier(*v4, v14, v15, v16, v17, v18, v19);
  lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier();
  OUTLINED_FUNCTION_29_0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of PersonalSearchResult.ResultIdentifier(v13, v14, v15, v16, v17, v18, v19);
  if (!v2)
  {
    type metadata accessor for PersonalSearchResult(0);
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    OUTLINED_FUNCTION_9_0();
    lazy protocol witness table accessor for type URL and conformance URL(v10, v11, &protocol conformance descriptor for PersonalSearchResult.DisplayRepresentation);
    OUTLINED_FUNCTION_29_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void PersonalSearchResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17();
  v25 = v24;
  v43 = v26;
  type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v32 = type metadata accessor for PersonalSearchResult(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_0();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_26_0(v25, v25[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v36 = v44;
    *(v36 + 16) = v45;
    *(v36 + 32) = v46;
    *(v36 + 48) = v47;
    OUTLINED_FUNCTION_9_0();
    lazy protocol witness table accessor for type URL and conformance URL(v37, v38, &protocol conformance descriptor for PersonalSearchResult.DisplayRepresentation);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = OUTLINED_FUNCTION_34_0();
    v40(v39);
    outlined init with take of PersonalSearchResult.DisplayRepresentation(v30, v36 + *(v32 + 20));
    outlined init with copy of PersonalSearchResult.DisplayRepresentation(v36, v43, type metadata accessor for PersonalSearchResult);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v41 = OUTLINED_FUNCTION_30();
    outlined destroy of PersonalSearchResult.DisplayRepresentation(v41, v42);
  }

  OUTLINED_FUNCTION_20();
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_4_0();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier);
  }

  return result;
}

uint64_t outlined init with take of PersonalSearchResult.DisplayRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PersonalSearchResult.DisplayRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_0();
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of PersonalSearchResult.DisplayRepresentation(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25E47D11C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 48);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    v6 = OUTLINED_FUNCTION_35_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_25E47D1AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 48) = -a2;
  }

  else
  {
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    v6 = OUTLINED_FUNCTION_35_0(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for PersonalSearchResult(uint64_t a1)
{
  result = type metadata accessor for PersonalSearchResult.DisplayRepresentation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25E47D2DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = OUTLINED_FUNCTION_35_0(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_25E47D380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = OUTLINED_FUNCTION_35_0(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void type metadata completion function for PersonalSearchResult.DisplayRepresentation(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(unsigned __int8 *a1, int a2)
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

  return getEnumTag for PersonalSearchQuery.CodingKeys(a1);
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E47D808);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E47D908);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_33_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E47DAA8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_33_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x25F8B4230);
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x25F8B4230);
}

void OUTLINED_FUNCTION_30_0()
{

  JUMPOUT(0x25F8B4230);
}

void OUTLINED_FUNCTION_40()
{
  v1 = *(v0 - 160);
  *(v0 - 128) = *(v0 - 168);
  *(v0 - 120) = v1;
  v2 = *(v0 - 144);
  *(v0 - 112) = *(v0 - 152);
  *(v0 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

void *OUTLINED_FUNCTION_44()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t static PersonalSearchRequest.== infix(_:_:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v20, a2, sizeof(v20));
  memcpy(v21, __src, sizeof(v21));
  memcpy(v22, a2, sizeof(v22));
  if (__dst[1] == 2)
  {
    if (v20[1] != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (__dst[1] != 1)
    {
      if (__dst[1])
      {
        if (v20[1] >= 3uLL)
        {
          v14[0] = __dst[0];
          v14[1] = __dst[1];
          v6 = *(__src + 2);
          v15 = *(__src + 1);
          v16 = v6;
          v17 = *(__src + 3);
          v18 = *(__src + 8);
          v9[0] = v20[0];
          v9[1] = v20[1];
          v7 = *(a2 + 32);
          v10 = *(a2 + 16);
          v11 = v7;
          v12 = *(a2 + 48);
          v13 = *(a2 + 64);
          outlined init with copy of PersonalSearchRequest(v20, v8);
          outlined init with copy of PersonalSearchRequest(__dst, v8);
          outlined init with copy of PersonalSearchRequest(v20, v8);
          outlined init with copy of PersonalSearchRequest(__dst, v8);
          v4 = static PersonalSearchQuery.== infix(_:_:)(v14, v9);
          outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v21, &_s19PersonalSearchTypes0aB7RequestO_ACtMd, &_s19PersonalSearchTypes0aB7RequestO_ACtMR);
          outlined destroy of PersonalSearchRequest(v20);
          outlined destroy of PersonalSearchRequest(__dst);
          return v4 & 1;
        }
      }

      else if (!v20[1])
      {
        goto LABEL_9;
      }

LABEL_11:
      outlined init with copy of PersonalSearchRequest(v20, v14);
      outlined init with copy of PersonalSearchRequest(__dst, v14);
      outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v21, &_s19PersonalSearchTypes0aB7RequestO_ACtMd, &_s19PersonalSearchTypes0aB7RequestO_ACtMR);
      v4 = 0;
      return v4 & 1;
    }

    if (v20[1] != 1)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v21, &_s19PersonalSearchTypes0aB7RequestO_ACtMd, &_s19PersonalSearchTypes0aB7RequestO_ACtMR);
  v4 = 1;
  return v4 & 1;
}

uint64_t PersonalSearchRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616568657270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617669746361 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6176697463616564 && a2 == 0xEA00000000006574;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t PersonalSearchRequest.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74616568657270;
  switch(a1)
  {
    case 1:
      result = 0x6574617669746361;
      break;
    case 2:
      result = 0x6176697463616564;
      break;
    case 3:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ServiceError.InvalidRequestCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ServiceError.InvalidRequestCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchRequest.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v44 = v5;
  v45 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_0();
  v43 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v41 = v9;
  v42 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19_0();
  v40 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v38 = v13;
  v39 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v37[1] = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v46 = v20;
  v47 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v22 = *(v1 + 8);
  v37[0] = *v1;
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v22 == 2)
  {
    LOBYTE(v48) = 2;
    lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();
    v30 = v40;
    v29 = v47;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v41 + 8))(v30, v42);
    goto LABEL_7;
  }

  if (v22 == 1)
  {
    LOBYTE(v48) = 1;
    lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();
    v29 = v47;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v38 + 8))(v16, v39);
LABEL_7:
    v31 = OUTLINED_FUNCTION_13_1();
    v32(v31, v29);
    goto LABEL_10;
  }

  if (v22)
  {
    LOBYTE(v48) = 3;
    lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();
    v33 = v43;
    v34 = v47;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v37[0];
    v49 = v22;
    v35 = *(v1 + 32);
    v50 = *(v1 + 16);
    v51 = v35;
    v52 = *(v1 + 48);
    v53 = *(v1 + 64);
    lazy protocol witness table accessor for type PersonalSearchQuery and conformance PersonalSearchQuery();
    v36 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v33, v36);
    v26 = OUTLINED_FUNCTION_13_1();
    v28 = v34;
  }

  else
  {
    LOBYTE(v48) = 0;
    lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();
    v23 = v47;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = OUTLINED_FUNCTION_23_0();
    v25(v24);
    v26 = OUTLINED_FUNCTION_13_1();
    v28 = v23;
  }

  v27(v26, v28);
LABEL_10:
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQuery and conformance PersonalSearchQuery()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys);
  }

  return result;
}

void PersonalSearchRequest.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v74 = v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v73 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_0();
  v76 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v70 = v10;
  v71 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  v72 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v68 = v14;
  v69 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v67 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v75 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26_0(v4, v4[3]);
  lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_8;
  }

  v65 = v1;
  v64 = v18;
  v66 = v17;
  v25 = v76;
  v24 = v77;
  v26 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v26, 0);
  if (v28 == v27 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_1();
  if (v32 >= (v31 >> 1))
  {
    __break(1u);
    JUMPOUT(0x25E47FA64);
  }

  v63 = *(v30 + v29);
  specialized ArraySlice.subscript.getter(v29 + 1);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_23_1();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v45 = &type metadata for PersonalSearchRequest;
    v46 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_11_1(v46);
    OUTLINED_FUNCTION_21_0();
    (*(v47 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_1_1();
    v49(v48);
LABEL_8:
    v50 = v4;
    goto LABEL_9;
  }

  v38 = v73;
  v37 = v74;
  switch(v63)
  {
    case 1:
      LOBYTE(v78[0]) = 1;
      lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();
      v55 = v66;
      OUTLINED_FUNCTION_8_0(&unk_28702DE70, v78);
      swift_unknownObjectRelease();
      (*(v68 + 8))(v55, v69);
      v57 = OUTLINED_FUNCTION_1_1();
      v58(v57);
      v42 = 0;
      v43 = xmmword_25E48A320;
      goto LABEL_13;
    case 2:
      LOBYTE(v78[0]) = 2;
      lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();
      v51 = v72;
      OUTLINED_FUNCTION_8_0(&unk_28702DE90, v78);
      swift_unknownObjectRelease();
      (*(v70 + 8))(v51, v71);
      v52 = OUTLINED_FUNCTION_1_1();
      v53(v52);
      v42 = 0;
      v43 = xmmword_25E48A310;
      goto LABEL_13;
    case 3:
      LOBYTE(v78[0]) = 3;
      lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();
      v54 = v25;
      OUTLINED_FUNCTION_8_0(&unk_28702DF20, v78);
      lazy protocol witness table accessor for type PersonalSearchQuery and conformance PersonalSearchQuery();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v56 = v75;
      swift_unknownObjectRelease();
      (*(v38 + 8))(v54, v24);
      (*(v56 + 8))(v2, v21);
      v43 = v78[0];
      v59 = v78[1];
      v60 = v78[2];
      v61 = v78[3];
      v42 = v79;
      v37 = v74;
      goto LABEL_14;
    default:
      LOBYTE(v78[0]) = 0;
      lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();
      v39 = v65;
      OUTLINED_FUNCTION_8_0(&unk_28702DE50, v78);
      swift_unknownObjectRelease();
      (*(v67 + 8))(v39, v64);
      v40 = OUTLINED_FUNCTION_1_1();
      v41(v40);
      v42 = 0;
      v43 = 0uLL;
LABEL_13:
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
LABEL_14:
      *v37 = v43;
      *(v37 + 16) = v59;
      *(v37 + 32) = v60;
      *(v37 + 48) = v61;
      *(v37 + 64) = v42;
      v50 = v4;
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v50);
  OUTLINED_FUNCTION_20();
}

PersonalSearchTypes::PersonalSearchError __swiftcall PersonalSearchError.init(type:description:)(PersonalSearchTypes::PersonalSearchError::ErrorType type, Swift::String_optional description)
{
  *v2 = *type;
  *(v2 + 8) = description;
  result.description = description;
  result.type = type;
  return result;
}

uint64_t PersonalSearchError.ErrorType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchError.ErrorType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x5264696C61766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchError.ErrorType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchError.ErrorType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchError.ErrorType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v46 = v28;
  v47 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_0();
  v45 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v43 = v32;
  v44 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_1();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v36 = v35;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  v39 = &v43 - v38;
  v40 = *v23;
  OUTLINED_FUNCTION_26_0(v26, v26[3]);
  lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v41 = (v36 + 8);
  if (v40)
  {
    lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();
    v42 = v45;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v46 + 8))(v42, v47);
  }

  else
  {
    lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v43 + 8))(v24, v44);
  }

  (*v41)(v39, v34);
  OUTLINED_FUNCTION_20();
}

Swift::Int PersonalSearchError.ErrorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](v1);
  return Hasher._finalize()();
}

void PersonalSearchError.ErrorType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17();
  v77 = v23;
  v27 = v26;
  v74 = v28;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v73 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  v32 = &v68 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v72 = v34;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v75 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_26_0(v27, v27[3]);
  lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  v39 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v39)
  {
    goto LABEL_11;
  }

  v70 = v33;
  v71 = v25;
  v77 = v27;
  v40 = v76;
  OUTLINED_FUNCTION_22_0();
  v41 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v41, 0);
  if (v44 == v43 >> 1)
  {
    v76 = started;
LABEL_10:
    type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_23_1();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v61 = &type metadata for PersonalSearchError.ErrorType;
    OUTLINED_FUNCTION_22_0();
    v62 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_11_1(v62);
    OUTLINED_FUNCTION_21_0();
    (*(v63 + 104))(v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = OUTLINED_FUNCTION_13_1();
    v65(v64, v36);
    v27 = v77;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_12:
    OUTLINED_FUNCTION_20();
    return;
  }

  OUTLINED_FUNCTION_16_1();
  v69 = 0;
  if (v48 < (v47 >> 1))
  {
    v49 = *(v46 + v45);
    v50 = specialized ArraySlice.subscript.getter(v45 + 1);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 != v54 >> 1)
    {
      v76 = v50;
      goto LABEL_10;
    }

    if (v49)
    {
      lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();
      v55 = v32;
      v56 = v36;
      OUTLINED_FUNCTION_7_1();
      v57 = v69;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = v74;
      v59 = v75;
      if (!v57)
      {
        swift_unknownObjectRelease();
        (*(v73 + 8))(v55, v40);
LABEL_16:
        (*(v59 + 8))(v24, v56);
        *v58 = v49;
        __swift_destroy_boxed_opaque_existential_1(v77);
        goto LABEL_12;
      }
    }

    else
    {
      lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();
      v66 = v71;
      v56 = v36;
      OUTLINED_FUNCTION_7_1();
      v67 = v69;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = v74;
      v59 = v75;
      if (!v67)
      {
        swift_unknownObjectRelease();
        (*(v72 + 8))(v66, v70);
        goto LABEL_16;
      }
    }

    (*(v59 + 8))(v24, v56);
    swift_unknownObjectRelease();
    v27 = v77;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t PersonalSearchError.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static PersonalSearchError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return 1;
}

uint64_t PersonalSearchError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchError.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  v32 = v34 - v31;
  v33 = *(v23 + 8);
  v34[0] = *(v23 + 16);
  v34[1] = v33;
  OUTLINED_FUNCTION_26_0(v26, v26[3]);
  lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v24)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_20();
}

void PersonalSearchError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_26_0(v27, v27[3]);
  lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    lazy protocol witness table accessor for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType();
    OUTLINED_FUNCTION_7_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v35;
    (*(v32 + 8))(v25, v30);
    *v29 = a14;
    *(v29 + 8) = v34;
    *(v29 + 16) = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResponse.description.getter()
{
  if (*(v0 + 24))
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

BOOL static PersonalSearchResponse.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v72[0] = *a1;
  v72[1] = v8;
  v72[2] = v10;
  v73 = v11;
  v74 = v12;
  v75 = v13;
  v76 = v14;
  v77 = v15;
  if ((v11 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_8;
    }

    if (((v12 ^ v9) & 1) == 0)
    {
      if (v10)
      {
        if (v14)
        {
          if (v8 != v13 || v10 != v14)
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v40 = OUTLINED_FUNCTION_5_0();
            outlined copy of PersonalSearchResponse(v40, v41, v42, 0);
            v43 = OUTLINED_FUNCTION_2_1();
            outlined copy of PersonalSearchResponse(v43, v44, v45, 0);
            outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v72, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
            return (v39 & 1) != 0;
          }

          outlined copy of PersonalSearchResponse(v12, v8, v10, 0);
          v65 = OUTLINED_FUNCTION_2_1();
LABEL_28:
          outlined copy of PersonalSearchResponse(v65, v66, v67, 0);
          outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v72, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
          return 1;
        }
      }

      else if (!v14)
      {
        OUTLINED_FUNCTION_23_1();
        outlined copy of PersonalSearchResponse(v68, v69, v70, v71);
        v65 = v9;
        v66 = v8;
        v67 = 0;
        goto LABEL_28;
      }
    }

    v61 = OUTLINED_FUNCTION_5_0();
    outlined copy of PersonalSearchResponse(v61, v62, v63, 0);
    v34 = OUTLINED_FUNCTION_2_1();
    v37 = 0;
    goto LABEL_23;
  }

  if (!v15)
  {
LABEL_8:
    v30 = OUTLINED_FUNCTION_5_0();
    outlined copy of PersonalSearchResponse(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_2_1();
    v37 = v11;
LABEL_23:
    outlined copy of PersonalSearchResponse(v34, v35, v36, v37);
    outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v72, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
    return 0;
  }

  if (v9)
  {
    if (v12)
    {
      v16 = 1;
      v17 = OUTLINED_FUNCTION_2_1();
      outlined copy of PersonalSearchResponse(v17, v18, v19, 1);
      v20 = OUTLINED_FUNCTION_5_0();
      outlined copy of PersonalSearchResponse(v20, v21, v22, 1);
      v23 = OUTLINED_FUNCTION_2_1();
      outlined copy of PersonalSearchResponse(v23, v24, v25, 1);
      v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes0bC6ResultV_Tt1g5(v9, v12);
      outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v72, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
      v27 = OUTLINED_FUNCTION_2_1();
      outlined consume of PersonalSearchResponse(v27, v28, v29, 1);
      if (v26)
      {
        return v16;
      }

      return 0;
    }

    OUTLINED_FUNCTION_6_0();
    outlined copy of PersonalSearchResponse(v53, v54, v55, v56);
    OUTLINED_FUNCTION_6_0();
    outlined copy of PersonalSearchResponse(v57, v58, v59, v60);
    v34 = OUTLINED_FUNCTION_2_1();
    v37 = 1;
    goto LABEL_23;
  }

  v16 = 1;
  OUTLINED_FUNCTION_6_0();
  outlined copy of PersonalSearchResponse(v46, v47, v48, v49);
  outlined copy of PersonalSearchResponse(0, v8, v10, 1);
  outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v72, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
  if (v12)
  {
    v50 = OUTLINED_FUNCTION_5_0();
    outlined consume of PersonalSearchResponse(v50, v51, v52, 1);
    return 0;
  }

  return v16;
}

uint64_t PersonalSearchResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResponse.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResponse.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v17 = v5;
  v18 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v19 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v10)
  {
    lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();
    v11 = v19;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
    lazy protocol witness table accessor for type [PersonalSearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [PersonalSearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type PersonalSearchResult and conformance PersonalSearchResult, &protocol conformance descriptor for PersonalSearchResult, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v1, v18);
  }

  else
  {
    lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();
    v11 = v19;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type PersonalSearchError and conformance PersonalSearchError();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = OUTLINED_FUNCTION_23_0();
    v14(v12, v13);
  }

  v15 = OUTLINED_FUNCTION_13_1();
  v16(v15, v11);
  OUTLINED_FUNCTION_20();
}

void PersonalSearchResponse.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v39 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v42 = v3;
  OUTLINED_FUNCTION_22_0();
  v11 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v11, 0);
  if (v13 == v12 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_23_1();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v25 = &type metadata for PersonalSearchResponse;
    OUTLINED_FUNCTION_22_0();
    v26 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_11_1(v26);
    OUTLINED_FUNCTION_21_0();
    (*(v27 + 104))(v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_13_1();
    v29(v28, v9);
    v3 = v42;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_20();
    return;
  }

  OUTLINED_FUNCTION_16_1();
  if (v17 < (v16 >> 1))
  {
    v18 = *(v15 + v14);
    specialized ArraySlice.subscript.getter(v14 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    if (v20 == v22 >> 1)
    {
      v23 = v18;
      if (v18)
      {
        LOBYTE(v40) = 1;
        lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();
        OUTLINED_FUNCTION_7_1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
        lazy protocol witness table accessor for type [PersonalSearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [PersonalSearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type PersonalSearchResult and conformance PersonalSearchResult, &protocol conformance descriptor for PersonalSearchResult, MEMORY[0x277D83978]);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v30 = OUTLINED_FUNCTION_23_0();
        v31(v30);
        v32 = OUTLINED_FUNCTION_10_1();
        v33(v32);
        v34 = v40;
        v35 = 0uLL;
        v23 = v18;
      }

      else
      {
        lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();
        OUTLINED_FUNCTION_7_1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type PersonalSearchError and conformance PersonalSearchError();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v1, v6);
        v36 = OUTLINED_FUNCTION_10_1();
        v37(v36);
        v34 = 0;
        v35 = v41;
      }

      *v39 = v34;
      *(v39 + 8) = v35;
      *(v39 + 24) = v23;
      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType);
  }

  return result;
}

uint64_t outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError and conformance PersonalSearchError()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError;
  if (!lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError;
  if (!lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PersonalSearchResult] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
    lazy protocol witness table accessor for type PersonalSearchResult and conformance PersonalSearchResult(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PersonalSearchResult and conformance PersonalSearchResult(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PersonalSearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PersonalSearchTypes0aB7RequestO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PersonalSearchRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for PersonalSearchRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for PersonalSearchRequest(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchError.ErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E48219CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E4822C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResponse.FailureCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E4823C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t DefaultXPCProgressReporter.__allocating_init(session:)(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t protocol witness for XPCProgressReporter.init(session:) in conformance DefaultXPCProgressReporter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t MachClientSessionFactory.serviceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MachClientSessionFactory.createSession(cancellationHandler:)()
{
  OUTLINED_FUNCTION_20_2();
  v2 = type metadata accessor for XPCSession.InitializationOptions();
  v3 = OUTLINED_FUNCTION_19_1(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for XPCSession();

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCRichError) -> ())?(v1, v0);
  static XPCSession.InitializationOptions.none.getter();
  OUTLINED_FUNCTION_14_1();
  return XPCSession.__allocating_init(machService:targetQueue:options:cancellationHandler:)();
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCRichError) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t MachServiceListenerFactory.createListener(incomingSessionHandler:)()
{
  OUTLINED_FUNCTION_20_2();
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  v1 = OUTLINED_FUNCTION_19_1(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_0();

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();

  OUTLINED_FUNCTION_14_1();
  return XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
}

uint64_t ServiceError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ServiceError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ServiceError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ServiceError.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ServiceError.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

unint64_t lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys);
  }

  return result;
}

Swift::Int ServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](0);
  return Hasher._finalize()();
}

void ServiceError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1();
  v36 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1();
  v37 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v34 = v7;
  v35 = a1;
  v13 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v36 = v14;
LABEL_8:
    v28 = v37;
    type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v30 = &type metadata for ServiceError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    OUTLINED_FUNCTION_21_0();
    (*(v31 + 104))(v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v28 + 8))(v17, v8);
    a1 = v35;
LABEL_9:
    v32 = a1;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = specialized ArraySlice.subscript.getter(v15 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v35;
    v25 = v36;
    if (v23)
    {
      lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();
      v26 = v34;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v37;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v32 = v24;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v32);
      return;
    }

    v36 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t ServiceProtocol.buildProgressReporter(session:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  if (a1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 8);

    v7(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
    v9 = a4;
    v10 = 0;
    v11 = AssociatedTypeWitness;
  }

  else
  {
    v11 = swift_getAssociatedTypeWitness();
    v9 = a4;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

uint64_t ServiceProtocol.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = ServiceProtocol.handle(_:);

  return ServiceProtocol.handle(_:)();
}

uint64_t ServiceProtocol.handle(_:)()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v2 = v1;

  OUTLINED_FUNCTION_11_2();

  return v3();
}

{
  OUTLINED_FUNCTION_13_2();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v1[8] = v6;
  OUTLINED_FUNCTION_3_2(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](ServiceProtocol.handle(_:), 0, 0);
}

{
  OUTLINED_FUNCTION_17_2();
  v9 = v0[5];
  __swift_storeEnumTagSinglePayload(v0[10], 1, 1, v0[7]);
  v8 = (*(v9 + 96) + **(v9 + 96));
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = ServiceProtocol.handle(_:);
  v2 = v0[10];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v4, v2, v5, v3);
}

{
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_12_1();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_11_2();

  return v7();
}

uint64_t ServiceProtocol.handleMessage(_:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a1;
  v86 = a5;
  v84 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_1();
  v79 = v9;
  MEMORY[0x28223BE20](v10);
  v83 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_2();
  v77 = v13;
  v78 = v12;
  MEMORY[0x28223BE20](v14);
  v74 = v15;
  v82 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v80 = v17;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v81 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v75 = &v66 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  swift_getAssociatedTypeWitness();
  v88 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v85 = v26;
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v31 = *(a4 + 80);
  v87 = &v66 - v32;
  v31(a2, a3, a4);
  v76 = a3;
  v33 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  XPCReceivedMessage.decode<A>(as:)();
  v69 = v28;
  v73 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v19;
  v71 = v5;
  v72 = a4;
  v34 = v80;
  if (one-time initialization token for endpoint != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logging.endpoint);
  v36 = *(v34 + 16);
  v37 = v75;
  v36(v75, v25, AssociatedTypeWitness);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    OUTLINED_FUNCTION_21_1();
    v40 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v90[0] = v68;
    *v40 = 136315138;
    v67 = v39;
    v41 = v81;
    v36(v81, v37, AssociatedTypeWitness);
    v42 = v41;
    v66 = String.init<A>(describing:)();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_8_1();
    v46(v45);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v44, v90);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_25E474000, v38, v67, "Received request: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();

    v48 = v87;
    v49 = v77;
    v50 = v71;
  }

  else
  {

    v51 = OUTLINED_FUNCTION_8_1();
    v52(v51);
    v48 = v87;
    v49 = v77;
    v50 = v71;
    v42 = v81;
  }

  type metadata accessor for OS_dispatch_queue();
  v71 = static OS_dispatch_queue.main.getter();
  v53 = v76;
  v49[2](v82, v50, v76);
  v36(v42, v25, v33);
  v77 = v25;
  v54 = v85;
  (*(v85 + 16))(v73, v48, v88);
  v55 = v79;
  (*(v79 + 16))(v83, v89, v84);
  v56 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v57 = v80;
  v58 = (v74 + v56 + *(v80 + 80)) & ~*(v80 + 80);
  v59 = (v70 + *(v54 + 80) + v58) & ~*(v54 + 80);
  v74 = (v69 + *(v55 + 80) + v59) & ~*(v55 + 80);
  v60 = swift_allocObject();
  v61 = v72;
  *(v60 + 16) = v53;
  *(v60 + 24) = v61;
  v49[4]((v60 + v56), v82, v53);
  (*(v57 + 32))(v60 + v58, v81, v33);
  v62 = v60 + v59;
  v63 = v88;
  (*(v54 + 32))(v62, v73, v88);
  (*(v55 + 32))(v60 + v74, v83, v84);
  v64 = v71;
  XPCReceivedMessage.handoffReply(to:_:)();

  (v75)(v77, v33);
  return (*(v54 + 8))(v87, v63);
}

uint64_t closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v47 = type metadata accessor for XPCReceivedMessage();
  v45 = *(v47 - 8);
  v42 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a6;
  swift_getAssociatedTypeWitness();
  v44 = type metadata accessor for Optional();
  v9 = *(v44 - 8);
  v36 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v32 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v32 - v15;
  v34 = &v32 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v32 - v21;
  v35 = &v32 - v21;
  v23 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  (*(v17 + 16))(v19, v38, a5);
  (*(v12 + 16))(v16, v39, AssociatedTypeWitness);
  (*(v9 + 16))(v43, v40, v44);
  v24 = v45;
  (*(v45 + 16))(v46, v41, v47);
  v25 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v26 = (v18 + v25 + *(v12 + 80)) & ~*(v12 + 80);
  v27 = (v13 + *(v9 + 80) + v26) & ~*(v9 + 80);
  v28 = (v36 + *(v24 + 80) + v27) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v37;
  *(v29 + 4) = a5;
  *(v29 + 5) = v30;
  (*(v17 + 32))(&v29[v25], v19, a5);
  (*(v12 + 32))(&v29[v26], v34, v33);
  (*(v9 + 32))(&v29[v27], v43, v44);
  (*(v45 + 32))(&v29[v28], v46, v47);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:), v29);
}

uint64_t closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v19;
  v8[2] = a5;
  v8[3] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[6] = AssociatedTypeWitness;
  v8[7] = *(AssociatedTypeWitness - 8);
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[10] = v13;
  v8[11] = *(v13 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[14] = v14;
  v17 = (*(v19 + 96) + **(v19 + 96));
  v15 = swift_task_alloc();
  v8[15] = v15;
  *v15 = v8;
  v15[1] = closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:);

  return v17(v14, a5, a6, a8);
}

uint64_t closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:), 0, 0);
}

{
  v45 = v0;
  if (one-time initialization token for endpoint != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.endpoint);
  v42 = *(v7 + 16);
  v42(v5, v8, v6);
  v10 = *(v4 + 16);
  v10(v1, v2, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v43 = v0[13];
  if (v13)
  {
    v41 = v12;
    v14 = v0[11];
    v38 = v0[12];
    v39 = v0[10];
    log = v11;
    v16 = v0[8];
    v15 = v0[9];
    v18 = v0[6];
    v17 = v0[7];
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v19 = 136315394;
    v42(v16, v15, v18);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v17 + 8))(v15, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v44);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v10(v38, v43, v39);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = *(v14 + 8);
    v27(v43, v39);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v44);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_25E474000, log, v41, "Reply to %s: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
  }

  else
  {
    v29 = v0[10];
    v30 = v0[11];
    v31 = v0[9];
    v33 = v0[6];
    v32 = v0[7];

    v27 = *(v30 + 8);
    v27(v43, v29);
    (*(v32 + 8))(v31, v33);
  }

  v34 = v0[14];
  v35 = v0[10];
  swift_getAssociatedConformanceWitness();
  XPCReceivedMessage.reply<A>(_:)();
  v27(v34, v35);

  OUTLINED_FUNCTION_11_2();

  return v36();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(a3, &_sScPSgMd, &_sScPSgMR);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t ServicePeerHandler.__allocating_init(session:serviceProtocol:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t ServicePeerHandler.handleIncomingRequest(_:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 112))(a1, v1[2], v3, v4);
}

uint64_t ServicePeerHandler.handleCancellation(error:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCRichError();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  v10 = v9 - v8;
  if (one-time initialization token for endpoint != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.endpoint);
  (*(v6 + 16))(v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_21_1();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = XPCRichError.debugDescription.getter();
    v18 = v17;
    (*(v6 + 8))(v10, v4);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_25E474000, v12, v13, "Session cancelled with error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v20 = v2[6];
  v21 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v20);
  return (*(v21 + 120))(v20, v21);
}

uint64_t ServicePeerHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t ServicePeerHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ServiceEndpoint.init(listenerFactory:service:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25E487210(a1, a3);
  result = sub_25E487210(a2, a3 + 40);
  *(a3 + 80) = 1;
  return result;
}

uint64_t ServiceEndpoint.init(listenerFactory:serviceType:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25E487210(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 80) = 0;
  return result;
}

uint64_t ServiceEndpoint.init(serviceName:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &type metadata for MachServiceListenerFactory;
  v11 = lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory();
  *&v9 = a1;
  *(&v9 + 1) = a2;
  return ServiceEndpoint.init(listenerFactory:service:)(&v9, a3, a4);
}

uint64_t ServiceEndpoint.init(serviceName:serviceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = &type metadata for MachServiceListenerFactory;
  v13 = lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory();
  *&v11 = a1;
  *(&v11 + 1) = a2;
  result = sub_25E487210(&v11, a5);
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 80) = 0;
  return result;
}

uint64_t ServiceEndpoint.newServiceInstance()@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v9[0] = a1[1];
  v9[1] = v4;
  v10 = a1[3];
  v5 = type metadata accessor for ServiceEndpoint.ServicePrototype(0, v9);
  (*(*(v5 - 8) + 16))(v9, v2 + 40, v5);
  if (BYTE8(v10) == 1)
  {
    return sub_25E487210(v9, a2);
  }

  v7 = v9[0];
  v8 = *(*(&v9[0] + 1) + 72);
  *(a2 + 24) = v9[0];
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v8(v7, *(&v7 + 1));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServiceEndpoint.startListener()()
{
  v2 = v0;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v2 - 1);
  v6 = *(v5 + 16);
  v6(__src, v1, v2);
  v7 = swift_allocObject();
  v8 = v2[2];
  v7[1] = v2[1];
  v7[2] = v8;
  v7[3] = v2[3];
  memcpy(v7 + 4, __src, 0x51uLL);
  (*(v4 + 16))(partial apply for closure #1 in ServiceEndpoint.startListener(), v7, v3, v4);

  if (!v18)
  {

    if (one-time initialization token for endpoint != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.endpoint);
    v6(__src, v1, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_21_1();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(__src, __src[3]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v5 + 8))(__src, v2);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_25E474000, v10, v11, "Listener %s started", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x25F8B4790]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x25F8B4790]();
    }

    else
    {

      (*(v5 + 8))(__src, v2);
    }
  }
}

uint64_t closure #1 in ServiceEndpoint.startListener()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v8 = type metadata accessor for ServiceEndpoint(0, v15);
  ServiceEndpoint.newServiceInstance()(v8, v15);
  if (one-time initialization token for endpoint != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.endpoint);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25E474000, v10, v11, "Starting service session", v12, 2u);
    MEMORY[0x25F8B4790](v12, -1, -1);
  }

  MEMORY[0x28223BE20](v13);
  type metadata accessor for ServicePeerHandler();
  lazy protocol witness table accessor for type ServicePeerHandler and conformance ServicePeerHandler();
  dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void *closure #1 in closure #1 in ServiceEndpoint.startListener()@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for ServicePeerHandler();
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);

  result = specialized ServicePeerHandler.__allocating_init(session:serviceProtocol:)(v12, v10, v5, v6, v7);
  *a3 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v2 = v1;

  OUTLINED_FUNCTION_11_2();

  return v3();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
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
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t lazy protocol witness table accessor for type ServiceError and conformance ServiceError()
{
  result = lazy protocol witness table cache variable for type ServiceError and conformance ServiceError;
  if (!lazy protocol witness table cache variable for type ServiceError and conformance ServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError and conformance ServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError and conformance ServiceError;
  if (!lazy protocol witness table cache variable for type ServiceError and conformance ServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError and conformance ServiceError);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t sub_25E486BB4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2();
  v48 = *(v2 + 80);
  OUTLINED_FUNCTION_5_1();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_1(0, v5, v6, v7, &associated type descriptor for ServiceProtocol.Request);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v46 = v10;
  v47 = *(v8 + 80);
  v11 = (((v48 + 32) & ~v48) + v4 + v47) & ~v47;
  v13 = *(v12 + 64);
  v17 = OUTLINED_FUNCTION_15_1(255, v14, v15, v16, &associated type descriptor for ServiceProtocol.ProgressReporter);
  v18 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v18);
  v20 = *(v19 + 80);
  v21 = v11;
  v22 = (v11 + v13 + v20) & ~v20;
  v43 = *(v23 + 64);
  v45 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  v26 = *(v24 + 80);
  v36 = OUTLINED_FUNCTION_24_1(v28, v29, v30, v31, v32, v33, v34, v35, v41, *(v27 + 64), v43, (v48 + 32) & ~v48);
  v37(v36);
  (*(v9 + 8))(v1 + v21, v46);
  if (!__swift_getEnumTagSinglePayload(v1 + v22, 1, v17))
  {
    OUTLINED_FUNCTION_21_0();
    (*(v38 + 8))(v1 + v22, v17);
  }

  v39 = (v22 + v44 + v26) & ~v26;
  (*(v25 + 8))(v1 + v39, v45);

  return MEMORY[0x2821FE8E8](v1, v39 + v42, v48 | v47 | v20 | v26 | 7);
}

uint64_t partial apply for closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_2_2();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  OUTLINED_FUNCTION_5_1();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2(AssociatedTypeWitness);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v18 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_19_1(v18);
  v20 = v1 + ((v15 + v17 + *(v19 + 80)) & ~*(v19 + 80));

  return closure #1 in ServiceProtocol.handleMessage(_:session:)(v1 + v5, v1 + v10, v1 + v15, v20, v2, v3);
}

uint64_t outlined init with copy of ServiceProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *specialized ServicePeerHandler.__allocating_init(session:serviceProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServicePeerHandler();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = specialized ServicePeerHandler.init(session:serviceProtocol:)(a1, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *specialized ServicePeerHandler.init(session:serviceProtocol:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  return a3;
}

uint64_t sub_25E487210(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory()
{
  result = lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory;
  if (!lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory;
  if (!lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory);
  }

  return result;
}

uint64_t sub_25E48727C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if (*(v0 + 144) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

unint64_t instantiation function for generic protocol witness table for MachServiceListenerFactory(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MachClientSessionFactory(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MachClientSessionFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ServiceProtocol.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 88) + **(a4 + 88));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_9_1(v8);
  *v9 = v10;
  v9[1] = dispatch thunk of ServiceProtocol.handle(_:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServiceProtocol.handle(_:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 96) + **(a5 + 96));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_1(v10);
  *v11 = v12;
  v11[1] = ServiceProtocol.handle(_:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t type metadata instantiation function for ServiceEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ServiceEndpoint(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceEndpoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for ServiceEndpoint.ServicePrototype(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ServiceEndpoint.ServicePrototype(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServiceEndpoint.ServicePrototype(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ServiceEndpoint.ServicePrototype(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ServiceError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E487B40);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ServicePeerHandler and conformance ServicePeerHandler()
{
  result = lazy protocol witness table cache variable for type ServicePeerHandler and conformance ServicePeerHandler;
  if (!lazy protocol witness table cache variable for type ServicePeerHandler and conformance ServicePeerHandler)
  {
    type metadata accessor for ServicePeerHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServicePeerHandler and conformance ServicePeerHandler);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E487E68(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2();
  v48 = *(v2 + 80);
  OUTLINED_FUNCTION_5_1();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_1(0, v5, v6, v7, &associated type descriptor for ServiceProtocol.Request);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v46 = v10;
  v47 = *(v8 + 80);
  v41 = (((v48 + 48) & ~v48) + v4 + v47) & ~v47;
  v12 = *(v11 + 64);
  v16 = OUTLINED_FUNCTION_15_1(255, v13, v14, v15, &associated type descriptor for ServiceProtocol.ProgressReporter);
  v17 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v17);
  v19 = *(v18 + 80);
  v20 = (v41 + v12 + v19) & ~v19;
  v45 = *(v21 + 64);
  v22 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  v25 = *(v23 + 80);
  v43 = *(v26 + 64);
  v27 = swift_unknownObjectRelease();
  v35 = OUTLINED_FUNCTION_24_1(v27, v28, v29, v30, v31, v32, v33, v34, v40, v41, v43, (v48 + 48) & ~v48);
  v36(v35);
  (*(v9 + 8))(v1 + v42, v46);
  if (!__swift_getEnumTagSinglePayload(v1 + v20, 1, v16))
  {
    OUTLINED_FUNCTION_21_0();
    (*(v37 + 8))(v1 + v20, v16);
  }

  v38 = (v20 + v45 + v25) & ~v25;
  (*(v24 + 8))(v1 + v38, v22);

  return MEMORY[0x2821FE8E8](v1, v38 + v44, v48 | v47 | v19 | v25 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_1();
  v6 = *(v5 + 64);
  v9 = v8 & ~v7;
  OUTLINED_FUNCTION_22_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2(AssociatedTypeWitness);
  v12 = (v9 + v6 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_22_1();
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v15);
  v17 = (v12 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v19 = *(v18 + 64);
  v20 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_19_1(v20);
  v22 = (v17 + v19 + *(v21 + 80)) & ~*(v21 + 80);
  v23 = v1[2];
  v24 = v1[3];
  v25 = swift_task_alloc();
  *(v3 + 16) = v25;
  *v25 = v3;
  v25[1] = dispatch thunk of ServiceProtocol.handle(_:);

  return closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)(a1, v23, v24, v1 + v9, v1 + v12, v1 + v17, v1 + v22, v4);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E48838C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_17_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_2(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_55()
{
  OUTLINED_FUNCTION_17_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_2(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v3 = *(v0 + 8);
  *(v2 - 280) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 224) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}