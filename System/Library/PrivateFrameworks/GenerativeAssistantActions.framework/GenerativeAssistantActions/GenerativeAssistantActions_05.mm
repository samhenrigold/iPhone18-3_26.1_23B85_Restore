Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GATInterfaceIdiom(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GATInterfaceIdiom@<X0>(uint64_t *a1@<X8>)
{
  result = GATInterfaceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Optional<A>.asGATInterfaceIdiom.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  outlined init with copy of Date?(v2, &v15 - v8, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v10 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    outlined init with copy of Date?(v9, v7, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
    v13 = (*(v11 + 88))(v7, v10);
    if (v13 == *MEMORY[0x277CBA108])
    {
      v12 = 0;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA118])
    {
      v12 = 1;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA110])
    {
      v12 = 2;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA0D8])
    {
      v12 = 3;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA100])
    {
      v12 = 4;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA0F0])
    {
      v12 = 5;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA0E0])
    {
      v12 = 6;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA0E8])
    {
      v12 = 7;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA0D0])
    {
      v12 = 8;
      goto LABEL_23;
    }

    if (v13 == *MEMORY[0x277CBA0F8])
    {
      v12 = 9;
      goto LABEL_23;
    }

    (*(v11 + 8))(v7, v10);
  }

  v12 = 10;
LABEL_23:
  *a1 = v12;
  return outlined destroy of OnScreenContent.Document?(v9, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
}

unint64_t UIUserInterfaceIdiom.asGATInterfaceIdiom.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x9030A00080605uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 10;
  }

  *a2 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type GATInteractionMode and conformance GATInteractionMode()
{
  result = lazy protocol witness table cache variable for type GATInteractionMode and conformance GATInteractionMode;
  if (!lazy protocol witness table cache variable for type GATInteractionMode and conformance GATInteractionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GATInteractionMode and conformance GATInteractionMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GATInterfaceIdiom and conformance GATInterfaceIdiom()
{
  result = lazy protocol witness table cache variable for type GATInterfaceIdiom and conformance GATInterfaceIdiom;
  if (!lazy protocol witness table cache variable for type GATInterfaceIdiom and conformance GATInterfaceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GATInterfaceIdiom and conformance GATInterfaceIdiom);
  }

  return result;
}

uint64_t sub_24FDF5BDC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for GenerativeAssistantUseCase();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FDF5D74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for GenerativeAssistantUseCase();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMd, &_s25GenerativeAssistantCommon24DirectInvocationClientIDOSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for GenerativeRequestMetadata(uint64_t a1)
{
  type metadata accessor for GenerativeAssistantFeatureFlagManaging();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GenerativeAssistantUseCase();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Locale?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x277CC9788]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UserRequestPartnerInfoProviding?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Locale?(319, &lazy cache variable for type metadata for DirectInvocationClientID?, MEMORY[0x277D0D6F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for GenerativeAssistantFeatureFlagManaging()
{
  result = lazy cache variable for type metadata for GenerativeAssistantFeatureFlagManaging;
  if (!lazy cache variable for type metadata for GenerativeAssistantFeatureFlagManaging)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GenerativeAssistantFeatureFlagManaging);
  }

  return result;
}

void type metadata accessor for UserRequestPartnerInfoProviding?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UserRequestPartnerInfoProviding?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pMd, &_s25GenerativeAssistantCommon31UserRequestPartnerInfoProviding_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UserRequestPartnerInfoProviding?);
    }
  }
}

void type metadata accessor for Locale?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for GATInterfaceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GATInterfaceIdiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

NSData *PromptImage.toValue()@<X0>(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.ImageFormat();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D42D98]);
  if (one-time initialization token for _compressionRatio != -1)
  {
    swift_once();
  }

  if (byte_27F39FB20 == 1)
  {
    v7 = unk_27F39FB10;
    v8 = static Overrides._compressionRatio;

    v7(&v14, v8);

    v9 = v14;
    if (v15)
    {
      v9 = 0.6;
    }
  }

  else
  {
    v9 = 0.6;
  }

  result = UIImageJPEGRepresentation(a1, v9);
  if (result)
  {
    v11 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Prompt.ImageData.init(format:data:)();
    v12 = *MEMORY[0x277D42DD8];
    v13 = type metadata accessor for Prompt.Component.Value();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static ContentRanker.rankMetadata(contents:)(uint64_t a1, uint64_t a2)
{
  v138 = a2;
  v3 = type metadata accessor for OnScreenContent.UIMetadata();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v120 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v120 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v121 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v123 = &v120 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v122 = &v120 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v126 = &v120 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v120 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v120 - v31;
  v136 = a1;
  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v33 = *(v4 + 8);
  v132 = v3;
  v139 = v4 + 8;
  v154 = v33;
  v33(v6, v3);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v34 = *(v8 + 8);
  v137 = v18;
  v35 = v7;
  v36 = v8 + 8;
  v131 = v34;
  v34(v18, v7);
  v37 = type metadata accessor for IntelligenceProcessInfo();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v134 = v38 + 48;
  v133 = v39;
  v40 = v39(v32, 1, v37);
  v130 = v38;
  if (v40 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v32, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = IntelligenceProcessInfo.isSiri.getter();
    (*(v38 + 8))(v32, v37);
  }

  OnScreenContent.uiMetadata.getter();
  v42 = v137;
  OnScreenContent.UIMetadata.window.getter();
  v43 = v132;
  v154(v6, v132);
  OnScreenContent.UIMetadata.Window.appProcess.getter();
  v44 = v36;
  v45 = v131;
  v135 = v44;
  v131(v42, v35);
  v46 = v133(v30, 1, v37);
  v129 = v37;
  if (v46 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v30, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
    if ((v41 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    OnScreenContent.uiMetadata.getter();
    v75 = v137;
    OnScreenContent.UIMetadata.window.getter();
    v154(v6, v43);
    v76 = v126;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v45(v75, v35);
    v77 = v129;
    if (v133(v76, 1, v129) == 1)
    {
      v78 = v76;
LABEL_18:
      outlined destroy of OnScreenContent.Document?(v78, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
      v79 = 1;
      return v79 & 1;
    }

    v94 = IntelligenceProcessInfo.isSiri.getter();
    (*(v130 + 8))(v76, v77);
LABEL_36:
    v79 = v94 ^ 1;
    return v79 & 1;
  }

  v74 = IntelligenceProcessInfo.isSiri.getter();
  (*(v130 + 8))(v30, v37);
  if ((v41 ^ v74))
  {
    goto LABEL_16;
  }

LABEL_6:
  OnScreenContent.uiMetadata.getter();
  v47 = v127;
  OnScreenContent.UIMetadata.window.getter();
  v48 = v154;
  v154(v6, v43);
  v49 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
  v51 = v50;
  v45(v47, v35);
  if (v51)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v49;
  }

  OnScreenContent.uiMetadata.getter();
  v53 = v128;
  OnScreenContent.UIMetadata.window.getter();
  v127 = v6;
  v48(v6, v43);
  v54 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
  v56 = v55;
  v57 = v53;
  v128 = v35;
  v58 = v45;
  v45(v57, v35);
  if (v56)
  {
    if (v52 != 0.0)
    {
LABEL_11:
      v59 = v127;
      OnScreenContent.uiMetadata.getter();
      v60 = v124;
      OnScreenContent.UIMetadata.window.getter();
      v61 = v132;
      v62 = v154;
      v154(v59, v132);
      v63 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
      v65 = v64;
      v66 = v128;
      v58(v60, v128);
      if (v65)
      {
        v67 = 0.0;
      }

      else
      {
        v67 = v63;
      }

      OnScreenContent.uiMetadata.getter();
      v68 = v125;
      OnScreenContent.UIMetadata.window.getter();
      v62(v59, v61);
      *&v69 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
      v71 = v70;
      v58(v68, v66);
      v72 = *&v69;
      v73 = (v71 & 1) == 0;
      goto LABEL_29;
    }
  }

  else if (v52 != v54)
  {
    goto LABEL_11;
  }

  v80 = v127;
  OnScreenContent.uiMetadata.getter();
  v81 = v137;
  OnScreenContent.UIMetadata.window.getter();
  v82 = v132;
  v83 = v154;
  v154(v80, v132);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v84 = v128;
  v58(v81, v128);
  if (v142)
  {
    v85 = 0.0;
  }

  else
  {
    v85 = v140 * v141;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v86 = v80;
  v87 = v82;
  v83(v86, v82);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v58(v81, v84);
  if ((v145 & 1) == 0)
  {
    if (v85 != v143 * v144)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v85 == 0.0)
  {
LABEL_38:
    v95 = OnScreenContent.isRelevantEntity()();
    v96 = OnScreenContent.isRelevantEntity()();
    v97 = v127;
    if (v95 != v96)
    {
      v79 = OnScreenContent.isRelevantEntity()();
      return v79 & 1;
    }

    v98 = OnScreenContent.isAppEntity()();
    if (v98 != OnScreenContent.isAppEntity()())
    {
      v79 = OnScreenContent.isAppEntity()();
      return v79 & 1;
    }

    v99 = OnScreenContent.isScreenshot()();
    if (v99 != OnScreenContent.isScreenshot()())
    {
      v79 = !OnScreenContent.isScreenshot()();
      return v79 & 1;
    }

    OnScreenContent.uiMetadata.getter();
    v101 = v137;
    OnScreenContent.UIMetadata.window.getter();
    v154(v97, v82);
    v102 = v122;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v58(v101, v128);
    v103 = v102;
    v104 = v102;
    v105 = v129;
    if (v133(v104, 1, v129) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v103, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
      v106 = 0;
    }

    else
    {
      v106 = IntelligenceProcessInfo.isSystemApp.getter();
      (*(v130 + 8))(v103, v105);
    }

    OnScreenContent.uiMetadata.getter();
    v107 = v137;
    OnScreenContent.UIMetadata.window.getter();
    v154(v97, v87);
    v108 = v123;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v109 = v107;
    v110 = v131;
    v131(v109, v128);
    if (v133(v108, 1, v105) == 1)
    {
      v111 = v105;
      outlined destroy of OnScreenContent.Document?(v108, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
      if ((v106 & 1) == 0)
      {
LABEL_50:
        OnScreenContent.uiMetadata.getter();
        v112 = v137;
        OnScreenContent.UIMetadata.window.getter();
        v113 = v154;
        v154(v97, v87);
        OnScreenContent.UIMetadata.Window.boundingBox.getter();
        v114 = v128;
        v110(v112, v128);
        if (v149)
        {
          v115 = 1.79769313e308;
        }

        else
        {
          v115 = v146;
        }

        OnScreenContent.uiMetadata.getter();
        OnScreenContent.UIMetadata.window.getter();
        v113(v97, v87);
        OnScreenContent.UIMetadata.Window.boundingBox.getter();
        v110(v112, v114);
        v116 = v150;
        if (v153)
        {
          v116 = 1.79769313e308;
        }

        v93 = v115 < v116;
        goto LABEL_32;
      }
    }

    else
    {
      v117 = IntelligenceProcessInfo.isSystemApp.getter();
      v111 = v105;
      (*(v130 + 8))(v108, v105);
      if (((v106 ^ v117) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    OnScreenContent.uiMetadata.getter();
    v118 = v137;
    OnScreenContent.UIMetadata.window.getter();
    v154(v97, v87);
    v119 = v121;
    OnScreenContent.UIMetadata.Window.appProcess.getter();
    v110(v118, v128);
    if (v133(v119, 1, v111) == 1)
    {
      v78 = v119;
      goto LABEL_18;
    }

    v94 = IntelligenceProcessInfo.isSystemApp.getter();
    (*(v130 + 8))(v119, v111);
    goto LABEL_36;
  }

LABEL_25:
  v88 = v127;
  OnScreenContent.uiMetadata.getter();
  v89 = v137;
  OnScreenContent.UIMetadata.window.getter();
  v90 = v154;
  v154(v88, v82);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v91 = v58;
  v92 = v128;
  v91(v89, v128);
  if (v149)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = v147 * v148;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  v90(v88, v87);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v91(v89, v92);
  v72 = v151 * v152;
  v73 = (v153 & 1) == 0;
LABEL_29:
  if (!v73)
  {
    v72 = 0.0;
  }

  v93 = v72 < v67;
LABEL_32:
  v79 = v93;
  return v79 & 1;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for OnScreenContent() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for OnScreenContent();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for OnScreenContent() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = type metadata accessor for OnScreenContent();
  v9 = *(v42 - 8);
  v10 = MEMORY[0x28223BE20](v42);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v37 = a2;
  if (a3 != a2)
  {
    v50 = &v35 - v16;
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v48 = v19;
    v49 = (v18 - 8);
    v21 = (v17 + v20 * (a3 - 1));
    v43 = -v20;
    v44 = (v18 + 16);
    v22 = a1 - a3;
    v45 = v17;
    v46 = v18;
    v36 = v20;
    v23 = v17 + v20 * a3;
    v24 = v4;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      v25 = v42;
      while (1)
      {
        v26 = v50;
        v27 = v48;
        v48(v50, v23, v25);
        v27(v14, v21, v25);
        v28 = closure #1 in static ContentRanker.rankMetadata(contents:)(v26, v14);
        v51 = v24;
        if (v24)
        {
          v34 = *v49;
          (*v49)(v14, v25);
          return (v34)(v26, v25);
        }

        v29 = v28;
        v30 = *v49;
        (*v49)(v14, v25);
        result = (v30)(v26, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v31 = *v44;
        v32 = v47;
        (*v44)(v47, v23, v25);
        swift_arrayInitWithTakeFrontToBack();
        result = v31(v21, v32, v25);
        v21 += v43;
        v23 += v43;
        v33 = __CFADD__(v22++, 1);
        v24 = v51;
        if (v33)
        {
          goto LABEL_11;
        }
      }

      v24 = v51;
LABEL_11:
      a3 = v41 + 1;
      v21 = &v40[v36];
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v144 = a1;
  v9 = type metadata accessor for OnScreenContent();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v148 = &v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v150 = &v133 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v133 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v143 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v133 - v23;
  result = MEMORY[0x28223BE20](v22);
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v144;
    if (*v144)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v140 = &v133 - v26;
  v138 = a4;
  v29 = 0;
  v158 = (v10 + 8);
  v159 = v10 + 16;
  v155 = (v10 + 32);
  v30 = MEMORY[0x277D84F90];
  v160 = v9;
  v152 = v27;
  v141 = v24;
  v145 = a3;
  v137 = v10;
  while (1)
  {
    v31 = v29;
    if (v29 + 1 >= v28)
    {
      v54 = v29 + 1;
    }

    else
    {
      v156 = v28;
      v161 = v6;
      v32 = *a3;
      v33 = *(v10 + 72);
      v5 = *a3 + v33 * (v29 + 1);
      v34 = *(v10 + 16);
      v35 = v140;
      v36 = v29;
      v34(v140, v5, v9);
      v139 = v32;
      v157 = v33;
      v37 = &v32[v33 * v36];
      v38 = v141;
      v153 = v34;
      v34(v141, v37, v9);
      v39 = v38;
      v40 = v161;
      LODWORD(v154) = closure #1 in static ContentRanker.rankMetadata(contents:)(v35, v38);
      v161 = v40;
      if (v40)
      {
        v132 = *v158;
        (*v158)(v38, v9);
        v132(v35, v9);
      }

      v41 = *v158;
      (*v158)(v39, v9);
      v151 = v41;
      result = (v41)(v35, v9);
      v142 = v36;
      v42 = v36 + 2;
      v43 = v157;
      v44 = &v139[v157 * (v36 + 2)];
      v45 = v143;
      while (v156 != v42)
      {
        v46 = v30;
        v47 = v160;
        v48 = v153;
        (v153)(v45, v44, v160);
        v49 = v152;
        v48(v152, v5, v47);
        v50 = v161;
        v51 = closure #1 in static ContentRanker.rankMetadata(contents:)(v45, v49);
        v161 = v50;
        if (v50)
        {
          v130 = v151;
          v151(v49, v47);
          v130(v45, v47);
        }

        v52 = v51;
        v53 = v151;
        v151(v49, v47);
        result = (v53)(v45, v47);
        ++v42;
        v43 = v157;
        v44 += v157;
        v5 += v157;
        v30 = v46;
        if ((v154 ^ v52))
        {
          v54 = (v42 - 1);
          goto LABEL_12;
        }
      }

      v54 = v156;
LABEL_12:
      v10 = v137;
      v9 = v160;
      v6 = v161;
      v31 = v142;
      if ((v154 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v54 < v142)
      {
        goto LABEL_140;
      }

      if (v142 < v54)
      {
        v55 = v54;
        v56 = v43 * (v54 - 1);
        v57 = v55 * v43;
        v156 = v55;
        v58 = v142;
        v59 = v142 * v43;
        do
        {
          if (v58 != --v55)
          {
            v161 = v6;
            v61 = *v145;
            if (!*v145)
            {
              goto LABEL_144;
            }

            v5 = v61 + v59;
            v154 = *v155;
            v154(v147, v61 + v59, v160);
            if (v59 < v56 || v5 >= v61 + v57)
            {
              v60 = v160;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v60 = v160;
              if (v59 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v154)(v61 + v56, v147, v60);
            v6 = v161;
            v43 = v157;
          }

          ++v58;
          v56 -= v43;
          v57 -= v43;
          v59 += v43;
        }

        while (v58 < v55);
        a3 = v145;
        v10 = v137;
        v9 = v160;
        v31 = v142;
        v54 = v156;
      }

      else
      {
LABEL_25:
        a3 = v145;
      }
    }

    v62 = a3[1];
    if (v54 >= v62)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v54, v31))
    {
      goto LABEL_136;
    }

    if (v54 - v31 >= v138)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v31, v138))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v156 = v54;
    if (&v31[v138] >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = &v31[v138];
    }

    if (v63 < v31)
    {
      goto LABEL_139;
    }

    if (v156 == v63)
    {
      v54 = v156;
LABEL_37:
      if (v54 < v31)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v110 = *a3;
    v111 = *(v10 + 72);
    v157 = *(v10 + 16);
    v112 = v110 + v111 * (v156 - 1);
    v153 = -v111;
    v154 = v110;
    v142 = v31;
    v113 = &v31[-v156];
    v134 = v111;
    v5 = v110 + v156 * v111;
    v115 = v149;
    v114 = v150;
    v151 = v63;
    v146 = v30;
    do
    {
      v135 = v5;
      v136 = v113;
      v139 = v112;
      v116 = v112;
      while (1)
      {
        v117 = v6;
        v118 = v157;
        (v157)(v115, v5, v9);
        v118(v114, v116, v9);
        v119 = closure #1 in static ContentRanker.rankMetadata(contents:)(v115, v114);
        v120 = v114;
        v161 = v117;
        if (v117)
        {
          v131 = *v158;
          (*v158)(v114, v9);
          v131(v115, v9);
        }

        v121 = v119;
        v122 = *v158;
        (*v158)(v120, v9);
        result = (v122)(v115, v9);
        if ((v121 & 1) == 0)
        {
          break;
        }

        v30 = v146;
        if (!v154)
        {
          goto LABEL_142;
        }

        v123 = *v155;
        v124 = v148;
        v9 = v160;
        (*v155)(v148, v5, v160);
        swift_arrayInitWithTakeFrontToBack();
        v123(v116, v124, v9);
        v116 += v153;
        v5 += v153;
        v125 = __CFADD__(v113++, 1);
        v6 = v161;
        v115 = v149;
        v114 = v150;
        if (v125)
        {
          goto LABEL_100;
        }
      }

      v9 = v160;
      v6 = v161;
      v115 = v149;
      v114 = v150;
      v30 = v146;
LABEL_100:
      v112 = &v139[v134];
      v113 = v136 - 1;
      v5 = v135 + v134;
      v54 = v151;
      ++v156;
    }

    while (v156 != v151);
    a3 = v145;
    v10 = v137;
    v31 = v142;
    if (v151 < v142)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v65 = *(v30 + 2);
    v64 = *(v30 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v66;
    v67 = &v30[16 * v65];
    *(v67 + 4) = v31;
    *(v67 + 5) = v54;
    v151 = v54;
    v68 = *v144;
    if (!*v144)
    {
      goto LABEL_145;
    }

    if (v65)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v28 = a3[1];
    v29 = v151;
    v9 = v160;
    if (v151 >= v28)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v66 - 1;
    if (v66 >= 4)
    {
      v73 = &v30[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_122;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_123;
      }

      v80 = &v30[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_125;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_128;
      }

      if (v84 >= v76)
      {
        v102 = &v30[16 * v5 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v66 == 3)
    {
      v69 = *(v30 + 4);
      v70 = *(v30 + 5);
      v79 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      v72 = v79;
LABEL_58:
      if (v72)
      {
        goto LABEL_124;
      }

      v85 = &v30[16 * v66];
      v87 = *v85;
      v86 = *(v85 + 1);
      v88 = __OFSUB__(v86, v87);
      v89 = v86 - v87;
      v90 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v91 = &v30[16 * v5 + 32];
      v93 = *v91;
      v92 = *(v91 + 1);
      v79 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v79)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v89, v94))
      {
        goto LABEL_131;
      }

      if (v89 + v94 >= v71)
      {
        if (v71 < v94)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v95 = &v30[16 * v66];
    v97 = *v95;
    v96 = *(v95 + 1);
    v79 = __OFSUB__(v96, v97);
    v89 = v96 - v97;
    v90 = v79;
LABEL_72:
    if (v90)
    {
      goto LABEL_126;
    }

    v98 = &v30[16 * v5];
    v100 = *(v98 + 4);
    v99 = *(v98 + 5);
    v79 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if (v79)
    {
      goto LABEL_129;
    }

    if (v101 < v89)
    {
      goto LABEL_89;
    }

LABEL_79:
    v106 = v5 - 1;
    if (v5 - 1 >= v66)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v107 = *&v30[16 * v106 + 32];
    v108 = *&v30[16 * v5 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v10 + 72) * v107, *a3 + *(v10 + 72) * *&v30[16 * v5 + 32], *a3 + *(v10 + 72) * v108, v68);
    if (v6)
    {
    }

    if (v108 < v107)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
    }

    if (v106 >= *(v30 + 2))
    {
      goto LABEL_121;
    }

    v109 = &v30[16 * v106];
    *(v109 + 4) = v107;
    *(v109 + 5) = v108;
    v162 = v30;
    result = specialized Array.remove(at:)(v5);
    v30 = v162;
    v66 = *(v162 + 2);
    if (v66 <= 1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
  __break(1u);
LABEL_131:
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
LABEL_137:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
  v30 = result;
LABEL_106:
  v162 = v30;
  v126 = *(v30 + 2);
  if (v126 < 2)
  {
  }

  while (*a3)
  {
    v127 = *&v30[16 * v126];
    v128 = *&v30[16 * v126 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v10 + 72) * v127, *a3 + *(v10 + 72) * *&v30[16 * v126 + 16], *a3 + *(v10 + 72) * v128, v5);
    if (v6)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
    }

    if (v126 - 2 >= *(v30 + 2))
    {
      goto LABEL_133;
    }

    v129 = &v30[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v162 = v30;
    result = specialized Array.remove(at:)(v126 - 1);
    v30 = v162;
    v126 = *(v162 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = type metadata accessor for OnScreenContent();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  result = MEMORY[0x28223BE20](&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v14;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = closure #1 in static ContentRanker.rankMetadata(contents:)(v37, v50);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = result;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = closure #1 in static ContentRanker.rankMetadata(contents:)(v30, v31);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v79, &v78, &v77);
  return 1;
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
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for OnScreenContent();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized static ContentRanker.rank(contents:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v194 = &v188 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v213 = &v188 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v220 = (&v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v223 = &v188 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v221 = (&v188 - v15);
  MEMORY[0x28223BE20](v14);
  v224 = &v188 - v16;
  v17 = type metadata accessor for OnScreenContent.Content();
  v196 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v201 = &v188 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v218 = &v188 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v203 = &v188 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v212 = (&v188 - v28);
  MEMORY[0x28223BE20](v27);
  v222 = &v188 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v207 = &v188 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v188 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v202 = &v188 - v37;
  MEMORY[0x28223BE20](v36);
  v216 = &v188 - v38;
  v229 = type metadata accessor for OnScreenContent.UIMetadata();
  v39 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v228 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v41 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v226 = &v188 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OnScreenContent();
  v237 = *(v43 - 8);
  v44 = MEMORY[0x28223BE20](v43);
  v208 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v188 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v198 = &v188 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v225 = &v188 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v219 = (&v188 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v217 = &v188 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v206 = &v188 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v234 = &v188 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v205 = &v188 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v233 = &v188 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v231 = &v188 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v188 - v67;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v209 = v35;
    v210 = v7;
    v195 = v20;
    v232 = v17;
    v236 = v66;
    v193 = static MetricsUtils.shared;
    v66 = MetricsUtils.recordSignpostBegin(for:)("RankScreenContent.Time", 22, 2);
    v239 = MEMORY[0x277D84F90];
    v69 = *(a1 + 16);
    v192 = a1;
    v190 = v39;
    v189 = v41;
    v191 = v69;
    if (v69)
    {
      v215 = *(v237 + 16);
      v211 = ((*(v237 + 80) + 32) & ~*(v237 + 80));
      v7 = &v211[a1];
      a1 = *(v237 + 72);
      v39 += 8;
      v70 = (v41 + 8);
      v204 = (v237 + 8);
      v230 = (v237 + 16);
      v214 = (v237 + 32);
      v235 = MEMORY[0x277D84F90];
      do
      {
        v41 = v236;
        v215(v68, v7, v236);
        v71 = v228;
        OnScreenContent.uiMetadata.getter();
        v72 = v226;
        OnScreenContent.UIMetadata.window.getter();
        (*v39)(v71, v229);
        v73 = OnScreenContent.UIMetadata.Window.isActive.getter();
        (*v70)(v72, v227);
        if (v73)
        {
          v74 = *v214;
          (*v214)(v231, v68, v41);
          v75 = v235;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v238 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 16) + 1, 1);
            v75 = v238;
          }

          v41 = *(v75 + 16);
          v77 = *(v75 + 24);
          if (v41 >= v77 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v41 + 1, 1);
            v75 = v238;
          }

          *(v75 + 16) = v41 + 1;
          v235 = v75;
          v66 = (v74)(&v211[v75 + v41 * a1], v231, v236);
        }

        else
        {
          v66 = (*v204)(v68, v41);
        }

        v7 += a1;
        --v69;
      }

      while (v69);
    }

    else
    {
      v235 = MEMORY[0x277D84F90];
    }

    v78 = v235;
    v231 = *(v235 + 16);
    if (!v231)
    {
      break;
    }

    v35 = 0;
    v215 = (v237 + 16);
    v214 = (v196 + 88);
    LODWORD(v211) = *MEMORY[0x277D1D360];
    v204 = (v196 + 8);
    v200 = (v196 + 96);
    v199 = (v237 + 8);
    v230 = (v237 + 32);
    v17 = MEMORY[0x277D84F90];
    v20 = v236;
    v79 = v205;
    while (v35 < *(v78 + 16))
    {
      v80 = v17;
      v41 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v39 = *(v237 + 72);
      (*(v237 + 16))(v233, v78 + v41 + v39 * v35, v20);
      v81 = v222;
      OnScreenContent.content.getter();
      v82 = v232;
      v83 = (*v214)(v81, v232);
      if (v83 == v211)
      {
        (*v200)(v81, v82);
        v68 = type metadata accessor for OnScreenContent.Image();
        v84 = *(v68 - 1);
        v7 = v216;
        (*(v84 + 32))();
        (*(v84 + 56))(v7, 0, 1, v68);
      }

      else
      {
        v68 = type metadata accessor for OnScreenContent.Image();
        v85 = v20;
        v86 = v216;
        (*(*(v68 - 1) + 56))(v216, 1, 1, v68);
        v87 = v81;
        v7 = v86;
        v20 = v85;
        v79 = v205;
        (*v204)(v87, v82);
      }

      type metadata accessor for OnScreenContent.Image();
      v88 = *(v68 - 1);
      if ((*(v88 + 48))(v7, 1, v68) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v7, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
LABEL_24:
        a1 = *v230;
        (*v230)(v79, v233, v20);
        v17 = v80;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v238 = v80;
        if ((v91 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 16) + 1, 1);
          v17 = v238;
        }

        v93 = *(v17 + 16);
        v92 = *(v17 + 24);
        v68 = (v93 + 1);
        if (v93 >= v92 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
          v17 = v238;
        }

        *(v17 + 16) = v68;
        v94 = v17 + v41 + v93 * v39;
        v20 = v236;
        v66 = (a1)(v94, v79, v236);
        goto LABEL_16;
      }

      v89 = OnScreenContent.Image.isSnapshot.getter();
      v90 = *(v88 + 8);
      a1 = v88 + 8;
      v90(v7, v68);
      if ((v89 & 1) == 0)
      {
        goto LABEL_24;
      }

      v66 = (*v199)(v233, v20);
      v17 = v80;
LABEL_16:
      ++v35;
      v78 = v235;
      if (v231 == v35)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    v187 = v66;
    swift_once();
    v66 = v187;
  }

  v17 = MEMORY[0x277D84F90];
  v20 = v236;
LABEL_30:
  v95 = *(v17 + 16);
  v233 = v17;
  v230 = v95;
  if (v95)
  {
    v35 = 0;
    v216 = (v237 + 16);
    v222 = (v196 + 88);
    LODWORD(v215) = *MEMORY[0x277D1D368];
    v211 = (v196 + 8);
    v205 = (v196 + 96);
    LODWORD(v200) = *MEMORY[0x277D1D360];
    v204 = (v237 + 32);
    v199 = (v237 + 8);
    v214 = MEMORY[0x277D84F90];
    v7 = v232;
    while (1)
    {
      if (v35 >= *(v17 + 16))
      {
        goto LABEL_114;
      }

      v97 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v41 = *(v237 + 72);
      (*(v237 + 16))(v234, v17 + v97 + v41 * v35, v20);
      v98 = v212;
      OnScreenContent.content.getter();
      v99 = *v222;
      v100 = (*v222)(v98, v7);
      if (v100 == v215)
      {
        (*v205)(v98, v7);
        v101 = type metadata accessor for OnScreenContent.Document();
        v102 = v98;
        v103 = *(v101 - 8);
        v39 = v213;
        (*(v103 + 32))(v213, v102, v101);
        (*(v103 + 56))(v39, 0, 1, v101);
      }

      else
      {
        v101 = type metadata accessor for OnScreenContent.Document();
        v39 = v213;
        (*(*(v101 - 8) + 56))(v213, 1, 1, v101);
        (*v211)(v98, v7);
      }

      type metadata accessor for OnScreenContent.Document();
      v104 = *(v101 - 8);
      v105 = (*(v104 + 48))(v39, 1, v101) == 1;
      v106 = v39;
      if (v105)
      {
        outlined destroy of OnScreenContent.Document?(v39, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
        v107 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v107 - 8) + 56))(v224, 1, 1, v107);
      }

      else
      {
        v39 = v224;
        v108 = v106;
        OnScreenContent.Document.entity.getter();
        (*(v104 + 8))(v108, v101);
        v109 = type metadata accessor for TypedValue.EntityIdentifierValue();
        v110 = (*(*(v109 - 8) + 48))(v39, 1, v109);
        if (v110 != 1)
        {
LABEL_48:
          outlined destroy of OnScreenContent.Document?(v39, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
          v117 = *v204;
          (*v204)(v206, v234, v20);
          v118 = v214;
          v119 = swift_isUniquelyReferenced_nonNull_native();
          v238 = v118;
          if ((v119 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 16) + 1, 1);
            v118 = v238;
          }

          a1 = *(v118 + 16);
          v120 = *(v118 + 24);
          v68 = (a1 + 1);
          v121 = v118;
          v17 = v233;
          if (a1 >= v120 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), a1 + 1, 1);
            v17 = v233;
            v121 = v238;
          }

          *(v121 + 16) = v68;
          v214 = v121;
          v66 = (v117)(v121 + v97 + a1 * v41, v206, v20);
          goto LABEL_34;
        }
      }

      outlined destroy of OnScreenContent.Document?(v224, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v111 = v203;
      OnScreenContent.content.getter();
      v112 = v99(v111, v7);
      if (v112 == v200)
      {
        (*v205)(v111, v7);
        v68 = type metadata accessor for OnScreenContent.Image();
        v113 = *(v68 - 1);
        v39 = v202;
        (*(v113 + 32))(v202, v111, v68);
        (*(v113 + 56))(v39, 0, 1, v68);
        v114 = v39;
      }

      else
      {
        v68 = type metadata accessor for OnScreenContent.Image();
        v114 = v202;
        (*(*(v68 - 1) + 56))(v202, 1, 1, v68);
        (*v211)(v111, v7);
      }

      type metadata accessor for OnScreenContent.Image();
      a1 = *(v68 - 1);
      if ((*(a1 + 48))(v114, 1, v68) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v114, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
        v96 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v96 - 8) + 56))(v221, 1, 1, v96);
      }

      else
      {
        v39 = v221;
        OnScreenContent.Image.entity.getter();
        v115 = *(a1 + 8);
        a1 += 8;
        v115(v114, v68);
        v116 = type metadata accessor for TypedValue.EntityIdentifierValue();
        if ((*(*(v116 - 8) + 48))(v39, 1, v116) != 1)
        {
          goto LABEL_48;
        }
      }

      outlined destroy of OnScreenContent.Document?(v221, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v66 = (*v199)(v234, v20);
      v17 = v233;
LABEL_34:
      if (v230 == ++v35)
      {
        goto LABEL_54;
      }
    }
  }

  v214 = MEMORY[0x277D84F90];
  v7 = v232;
LABEL_54:
  v238 = v214;

  v68 = 0;
  specialized MutableCollection<>.sort(by:)(&v238);
  v205 = 0;
  v66 = specialized Array.append<A>(contentsOf:)(v238);
  a1 = v218;
  v35 = v217;
  if (v230)
  {
    v122 = 0;
    v216 = (v237 + 16);
    v234 = (v196 + 88);
    LODWORD(v215) = *MEMORY[0x277D1D368];
    v213 = (v196 + 8);
    v212 = (v196 + 96);
    LODWORD(v211) = *MEMORY[0x277D1D360];
    v206 = (v237 + 8);
    v221 = (v237 + 32);
    v222 = MEMORY[0x277D84F90];
    v17 = v233;
    while (1)
    {
      if (v122 >= *(v17 + 16))
      {
        goto LABEL_115;
      }

      v224 = ((*(v237 + 80) + 32) & ~*(v237 + 80));
      v39 = *(v237 + 72);
      (*(v237 + 16))(v35, &v224[v17 + v39 * v122], v20);
      OnScreenContent.content.getter();
      v123 = *v234;
      v124 = (*v234)(a1, v7);
      if (v124 == v215)
      {
        (*v212)(a1, v7);
        v125 = type metadata accessor for OnScreenContent.Document();
        v126 = a1;
        v68 = v125;
        v127 = *(v125 - 8);
        v128 = v210;
        (*(v127 + 32))(v210, v126, v125);
        (*(v127 + 56))(v128, 0, 1, v68);
      }

      else
      {
        v68 = type metadata accessor for OnScreenContent.Document();
        v128 = v210;
        (*(*(v68 - 1) + 56))(v210, 1, 1, v68);
        (*v213)(a1, v7);
      }

      type metadata accessor for OnScreenContent.Document();
      v129 = *(v68 - 1);
      if ((*(v129 + 48))(v128, 1, v68) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v128, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV8DocumentVSgMR);
        v130 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v130 - 8) + 56))(v223, 1, 1, v130);
        v41 = v209;
        v35 = v217;
      }

      else
      {
        v131 = v223;
        OnScreenContent.Document.entity.getter();
        (*(v129 + 8))(v128, v68);
        v132 = type metadata accessor for TypedValue.EntityIdentifierValue();
        v133 = (*(*(v132 - 8) + 48))(v131, 1, v132);
        v134 = v131;
        v41 = v209;
        v35 = v217;
        if (v133 != 1)
        {
          goto LABEL_56;
        }
      }

      outlined destroy of OnScreenContent.Document?(v223, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v135 = v201;
      OnScreenContent.content.getter();
      v136 = v123(v135, v7);
      if (v136 == v211)
      {
        (*v212)(v135, v7);
        v68 = type metadata accessor for OnScreenContent.Image();
        v137 = *(v68 - 1);
        (*(v137 + 32))(v41, v135, v68);
        (*(v137 + 56))(v41, 0, 1, v68);
      }

      else
      {
        v68 = type metadata accessor for OnScreenContent.Image();
        (*(*(v68 - 1) + 56))(v41, 1, 1, v68);
        (*v213)(v135, v7);
      }

      type metadata accessor for OnScreenContent.Image();
      v138 = *(v68 - 1);
      if ((*(v138 + 48))(v41, 1, v68) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v41, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
        v139 = type metadata accessor for TypedValue.EntityIdentifierValue();
        (*(*(v139 - 8) + 56))(v220, 1, 1, v139);
LABEL_71:
        outlined destroy of OnScreenContent.Document?(v220, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
        v143 = *v221;
        (*v221)(v219, v35, v20);
        v144 = v222;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v238 = v144;
        if ((v145 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v144 + 16) + 1, 1);
          v144 = v238;
        }

        v147 = *(v144 + 16);
        v146 = *(v144 + 24);
        v68 = (v147 + 1);
        v148 = v144;
        v17 = v233;
        if (v147 >= v146 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), v147 + 1, 1);
          v17 = v233;
          v148 = v238;
        }

        *(v148 + 16) = v68;
        v222 = v148;
        v66 = v143(&v224[v148 + v147 * v39], v219, v20);
        goto LABEL_57;
      }

      v140 = v220;
      OnScreenContent.Image.entity.getter();
      (*(v138 + 8))(v41, v68);
      v141 = type metadata accessor for TypedValue.EntityIdentifierValue();
      v142 = (*(*(v141 - 8) + 48))(v140, 1, v141);
      v134 = v140;
      if (v142 == 1)
      {
        goto LABEL_71;
      }

LABEL_56:
      outlined destroy of OnScreenContent.Document?(v134, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMd, &_s7ToolKit10TypedValueO016EntityIdentifierD0VSgMR);
      v66 = (*v206)(v35, v20);
      v17 = v233;
LABEL_57:
      v122 = (v122 + 1);
      a1 = v218;
      if (v230 == v122)
      {
        goto LABEL_77;
      }
    }
  }

  v222 = MEMORY[0x277D84F90];
LABEL_77:
  v238 = v222;

  v68 = v205;
  specialized MutableCollection<>.sort(by:)(&v238);
  if (v68)
  {
    goto LABEL_118;
  }

  v218 = 0;
  v17 = &v239;
  v66 = specialized Array.append<A>(contentsOf:)(v238);
  v149 = v195;
  if (v231)
  {
    v39 = 0;
    v234 = (v237 + 16);
    v35 = (v196 + 88);
    LODWORD(v230) = *MEMORY[0x277D1D360];
    v220 = (v196 + 96);
    v221 = (v196 + 8);
    v219 = (v237 + 32);
    v224 = (v237 + 8);
    v223 = MEMORY[0x277D84F90];
    v150 = v235;
    while (1)
    {
      if (v39 >= *(v150 + 16))
      {
        goto LABEL_116;
      }

      v151 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v152 = v7;
      v153 = *(v237 + 72);
      (*(v237 + 16))(v225, v150 + v151 + v153 * v39, v20);
      OnScreenContent.content.getter();
      v154 = (*v35)(v149, v152);
      if (v154 == v230)
      {
        (*v220)(v149, v152);
        v41 = type metadata accessor for OnScreenContent.Image();
        v17 = (v41 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v155 = *(v41 - 8);
        v68 = v207;
        (*(v155 + 32))(v207, v149, v41);
        (*(v155 + 56))(v68, 0, 1, v41);
      }

      else
      {
        v41 = type metadata accessor for OnScreenContent.Image();
        v17 = (v41 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v68 = v207;
        (*(*(v41 - 8) + 56))(v207, 1, 1, v41);
        (*v221)(v149, v152);
      }

      type metadata accessor for OnScreenContent.Image();
      a1 = *(v41 - 8);
      if ((*(a1 + 48))(v68, 1, v41) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v68, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
      }

      else
      {
        v17 = OnScreenContent.Image.isSnapshot.getter();
        v156 = *(a1 + 8);
        a1 += 8;
        v156(v68, v41);
        if (v17)
        {
          a1 = *v219;
          (*v219)(v198, v225, v20);
          v17 = v223;
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v238 = v17;
          if ((v157 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
            v17 = v238;
          }

          v159 = *(v17 + 16);
          v158 = *(v17 + 24);
          v41 = v159 + 1;
          if (v159 >= v158 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1);
            v17 = v238;
          }

          *(v17 + 16) = v41;
          v223 = v17;
          v160 = v17 + v151 + v159 * v153;
          v20 = v236;
          v66 = (a1)(v160, v198, v236);
          goto LABEL_82;
        }
      }

      v66 = (*v224)(v225, v20);
LABEL_82:
      ++v39;
      v7 = v232;
      v150 = v235;
      if (v231 == v39)
      {
        goto LABEL_95;
      }
    }
  }

  v223 = MEMORY[0x277D84F90];
LABEL_95:
  v238 = v223;

  v68 = v218;
  specialized MutableCollection<>.sort(by:)(&v238);
  if (v68)
  {
    goto LABEL_118;
  }

  v224 = 0;
  specialized Array.append<A>(contentsOf:)(v238);
  v161 = v191;
  if (v191)
  {
    v234 = *(v237 + 16);
    v230 = ((*(v237 + 80) + 32) & ~*(v237 + 80));
    v162 = v230 + v192;
    v163 = *(v237 + 72);
    v232 = (v190 + 8);
    v164 = (v189 + 8);
    v231 = (v237 + 32);
    v237 += 16;
    v225 = (v237 - 8);
    v165 = MEMORY[0x277D84F90];
    v166 = v197;
    do
    {
      v167 = v236;
      (v234)(v166, v162, v236);
      v168 = v228;
      OnScreenContent.uiMetadata.getter();
      v169 = v226;
      OnScreenContent.UIMetadata.window.getter();
      (*v232)(v168, v229);
      v170 = OnScreenContent.UIMetadata.Window.isActive.getter();
      (*v164)(v169, v227);
      if (v170)
      {
        (*v225)(v166, v167);
      }

      else
      {
        v171 = *v231;
        (*v231)(v208, v166, v167);
        v172 = swift_isUniquelyReferenced_nonNull_native();
        v238 = v165;
        if ((v172 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v165 + 16) + 1, 1);
          v166 = v197;
          v165 = v238;
        }

        v174 = *(v165 + 16);
        v173 = *(v165 + 24);
        if (v174 >= v173 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1);
          v166 = v197;
          v165 = v238;
        }

        *(v165 + 16) = v174 + 1;
        v171(v230 + v165 + v174 * v163, v208, v236);
      }

      v162 += v163;
      --v161;
    }

    while (v161);
  }

  else
  {
    v165 = MEMORY[0x277D84F90];
  }

  v238 = v165;

  v68 = v224;
  specialized MutableCollection<>.sort(by:)(&v238);
  if (v68)
  {
LABEL_118:

    __break(1u);
  }

  else
  {

    specialized Array.append<A>(contentsOf:)(v238);
    if (one-time initialization token for contentRanker != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    __swift_project_value_buffer(v175, static Logger.contentRanker);
    v176 = v239;

    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v238 = v180;
      *v179 = 136315650;
      *(v179 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x52746E65746E6F43, 0xED000072656B6E61, &v238);
      *(v179 + 12) = 2080;
      *(v179 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E6F63286B6E6172, 0xEF293A73746E6574, &v238);
      *(v179 + 22) = 2080;
      v181 = MEMORY[0x2530570A0](v176, v236);
      v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v182, &v238);

      *(v179 + 24) = v183;
      _os_log_impl(&dword_24FD67000, v177, v178, "%s.%s ranked content: %s", v179, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v180, -1, -1);
      MEMORY[0x253057F40](v179, -1, -1);
    }

    v184 = v194;
    v185 = type metadata accessor for OSSignpostID();
    (*(*(v185 - 8) + 56))(v184, 1, 1, v185);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("RankScreenContent.Time", 22, 2u, v184);
    outlined destroy of OnScreenContent.Document?(v184, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    return v176;
  }

  return result;
}

uint64_t CallEmergencyServicesTool.invocation.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

unint64_t EmergencyServicesInvocation.EmergencyService.rawValue.getter(char a1)
{
  result = 0x6853657669746361;
  switch(a1)
  {
    case 1:
      result = 0x746C7561737361;
      break;
    case 2:
      result = 0x6469636341726163;
      break;
    case 3:
      result = 0x7265676E6164;
      break;
    case 4:
      result = 1701996902;
      break;
    case 5:
      result = 0x75617373416E7567;
      break;
    case 6:
      result = 1886152040;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x697070616E64696BLL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x65736F647265766FLL;
      break;
    case 11:
      result = 0x636E617473627573;
      break;
    case 12:
      result = 0x7369726F72726574;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x73416C6175786573;
      break;
    case 16:
      result = 0x6F436E6F73696F70;
      break;
    case 17:
      result = 0x636E656772656D65;
      break;
    default:
      return result;
  }

  return result;
}

void UseDeviceAssistantTool.invocation.getter(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1[6];
  v4 = v8[7];
  v5 = v8[8];
  v6 = v8[9];
  v7 = v8[10];
  outlined copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v3, v4, v5, v6, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

uint64_t one-time initialization function for schema()
{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static EmergencyServicesInvocation.schema);
  __swift_project_value_buffer(v0, static EmergencyServicesInvocation.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_24FE1B550;
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static UseDeviceAssistantTool.UseDeviceAssistantInvocation.schema);
  __swift_project_value_buffer(v0, static UseDeviceAssistantTool.UseDeviceAssistantInvocation.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_24FE1B550;
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

{
  v0 = type metadata accessor for Schema();
  __swift_allocate_value_buffer(v0, static ModelResponse.schema);
  __swift_project_value_buffer(v0, static ModelResponse.schema);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation6SchemaV5FieldVGMR);
  type metadata accessor for Schema.Field();
  *(swift_allocObject() + 16) = xmmword_24FE1B550;
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EmergencyServicesInvocation.EmergencyService(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EmergencyServicesInvocation.EmergencyService.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EmergencyServicesInvocation.EmergencyService()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  EmergencyServicesInvocation.EmergencyService.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EmergencyServicesInvocation.EmergencyService(uint64_t a1)
{
  EmergencyServicesInvocation.EmergencyService.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EmergencyServicesInvocation.EmergencyService(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  EmergencyServicesInvocation.EmergencyService.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EmergencyServicesInvocation.EmergencyService@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized EmergencyServicesInvocation.EmergencyService.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EmergencyServicesInvocation.EmergencyService@<X0>(unint64_t *a1@<X8>)
{
  result = EmergencyServicesInvocation.EmergencyService.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance EmergencyServicesInvocation.EmergencyService(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  v5 = lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();

  return MEMORY[0x2821662E8](a1, a2, v4, v5);
}

uint64_t protocol witness for Generable.init(from:) in conformance EmergencyServicesInvocation.EmergencyService(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  return CaseIterable<>.init(from:)();
}

uint64_t protocol witness for Generable.init(from:) in conformance EmergencyServicesInvocation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService();
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    v6 = type metadata accessor for GeneratedValues();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    *a2 = v8;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
  }

  return result;
}

uint64_t key path getter for CallEmergencyServicesTool.invocation : CallEmergencyServicesTool@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 48);
  *(a2 + 16) = v4;
}

uint64_t key path setter for CallEmergencyServicesTool.invocation : CallEmergencyServicesTool(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CallEmergencyServicesTool.invoke(arguments:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](CallEmergencyServicesTool.invoke(arguments:), 0, 0);
}

uint64_t CallEmergencyServicesTool.invoke(arguments:)()
{
  v20 = v0;
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    v9 = EmergencyServicesInvocation.EmergencyService.rawValue.getter(v6);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v19);
    _os_log_impl(&dword_24FD67000, v2, v3, "ACME invoked call_emergency_services tool with situation '%s', rationale: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = *(v0 + 24);
  v15 = *(v0 + 48);
  swift_getKeyPath();
  v16 = swift_task_alloc();
  v16[2] = v12;
  v16[3] = v15;
  v16[4] = v14;
  v16[5] = v13;
  *(v0 + 16) = v12;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v17 = *(v0 + 8);

  return v17(1701736292, 0xE400000000000000);
}

uint64_t CallEmergencyServicesTool.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions25CallEmergencyServicesTool___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for CallEmergencyServicesTool(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t protocol witness for Tooling.invoke(arguments:) in conformance CallEmergencyServicesTool(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Tooling.invoke(arguments:) in conformance CallEmergencyServicesTool;

  return CallEmergencyServicesTool.invoke(arguments:)(v5, v3, v4);
}

{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for Tooling.invoke(arguments:) in conformance CallEmergencyServicesTool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of ContentLoaderProviding.load();

  return MEMORY[0x2821661B8](a1, a2, a3, a4);
}

uint64_t protocol witness for DynamicArgumentsTooling.argumentsSchema.getter in conformance CallEmergencyServicesTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);

  return MEMORY[0x2821661B0](a1, v2);
}

uint64_t protocol witness for DynamicArgumentsTooling.invoke(arguments:) in conformance CallEmergencyServicesTool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type CallEmergencyServicesTool and conformance CallEmergencyServicesTool, type metadata accessor for CallEmergencyServicesTool, &protocol conformance descriptor for CallEmergencyServicesTool);
  *v7 = v3;
  v7[1] = dispatch thunk of ContentLoaderProviding.load();

  return MEMORY[0x2821661C0](a1, a2, a3, v8);
}

uint64_t protocol witness for static Generable.schema.getter in conformance EmergencyServicesInvocation@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Schema();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double protocol witness for Generable.init(from:) in conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  specialized UseDeviceAssistantTool.UseDeviceAssistantInvocation.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void key path getter for UseDeviceAssistantTool.invocation : UseDeviceAssistantTool(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3[10];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  outlined copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v4, v5, v6, v7, v8);
}

uint64_t key path setter for UseDeviceAssistantTool.invocation : UseDeviceAssistantTool(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void closure #1 in UseDeviceAssistantTool.invocation.setter(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  v7 = *(a2 + 16);
  *(a1 + 3) = *a2;
  *(a1 + 4) = v7;
  a1[10] = *(a2 + 32);
  outlined init with copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(a2, v8);
  outlined consume of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v2, v3, v4, v5, v6);
}

uint64_t UseDeviceAssistantTool.generativeTask.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for UseDeviceAssistantTool.generativeTask : UseDeviceAssistantTool@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
}

uint64_t key path setter for UseDeviceAssistantTool.generativeTask : UseDeviceAssistantTool(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in UseDeviceAssistantTool.generativeTask.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = a2;
}

uint64_t UseDeviceAssistantTool.invoke(arguments:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  *(v2 + 112) = *a1;
  *(v2 + 80) = *(a1 + 8);
  *(v2 + 88) = *(a1 + 16);
  *(v2 + 104) = *(a1 + 32);
  return MEMORY[0x2822009F8](UseDeviceAssistantTool.invoke(arguments:), 0, 0);
}

uint64_t UseDeviceAssistantTool.invoke(arguments:)()
{
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.modelInteraction);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24FD67000, v2, v3, "ACME invoked alternative_executor_required tool", v4, 2u);
    MEMORY[0x253057F40](v4, -1, -1);
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v21 = *(v0 + 80);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);

  *(v0 + 16) = v7 & 1;
  *(v0 + 24) = v21;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0 + 16;
  *(v0 + 56) = v8;
  lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  *(v0 + 56) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 88);
  if (v10 && (**(v0 + 64) & 1) != 0)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24FD67000, v11, v12, "cancelling task", v13, 2u);
      MEMORY[0x253057F40](v13, -1, -1);
    }

    v14 = type metadata accessor for ModelResponse(0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x2530571A0](v10, v14, v15, MEMORY[0x277D84950]);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = swift_task_isCancelled() & 1;

      _os_log_impl(&dword_24FD67000, v16, v17, "checking cancelled task: %{BOOL}d", v18, 8u);
      MEMORY[0x253057F40](v18, -1, -1);
    }

    else
    {
    }
  }

  v19 = *(v0 + 8);

  return v19(1701736292, 0xE400000000000000);
}

uint64_t UseDeviceAssistantTool.__deallocating_deinit()
{

  outlined consume of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(v0[6], v0[7], v0[8], v0[9], v0[10]);

  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions22UseDeviceAssistantTool___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallEmergencyServicesTool(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UseDeviceAssistantTool(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for UseDeviceAssistantTool.UseDeviceAssistantInvocation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UseDeviceAssistantTool.UseDeviceAssistantInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for EmergencyServicesInvocation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyServicesInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation()
{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation and conformance EmergencyServicesInvocation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation()
{
  result = lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation;
  if (!lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation;
  if (!lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseDeviceAssistantTool.UseDeviceAssistantInvocation and conformance UseDeviceAssistantTool.UseDeviceAssistantInvocation);
  }

  return result;
}

uint64_t protocol witness for Tooling.invoke(arguments:) in conformance UseDeviceAssistantTool(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 56) = a1;
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Tooling.invoke(arguments:) in conformance UseDeviceAssistantTool;

  return UseDeviceAssistantTool.invoke(arguments:)(v2 + 16);
}

{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 56);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t _s26GenerativeAssistantActions25CallEmergencyServicesToolC0A19FunctionsFoundation23DynamicArgumentsToolingAadEP4nameSSvgTW_0()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t _s26GenerativeAssistantActions25CallEmergencyServicesToolC0A19FunctionsFoundation23DynamicArgumentsToolingAadEP16usageDescriptionSSvgTW_0()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t protocol witness for DynamicArgumentsTooling.argumentsSchema.getter in conformance UseDeviceAssistantTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);

  return MEMORY[0x2821661B0](a1, v2);
}

uint64_t protocol witness for DynamicArgumentsTooling.invoke(arguments:) in conformance UseDeviceAssistantTool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(&lazy protocol witness table cache variable for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool, type metadata accessor for UseDeviceAssistantTool, &protocol conformance descriptor for UseDeviceAssistantTool);
  *v7 = v3;
  v7[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return MEMORY[0x2821661C0](a1, a2, a3, v8);
}

uint64_t lazy protocol witness table accessor for type UseDeviceAssistantTool and conformance UseDeviceAssistantTool(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in CallEmergencyServicesTool.invocation.setter()
{
  return partial apply for closure #1 in CallEmergencyServicesTool.invocation.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 64) = v2;
}

uint64_t _s26GenerativeAssistantActions09UseDeviceB4ToolC14generativeTask024_3420544834CA19FBE7B19D9L7B89C959LLScTyAA13ModelResponseVs5Error_pGSgvsyyXEfU_TA_0()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t outlined init with copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions09UseDeviceB4ToolC0deB10InvocationVSgMd, &_s26GenerativeAssistantActions09UseDeviceB4ToolC0deB10InvocationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

void outlined copy of UseDeviceAssistantTool.UseDeviceAssistantInvocation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

unint64_t specialized EmergencyServicesInvocation.EmergencyService.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized UseDeviceAssistantTool.UseDeviceAssistantInvocation.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    GeneratedValues.extract<A>(field:)();
    v6 = type metadata accessor for GeneratedValues();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    *a2 = v8;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService()
{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService;
  if (!lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyServicesInvocation.EmergencyService and conformance EmergencyServicesInvocation.EmergencyService);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyServicesInvocation.EmergencyService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyServicesInvocation.EmergencyService(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [EmergencyServicesInvocation.EmergencyService] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [EmergencyServicesInvocation.EmergencyService] and conformance [A];
  if (!lazy protocol witness table cache variable for type [EmergencyServicesInvocation.EmergencyService] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeAssistantActions27EmergencyServicesInvocationV0D7ServiceOGMd, &_sSay26GenerativeAssistantActions27EmergencyServicesInvocationV0D7ServiceOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [EmergencyServicesInvocation.EmergencyService] and conformance [A]);
  }

  return result;
}

id specialized ManagedConfigurationProvider.isAllowScreenshotEnabledInProfile.getter()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  [result invalidateRestrictionCache];

  result = [v0 sharedConnection];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isScreenShotAllowed];

  if (one-time initialization token for managedConfiguration != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.managedConfiguration);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315650;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000024FE1CDA0, &v10);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000024FE35B10, &v10);
    *(v8 + 22) = 1024;
    *(v8 + 24) = v4;
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s isScreenshotAllowed: %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  return v4;
}

uint64_t RunningBoardAssertion.__deallocating_deinit()
{
  RunningBoardAssertion.release()();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RunningBoardAssertion.release()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = one-time initialization token for runningBoard;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.runningBoard);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24FD67000, v6, v7, "Invalidating RBS assertion.", v8, 2u);
      MEMORY[0x253057F40](v8, -1, -1);
    }

    [v4 invalidate];
    v9 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

GenerativeAssistantActions::Attribution __swiftcall Attribution.init(displayUrl:url:)(Swift::String displayUrl, Swift::String url)
{
  *v2 = displayUrl;
  v2[1] = url;
  result.url = url;
  result.displayUrl = displayUrl;
  return result;
}

uint64_t static GeneratedResponse.failureResponse(_:partnerName:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v60 = a4;
  v5 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v72 = *(v5 - 8);
  v73 = v72;
  v74 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v59 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = (&v56 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v56 - v16);
  v18 = type metadata accessor for GeneratedResponse(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v68 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v56 - v22;
  v23 = *a1;
  v64 = *a1;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v76[0]) = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v76, 0, v24);
  countAndFlagsBits = v25._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v26 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v72 = *(v72 + 72);
  v27 = swift_allocObject();
  v73 = v27;
  *(v27 + 16) = xmmword_24FE1A560;
  v57 = v26;
  v28 = (v27 + v26);
  *v28 = v25;
  object = v25._object;
  v70 = v28;
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(v69, 1, 1, v29);
  v63 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v76[3] = v63;
  v76[4] = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v30 = v68;
  v31 = &v68[v19[16]];
  v75 = 49;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v33 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v75, 0, v32);

  *v31 = v33;
  v34 = object;
  v35 = v69;
  *v30 = countAndFlagsBits;
  *(v30 + 8) = v34;
  *(v30 + 16) = v73;
  v36 = MEMORY[0x277D84F90];
  *(v30 + 24) = MEMORY[0x277D84F90];
  *(v30 + 32) = v64;
  *(v30 + 40) = v36;
  *(v30 + 48) = v36;
  *(v30 + v19[17]) = v36;
  *(v30 + v19[14]) = 1;
  v37 = (v30 + v19[15]);
  v38 = v66;
  *v37 = v65;
  v37[1] = v38;
  outlined init with copy of URL?(v35, v30 + v19[12]);
  v39 = (v30 + v19[13]);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  *(v30 + v19[18]) = 0;
  *(v30 + v19[19]) = 0;
  v40 = (v30 + v19[20]);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v41 = (v30 + v19[21]);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v76, v30 + v19[23]);
  *(v30 + v19[22]) = xmmword_24FE1AE00;

  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_16:
    outlined destroy of OnScreenContent.Document?(v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_18:
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v30, v60, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v76);
    return _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v30, type metadata accessor for GeneratedResponse);
  }

  v42._countAndFlagsBits = countAndFlagsBits;
  v42._object = v34;
  v43 = GeneratedResponse.updateText(_:)(v42);

  v65 = v43._object;
  v66 = v43._countAndFlagsBits;
  *v30 = v43;
  v44 = (v58 + 56);
  v45 = (v58 + 48);
  v35 = *(v73 + 16);

  v47 = 0;
  countAndFlagsBits = result;
  while (v47 == v35)
  {
    v48 = 1;
    v47 = v35;
LABEL_8:
    (*v44)(v15, v48, 1, v10);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v15, v17, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v45)(v17, 1, v10) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v30 = v68;
      goto LABEL_18;
    }

    v30 = *v17;
    outlined init with take of GeneratedResponse.RichContentEntity(v17 + *(v10 + 48), v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v9, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v53 = v59;
      v54 = v65;
      *v59 = v66;
      v53[1] = v54;
      swift_storeEnumTagMultiPayload();

      v55 = countAndFlagsBits;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
        v55 = result;
        if ((v30 & 0x8000000000000000) != 0)
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      if (v30 >= v55[2])
      {
        goto LABEL_21;
      }

      result = outlined assign with take of GeneratedResponse.RichContentEntity(v59, v55 + v57 + v30 * v72);
      countAndFlagsBits = v55;
      *(v68 + 2) = v55;
    }
  }

  if ((v47 & 0x8000000000000000) == 0)
  {
    if (v47 >= *(v73 + 16))
    {
      goto LABEL_20;
    }

    v49 = v71;
    v50 = v70 + v47 * v72;
    v51 = *(v10 + 48);
    *v71 = v47;
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v50, v49 + v51, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v49, v15, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v48 = 0;
    ++v47;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static GeneratedResponse.dismissSiriUIResponse(partnerName:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v58 = a3;
  v3 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v68 = *(v3 - 8);
  v4 = v68;
  v5 = MEMORY[0x28223BE20](v3);
  v57 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = (&v54 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v54 - v15);
  v17 = type metadata accessor for GeneratedResponse(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v54 - v22;
  v63 = &v54 - v22;
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v25 = *(v4 + 72);
  v26 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v66 = v25;
  v27 = swift_allocObject();
  v67 = v27;
  v68 = v3;
  *(v27 + 16) = xmmword_24FE1A560;
  v55 = v26;
  v28 = (v27 + v26);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v64 = v28;
  swift_storeEnumTagMultiPayload();
  countAndFlagsBits = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v70[3] = countAndFlagsBits;
  v70[4] = MEMORY[0x277D0D628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v29 = (v20 + v18[16]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v69 = 49;
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v31 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v69, 0, v30);
  v32 = v63;

  *v29 = v31;
  v33 = v67;
  *v20 = 0;
  *(v20 + 8) = 0xE000000000000000;
  *(v20 + 16) = v33;
  *(v20 + 24) = &outlined read-only object #0 of static GeneratedResponse.dismissSiriUIResponse(partnerName:);
  *(v20 + 32) = 64;
  v34 = MEMORY[0x277D84F90];
  *(v20 + 40) = MEMORY[0x277D84F90];
  *(v20 + 48) = v34;
  *(v20 + v18[17]) = v34;
  *(v20 + v18[14]) = 2;
  v35 = (v20 + v18[15]);
  v36 = v62;
  *v35 = v61;
  v35[1] = v36;
  outlined init with copy of URL?(v32, v20 + v18[12]);
  v37 = (v20 + v18[13]);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  *(v20 + v18[18]) = 0;
  *(v20 + v18[19]) = 0;
  v38 = (v20 + v18[20]);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = (v20 + v18[21]);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v70, v20 + v18[23]);
  *(v20 + v18[22]) = xmmword_24FE1AE00;

  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_16:
    outlined destroy of OnScreenContent.Document?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_18:
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v20, v58, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v70);
    return _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v20, type metadata accessor for GeneratedResponse);
  }

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v41 = GeneratedResponse.updateText(_:)(v40);
  boxed_opaque_existential_1 = v41._object;
  countAndFlagsBits = v41._countAndFlagsBits;
  *v20 = v41;
  v62 = v20;
  v42 = *(v33 + 16);
  v43 = (v56 + 56);
  v44 = (v56 + 48);

  v20 = 0;
  v61 = v33;
  while (v20 == v42)
  {
    v46 = 1;
    v20 = v42;
LABEL_8:
    (*v43)(v14, v46, 1, v9);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v14, v16, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v44)(v16, 1, v9) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v20 = v62;
      goto LABEL_18;
    }

    v32 = *v16;
    outlined init with take of GeneratedResponse.RichContentEntity(v16 + *(v9 + 48), v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(v8, type metadata accessor for GeneratedResponse.RichContentEntity);
    if (!EnumCaseMultiPayload)
    {
      v51 = v57;
      v52 = boxed_opaque_existential_1;
      *v57 = countAndFlagsBits;
      v51[1] = v52;
      swift_storeEnumTagMultiPayload();

      v53 = v61;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
        v53 = result;
        if ((v32 & 0x8000000000000000) != 0)
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      if (v32 >= v53[2])
      {
        goto LABEL_21;
      }

      result = outlined assign with take of GeneratedResponse.RichContentEntity(v57, v53 + v55 + v32 * v66);
      v61 = v53;
      *(v62 + 2) = v53;
    }
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    if (v20 >= *(v67 + 16))
    {
      goto LABEL_20;
    }

    v47 = v65;
    v48 = v64 + v20 * v66;
    v49 = *(v9 + 48);
    *v65 = v20;
    _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(v48, v47 + v49, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v47, v14, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v46 = 0;
    ++v20;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int GeneratedResponse.Outcome.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253057730](v1);
  return Hasher._finalize()();
}

uint64_t GeneratedResponse.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GeneratedResponse.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeneratedResponse.value.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t GeneratedResponse.punchOutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GeneratedResponse(0) + 40);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t GeneratedResponse.summary.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedResponse(0) + 44));

  return v1;
}

uint64_t GeneratedResponse.outcome.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GeneratedResponse(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t GeneratedResponse.partnerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedResponse(0) + 52));

  return v1;
}

uint64_t GeneratedResponse.contentDisclaimer.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedResponse(0) + 56));

  return v1;
}

uint64_t GeneratedResponse.criticalDisclaimers.getter()
{
  type metadata accessor for GeneratedResponse(0);
}

uint64_t GeneratedResponse.modifiedUserRequest.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedResponse(0) + 72));

  return v1;
}

uint64_t GeneratedResponse.contentReferenceOverride.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedResponse(0) + 76));

  return v1;
}

uint64_t GeneratedResponse.visualIntelligenceImage.getter()
{
  v1 = v0 + *(type metadata accessor for GeneratedResponse(0) + 80);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

Swift::String __swiftcall GeneratedResponse.updateText(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v145 = *MEMORY[0x277D85DE8];
  v128 = type metadata accessor for CharacterSet();
  v121 = *(v128 - 8);
  v3 = MEMORY[0x28223BE20](v128);
  v123 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v127 = &v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v121 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd, &_s17_StringProcessing5RegexV5MatchVySs_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v121 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  *&v125 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v121 - v14;
  v140 = countAndFlagsBits;
  v141 = object;

  Regex.init(_regexString:version:)();
  v132 = countAndFlagsBits;
  p_isa = &object->isa;
  *&v142 = countAndFlagsBits;
  *(&v142 + 1) = object;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>, &_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR, MEMORY[0x277D85AC0]);
  v124 = v15;
  v126 = v13;
  v16 = BidirectionalCollection<>.matches<A, B>(of:)();
  v17 = v16[2];
  v122 = v16;
  if (v17)
  {
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v129 = *(v18 + 56);
    v130 = v19;
    v131 = v18;
    v21 = (v18 - 8);
    v134 = MEMORY[0x277D84F90];
    v19(v12, v20, v9);
    while (1)
    {
      v138 = v132;
      v139 = p_isa;
      swift_getKeyPath();
      Regex.Match.subscript.getter();

      (*v21)(v12, v9);
      v135 = v142;
      v136 = v143;
      v137 = v144;
      v24 = type metadata accessor for Locale();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v25 = StringProtocol.range<A>(of:options:range:locale:)();
      v27 = v26;
      v29 = v28;
      outlined destroy of OnScreenContent.Document?(v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if ((v29 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 2) + 1, 1, v134);
        }

        v31 = *(v134 + 2);
        v30 = *(v134 + 3);
        if (v31 >= v30 >> 1)
        {
          v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v134);
        }

        v22 = v134;
        *(v134 + 2) = v31 + 1;
        v23 = &v22[16 * v31];
        *(v23 + 4) = v25;
        *(v23 + 5) = v27;
      }

      v20 += v129;
      if (!--v17)
      {
        break;
      }

      v130(v12, v20, v9);
    }
  }

  else
  {
    v134 = MEMORY[0x277D84F90];
  }

  (*(v125 + 8))(v124, v126);

  v32 = objc_allocWithZone(MEMORY[0x277CCA948]);
  *&v142 = 0;
  v33 = [v32 initWithTypes:2064 error:&v142];
  if (v33)
  {
    v34 = v33;
    v35 = v142;
    v37 = v132;
    v36 = p_isa;
    v38 = MEMORY[0x253056EA0](v132, p_isa);
    v39 = MEMORY[0x253057010](v37, v36);
    v122 = v34;
    v40 = [v34 matchesInString:v38 options:0 range:{0, v39}];

    type metadata accessor for NSTextCheckingResult();
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v134;
    v43 = GeneratedResponse.removeMatchesOverlapWithLinks(_:_:_:)(v41, v134);

    if (v43 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253057520](v117))
    {
      v46 = v43 & 0xC000000000000001;
      p_isa = (v43 + 32);
      v134 = (v43 & 0xFFFFFFFFFFFFFF8);
      v124 = *MEMORY[0x277CCA6E8];
      v126 = (v121 + 8);
      v47 = &unk_279699000;
      *&v44 = 136315394;
      v125 = v44;
      v48 = &unk_279699000;
      v129 = v43;
      v132 = v43 & 0xC000000000000001;
      while (1)
      {
        if (__OFSUB__(i--, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v46)
        {
          v50 = MEMORY[0x2530574C0](i, v43);
          goto LABEL_24;
        }

        if ((i & 0x8000000000000000) != 0)
        {
          break;
        }

        if (i >= *(v134 + 2))
        {
          goto LABEL_56;
        }

        v50 = p_isa[i];
LABEL_24:
        v51 = v50;
        v52 = [v50 v47[148]];
        if (v52 == 16)
        {
          v68 = [v51 addressComponents];
          if (v68)
          {
            v42 = v68;
            type metadata accessor for NSTextCheckingKey(0);
            v41 = lazy protocol witness table accessor for type NSTextCheckingKey and conformance NSTextCheckingKey();
            v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v69 + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(v124), v42 = v70, , (v42 & 1) != 0))
            {
              if (one-time initialization token for genFromTextController != -1)
              {
                swift_once();
              }

              v71 = type metadata accessor for Logger();
              __swift_project_value_buffer(v71, static Logger.genFromTextController);
              v72 = v51;

              v73 = Logger.logObject.getter();
              v74 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v73, v74))
              {
                v75 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                *&v142 = v76;
                *v75 = v125;
                v77 = Dictionary.description.getter();
                v79 = v78;

                v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v142);

                *(v75 + 4) = v80;
                *(v75 + 12) = 2080;
                v48 = &unk_279699000;
                [v72 range];
                v81 = _NSRange.description.getter();
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v142);

                *(v75 + 14) = v83;
                _os_log_impl(&dword_24FD67000, v73, v74, "address: %s range: %s", v75, 0x16u);
                swift_arrayDestroy();
                v84 = v76;
                v47 = &unk_279699000;
                MEMORY[0x253057F40](v84, -1, -1);
                MEMORY[0x253057F40](v75, -1, -1);
              }

              else
              {

                v48 = &unk_279699000;
              }

              [v72 range];
              v41 = v140;
              v42 = v141;
              Range<>.init(_:in:)();
              if (v100)
              {

                v43 = v129;
                v46 = v132;
              }

              else
              {
                v101 = String.subscript.getter();
                v102 = MEMORY[0x253056F50](v101);
                v104 = v103;

                *&v142 = v102;
                *(&v142 + 1) = v104;
                v105 = v127;
                static CharacterSet.urlQueryAllowed.getter();
                lazy protocol witness table accessor for type String and conformance String();
                v106 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
                v108 = v107;
                (*v126)(v105, v128);
                if (!v108)
                {

                  v106 = v102;
                  v108 = v104;
                }

                v43 = v129;
                *&v142 = 0;
                *(&v142 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(18);

                *&v142 = 91;
                *(&v142 + 1) = 0xE100000000000000;
                MEMORY[0x253056FE0](v102, v104);

                MEMORY[0x253056FE0](0x2F3A7370616D285DLL, 0xEC0000003D713F2FLL);
                MEMORY[0x253056FE0](v106, v108);

                MEMORY[0x253056FE0](41, 0xE100000000000000);
                v41 = *(&v142 + 1);
                lazy protocol witness table accessor for type String and conformance String();
                v42 = &v140;
                String.replaceSubrange<A>(_:with:)();

                v46 = v132;
                v47 = &unk_279699000;
                v48 = &unk_279699000;
              }
            }

            else
            {

              v48 = &unk_279699000;
            }

            goto LABEL_17;
          }
        }

        else if (v52 == 2048)
        {
          v53 = [v51 phoneNumber];
          if (v53)
          {
            v54 = v53;
            v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            if (one-time initialization token for genFromTextController != -1)
            {
              swift_once();
            }

            v58 = type metadata accessor for Logger();
            __swift_project_value_buffer(v58, static Logger.genFromTextController);

            v59 = v51;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *&v142 = v63;
              *v62 = v125;
              v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v142);

              *(v62 + 4) = v64;
              *(v62 + 12) = 2080;
              [v59 v48[150]];
              v65 = _NSRange.description.getter();
              v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v142);

              *(v62 + 14) = v67;
              _os_log_impl(&dword_24FD67000, v60, v61, "Phone Number: %s  range: %s", v62, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x253057F40](v63, -1, -1);
              MEMORY[0x253057F40](v62, -1, -1);
            }

            else
            {
            }

            [v59 v48[150]];
            v41 = v140;
            v42 = v141;
            v85 = Range<>.init(_:in:)();
            if ((v87 & 1) == 0)
            {
              v130 = v86;
              v131 = v85;
              v88 = String.subscript.getter();
              v89 = MEMORY[0x253056F50](v88);
              v91 = v90;

              *&v142 = v89;
              *(&v142 + 1) = v91;
              v92 = v127;
              static CharacterSet.decimalDigits.getter();
              v93 = v123;
              CharacterSet.inverted.getter();
              v94 = *v126;
              v95 = v128;
              (*v126)(v92, v128);
              lazy protocol witness table accessor for type String and conformance String();
              v96 = StringProtocol.components(separatedBy:)();
              v94(v93, v95);
              v48 = &unk_279699000;
              *&v142 = v96;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
              v97 = BidirectionalCollection<>.joined(separator:)();
              v99 = v98;

              *&v142 = 91;
              *(&v142 + 1) = 0xE100000000000000;
              MEMORY[0x253056FE0](v89, v91);

              MEMORY[0x253056FE0](0x3A6C6574285DLL, 0xE600000000000000);
              MEMORY[0x253056FE0](v97, v99);
              v43 = v129;

              MEMORY[0x253056FE0](41, 0xE100000000000000);
              v41 = *(&v142 + 1);
              lazy protocol witness table accessor for type String and conformance String();
              v42 = &v140;
              String.replaceSubrange<A>(_:with:)();
            }

            v46 = v132;
            v47 = &unk_279699000;
            goto LABEL_17;
          }
        }

LABEL_17:
        if (!i)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      if (v43 < 0)
      {
        v117 = v43;
      }

      else
      {
        v117 = v43 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_61:
  }

  else
  {
    v109 = v142;
    v41 = _convertNSErrorToError(_:)();

    swift_willThrow();

    if (one-time initialization token for genFromTextController != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, static Logger.genFromTextController);
    v111 = v41;
    v42 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v113 = 138412290;
      v115 = v41;
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 4) = v116;
      *v114 = v116;
      _os_log_impl(&dword_24FD67000, v42, v112, "Failed to create data detector: %@", v113, 0xCu);
      outlined destroy of OnScreenContent.Document?(v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v114, -1, -1);
      MEMORY[0x253057F40](v113, -1, -1);
    }

    else
    {
LABEL_54:
    }
  }

  v118 = v140;
  v119 = v141;
  result._object = v119;
  result._countAndFlagsBits = v118;
  return result;
}

char *GeneratedResponse.getBreadCrumbAttributions(_:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v2);
  v4 = *(a1 + 16);
  v75 = a1;
  v5 = 0;
  if (v4)
  {
    v6 = (a1 + 56);
    v7 = *(a1 + 16);
    v82 = v4;
    do
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *v6;
      v84 = *(v6 - 1);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v5, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      v14 = *(v3 + 16);
      v15 = (v12 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_62;
      }

      v17 = v12;
      if (*(v3 + 24) >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v12 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v17 & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_67;
        }

        v13 = v18;
        if ((v17 & 1) == 0)
        {
LABEL_12:
          *(v3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
          v20 = (*(v3 + 48) + 16 * v13);
          *v20 = v9;
          v20[1] = v8;
          *(*(v3 + 56) + 8 * v13) = MEMORY[0x277D84F90];
          v21 = *(v3 + 16);
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_63;
          }

          *(v3 + 16) = v23;
          goto LABEL_14;
        }
      }

LABEL_14:
      v24 = *(v3 + 56);
      v25 = *(v24 + 8 * v13);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v13) = v25;
      if ((v26 & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v13) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v13) = v25;
      }

      v4 = v82;
      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v84;
      *(v29 + 5) = v10;

      v6 += 4;
      v5 = specialized thunk for @callee_guaranteed () -> (@owned [String]);
      --v7;
    }

    while (v7);
  }

  v30 = v3 + 64;
  v31 = 1 << *(v3 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v3 + 64);
  v76 = (v31 + 63) >> 6;

  v34 = 0;
  v79 = v5;
  v80 = v3;
LABEL_23:
  if (v33)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v76)
    {

      if (v4)
      {
        v56 = (v75 + 56);
        v57 = MEMORY[0x277D84F90];
        v58 = v83;
        do
        {
          v62 = *(v56 - 3);
          v61 = *(v56 - 2);
          v64 = *(v56 - 1);
          v63 = *v56;
          v65 = v58[2];

          if (v65 && (, v66 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v63), v68 = v67, , (v68 & 1) != 0))
          {
            v69 = (v58[7] + 16 * v66);
            v62 = *v69;
            v59 = v69[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
            }

            v71 = *(v57 + 2);
            v70 = *(v57 + 3);
            v72 = v71 + 1;
            if (v71 >= v70 >> 1)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v57);
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
            }

            v71 = *(v57 + 2);
            v73 = *(v57 + 3);
            v72 = v71 + 1;
            if (v71 >= v73 >> 1)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v71 + 1, 1, v57);
            }

            v59 = v61;
          }

          *(v57 + 2) = v72;
          v60 = &v57[32 * v71];
          *(v60 + 4) = v62;
          *(v60 + 5) = v59;
          *(v60 + 6) = v64;
          *(v60 + 7) = v63;
          v56 += 4;
          --v4;
          v58 = v83;
        }

        while (v4);

        v5 = v79;
      }

      else
      {

        v57 = MEMORY[0x277D84F90];
      }

      _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v5, 0);
      return v57;
    }

    v33 = *(v30 + 8 * v37);
    ++v34;
    if (v33)
    {
      v34 = v37;
LABEL_22:
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v36 = *(*(*(v3 + 56) + ((v34 << 9) | (8 * v35))) + 16);
      if (v36 < 2)
      {
        goto LABEL_23;
      }

      v39 = 0;
      v40 = (v38 + 40);
      v77 = v36;
      v78 = v38;
      while (2)
      {
        if (v39 >= *(v38 + 16))
        {
          goto LABEL_64;
        }

        v85 = v39;
        v42 = *(v40 - 1);
        v41 = *v40;
        v81 = v40;

        v43 = String.createBreadcrumbURL(_:)(0);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
        v47 = v83[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_65;
        }

        v50 = v45;
        if (v83[3] >= v49)
        {
          if (v44)
          {
            v3 = v80;
            if ((v45 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v3 = v80;
            if ((v50 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v44);
          v51 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_67;
          }

          v46 = v51;
          v3 = v80;
          if ((v50 & 1) == 0)
          {
LABEL_39:
            v83[(v46 >> 6) + 8] |= 1 << v46;
            v53 = (v83[6] + 16 * v46);
            *v53 = v42;
            v53[1] = v41;
            *(v83[7] + 16 * v46) = v43;
            v54 = v83[2];
            v22 = __OFADD__(v54, 1);
            v55 = v54 + 1;
            if (v22)
            {
              goto LABEL_66;
            }

            v83[2] = v55;
LABEL_30:
            v39 = v85 + 1;
            v40 = v81 + 2;
            v38 = v78;
            v5 = v79;
            if (v77 == v85 + 1)
            {

              goto LABEL_23;
            }

            continue;
          }
        }

        break;
      }

      *(v83[7] + 16 * v46) = v43;

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t GeneratedResponse.removeMatchesOverlapWithLinks(_:_:_:)(unint64_t a1, uint64_t a2)
{
  v19 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253057520](v17))
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530574C0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(a1 + 32 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      [v7 rangeAtIndex_];
      v10 = Range<>.init(_:in:)();
      if (v12)
      {
LABEL_4:

        if (v5 == i)
        {
          return v6;
        }
      }

      else
      {
        v13 = *(a2 + 16);
        if (v13)
        {
          v14 = (a2 + 40);
          while (v10 >> 14 >= *v14 >> 14 || *(v14 - 1) >> 14 >= v11 >> 14)
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_4;
        }

LABEL_19:
        v16 = v8;
        MEMORY[0x253057080]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v6 = v19;
        if (v5 == i)
        {
          return v6;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t Attribution.displayUrl.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Attribution.url.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Attribution.== infix(_:_:)(uint64_t *a1, void *a2)
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

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Attribution.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Attribution.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Attribution()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Attribution(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Attribution(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Attribution(uint64_t *a1, void *a2)
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

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t GeneratedFileContent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GeneratedFileContent.fileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedFileContent(0) + 20));

  return v1;
}

uint64_t GeneratedFileContent.mimeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedFileContent(0) + 24));

  return v1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v23 = v4;
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x6D696D5F656C6966 : 0x5F65746973626577;
      v7 = v5 == 2 ? 0xEE00657079745F65 : 0xEB000000006C7275;
      v8 = *(*(v22 + 48) + v4) ? 0x6D616E5F656C6966 : 0x745F656372756F73;
      v9 = v5 ? 0xE900000000000065 : 0xEB00000000657079;
      v10 = v5 <= 1 ? v8 : v6;
      v11 = v5 <= 1 ? v9 : v7;
      v12 = v21 == 2 ? 0x6D696D5F656C6966 : 0x5F65746973626577;
      v13 = v21 == 2 ? 0xEE00657079745F65 : 0xEB000000006C7275;
      v14 = v21 ? 0x6D616E5F656C6966 : 0x745F656372756F73;
      v15 = v21 ? 0xE900000000000065 : 0xEB00000000657079;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return v23;
      }

      v4 = (v23 + 1) & v20;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v23;
  }

  return v4;
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

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMd, &_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMR);
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMd, &_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _sxRi_zRi0_zlySaySSGIsegr_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome()
{
  result = lazy protocol witness table cache variable for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome;
  if (!lazy protocol witness table cache variable for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribution and conformance Attribution()
{
  result = lazy protocol witness table cache variable for type Attribution and conformance Attribution;
  if (!lazy protocol witness table cache variable for type Attribution and conformance Attribution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribution and conformance Attribution);
  }

  return result;
}

uint64_t sub_24FE02B50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE02C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GeneratedResponse(uint64_t a1)
{
  type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for [GeneratedResponse.RichContentEntity], type metadata accessor for GeneratedResponse.RichContentEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String](319, &lazy cache variable for type metadata for [Attribution], &type metadata for Attribution, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [String](319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for GenerativeAssistantFeatureFlagManaging();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [GeneratedResponse.RichContentEntity](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for GeneratedResponse.RichContentEntity(uint64_t a1)
{
  result = type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeneratedFileContent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
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

uint64_t getEnumTagSinglePayload for Attribution(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Attribution(uint64_t result, int a2, int a3)
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

uint64_t sub_24FE03190(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24FE03264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for GeneratedFileContent(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of GeneratedResponse.RichContentEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  result = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextCheckingResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSTextCheckingKey and conformance NSTextCheckingKey()
{
  result = lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey;
  if (!lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey)
  {
    type metadata accessor for NSTextCheckingKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey);
  }

  return result;
}

Swift::Void __swiftcall IntentCallbackManager.initializeProgress()()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v2 = *(v0 + 7);
  v11 = *(v0 + 6);
  v3 = *(v0 + 8);
  v14 = *(v0 + 72);
  v15 = *(v0 + 88);
  v16 = *(v0 + 104);
  v4 = *(v0 + 15);
  v5 = *(v0 + 16);
  v2();
  v12 = v2;
  v13 = v3;
  v17 = v4;
  v18 = v5;
  v6[0] = v4;
  v6[1] = v5;
  v6[2] = 0;
  v7 = 0;

  IntentCallbackManager.updateIntentProgress(to:)(v6);

  outlined consume of GenerativeAssistantProgressLevel(v4, v5, 0, 0);
}

uint64_t IntentCallbackManager.requestConfirmation(result:confirmationActionName:showPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 40) + **(v3 + 40));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of ContentLoaderProviding.load();

  return v10(a1, a2, a3);
}

void IntentCallbackManager.updateIntentProgress(to:)(uint64_t *a1)
{
  v2 = *(a1 + 24);
  v3 = *(v1 + 72);
  if (*v1)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = *a1;
    outlined copy of GenerativeAssistantProgressLevel(*a1, v4, v5, v2);
    if (v2 <= 2)
    {
      if (v2)
      {
        v7 = 60;
      }

      else
      {
        v7 = 20;
      }

      goto LABEL_14;
    }

    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v7 = 60;
      }

      else
      {
        v7 = 99;
      }

      goto LABEL_14;
    }

    if (v2 == 5)
    {
      v7 = 100;
LABEL_14:
      v8 = v2;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *(v1 + 120);
    v4 = *(v1 + 128);

    v5 = 0;
  }

  v8 = 6;
  v7 = 60;
LABEL_15:
  v9 = GenerativeAssistantProgressLevel.localizedDescription.getter();
  v3(v7, v9, v10);

  if (v2 <= 5 && ((1 << v2) & 0x31) != 0)
  {

    outlined consume of GenerativeAssistantProgressLevel(v6, v4, v5, v8);
  }

  else
  {
    v11 = GenerativeAssistantProgressLevel.localizedDescription.getter();
    v3(v7 - 1, v11, v12);

    v13 = GenerativeAssistantProgressLevel.localizedDescription.getter();
    v15 = v14;
    outlined consume of GenerativeAssistantProgressLevel(v6, v4, v5, v8);
    v3(v7, v13, v15);
  }
}

uint64_t IntentCallbackManager.showJITEnablement()()
{
  v4 = (*(v0 + 88) + **(v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v4();
}

Swift::Void __swiftcall IntentCallbackManager.sendHeartbeatUpdate()()
{
  v1 = v0[5];
  v13 = v0[4];
  v14 = v1;
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = v0[3];
  v11 = v0[2];
  v12 = v3;
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v6 = *(v0 + 14);
  v18 = *(v0 + 120);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v7[0] = v5;
  v7[1] = v6;
  v7[2] = 0;
  v8 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(v7);

  outlined consume of GenerativeAssistantProgressLevel(v5, v6, 0, 3u);
}

uint64_t IntentCallbackManager.requestValue(assistantResponse:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 24) + **(v2 + 24));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);

  return v8(a1, a2);
}

uint64_t IntentCallbackManager.progressDialogWithPartnerName.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t IntentCallbackManager.init(isFirstRequest:partnerName:requestValueCallback:requestConfirmationCallback:initializeIntentProgressCallback:updateIntentProgressCallback:showJITEnablementCallback:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v25 = 3;

  v17 = MEMORY[0x277D84F90];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v19.value._countAndFlagsBits = a2;
  v19.value._object = a3;
  v20 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v25, v19, v18);

  *(a9 + 104) = v20;
  v24 = 3;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v17);
  v22 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v24, 0, v21);

  *(a9 + 120) = v22;
  return result;
}

uint64_t GenerativeAssistantProgressLevel.localizedDescription.getter()
{
  countAndFlagsBits = *v0;
  v2 = *(v0 + 24);
  if (v2 == 2)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v8 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24FE1A560;
    *(inited + 32) = 0xD000000000000027;
    *(inited + 40) = 0x800000024FE35C20;
    v4 = GenerativeAssistantProgressLevel.formatAsLocalizedPercentage(_:)(*&countAndFlagsBits);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    countAndFlagsBits = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v8, 0, v6)._countAndFlagsBits;
  }

  else
  {
    outlined copy of GenerativeAssistantProgressLevel(*v0, *(v0 + 8), *(v0 + 16), v2);
  }

  return countAndFlagsBits;
}

void outlined copy of GenerativeAssistantProgressLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 6u)
  {
  }
}

uint64_t closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 200) = a1;
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  type metadata accessor for MainActor();
  *(v6 + 168) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 176) = v8;
  *(v6 + 184) = v7;

  return MEMORY[0x2822009F8](closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:), v8, v7);
}

uint64_t closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = swift_allocObject();
  v0[24] = v3;
  *(v3 + 16) = *v2;
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 64) = *(v2 + 48);
  *(v3 + 80) = v4;
  *(v3 + 32) = v6;
  *(v3 + 48) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 144) = *(v2 + 128);
  *(v3 + 112) = v8;
  *(v3 + 128) = v7;
  *(v3 + 96) = v9;
  outlined init with copy of IntentCallbackManager(v2, (v0 + 2));

  return MEMORY[0x2822009F8](closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:), v1, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  if (*(v3 + 112) >= v2)
  {
    v2 = *(v3 + 112);
  }

  *(v3 + 112) = v2;
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  *(v3 + 120) = partial apply for closure #1 in closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:);
  *(v3 + 128) = v1;

  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v4, v5);

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);

  return MEMORY[0x2822009F8](closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:), v6, v7);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = LODWORD(a2);
  v5[0] = LODWORD(a2);
  v5[1] = v2;
  v5[2] = v3;
  v6 = 2;

  IntentCallbackManager.updateIntentProgress(to:)(v5);

  outlined consume of GenerativeAssistantProgressLevel(v4, v2, v3, 2u);
}

uint64_t GenerativeAssistantProgressLevel.formatAsLocalizedPercentage(_:)(float a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, _s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = v16 - v12;
  v14 = a1 * 100.0;
  if (COERCE_INT(fabs(a1 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.2234e18)
  {
    v16[1] = v14;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Int and conformance Int();
    IntegerFormatStyle.Percent.init(locale:)();
    static Locale.current.getter();
    MEMORY[0x253055230](v5, v6);
    (*(v3 + 8))(v5, v2);
    v15 = *(v7 + 8);
    v15(v10, v6);
    lazy protocol witness table accessor for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent();
    BinaryInteger.formatted<A>(_:)();
    v15(v13, v6);
    return v16[2];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t UploadProgressUpdateDebouncer.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v5 = type metadata accessor for TaskPriority();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in UploadProgressUpdateDebouncer.init(), v8);

  return v1;
}

uint64_t closure #1 in UploadProgressUpdateDebouncer.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), v8, v7);
}

uint64_t closure #1 in UploadProgressUpdateDebouncer.init()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 168) = Strong;

    return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = *(v0 + 168);
  *(v0 + 60) = *(v1 + 112);
  v2 = *(v1 + 120);
  *(v0 + 176) = v2;
  v3 = *(v1 + 128);
  *(v0 + 184) = v3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Float) -> ())?(v2, v3);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), v4, v5);
}

{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 60);

    v1(v4, v3);
    _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v1, v2);
  }

  v5 = static Duration.seconds(_:)();
  v7 = v6;
  static Clock<>.continuous.getter();
  *(v0 + 64) = v5;
  *(v0 + 72) = v7;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[24] = v5;
  v0[25] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = closure #1 in UploadProgressUpdateDebouncer.init();
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x2822008C8](v8, v0 + 5, v7, v4);
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    (*(v2 + 192))(*(v2 + 112), *(v2 + 88));
    v3 = closure #1 in UploadProgressUpdateDebouncer.init();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 192))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = closure #1 in UploadProgressUpdateDebouncer.init();
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v0[22], v0[23]);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[21] = Strong;

    return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), Strong, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), v1, v2);
}

{
  v1 = v0[22];
  v2 = v0[23];

  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t UploadProgressUpdateDebouncer.__deallocating_deinit()
{
  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentCallbackManager(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IntentCallbackManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t getEnumTagSinglePayload for GenerativeAssistantProgressLevel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantProgressLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_24FE050FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24FE05134()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in UploadProgressUpdateDebouncer.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return closure #1 in UploadProgressUpdateDebouncer.init()(a1, v4, v5, v6);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned Float) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24FE05238()
{

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent()
{
  result = lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent;
  if (!lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, _s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent);
  }

  return result;
}

uint64_t sub_24FE0537C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE0544C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ModelResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModelResponse;
  if (!type metadata singleton initialization cache for ModelResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ModelResponse(uint64_t a1)
{
  type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for [GeneratedResponse.RichContentEntity], type metadata accessor for GeneratedResponse.RichContentEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [Attribution], &type metadata for Attribution, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [String]?(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for [String]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String]?);
    }
  }
}

uint64_t static ModelResponse.emptyModelResponse()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v5 = *(type metadata accessor for GeneratedResponse.RichContentEntity(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v19 = xmmword_24FE1A560;
  *(v7 + 16) = xmmword_24FE1A560;
  v8 = (v7 + v6);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = v19;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0xE000000000000000;
  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 56);
  v11(v4, 1, 1, v10);
  v12 = type metadata accessor for ModelResponse(0);
  v13 = v12[8];
  v11((a1 + v13), 1, 1, v10);
  v14 = v12[9];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  outlined assign with copy of URL?(v4, a1 + v13);
  *(a1 + v14) = &outlined read-only object #0 of static ModelResponse.emptyModelResponse();
  *(a1 + 32) = v9;
  v15 = (a1 + v12[14]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(a1 + v12[10]) = 0;
  *(a1 + v12[11]) = 0;
  v16 = (a1 + v12[12]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  result = outlined destroy of URL?(v4);
  v18 = (a1 + v12[13]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ModelResponseText.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMd, &_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ModelResponseText.CodingKeys()
{
  v1 = 0x7972616D6D7573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelResponseText.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ModelResponseText.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelResponseText.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelResponseText.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ModelResponseText@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized ModelResponseText.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t ModelResponse.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ModelResponse(0);
  v6 = v5[8];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v9 = type metadata accessor for GeneratedValues();
    (*(*(v9 - 8) + 8))(a1, v9);
    return outlined destroy of URL?(a2 + v6);
  }

  else
  {
    v11 = (a2 + v5[14]);
    *v11 = v16;
    v11[1] = v17;
    GeneratedValues.extract<A>(field:)();
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    GeneratedValues.extract<A>(field:)();
    v12 = v5[9];
    *(a2 + 24) = v16;
    *(a2 + 32) = v8;
    *(a2 + v12) = v8;
    *(a2 + v5[10]) = 0;
    *(a2 + v5[11]) = 0;
    v13 = (a2 + v5[12]);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v14 = type metadata accessor for GeneratedValues();
    result = (*(*(v14 - 8) + 8))(a1, v14);
    v15 = (a2 + v5[13]);
    *v15 = 0;
    v15[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance ModelResponse@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for schema != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema();
  v3 = __swift_project_value_buffer(v2, static ModelResponse.schema);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getEnumTagSinglePayload for ModelResponseText(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for ModelResponseText(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t specialized ModelResponseText.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FE35C50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ModelResponseText.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMd, &_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v13;
  v22 = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v16 = v20;
  *v20 = v21;
  v16[1] = v11;
  v17 = v19;
  v16[2] = v12;
  v16[3] = v17;
  *(v16 + 32) = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelResponseText.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelResponseText.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ContentSelectorProviding.select(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v11(a1, a2, a3, a4);
}

uint64_t sub_24FE06A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScreenContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE06B48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScreenContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for SelectedContent(uint64_t a1)
{
  result = type metadata singleton initialization cache for SelectedContent;
  if (!type metadata singleton initialization cache for SelectedContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SelectedContent(uint64_t a1)
{
  type metadata accessor for ScreenContent(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageInfo?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ImageInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImageInfo?)
  {
    type metadata accessor for ImageInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ImageInfo?);
    }
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentSelector(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for ContentSelector(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance ContentSelector.Error()
{
  v0 = static ContentSelector.Error.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._domain.getter in conformance ContentSelector.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ContentSelector.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ContentSelector.select(from:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for SelectedContent(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](ContentSelector.select(from:), 0, 0);
}

uint64_t ContentSelector.select(from:)()
{
  v1 = v0[10];
  v0[7] = MEMORY[0x277D84F90];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[5];
  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = ContentSelector.select(from:);

  return MEMORY[0x282200310](v0 + 8, 0, 0, v8, v6, v7);
}

{

  if (!v0)
  {

    return MEMORY[0x2822009F8](ContentSelector.select(from:), 0, 0);
  }

  return result;
}

{
  v1 = v0[8];
  v0[31] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = ContentSelector.select(from:);
    v3 = v0[16];
    v4 = v1;
    v5 = 4;
LABEL_5:

    return ContentSelector.select(from:priority:)(v3, v4, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v6 = specialized static ContentRanker.rank(contents:)(v0[7]);
  v0[42] = v6;

  if (*(v6 + 16))
  {
    v7 = swift_task_alloc();
    v0[43] = v7;
    *v7 = v0;
    v7[1] = ContentSelector.select(from:);
    v3 = v0[12];
    v4 = v6;
    v5 = 0;
    goto LABEL_5;
  }

  v9 = v0[11];

  __swift_project_boxed_opaque_existential_1((v9 + 48), *(v9 + 72));
  if (ScreenLockChecker.isScreenLocked()())
  {
    lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
    swift_allocError();
    v11 = 10;
  }

  else
  {
    lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();
    swift_allocError();
    v11 = 0;
  }

  *v10 = v11;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = ContentSelector.select(from:);
  }

  else
  {
    v2 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = *(v2 + 48);
  v0[34] = v4;
  v0[35] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1);
  v6 = v0[31];
  if (v5 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v7[1] = ContentSelector.select(from:);
    v8 = v0[15];

    return ContentSelector.select(from:priority:)(v8, v6, 3);
  }

  else
  {
    v10 = v0[29];

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v3, v10, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v11 = v0[28];
    v12 = v0[29];
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v12, v11, type metadata accessor for SelectedContent);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[28];
    if (v16)
    {
      v18 = v0[27];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v26);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v26);
      *(v19 + 22) = 2080;
      outlined init with copy of SelectedContent(v17, v18, type metadata accessor for SelectedContent);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      outlined destroy of SelectedContent(v17, type metadata accessor for SelectedContent);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v26);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_24FD67000, v14, v15, "%s.%s selected highest priority content: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    else
    {

      outlined destroy of SelectedContent(v17, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v0[29], v0[9], type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v25 = v0[1];

    return v25();
  }
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = ContentSelector.select(from:);
  }

  else
  {
    v2 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 120);
  v2 = (*(v0 + 272))(v1, 1, *(v0 + 136));
  v3 = *(v0 + 248);
  if (v2 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = ContentSelector.select(from:);
    v5 = *(v0 + 112);

    return ContentSelector.select(from:priority:)(v5, v3, 2);
  }

  else
  {
    v7 = *(v0 + 208);

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v1, v7, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v9, v8, type metadata accessor for SelectedContent);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 216);
      v14 = *(v0 + 200);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v23);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v23);
      *(v15 + 22) = 2080;
      outlined init with copy of SelectedContent(v14, v13, type metadata accessor for SelectedContent);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      outlined destroy of SelectedContent(v14, type metadata accessor for SelectedContent);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s selected high priority content: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v16, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);
    }

    else
    {
      v21 = *(v0 + 200);

      outlined destroy of SelectedContent(v21, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 208), *(v0 + 72), type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {

    v2 = ContentSelector.select(from:);
  }

  else
  {
    v2 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 112);
  v2 = (*(v0 + 272))(v1, 1, *(v0 + 136));
  v3 = *(v0 + 248);
  if (v2 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = ContentSelector.select(from:);
    v5 = *(v0 + 104);

    return ContentSelector.select(from:priority:)(v5, v3, 1);
  }

  else
  {
    v7 = *(v0 + 192);

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v1, v7, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v9, v8, type metadata accessor for SelectedContent);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 216);
      v14 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v23);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v23);
      *(v15 + 22) = 2080;
      outlined init with copy of SelectedContent(v14, v13, type metadata accessor for SelectedContent);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      outlined destroy of SelectedContent(v14, type metadata accessor for SelectedContent);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s selected medium priority content: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v16, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);
    }

    else
    {
      v21 = *(v0 + 184);

      outlined destroy of SelectedContent(v21, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 192), *(v0 + 72), type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = ContentSelector.select(from:);
  }

  else
  {
    v2 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 104);
  if ((*(v0 + 272))(v1, 1, *(v0 + 136)) == 1)
  {
    v2 = *(v0 + 248);
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    specialized Array.append<A>(contentsOf:)(v2);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = ContentSelector.select(from:);

    return MEMORY[0x282200310](v0 + 64, 0, 0, v5, v3, v4);
  }

  else
  {
    v7 = *(v0 + 176);

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v1, v7, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v9, v8, type metadata accessor for SelectedContent);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 216);
      v14 = *(v0 + 168);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v24);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v24);
      *(v15 + 22) = 2080;
      outlined init with copy of SelectedContent(v14, v13, type metadata accessor for SelectedContent);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      outlined destroy of SelectedContent(v14, type metadata accessor for SelectedContent);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v24);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s selected normal priority content: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v16, -1, -1);
      MEMORY[0x253057F40](v15, -1, -1);
    }

    else
    {
      v21 = *(v0 + 168);

      outlined destroy of SelectedContent(v21, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 176), *(v0 + 72), type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = ContentSelector.select(from:);
  }

  else
  {
    v2 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v20 = v0;
  v1 = v0[12];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();

    v3 = v0[1];
  }

  else
  {
    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v1, v0[20], type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v4 = v0[19];
    v5 = v0[20];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v5, v4, type metadata accessor for SelectedContent);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[27];
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v11 = 136315650;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, v19);
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, v19);
      *(v11 + 22) = 2080;
      outlined init with copy of SelectedContent(v10, v9, type metadata accessor for SelectedContent);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      outlined destroy of SelectedContent(v10, type metadata accessor for SelectedContent);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v19);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s selected content: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v12, -1, -1);
      MEMORY[0x253057F40](v11, -1, -1);
    }

    else
    {
      v17 = v0[19];

      outlined destroy of SelectedContent(v17, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v0[20], v0[9], type metadata accessor for SelectedContent);

    v3 = v0[1];
  }

  return v3();
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

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContentSelector.select(from:priority:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 260) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  *(v4 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v5 = type metadata accessor for ScreenContent(0);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v6 = type metadata accessor for SelectedContent(0);
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR);
  *(v4 + 160) = swift_task_alloc();
  v7 = type metadata accessor for OnScreenContent();
  *(v4 + 168) = v7;
  *(v4 + 176) = *(v7 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](ContentSelector.select(from:priority:), 0, 0);
}

uint64_t ContentSelector.select(from:priority:)()
{
  v49 = v0;
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 176);
    *(v0 + 256) = *(v3 + 80);
    *(v0 + 216) = *(v3 + 72);
    *(v0 + 224) = *(v3 + 16);
    do
    {
      *(v0 + 232) = 0;
      *(v0 + 240) = v2;
      v4 = *(v0 + 260);
      (*(v0 + 224))(*(v0 + 200), *(v0 + 24) + ((*(v0 + 256) + 32) & ~*(v0 + 256)) + *(v0 + 216) * v2, *(v0 + 168));
      if (v4 > ContentSelector.getPriority(content:)())
      {
        (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      }

      else
      {
        if (OnScreenContent.isAppEntity()())
        {
          v42 = *__swift_project_boxed_opaque_existential_1((*(v0 + 32) + 88), *(*(v0 + 32) + 112));
          v43 = swift_task_alloc();
          *(v0 + 248) = v43;
          *v43 = v0;
          v43[1] = ContentSelector.select(from:priority:);
          v44 = *(v0 + 200);
          v45 = *(v0 + 160);

          return EntityConverter.convert(content:)(v45, v44, v42);
        }

        v5 = *(v0 + 184);
        v7 = *(v0 + 72);
        v6 = *(v0 + 80);
        v8 = *(v0 + 64);
        (*(v0 + 224))(v5, *(v0 + 200), *(v0 + 168));
        ScreenContent.init(_:isAppEntity:)(v5, 0, v8);
        v9 = *(v6 + 48);
        if (v9(v8, 1, v7) == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 64), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
          if (one-time initialization token for contentSelector != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          __swift_project_value_buffer(v10, static Logger.contentSelector);
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            v48[0] = v14;
            *v13 = 136315394;
            *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, v48);
            *(v13 + 12) = 2080;
            *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000024FE35DF0, v48);
            _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s ContextRetrievalScreenContent cannot be converted into ScreenContent, returning nil", v13, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x253057F40](v14, -1, -1);
            MEMORY[0x253057F40](v13, -1, -1);
          }

          v15 = 1;
        }

        else
        {
          v16 = *(v0 + 200);
          v17 = *(v0 + 56);
          v18 = *(v0 + 24);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 64), *(v0 + 104), type metadata accessor for ScreenContent);
          ContentSelector.getAssociatedScreenshot(for:in:)(v16, v18, v17);
          v19 = *(v0 + 72);
          v21 = *(v0 + 48);
          v20 = *(v0 + 56);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 104), *(v0 + 96), type metadata accessor for ScreenContent);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v20, v21, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
          if (v9(v21, 1, v19) == 1)
          {
            v22 = *(v0 + 40);
            outlined destroy of OnScreenContent.Document?(*(v0 + 48), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
            v23 = type metadata accessor for ImageInfo(0);
            (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
          }

          else
          {
            outlined init with copy of SelectedContent(*(v0 + 48), *(v0 + 88), type metadata accessor for ScreenContent);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v25 = *(v0 + 88);
            v26 = *(v0 + 40);
            if (EnumCaseMultiPayload == 1)
            {
              v27 = type metadata accessor for ImageInfo(0);
              (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
              outlined destroy of SelectedContent(v25, type metadata accessor for ScreenContent);
            }

            else
            {
              _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 88), *(v0 + 40), type metadata accessor for ImageInfo);
              v28 = type metadata accessor for ImageInfo(0);
              (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
            }

            outlined destroy of SelectedContent(*(v0 + 48), type metadata accessor for ScreenContent);
          }

          v29 = *(v0 + 128);
          v30 = *(v0 + 112);
          v31 = *(v0 + 40);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 96), v30, type metadata accessor for ScreenContent);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v31, v30 + *(v29 + 20), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
          v15 = 0;
        }

        v32 = *(v0 + 200);
        v33 = *(v0 + 168);
        v34 = *(v0 + 176);
        v35 = *(v0 + 128);
        v36 = *(v0 + 136);
        v37 = *(v0 + 112);
        v38 = *(v36 + 56);
        v38(v37, v15, 1, v35);
        (*(v34 + 8))(v32, v33);
        if ((*(v36 + 48))(v37, 1, v35) != 1)
        {
          v46 = *(v0 + 144);
          v47 = *(v0 + 16);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 112), v46, type metadata accessor for SelectedContent);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v46, v47, type metadata accessor for SelectedContent);
          v39 = 0;
          goto LABEL_23;
        }

        outlined destroy of OnScreenContent.Document?(*(v0 + 112), &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
      }

      v2 = *(v0 + 240) + 1;
    }

    while (v2 != *(v0 + 208));
  }

  v38 = *(*(v0 + 136) + 56);
  v39 = 1;
LABEL_23:
  v38(*(v0 + 16), v39, 1, *(v0 + 128));

  v40 = *(v0 + 8);

  return v40();
}

{

  return MEMORY[0x2822009F8](ContentSelector.select(from:priority:), 0, 0);
}

{
  v67 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v2 + 8))(*(v0 + 200), v1);
    outlined destroy of OnScreenContent.Document?(v3, &_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR);
    v4 = *(v0 + 232);
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 192);
    v11 = *(v0 + 120);
    v12 = *(v0 + 24);
    (*(v2 + 32))(v10, v3, v1);
    ContentSelector.getSelectedContent(content:contents:isAppEntity:)(v10, v12, 1, v11);
    if (v9)
    {
      v13 = *(*(v0 + 176) + 8);
      v13(*(v0 + 192), *(v0 + 168));
LABEL_8:
      v13(*(v0 + 200), *(v0 + 168));

      v8 = *(v0 + 8);
      goto LABEL_9;
    }

    v50 = *(v0 + 200);
    v51 = *(v0 + 168);
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);
    v54 = *(v0 + 120);
    v55 = *(*(v0 + 176) + 8);
    v55(*(v0 + 192), v51);
    v55(v50, v51);
    if ((*(v52 + 48))(v54, 1, v53) != 1)
    {
      v56 = *(v0 + 152);
      v57 = *(v0 + 136);
      v58 = *(v0 + 16);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 120), v56, type metadata accessor for SelectedContent);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v56, v58, type metadata accessor for SelectedContent);
      v7 = 0;
      v6 = *(v57 + 56);
      goto LABEL_5;
    }

    outlined destroy of OnScreenContent.Document?(*(v0 + 120), &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v4 = 0;
  }

  v5 = *(v0 + 240) + 1;
  if (v5 == *(v0 + 208))
  {
LABEL_4:
    v6 = *(*(v0 + 136) + 56);
    v7 = 1;
LABEL_5:
    v6(*(v0 + 16), v7, 1, *(v0 + 128));

    v8 = *(v0 + 8);
LABEL_9:

    return v8();
  }

  while (1)
  {
    *(v0 + 232) = v4;
    *(v0 + 240) = v5;
    v15 = *(v0 + 260);
    (*(v0 + 224))(*(v0 + 200), *(v0 + 24) + ((*(v0 + 256) + 32) & ~*(v0 + 256)) + *(v0 + 216) * v5, *(v0 + 168));
    if (v15 > ContentSelector.getPriority(content:)())
    {
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      goto LABEL_14;
    }

    if (OnScreenContent.isAppEntity()())
    {
      break;
    }

    v16 = *(v0 + 184);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    (*(v0 + 224))(v16, *(v0 + 200), *(v0 + 168));
    ScreenContent.init(_:isAppEntity:)(v16, 0, v19);
    v20 = *(v17 + 48);
    if (v20(v19, 1, v18) == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 64), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
      if (one-time initialization token for contentSelector != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.contentSelector);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v66[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, v66);
        *(v24 + 12) = 2080;
        *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000024FE35DF0, v66);
        _os_log_impl(&dword_24FD67000, v22, v23, "%s.%s ContextRetrievalScreenContent cannot be converted into ScreenContent, returning nil", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v25, -1, -1);
        MEMORY[0x253057F40](v24, -1, -1);
      }

      v26 = 1;
    }

    else
    {
      v27 = *(v0 + 200);
      v28 = *(v0 + 56);
      v29 = *(v0 + 24);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 64), *(v0 + 104), type metadata accessor for ScreenContent);
      ContentSelector.getAssociatedScreenshot(for:in:)(v27, v29, v28);
      if (v4)
      {
        v65 = *(v0 + 176);
        outlined destroy of SelectedContent(*(v0 + 104), type metadata accessor for ScreenContent);
        v13 = *(v65 + 8);
        goto LABEL_8;
      }

      v30 = *(v0 + 72);
      v32 = *(v0 + 48);
      v31 = *(v0 + 56);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 104), *(v0 + 96), type metadata accessor for ScreenContent);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v31, v32, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
      if (v20(v32, 1, v30) == 1)
      {
        v33 = *(v0 + 40);
        outlined destroy of OnScreenContent.Document?(*(v0 + 48), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
        v34 = type metadata accessor for ImageInfo(0);
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
      }

      else
      {
        outlined init with copy of SelectedContent(*(v0 + 48), *(v0 + 88), type metadata accessor for ScreenContent);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v36 = *(v0 + 88);
        v37 = *(v0 + 40);
        if (EnumCaseMultiPayload == 1)
        {
          v38 = type metadata accessor for ImageInfo(0);
          (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
          outlined destroy of SelectedContent(v36, type metadata accessor for ScreenContent);
        }

        else
        {
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 88), *(v0 + 40), type metadata accessor for ImageInfo);
          v39 = type metadata accessor for ImageInfo(0);
          (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
        }

        outlined destroy of SelectedContent(*(v0 + 48), type metadata accessor for ScreenContent);
      }

      v40 = *(v0 + 128);
      v41 = *(v0 + 112);
      v42 = *(v0 + 40);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 96), v41, type metadata accessor for ScreenContent);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v42, v41 + *(v40 + 20), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v4 = 0;
      v26 = 0;
    }

    v43 = *(v0 + 200);
    v45 = *(v0 + 168);
    v44 = *(v0 + 176);
    v47 = *(v0 + 128);
    v46 = *(v0 + 136);
    v48 = *(v0 + 112);
    v49 = *(v46 + 56);
    v49(v48, v26, 1, v47);
    (*(v44 + 8))(v43, v45);
    if ((*(v46 + 48))(v48, 1, v47) != 1)
    {
      v63 = *(v0 + 144);
      v64 = *(v0 + 16);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 112), v63, type metadata accessor for SelectedContent);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v63, v64, type metadata accessor for SelectedContent);
      v7 = 0;
      v6 = v49;
      goto LABEL_5;
    }

    outlined destroy of OnScreenContent.Document?(*(v0 + 112), &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
LABEL_14:
    v5 = *(v0 + 240) + 1;
    if (v5 == *(v0 + 208))
    {
      goto LABEL_4;
    }
  }

  v59 = *__swift_project_boxed_opaque_existential_1((*(v0 + 32) + 88), *(*(v0 + 32) + 112));
  v60 = swift_task_alloc();
  *(v0 + 248) = v60;
  *v60 = v0;
  v60[1] = ContentSelector.select(from:priority:);
  v61 = *(v0 + 200);
  v62 = *(v0 + 160);

  return EntityConverter.convert(content:)(v62, v61, v59);
}