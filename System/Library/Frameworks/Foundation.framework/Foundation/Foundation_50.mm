uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v7, type metadata accessor for NSDecimal.FormatStyle.Percent);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      v21 = v7;
      v22 = a2;
      v23 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      goto LABEL_7;
    }

    v20 = type metadata accessor for NSDecimal.FormatStyle.Currency;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v10 = v17;
    v10[1] = v18;
    v21 = v10;
  }

  else
  {
    v20 = type metadata accessor for NSDecimal.FormatStyle;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v13, type metadata accessor for NSDecimal.FormatStyle);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    v21 = v13;
  }

  v22 = a2;
  v23 = v20;
LABEL_7:
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v22, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v213 = *(v3 - 8);
  v214 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v212 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v198 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v198 - v10;
  v208 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v208);
  v13 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v209);
  v15 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v1, v21, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v34 = v214;
        v35 = v209;
        v36 = v210;
        goto LABEL_84;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v215, ObjectType, v23);
      v228 = v221;
      v229[0] = v222[0];
      *(v229 + 12) = *(v222 + 12);
      *v225 = v217;
      *&v225[16] = v218;
      v226 = v219;
      v227 = v220;
      v223 = v215;
      v224 = v216;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v43 = v215;
      v44 = *(&v215 + 1);
      v45 = *(&v216 + 1);
      v198 = v216;
      v46 = *(&v217 + 1);
      v199 = v217;
      v201 = v218;
      v202 = v219;
      v203 = v220;
      *&v204[8] = v221;
      v200 = *(&v222[0] + 1);
      v205 = *&v222[0];
      v206 = *&v222[1];
      v47 = BYTE8(v222[1]);
      v208 = BYTE9(v222[1]);
      LODWORD(v207) = BYTE10(v222[1]);
      LODWORD(v211) = BYTE11(v222[1]);
      Hasher._combine(_:)(1u);
      if (v43 == 2)
      {
        v48 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v48 = v43 & 1;
      }

      Hasher._combine(_:)(v48);
      if (v44)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v44 + 16));
        v61 = *(v44 + 16);
        if (v61)
        {
          v62 = v44 + 40;
          do
          {

            String.hash(into:)();

            v62 += 16;
            --v61;
          }

          while (v61);
        }

        *v204 = v47;
        if (v45)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        *v204 = v47;
        if (v45)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v34 = v214;
      v35 = v209;
      v36 = v210;
      v67 = *(&v202 + 1);
      v68 = *(&v201 + 1);
      if (v46)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v69 = v201;
        if (v201)
        {
          goto LABEL_49;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v69 = v201;
        if (v201)
        {
LABEL_49:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v69, v70, v71, v72, v73, v74, v75);
          if (v68)
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
LABEL_50:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v68, v76, v77, v78, v79, v80, v81);
        if (v202)
        {
          goto LABEL_51;
        }

        goto LABEL_56;
      }

LABEL_55:
      Hasher._combine(_:)(0);
      if (v202)
      {
LABEL_51:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v67)
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_58;
        }

LABEL_57:
        Hasher._combine(_:)(0);
LABEL_58:
        v82 = v205;
        if (v203)
        {
          v83 = v208;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v203 + 1))
          {
LABEL_60:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_63;
          }
        }

        else
        {
          v83 = v208;
          Hasher._combine(_:)(0);
          if (*(&v203 + 1))
          {
            goto LABEL_60;
          }
        }

        Hasher._combine(_:)(0);
LABEL_63:
        v84 = v83;
        if (*&v204[8])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v85 = v82;
        v86 = *&v204[16];
        if (*&v204[16])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v86);
          v87 = *v204;
          if (v85)
          {
            goto LABEL_68;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v87 = *v204;
          if (v85)
          {
LABEL_68:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v85);
            if (v206)
            {
LABEL_69:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_73;
            }

LABEL_72:
            Hasher._combine(_:)(0);
LABEL_73:
            v88 = v207;
            if (v87 == 2)
            {
              Hasher._combine(_:)(0);
              if (v84 != 2)
              {
                goto LABEL_75;
              }
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v87 & 1);
              if (v84 != 2)
              {
LABEL_75:
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v84 & 1);
                if (v88 != 2)
                {
LABEL_76:
                  Hasher._combine(_:)(1u);
                  v89 = v88 & 1;
LABEL_80:
                  Hasher._combine(_:)(v89);
                  v90 = v211;
                  if (v211 == 2)
                  {
                    v91 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v91 = v90 & 1;
                  }

                  Hasher._combine(_:)(v91);
                  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_84:
                  String.hash(into:)();
                  v92 = &v15[*(v35 + 24)];
                  if (v92[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v93 = *v92;
                    Hasher._combine(_:)(1u);
                    if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v94 = v93;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    MEMORY[0x1865CD090](v94);
                  }

                  v95 = v213;
                  v96 = *(v92 + 2);
                  v223 = *(v92 + 1);
                  v224 = v96;
                  *v225 = *(v92 + 3);
                  *&v225[9] = *(v92 + 57);
                  specialized Optional<A>.hash(into:)();
                  v97 = v92[73];
                  if (v97 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v97 & 1);
                  }

                  v98 = *(v92 + 74);
                  if (*(v92 + 74) == 2)
                  {
                    LOBYTE(v99) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v98 & 1);
                    MEMORY[0x1865CD060]((v98 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v98) & 1);
                    v99 = BYTE3(v98) & 1;
                  }

                  Hasher._combine(_:)(v99);
                  v100 = v92[78];
                  if (v100 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v100 & 1);
                  }

                  v101 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  outlined init with copy of FloatingPointRoundingRule?(&v92[v101[9]], v36, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
                  if ((*(v95 + 48))(v36, 1, v34) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v102 = v212;
                    (*(v95 + 32))(v212, v36, v34);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v95 + 8))(v102, v34);
                  }

                  v103 = &v92[v101[10]];
                  v104 = v103[8];
                  if (v104 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v105 = *v103;
                    Hasher._combine(_:)(1u);
                    if (v104)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v106 = v105;
                      }

                      else
                      {
                        v106 = 0;
                      }

                      MEMORY[0x1865CD090](v106);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v105);
                    }
                  }

                  MEMORY[0x1865CD060](v92[v101[11]]);
                  v107 = v92[v101[12]];
                  if (v107 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v107);
                  }

                  v108 = type metadata accessor for NSDecimal.FormatStyle.Currency;
                  v109 = v15;
                  return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, v108);
                }

LABEL_79:
                v89 = 0;
                goto LABEL_80;
              }
            }

            Hasher._combine(_:)(0);
            if (v88 != 2)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }

        Hasher._combine(_:)(0);
        if (v206)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

LABEL_56:
      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    v30 = v13;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v13, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v13 + 1);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      v33 = 1;
LABEL_17:
      Hasher._combine(_:)(v33);
      v40 = v213;
      v41 = v214;
      v42 = v208;
      goto LABEL_225;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v215, v32, v31);
    v228 = v221;
    v229[0] = v222[0];
    *(v229 + 12) = *(v222 + 12);
    *v225 = v217;
    *&v225[16] = v218;
    v226 = v219;
    v227 = v220;
    v223 = v215;
    v224 = v216;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
    {
      v33 = 0;
      goto LABEL_17;
    }

    v55 = v215;
    v56 = *(&v215 + 1);
    v57 = *(&v216 + 1);
    v198 = v216;
    v58 = *(&v217 + 1);
    v199 = v217;
    v201 = v218;
    v202 = v219;
    v203 = v220;
    *&v204[16] = *(&v221 + 1);
    *v204 = v221;
    v200 = *(&v222[0] + 1);
    v205 = *&v222[0];
    v206 = *&v222[1];
    v207 = BYTE8(v222[1]);
    v209 = BYTE9(v222[1]);
    v59 = BYTE10(v222[1]);
    LODWORD(v210) = BYTE11(v222[1]);
    Hasher._combine(_:)(1u);
    if (v55 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v55 & 1;
    }

    Hasher._combine(_:)(v60);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v56 + 16));
      v65 = *(v56 + 16);
      if (v65)
      {
        v66 = v56 + 40;
        do
        {

          String.hash(into:)();

          v66 += 16;
          --v65;
        }

        while (v65);
      }

      *&v204[8] = v59;
      if (v57)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      *&v204[8] = v59;
      if (v57)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_186;
      }
    }

    Hasher._combine(_:)(0);
LABEL_186:
    v40 = v213;
    v42 = v208;
    v153 = v203;
    v154 = v202;
    if (v58)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v30 = v13;
    v155 = v201;
    if (v201)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v155, v156, v157, v158, v159, v160, v161);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v41 = v214;
    v162 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v162, v163, v164, v165, v166, v167, v168);
      if (v154)
      {
        goto LABEL_194;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v154)
      {
LABEL_194:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v202 + 1))
        {
          goto LABEL_195;
        }

        goto LABEL_199;
      }
    }

    Hasher._combine(_:)(0);
    if (*(&v202 + 1))
    {
LABEL_195:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v169 = v206;
      if (v153)
      {
LABEL_196:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_201;
      }

LABEL_200:
      Hasher._combine(_:)(0);
LABEL_201:
      v170 = v169;
      if (*(&v203 + 1))
      {
        v171 = v209;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*v204)
        {
LABEL_203:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_206;
        }
      }

      else
      {
        v171 = v209;
        Hasher._combine(_:)(0);
        if (*v204)
        {
          goto LABEL_203;
        }
      }

      Hasher._combine(_:)(0);
LABEL_206:
      v172 = v171;
      v173 = v170;
      v174 = *&v204[16];
      if (*&v204[16])
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v174);
        v175 = v205;
        if (v205)
        {
          goto LABEL_208;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v175 = v205;
        if (v205)
        {
LABEL_208:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v175);
          v176 = v210;
          if (v173)
          {
LABEL_209:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            goto LABEL_213;
          }

LABEL_212:
          Hasher._combine(_:)(0);
LABEL_213:
          v177 = v207;
          if (v207 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v177 & 1);
          }

          v178 = *&v204[8];
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
            if (v178 != 2)
            {
LABEL_218:
              Hasher._combine(_:)(1u);
              v179 = v178 & 1;
LABEL_221:
              Hasher._combine(_:)(v179);
              if (v176 == 2)
              {
                v180 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v180 = v176 & 1;
              }

              Hasher._combine(_:)(v180);
              outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_225:
              v181 = &v30[*(v42 + 20)];
              if (v181[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v182 = *v181;
                Hasher._combine(_:)(1u);
                if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v183 = v182;
                }

                else
                {
                  v183 = 0;
                }

                MEMORY[0x1865CD090](v183);
              }

              v184 = *(v181 + 2);
              v223 = *(v181 + 1);
              v224 = v184;
              *v225 = *(v181 + 3);
              *&v225[9] = *(v181 + 57);
              specialized Optional<A>.hash(into:)();
              v185 = v181[73];
              if (v185 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v185 & 1);
              }

              v186 = *(v181 + 37);
              v187 = v186 | (v181[76] << 16);
              if (v186 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v187 & 1);
                MEMORY[0x1865CD060]((v187 >> 8) & 1);
                MEMORY[0x1865CD060](HIWORD(v187) & 1);
              }

              v188 = v181[77];
              if (v188 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v188 & 1);
              }

              v189 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
              v190 = v211;
              outlined init with copy of FloatingPointRoundingRule?(&v181[v189[9]], v211, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
              if ((*(v40 + 48))(v190, 1, v41) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v191 = v212;
                (*(v40 + 32))(v212, v190, v41);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v40 + 8))(v191, v41);
              }

              v192 = &v181[v189[10]];
              v193 = v192[8];
              if (v193 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v194 = *v192;
                Hasher._combine(_:)(1u);
                if (v193)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v194 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v195 = v194;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  MEMORY[0x1865CD090](v195);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v194);
                }
              }

              v196 = v181[v189[11]];
              if (v196 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v196);
              }

              v108 = type metadata accessor for NSDecimal.FormatStyle.Percent;
              v109 = v30;
              return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, v108);
            }
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
            if (v178 != 2)
            {
              goto LABEL_218;
            }
          }

          v179 = 0;
          goto LABEL_221;
        }
      }

      Hasher._combine(_:)(0);
      v176 = v210;
      if (v173)
      {
        goto LABEL_209;
      }

      goto LABEL_212;
    }

LABEL_199:
    Hasher._combine(_:)(0);
    v169 = v206;
    if (v153)
    {
      goto LABEL_196;
    }

    goto LABEL_200;
  }

  v26 = v16;
  v211 = v11;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v27 = *(v18 + 1);
  v28 = swift_getObjectType();
  if ((*(v27 + 48))(v28, v27))
  {
    v29 = 1;
LABEL_14:
    Hasher._combine(_:)(v29);
    v38 = v213;
    v37 = v214;
    v39 = v26;
    goto LABEL_154;
  }

  Hasher._combine(_:)(0);
  (*(v27 + 64))(v28, v27);
  String.hash(into:)();

  (*(v27 + 464))(&v215, v28, v27);
  v228 = v221;
  v229[0] = v222[0];
  *(v229 + 12) = *(v222 + 12);
  *v225 = v217;
  *&v225[16] = v218;
  v226 = v219;
  v227 = v220;
  v223 = v215;
  v224 = v216;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
  {
    v29 = 0;
    goto LABEL_14;
  }

  v210 = v18;
  v49 = v215;
  v50 = *(&v215 + 1);
  v51 = *(&v216 + 1);
  v198 = v216;
  v52 = *(&v217 + 1);
  v199 = v217;
  v201 = v218;
  v202 = v219;
  v203 = v220;
  *v204 = v221;
  v200 = *(&v222[0] + 1);
  v205 = *&v222[0];
  v206 = *&v222[1];
  v207 = BYTE8(v222[1]);
  v208 = BYTE9(v222[1]);
  LODWORD(v209) = BYTE10(v222[1]);
  v53 = BYTE11(v222[1]);
  Hasher._combine(_:)(1u);
  if (v49 == 2)
  {
    v54 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v54 = v49 & 1;
  }

  Hasher._combine(_:)(v54);
  if (v50)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v50 + 16));
    v63 = *(v50 + 16);
    if (v63)
    {
      v64 = v50 + 40;
      do
      {

        String.hash(into:)();

        v64 += 16;
        --v63;
      }

      while (v63);
    }

    *&v204[16] = v53;
    if (v51)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    *&v204[16] = v53;
    if (v51)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_116;
    }
  }

  Hasher._combine(_:)(0);
LABEL_116:
  v37 = v214;
  v39 = v26;
  v110 = v202;
  v18 = v210;
  v111 = v203;
  if (v52)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = v213;
  v112 = v201;
  if (v201)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v112, v113, v114, v115, v116, v117, v118);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      goto LABEL_121;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
LABEL_121:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v119, v120, v121, v122, v123, v124, v125);
      if (v110)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    }
  }

  Hasher._combine(_:)(0);
  if (v110)
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v202 + 1))
    {
      goto LABEL_123;
    }

LABEL_128:
    Hasher._combine(_:)(0);
    if (v111)
    {
      goto LABEL_124;
    }

    goto LABEL_129;
  }

LABEL_127:
  Hasher._combine(_:)(0);
  if (!*(&v202 + 1))
  {
    goto LABEL_128;
  }

LABEL_123:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v111)
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
LABEL_130:
  v126 = v206;
  if (*(&v203 + 1))
  {
    v127 = v208;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v204)
    {
LABEL_132:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_135;
    }
  }

  else
  {
    v127 = v208;
    Hasher._combine(_:)(0);
    if (*v204)
    {
      goto LABEL_132;
    }
  }

  Hasher._combine(_:)(0);
LABEL_135:
  v128 = v127;
  v129 = v126;
  v130 = *&v204[8];
  if (*&v204[8])
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v130);
    v131 = v205;
    if (v205)
    {
      goto LABEL_137;
    }

LABEL_140:
    Hasher._combine(_:)(0);
    v132 = v209;
    if (v129)
    {
      goto LABEL_138;
    }

    goto LABEL_141;
  }

  Hasher._combine(_:)(0);
  v131 = v205;
  if (!v205)
  {
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v131);
  v132 = v209;
  if (v129)
  {
LABEL_138:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_142;
  }

LABEL_141:
  Hasher._combine(_:)(0);
LABEL_142:
  v133 = v207;
  if (v207 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v133 & 1);
  }

  v134 = *&v204[16];
  if (v128 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v128 & 1);
    if (v132 != 2)
    {
      goto LABEL_147;
    }

LABEL_149:
    v135 = 0;
    goto LABEL_150;
  }

  Hasher._combine(_:)(0);
  if (v132 == 2)
  {
    goto LABEL_149;
  }

LABEL_147:
  Hasher._combine(_:)(1u);
  v135 = v132 & 1;
LABEL_150:
  Hasher._combine(_:)(v135);
  if (v134 == 2)
  {
    v136 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v136 = v134 & 1;
  }

  Hasher._combine(_:)(v136);
  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_154:
  v137 = &v18[*(v39 + 20)];
  if (v137[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v138 = *v137;
    Hasher._combine(_:)(1u);
    if ((v138 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    MEMORY[0x1865CD090](v139);
  }

  v140 = v211;
  v141 = *(v137 + 2);
  v223 = *(v137 + 1);
  v224 = v141;
  *v225 = *(v137 + 3);
  *&v225[9] = *(v137 + 57);
  specialized Optional<A>.hash(into:)();
  v142 = v137[73];
  if (v142 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142 & 1);
  }

  v143 = *(v137 + 37);
  v144 = v143 | (v137[76] << 16);
  if (v143 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v144 & 1);
    MEMORY[0x1865CD060]((v144 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v144) & 1);
  }

  v145 = v137[77];
  if (v145 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v145 & 1);
  }

  v146 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v137[v146[9]], v140, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v38 + 48))(v140, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v147 = v212;
    (*(v38 + 32))(v212, v140, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v38 + 8))(v147, v37);
  }

  v148 = &v137[v146[10]];
  v149 = v148[8];
  if (v149 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v150 = *v148;
    Hasher._combine(_:)(1u);
    if (v149)
    {
      MEMORY[0x1865CD060](1);
      if ((v150 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v151 = v150;
      }

      else
      {
        v151 = 0;
      }

      MEMORY[0x1865CD090](v151);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v150);
    }
  }

  v152 = v137[v146[11]];
  if (v152 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v152);
  }

  v108 = type metadata accessor for NSDecimal.FormatStyle;
  v109 = v18;
  return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, v108);
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v11, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, v12, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle@<X0>(NSDecimal **a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  if (a4 == a1 && (((a4 ^ a1) >> 8) & 1) == 0)
  {
    v9[0] = a2;
    v9[1] = a3;
    v8[0] = a5;
    v8[1] = a6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = specialized static Locale.== infix(_:_:)(v9, v8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v6 & 1;
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(Swift::String *a1, uint64_t a2, NSDecimal **a3)
{
  v5 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v11 = *a1;
  String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.locale(_:)(&v11._countAndFlagsBits, v7);
  v9 = String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.format(_:)(v8);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v7, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  v11 = v9;
  return String.init<A>(_:)();
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(Swift::String *a1, uint64_t a2, double *a3)
{
  v5 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v11 = *a1;
  String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.locale(_:)(&v11._countAndFlagsBits, v7);
  v9 = String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.format(_:)(v8);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v7, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  v11 = v9;
  return String.init<A>(_:)();
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2[3];
  v5 = a2[5];
  v21 = a2[4];
  v22 = v5;
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v8 = a2[1];
  v19 = a2[2];
  v20 = v7;
  v17 = *a3;
  v14 = v21;
  v15 = a2[5];
  v11 = v8;
  v23 = *(a2 + 48);
  v16 = *(a2 + 48);
  v12 = v19;
  v13 = v4;
  outlined init with copy of Date.IntervalFormatStyle(v18, v24);
  v10 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  Date.IntervalFormatStyle.format(_:)(&v17);
  v24[4] = v14;
  v24[5] = v15;
  v25 = v16;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  outlined destroy of Date.IntervalFormatStyle(v24);
  return String.init<A>(_:)();
}

uint64_t specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v104 = a1[4];
  v105 = v3;
  v4 = a1[5];
  v106[0] = a1[6];
  *(v106 + 10) = *(a1 + 106);
  v5 = a1[1];
  v101[0] = *a1;
  v101[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v102 = a1[2];
  v103 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v109 = a2[2];
  v110 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v107 = v9;
  v108 = v12;
  *(v113 + 10) = *(a2 + 106);
  v15 = a2[5];
  v113[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v111 = a2[4];
  v112 = v17;
  v18 = a1[3];
  v114[2] = a1[2];
  v114[3] = v18;
  v19 = a1[1];
  v114[0] = *a1;
  v114[1] = v19;
  *(v115 + 10) = *(a1 + 106);
  v20 = a1[5];
  v114[4] = a1[4];
  v114[5] = v20;
  v115[3] = v10;
  v115[4] = v13;
  v115[0] = a1[6];
  v115[2] = v14;
  *(v116 + 10) = *(a2 + 106);
  v116[0] = a2[6];
  v115[7] = v15;
  v115[5] = v16;
  v115[6] = v111;
  v117[2] = v102;
  v117[3] = v2;
  v117[0] = v8;
  v117[1] = v7;
  v21 = a1[6];
  *&v118[10] = *(a1 + 106);
  v117[5] = v4;
  *v118 = v21;
  v117[4] = v104;
  v22 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v117);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v29 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v117);
      v98 = v111;
      v99 = v112;
      v100[0] = v113[0];
      *(v100 + 10) = *(v113 + 10);
      v94 = v107;
      v95 = v108;
      v96 = v109;
      v97 = v110;
      if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v94) == 2)
      {
        v30 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v94);
        v31 = v29[1];
        v85 = *v29;
        v86 = v31;
        v32 = v29[3];
        v87 = v29[2];
        v88 = v32;
        v84[0] = *v30;
        v84[1] = v30[1];
        v84[2] = v30[2];
        v84[3] = v30[3];
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v92);
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
        outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v92);
        v28 = specialized static Date.VerbatimFormatStyle.== infix(_:_:)(&v85, v84);
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    v48 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v117);
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    v81 = *(v48 + 24);
    v83 = *(v48 + 8);
    v98 = v111;
    v99 = v112;
    v100[0] = v113[0];
    *(v100 + 10) = *(v113 + 10);
    v96 = v109;
    v97 = v110;
    v94 = v107;
    v95 = v108;
    if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v94) != 3)
    {
LABEL_33:
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, &v94);
      v56 = &v94;
LABEL_34:
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v56);
LABEL_35:
      outlined destroy of TermOfAddress?(v114, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
      goto LABEL_36;
    }

    v52 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v94);
    if (v49 != *v52 || v50 != v52[1] || v51 != v52[2])
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
      v56 = v92;
      goto LABEL_34;
    }

    v77 = *(v52 + 8);
    v79 = *(v52 + 24);
    v85 = v83;
    v84[0] = v77;
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v92);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v92);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v53 = specialized static Locale.== infix(_:_:)(&v85, v84);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v53 & 1) == 0 || (v92[0] = v81, v85 = v79, swift_unknownObjectRetain(), swift_unknownObjectRetain(), v54 = specialized static Calendar.== infix(_:_:)(v92, &v85), swift_unknownObjectRelease(), swift_unknownObjectRelease(), (v54 & 1) == 0))
    {
      outlined destroy of TermOfAddress?(v114, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107);
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101);
      goto LABEL_36;
    }

    v55 = _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5();
    outlined destroy of TermOfAddress?(v114, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
    outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107);
    outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101);
    if ((v55 & 1) == 0)
    {
LABEL_36:
      v33 = 0;
      return v33 & 1;
    }

LABEL_93:
    v33 = 1;
    return v33 & 1;
  }

  if (v22)
  {
    v34 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v117);
    v98 = v111;
    v99 = v112;
    v100[0] = v113[0];
    *(v100 + 10) = *(v113 + 10);
    v94 = v107;
    v95 = v108;
    v96 = v109;
    v97 = v110;
    if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v94) != 1)
    {
      goto LABEL_33;
    }

    v35 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v94);
    v36 = v34[1];
    v37 = v34[3];
    v38 = v34[4];
    v39 = *(v34 + 1);
    v75 = *v34;
    v76 = *v35;
    v40 = v35[1];
    v41 = v35[2];
    v78 = v35[3];
    v42 = v35[4];
    v43 = *(v35 + 1);
    v80 = *(v34 + 2);
    v82 = *(v35 + 2);
    if (v34[2])
    {
      v44 = 0;
    }

    else
    {
      v44 = 58;
    }

    if (v34[2])
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE100000000000000;
    }

    if (v41)
    {
      v46 = 0;
    }

    else
    {
      v46 = 58;
    }

    if (v41)
    {
      v47 = 0xE000000000000000;
    }

    else
    {
      v47 = 0xE100000000000000;
    }

    if (v44 == v46 && v45 == v47)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v92);
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v92);
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v92);

      if ((v58 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v92[0] = v80;
    v85 = v82;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v59 = specialized static TimeZone.== infix(_:_:)(v92, &v85);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v59 & 1) == 0 || v39 != v43)
    {
      goto LABEL_35;
    }

    if (v38)
    {
      v60 = 2577447;
    }

    else
    {
      v60 = 32;
    }

    if (v38)
    {
      v61 = 0xE300000000000000;
    }

    else
    {
      v61 = 0xE100000000000000;
    }

    if (v42)
    {
      v62 = 2577447;
    }

    else
    {
      v62 = 32;
    }

    if (v42)
    {
      v63 = 0xE300000000000000;
    }

    else
    {
      v63 = 0xE100000000000000;
    }

    if (v60 == v62 && v61 == v63)
    {

      if (v36 != v40)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v64 & 1) == 0 || ((v36 ^ v40))
      {
        goto LABEL_35;
      }
    }

    if (v37)
    {
      v65 = 0;
    }

    else
    {
      v65 = 45;
    }

    if (v37)
    {
      v66 = 0xE000000000000000;
    }

    else
    {
      v66 = 0xE100000000000000;
    }

    if (v78)
    {
      v67 = 0;
    }

    else
    {
      v67 = 45;
    }

    if (v78)
    {
      v68 = 0xE000000000000000;
    }

    else
    {
      v68 = 0xE100000000000000;
    }

    if (v65 == v67 && v66 == v68)
    {
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v69 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (v75)
    {
      v70 = 0;
    }

    else
    {
      v70 = 58;
    }

    if (v75)
    {
      v71 = 0xE000000000000000;
    }

    else
    {
      v71 = 0xE100000000000000;
    }

    if (v76)
    {
      v72 = 0;
    }

    else
    {
      v72 = 58;
    }

    if (v76)
    {
      v73 = 0xE000000000000000;
    }

    else
    {
      v73 = 0xE100000000000000;
    }

    if (v70 == v72 && v71 == v73)
    {

      outlined destroy of TermOfAddress?(v114, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
      v33 = 1;
      return v33 & 1;
    }

    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of TermOfAddress?(v114, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
    if ((v74 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

  v23 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v117);
  v98 = v111;
  v99 = v112;
  v100[0] = v113[0];
  *(v100 + 10) = *(v113 + 10);
  v94 = v107;
  v95 = v108;
  v96 = v109;
  v97 = v110;
  if (_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(&v94))
  {
    goto LABEL_33;
  }

  v24 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v94);
  v92[4] = v23[4];
  v92[5] = v23[5];
  v93[0] = v23[6];
  *(v93 + 10) = *(v23 + 106);
  v92[0] = *v23;
  v92[1] = v23[1];
  v92[2] = v23[2];
  v92[3] = v23[3];
  v25 = v24[5];
  v89 = v24[4];
  v90 = v25;
  v91[0] = v24[6];
  *(v91 + 10) = *(v24 + 106);
  v26 = v24[1];
  v85 = *v24;
  v86 = v26;
  v27 = v24[3];
  v87 = v24[2];
  v88 = v27;
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v84);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v84);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101, v84);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107, v84);
  v28 = specialized static Date.FormatStyle.== infix(_:_:)(v92, &v85);
LABEL_8:
  v33 = v28;
  outlined destroy of TermOfAddress?(v114, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v107);
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v101);
  return v33 & 1;
}

unint64_t specialized closure #2 in Rope.find<A>(at:in:preferEnd:)(unint64_t result, uint64_t *a2, char a3)
{
  v3 = *result;
  v4 = *a2;
  if (*result)
  {
    result = 0;
    v5 = (a3 & 1) == 0;
    v6 = *a2;
    while ((v4 ^ result) != 0x8000000000000000)
    {
      if (__OFADD__(v6 - 1, v5))
      {
        goto LABEL_12;
      }

      if (v6 - 1 + v5 < 1)
      {
        return result;
      }

      ++result;
      --v6;
      if (v3 == result)
      {
        v4 -= v3;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    if (!v4)
    {
      return v3 - (a3 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.== infix(_:_:)(uint64_t a1, char *a2)
{
  *(&v598 + 1) = a1;
  v599 = a2;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  MEMORY[0x1EEE9AC00](v574);
  v581 = &v536 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v578 = &v536 - v4;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v594 = *(v601 - 8);
  MEMORY[0x1EEE9AC00](v601);
  v582 = &v536 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v577 = &v536 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v580 = &v536 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v584 = &v536 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v579 = &v536 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v583 = &v536 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v590 = &v536 - v17;
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v585);
  v596 = &v536 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v595 = &v536 - v20;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v589 = *(v600 - 8);
  MEMORY[0x1EEE9AC00](v600);
  v575 = &v536 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v576 = &v536 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v593 = &v536 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v586 = &v536 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v536 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v536 - v32;
  v34 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v536 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v536 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v536 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v536 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v536 - v47;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(*(&v598 + 1), v641);
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v599, &v643);
  if (v642 > 2u)
  {
    if (v642 > 4u)
    {
      if (v642 == 5)
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
        v91 = *&v618[0];
        if (v650 == 5)
        {
          LODWORD(v600) = BYTE8(v617);
          v92 = BYTE9(v617);
          v601 = *(&v618[0] + 1);
          v93 = BYTE8(v643);
          v94 = BYTE9(v643);
          v95 = v644;
          v96 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(v617, v643);

          if ((v96 & 1) == 0)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_140;
          }

          if (v92)
          {
            v97 = 256;
          }

          else
          {
            v97 = 0;
          }

          if (v94)
          {
            v98 = 256;
          }

          else
          {
            v98 = 0;
          }

          v99 = _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(v97 | v600, v91, v601, v98 | v93, v95, *(&v95 + 1));
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
          return (v99 & 1) != 0;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
        if (v650 == 6)
        {
          v100 = v617;
          v101 = v643;
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
          return v100 == v101;
        }
      }

      goto LABEL_37;
    }

    if (v642 == 3)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
      if (v650 == 3)
      {
        v660 = v618[1];
        v661 = v619[0];
        v662 = v619[1];
        v663 = v619[2];
        v658 = v617;
        v659 = v618[0];
        v653 = v645;
        v654 = v646;
        v655 = v647;
        v656 = v648;
        v651 = v643;
        v652 = v644;
        v49 = (*&v618[0])(&v651);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v651);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v658);
        goto LABEL_39;
      }

      outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v617);
LABEL_37:
      outlined destroy of TermOfAddress?(v641, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMR);
      return 0;
    }

    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
    v662 = v619[1];
    v663 = v619[2];
    v664 = v620;
    v658 = v617;
    v659 = v618[0];
    v660 = v618[1];
    v661 = v619[0];
    if (v650 != 4)
    {
      outlined destroy of LocalizedStringResource(&v658);
      goto LABEL_37;
    }

    v655 = v647;
    v656 = v648;
    v651 = v643;
    v652 = v644;
    v653 = v645;
    v654 = v646;
    v637 = v619[1];
    v638[0] = v619[2];
    v633 = v617;
    v634 = v618[0];
    v635 = v618[1];
    v636 = v619[0];
    v631 = v647;
    v632[0] = v648;
    v627 = v643;
    v628 = v644;
    v657 = v649;
    *&v638[1] = v620;
    *&v632[1] = v649;
    v629 = v645;
    v630 = v646;
    v49 = static LocalizedStringResource.== infix(_:_:)(&v633, &v627);
    outlined destroy of LocalizedStringResource(&v651);
    outlined destroy of LocalizedStringResource(&v658);
LABEL_39:
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
    return (v49 & 1) != 0;
  }

  v588 = v30;
  v570 = v33;
  v571 = v39;
  v572 = v45;
  v573 = v34;
  v568 = v36;
  v50 = v594;
  if (!v642)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
    if (v650)
    {
      __swift_destroy_boxed_opaque_existential_1(&v617);
      goto LABEL_37;
    }

    outlined init with take of Any(&v617, &v658);
    outlined init with take of Any(&v643, &v651);
    v102 = *(&v659 + 1);
    v103 = __swift_project_boxed_opaque_existential_1(&v658, *(&v659 + 1));
    *(&v634 + 1) = v102;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v633);
    (*(*(v102 - 8) + 16))(boxed_opaque_existential_0, v103, v102);
    v105 = *(&v652 + 1);
    v106 = __swift_project_boxed_opaque_existential_1(&v651, *(&v652 + 1));
    *(&v628 + 1) = v105;
    v107 = __swift_allocate_boxed_opaque_existential_0(&v627);
    (*(*(v105 - 8) + 16))(v107, v106, v105);
    v49 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(&v633, &v627);
    __swift_destroy_boxed_opaque_existential_1(&v627);
    __swift_destroy_boxed_opaque_existential_1(&v633);
    __swift_destroy_boxed_opaque_existential_1(&v651);
    __swift_destroy_boxed_opaque_existential_1(&v658);
    goto LABEL_39;
  }

  if (v642 != 1)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, &v617);
    if (v650 != 2)
    {
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v617);
      goto LABEL_37;
    }

    v660 = v618[1];
    v661 = v619[0];
    v662 = v619[1];
    v663 = v619[2];
    v658 = v617;
    v659 = v618[0];
    v653 = v645;
    v654 = v646;
    v655 = v647;
    v656 = v648;
    v651 = v643;
    v652 = v644;
    v49 = (*&v618[0])(&v651);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v651);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v658);
    goto LABEL_39;
  }

  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v641, v640);
  v51 = v640[0];
  if (v650 != 1)
  {

    goto LABEL_37;
  }

  v566 = v42;
  v567 = v48;
  v552 = *(&v643 + 1);
  v52 = v643;
  v553 = v640[1];
  v749 = *(v640[0] + 24);
  v750 = *(v640[0] + 40);
  v751 = *(v640[0] + 56);
  v53 = BigString.startIndex.getter();
  *(&v598 + 1) = v55;
  v599 = v54;
  *&v598 = v56;
  v57 = BigString.endIndex.getter();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v746 = *(v52 + 24);
  v747 = *(v52 + 40);
  v592 = v52;
  v748 = *(v52 + 56);
  v64 = BigString.startIndex.getter();
  v562 = v65;
  v563 = v64;
  v560 = v67;
  v561 = v66;
  v68 = BigString.endIndex.getter();
  v558 = v69;
  v559 = v68;
  v556 = v71;
  v557 = v70;
  *&v617 = v53;
  *(&v617 + 1) = v599;
  *&v618[0] = *(&v598 + 1);
  *(&v618[0] + 1) = v598;
  *&v618[1] = v57;
  *(&v618[1] + 1) = v59;
  *&v619[0] = v61;
  *(&v619[0] + 1) = v63;
  v72 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v591 = v51;
  *v572 = v51;
  v565 = v72;
  RangeSet.init()();
  v73 = v590;
  RangeSet.ranges.getter();
  v74 = v595;
  v75 = v601;
  v554 = *(v50 + 16);
  v555 = v50 + 16;
  v554(v595, v73, v601);
  v76 = *(v585 + 36);
  v77 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v78 = *(v50 + 8);
  v594 = v50 + 8;
  v569 = v78;
  v78(v73, v75);
  v79 = v74;
  dispatch thunk of Collection.endIndex.getter();
  v80 = *(v74 + v76);
  v599 = v77;
  if (v80 != v617)
  {
    v587 = v76;
    do
    {
      v109 = dispatch thunk of Collection.subscript.read();
      v111 = v110[4];
      v112 = v110[7];
      *&v598 = v110[6];
      *(&v598 + 1) = v111;
      v597 = v112;
      v109(&v617, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v113 = v591;
      v743 = *(v591 + 24);
      v744 = *(v591 + 40);
      v745 = *(v591 + 56);
      swift_unknownObjectRetain();
      v114 = BigString.UnicodeScalarView.index(roundingDown:)();
      v116 = v115;
      v118 = v117;
      v120 = v119;
      swift_unknownObjectRelease();
      v740 = *(v113 + 24);
      v741 = *(v113 + 40);
      v742 = *(v113 + 56);
      swift_unknownObjectRetain();
      v121 = BigString.UnicodeScalarView.index(roundingDown:)();
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v75 = v601;
      swift_unknownObjectRelease();
      *&v617 = v114;
      *(&v617 + 1) = v116;
      *&v618[0] = v118;
      *(&v618[0] + 1) = v120;
      *&v618[1] = v121;
      *(&v618[1] + 1) = v123;
      *&v619[0] = v125;
      *(&v619[0] + 1) = v127;
      if ((v121 ^ v114) >= 0x400)
      {
        v128 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v128(&v658, 0);
      }

      v79 = v595;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v79 + v587) != v617);
  }

  outlined destroy of TermOfAddress?(v79, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v82 = v572;
  v81 = v573;
  v83 = *(v573 + 24);
  v84 = *(v589 + 16);
  v587 = v589 + 16;
  v564 = v84;
  v84(v572 + v83, v588, v600);
  v85 = v590;
  RangeSet.ranges.getter();
  v86 = RangeSet.Ranges.count.getter();
  v87 = v569;
  v569(v85, v75);
  v88 = *(v81 + 28);
  LODWORD(v551) = v86 > 1;
  *(v82 + v88) = v551;
  v89 = v583;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v658 == v617)
  {
    v90 = v89;
LABEL_47:
    v87(v90, v75);
    v135 = v590;
    v134 = v591;
    v136 = *(v591 + 72);
    v137 = v600;
    if (v136)
    {
      v597 = *(v136 + 18);
    }

    else
    {
      v597 = 0;
    }

    *(&v598 + 1) = *(v591 + 96);
    v737 = *(v591 + 24);
    v738 = *(v591 + 40);
    v739 = *(v591 + 56);
    v138 = BigString.startIndex.getter();
    v140 = v139;
    v142 = v141;
    v583 = v143;
    v144 = *(v134 + 72);
    *&v598 = *(v134 + 96);
    if (v144)
    {
      v595 = *(v144 + 18);
    }

    else
    {
      v595 = 0;
    }

    v145 = *(v589 + 8);
    v145(v588, v137);
    v588 = v145;
    v145(v570, v137);
    v734 = *(v134 + 24);
    v735 = *(v134 + 40);
    v736 = *(v134 + 56);
    v146 = BigString.startIndex.getter();
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = -1;
    v156 = v138;
    v157 = v138;
    v158 = v140;
    v159 = v140;
    v160 = v142;
    v161 = v142;
    v162 = v583;
    v163 = v583;
    v164 = v146;
    v165 = v147;
    v166 = v148;
    v167 = v149;
    v168 = -1;
    goto LABEL_55;
  }

  v129 = dispatch thunk of Collection.subscript.read();
  v131 = *v130;
  v549 = v130[1];
  v550 = v131;
  v132 = v130[2];
  v547 = v130[3];
  v548 = v132;
  v129(&v617, 0);
  v87(v89, v75);
  v133 = v579;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v90 = v133;
    goto LABEL_47;
  }

  v541 = v83;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v263 = dispatch thunk of Collection.subscript.read();
  v265 = v264[4];
  v583 = v264[5];
  v266 = v264[6];
  v267 = v264[7];
  v263(&v617, 0);
  v87(v133, v75);
  v268 = v591;
  AttributedString.Guts.findRun(at:)(v550, v547, &v617);
  v597 = *(&v617 + 1);
  *(&v598 + 1) = v617;
  v542 = *(&v618[0] + 1);
  v543 = *&v618[0];
  v579 = *(&v618[1] + 1);
  v269 = v75;
  v160 = *(&v619[0] + 1);
  v158 = *&v619[0];
  v162 = *&v619[1];
  v737 = *(v268 + 24);
  v738 = *(v268 + 40);
  v739 = *(v268 + 56);
  v270 = BigString.endIndex.getter();
  v545 = v266;
  v546 = v265;
  v544 = v267;
  if ((v270 ^ v265) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v265, v267, &v617);
    v595 = *(&v617 + 1);
    *&v598 = v617;
    v154 = *&v618[0];
    v539 = *(&v618[1] + 1);
    v540 = *(&v618[0] + 1);
    v537 = *(&v619[0] + 1);
    v538 = *&v619[0];
    v536 = *&v619[1];
    v297 = v590;
    v298 = v600;
    RangeSet.ranges.getter();
    v168 = RangeSet.Ranges.count.getter();
    v569(v297, v269);
    v299 = *(v589 + 8);
    v299(v588, v298);
    v588 = v299;
    v299(v570, v298);
    v135 = v297;
    v146 = v539;
    v153 = v540;
    v164 = v546;
    v163 = v547;
    v149 = v536;
    v148 = v537;
    v147 = v538;
    v155 = 0;
    v152 = v551;
    v159 = v549;
    v157 = v550;
    v161 = v548;
    v156 = v579;
    v165 = v583;
    v167 = v544;
    v166 = v545;
    v150 = v542;
    v151 = v543;
  }

  else
  {
    v271 = *(v268 + 72);
    if (v271)
    {
      v272 = *(v268 + 80);
    }

    else
    {
      v272 = 0;
    }

    v540 = v272;
    v273 = *(v268 + 96);
    v274 = swift_unknownObjectRetain();
    *&v598 = v273;
    v595 = specialized Rope._endPath.getter(v274);
    v275 = v570;
    if (v271)
    {
      swift_unknownObjectRelease();
    }

    v135 = v590;
    v276 = v600;
    RangeSet.ranges.getter();
    v277 = v601;
    v168 = RangeSet.Ranges.count.getter();
    v569(v135, v277);
    v278 = *(v589 + 8);
    v278(v588, v276);
    v588 = v278;
    v278(v275, v276);
    v155 = 0;
    v154 = 0;
    v166 = v545;
    v164 = v546;
    v146 = v546;
    v165 = v583;
    v147 = v583;
    v148 = v545;
    v151 = v543;
    v167 = v544;
    v149 = v544;
    v152 = v551;
    v159 = v549;
    v157 = v550;
    v163 = v547;
    v161 = v548;
    v156 = v579;
    v150 = v542;
    v153 = v540;
  }

LABEL_55:
  v169 = v572;
  v572[1] = v150;
  v169[2] = *(&v598 + 1);
  v169[3] = v597;
  v169[4] = v151;
  v169[5] = v156;
  v169[6] = v158;
  v169[7] = v160;
  v169[8] = v162;
  v169[9] = v157;
  v169[10] = v159;
  v169[11] = v161;
  v169[12] = v163;
  v169[13] = v155;
  *(v169 + 112) = 0;
  *(v169 + 113) = v152;
  v170 = v598;
  v169[15] = v153;
  v169[16] = v170;
  v169[17] = v595;
  v169[18] = v154;
  v169[19] = v146;
  v169[20] = v147;
  v169[21] = v148;
  v169[22] = v149;
  v169[23] = v164;
  v169[24] = v165;
  v169[25] = v166;
  v169[26] = v167;
  v169[27] = v168;
  *(v169 + 224) = 0;
  *(v169 + 225) = v152;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v169, v567, type metadata accessor for AttributedString.Runs);
  *&v617 = v563;
  *(&v617 + 1) = v562;
  *&v618[0] = v561;
  *(&v618[0] + 1) = v560;
  *&v618[1] = v559;
  *(&v618[1] + 1) = v558;
  *&v619[0] = v557;
  *(&v619[0] + 1) = v556;
  v171 = v592;

  RangeSet.init(_:)();
  *v571 = v171;
  RangeSet.init()();
  RangeSet.ranges.getter();
  v172 = v596;
  v173 = v601;
  v554(v596, v135, v601);
  v174 = *(v585 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v569(v135, v173);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v172 + v174) != v617)
  {
    v595 = v174;
    do
    {
      v183 = dispatch thunk of Collection.subscript.read();
      v185 = v184[4];
      *&v598 = v184[5];
      *(&v598 + 1) = v185;
      v597 = v184[6];
      v183(&v617, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v186 = v592;
      v731 = *(v592 + 24);
      v732 = *(v592 + 40);
      v733 = *(v592 + 56);
      swift_unknownObjectRetain();
      v187 = BigString.UnicodeScalarView.index(roundingDown:)();
      v189 = v188;
      v191 = v190;
      v193 = v192;
      swift_unknownObjectRelease();
      v728 = *(v186 + 24);
      v729 = *(v186 + 40);
      v730 = *(v186 + 56);
      swift_unknownObjectRetain();
      v194 = BigString.UnicodeScalarView.index(roundingDown:)();
      v196 = v195;
      v198 = v197;
      v200 = v199;
      swift_unknownObjectRelease();
      *&v617 = v187;
      *(&v617 + 1) = v189;
      *&v618[0] = v191;
      *(&v618[0] + 1) = v193;
      *&v618[1] = v194;
      *(&v618[1] + 1) = v196;
      *&v619[0] = v198;
      v173 = v601;
      *(&v619[0] + 1) = v200;
      if ((v194 ^ v187) >= 0x400)
      {
        v201 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v201(&v658, 0);
      }

      v172 = v596;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v172 + v595) != v617);
  }

  outlined destroy of TermOfAddress?(v172, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v175 = v573;
  v176 = *(v573 + 24);
  v177 = v571;
  v564(v571 + v176, v593, v600);
  v178 = v590;
  RangeSet.ranges.getter();
  v179 = RangeSet.Ranges.count.getter();
  v569(v178, v173);
  v180 = *(v175 + 28);
  LODWORD(v595) = v179 > 1;
  *(v177 + v180) = v595;
  v181 = v584;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v658 == v617)
  {
    v569(v181, v173);
    v182 = v592;
LABEL_64:
    v209 = *(v182 + 72);
    v210 = v600;
    v211 = v586;
    if (v209)
    {
      *(&v598 + 1) = *(v209 + 18);
    }

    else
    {
      *(&v598 + 1) = 0;
    }

    *&v598 = *(v182 + 96);
    v725 = *(v182 + 24);
    v726 = *(v182 + 40);
    v727 = *(v182 + 56);
    v212 = BigString.startIndex.getter();
    v214 = v213;
    v595 = v215;
    v217 = v216;
    v218 = *(v182 + 72);
    v597 = *(v182 + 96);
    v219 = v212;
    if (v218)
    {
      v596 = *(v218 + 18);
    }

    else
    {
      v596 = 0;
    }

    v220 = v588;
    (v588)(v593, v210);
    v220(v211, v210);
    v724[15] = *(v182 + 24);
    v724[16] = *(v182 + 40);
    v724[17] = *(v182 + 56);
    v224 = BigString.startIndex.getter();
    v225 = v221;
    v226 = v222;
    v227 = v223;
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
    v233 = -1;
    v234 = v219;
    v235 = v214;
    v236 = v214;
    v237 = v595;
    v238 = v595;
    v239 = v217;
    v240 = v217;
    v241 = v224;
    v242 = -1;
    v243 = v571;
    v244 = *(&v598 + 1);
    goto LABEL_71;
  }

  v202 = dispatch thunk of Collection.subscript.read();
  v204 = *(v203 + 8);
  v572 = *v203;
  v585 = v204;
  v205 = *(v203 + 24);
  v583 = *(v203 + 16);
  v579 = v205;
  v202(&v617, 0);
  v206 = v569;
  v569(v181, v173);
  v207 = v580;
  RangeSet.ranges.getter();
  v208 = dispatch thunk of Collection.isEmpty.getter();
  v182 = v592;
  if (v208)
  {
    v206(v207, v173);
    goto LABEL_64;
  }

  v557 = v176;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v279 = dispatch thunk of Collection.subscript.read();
  v281 = v280[4];
  v584 = v280[5];
  v282 = v280[7];
  v570 = v280[6];
  v563 = v282;
  v279(&v617, 0);
  v569(v207, v173);
  v219 = v572;
  AttributedString.Guts.findRun(at:)(v572, v579, &v617);
  v598 = v617;
  v558 = *(&v618[0] + 1);
  v559 = *&v618[0];
  v580 = *(&v618[1] + 1);
  v237 = *(&v619[0] + 1);
  v561 = *&v619[1];
  v562 = *&v619[0];
  v725 = *(v182 + 24);
  v726 = *(v182 + 40);
  v727 = *(v182 + 56);
  v283 = BigString.endIndex.getter();
  v560 = v281;
  if ((v283 ^ v281) >= 0x400)
  {
    v300 = v173;
    AttributedString.Guts.findRun(at:)(v281, v563, &v617);
    v596 = *(&v617 + 1);
    v597 = v617;
    v555 = *(&v618[0] + 1);
    v556 = *&v618[0];
    v224 = *(&v618[1] + 1);
    v226 = *(&v619[0] + 1);
    v225 = *&v619[0];
    v227 = *&v619[1];
    v301 = v590;
    v302 = v600;
    RangeSet.ranges.getter();
    v242 = RangeSet.Ranges.count.getter();
    v569(v301, v300);
    v303 = v588;
    (v588)(v593, v302);
    v303(v586, v302);
    v231 = v555;
    v232 = v556;
    v241 = v560;
    v239 = v561;
    v243 = v571;
    v219 = v572;
    v233 = 0;
    v230 = v595;
    v221 = v584;
    v236 = v585;
    v238 = v583;
    v240 = v579;
    v234 = v580;
    v244 = *(&v598 + 1);
    v235 = v562;
    v223 = v563;
    v222 = v570;
    v228 = v558;
    v229 = v559;
  }

  else
  {
    v284 = *(v182 + 72);
    if (v284)
    {
      v285 = *(v182 + 80);
    }

    else
    {
      v285 = 0;
    }

    v286 = *(v182 + 96);
    v287 = swift_unknownObjectRetain();
    v597 = v286;
    v596 = specialized Rope._endPath.getter(v287);
    v288 = v571;
    if (v284)
    {
      swift_unknownObjectRelease();
    }

    v289 = v590;
    v290 = v600;
    RangeSet.ranges.getter();
    v291 = v601;
    v242 = RangeSet.Ranges.count.getter();
    v569(v289, v291);
    v292 = v588;
    (v588)(v593, v290);
    v292(v586, v290);
    v243 = v288;
    v233 = 0;
    v232 = 0;
    v241 = v560;
    v239 = v561;
    v224 = v560;
    v221 = v584;
    v236 = v585;
    v225 = v584;
    v222 = v570;
    v226 = v570;
    v235 = v562;
    v223 = v563;
    v227 = v563;
    v230 = v595;
    v238 = v583;
    v240 = v579;
    v234 = v580;
    v244 = *(&v598 + 1);
    v228 = v558;
    v229 = v559;
    v231 = v285;
  }

LABEL_71:
  *(v243 + 8) = v228;
  *(v243 + 16) = v598;
  *(v243 + 24) = v244;
  *(v243 + 32) = v229;
  *(v243 + 40) = v234;
  *(v243 + 48) = v235;
  *(v243 + 56) = v237;
  *(v243 + 64) = v239;
  *(v243 + 72) = v219;
  *(v243 + 80) = v236;
  *(v243 + 88) = v238;
  *(v243 + 96) = v240;
  *(v243 + 104) = v233;
  *(v243 + 112) = 0;
  *(v243 + 113) = v230;
  v245 = v596;
  v246 = v597;
  *(v243 + 120) = v231;
  *(v243 + 128) = v246;
  *(v243 + 136) = v245;
  *(v243 + 144) = v232;
  *(v243 + 152) = v224;
  *(v243 + 160) = v225;
  *(v243 + 168) = v226;
  *(v243 + 176) = v227;
  *(v243 + 184) = v241;
  *(v243 + 192) = v221;
  *(v243 + 200) = v222;
  *(v243 + 208) = v223;
  *(v243 + 216) = v242;
  *(v243 + 224) = 0;
  *(v243 + 225) = v230;
  v247 = v566;
  result = outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v243, v566, type metadata accessor for AttributedString.Runs);
  v251 = v567;
  v252 = *v567;
  *(&v598 + 1) = *v247;
  if (v252 == *(&v598 + 1))
  {
    result = static RangeSet.== infix(_:_:)();
    if (result)
    {
      goto LABEL_112;
    }
  }

  v253 = v251[1];
  v254 = v251[9];
  v255 = v251[12];
  v256 = v251[15];
  v257 = v251[23];
  v258 = v251[26];
  v259 = v573;
  if (*(v251 + *(v573 + 28)) == 1)
  {
    v250 = 0;
    v366 = *(v251 + 112);
    v367 = v251[13];
    v555 = v257 >> 10;
    v368 = v251[8];
    v580 = v251[7];
    v369 = v251[5];
    v583 = v251[6];
    v584 = v252;
    v560 = v254 >> 10;
    v557 = v255;
    v558 = v589 + 8;
    v370 = v251[3];
    v371 = v251[4];
    v372 = v253;
    v546 = v254;
    v373 = v255;
    result = v258;
    v248 = v256;
    *&v598 = v370;
    v374 = v251[2];
    v375 = v600;
    v556 = v253;
LABEL_146:
    LOBYTE(v658) = v366;
    if (v372 >= v256 && (v256 < v372 || v258 == 2 || v373 != 2 && v254 >> 10 >= v555))
    {
      goto LABEL_316;
    }

    if (v372 < v253)
    {
      goto LABEL_325;
    }

    v385 = v253 < v372 || v255 == 2;
    v386 = v385;
    if (!v385)
    {
      if (v373 == 2)
      {
        goto LABEL_363;
      }

      if (v560 > v254 >> 10)
      {
        goto LABEL_339;
      }
    }

    if (v372 >= v248)
    {
      if (v248 < v372)
      {
        goto LABEL_340;
      }

      if (result == 2)
      {
        goto LABEL_364;
      }

      if (v373 == 2)
      {
        if (!v386)
        {
          goto LABEL_361;
        }

LABEL_171:
        if (v248 < v372)
        {
          goto LABEL_327;
        }

        if (v372 >= v248 && v373 != 2)
        {
          if (result == 2)
          {
            goto LABEL_366;
          }

          if (v257 >> 10 < v254 >> 10)
          {
            goto LABEL_342;
          }
        }

        v597 = v371;
        if (v371 == 1 || v374 != *(v252 + 12))
        {
          goto LABEL_359;
        }

        v579 = v257;
        v593 = v250;
        v571 = v248;
        v572 = result;
        v561 = v369 >> 11;
        v562 = v368;
        v570 = v369;
        v565 = v254;
        v585 = v373;
        v595 = v374;
        v596 = v372;
        if (v368 == 2)
        {
          v387 = *(v252 + 9);
          if (v387)
          {
            v388 = v252;
            v391 = v252 + 80;
            v389 = *(v252 + 10);
            v390 = *(v391 + 1);
            swift_unknownObjectRetain();
            v392 = v597;
            v393 = v389;
            v252 = v388;
            v394 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v595, v598, v597, v387, v393, v390);
            swift_unknownObjectRelease();
          }

          else
          {
            v394 = 0;
            v392 = v597;
          }

          v396 = *(v252 + 24);
          v684 = *(v252 + 40);
          v685 = *(v252 + 56);
          v683 = v396;
          v680 = *(v252 + 24);
          v681 = *(v252 + 40);
          v682 = *(v252 + 56);
          BigString.startIndex.getter();
          v395 = v252;
          v597 = v397;
          v586 = v398;
          v563 = v399;
          v760[0] = v683;
          v760[1] = v684;
          v761 = v685;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v760, &v617);
          v586 = v394;
          v563 = BigString.UTF8View.index(_:offsetBy:)();
          result = outlined destroy of BigString(&v683);
        }

        else
        {
          v677 = *(v252 + 24);
          v678 = *(v252 + 40);
          v679 = *(v252 + 56);
          v395 = v252;
          v586 = v677;
          swift_unknownObjectRetain();
          v563 = BigString.UTF8View.index(roundingDown:)();
          result = swift_unknownObjectRelease();
          v586 = (v369 >> 11);
          v392 = v597;
        }

        v400 = *(v395 + 9);
        v597 = *(v395 + 10);
        v401 = *(v395 + 12);
        v402 = v595;
        *&v617 = v595;
        *(&v617 + 1) = v598;
        *&v618[0] = v392;
        if (__OFADD__(v596, 1))
        {
          goto LABEL_329;
        }

        if (v595 != v401)
        {
          goto LABEL_331;
        }

        ++v596;
        if (v392)
        {
          v403 = *(v392 + 24 * ((v598 >> ((4 * *(v392 + 18) + 8) & 0x3C)) & 0xF) + 24);
          v384 = __OFADD__(v586, v403);
          v404 = &v586[v403];
          if (v384)
          {
            goto LABEL_337;
          }

          v586 = v404;
          if (!v400)
          {
            goto LABEL_328;
          }

          v405 = v392;
          result = swift_unknownObjectRetain();
        }

        else
        {
          v405 = 0;
          swift_unknownObjectRetain();
          v406 = specialized Rope._Node.subscript.getter(v598, v400);
          v559 = v407;

          if (__OFADD__(v586, v406))
          {
            goto LABEL_349;
          }

          v586 += v406;
          if (!v400)
          {
            goto LABEL_328;
          }
        }

        if (v598 >= (((-15 << ((4 * *(v400 + 18) + 8) & 0x3C)) - 1) & *(v400 + 18) | (*(v400 + 16) << ((4 * *(v400 + 18) + 8) & 0x3C))))
        {
          goto LABEL_328;
        }

        if (v405 && (v408 = v405, v409 = (4 * *(v405 + 18) + 8) & 0x3C, v410 = ((v598 >> v409) & 0xF) + 1, v410 < *(v408 + 16)))
        {
          swift_unknownObjectRelease();
          v411 = (v410 << v409) | ((-15 << v409) - 1) & v598;
        }

        else
        {
          if ((specialized Rope._Node.formSuccessor(of:)(&v617, v400) & 1) == 0)
          {
            v412 = *(v400 + 18);
            v413 = *(v400 + 16);
            swift_unknownObjectRelease();
            *&v617 = v402;
            *&v598 = ((-15 << ((4 * v412 + 8) & 0x3C)) - 1) & v412 | (v413 << ((4 * v412 + 8) & 0x3C));
            *(&v617 + 1) = v598;
            *&v618[0] = 0;
            goto LABEL_200;
          }

          swift_unknownObjectRelease();
          v411 = *(&v617 + 1);
        }

        *&v598 = v411;
LABEL_200:
        v595 = v617;
        v597 = *&v618[0];
        if ((v658 & 1) == 0)
        {
          v425 = v590;
          RangeSet.ranges.getter();
          v426 = v601;
          RangeSet.Ranges.subscript.getter();
          v423 = v569;
          result = (v569)(v425, v426);
          v424 = *&v618[1];
          goto LABEL_214;
        }

        v564(v576, v567 + *(v573 + 24), v375);
        if (v585 == 2)
        {
          v414 = v563;
        }

        else
        {
          v414 = v565;
        }

        v415 = v590;
        RangeSet.ranges.getter();
        v416 = v601;
        v417 = RangeSet.Ranges.count.getter();
        result = (v569)(v415, v416);
        if (v417 < 1)
        {
          goto LABEL_321;
        }

        v418 = 0;
        v419 = v414 >> 10;
        while (1)
        {
          if (__OFADD__(v418, v417))
          {
            goto LABEL_323;
          }

          v367 = (v418 + v417) / 2;
          v420 = v590;
          RangeSet.ranges.getter();
          v421 = v601;
          RangeSet.Ranges.subscript.getter();
          v422 = v420;
          v423 = v569;
          result = (v569)(v422, v421);
          if (v419 < v617 >> 10)
          {
            v417 = (v418 + v417) / 2;
          }

          else
          {
            v424 = *&v618[1];
            if (v419 < *&v618[1] >> 10)
            {
              v375 = v600;
              result = (v588)(v576, v600);
LABEL_214:
              if (v586 >= (v424 >> 11))
              {
                v384 = __OFADD__(v367++, 1);
                if (v384)
                {
                  goto LABEL_345;
                }

                v431 = v567;
                v432 = v590;
                RangeSet.ranges.getter();
                v433 = v601;
                v434 = RangeSet.Ranges.count.getter();
                v423(v432, v433);
                if (v367 == v434)
                {
                  v372 = v431[15];
                  v435 = v431[16];
                  v371 = v431[18];
                  *&v598 = v431[17];
                  v436 = v431[19];
                  v583 = v431[20];
                  v368 = v431[22];
                  v580 = v431[21];
                  v254 = v431[23];
                  v373 = v431[26];
                  v367 = v431[27];
                  v257 = v254;
                  result = v373;
                  v248 = v372;
                  v366 = *(v431 + 224);
                  v369 = v436;
                  v374 = v435;
                  v375 = v600;
                  v252 = v584;
                  v253 = v556;
                  v255 = v557;
                  v383 = v593;
                  goto LABEL_145;
                }

                RangeSet.ranges.getter();
                v437 = v601;
                RangeSet.Ranges.subscript.getter();
                v423(v432, v437);
                v585 = *(&v618[0] + 1);
                v583 = *&v618[0];
                v586 = *(&v617 + 1);
                v438 = *(v584 + 9);
                v439 = *(v584 + 10);
                v441 = *(v584 + 11);
                v440 = *(v584 + 12);
                v442 = v617;
                v443 = v617 >> 11;
                swift_unknownObjectRetain();
                result = specialized Rope.find<A>(at:in:preferEnd:)(v443, 0, v438, v439, v441, v440);
                v597 = v445;
                *&v598 = v444;
                v595 = v446;
                if (result != v440)
                {
                  goto LABEL_354;
                }

                v447 = v440;
                if (v438)
                {
                  v596 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v440, v598, v597, v438, v439);
                  result = swift_unknownObjectRelease();
                }

                else
                {
                  v596 = 0;
                }

                v448 = *(v584 + 40);
                v674 = *(v584 + 24);
                v675 = v448;
                v676 = *(v584 + 56);
                if (!__OFSUB__(0, v595))
                {
                  swift_unknownObjectRetain();
                  v449 = v442;
                  v450 = v585;
                  v570 = BigString.UTF8View.index(_:offsetBy:)();
                  v583 = v451;
                  v580 = v452;
                  v368 = v453;
                  swift_unknownObjectRelease();
                  v373 = v450;
                  v254 = v449;
                  v366 = 0;
                  v375 = v600;
                  v252 = v584;
                  v253 = v556;
                  v255 = v557;
                  v257 = v579;
                  v383 = v593;
                  v248 = v571;
                  result = v572;
                  v372 = v596;
                  v371 = v597;
                  v374 = v447;
                  v369 = v570;
                  goto LABEL_145;
                }
              }

              else
              {
                if (v562 == 2)
                {
                  v376 = *(v584 + 24);
                  v377 = *(v584 + 56);
                  v672 = *(v584 + 40);
                  v673 = v377;
                  v378 = *(v584 + 40);
                  v668 = *(v584 + 24);
                  v669 = v378;
                  v670 = *(v584 + 56);
                  v671 = v376;
                  BigString.startIndex.getter();
                  v585 = v379;
                  v762[0] = v671;
                  v762[1] = v672;
                  v763 = v673;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(v762, &v617);
                  v369 = BigString.UTF8View.index(_:offsetBy:)();
                  v583 = v380;
                  v580 = v381;
                  v368 = v382;
                  outlined destroy of BigString(&v671);
                  goto LABEL_144;
                }

                v427 = *(v584 + 40);
                v665 = *(v584 + 24);
                v666 = v427;
                v667 = *(v584 + 56);
                if (!__OFSUB__(v586, v561))
                {
                  swift_unknownObjectRetain();
                  v369 = BigString.UTF8View.index(_:offsetBy:)();
                  v583 = v428;
                  v580 = v429;
                  v368 = v430;
                  swift_unknownObjectRelease();
LABEL_144:
                  v374 = v595;
                  v372 = v596;
                  v371 = v597;
                  v366 = 0;
                  v254 = v369;
                  v373 = v368;
                  v252 = v584;
                  v253 = v556;
                  v255 = v557;
                  v257 = v579;
                  v383 = v593;
                  v248 = v571;
                  result = v572;
LABEL_145:
                  v384 = __OFADD__(v383, 1);
                  v250 = v383 + 1;
                  if (!v384)
                  {
                    goto LABEL_146;
                  }

LABEL_335:
                  __break(1u);
LABEL_336:
                  __break(1u);
LABEL_337:
                  __break(1u);
LABEL_338:
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  __break(1u);
LABEL_342:
                  __break(1u);
LABEL_343:
                  __break(1u);
LABEL_344:
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  __break(1u);
LABEL_348:
                  __break(1u);
LABEL_349:
                  __break(1u);
LABEL_350:
                  __break(1u);
LABEL_351:
                  __break(1u);
LABEL_352:
                  __break(1u);
                }

                __break(1u);
LABEL_354:
                __break(1u);
              }

              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
              return result;
            }

            v418 = v367 + 1;
          }

          if (v418 >= v417)
          {
            goto LABEL_321;
          }
        }
      }

      if (v254 >> 10 >= v257 >> 10)
      {
        goto LABEL_351;
      }
    }

    if ((v386 & 1) == 0)
    {
      if (v373 == 2)
      {
        goto LABEL_361;
      }

      if (v560 > v254 >> 10)
      {
        goto LABEL_347;
      }
    }

    goto LABEL_171;
  }

  v260 = v256 - v253;
  if (__OFSUB__(v256, v253))
  {
    __break(1u);
    goto LABEL_228;
  }

  v261 = v251[22];
  if (v258 == 2)
  {
    v262 = v261 != 2;
  }

  else
  {
    v262 = v261 == 2 || (v257 ^ v251[19]) > 0x3FF;
  }

  v250 = (v260 + v262);
  if (__OFADD__(v260, v262))
  {
LABEL_228:
    __break(1u);
LABEL_229:
    v571 = v248;
    v572 = result;
    v593 = v250;
    v579 = v257;
    v556 = v253;
    v557 = v255;
    v584 = v252;
    v454 = 0;
    v455 = v566[112];
    v456 = *(v566 + 12);
    v457 = *(v566 + 13);
    v458 = *(v566 + 8);
    v459 = *(v566 + 9);
    v570 = *(v566 + 7);
    v460 = *(v566 + 5);
    v576 = *(v566 + 6);
    v597 = *(v566 + 4);
    v546 = v254;
    v547 = v225 >> 10;
    v554 = (v459 >> 10);
    v555 = v456;
    v548 = v589 + 8;
    v549 = v249;
    v461 = v219;
    v462 = v456;
    v558 = v249;
    v463 = v237;
    v464 = *(v566 + 2);
    *&v598 = *(v566 + 3);
    v596 = v464;
    v465 = *(&v598 + 1);
    v551 = v237;
    while (1)
    {
      LOBYTE(v658) = v455;
      if (v461 >= v237 && (v237 < v461 || v549 == 2 || v462 != 2 && v459 >> 10 >= v547))
      {
        v247 = v566;
        v251 = v567;
        v296 = v582;
        v252 = v584;
        v254 = v546;
        v253 = v556;
        v255 = v557;
        v257 = v579;
        v248 = v571;
        result = v572;
        if (v593 == v454)
        {
          goto LABEL_104;
        }

LABEL_139:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v247, type metadata accessor for AttributedString.Runs);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v251, type metadata accessor for AttributedString.Runs);

LABEL_140:
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
        return 0;
      }

      if (v461 < v219)
      {
        goto LABEL_326;
      }

      v472 = v219 < v461 || v555 == 2;
      v473 = v472;
      if (!v472)
      {
        if (v462 == 2)
        {
          goto LABEL_365;
        }

        if (v554 > v459 >> 10)
        {
          goto LABEL_341;
        }
      }

      if (v461 >= v463)
      {
        if (v463 < v461)
        {
          goto LABEL_343;
        }

        if (v558 == 2)
        {
          goto LABEL_367;
        }

        if (v462 == 2)
        {
          if (!v473)
          {
            goto LABEL_362;
          }

          goto LABEL_258;
        }

        if (v459 >> 10 >= v225 >> 10)
        {
          goto LABEL_352;
        }
      }

      if ((v473 & 1) == 0)
      {
        if (v462 == 2)
        {
          goto LABEL_362;
        }

        if (v554 > v459 >> 10)
        {
          goto LABEL_348;
        }
      }

LABEL_258:
      if (v463 < v461)
      {
        goto LABEL_330;
      }

      if (v461 >= v463 && v462 != 2)
      {
        if (v558 == 2)
        {
          goto LABEL_368;
        }

        if (v225 >> 10 < v459 >> 10)
        {
          goto LABEL_344;
        }
      }

      v560 = v459;
      if (v597 == 1 || v596 != *(v465 + 96))
      {
        goto LABEL_360;
      }

      v583 = v454;
      v561 = v460;
      v562 = v463;
      v563 = v458;
      v585 = v462;
      v565 = (v460 >> 11);
      if (v458 == 2)
      {
        v474 = *(v465 + 72);
        if (v474)
        {
          v476 = *(v465 + 80);
          v475 = *(v465 + 88);
          v477 = v465;
          swift_unknownObjectRetain();
          v478 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v596, v598, v597, v474, v476, v475);
          swift_unknownObjectRelease();
          v465 = v477;
        }

        else
        {
          v478 = 0;
        }

        v480 = *(v465 + 24);
        v705 = *(v465 + 40);
        v706 = *(v465 + 56);
        v704 = v480;
        v701 = *(v465 + 24);
        v702 = *(v465 + 40);
        v703 = *(v465 + 56);
        v479 = v465;
        v595 = BigString.startIndex.getter();
        v589 = v481;
        v586 = v482;
        v756[0] = v704;
        v756[1] = v705;
        v757 = v706;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v756, &v617);
        v586 = v478;
        v559 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v704);
      }

      else
      {
        v698 = *(v465 + 24);
        v699 = *(v465 + 40);
        v700 = *(v465 + 56);
        v595 = v698;
        v479 = v465;
        swift_unknownObjectRetain();
        v559 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v586 = v565;
      }

      v483 = v479[9];
      v595 = v479[10];
      v484 = v479[12];
      v589 = v479[11];
      v485 = v596;
      v486 = v597;
      *&v617 = v596;
      *(&v617 + 1) = v598;
      *&v618[0] = v597;
      v384 = __OFADD__(v461, 1);
      v487 = v461 + 1;
      if (v384)
      {
        goto LABEL_333;
      }

      if (v596 != v484)
      {
LABEL_334:
        __break(1u);
        goto LABEL_335;
      }

      v580 = v487;
      if (v597)
      {
        v488 = *(v597 + 24 * ((v598 >> ((4 * *(v597 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v489 = &v586[v488];
        if (__OFADD__(v586, v488))
        {
          goto LABEL_338;
        }

        if (!v483)
        {
          goto LABEL_332;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v490 = specialized Rope._Node.subscript.getter(v598, v483);
        v550 = v491;

        v384 = __OFADD__(v586, v490);
        v489 = &v586[v490];
        if (v384)
        {
          goto LABEL_350;
        }

        if (!v483)
        {
          goto LABEL_332;
        }
      }

      if (v598 >= (((-15 << ((4 * *(v483 + 18) + 8) & 0x3C)) - 1) & *(v483 + 18) | (*(v483 + 16) << ((4 * *(v483 + 18) + 8) & 0x3C))))
      {
        goto LABEL_332;
      }

      v586 = v489;
      if (v486)
      {
        v492 = v486;
        v493 = (4 * *(v486 + 18) + 8) & 0x3C;
        v494 = ((v598 >> v493) & 0xF) + 1;
        if (v494 < *(v492 + 16))
        {
          swift_unknownObjectRelease();
          v495 = (v494 << v493) | ((-15 << v493) - 1) & v598;
LABEL_285:
          *&v598 = v495;
          goto LABEL_287;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v617, v483))
      {
        swift_unknownObjectRelease();
        v495 = *(&v617 + 1);
        goto LABEL_285;
      }

      v496 = *(v483 + 18);
      v497 = *(v483 + 16);
      swift_unknownObjectRelease();
      *&v617 = v485;
      *&v598 = ((-15 << ((4 * v496 + 8) & 0x3C)) - 1) & v496 | (v497 << ((4 * v496 + 8) & 0x3C));
      *(&v617 + 1) = v598;
      *&v618[0] = 0;
LABEL_287:
      v596 = v617;
      v597 = *&v618[0];
      if (v658)
      {
        v564(v575, &v566[*(v573 + 24)], v600);
        if (v585 == 2)
        {
          v498 = v559;
        }

        else
        {
          v498 = v560;
        }

        v499 = v590;
        RangeSet.ranges.getter();
        v500 = v601;
        v501 = RangeSet.Ranges.count.getter();
        result = (v569)(v499, v500);
        if (v501 < 1)
        {
          goto LABEL_322;
        }

        v502 = 0;
        v503 = v498 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v502, v501))
            {
              goto LABEL_324;
            }

            v504 = (v502 + v501) / 2;
            v505 = v590;
            RangeSet.ranges.getter();
            v506 = v601;
            RangeSet.Ranges.subscript.getter();
            result = (v569)(v505, v506);
            if (v503 >= v617 >> 10)
            {
              break;
            }

            v501 = (v502 + v501) / 2;
            if (v502 >= v504)
            {
              goto LABEL_322;
            }
          }

          v457 = (v502 + v501) / 2;
          v507 = *&v618[1];
          if (v503 < *&v618[1] >> 10)
          {
            break;
          }

          v502 = v504 + 1;
          if (v504 + 1 >= v501)
          {
            goto LABEL_322;
          }
        }

        result = (v588)(v575, v600);
        v237 = v551;
      }

      else
      {
        v508 = v590;
        RangeSet.ranges.getter();
        v509 = v601;
        RangeSet.Ranges.subscript.getter();
        result = (v569)(v508, v509);
        v507 = *&v618[1];
      }

      if (v586 >= (v507 >> 11))
      {
        v384 = __OFADD__(v457++, 1);
        if (v384)
        {
          goto LABEL_346;
        }

        v513 = v566;
        v514 = v590;
        RangeSet.ranges.getter();
        v515 = v601;
        v516 = RangeSet.Ranges.count.getter();
        result = (v569)(v514, v515);
        if (v457 == v516)
        {
          v517 = *(v513 + 120);
          v518 = *(v513 + 128);
          v519 = *(v513 + 144);
          *&v598 = *(v513 + 136);
          v596 = v518;
          v597 = v519;
          v460 = *(v513 + 152);
          v576 = *(v513 + 160);
          v458 = *(v513 + 176);
          v570 = *(v513 + 168);
          v459 = *(v513 + 184);
          v462 = *(v513 + 208);
          v457 = *(v513 + 216);
          v225 = v459;
          v558 = v462;
          v463 = v517;
          v455 = *(v513 + 224);
          v461 = v517;
          v465 = *(&v598 + 1);
          v471 = v583;
        }

        else
        {
          v520 = v590;
          RangeSet.ranges.getter();
          v521 = v601;
          RangeSet.Ranges.subscript.getter();
          v569(v520, v521);
          v589 = *(&v617 + 1);
          v585 = *(&v618[0] + 1);
          v586 = *&v618[0];
          v522 = *(*(&v598 + 1) + 72);
          v523 = *(*(&v598 + 1) + 80);
          v525 = *(*(&v598 + 1) + 88);
          v524 = *(*(&v598 + 1) + 96);
          v526 = v617;
          v527 = v617 >> 11;
          swift_unknownObjectRetain();
          result = specialized Rope.find<A>(at:in:preferEnd:)(v527, 0, v522, v523, v525, v524);
          v597 = v529;
          *&v598 = v528;
          v595 = v530;
          v596 = v524;
          if (result != v524)
          {
            goto LABEL_357;
          }

          if (v522)
          {
            v580 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v596, v598, v597, v522, v523);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v580 = 0;
          }

          v695 = *(*(&v598 + 1) + 24);
          v696 = *(*(&v598 + 1) + 40);
          v697 = *(*(&v598 + 1) + 56);
          if (__OFSUB__(0, v595))
          {
            goto LABEL_358;
          }

          v531 = *(&v598 + 1);
          swift_unknownObjectRetain();
          v459 = v526;
          v532 = v585;
          v561 = BigString.UTF8View.index(_:offsetBy:)();
          v576 = v533;
          v570 = v534;
          v458 = v535;
          result = swift_unknownObjectRelease();
          v462 = v532;
          v455 = 0;
          v471 = v583;
          v237 = v551;
          v461 = v580;
          v465 = v531;
          v460 = v561;
          v463 = v562;
        }
      }

      else
      {
        if (v563 == 2)
        {
          v466 = *(*(&v598 + 1) + 24);
          v693 = *(*(&v598 + 1) + 40);
          v694 = *(*(&v598 + 1) + 56);
          v692 = v466;
          v689 = *(*(&v598 + 1) + 24);
          v690 = *(*(&v598 + 1) + 40);
          v691 = *(*(&v598 + 1) + 56);
          BigString.startIndex.getter();
          v595 = v467;
          v758[0] = v692;
          v758[1] = v693;
          v759 = v694;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v758, &v617);
          v460 = BigString.UTF8View.index(_:offsetBy:)();
          v576 = v468;
          v570 = v469;
          v458 = v470;
          result = outlined destroy of BigString(&v692);
        }

        else
        {
          v686 = *(*(&v598 + 1) + 24);
          v687 = *(*(&v598 + 1) + 40);
          v688 = *(*(&v598 + 1) + 56);
          if (__OFSUB__(v586, v565))
          {
            goto LABEL_356;
          }

          swift_unknownObjectRetain();
          v460 = BigString.UTF8View.index(_:offsetBy:)();
          v576 = v510;
          v570 = v511;
          v458 = v512;
          result = swift_unknownObjectRelease();
        }

        v461 = v580;
        v455 = 0;
        v459 = v460;
        v462 = v458;
        v471 = v583;
        v463 = v562;
        v465 = *(&v598 + 1);
      }

      v384 = __OFADD__(v471, 1);
      v454 = v471 + 1;
      if (v384)
      {
        goto LABEL_336;
      }
    }
  }

  result = v251[26];
  v248 = v251[15];
  while (1)
  {
    v219 = v247[1];
    v237 = v247[15];
    v225 = v247[23];
    v249 = v247[26];
    if (*(v247 + *(v259 + 28)))
    {
      goto LABEL_229;
    }

    v293 = v237 - v219;
    if (!__OFSUB__(v237, v219))
    {
      break;
    }

    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    v247 = v566;
    v259 = v573;
    v254 = v546;
  }

  v247 = v566;
  v251 = v567;
  v294 = *(v566 + 22);
  v295 = (v225 ^ *(v566 + 19)) > 0x3FF;
  if (v294 == 2)
  {
    v295 = 1;
  }

  if (v249 == 2)
  {
    v295 = v294 != 2;
  }

  v296 = v582;
  if (__OFADD__(v293, v295))
  {
    goto LABEL_315;
  }

  if (v250 != (v293 + v295))
  {
    goto LABEL_139;
  }

LABEL_104:
  if (v253 != v248)
  {
    goto LABEL_114;
  }

  if (v255 == 2)
  {
    if (result != 2)
    {
      goto LABEL_114;
    }
  }

  else if (result == 2 || (v257 ^ v254) >= 0x400)
  {
LABEL_114:
    v304 = AttributedString.Runs._isPartial.getter();
    v305 = v577;
    if ((v304 & 1) != 0 || (AttributedString.Runs._isPartial.getter() & 1) != 0 || (v724[12] = *(v252 + 24), v724[13] = *(v252 + 40), v724[14] = *(v252 + 56), v306 = BigString.count.getter(), v724[9] = *(*(&v598 + 1) + 24), v724[10] = *(*(&v598 + 1) + 40), v724[11] = *(*(&v598 + 1) + 56), v385 = v306 == BigString.count.getter(), v305 = v577, v385))
    {
      v584 = v252;
      RangeSet.ranges.getter();
      v307 = v305;
      v308 = v601;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v658 == v617)
      {
        v569(v305, v308);
      }

      else
      {
        v309 = dispatch thunk of Collection.subscript.read();
        v311 = v310[1];
        *&v598 = *v310;
        v593 = v311;
        v312 = v310[2];
        v595 = v310[3];
        v596 = v312;
        v309(&v617, 0);
        v313 = v569;
        v569(v307, v308);
        RangeSet.ranges.getter();
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v639 != v617)
        {
          v314 = dispatch thunk of Collection.subscript.read();
          v316 = v315[1];
          v590 = *v315;
          v600 = v316;
          v317 = v315[3];
          v599 = v315[2];
          v597 = v317;
          v314(&v617, 0);
          v313(v296, v308);
          v318 = v568;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v251, v568, type metadata accessor for AttributedString.Runs);
          v319 = v578;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v318, v578, type metadata accessor for AttributedString.Runs);
          v320 = v574;
          v321 = (v319 + *(v574 + 36));
          v322 = *(v318 + 72);
          v630 = *(v318 + 56);
          v631 = v322;
          v632[0] = *(v318 + 88);
          *(v632 + 10) = *(v318 + 98);
          v323 = *(v318 + 24);
          v627 = *(v318 + 8);
          v628 = v323;
          v629 = *(v318 + 40);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v318, type metadata accessor for AttributedString.Runs);
          v324 = v632[0];
          v321[4] = v631;
          v321[5] = v324;
          *(v321 + 90) = *(v632 + 10);
          v325 = v628;
          *v321 = v627;
          v321[1] = v325;
          v326 = v630;
          v321[2] = v629;
          v321[3] = v326;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v247, v318, type metadata accessor for AttributedString.Runs);
          v327 = v581;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v318, v581, type metadata accessor for AttributedString.Runs);
          v328 = (v327 + *(v320 + 36));
          v329 = *(v318 + 56);
          v330 = *(v318 + 88);
          v637 = *(v318 + 72);
          v638[0] = v330;
          *(v638 + 10) = *(v318 + 98);
          v331 = *(v318 + 24);
          v633 = *(v318 + 8);
          v634 = v331;
          v635 = *(v318 + 40);
          v636 = v329;
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v318, type metadata accessor for AttributedString.Runs);
          v332 = v638[0];
          v328[4] = v637;
          v328[5] = v332;
          *(v328 + 90) = *(v638 + 10);
          v333 = v634;
          *v328 = v633;
          v328[1] = v333;
          v334 = v636;
          v328[2] = v635;
          v328[3] = v334;
          v335 = v595;
          v336 = v596;
          while (1)
          {
            specialized IndexingIterator.next()(v611);
            v337 = v611[0];
            v338 = v611[1];
            v339 = v611[2];
            v340 = v614;
            specialized IndexingIterator.next()(&v603);
            v341 = v603;
            v342 = v604;
            v622 = v606;
            v623 = v607;
            v625 = v609;
            v626 = v610;
            *&v617 = v337;
            *(&v617 + 1) = v338;
            *(v618 + 8) = v612;
            *(&v618[1] + 1) = v613;
            *&v618[0] = v339;
            *&v619[0] = v340;
            *(&v619[1] + 8) = v616;
            *(v619 + 8) = v615;
            *(&v619[2] + 1) = v603;
            v620 = v604;
            v621 = v605;
            v624 = v608;
            if (!v337)
            {
              break;
            }

            if (!v603)
            {
              outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
              outlined destroy of TermOfAddress?(v581, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
              v365 = v319;
              goto LABEL_137;
            }

            v589 = v608;
            v594 = v605;

            if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v337, v341) & 1) == 0)
            {

LABEL_135:
              outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
LABEL_136:
              outlined destroy of TermOfAddress?(v581, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
              v365 = v578;
LABEL_137:
              outlined destroy of TermOfAddress?(v365, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
LABEL_138:
              v247 = v566;
              v251 = v567;
              goto LABEL_139;
            }

            v343 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v338, v342);

            if ((v343 & 1) == 0)
            {
              goto LABEL_135;
            }

            v344 = v584;
            v724[6] = *(v584 + 24);
            v724[7] = *(v584 + 40);
            v724[8] = *(v584 + 56);
            swift_unknownObjectRetain();
            v345 = v335;
            v346 = v593;
            v595 = v345;
            v601 = BigString.UTF8View.index(_:offsetBy:)();
            v587 = v348;
            v588 = v347;
            v596 = v349;
            swift_unknownObjectRelease();
            v350 = *(&v598 + 1);
            v724[3] = *(*(&v598 + 1) + 24);
            v724[4] = *(*(&v598 + 1) + 40);
            v724[5] = *(*(&v598 + 1) + 56);
            swift_unknownObjectRetain();
            v351 = v590;
            v594 = BigString.UTF8View.index(_:offsetBy:)();
            v589 = v352;
            v585 = v354;
            v586 = v353;
            result = swift_unknownObjectRelease();
            v724[0] = *(v344 + 24);
            v724[1] = *(v344 + 40);
            v724[2] = *(v344 + 56);
            if (v601 >> 10 < v598 >> 10)
            {
              __break(1u);
LABEL_320:
              __break(1u);
LABEL_321:
              __break(1u);
LABEL_322:
              __break(1u);
LABEL_323:
              __break(1u);
LABEL_324:
              __break(1u);
LABEL_325:
              __break(1u);
LABEL_326:
              __break(1u);
LABEL_327:
              __break(1u);
LABEL_328:
              __break(1u);
LABEL_329:
              __break(1u);
LABEL_330:
              __break(1u);
LABEL_331:
              __break(1u);
LABEL_332:
              __break(1u);
LABEL_333:
              __break(1u);
              goto LABEL_334;
            }

            v716 = v598;
            v717 = v346;
            v718 = v336;
            v719 = v595;
            v720 = v601;
            v336 = v587;
            v355 = v588;
            v721 = v588;
            v722 = v587;
            v723 = v596;
            v356 = *(v344 + 24);
            v753 = *(v344 + 7);
            v752[1] = *(v344 + 40);
            v752[0] = v356;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v752, v602);
            BigString.subscript.getter();
            result = outlined destroy of BigString(v724);
            v357 = *(v350 + 24);
            v715[1] = *(v350 + 40);
            v715[2] = *(v350 + 56);
            v715[0] = v357;
            v358 = v594;
            if (v594 >> 10 < v351 >> 10)
            {
              goto LABEL_320;
            }

            v359 = v355;
            v707 = v351;
            v708 = v600;
            v709 = v599;
            v710 = v597;
            v711 = v594;
            v360 = v589;
            v712 = v589;
            v362 = v585;
            v361 = v586;
            v713 = v586;
            v714 = v585;
            v363 = *(v350 + 24);
            v755 = *(v350 + 56);
            v754[1] = *(v350 + 40);
            v754[0] = v363;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v754, v602);
            BigString.subscript.getter();
            outlined destroy of BigString(v715);
            v364 = MEMORY[0x1865CA260](&v651, &v658);
            outlined destroy of BigSubstring(&v651);
            outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
            outlined destroy of BigSubstring(&v658);
            if ((v364 & 1) == 0)
            {
              goto LABEL_136;
            }

            v590 = v358;
            v600 = v360;
            v599 = v361;
            v597 = v362;
            *&v598 = v601;
            v593 = v359;
            v335 = v596;
            v319 = v578;
          }

          outlined destroy of TermOfAddress?(v581, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          outlined destroy of TermOfAddress?(v319, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          outlined destroy of TermOfAddress?(&v617, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
          if (!v341)
          {
            v247 = v566;
            v251 = v567;
            goto LABEL_112;
          }

          goto LABEL_138;
        }

        v313(v296, v308);
      }
    }

    goto LABEL_139;
  }

LABEL_112:
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v247, type metadata accessor for AttributedString.Runs);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v251, type metadata accessor for AttributedString.Runs);

  outlined destroy of String.LocalizationValue.FormatArgument.Storage(v641);
  return v553 == v552;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 105))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 104);
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

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 105))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 104);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for String.LocalizationValue.FormatArgument.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    v2 = a2 - 7;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  a1[2] = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  result = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1()
{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2()
{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2;
  if (!lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Date> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
    lazy protocol witness table accessor for type Date and conformance Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
    lazy protocol witness table accessor for type Date and conformance Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
    lazy protocol witness table accessor for type Date and conformance Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Date> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [LocalizedStringResource] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation23LocalizedStringResourceVGMd, &_sSay10Foundation23LocalizedStringResourceVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSQ_pMd, &_sSQ_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(v8, v11);
    v3 = v12;
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = openEquatable #1 <A>(_:) in static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(v5, a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of TermOfAddress?(v8, &_sSQ_pSgMd, &_sSQ_pSgMR);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.Storage.== infix(_:_:)(uint64_t a1, char *a2)
{
  *(&v595 + 1) = a1;
  v596 = a2;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  MEMORY[0x1EEE9AC00](v571);
  v578 = &v533 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v575 = &v533 - v4;
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v591 = *(v598 - 8);
  MEMORY[0x1EEE9AC00](v598);
  v579 = &v533 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v574 = &v533 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v577 = &v533 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v581 = &v533 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v576 = &v533 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v580 = &v533 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v587 = &v533 - v17;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v582);
  v593 = &v533 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v592 = &v533 - v20;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v586 = *(v597 - 8);
  MEMORY[0x1EEE9AC00](v597);
  v572 = &v533 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v573 = &v533 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v590 = &v533 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v583 = &v533 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v533 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v533 - v32;
  v34 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v533 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v533 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v533 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v533 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v533 - v47;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(*(&v595 + 1), v638);
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v596, &v640);
  if (v639 > 2u)
  {
    if (v639 > 4u)
    {
      if (v639 == 5)
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
        v91 = *&v615[0];
        if (v647 == 5)
        {
          LODWORD(v597) = BYTE8(v614);
          v92 = BYTE9(v614);
          v598 = *(&v615[0] + 1);
          v93 = BYTE8(v640);
          v94 = BYTE9(v640);
          v95 = v641;
          v96 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(v614, v640);

          if (v96)
          {
            if (v92)
            {
              v97 = 256;
            }

            else
            {
              v97 = 0;
            }

            if (v94)
            {
              v98 = 256;
            }

            else
            {
              v98 = 0;
            }

            v49 = _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(v97 | v597, v91, v598, v98 | v93, v95, *(&v95 + 1));
          }

          else
          {
            v49 = 0;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_136;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
        if (v647 == 6)
        {
          v49 = v614 == v640;
          goto LABEL_136;
        }
      }
    }

    else if (v639 == 3)
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
      if (v647 == 3)
      {
        v657 = v615[1];
        v658 = v616[0];
        v659 = v616[1];
        v660 = v616[2];
        v655 = v614;
        v656 = v615[0];
        v650 = v642;
        v651 = v643;
        v652 = v644;
        v653 = v645;
        v648 = v640;
        v649 = v641;
        v49 = (*&v615[0])(&v648);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v648);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v655);
        goto LABEL_136;
      }

      outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v614);
    }

    else
    {
      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
      v659 = v616[1];
      v660 = v616[2];
      v661 = v617;
      v655 = v614;
      v656 = v615[0];
      v657 = v615[1];
      v658 = v616[0];
      if (v647 == 4)
      {
        v652 = v644;
        v653 = v645;
        v648 = v640;
        v649 = v641;
        v650 = v642;
        v651 = v643;
        v634 = v616[1];
        v635[0] = v616[2];
        v630 = v614;
        v631 = v615[0];
        v632 = v615[1];
        v633 = v616[0];
        v628 = v644;
        v629[0] = v645;
        v624 = v640;
        v625 = v641;
        v654 = v646;
        *&v635[1] = v617;
        *&v629[1] = v646;
        v626 = v642;
        v627 = v643;
        v49 = static LocalizedStringResource.== infix(_:_:)(&v630, &v624);
        outlined destroy of LocalizedStringResource(&v648);
        outlined destroy of LocalizedStringResource(&v655);
        goto LABEL_136;
      }

      outlined destroy of LocalizedStringResource(&v655);
    }

    goto LABEL_35;
  }

  v585 = v30;
  v567 = v33;
  v568 = v39;
  v569 = v45;
  v570 = v34;
  v565 = v36;
  v50 = v591;
  if (!v639)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
    if (!v647)
    {
      outlined init with take of Any(&v614, &v655);
      outlined init with take of Any(&v640, &v648);
      v99 = *(&v656 + 1);
      v100 = __swift_project_boxed_opaque_existential_1(&v655, *(&v656 + 1));
      *(&v631 + 1) = v99;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v630);
      (*(*(v99 - 8) + 16))(boxed_opaque_existential_0, v100, v99);
      v102 = *(&v649 + 1);
      v103 = __swift_project_boxed_opaque_existential_1(&v648, *(&v649 + 1));
      *(&v625 + 1) = v102;
      v104 = __swift_allocate_boxed_opaque_existential_0(&v624);
      (*(*(v102 - 8) + 16))(v104, v103, v102);
      v49 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(&v630, &v624);
      __swift_destroy_boxed_opaque_existential_1(&v624);
      __swift_destroy_boxed_opaque_existential_1(&v630);
      __swift_destroy_boxed_opaque_existential_1(&v648);
      __swift_destroy_boxed_opaque_existential_1(&v655);
      goto LABEL_136;
    }

    __swift_destroy_boxed_opaque_existential_1(&v614);
    goto LABEL_35;
  }

  if (v639 != 1)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, &v614);
    if (v647 == 2)
    {
      v657 = v615[1];
      v658 = v616[0];
      v659 = v616[1];
      v660 = v616[2];
      v655 = v614;
      v656 = v615[0];
      v650 = v642;
      v651 = v643;
      v652 = v644;
      v653 = v645;
      v648 = v640;
      v649 = v641;
      v49 = (*&v615[0])(&v648);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v648);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v655);
      goto LABEL_136;
    }

    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v614);
    goto LABEL_35;
  }

  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v638, v637);
  v51 = v637[0];
  if (v647 != 1)
  {

LABEL_35:
    outlined destroy of TermOfAddress?(v638, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMR);
    v49 = 0;
    return v49 & 1;
  }

  v563 = v42;
  v564 = v48;
  v549 = *(&v640 + 1);
  v52 = v640;
  v550 = v637[1];
  v746 = *(v637[0] + 24);
  v747 = *(v637[0] + 40);
  v748 = *(v637[0] + 56);
  v53 = BigString.startIndex.getter();
  *(&v595 + 1) = v55;
  v596 = v54;
  *&v595 = v56;
  v57 = BigString.endIndex.getter();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v743 = *(v52 + 24);
  v744 = *(v52 + 40);
  v589 = v52;
  v745 = *(v52 + 56);
  v64 = BigString.startIndex.getter();
  v559 = v65;
  v560 = v64;
  v557 = v67;
  v558 = v66;
  v68 = BigString.endIndex.getter();
  v555 = v69;
  v556 = v68;
  v553 = v71;
  v554 = v70;
  *&v614 = v53;
  *(&v614 + 1) = v596;
  *&v615[0] = *(&v595 + 1);
  *(&v615[0] + 1) = v595;
  *&v615[1] = v57;
  *(&v615[1] + 1) = v59;
  *&v616[0] = v61;
  *(&v616[0] + 1) = v63;
  v72 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v588 = v51;
  *v569 = v51;
  v562 = v72;
  RangeSet.init()();
  v73 = v587;
  RangeSet.ranges.getter();
  v74 = v592;
  v75 = v598;
  v551 = *(v50 + 16);
  v552 = v50 + 16;
  v551(v592, v73, v598);
  v76 = *(v582 + 36);
  v77 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v78 = *(v50 + 8);
  v591 = v50 + 8;
  v566 = v78;
  v78(v73, v75);
  v79 = v74;
  dispatch thunk of Collection.endIndex.getter();
  v80 = *(v74 + v76);
  v596 = v77;
  if (v80 != v614)
  {
    v584 = v76;
    do
    {
      v105 = dispatch thunk of Collection.subscript.read();
      v107 = v106[4];
      v108 = v106[7];
      *&v595 = v106[6];
      *(&v595 + 1) = v107;
      v594 = v108;
      v105(&v614, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v109 = v588;
      v740 = *(v588 + 24);
      v741 = *(v588 + 40);
      v742 = *(v588 + 56);
      swift_unknownObjectRetain();
      v110 = BigString.UnicodeScalarView.index(roundingDown:)();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      swift_unknownObjectRelease();
      v737 = *(v109 + 24);
      v738 = *(v109 + 40);
      v739 = *(v109 + 56);
      swift_unknownObjectRetain();
      v117 = BigString.UnicodeScalarView.index(roundingDown:)();
      v119 = v118;
      v121 = v120;
      v123 = v122;
      v75 = v598;
      swift_unknownObjectRelease();
      *&v614 = v110;
      *(&v614 + 1) = v112;
      *&v615[0] = v114;
      *(&v615[0] + 1) = v116;
      *&v615[1] = v117;
      *(&v615[1] + 1) = v119;
      *&v616[0] = v121;
      *(&v616[0] + 1) = v123;
      if ((v117 ^ v110) >= 0x400)
      {
        v124 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v124(&v655, 0);
      }

      v79 = v592;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v79 + v584) != v614);
  }

  outlined destroy of TermOfAddress?(v79, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v82 = v569;
  v81 = v570;
  v83 = *(v570 + 24);
  v84 = *(v586 + 16);
  v584 = v586 + 16;
  v561 = v84;
  v84(v569 + v83, v585, v597);
  v85 = v587;
  RangeSet.ranges.getter();
  v86 = RangeSet.Ranges.count.getter();
  v87 = v566;
  v566(v85, v75);
  v88 = *(v81 + 28);
  LODWORD(v548) = v86 > 1;
  *(v82 + v88) = v548;
  v89 = v580;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v655 == v614)
  {
    v90 = v89;
LABEL_43:
    v87(v90, v75);
    v131 = v587;
    v130 = v588;
    v132 = *(v588 + 72);
    v133 = v597;
    if (v132)
    {
      v594 = *(v132 + 18);
    }

    else
    {
      v594 = 0;
    }

    *(&v595 + 1) = *(v588 + 96);
    v734 = *(v588 + 24);
    v735 = *(v588 + 40);
    v736 = *(v588 + 56);
    v134 = BigString.startIndex.getter();
    v136 = v135;
    v138 = v137;
    v580 = v139;
    v140 = *(v130 + 72);
    *&v595 = *(v130 + 96);
    if (v140)
    {
      v592 = *(v140 + 18);
    }

    else
    {
      v592 = 0;
    }

    v141 = *(v586 + 8);
    v141(v585, v133);
    v585 = v141;
    v141(v567, v133);
    v731 = *(v130 + 24);
    v732 = *(v130 + 40);
    v733 = *(v130 + 56);
    v142 = BigString.startIndex.getter();
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = -1;
    v152 = v134;
    v153 = v134;
    v154 = v136;
    v155 = v136;
    v156 = v138;
    v157 = v138;
    v158 = v580;
    v159 = v580;
    v160 = v142;
    v161 = v143;
    v162 = v144;
    v163 = v145;
    v164 = -1;
    goto LABEL_52;
  }

  v125 = dispatch thunk of Collection.subscript.read();
  v127 = *v126;
  v546 = v126[1];
  v547 = v127;
  v128 = v126[2];
  v544 = v126[3];
  v545 = v128;
  v125(&v614, 0);
  v87(v89, v75);
  v129 = v576;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v90 = v129;
    goto LABEL_43;
  }

  v538 = v83;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v260 = dispatch thunk of Collection.subscript.read();
  v262 = v261[4];
  v580 = v261[5];
  v263 = v261[6];
  v264 = v261[7];
  v260(&v614, 0);
  v87(v129, v75);
  v265 = v588;
  AttributedString.Guts.findRun(at:)(v547, v544, &v614);
  v594 = *(&v614 + 1);
  *(&v595 + 1) = v614;
  v539 = *(&v615[0] + 1);
  v540 = *&v615[0];
  v576 = *(&v615[1] + 1);
  v266 = v75;
  v156 = *(&v616[0] + 1);
  v154 = *&v616[0];
  v158 = *&v616[1];
  v734 = *(v265 + 24);
  v735 = *(v265 + 40);
  v736 = *(v265 + 56);
  v267 = BigString.endIndex.getter();
  v542 = v263;
  v543 = v262;
  v541 = v264;
  if ((v267 ^ v262) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v262, v264, &v614);
    v592 = *(&v614 + 1);
    *&v595 = v614;
    v150 = *&v615[0];
    v536 = *(&v615[1] + 1);
    v537 = *(&v615[0] + 1);
    v534 = *(&v616[0] + 1);
    v535 = *&v616[0];
    v533 = *&v616[1];
    v294 = v587;
    v295 = v597;
    RangeSet.ranges.getter();
    v164 = RangeSet.Ranges.count.getter();
    v566(v294, v266);
    v296 = *(v586 + 8);
    v296(v585, v295);
    v585 = v296;
    v296(v567, v295);
    v131 = v294;
    v142 = v536;
    v149 = v537;
    v160 = v543;
    v159 = v544;
    v145 = v533;
    v144 = v534;
    v143 = v535;
    v151 = 0;
    v148 = v548;
    v155 = v546;
    v153 = v547;
    v157 = v545;
    v152 = v576;
    v161 = v580;
    v163 = v541;
    v162 = v542;
    v146 = v539;
    v147 = v540;
  }

  else
  {
    v268 = *(v265 + 72);
    if (v268)
    {
      v269 = *(v265 + 80);
    }

    else
    {
      v269 = 0;
    }

    v537 = v269;
    v270 = *(v265 + 96);
    v271 = swift_unknownObjectRetain();
    *&v595 = v270;
    v592 = specialized Rope._endPath.getter(v271);
    v272 = v567;
    if (v268)
    {
      swift_unknownObjectRelease();
    }

    v131 = v587;
    v273 = v597;
    RangeSet.ranges.getter();
    v274 = v598;
    v164 = RangeSet.Ranges.count.getter();
    v566(v131, v274);
    v275 = *(v586 + 8);
    v275(v585, v273);
    v585 = v275;
    v275(v272, v273);
    v151 = 0;
    v150 = 0;
    v162 = v542;
    v160 = v543;
    v142 = v543;
    v161 = v580;
    v143 = v580;
    v144 = v542;
    v147 = v540;
    v163 = v541;
    v145 = v541;
    v148 = v548;
    v155 = v546;
    v153 = v547;
    v159 = v544;
    v157 = v545;
    v152 = v576;
    v146 = v539;
    v149 = v537;
  }

LABEL_52:
  v165 = v569;
  v569[1] = v146;
  v165[2] = *(&v595 + 1);
  v165[3] = v594;
  v165[4] = v147;
  v165[5] = v152;
  v165[6] = v154;
  v165[7] = v156;
  v165[8] = v158;
  v165[9] = v153;
  v165[10] = v155;
  v165[11] = v157;
  v165[12] = v159;
  v165[13] = v151;
  *(v165 + 112) = 0;
  *(v165 + 113) = v148;
  v166 = v595;
  v165[15] = v149;
  v165[16] = v166;
  v165[17] = v592;
  v165[18] = v150;
  v165[19] = v142;
  v165[20] = v143;
  v165[21] = v144;
  v165[22] = v145;
  v165[23] = v160;
  v165[24] = v161;
  v165[25] = v162;
  v165[26] = v163;
  v165[27] = v164;
  *(v165 + 224) = 0;
  *(v165 + 225) = v148;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v165, v564, type metadata accessor for AttributedString.Runs);
  *&v614 = v560;
  *(&v614 + 1) = v559;
  *&v615[0] = v558;
  *(&v615[0] + 1) = v557;
  *&v615[1] = v556;
  *(&v615[1] + 1) = v555;
  *&v616[0] = v554;
  *(&v616[0] + 1) = v553;
  v167 = v589;

  RangeSet.init(_:)();
  *v568 = v167;
  RangeSet.init()();
  RangeSet.ranges.getter();
  v168 = v593;
  v169 = v598;
  v551(v593, v131, v598);
  v170 = *(v582 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v566(v131, v169);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v168 + v170) != v614)
  {
    v592 = v170;
    do
    {
      v179 = dispatch thunk of Collection.subscript.read();
      v181 = v180[4];
      *&v595 = v180[5];
      *(&v595 + 1) = v181;
      v594 = v180[6];
      v179(&v614, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v182 = v589;
      v728 = *(v589 + 24);
      v729 = *(v589 + 40);
      v730 = *(v589 + 56);
      swift_unknownObjectRetain();
      v183 = BigString.UnicodeScalarView.index(roundingDown:)();
      v185 = v184;
      v187 = v186;
      v189 = v188;
      swift_unknownObjectRelease();
      v725 = *(v182 + 24);
      v726 = *(v182 + 40);
      v727 = *(v182 + 56);
      swift_unknownObjectRetain();
      v190 = BigString.UnicodeScalarView.index(roundingDown:)();
      v192 = v191;
      v194 = v193;
      v196 = v195;
      swift_unknownObjectRelease();
      *&v614 = v183;
      *(&v614 + 1) = v185;
      *&v615[0] = v187;
      *(&v615[0] + 1) = v189;
      *&v615[1] = v190;
      *(&v615[1] + 1) = v192;
      *&v616[0] = v194;
      v169 = v598;
      *(&v616[0] + 1) = v196;
      if ((v190 ^ v183) >= 0x400)
      {
        v197 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v197(&v655, 0);
      }

      v168 = v593;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v168 + v592) != v614);
  }

  outlined destroy of TermOfAddress?(v168, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v171 = v570;
  v172 = *(v570 + 24);
  v173 = v568;
  v561(v568 + v172, v590, v597);
  v174 = v587;
  RangeSet.ranges.getter();
  v175 = RangeSet.Ranges.count.getter();
  v566(v174, v169);
  v176 = *(v171 + 28);
  LODWORD(v592) = v175 > 1;
  *(v173 + v176) = v592;
  v177 = v581;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v655 == v614)
  {
    v566(v177, v169);
    v178 = v589;
LABEL_61:
    v205 = *(v178 + 72);
    v206 = v597;
    v207 = v583;
    if (v205)
    {
      *(&v595 + 1) = *(v205 + 18);
    }

    else
    {
      *(&v595 + 1) = 0;
    }

    *&v595 = *(v178 + 96);
    v722 = *(v178 + 24);
    v723 = *(v178 + 40);
    v724 = *(v178 + 56);
    v208 = BigString.startIndex.getter();
    v210 = v209;
    v592 = v211;
    v213 = v212;
    v214 = *(v178 + 72);
    v594 = *(v178 + 96);
    v215 = v208;
    if (v214)
    {
      v593 = *(v214 + 18);
    }

    else
    {
      v593 = 0;
    }

    v216 = v585;
    (v585)(v590, v206);
    v216(v207, v206);
    v721[15] = *(v178 + 24);
    v721[16] = *(v178 + 40);
    v721[17] = *(v178 + 56);
    v220 = BigString.startIndex.getter();
    v221 = v217;
    v222 = v218;
    v223 = v219;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v229 = -1;
    v230 = v215;
    v231 = v210;
    v232 = v210;
    v233 = v592;
    v234 = v592;
    v235 = v213;
    v236 = v213;
    v237 = v220;
    v238 = -1;
    v239 = v568;
    v240 = *(&v595 + 1);
    goto LABEL_68;
  }

  v198 = dispatch thunk of Collection.subscript.read();
  v200 = *(v199 + 8);
  v569 = *v199;
  v582 = v200;
  v201 = *(v199 + 24);
  v580 = *(v199 + 16);
  v576 = v201;
  v198(&v614, 0);
  v202 = v566;
  v566(v177, v169);
  v203 = v577;
  RangeSet.ranges.getter();
  v204 = dispatch thunk of Collection.isEmpty.getter();
  v178 = v589;
  if (v204)
  {
    v202(v203, v169);
    goto LABEL_61;
  }

  v554 = v172;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BB0]);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v276 = dispatch thunk of Collection.subscript.read();
  v278 = v277[4];
  v581 = v277[5];
  v279 = v277[7];
  v567 = v277[6];
  v560 = v279;
  v276(&v614, 0);
  v566(v203, v169);
  v215 = v569;
  AttributedString.Guts.findRun(at:)(v569, v576, &v614);
  v595 = v614;
  v555 = *(&v615[0] + 1);
  v556 = *&v615[0];
  v577 = *(&v615[1] + 1);
  v233 = *(&v616[0] + 1);
  v558 = *&v616[1];
  v559 = *&v616[0];
  v722 = *(v178 + 24);
  v723 = *(v178 + 40);
  v724 = *(v178 + 56);
  v280 = BigString.endIndex.getter();
  v557 = v278;
  if ((v280 ^ v278) >= 0x400)
  {
    v297 = v169;
    AttributedString.Guts.findRun(at:)(v278, v560, &v614);
    v593 = *(&v614 + 1);
    v594 = v614;
    v552 = *(&v615[0] + 1);
    v553 = *&v615[0];
    v220 = *(&v615[1] + 1);
    v222 = *(&v616[0] + 1);
    v221 = *&v616[0];
    v223 = *&v616[1];
    v298 = v587;
    v299 = v597;
    RangeSet.ranges.getter();
    v238 = RangeSet.Ranges.count.getter();
    v566(v298, v297);
    v300 = v585;
    (v585)(v590, v299);
    v300(v583, v299);
    v227 = v552;
    v228 = v553;
    v237 = v557;
    v235 = v558;
    v239 = v568;
    v215 = v569;
    v229 = 0;
    v226 = v592;
    v217 = v581;
    v232 = v582;
    v234 = v580;
    v236 = v576;
    v230 = v577;
    v240 = *(&v595 + 1);
    v231 = v559;
    v219 = v560;
    v218 = v567;
    v224 = v555;
    v225 = v556;
  }

  else
  {
    v281 = *(v178 + 72);
    if (v281)
    {
      v282 = *(v178 + 80);
    }

    else
    {
      v282 = 0;
    }

    v283 = *(v178 + 96);
    v284 = swift_unknownObjectRetain();
    v594 = v283;
    v593 = specialized Rope._endPath.getter(v284);
    v285 = v568;
    if (v281)
    {
      swift_unknownObjectRelease();
    }

    v286 = v587;
    v287 = v597;
    RangeSet.ranges.getter();
    v288 = v598;
    v238 = RangeSet.Ranges.count.getter();
    v566(v286, v288);
    v289 = v585;
    (v585)(v590, v287);
    v289(v583, v287);
    v239 = v285;
    v229 = 0;
    v228 = 0;
    v237 = v557;
    v235 = v558;
    v220 = v557;
    v217 = v581;
    v232 = v582;
    v221 = v581;
    v218 = v567;
    v222 = v567;
    v231 = v559;
    v219 = v560;
    v223 = v560;
    v226 = v592;
    v234 = v580;
    v236 = v576;
    v230 = v577;
    v240 = *(&v595 + 1);
    v224 = v555;
    v225 = v556;
    v227 = v282;
  }

LABEL_68:
  *(v239 + 8) = v224;
  *(v239 + 16) = v595;
  *(v239 + 24) = v240;
  *(v239 + 32) = v225;
  *(v239 + 40) = v230;
  *(v239 + 48) = v231;
  *(v239 + 56) = v233;
  *(v239 + 64) = v235;
  *(v239 + 72) = v215;
  *(v239 + 80) = v232;
  *(v239 + 88) = v234;
  *(v239 + 96) = v236;
  *(v239 + 104) = v229;
  *(v239 + 112) = 0;
  *(v239 + 113) = v226;
  v241 = v593;
  v242 = v594;
  *(v239 + 120) = v227;
  *(v239 + 128) = v242;
  *(v239 + 136) = v241;
  *(v239 + 144) = v228;
  *(v239 + 152) = v220;
  *(v239 + 160) = v221;
  *(v239 + 168) = v222;
  *(v239 + 176) = v223;
  *(v239 + 184) = v237;
  *(v239 + 192) = v217;
  *(v239 + 200) = v218;
  *(v239 + 208) = v219;
  *(v239 + 216) = v238;
  *(v239 + 224) = 0;
  *(v239 + 225) = v226;
  v243 = v563;
  result = outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v239, v563, type metadata accessor for AttributedString.Runs);
  v248 = v564;
  v249 = *v564;
  *(&v595 + 1) = *v243;
  if (v249 == *(&v595 + 1))
  {
    result = static RangeSet.== infix(_:_:)();
    if (result)
    {
      goto LABEL_109;
    }
  }

  v250 = v248[1];
  v251 = v248[9];
  v252 = v248[12];
  v253 = v248[15];
  v254 = v248[23];
  v255 = v248[26];
  v256 = v570;
  if (*(v248 + *(v570 + 28)) == 1)
  {
    v247 = 0;
    v363 = *(v248 + 112);
    v364 = v248[13];
    v552 = v254 >> 10;
    v365 = v248[8];
    v577 = v248[7];
    v366 = v248[5];
    v580 = v248[6];
    v581 = v249;
    v557 = v251 >> 10;
    v554 = v252;
    v555 = v586 + 8;
    v367 = v248[3];
    v368 = v248[4];
    v369 = v250;
    v543 = v251;
    v370 = v252;
    result = v255;
    v245 = v253;
    *&v595 = v367;
    v371 = v248[2];
    v372 = v597;
    v553 = v250;
LABEL_142:
    LOBYTE(v655) = v363;
    if (v369 >= v253 && (v253 < v369 || v255 == 2 || v370 != 2 && v251 >> 10 >= v552))
    {
      goto LABEL_312;
    }

    if (v369 < v250)
    {
      goto LABEL_321;
    }

    v382 = v250 < v369 || v252 == 2;
    v383 = v382;
    if (!v382)
    {
      if (v370 == 2)
      {
        goto LABEL_359;
      }

      if (v557 > v251 >> 10)
      {
        goto LABEL_335;
      }
    }

    if (v369 >= v245)
    {
      if (v245 < v369)
      {
        goto LABEL_336;
      }

      if (result == 2)
      {
        goto LABEL_360;
      }

      if (v370 == 2)
      {
        if (!v383)
        {
          goto LABEL_357;
        }

LABEL_167:
        if (v245 < v369)
        {
          goto LABEL_323;
        }

        if (v369 >= v245 && v370 != 2)
        {
          if (result == 2)
          {
            goto LABEL_362;
          }

          if (v254 >> 10 < v251 >> 10)
          {
            goto LABEL_338;
          }
        }

        v594 = v368;
        if (v368 == 1 || v371 != *(v249 + 12))
        {
          goto LABEL_355;
        }

        v576 = v254;
        v590 = v247;
        v568 = v245;
        v569 = result;
        v558 = v366 >> 11;
        v559 = v365;
        v567 = v366;
        v562 = v251;
        v582 = v370;
        v592 = v371;
        v593 = v369;
        if (v365 == 2)
        {
          v384 = *(v249 + 9);
          if (v384)
          {
            v385 = v249;
            v388 = v249 + 80;
            v386 = *(v249 + 10);
            v387 = *(v388 + 1);
            swift_unknownObjectRetain();
            v389 = v594;
            v390 = v386;
            v249 = v385;
            v391 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v592, v595, v594, v384, v390, v387);
            swift_unknownObjectRelease();
          }

          else
          {
            v391 = 0;
            v389 = v594;
          }

          v393 = *(v249 + 24);
          v681 = *(v249 + 40);
          v682 = *(v249 + 56);
          v680 = v393;
          v677 = *(v249 + 24);
          v678 = *(v249 + 40);
          v679 = *(v249 + 56);
          BigString.startIndex.getter();
          v392 = v249;
          v594 = v394;
          v583 = v395;
          v560 = v396;
          v757[0] = v680;
          v757[1] = v681;
          v758 = v682;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v757, &v614);
          v583 = v391;
          v560 = BigString.UTF8View.index(_:offsetBy:)();
          result = outlined destroy of BigString(&v680);
        }

        else
        {
          v674 = *(v249 + 24);
          v675 = *(v249 + 40);
          v676 = *(v249 + 56);
          v392 = v249;
          v583 = v674;
          swift_unknownObjectRetain();
          v560 = BigString.UTF8View.index(roundingDown:)();
          result = swift_unknownObjectRelease();
          v583 = (v366 >> 11);
          v389 = v594;
        }

        v397 = *(v392 + 9);
        v594 = *(v392 + 10);
        v398 = *(v392 + 12);
        v399 = v592;
        *&v614 = v592;
        *(&v614 + 1) = v595;
        *&v615[0] = v389;
        if (__OFADD__(v593, 1))
        {
          goto LABEL_325;
        }

        if (v592 != v398)
        {
          goto LABEL_327;
        }

        ++v593;
        if (v389)
        {
          v400 = *(v389 + 24 * ((v595 >> ((4 * *(v389 + 18) + 8) & 0x3C)) & 0xF) + 24);
          v381 = __OFADD__(v583, v400);
          v401 = &v583[v400];
          if (v381)
          {
            goto LABEL_333;
          }

          v583 = v401;
          if (!v397)
          {
            goto LABEL_324;
          }

          v402 = v389;
          result = swift_unknownObjectRetain();
        }

        else
        {
          v402 = 0;
          swift_unknownObjectRetain();
          v403 = specialized Rope._Node.subscript.getter(v595, v397);
          v556 = v404;

          if (__OFADD__(v583, v403))
          {
            goto LABEL_345;
          }

          v583 += v403;
          if (!v397)
          {
            goto LABEL_324;
          }
        }

        if (v595 >= (((-15 << ((4 * *(v397 + 18) + 8) & 0x3C)) - 1) & *(v397 + 18) | (*(v397 + 16) << ((4 * *(v397 + 18) + 8) & 0x3C))))
        {
          goto LABEL_324;
        }

        if (v402 && (v405 = v402, v406 = (4 * *(v402 + 18) + 8) & 0x3C, v407 = ((v595 >> v406) & 0xF) + 1, v407 < *(v405 + 16)))
        {
          swift_unknownObjectRelease();
          v408 = (v407 << v406) | ((-15 << v406) - 1) & v595;
        }

        else
        {
          if ((specialized Rope._Node.formSuccessor(of:)(&v614, v397) & 1) == 0)
          {
            v409 = *(v397 + 18);
            v410 = *(v397 + 16);
            swift_unknownObjectRelease();
            *&v614 = v399;
            *&v595 = ((-15 << ((4 * v409 + 8) & 0x3C)) - 1) & v409 | (v410 << ((4 * v409 + 8) & 0x3C));
            *(&v614 + 1) = v595;
            *&v615[0] = 0;
            goto LABEL_196;
          }

          swift_unknownObjectRelease();
          v408 = *(&v614 + 1);
        }

        *&v595 = v408;
LABEL_196:
        v592 = v614;
        v594 = *&v615[0];
        if ((v655 & 1) == 0)
        {
          v422 = v587;
          RangeSet.ranges.getter();
          v423 = v598;
          RangeSet.Ranges.subscript.getter();
          v420 = v566;
          result = (v566)(v422, v423);
          v421 = *&v615[1];
          goto LABEL_210;
        }

        v561(v573, v564 + *(v570 + 24), v372);
        if (v582 == 2)
        {
          v411 = v560;
        }

        else
        {
          v411 = v562;
        }

        v412 = v587;
        RangeSet.ranges.getter();
        v413 = v598;
        v414 = RangeSet.Ranges.count.getter();
        result = (v566)(v412, v413);
        if (v414 < 1)
        {
          goto LABEL_317;
        }

        v415 = 0;
        v416 = v411 >> 10;
        while (1)
        {
          if (__OFADD__(v415, v414))
          {
            goto LABEL_319;
          }

          v364 = (v415 + v414) / 2;
          v417 = v587;
          RangeSet.ranges.getter();
          v418 = v598;
          RangeSet.Ranges.subscript.getter();
          v419 = v417;
          v420 = v566;
          result = (v566)(v419, v418);
          if (v416 < v614 >> 10)
          {
            v414 = (v415 + v414) / 2;
          }

          else
          {
            v421 = *&v615[1];
            if (v416 < *&v615[1] >> 10)
            {
              v372 = v597;
              result = (v585)(v573, v597);
LABEL_210:
              if (v583 >= (v421 >> 11))
              {
                v381 = __OFADD__(v364++, 1);
                if (v381)
                {
                  goto LABEL_341;
                }

                v428 = v564;
                v429 = v587;
                RangeSet.ranges.getter();
                v430 = v598;
                v431 = RangeSet.Ranges.count.getter();
                v420(v429, v430);
                if (v364 == v431)
                {
                  v369 = v428[15];
                  v432 = v428[16];
                  v368 = v428[18];
                  *&v595 = v428[17];
                  v433 = v428[19];
                  v580 = v428[20];
                  v365 = v428[22];
                  v577 = v428[21];
                  v251 = v428[23];
                  v370 = v428[26];
                  v364 = v428[27];
                  v254 = v251;
                  result = v370;
                  v245 = v369;
                  v363 = *(v428 + 224);
                  v366 = v433;
                  v371 = v432;
                  v372 = v597;
                  v249 = v581;
                  v250 = v553;
                  v252 = v554;
                  v380 = v590;
                  goto LABEL_141;
                }

                RangeSet.ranges.getter();
                v434 = v598;
                RangeSet.Ranges.subscript.getter();
                v420(v429, v434);
                v582 = *(&v615[0] + 1);
                v580 = *&v615[0];
                v583 = *(&v614 + 1);
                v435 = *(v581 + 9);
                v436 = *(v581 + 10);
                v438 = *(v581 + 11);
                v437 = *(v581 + 12);
                v439 = v614;
                v440 = v614 >> 11;
                swift_unknownObjectRetain();
                result = specialized Rope.find<A>(at:in:preferEnd:)(v440, 0, v435, v436, v438, v437);
                v594 = v442;
                *&v595 = v441;
                v592 = v443;
                if (result != v437)
                {
                  goto LABEL_350;
                }

                v444 = v437;
                if (v435)
                {
                  v593 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v437, v595, v594, v435, v436);
                  result = swift_unknownObjectRelease();
                }

                else
                {
                  v593 = 0;
                }

                v445 = *(v581 + 40);
                v671 = *(v581 + 24);
                v672 = v445;
                v673 = *(v581 + 56);
                if (!__OFSUB__(0, v592))
                {
                  swift_unknownObjectRetain();
                  v446 = v439;
                  v447 = v582;
                  v567 = BigString.UTF8View.index(_:offsetBy:)();
                  v580 = v448;
                  v577 = v449;
                  v365 = v450;
                  swift_unknownObjectRelease();
                  v370 = v447;
                  v251 = v446;
                  v363 = 0;
                  v372 = v597;
                  v249 = v581;
                  v250 = v553;
                  v252 = v554;
                  v254 = v576;
                  v380 = v590;
                  v245 = v568;
                  result = v569;
                  v369 = v593;
                  v368 = v594;
                  v371 = v444;
                  v366 = v567;
                  goto LABEL_141;
                }
              }

              else
              {
                if (v559 == 2)
                {
                  v373 = *(v581 + 24);
                  v374 = *(v581 + 56);
                  v669 = *(v581 + 40);
                  v670 = v374;
                  v375 = *(v581 + 40);
                  v665 = *(v581 + 24);
                  v666 = v375;
                  v667 = *(v581 + 56);
                  v668 = v373;
                  BigString.startIndex.getter();
                  v582 = v376;
                  v759[0] = v668;
                  v759[1] = v669;
                  v760 = v670;
                  outlined init with copy of Rope<BigString._Chunk>._Node?(v759, &v614);
                  v366 = BigString.UTF8View.index(_:offsetBy:)();
                  v580 = v377;
                  v577 = v378;
                  v365 = v379;
                  outlined destroy of BigString(&v668);
                  goto LABEL_140;
                }

                v424 = *(v581 + 40);
                v662 = *(v581 + 24);
                v663 = v424;
                v664 = *(v581 + 56);
                if (!__OFSUB__(v583, v558))
                {
                  swift_unknownObjectRetain();
                  v366 = BigString.UTF8View.index(_:offsetBy:)();
                  v580 = v425;
                  v577 = v426;
                  v365 = v427;
                  swift_unknownObjectRelease();
LABEL_140:
                  v371 = v592;
                  v369 = v593;
                  v368 = v594;
                  v363 = 0;
                  v251 = v366;
                  v370 = v365;
                  v249 = v581;
                  v250 = v553;
                  v252 = v554;
                  v254 = v576;
                  v380 = v590;
                  v245 = v568;
                  result = v569;
LABEL_141:
                  v381 = __OFADD__(v380, 1);
                  v247 = v380 + 1;
                  if (!v381)
                  {
                    goto LABEL_142;
                  }

LABEL_331:
                  __break(1u);
LABEL_332:
                  __break(1u);
LABEL_333:
                  __break(1u);
LABEL_334:
                  __break(1u);
LABEL_335:
                  __break(1u);
LABEL_336:
                  __break(1u);
LABEL_337:
                  __break(1u);
LABEL_338:
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  __break(1u);
LABEL_342:
                  __break(1u);
LABEL_343:
                  __break(1u);
LABEL_344:
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  __break(1u);
LABEL_348:
                  __break(1u);
                }

                __break(1u);
LABEL_350:
                __break(1u);
              }

              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
              return result;
            }

            v415 = v364 + 1;
          }

          if (v415 >= v414)
          {
            goto LABEL_317;
          }
        }
      }

      if (v251 >> 10 >= v254 >> 10)
      {
        goto LABEL_347;
      }
    }

    if ((v383 & 1) == 0)
    {
      if (v370 == 2)
      {
        goto LABEL_357;
      }

      if (v557 > v251 >> 10)
      {
        goto LABEL_343;
      }
    }

    goto LABEL_167;
  }

  v257 = v253 - v250;
  if (__OFSUB__(v253, v250))
  {
    __break(1u);
  }

  else
  {
    v258 = v248[22];
    if (v255 == 2)
    {
      v259 = v258 != 2;
    }

    else
    {
      v259 = v258 == 2 || (v254 ^ v248[19]) > 0x3FF;
    }

    v247 = (v257 + v259);
    if (!__OFADD__(v257, v259))
    {
      result = v248[26];
      v245 = v248[15];
      while (1)
      {
        v215 = v243[1];
        v233 = v243[15];
        v221 = v243[23];
        v246 = v243[26];
        if (*(v243 + *(v256 + 28)))
        {
          goto LABEL_225;
        }

        v290 = v233 - v215;
        if (__OFSUB__(v233, v215))
        {
          __break(1u);
        }

        else
        {
          v243 = v563;
          v248 = v564;
          v291 = *(v563 + 22);
          v292 = (v221 ^ *(v563 + 19)) > 0x3FF;
          if (v291 == 2)
          {
            v292 = 1;
          }

          if (v246 == 2)
          {
            v292 = v291 != 2;
          }

          v293 = v579;
          if (!__OFADD__(v290, v292))
          {
            if (v247 != (v290 + v292))
            {
              goto LABEL_135;
            }

LABEL_101:
            if (v250 != v245)
            {
              goto LABEL_110;
            }

            if (v252 == 2)
            {
              if (result != 2)
              {
                goto LABEL_110;
              }
            }

            else if (result == 2 || (v254 ^ v251) >= 0x400)
            {
LABEL_110:
              v301 = AttributedString.Runs._isPartial.getter();
              v302 = v574;
              if ((v301 & 1) != 0 || (AttributedString.Runs._isPartial.getter() & 1) != 0 || (v721[12] = *(v249 + 24), v721[13] = *(v249 + 40), v721[14] = *(v249 + 56), v303 = BigString.count.getter(), v721[9] = *(*(&v595 + 1) + 24), v721[10] = *(*(&v595 + 1) + 40), v721[11] = *(*(&v595 + 1) + 56), v382 = v303 == BigString.count.getter(), v302 = v574, v382))
              {
                v581 = v249;
                RangeSet.ranges.getter();
                v304 = v302;
                v305 = v598;
                dispatch thunk of Collection.startIndex.getter();
                dispatch thunk of Collection.endIndex.getter();
                if (v655 == v614)
                {
                  v566(v302, v305);
                }

                else
                {
                  v306 = dispatch thunk of Collection.subscript.read();
                  v308 = v307[1];
                  *&v595 = *v307;
                  v590 = v308;
                  v309 = v307[2];
                  v592 = v307[3];
                  v593 = v309;
                  v306(&v614, 0);
                  v310 = v566;
                  v566(v304, v305);
                  RangeSet.ranges.getter();
                  dispatch thunk of Collection.startIndex.getter();
                  dispatch thunk of Collection.endIndex.getter();
                  if (v636 != v614)
                  {
                    v311 = dispatch thunk of Collection.subscript.read();
                    v313 = v312[1];
                    v587 = *v312;
                    v597 = v313;
                    v314 = v312[3];
                    v596 = v312[2];
                    v594 = v314;
                    v311(&v614, 0);
                    v310(v293, v305);
                    v315 = v565;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v248, v565, type metadata accessor for AttributedString.Runs);
                    v316 = v575;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v315, v575, type metadata accessor for AttributedString.Runs);
                    v317 = v571;
                    v318 = (v316 + *(v571 + 36));
                    v319 = *(v315 + 72);
                    v627 = *(v315 + 56);
                    v628 = v319;
                    v629[0] = *(v315 + 88);
                    *(v629 + 10) = *(v315 + 98);
                    v320 = *(v315 + 24);
                    v624 = *(v315 + 8);
                    v625 = v320;
                    v626 = *(v315 + 40);
                    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v315, type metadata accessor for AttributedString.Runs);
                    v321 = v629[0];
                    v318[4] = v628;
                    v318[5] = v321;
                    *(v318 + 90) = *(v629 + 10);
                    v322 = v625;
                    *v318 = v624;
                    v318[1] = v322;
                    v323 = v627;
                    v318[2] = v626;
                    v318[3] = v323;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v243, v315, type metadata accessor for AttributedString.Runs);
                    v324 = v578;
                    outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v315, v578, type metadata accessor for AttributedString.Runs);
                    v325 = (v324 + *(v317 + 36));
                    v326 = *(v315 + 56);
                    v327 = *(v315 + 88);
                    v634 = *(v315 + 72);
                    v635[0] = v327;
                    *(v635 + 10) = *(v315 + 98);
                    v328 = *(v315 + 24);
                    v630 = *(v315 + 8);
                    v631 = v328;
                    v632 = *(v315 + 40);
                    v633 = v326;
                    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v315, type metadata accessor for AttributedString.Runs);
                    v329 = v635[0];
                    v325[4] = v634;
                    v325[5] = v329;
                    *(v325 + 90) = *(v635 + 10);
                    v330 = v631;
                    *v325 = v630;
                    v325[1] = v330;
                    v331 = v633;
                    v325[2] = v632;
                    v325[3] = v331;
                    v332 = v592;
                    v333 = v593;
                    while (1)
                    {
                      specialized IndexingIterator.next()(v608);
                      v334 = v608[0];
                      v335 = v608[1];
                      v336 = v608[2];
                      v337 = v611;
                      specialized IndexingIterator.next()(&v600);
                      v338 = v600;
                      v339 = v601;
                      v619 = v603;
                      v620 = v604;
                      v622 = v606;
                      v623 = v607;
                      *&v614 = v334;
                      *(&v614 + 1) = v335;
                      *(v615 + 8) = v609;
                      *(&v615[1] + 1) = v610;
                      *&v615[0] = v336;
                      *&v616[0] = v337;
                      *(&v616[1] + 8) = v613;
                      *(v616 + 8) = v612;
                      *(&v616[2] + 1) = v600;
                      v617 = v601;
                      v618 = v602;
                      v621 = v605;
                      if (!v334)
                      {
                        break;
                      }

                      if (!v600)
                      {
                        outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
                        outlined destroy of TermOfAddress?(v578, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
                        v362 = v316;
                        goto LABEL_133;
                      }

                      v586 = v605;
                      v591 = v602;

                      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v334, v338) & 1) == 0)
                      {

LABEL_131:
                        outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
LABEL_132:
                        outlined destroy of TermOfAddress?(v578, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
                        v362 = v575;
LABEL_133:
                        outlined destroy of TermOfAddress?(v362, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
LABEL_134:
                        v243 = v563;
                        v248 = v564;
                        goto LABEL_135;
                      }

                      v340 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v335, v339);

                      if ((v340 & 1) == 0)
                      {
                        goto LABEL_131;
                      }

                      v341 = v581;
                      v721[6] = *(v581 + 24);
                      v721[7] = *(v581 + 40);
                      v721[8] = *(v581 + 56);
                      swift_unknownObjectRetain();
                      v342 = v332;
                      v343 = v590;
                      v592 = v342;
                      v598 = BigString.UTF8View.index(_:offsetBy:)();
                      v584 = v345;
                      v585 = v344;
                      v593 = v346;
                      swift_unknownObjectRelease();
                      v347 = *(&v595 + 1);
                      v721[3] = *(*(&v595 + 1) + 24);
                      v721[4] = *(*(&v595 + 1) + 40);
                      v721[5] = *(*(&v595 + 1) + 56);
                      swift_unknownObjectRetain();
                      v348 = v587;
                      v591 = BigString.UTF8View.index(_:offsetBy:)();
                      v586 = v349;
                      v582 = v351;
                      v583 = v350;
                      result = swift_unknownObjectRelease();
                      v721[0] = *(v341 + 24);
                      v721[1] = *(v341 + 40);
                      v721[2] = *(v341 + 56);
                      if (v598 >> 10 < v595 >> 10)
                      {
                        __break(1u);
LABEL_316:
                        __break(1u);
LABEL_317:
                        __break(1u);
LABEL_318:
                        __break(1u);
LABEL_319:
                        __break(1u);
LABEL_320:
                        __break(1u);
LABEL_321:
                        __break(1u);
LABEL_322:
                        __break(1u);
LABEL_323:
                        __break(1u);
LABEL_324:
                        __break(1u);
LABEL_325:
                        __break(1u);
LABEL_326:
                        __break(1u);
LABEL_327:
                        __break(1u);
LABEL_328:
                        __break(1u);
LABEL_329:
                        __break(1u);
                        goto LABEL_330;
                      }

                      v713 = v595;
                      v714 = v343;
                      v715 = v333;
                      v716 = v592;
                      v717 = v598;
                      v333 = v584;
                      v352 = v585;
                      v718 = v585;
                      v719 = v584;
                      v720 = v593;
                      v353 = *(v341 + 24);
                      v750 = *(v341 + 7);
                      v749[1] = *(v341 + 40);
                      v749[0] = v353;
                      outlined init with copy of Rope<BigString._Chunk>._Node?(v749, v599);
                      BigString.subscript.getter();
                      result = outlined destroy of BigString(v721);
                      v354 = *(v347 + 24);
                      v712[1] = *(v347 + 40);
                      v712[2] = *(v347 + 56);
                      v712[0] = v354;
                      v355 = v591;
                      if (v591 >> 10 < v348 >> 10)
                      {
                        goto LABEL_316;
                      }

                      v356 = v352;
                      v704 = v348;
                      v705 = v597;
                      v706 = v596;
                      v707 = v594;
                      v708 = v591;
                      v357 = v586;
                      v709 = v586;
                      v359 = v582;
                      v358 = v583;
                      v710 = v583;
                      v711 = v582;
                      v360 = *(v347 + 24);
                      v752 = *(v347 + 56);
                      v751[1] = *(v347 + 40);
                      v751[0] = v360;
                      outlined init with copy of Rope<BigString._Chunk>._Node?(v751, v599);
                      BigString.subscript.getter();
                      outlined destroy of BigString(v712);
                      v361 = MEMORY[0x1865CA260](&v648, &v655);
                      outlined destroy of BigSubstring(&v648);
                      outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
                      outlined destroy of BigSubstring(&v655);
                      if ((v361 & 1) == 0)
                      {
                        goto LABEL_132;
                      }

                      v587 = v355;
                      v597 = v357;
                      v596 = v358;
                      v594 = v359;
                      *&v595 = v598;
                      v590 = v356;
                      v332 = v593;
                      v316 = v575;
                    }

                    outlined destroy of TermOfAddress?(v578, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
                    outlined destroy of TermOfAddress?(v316, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
                    outlined destroy of TermOfAddress?(&v614, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
                    if (!v338)
                    {
                      v243 = v563;
                      v248 = v564;
                      goto LABEL_109;
                    }

                    goto LABEL_134;
                  }

                  v310(v293, v305);
                }
              }

              goto LABEL_135;
            }

LABEL_109:
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v243, type metadata accessor for AttributedString.Runs);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v248, type metadata accessor for AttributedString.Runs);

            v49 = v550 == v549;
            goto LABEL_136;
          }
        }

        __break(1u);
LABEL_312:
        v243 = v563;
        v256 = v570;
        v251 = v543;
      }
    }
  }

  __break(1u);
LABEL_225:
  v568 = v245;
  v569 = result;
  v590 = v247;
  v576 = v254;
  v553 = v250;
  v554 = v252;
  v581 = v249;
  v451 = 0;
  v452 = v563[112];
  v453 = *(v563 + 12);
  v454 = *(v563 + 13);
  v455 = *(v563 + 8);
  v456 = *(v563 + 9);
  v567 = *(v563 + 7);
  v457 = *(v563 + 5);
  v573 = *(v563 + 6);
  v594 = *(v563 + 4);
  v543 = v251;
  v544 = v221 >> 10;
  v551 = (v456 >> 10);
  v552 = v453;
  v545 = v586 + 8;
  v546 = v246;
  v458 = v215;
  v459 = v453;
  v555 = v246;
  v460 = v233;
  v461 = *(v563 + 2);
  *&v595 = *(v563 + 3);
  v593 = v461;
  v462 = *(&v595 + 1);
  v548 = v233;
  while (1)
  {
    LOBYTE(v655) = v452;
    if (v458 >= v233 && (v233 < v458 || v546 == 2 || v459 != 2 && v456 >> 10 >= v544))
    {
      break;
    }

    if (v458 < v215)
    {
      goto LABEL_322;
    }

    v469 = v215 < v458 || v552 == 2;
    v470 = v469;
    if (!v469)
    {
      if (v459 == 2)
      {
        goto LABEL_361;
      }

      if (v551 > v456 >> 10)
      {
        goto LABEL_337;
      }
    }

    if (v458 >= v460)
    {
      if (v460 < v458)
      {
        goto LABEL_339;
      }

      if (v555 == 2)
      {
        goto LABEL_363;
      }

      if (v459 == 2)
      {
        if (!v470)
        {
          goto LABEL_358;
        }

        goto LABEL_254;
      }

      if (v456 >> 10 >= v221 >> 10)
      {
        goto LABEL_348;
      }
    }

    if ((v470 & 1) == 0)
    {
      if (v459 == 2)
      {
        goto LABEL_358;
      }

      if (v551 > v456 >> 10)
      {
        goto LABEL_344;
      }
    }

LABEL_254:
    if (v460 < v458)
    {
      goto LABEL_326;
    }

    if (v458 >= v460 && v459 != 2)
    {
      if (v555 == 2)
      {
        goto LABEL_364;
      }

      if (v221 >> 10 < v456 >> 10)
      {
        goto LABEL_340;
      }
    }

    v557 = v456;
    if (v594 == 1 || v593 != *(v462 + 96))
    {
      goto LABEL_356;
    }

    v580 = v451;
    v558 = v457;
    v559 = v460;
    v560 = v455;
    v582 = v459;
    v562 = (v457 >> 11);
    if (v455 == 2)
    {
      v471 = *(v462 + 72);
      if (v471)
      {
        v473 = *(v462 + 80);
        v472 = *(v462 + 88);
        v474 = v462;
        swift_unknownObjectRetain();
        v475 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v593, v595, v594, v471, v473, v472);
        swift_unknownObjectRelease();
        v462 = v474;
      }

      else
      {
        v475 = 0;
      }

      v477 = *(v462 + 24);
      v702 = *(v462 + 40);
      v703 = *(v462 + 56);
      v701 = v477;
      v698 = *(v462 + 24);
      v699 = *(v462 + 40);
      v700 = *(v462 + 56);
      v476 = v462;
      v592 = BigString.startIndex.getter();
      v586 = v478;
      v583 = v479;
      v753[0] = v701;
      v753[1] = v702;
      v754 = v703;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v753, &v614);
      v583 = v475;
      v556 = BigString.UTF8View.index(_:offsetBy:)();
      result = outlined destroy of BigString(&v701);
    }

    else
    {
      v695 = *(v462 + 24);
      v696 = *(v462 + 40);
      v697 = *(v462 + 56);
      v592 = v695;
      v476 = v462;
      swift_unknownObjectRetain();
      v556 = BigString.UTF8View.index(roundingDown:)();
      result = swift_unknownObjectRelease();
      v583 = v562;
    }

    v480 = v476[9];
    v592 = v476[10];
    v481 = v476[12];
    v586 = v476[11];
    v482 = v593;
    v483 = v594;
    *&v614 = v593;
    *(&v614 + 1) = v595;
    *&v615[0] = v594;
    v381 = __OFADD__(v458, 1);
    v484 = v458 + 1;
    if (v381)
    {
      goto LABEL_329;
    }

    if (v593 != v481)
    {
LABEL_330:
      __break(1u);
      goto LABEL_331;
    }

    v577 = v484;
    if (v594)
    {
      v485 = *(v594 + 24 * ((v595 >> ((4 * *(v594 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v486 = &v583[v485];
      if (__OFADD__(v583, v485))
      {
        goto LABEL_334;
      }

      if (!v480)
      {
        goto LABEL_328;
      }

      result = swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v487 = specialized Rope._Node.subscript.getter(v595, v480);
      v547 = v488;

      v381 = __OFADD__(v583, v487);
      v486 = &v583[v487];
      if (v381)
      {
        goto LABEL_346;
      }

      if (!v480)
      {
        goto LABEL_328;
      }
    }

    if (v595 >= (((-15 << ((4 * *(v480 + 18) + 8) & 0x3C)) - 1) & *(v480 + 18) | (*(v480 + 16) << ((4 * *(v480 + 18) + 8) & 0x3C))))
    {
      goto LABEL_328;
    }

    v583 = v486;
    if (v483)
    {
      v489 = v483;
      v490 = (4 * *(v483 + 18) + 8) & 0x3C;
      v491 = ((v595 >> v490) & 0xF) + 1;
      if (v491 < *(v489 + 16))
      {
        swift_unknownObjectRelease();
        v492 = (v491 << v490) | ((-15 << v490) - 1) & v595;
LABEL_281:
        *&v595 = v492;
        goto LABEL_283;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v614, v480))
    {
      swift_unknownObjectRelease();
      v492 = *(&v614 + 1);
      goto LABEL_281;
    }

    v493 = *(v480 + 18);
    v494 = *(v480 + 16);
    swift_unknownObjectRelease();
    *&v614 = v482;
    *&v595 = ((-15 << ((4 * v493 + 8) & 0x3C)) - 1) & v493 | (v494 << ((4 * v493 + 8) & 0x3C));
    *(&v614 + 1) = v595;
    *&v615[0] = 0;
LABEL_283:
    v593 = v614;
    v594 = *&v615[0];
    if (v655)
    {
      v561(v572, &v563[*(v570 + 24)], v597);
      if (v582 == 2)
      {
        v495 = v556;
      }

      else
      {
        v495 = v557;
      }

      v496 = v587;
      RangeSet.ranges.getter();
      v497 = v598;
      v498 = RangeSet.Ranges.count.getter();
      result = (v566)(v496, v497);
      if (v498 < 1)
      {
        goto LABEL_318;
      }

      v499 = 0;
      v500 = v495 >> 10;
      while (1)
      {
        while (1)
        {
          if (__OFADD__(v499, v498))
          {
            goto LABEL_320;
          }

          v501 = (v499 + v498) / 2;
          v502 = v587;
          RangeSet.ranges.getter();
          v503 = v598;
          RangeSet.Ranges.subscript.getter();
          result = (v566)(v502, v503);
          if (v500 >= v614 >> 10)
          {
            break;
          }

          v498 = (v499 + v498) / 2;
          if (v499 >= v501)
          {
            goto LABEL_318;
          }
        }

        v454 = (v499 + v498) / 2;
        v504 = *&v615[1];
        if (v500 < *&v615[1] >> 10)
        {
          break;
        }

        v499 = v501 + 1;
        if (v501 + 1 >= v498)
        {
          goto LABEL_318;
        }
      }

      result = (v585)(v572, v597);
      v233 = v548;
    }

    else
    {
      v505 = v587;
      RangeSet.ranges.getter();
      v506 = v598;
      RangeSet.Ranges.subscript.getter();
      result = (v566)(v505, v506);
      v504 = *&v615[1];
    }

    if (v583 >= (v504 >> 11))
    {
      v381 = __OFADD__(v454++, 1);
      if (v381)
      {
        goto LABEL_342;
      }

      v510 = v563;
      v511 = v587;
      RangeSet.ranges.getter();
      v512 = v598;
      v513 = RangeSet.Ranges.count.getter();
      result = (v566)(v511, v512);
      if (v454 == v513)
      {
        v514 = *(v510 + 120);
        v515 = *(v510 + 128);
        v516 = *(v510 + 144);
        *&v595 = *(v510 + 136);
        v593 = v515;
        v594 = v516;
        v457 = *(v510 + 152);
        v573 = *(v510 + 160);
        v455 = *(v510 + 176);
        v567 = *(v510 + 168);
        v456 = *(v510 + 184);
        v459 = *(v510 + 208);
        v454 = *(v510 + 216);
        v221 = v456;
        v555 = v459;
        v460 = v514;
        v452 = *(v510 + 224);
        v458 = v514;
        v462 = *(&v595 + 1);
        v468 = v580;
      }

      else
      {
        v517 = v587;
        RangeSet.ranges.getter();
        v518 = v598;
        RangeSet.Ranges.subscript.getter();
        v566(v517, v518);
        v586 = *(&v614 + 1);
        v582 = *(&v615[0] + 1);
        v583 = *&v615[0];
        v519 = *(*(&v595 + 1) + 72);
        v520 = *(*(&v595 + 1) + 80);
        v522 = *(*(&v595 + 1) + 88);
        v521 = *(*(&v595 + 1) + 96);
        v523 = v614;
        v524 = v614 >> 11;
        swift_unknownObjectRetain();
        result = specialized Rope.find<A>(at:in:preferEnd:)(v524, 0, v519, v520, v522, v521);
        v594 = v526;
        *&v595 = v525;
        v592 = v527;
        v593 = v521;
        if (result != v521)
        {
          goto LABEL_353;
        }

        if (v519)
        {
          v577 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v593, v595, v594, v519, v520);
          result = swift_unknownObjectRelease();
        }

        else
        {
          v577 = 0;
        }

        v692 = *(*(&v595 + 1) + 24);
        v693 = *(*(&v595 + 1) + 40);
        v694 = *(*(&v595 + 1) + 56);
        if (__OFSUB__(0, v592))
        {
          goto LABEL_354;
        }

        v528 = *(&v595 + 1);
        swift_unknownObjectRetain();
        v456 = v523;
        v529 = v582;
        v558 = BigString.UTF8View.index(_:offsetBy:)();
        v573 = v530;
        v567 = v531;
        v455 = v532;
        result = swift_unknownObjectRelease();
        v459 = v529;
        v452 = 0;
        v468 = v580;
        v233 = v548;
        v458 = v577;
        v462 = v528;
        v457 = v558;
        v460 = v559;
      }
    }

    else
    {
      if (v560 == 2)
      {
        v463 = *(*(&v595 + 1) + 24);
        v690 = *(*(&v595 + 1) + 40);
        v691 = *(*(&v595 + 1) + 56);
        v689 = v463;
        v686 = *(*(&v595 + 1) + 24);
        v687 = *(*(&v595 + 1) + 40);
        v688 = *(*(&v595 + 1) + 56);
        BigString.startIndex.getter();
        v592 = v464;
        v755[0] = v689;
        v755[1] = v690;
        v756 = v691;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v755, &v614);
        v457 = BigString.UTF8View.index(_:offsetBy:)();
        v573 = v465;
        v567 = v466;
        v455 = v467;
        result = outlined destroy of BigString(&v689);
      }

      else
      {
        v683 = *(*(&v595 + 1) + 24);
        v684 = *(*(&v595 + 1) + 40);
        v685 = *(*(&v595 + 1) + 56);
        if (__OFSUB__(v583, v562))
        {
          goto LABEL_352;
        }

        swift_unknownObjectRetain();
        v457 = BigString.UTF8View.index(_:offsetBy:)();
        v573 = v507;
        v567 = v508;
        v455 = v509;
        result = swift_unknownObjectRelease();
      }

      v458 = v577;
      v452 = 0;
      v456 = v457;
      v459 = v455;
      v468 = v580;
      v460 = v559;
      v462 = *(&v595 + 1);
    }

    v381 = __OFADD__(v468, 1);
    v451 = v468 + 1;
    if (v381)
    {
      goto LABEL_332;
    }
  }

  v243 = v563;
  v248 = v564;
  v293 = v579;
  v249 = v581;
  v251 = v543;
  v250 = v553;
  v252 = v554;
  v254 = v576;
  v245 = v568;
  result = v569;
  if (v590 == v451)
  {
    goto LABEL_101;
  }

LABEL_135:
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v243, type metadata accessor for AttributedString.Runs);
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v248, type metadata accessor for AttributedString.Runs);

  v49 = 0;
LABEL_136:
  outlined destroy of String.LocalizationValue.FormatArgument.Storage(v638);
  return v49 & 1;
}

uint64_t specialized static String.LocalizationValue.FormatArgument.CodableStorage.== infix(_:_:)(unint64_t a1, uint64_t a2)
{
  *&v792 = a2;
  v791 = a1;
  v926 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v774 = &v719 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v776 = &v719 - v5;
  v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
  MEMORY[0x1EEE9AC00](v727);
  v733 = (&v719 - v6);
  v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
  MEMORY[0x1EEE9AC00](v723);
  v734 = &v719 - v7;
  v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  MEMORY[0x1EEE9AC00](v722);
  v729 = (&v719 - v8);
  v751 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v751);
  v741 = (&v719 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v742 = &v719 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v740 = &v719 - v13;
  v750 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
  MEMORY[0x1EEE9AC00](v750);
  v752 = &v719 - v14;
  v15 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v756 = &v719 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v757 = (&v719 - v18);
  v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
  MEMORY[0x1EEE9AC00](v724);
  v730 = (&v719 - v19);
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
  MEMORY[0x1EEE9AC00](v721);
  v731 = &v719 - v20;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
  MEMORY[0x1EEE9AC00](v720);
  v728 = (&v719 - v21);
  v746 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v746);
  *&v737 = &v719 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v738 = &v719 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v736 = (&v719 - v26);
  v745 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR);
  MEMORY[0x1EEE9AC00](v745);
  v748 = &v719 - v27;
  v28 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v754 = (&v719 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v755 = &v719 - v31;
  v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  MEMORY[0x1EEE9AC00](v726);
  v743 = &v719 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v744 = &v719 - v34;
  v789 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v783 = *(v789 - 8);
  MEMORY[0x1EEE9AC00](v789);
  v732 = &v719 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v739 = &v719 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v749 = &v719 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v758 = &v719 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v747 = &v719 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v753 = &v719 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v782 = &v719 - v47;
  v773.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v773.i64[0]);
  *&v786 = &v719 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v785 = &v719 - v50;
  v788 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v778 = *(v788 - 8);
  MEMORY[0x1EEE9AC00](v788);
  v735 = &v719 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v784 = &v719 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v775 = &v719 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v787 = &v719 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v772 = &v719 - v59;
  v780 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v780);
  v725 = &v719 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v779 = &v719 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v759 = (&v719 - v64);
  MEMORY[0x1EEE9AC00](v65);
  *&v781 = &v719 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v777 = (&v719 - v68);
  *&v790 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  MEMORY[0x1EEE9AC00](v790);
  v768 = &v719 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v765 = &v719 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v771 = &v719 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v767.i64[0] = &v719 - v75;
  MEMORY[0x1EEE9AC00](v76);
  *&v766 = &v719 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v770 = &v719 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v769 = (&v719 - v81);
  MEMORY[0x1EEE9AC00](v82);
  v763 = &v719 - v83;
  MEMORY[0x1EEE9AC00](v84);
  *&v762 = &v719 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v760 = (&v719 - v87);
  MEMORY[0x1EEE9AC00](v88);
  *&v761 = &v719 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = (&v719 - v91);
  MEMORY[0x1EEE9AC00](v93);
  v95 = (&v719 - v94);
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v719 - v97);
  MEMORY[0x1EEE9AC00](v99);
  v101 = (&v719 - v100);
  MEMORY[0x1EEE9AC00](v102);
  v104 = (&v719 - v103);
  MEMORY[0x1EEE9AC00](v105);
  v107 = (&v719 - v106);
  MEMORY[0x1EEE9AC00](v108);
  v764 = &v719 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO_AGtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO_AGtMR);
  MEMORY[0x1EEE9AC00](v110 - 8);
  v112 = &v719 - v111;
  v114 = &v719 + *(v113 + 56) - v111;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v791, &v719 - v111, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
  v115 = v792;
  *&v792 = v114;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v115, v114, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v107, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v249 = v792;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_113;
      }

      v250 = *v107;
      goto LABEL_71;
    case 2u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v104, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v191 = v792;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_113;
      }

      v170 = *v104 == *v191;
      goto LABEL_91;
    case 3u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v101, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v249 = v792;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_113;
      }

      v250 = *v101;
LABEL_71:
      v252 = *v249;
      goto LABEL_74;
    case 4u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v98, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v169 = v792;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_113;
      }

      v170 = *v98 == *v169;
      goto LABEL_91;
    case 5u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v95, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v255 = v792;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_113;
      }

      v170 = *v95 == *v255;
      goto LABEL_91;
    case 6u:
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v92, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v190 = v792;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_113;
      }

      v251 = *v92;
      goto LABEL_90;
    case 7u:
      v189 = v761;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v761, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v190 = v792;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_68;
      }

      goto LABEL_113;
    case 8u:
      v363 = v760;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v760, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v365 = *v363;
      v364 = v363[1];
      v366 = v792;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_113;
      }

      if (v365 == *v366 && v364 == v366[1])
      {
      }

      else
      {
        v379 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v379 & 1) == 0)
        {
          goto LABEL_244;
        }
      }

      v380 = v112;
      goto LABEL_121;
    case 9u:
      v189 = v762;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v762, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v190 = v792;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_113;
      }

LABEL_68:
      v251 = *v189;
LABEL_90:
      v170 = v251 == *v190;
      goto LABEL_91;
    case 0xAu:
      v275 = v763;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v763, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v277 = *v275;
      v276 = v275[1];
      v278 = v792;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

LABEL_113:
        outlined destroy of TermOfAddress?(v112, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO_AGtMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO_AGtMR);
        goto LABEL_114;
      }

      v719 = v112;
      v279 = *v278;
      v751 = v278[1];
      v752 = v276;
      v280 = *(v277 + 40);
      v915 = *(v277 + 24);
      v916 = v280;
      v917 = *(v277 + 56);
      *&v792 = BigString.startIndex.getter();
      v791 = v281;
      v283 = v282;
      v285 = v284;
      v286 = BigString.endIndex.getter();
      v288 = v287;
      v290 = v289;
      v292 = v291;
      v293 = *(v279 + 40);
      v912 = *(v279 + 24);
      v913 = v293;
      v774 = v279;
      v914 = *(v279 + 56);
      v294 = BigString.startIndex.getter();
      v764 = v295;
      v765 = v294;
      v763 = v296;
      *&v762 = v297;
      v298 = BigString.endIndex.getter();
      v760 = v299;
      *&v761 = v298;
      v756 = v301;
      v757 = v300;
      *&v803[0] = v792;
      *(&v803[0] + 1) = v791;
      *&v803[1] = v283;
      *(&v803[1] + 1) = v285;
      *&v803[2] = v286;
      *(&v803[2] + 1) = v288;
      *&v803[3] = v290;
      *(&v803[3] + 1) = v292;
      v302 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

      RangeSet.init(_:)();
      v771 = v277;
      *v781 = v277;
      v303 = v787;
      v768 = v302;
      RangeSet.init()();
      v304 = v782;
      RangeSet.ranges.getter();
      v305 = v783;
      v306 = v785;
      v307 = v789;
      v754 = *(v783 + 16);
      v755 = v783 + 16;
      v754(v785, v304, v789);
      v308 = *(v773.i64[0] + 36);
      v309 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BC8]);
      dispatch thunk of Collection.startIndex.getter();
      v310 = *(v305 + 8);
      v783 = v305 + 8;
      v769 = v310;
      (v310)(v304, v307);
      dispatch thunk of Collection.endIndex.getter();
      v311 = *&v308[v306];
      *&v792 = v309;
      if (v311 != *&v803[0])
      {
        v770 = v308;
        do
        {
          v381 = dispatch thunk of Collection.subscript.read();
          v383 = v382[5];
          v791 = v382[4];
          *&v790 = v383;
          v776 = v382[6];
          v381(v803, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v384 = v771;
          v385 = *(v771 + 40);
          v909 = *(v771 + 24);
          v910 = v385;
          v911 = *(v771 + 56);
          swift_unknownObjectRetain();
          v386 = BigString.UnicodeScalarView.index(roundingDown:)();
          v388 = v387;
          v390 = v389;
          v392 = v391;
          swift_unknownObjectRelease();
          v393 = *(v384 + 40);
          v906 = *(v384 + 24);
          v907 = v393;
          v908 = *(v384 + 56);
          swift_unknownObjectRetain();
          v394 = BigString.UnicodeScalarView.index(roundingDown:)();
          v396 = v395;
          v398 = v397;
          v400 = v399;
          swift_unknownObjectRelease();
          *&v803[0] = v386;
          *(&v803[0] + 1) = v388;
          *&v803[1] = v390;
          v303 = v787;
          *(&v803[1] + 1) = v392;
          *&v803[2] = v394;
          *(&v803[2] + 1) = v396;
          v307 = v789;
          *&v803[3] = v398;
          *(&v803[3] + 1) = v400;
          if ((v394 ^ v386) >= 0x400)
          {
            v401 = RangeSet._ranges.modify();
            RangeSet.Ranges._insert(contentsOf:)();
            v401(&v836, 0);
          }

          v306 = v785;
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*&v770[v306] != *&v803[0]);
      }

      outlined destroy of TermOfAddress?(v306, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
      v312 = v780;
      v313 = v778;
      v314 = *(v778 + 16);
      v315 = v781;
      v316 = v781 + *(v780 + 24);
      v317 = v303;
      v318 = v788;
      v776 = v778 + 16;
      v770 = v314;
      (v314)(v316, v317, v788);
      v319 = v782;
      RangeSet.ranges.getter();
      v320 = RangeSet.Ranges.count.getter();
      v321 = v769;
      (v769)(v319, v307);
      v322 = *(v312 + 28);
      LODWORD(v750) = v320 > 1;
      *(v315 + v322) = v750;
      v323 = v753;
      RangeSet.ranges.getter();
      specialized Collection.first.getter(v803);
      v321(v323, v307);
      v324 = *(&v803[1] + 1);
      if (*(&v803[1] + 1) == 2)
      {
        goto LABEL_100;
      }

      v753 = *(&v803[0] + 1);
      v325 = *&v803[0];
      v748 = *&v803[1];
      v326 = v747;
      RangeSet.ranges.getter();
      if (dispatch thunk of Collection.isEmpty.getter())
      {
        v321(v326, v307);
        v318 = v788;
        v313 = v778;
LABEL_100:
        v327 = v771;
        v328 = *(v771 + 96);
        v329 = swift_unknownObjectRetain();
        AttributedString._InternalRuns.startIndex.getter(v329, v328, v843);
        swift_unknownObjectRelease();
        v330 = *(v327 + 40);
        v903 = *(v327 + 24);
        v904 = v330;
        v905 = *(v327 + 56);
        v791 = BigString.startIndex.getter();
        *&v790 = v331;
        v785 = v332;
        v334 = v333;
        v766 = v843[0];
        v767 = v843[1];
        LOBYTE(v803[0]) = 0;
        v335 = *(v327 + 96);
        v336 = swift_unknownObjectRetain();
        v337 = 0;
        AttributedString._InternalRuns.startIndex.getter(v336, v335, &v844);
        swift_unknownObjectRelease();
        v338 = *(v313 + 8);
        v338(v787, v318);
        v339 = v772;
        v772 = v338;
        v338(v339, v318);
        v340 = *(v327 + 40);
        v900 = *(v327 + 24);
        v901 = v340;
        v902 = *(v327 + 56);
        v341 = BigString.startIndex.getter();
        v346 = v766;
        v345 = v767;
        v347 = v791;
        v348 = v785;
        v349 = v790;
        v350 = 0;
        v351 = v846;
        v352 = v844;
        v353 = -1;
        v354 = v845;
        v355 = v791;
        LOBYTE(v803[0]) = 0;
        v356 = v790;
        v357 = v785;
        v324 = v334;
        v358 = v341;
        v359 = v342;
        v360 = v343;
        v361 = v344;
        v362 = -1;
      }

      else
      {
        v413 = v326;
        v414 = v307;
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR, MEMORY[0x1E69E7BB0]);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v415 = dispatch thunk of Collection.subscript.read();
        v416 = v325;
        v358 = v417[4];
        v418 = v417[5];
        v419 = v417[7];
        v745 = v417[6];
        v746 = v418;
        v740 = v419;
        v415(v803, 0);
        v321(v413, v307);
        v747 = v416;
        v420 = v771;
        AttributedString.Guts.findRun(at:)(v416, v324, v803);
        LODWORD(v742) = 0;
        v766 = v803[0];
        v767 = v803[1];
        v791 = *(&v803[2] + 1);
        v785 = *(&v803[3] + 1);
        *&v790 = *&v803[3];
        v741 = *&v803[4];
        v421 = *(v420 + 40);
        v903 = *(v420 + 24);
        v904 = v421;
        v905 = *(v420 + 56);
        if ((BigString.endIndex.getter() ^ v358) >= 0x400)
        {
          v443 = v740;
          AttributedString.Guts.findRun(at:)(v358, v740, v803);
          v737 = *(v803 + 8);
          v352 = *&v803[0];
          v738 = *(&v803[1] + 1);
          v736 = *(&v803[2] + 1);
          v733 = *(&v803[3] + 1);
          v734 = *&v803[3];
          v731 = *&v803[4];
          v444 = v782;
          v445 = v788;
          RangeSet.ranges.getter();
          v362 = RangeSet.Ranges.count.getter();
          (v769)(v444, v414);
          v446 = *(v778 + 8);
          v446(v787, v445);
          v447 = v772;
          v772 = v446;
          v446(v447, v445);
          v354 = v737;
          v351 = v738;
          v361 = v443;
          v360 = v745;
          v359 = v746;
          v344 = v731;
          v343 = v733;
          v342 = v734;
          v341 = v736;
          v353 = 0;
        }

        else
        {
          if (*(v420 + 72))
          {
            v422 = *(v420 + 80);
          }

          else
          {
            v422 = 0;
          }

          v738 = v422;
          v352 = *(v420 + 96);
          v423 = swift_unknownObjectRetain();
          v424 = specialized Rope._endPath.getter(v423);
          swift_unknownObjectRelease();
          v425 = v782;
          v426 = v788;
          RangeSet.ranges.getter();
          v362 = RangeSet.Ranges.count.getter();
          (v769)(v425, v414);
          v427 = *(v778 + 8);
          v427(v787, v426);
          v428 = v772;
          v772 = v427;
          v427(v428, v426);
          v351 = v738;
          v353 = 0;
          v354 = v424;
          v341 = v358;
          v360 = v745;
          v359 = v746;
          v342 = v746;
          v343 = v745;
          v361 = v740;
          v344 = v740;
        }

        v355 = v747;
        v357 = v748;
        v356 = v753;
        v347 = v791;
        v337 = v742;
        v349 = v790;
        v348 = v785;
        v334 = v741;
        v346 = v766;
        v345 = v767;
        v350 = v750;
      }

      v448 = v781;
      *(v781 + 24) = vextq_s8(v346, v345, 8uLL);
      *(v448 + 8) = vextq_s8(v345, v346, 8uLL);
      *(v448 + 40) = v347;
      *(v448 + 48) = v349;
      *(v448 + 56) = v348;
      *(v448 + 64) = v334;
      *(v448 + 72) = v355;
      *(v448 + 80) = v356;
      *(v448 + 88) = v357;
      *(v448 + 96) = v324;
      *(v448 + 104) = v353;
      *(v448 + 112) = v337;
      *(v448 + 113) = v350;
      *(v448 + 120) = v351;
      *(v448 + 128) = v352;
      *(v448 + 136) = v354;
      *(v448 + 152) = v341;
      *(v448 + 160) = v342;
      *(v448 + 168) = v343;
      *(v448 + 176) = v344;
      *(v448 + 184) = v358;
      *(v448 + 192) = v359;
      *(v448 + 200) = v360;
      *(v448 + 208) = v361;
      *(v448 + 216) = v362;
      *(v448 + 224) = 0;
      *(v448 + 225) = v350;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v448, v777, type metadata accessor for AttributedString.Runs);
      *&v803[0] = v765;
      *(&v803[0] + 1) = v764;
      *&v803[1] = v763;
      *(&v803[1] + 1) = v762;
      *&v803[2] = v761;
      *(&v803[2] + 1) = v760;
      *&v803[3] = v757;
      *(&v803[3] + 1) = v756;
      v449 = v774;

      RangeSet.init(_:)();
      *v779 = v449;
      RangeSet.init()();
      v450 = v782;
      RangeSet.ranges.getter();
      v451 = v786;
      v452 = v789;
      v754(v786, v450, v789);
      v453 = *(v773.i64[0] + 36);
      dispatch thunk of Collection.startIndex.getter();
      v454 = v451;
      (v769)(v450, v452);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v451 + v453) != *&v803[0])
      {
        v785 = v453;
        do
        {
          v463 = dispatch thunk of Collection.subscript.read();
          v465 = v464[5];
          v791 = v464[4];
          *&v790 = v465;
          v787 = v464[6];
          v463(v803, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v466 = v774;
          v467 = *(v774 + 40);
          v897 = *(v774 + 24);
          v898 = v467;
          v899 = *(v774 + 56);
          swift_unknownObjectRetain();
          v468 = BigString.UnicodeScalarView.index(roundingDown:)();
          v470 = v469;
          v472 = v471;
          v474 = v473;
          swift_unknownObjectRelease();
          v475 = *(v466 + 40);
          v894 = *(v466 + 24);
          v895 = v475;
          v896 = *(v466 + 56);
          swift_unknownObjectRetain();
          v476 = BigString.UnicodeScalarView.index(roundingDown:)();
          v478 = v477;
          v480 = v479;
          v482 = v481;
          swift_unknownObjectRelease();
          *&v803[0] = v468;
          *(&v803[0] + 1) = v470;
          *&v803[1] = v472;
          *(&v803[1] + 1) = v474;
          *&v803[2] = v476;
          *(&v803[2] + 1) = v478;
          v452 = v789;
          *&v803[3] = v480;
          *(&v803[3] + 1) = v482;
          if ((v476 ^ v468) >= 0x400)
          {
            v483 = RangeSet._ranges.modify();
            RangeSet.Ranges._insert(contentsOf:)();
            v483(&v836, 0);
          }

          v454 = v786;
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*(v454 + v785) != *&v803[0]);
      }

      outlined destroy of TermOfAddress?(v454, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
      v455 = v780;
      v456 = v779;
      (v770)(&v779[*(v780 + 24)], v784, v788);
      v457 = v782;
      RangeSet.ranges.getter();
      v458 = RangeSet.Ranges.count.getter();
      v459 = v457;
      v460 = v769;
      (v769)(v459, v452);
      v456[*(v455 + 28)] = v458 > 1;
      v461 = v758;
      RangeSet.ranges.getter();
      specialized Collection.first.getter(&v836);
      v460(v461, v452);
      if (*(&v837 + 1) == 2)
      {
        v462 = v774;
LABEL_163:
        v486 = *(v462 + 96);
        v487 = swift_unknownObjectRetain();
        AttributedString._InternalRuns.startIndex.getter(v487, v486, &v847);
        swift_unknownObjectRelease();
        v488 = *(v462 + 40);
        v891 = *(v462 + 24);
        v892 = v488;
        v893 = *(v462 + 56);
        v489 = BigString.startIndex.getter();
        v491 = v490;
        v493 = v492;
        v495 = v494;
        v496 = *(v462 + 96);
        v497 = swift_unknownObjectRetain();
        AttributedString._InternalRuns.startIndex.getter(v497, v496, &v849);
        swift_unknownObjectRelease();
        v498 = v778;
        v499 = v788;
        v500 = v772;
        (v772)(v784, v788);
        v500(v775, v499);
        v501 = *(v462 + 40);
        v890[15] = *(v462 + 24);
        v890[16] = v501;
        v890[17] = *(v462 + 56);
        v502 = BigString.startIndex.getter();
        v503 = v851;
        v504 = v850;
        v505 = vextq_s8(v848, v847, 8uLL);
        v506 = v779;
        *(v779 + 24) = vextq_s8(v847, v848, 8uLL);
        *(v506 + 8) = v505;
        *(v506 + 40) = v489;
        *(v506 + 48) = v491;
        *(v506 + 56) = v493;
        *(v506 + 64) = v495;
        *(v506 + 72) = v489;
        *(v506 + 80) = v491;
        *(v506 + 88) = v493;
        *(v506 + 96) = v495;
        *(v506 + 104) = -1;
        *(v506 + 112) = 0;
        *(v506 + 120) = v503;
        *(v506 + 128) = v849;
        *(v506 + 144) = v504;
        *(v506 + 152) = v502;
        *(v506 + 160) = v507;
        *(v506 + 168) = v508;
        *(v506 + 176) = v509;
        *(v506 + 184) = v502;
        *(v506 + 192) = v507;
        *(v506 + 200) = v508;
        *(v506 + 208) = v509;
        *(v506 + 216) = -1;
        *(v506 + 224) = 0;
        v259 = v719;
        goto LABEL_171;
      }

      *&v792 = *(&v837 + 1);
      LODWORD(v791) = v458 > 1;
      v484 = v836;
      v787 = v837;
      v485 = v749;
      RangeSet.ranges.getter();
      specialized BidirectionalCollection.last.getter(&v829);
      v460(v485, v452);
      v462 = v774;
      if (*(&v830 + 1) == 2)
      {
        goto LABEL_163;
      }

      v790 = v831;
      v786 = v832;
      v785 = v484;
      v510 = v787;
      AttributedString.Guts.findRun(at:)(v484, v792, v803);
      v773 = v803[1];
      v781 = *(&v803[3] + 8);
      v766 = *(&v803[2] + 8);
      v767 = v803[0];
      v511 = *(v462 + 40);
      v891 = *(v462 + 24);
      v892 = v511;
      v893 = *(v462 + 56);
      v512 = BigString.endIndex.getter();
      v513 = v790;
      v765 = *(&v484 + 1);
      if ((v512 ^ v790) >= 0x400)
      {
        AttributedString.Guts.findRun(at:)(v790, *(&v786 + 1), v803);
        v517 = *&v803[0];
        v525 = *&v803[1];
        v763 = *(&v803[0] + 1);
        v764 = *(&v803[1] + 1);
        v761 = *(&v803[3] + 8);
        v762 = *(&v803[2] + 8);
        v518 = v779;
        v529 = v782;
        v530 = v788;
        RangeSet.ranges.getter();
        v531 = v789;
        v522 = RangeSet.Ranges.count.getter();
        (v769)(v529, v531);
        v532 = v772;
        (v772)(v784, v530);
        v532(v775, v530);
        v528 = v761;
        v526 = v762;
        v524 = v790;
        v527 = v786;
      }

      else
      {
        if (*(v462 + 72))
        {
          v514 = *(v462 + 80);
        }

        else
        {
          v514 = 0;
        }

        v764 = v514;
        v515 = *(v462 + 96);
        v516 = swift_unknownObjectRetain();
        v517 = v515;
        v763 = specialized Rope._endPath.getter(v516);
        swift_unknownObjectRelease();
        v518 = v779;
        v519 = v782;
        v520 = v788;
        RangeSet.ranges.getter();
        v521 = v789;
        v522 = RangeSet.Ranges.count.getter();
        (v769)(v519, v521);
        v523 = v772;
        (v772)(v784, v520);
        v523(v775, v520);
        v524 = v790;
        v525 = 0;
        v526 = v790;
        v527 = v786;
        v528 = v786;
      }

      v533 = v791;
      v534 = v773;
      v535 = v767;
      *(v518 + 24) = vextq_s8(v767, v773, 8uLL);
      *(v518 + 8) = vextq_s8(v534, v535, 8uLL);
      *(v518 + 40) = v766;
      *(v518 + 56) = v781;
      v536 = v765;
      *(v518 + 9) = v785;
      *(v518 + 10) = v536;
      v537 = v792;
      *(v518 + 11) = v510;
      *(v518 + 12) = v537;
      *(v518 + 13) = 0;
      v518[112] = 0;
      v518[113] = v533;
      v538 = v763;
      *(v518 + 15) = v764;
      *(v518 + 16) = v517;
      *(v518 + 17) = v538;
      *(v518 + 18) = v525;
      *(v518 + 152) = v526;
      *(v518 + 168) = v528;
      *(v518 + 23) = v513;
      *(v518 + 12) = vextq_s8(v524, v527, 8uLL);
      *(v518 + 26) = v527.i64[1];
      *(v518 + 27) = v522;
      v518[224] = 0;
      v518[225] = v533;
      v498 = v778;
      v506 = v518;
      v259 = v719;
LABEL_171:
      v539 = v759;
      result = outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v506, v759, type metadata accessor for AttributedString.Runs);
      v540 = v777;
      v541 = *v777;
      *&v792 = *v539;
      if (v541 == v792)
      {
        result = static RangeSet.== infix(_:_:)();
        if (result)
        {
          goto LABEL_183;
        }
      }

      v542 = v540[1];
      v543 = v540[15];
      v544 = v540[23];
      v545 = v540[26];
      if (*(v540 + *(v780 + 28)) == 1)
      {
        v775 = v541;
        v778 = 0;
        v636 = *(v540 + 112);
        v637 = v540[12];
        v638 = v540[13];
        v639 = v540[9];
        v784 = v540[8];
        v640 = v540[6];
        v768 = v540[7];
        v772 = v640;
        v641 = v540[4];
        *&v781 = v540[5];
        *&v786 = v641;
        *&v762 = v544;
        v756 = v544 >> 10;
        v787 = v639;
        *&v761 = v639 >> 10;
        v757 = (v498 + 8);
        v758 = v545;
        v642 = v542;
        v763 = v637;
        v764 = v545;
        v791 = v637;
        v643 = v543;
        v644 = v540[2];
        v785 = v540[3];
        *&v790 = v644;
        while (1)
        {
          LOBYTE(v836) = v636;
          v779 = v643;
          if (v642 >= v543)
          {
            if (v543 < v642)
            {
              goto LABEL_357;
            }

            if (v758 == 2)
            {
              goto LABEL_357;
            }

            v643 = v779;
            if (v791 != 2 && v787 >> 10 >= v756)
            {
              goto LABEL_357;
            }
          }

          if (v642 < v542)
          {
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
            return result;
          }

          v645 = v542 < v642 || v763 == 2;
          v646 = v645;
          if (!v645)
          {
            if (v791 == 2)
            {
              goto LABEL_381;
            }

            if (v761 > v787 >> 10)
            {
              goto LABEL_370;
            }
          }

          if (v642 >= v643)
          {
            if (v643 < v642)
            {
              goto LABEL_371;
            }

            if (v764 == 2)
            {
              goto LABEL_382;
            }

            if (v791 == 2)
            {
              v647 = v775;
              v643 = v779;
              v648 = v790;
              v649 = v786;
              if (!v646)
              {
                goto LABEL_380;
              }

              goto LABEL_292;
            }

            v643 = v779;
            if (v787 >> 10 >= v762 >> 10)
            {
              goto LABEL_375;
            }
          }

          v647 = v775;
          v648 = v790;
          v649 = v786;
          if ((v646 & 1) == 0)
          {
            if (v791 == 2)
            {
              goto LABEL_380;
            }

            if (v761 > v787 >> 10)
            {
              goto LABEL_374;
            }
          }

LABEL_292:
          if (v643 < v642)
          {
            goto LABEL_364;
          }

          if (v642 >= v643 && v791 != 2)
          {
            if (v764 == 2)
            {
              goto LABEL_383;
            }

            if (v762 >> 10 < v787 >> 10)
            {
              goto LABEL_372;
            }
          }

          if (v649 == 1 || v648 != *(v647 + 12))
          {
            goto LABEL_379;
          }

          if (v784 == 2)
          {
            v650 = *(v647 + 9);
            if (v650)
            {
              v652 = *(v775 + 10);
              v651 = *(v775 + 11);
              swift_unknownObjectRetain();
              v653 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v790, v785, v786, v650, v652, v651);
              swift_unknownObjectRelease();
            }

            else
            {
              v653 = 0;
            }

            v767.i64[0] = v781 >> 11;
            v647 = v775;
            v655 = *(v775 + 24);
            v656 = *(v775 + 40);
            v872 = *(v775 + 56);
            v871 = v656;
            v870 = v655;
            v657 = *(v775 + 40);
            v867 = *(v775 + 24);
            v868 = v657;
            v869 = *(v775 + 56);
            BigString.startIndex.getter();
            v773.i64[0] = v658;
            *&v766 = v659;
            v922[0] = v870;
            v922[1] = v871;
            v923 = v872;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v922, v803);
            v773.i64[0] = v653;
            *&v766 = BigString.UTF8View.index(_:offsetBy:)();
            result = outlined destroy of BigString(&v870);
            v648 = v790;
            v649 = v786;
          }

          else
          {
            v767.i64[0] = v781 >> 11;
            v654 = *(v647 + 40);
            v864 = *(v647 + 24);
            v865 = v654;
            v866 = *(v647 + 56);
            swift_unknownObjectRetain();
            *&v766 = BigString.UTF8View.index(roundingDown:)();
            result = swift_unknownObjectRelease();
            v773.i64[0] = v767.i64[0];
          }

          v660 = *(v647 + 9);
          v661 = *(v647 + 12);
          *&v786 = *(v647 + 11);
          *&v803[0] = v648;
          v662 = v785;
          *(&v803[0] + 1) = v785;
          *&v803[1] = v649;
          v663 = __OFADD__(v642, 1);
          v664 = v642 + 1;
          if (v663)
          {
            goto LABEL_365;
          }

          if (v648 != v661)
          {
            goto LABEL_366;
          }

          if (v649)
          {
            v665 = *(v649 + 24 * ((v785 >> ((4 * *(v649 + 18) + 8) & 0x3C)) & 0xF) + 24);
            result = swift_unknownObjectRetain();
          }

          else
          {
            swift_unknownObjectRetain();
            v665 = specialized Rope._Node.subscript.getter(v662, v660);
            v760 = v666;
          }

          if (__OFADD__(v773.i64[0], v665))
          {
            goto LABEL_367;
          }

          if (v660)
          {
            v667 = ((-15 << ((4 * *(v660 + 18) + 8) & 0x3C)) - 1) & *(v660 + 18) | (*(v660 + 16) << ((4 * *(v660 + 18) + 8) & 0x3C));
          }

          else
          {
            v667 = 0;
          }

          if (v662 >= v667)
          {
            goto LABEL_368;
          }

          v765 = v664;
          v773.i64[0] += v665;
          if (v649 && (v668 = (4 * *(v649 + 18) + 8) & 0x3C, v669 = ((v662 >> v668) & 0xF) + 1, v669 < *(v649 + 16)))
          {
            v785 = (v669 << v668) | ((-15 << v668) - 1) & v662;
            swift_unknownObjectRelease();
          }

          else if (specialized Rope._Node.formSuccessor(of:)(v803, v660))
          {
            swift_unknownObjectRelease();
            v785 = *(&v803[0] + 1);
          }

          else
          {
            if (v660)
            {
              v670 = *(v660 + 18);
              v671 = *(v660 + 16);
              swift_unknownObjectRelease();
              v785 = ((-15 << ((4 * v670 + 8) & 0x3C)) - 1) & v670 | (v671 << ((4 * v670 + 8) & 0x3C));
            }

            else
            {
              v785 = 0;
            }

            *&v803[0] = v790;
            *(&v803[0] + 1) = v785;
            *&v803[1] = 0;
          }

          v672 = v789;
          v673 = *(v780 + 24);
          *&v790 = *&v803[0];
          *&v786 = *&v803[1];
          if (v836)
          {
            (v770)(v735, v777 + v673, v788);
            if (v791 == 2)
            {
              v674 = v766;
            }

            else
            {
              v674 = v787;
            }

            v675 = v782;
            RangeSet.ranges.getter();
            v676 = RangeSet.Ranges.count.getter();
            (v769)(v675, v672);
            if (v676 < 1)
            {
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
            }

            v677 = 0;
            v678 = v674 >> 10;
            while (1)
            {
              while (1)
              {
                if (__OFADD__(v677, v676))
                {
                  goto LABEL_362;
                }

                v679 = (v677 + v676) / 2;
                v680 = v782;
                RangeSet.ranges.getter();
                v681 = v789;
                RangeSet.Ranges.subscript.getter();
                (v769)(v680, v681);
                if (v678 >= *&v803[0] >> 10)
                {
                  break;
                }

                v676 = (v677 + v676) / 2;
                if (v677 >= v679)
                {
                  goto LABEL_361;
                }
              }

              v638 = (v677 + v676) / 2;
              v682 = *&v803[2];
              if (v678 < *&v803[2] >> 10)
              {
                break;
              }

              v677 = v679 + 1;
              if (v679 + 1 >= v676)
              {
                goto LABEL_361;
              }
            }

            result = (*v757)(v735, v788);
          }

          else
          {
            v683 = v782;
            RangeSet.ranges.getter();
            RangeSet.Ranges.subscript.getter();
            result = (v769)(v683, v672);
            v682 = *&v803[2];
          }

          if (v773.i64[0] >= (v682 >> 11))
          {
            v692 = v638 + 1;
            if (__OFADD__(v638, 1))
            {
              goto LABEL_373;
            }

            v693 = v777;
            v694 = v782;
            RangeSet.ranges.getter();
            v695 = v789;
            v696 = RangeSet.Ranges.count.getter();
            result = (v769)(v694, v695);
            if (v692 == v696)
            {
              v642 = v693[15];
              *&v790 = v693[16];
              v697 = v693[18];
              v785 = v693[17];
              *&v786 = v697;
              v687 = v693[19];
              v772 = v693[20];
              v691 = v693[22];
              v768 = v693[21];
              v698 = v693[26];
              v638 = v693[27];
              v787 = v693[23];
              *&v762 = v787;
              v791 = v698;
              v764 = v698;
              v643 = v642;
              v636 = *(v693 + 224);
              v699 = v778;
            }

            else
            {
              v638 = v692;
              v704 = v782;
              RangeSet.ranges.getter();
              v705 = v789;
              RangeSet.Ranges.subscript.getter();
              (v769)(v704, v705);
              v791 = *(&v803[1] + 1);
              v706 = *(v775 + 9);
              v707 = *(v775 + 10);
              v709 = *(v775 + 11);
              v708 = *(v775 + 12);
              v787 = *&v803[0];
              *&v790 = *&v803[0] >> 11;
              swift_unknownObjectRetain();
              result = specialized Rope.find<A>(at:in:preferEnd:)(v790, 0, v706, v707, v709, v708);
              v785 = v710;
              *&v786 = v711;
              v784 = v712;
              *&v790 = v708;
              if (result != v708)
              {
                goto LABEL_377;
              }

              if (v706)
              {
                v713 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v790, v785, v786, v706, v707);
                result = swift_unknownObjectRelease();
              }

              else
              {
                v713 = 0;
              }

              v714 = *(v775 + 40);
              v861 = *(v775 + 24);
              v862 = v714;
              v863 = *(v775 + 56);
              if (__OFSUB__(0, v784))
              {
                goto LABEL_378;
              }

              swift_unknownObjectRetain();
              v687 = BigString.UTF8View.index(_:offsetBy:)();
              v772 = v715;
              v768 = v716;
              v691 = v717;
              result = swift_unknownObjectRelease();
              v636 = 0;
              v699 = v778;
              v643 = v779;
              v642 = v713;
            }
          }

          else
          {
            if (v784 == 2)
            {
              v684 = *(v775 + 24);
              v685 = *(v775 + 40);
              v860 = *(v775 + 56);
              v859 = v685;
              v858 = v684;
              v686 = *(v775 + 40);
              v855 = *(v775 + 24);
              v856 = v686;
              v857 = *(v775 + 56);
              BigString.startIndex.getter();
              v924[0] = v858;
              v924[1] = v859;
              v925 = v860;
              outlined init with copy of Rope<BigString._Chunk>._Node?(v924, v803);
              v687 = BigString.UTF8View.index(_:offsetBy:)();
              v772 = v688;
              v768 = v689;
              v691 = v690;
              result = outlined destroy of BigString(&v858);
            }

            else
            {
              v700 = *(v775 + 40);
              v852 = *(v775 + 24);
              v853 = v700;
              v854 = *(v775 + 56);
              if (__OFSUB__(v773.i64[0], v767.i64[0]))
              {
                goto LABEL_376;
              }

              swift_unknownObjectRetain();
              v687 = BigString.UTF8View.index(_:offsetBy:)();
              v772 = v701;
              v768 = v702;
              v691 = v703;
              result = swift_unknownObjectRelease();
            }

            v636 = 0;
            v787 = v687;
            v791 = v691;
            v699 = v778;
            v643 = v779;
            v642 = v765;
          }

          v663 = __OFADD__(v699, 1);
          v718 = v699 + 1;
          if (v663)
          {
            goto LABEL_369;
          }

          v784 = v691;
          *&v781 = v687;
          v778 = v718;
        }
      }

      v546 = v543 - v542;
      if (__OFSUB__(v543, v542))
      {
        __break(1u);
        goto LABEL_356;
      }

      v547 = v540[22];
      if (v545 == 2)
      {
        v548 = v547 != 2;
      }

      else
      {
        v548 = v547 == 2 || (v544 ^ v540[19]) > 0x3FF;
      }

      v549 = v546 + v548;
      if (__OFADD__(v546, v548))
      {
LABEL_356:
        __break(1u);
LABEL_357:
        v259 = v719;
        v539 = v759;
        v540 = v777;
        v541 = v775;
        v549 = v778;
      }

      if (v549 != specialized Collection.count.getter())
      {
        goto LABEL_264;
      }

      if (specialized Collection.isEmpty.getter())
      {
LABEL_183:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v539, type metadata accessor for AttributedString.Runs);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v540, type metadata accessor for AttributedString.Runs);

        v134 = v752 == v751;
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v259, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
        return v134 & 1;
      }

      if ((AttributedString.Runs._isPartial.getter() & 1) == 0 && (AttributedString.Runs._isPartial.getter() & 1) == 0)
      {
        v550 = *(v541 + 40);
        v890[12] = *(v541 + 24);
        v890[13] = v550;
        v890[14] = *(v541 + 56);
        v551 = BigString.count.getter();
        v552 = *(v792 + 40);
        v890[9] = *(v792 + 24);
        v890[10] = v552;
        v890[11] = *(v792 + 56);
        if (v551 != BigString.count.getter())
        {
          goto LABEL_264;
        }
      }

      v775 = v541;
      v553 = v739;
      RangeSet.ranges.getter();
      specialized Collection.first.getter(v811);
      v554 = v553;
      v555 = v789;
      v556 = v769;
      (v769)(v554, v789);
      if (v812 == 2 || (v785 = v812, *&v790 = v811[0], v791 = v811[1], v787 = v811[2], v557 = v732, RangeSet.ranges.getter(), specialized Collection.first.getter(v809), v556(v557, v555), *&v786 = v810, v810 == 2))
      {
        v259 = v719;
LABEL_264:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v539, type metadata accessor for AttributedString.Runs);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v540, type metadata accessor for AttributedString.Runs);

LABEL_265:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v259, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
        goto LABEL_114;
      }

      v789 = v809[2];
      v788 = v809[1];
      v784 = v809[0];
      v578 = v725;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v540, v725, type metadata accessor for AttributedString.Runs);
      v579 = v744;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v578, v744, type metadata accessor for AttributedString.Runs);
      v580 = v726;
      v581 = (v579 + *(v726 + 36));
      v582 = *(v578 + 56);
      v583 = *(v578 + 88);
      v821 = *(v578 + 72);
      v822[0] = v583;
      *(v822 + 10) = *(v578 + 98);
      v584 = *(v578 + 24);
      v817 = *(v578 + 8);
      v818 = v584;
      v585 = *(v578 + 40);
      v820 = v582;
      v819 = v585;
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v578, type metadata accessor for AttributedString.Runs);
      v586 = v822[0];
      v581[4] = v821;
      v581[5] = v586;
      *(v581 + 90) = *(v822 + 10);
      v587 = v818;
      *v581 = v817;
      v581[1] = v587;
      v588 = v820;
      v581[2] = v819;
      v581[3] = v588;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v539, v578, type metadata accessor for AttributedString.Runs);
      v589 = v743;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v578, v743, type metadata accessor for AttributedString.Runs);
      v590 = (v589 + *(v580 + 36));
      v591 = *(v578 + 56);
      v592 = *(v578 + 88);
      v827 = *(v578 + 72);
      v828[0] = v592;
      *(v828 + 10) = *(v578 + 98);
      v593 = *(v578 + 24);
      v823 = *(v578 + 8);
      v824 = v593;
      v594 = *(v578 + 40);
      v826 = v591;
      v825 = v594;
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v578, type metadata accessor for AttributedString.Runs);
      v595 = v828[0];
      v590[4] = v827;
      v590[5] = v595;
      *(v590 + 90) = *(v828 + 10);
      v596 = v824;
      *v590 = v823;
      v590[1] = v596;
      v597 = v826;
      v590[2] = v825;
      v590[3] = v597;
      v598 = v791;
      v599 = v787;
      while (1)
      {
        specialized IndexingIterator.next()(&v813);
        v600 = v813;
        v601 = *&v814[0];
        v602 = *&v815[0];
        specialized IndexingIterator.next()(&v796);
        v603 = v796;
        v604 = v797;
        v804[1] = v798;
        v805 = v799;
        v605 = *(&v797 + 1);
        v807 = v801;
        v808 = v802;
        v803[0] = v600;
        *(&v803[1] + 8) = *(v814 + 8);
        *(&v803[2] + 1) = *(&v814[1] + 1);
        *&v803[1] = v601;
        *&v803[3] = v602;
        *(&v803[4] + 8) = *(&v815[1] + 8);
        *(&v803[3] + 8) = *(v815 + 8);
        *(&v803[5] + 1) = v796;
        v804[0] = v797;
        v806 = v800;
        if (!v600)
        {
          outlined destroy of TermOfAddress?(v743, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          outlined destroy of TermOfAddress?(v744, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          outlined destroy of TermOfAddress?(v803, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
          if (!v603)
          {
            v259 = v719;
            v539 = v759;
            v540 = v777;
            goto LABEL_183;
          }

          goto LABEL_262;
        }

        if (!v796)
        {
          goto LABEL_261;
        }

        v783 = v800;

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v600, v603) & 1) == 0)
        {

LABEL_261:
          outlined destroy of TermOfAddress?(v803, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
          outlined destroy of TermOfAddress?(v743, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          outlined destroy of TermOfAddress?(v744, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
LABEL_262:
          v259 = v719;
          v539 = v759;
          v540 = v777;
          goto LABEL_264;
        }

        v782 = v605;
        v606 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(&v600 + 1), v604);

        if ((v606 & 1) == 0)
        {
          goto LABEL_261;
        }

        v607 = v775;
        v608 = *(v775 + 40);
        v890[6] = *(v775 + 24);
        v890[7] = v608;
        v890[8] = *(v775 + 56);
        swift_unknownObjectRetain();
        v609 = v785;
        v791 = BigString.UTF8View.index(_:offsetBy:)();
        *&v781 = v610;
        v780 = v611;
        v787 = v612;
        swift_unknownObjectRelease();
        v613 = v792;
        v614 = *(v792 + 40);
        v890[3] = *(v792 + 24);
        v890[4] = v614;
        v890[5] = *(v792 + 56);
        v783 = (v783 >> 11) - (v782 >> 11);
        swift_unknownObjectRetain();
        v247 = v784;
        v615 = v786;
        v783 = BigString.UTF8View.index(_:offsetBy:)();
        v782 = v616;
        v779 = v617;
        v778 = v618;
        swift_unknownObjectRelease();
        v619 = *(v607 + 40);
        v890[0] = *(v607 + 24);
        v890[1] = v619;
        v890[2] = *(v607 + 56);
        if (v791 >> 10 < v790 >> 10)
        {
          break;
        }

        v882 = v790;
        v883 = v598;
        v884 = v599;
        v885 = v609;
        v886 = v791;
        v598 = v781;
        v887 = v781;
        v620 = v780;
        v888 = v780;
        v889 = v787;
        v621 = *(v607 + 24);
        v919 = *(v607 + 7);
        v918[1] = *(v607 + 40);
        v918[0] = v621;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v918, v795);
        BigString.subscript.getter();
        outlined destroy of BigString(v890);
        v622 = *(v613 + 24);
        v623 = *(v613 + 40);
        v881[2] = *(v613 + 56);
        v881[1] = v623;
        v881[0] = v622;
        v624 = v783;
        if (v783 >> 10 < v247 >> 10)
        {
          goto LABEL_359;
        }

        v873 = v247;
        v874 = v788;
        v875 = v789;
        v876 = v615;
        v877 = v783;
        v625 = v782;
        v878 = v782;
        v626 = v779;
        v879 = v779;
        v627 = v778;
        v880 = v778;
        v628 = *(v613 + 24);
        v921 = *(v613 + 56);
        v629 = *(v613 + 40);
        v920[0] = v628;
        v920[1] = v629;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v920, v795);
        BigString.subscript.getter();
        outlined destroy of BigString(v881);
        v630 = MEMORY[0x1865CA260](&v829, &v836);
        outlined destroy of BigSubstring(&v829);
        outlined destroy of TermOfAddress?(v803, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMR);
        outlined destroy of BigSubstring(&v836);
        v540 = v777;
        if ((v630 & 1) == 0)
        {
          outlined destroy of TermOfAddress?(v743, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          outlined destroy of TermOfAddress?(v744, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
          v259 = v719;
          v539 = v759;
          goto LABEL_264;
        }

        v784 = v624;
        v788 = v625;
        v789 = v626;
        *&v786 = v627;
        *&v790 = v791;
        v599 = v620;
        v785 = v787;
      }

      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      v248 = 0;
LABEL_252:

      if (_So9NSDecimala__isNegative_getter(&v793))
      {
        if (v247)
        {
          goto LABEL_256;
        }

LABEL_133:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v774, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v776, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
LABEL_134:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v719, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
LABEL_114:
        v134 = 0;
      }

      else
      {
        if (v248)
        {
          goto LABEL_133;
        }

LABEL_256:
        v634 = v776;
        v635 = v774;
        v134 = specialized static String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.== infix(_:_:)(v776, v774);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v635, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v634, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
LABEL_257:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v719, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      }

      return v134 & 1;
    case 0xBu:
      v153 = v769;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v769, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v154 = *v153;
      v155 = *(v153 + 72);
      v803[5] = *(v153 + 88);
      v804[0] = *(v153 + 104);
      *(v804 + 10) = *(v153 + 114);
      v156 = *(v153 + 24);
      v803[0] = *(v153 + 8);
      v803[1] = v156;
      v157 = *(v153 + 56);
      v803[2] = *(v153 + 40);
      v803[3] = v157;
      v803[4] = v155;
      v158 = v792;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v803);
        goto LABEL_113;
      }

      v159 = *v158;
      v160 = *(v158 + 88);
      v840 = *(v158 + 72);
      v841 = v160;
      v842[0] = *(v158 + 104);
      *(v842 + 10) = *(v158 + 114);
      v161 = *(v158 + 24);
      v836 = *(v158 + 8);
      v837 = v161;
      v170 = v154 == v159;
      v162 = *(v158 + 56);
      v838 = *(v158 + 40);
      v839 = v162;
      if (!v170)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(&v836);
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v803);
        goto LABEL_244;
      }

      v163 = *(v153 + 88);
      v821 = *(v153 + 72);
      v822[0] = v163;
      v822[1] = *(v153 + 104);
      *(&v822[1] + 10) = *(v153 + 114);
      v164 = *(v153 + 24);
      v817 = *(v153 + 8);
      v818 = v164;
      v165 = *(v153 + 56);
      v819 = *(v153 + 40);
      v820 = v165;
      v166 = *(v158 + 88);
      v815[1] = *(v158 + 72);
      v815[2] = v166;
      v816[0] = *(v158 + 104);
      *(v816 + 10) = *(v158 + 114);
      v167 = *(v158 + 24);
      v813 = *(v158 + 8);
      v814[0] = v167;
      v168 = *(v158 + 56);
      v814[1] = *(v158 + 40);
      v815[0] = v168;
      v134 = specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(&v817, &v813);
      v827 = v815[1];
      v828[0] = v815[2];
      v828[1] = v816[0];
      *(&v828[1] + 10) = *(v816 + 10);
      v823 = v813;
      v824 = v814[0];
      v825 = v814[1];
      v826 = v815[0];
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v823);
      v833 = v821;
      v834 = v822[0];
      v835[0] = v822[1];
      *(v835 + 10) = *(&v822[1] + 10);
      v829 = v817;
      v830 = v818;
      v831 = v819;
      v832 = v820;
      outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v829);
      goto LABEL_94;
    case 0xCu:
      v171 = v770;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v770, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v173 = *v171;
      v172 = *(v171 + 1);
      v174 = *(v171 + 5);
      v803[5] = *(v171 + 6);
      LOWORD(v804[0]) = *(v171 + 56);
      v175 = *(v171 + 2);
      v803[0] = *(v171 + 1);
      v803[1] = v175;
      v176 = *(v171 + 3);
      v803[3] = *(v171 + 4);
      v803[4] = v174;
      v803[2] = v176;
      v177 = v792;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        outlined destroy of Date.IntervalFormatStyle(v803);
        goto LABEL_113;
      }

      v179 = *v177;
      v178 = *(v177 + 8);
      v180 = *(v177 + 96);
      v840 = *(v177 + 80);
      v841 = v180;
      LOWORD(v842[0]) = *(v177 + 112);
      v181 = *(v177 + 32);
      v836 = *(v177 + 16);
      v837 = v181;
      v182 = *(v177 + 48);
      v839 = *(v177 + 64);
      v838 = v182;
      if (v173 == v179 && v172 == v178)
      {
        v183 = *(v171 + 6);
        v833 = *(v171 + 5);
        v834 = v183;
        LOWORD(v835[0]) = *(v171 + 56);
        v184 = *(v171 + 2);
        v829 = *(v171 + 1);
        v830 = v184;
        v185 = *(v171 + 3);
        v832 = *(v171 + 4);
        v831 = v185;
        v186 = *(v177 + 96);
        v827 = *(v177 + 80);
        v828[0] = v186;
        LOWORD(v828[1]) = *(v177 + 112);
        v187 = *(v177 + 32);
        v823 = *(v177 + 16);
        v824 = v187;
        v188 = *(v177 + 48);
        v826 = *(v177 + 64);
        v825 = v188;
        v134 = specialized static Date.IntervalFormatStyle.== infix(_:_:)(&v829, &v823);
        outlined destroy of Date.IntervalFormatStyle(&v836);
        outlined destroy of Date.IntervalFormatStyle(v803);
        goto LABEL_94;
      }

      outlined destroy of Date.IntervalFormatStyle(&v836);
      outlined destroy of Date.IntervalFormatStyle(v803);
      goto LABEL_244;
    case 0xDu:
      v256 = v766;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v766, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v257 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd, &_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMR) + 48);
      v258 = v792;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v256 + v257, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        goto LABEL_113;
      }

      v259 = v112;
      v260 = *v256;
      v261 = *v258;
      v262 = v256 + v257;
      v263 = v755;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v262, v755, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      v264 = v258 + v257;
      v265 = v754;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v264, v754, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      if (v260 != v261)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        goto LABEL_265;
      }

      v266 = *(v745 + 48);
      v144 = v748;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v263, v748, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v265, v144 + v266, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v112 = v259;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v268 = v738;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v738, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v269 = v731;
            outlined init with take of IntegerFormatStyle<Int>.Percent(v144 + v266, v731, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
            v803[0] = *v268;
            v792 = *v269;
            v836 = v792;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v270 = specialized static Locale.== infix(_:_:)(v803, &v836);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v270 & 1) != 0 && (*(v268 + 16) == *(v269 + 16) && *(v268 + 24) == *(v269 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              v271 = static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(v268 + *(v721 + 40), v269 + *(v721 + 40));
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
              if (v271)
              {
                outlined destroy of TermOfAddress?(v269, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
                v272 = v268;
                v273 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
                v274 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR;
                goto LABEL_210;
              }
            }

            else
            {
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            }

            outlined destroy of TermOfAddress?(v269, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
            v575 = v268;
            v576 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
            v577 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR;
            goto LABEL_241;
          }

          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          v437 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
          v438 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR;
          v561 = v268;
LABEL_197:
          outlined destroy of TermOfAddress?(v561, v437, v438);
          v559 = &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd;
          v560 = &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR;
          goto LABEL_198;
        }

        v436 = v737;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v737, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v439 = v144 + v266;
          v440 = v730;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v439, v730, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
          v803[0] = *v436;
          v792 = *v440;
          v836 = v792;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v441 = specialized static Locale.== infix(_:_:)(v803, &v836);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v441)
          {
            v442 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v436 + *(v724 + 36), v440 + *(v724 + 36));
            outlined destroy of TermOfAddress?(v440, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            if (v442)
            {
              v273 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
              v274 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR;
LABEL_209:
              v272 = v436;
LABEL_210:
              outlined destroy of TermOfAddress?(v272, v273, v274);
              v566 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format;
LABEL_211:
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v144, v566);
              v380 = v112;
LABEL_121:
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v380, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
              v134 = 1;
              return v134 & 1;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v440, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          }

          v576 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
          v577 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR;
          goto LABEL_240;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        v437 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
        v438 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR;
      }

      else
      {
        v436 = v736;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v736, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
        if (!swift_getEnumCaseMultiPayload())
        {
          v570 = v144 + v266;
          v571 = v728;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v570, v728, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
          v803[0] = *v436;
          v792 = *v571;
          v836 = v792;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v572 = specialized static Locale.== infix(_:_:)(v803, &v836);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v572)
          {
            v573 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v436 + *(v720 + 36), v571 + *(v720 + 36));
            outlined destroy of TermOfAddress?(v571, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            if (v573)
            {
              v273 = &_s10Foundation18IntegerFormatStyleVySiGMd;
              v274 = &_s10Foundation18IntegerFormatStyleVySiGMR;
              goto LABEL_209;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v571, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
          }

          v576 = &_s10Foundation18IntegerFormatStyleVySiGMd;
          v577 = &_s10Foundation18IntegerFormatStyleVySiGMR;
LABEL_240:
          v575 = v436;
LABEL_241:
          outlined destroy of TermOfAddress?(v575, v576, v577);
          v631 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format;
LABEL_242:
          v403 = v631;
          v402 = v144;
LABEL_243:
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v402, v403);
          goto LABEL_244;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v265, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v263, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        v437 = &_s10Foundation18IntegerFormatStyleVySiGMd;
        v438 = &_s10Foundation18IntegerFormatStyleVySiGMR;
      }

      v561 = v436;
      goto LABEL_197;
    case 0xEu:
      v135 = v767.i64[0];
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v767.i64[0], type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v136 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd, &_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMR) + 48);
      v137 = v792;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v135 + v136, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        goto LABEL_113;
      }

      v138 = *v135;
      v139 = *v137;
      v140 = v135 + v136;
      v141 = v757;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v140, v757, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      v142 = v756;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v137 + v136, v756, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      if (v138 != v139)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        v402 = v141;
        v403 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle;
        goto LABEL_243;
      }

      v143 = *(v750 + 48);
      v144 = v752;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v141, v752, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v142, v144 + v143, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
      v145 = swift_getEnumCaseMultiPayload();
      if (v145)
      {
        if (v145 == 1)
        {
          v146 = v742;
          outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v742, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v147 = v734;
            outlined init with take of IntegerFormatStyle<Int>.Percent(v144 + v143, v734, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
            v803[0] = *v146;
            v792 = *v147;
            v836 = v792;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v148 = specialized static Locale.== infix(_:_:)(v803, &v836);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v148 & 1) != 0 && (*(v146 + 16) == *(v147 + 16) && *(v146 + 24) == *(v147 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              v149 = static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(v146 + *(v723 + 40), v147 + *(v723 + 40));
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
              if (v149)
              {
                outlined destroy of TermOfAddress?(v147, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
                v150 = v146;
                v151 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
                v152 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR;
LABEL_203:
                outlined destroy of TermOfAddress?(v150, v151, v152);
                v566 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format;
                goto LABEL_211;
              }
            }

            else
            {
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
              outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            }

            outlined destroy of TermOfAddress?(v147, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
            v567 = v146;
            v568 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
            v569 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR;
LABEL_235:
            outlined destroy of TermOfAddress?(v567, v568, v569);
            v631 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format;
            goto LABEL_242;
          }

          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          v430 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
          v431 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR;
          v558 = v146;
LABEL_193:
          outlined destroy of TermOfAddress?(v558, v430, v431);
          v559 = &_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMd;
          v560 = &_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLO_AJtMR;
LABEL_198:
          outlined destroy of TermOfAddress?(v144, v559, v560);
LABEL_244:
          outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v112, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
          goto LABEL_114;
        }

        v429 = v741;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v741, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v432 = v144 + v143;
          v433 = v733;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v432, v733, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
          v803[0] = *v429;
          v792 = *v433;
          v836 = v792;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v434 = specialized static Locale.== infix(_:_:)(v803, &v836);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v434)
          {
            v435 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v429 + *(v727 + 36), v433 + *(v727 + 36));
            outlined destroy of TermOfAddress?(v433, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            if (v435)
            {
              v151 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
              v152 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR;
LABEL_202:
              v150 = v429;
              goto LABEL_203;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v433, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          }

          v568 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
          v569 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR;
          goto LABEL_234;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        v430 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
        v431 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR;
      }

      else
      {
        v429 = v740;
        outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v144, v740, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
        if (!swift_getEnumCaseMultiPayload())
        {
          v562 = v144 + v143;
          v563 = v729;
          outlined init with take of IntegerFormatStyle<Int>.Percent(v562, v729, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
          v803[0] = *v429;
          v792 = *v563;
          v836 = v792;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v564 = specialized static Locale.== infix(_:_:)(v803, &v836);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v564)
          {
            v565 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v429 + *(v722 + 36), v563 + *(v722 + 36));
            outlined destroy of TermOfAddress?(v563, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            if (v565)
            {
              v151 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
              v152 = &_s10Foundation24FloatingPointFormatStyleVySdGMR;
              goto LABEL_202;
            }
          }

          else
          {
            outlined destroy of TermOfAddress?(v563, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
            outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          }

          v568 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
          v569 = &_s10Foundation24FloatingPointFormatStyleVySdGMR;
LABEL_234:
          v567 = v429;
          goto LABEL_235;
        }

        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v142, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v141, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
        v430 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
        v431 = &_s10Foundation24FloatingPointFormatStyleVySdGMR;
      }

      v558 = v429;
      goto LABEL_193;
    case 0xFu:
      v719 = v112;
      v192 = v771;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v771, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v193 = *v192;
      v194 = *(v192 + 4);
      v195 = *(v192 + 6);
      v196 = *(v192 + 8);
      v197 = *(v192 + 10);
      LODWORD(v786) = *(v192 + 12);
      LODWORD(v787) = *(v192 + 14);
      LODWORD(v788) = *(v192 + 16);
      LODWORD(v789) = *(v192 + 18);
      v198 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd, &_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMR) + 48);
      v199 = v792;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v192 + v198, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        v112 = v719;
        goto LABEL_113;
      }

      LODWORD(v791) = *v199;
      LODWORD(v790) = *(v199 + 4);
      LODWORD(v785) = *(v199 + 6);
      LODWORD(v784) = *(v199 + 8);
      LODWORD(v777) = v194;
      LODWORD(v783) = *(v199 + 10);
      LODWORD(v782) = *(v199 + 12);
      LODWORD(v779) = v193;
      LODWORD(v781) = *(v199 + 14);
      LODWORD(v778) = v196;
      LODWORD(v780) = *(v199 + 16);
      v200 = *(v199 + 18);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v192 + v198, v776, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v199 + v198, v774, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      LODWORD(v803[0]) = v193;
      WORD2(v803[0]) = v194;
      WORD3(v803[0]) = v195;
      v201 = v778;
      WORD4(v803[0]) = v778;
      WORD5(v803[0]) = v197;
      v202 = v786;
      WORD6(v803[0]) = v786;
      v203 = v787;
      HIWORD(v803[0]) = v787;
      v204 = v788;
      LOWORD(v803[1]) = v788;
      v205 = v789;
      WORD1(v803[1]) = v789;
      v206 = _So9NSDecimala__exponent_getter(v803);
      LODWORD(v803[0]) = v791;
      WORD2(v803[0]) = v790;
      WORD3(v803[0]) = v785;
      WORD4(v803[0]) = v784;
      WORD5(v803[0]) = v783;
      WORD6(v803[0]) = v782;
      HIWORD(v803[0]) = v781;
      LOWORD(v803[1]) = v780;
      LODWORD(v792) = v200;
      WORD1(v803[1]) = v200;
      v170 = v206 == _So9NSDecimala__exponent_getter(v803);
      v207 = v204;
      v208 = v203;
      v209 = v202;
      v210 = v197;
      v211 = v201;
      v212 = v195;
      v213 = v207;
      v214 = v777;
      v215 = v779;
      v216 = v209;
      if (v170)
      {
        LODWORD(v803[0]) = v779;
        WORD2(v803[0]) = v777;
        WORD3(v803[0]) = v212;
        WORD4(v803[0]) = v211;
        WORD5(v803[0]) = v210;
        WORD6(v803[0]) = v209;
        HIWORD(v803[0]) = v208;
        LOWORD(v803[1]) = v207;
        WORD1(v803[1]) = v205;
        v217 = _So9NSDecimala__length_getter(v803);
        LODWORD(v803[0]) = v791;
        WORD2(v803[0]) = v790;
        WORD3(v803[0]) = v785;
        WORD4(v803[0]) = v784;
        WORD5(v803[0]) = v783;
        WORD6(v803[0]) = v782;
        HIWORD(v803[0]) = v781;
        LOWORD(v803[1]) = v780;
        WORD1(v803[1]) = v792;
        v170 = v217 == _So9NSDecimala__length_getter(v803);
        v215 = v779;
        if (v170)
        {
          LODWORD(v803[0]) = v779;
          WORD2(v803[0]) = v214;
          WORD3(v803[0]) = v212;
          WORD4(v803[0]) = v211;
          WORD5(v803[0]) = v210;
          WORD6(v803[0]) = v216;
          HIWORD(v803[0]) = v208;
          LOWORD(v803[1]) = v213;
          WORD1(v803[1]) = v205;
          isNegative_getter = _So9NSDecimala__isNegative_getter(v803);
          LODWORD(v803[0]) = v791;
          WORD2(v803[0]) = v790;
          WORD3(v803[0]) = v785;
          WORD4(v803[0]) = v784;
          WORD5(v803[0]) = v783;
          WORD6(v803[0]) = v782;
          HIWORD(v803[0]) = v781;
          LOWORD(v803[1]) = v780;
          WORD1(v803[1]) = v792;
          v170 = isNegative_getter == _So9NSDecimala__isNegative_getter(v803);
          v215 = v779;
          if (v170)
          {
            LODWORD(v803[0]) = v779;
            WORD2(v803[0]) = v214;
            WORD3(v803[0]) = v212;
            WORD4(v803[0]) = v211;
            WORD5(v803[0]) = v210;
            WORD6(v803[0]) = v216;
            HIWORD(v803[0]) = v208;
            LOWORD(v803[1]) = v213;
            WORD1(v803[1]) = v205;
            isCompact_getter = _So9NSDecimala__isCompact_getter(v803);
            LODWORD(v803[0]) = v791;
            WORD2(v803[0]) = v790;
            WORD3(v803[0]) = v785;
            WORD4(v803[0]) = v784;
            WORD5(v803[0]) = v783;
            WORD6(v803[0]) = v782;
            HIWORD(v803[0]) = v781;
            LOWORD(v803[1]) = v780;
            WORD1(v803[1]) = v792;
            v170 = isCompact_getter == _So9NSDecimala__isCompact_getter(v803);
            v215 = v779;
            if (v170)
            {
              LODWORD(v803[0]) = v779;
              WORD2(v803[0]) = v214;
              WORD3(v803[0]) = v212;
              WORD4(v803[0]) = v211;
              WORD5(v803[0]) = v210;
              WORD6(v803[0]) = v216;
              HIWORD(v803[0]) = v208;
              LOWORD(v803[1]) = v213;
              WORD1(v803[1]) = v205;
              v220 = _So9NSDecimala__reserved_getter(v803);
              LODWORD(v803[0]) = v791;
              WORD2(v803[0]) = v790;
              WORD3(v803[0]) = v785;
              WORD4(v803[0]) = v784;
              WORD5(v803[0]) = v783;
              WORD6(v803[0]) = v782;
              HIWORD(v803[0]) = v781;
              LOWORD(v803[1]) = v780;
              WORD1(v803[1]) = v792;
              v170 = v220 == _So9NSDecimala__reserved_getter(v803);
              v215 = v779;
              if (v170 && v214 == v790 && v212 == v785 && v211 == v784 && v210 == v783 && v216 == v782 && v208 == v781 && v213 == v780 && v205 == v792)
              {
                goto LABEL_256;
              }
            }
          }
        }
      }

      LODWORD(v803[0]) = v215;
      WORD2(v803[0]) = v214;
      WORD3(v803[0]) = v212;
      WORD4(v803[0]) = v211;
      WORD5(v803[0]) = v210;
      WORD6(v803[0]) = v216;
      HIWORD(v803[0]) = v208;
      LOWORD(v803[1]) = v213;
      WORD1(v803[1]) = v205;
      if (!_So9NSDecimala__length_getter(v803))
      {
        LODWORD(v803[0]) = v215;
        WORD2(v803[0]) = v214;
        WORD3(v803[0]) = v212;
        WORD4(v803[0]) = v211;
        WORD5(v803[0]) = v210;
        WORD6(v803[0]) = v216;
        HIWORD(v803[0]) = v208;
        LOWORD(v803[1]) = v213;
        WORD1(v803[1]) = v205;
        if (_So9NSDecimala__isNegative_getter(v803))
        {
          v404 = v791;
          LODWORD(v803[0]) = v791;
          v405 = v790;
          WORD2(v803[0]) = v790;
          v406 = v785;
          WORD3(v803[0]) = v785;
          v407 = v784;
          WORD4(v803[0]) = v784;
          v408 = v783;
          WORD5(v803[0]) = v783;
          v409 = v782;
          WORD6(v803[0]) = v782;
          v410 = v781;
          HIWORD(v803[0]) = v781;
          v411 = v780;
          LOWORD(v803[1]) = v780;
          v412 = v792;
          WORD1(v803[1]) = v792;
          if (!_So9NSDecimala__length_getter(v803))
          {
            LODWORD(v803[0]) = v404;
            WORD2(v803[0]) = v405;
            WORD3(v803[0]) = v406;
            WORD4(v803[0]) = v407;
            WORD5(v803[0]) = v408;
            WORD6(v803[0]) = v409;
            HIWORD(v803[0]) = v410;
            LOWORD(v803[1]) = v411;
            WORD1(v803[1]) = v412;
            if (_So9NSDecimala__isNegative_getter(v803))
            {
              goto LABEL_256;
            }
          }

          goto LABEL_133;
        }
      }

      LODWORD(v803[0]) = v791;
      v221 = v790;
      WORD2(v803[0]) = v790;
      LODWORD(v775) = v210;
      v222 = v785;
      WORD3(v803[0]) = v785;
      v223 = v784;
      WORD4(v803[0]) = v784;
      v224 = v783;
      WORD5(v803[0]) = v783;
      v225 = v782;
      WORD6(v803[0]) = v782;
      v226 = v781;
      HIWORD(v803[0]) = v781;
      v227 = v780;
      LOWORD(v803[1]) = v780;
      v773.i32[0] = v212;
      v228 = v792;
      WORD1(v803[1]) = v792;
      if (!_So9NSDecimala__length_getter(v803))
      {
        LODWORD(v803[0]) = v791;
        WORD2(v803[0]) = v221;
        WORD3(v803[0]) = v222;
        WORD4(v803[0]) = v223;
        WORD5(v803[0]) = v224;
        WORD6(v803[0]) = v225;
        HIWORD(v803[0]) = v226;
        LOWORD(v803[1]) = v227;
        WORD1(v803[1]) = v228;
        if (_So9NSDecimala__isNegative_getter(v803))
        {
          goto LABEL_133;
        }
      }

      LODWORD(v803[0]) = v215;
      WORD2(v803[0]) = v777;
      WORD3(v803[0]) = v773.i16[0];
      WORD4(v803[0]) = v778;
      WORD5(v803[0]) = v775;
      WORD6(v803[0]) = v786;
      HIWORD(v803[0]) = v787;
      LOWORD(v803[1]) = v788;
      WORD1(v803[1]) = v789;
      v229 = _So9NSDecimala__isNegative_getter(v803);
      LODWORD(v803[0]) = v791;
      WORD2(v803[0]) = v221;
      WORD3(v803[0]) = v222;
      WORD4(v803[0]) = v223;
      WORD5(v803[0]) = v224;
      WORD6(v803[0]) = v225;
      HIWORD(v803[0]) = v226;
      LOWORD(v803[1]) = v227;
      WORD1(v803[1]) = v228;
      if (_So9NSDecimala__isNegative_getter(v803) < v229)
      {
        goto LABEL_133;
      }

      LODWORD(v803[0]) = v779;
      WORD2(v803[0]) = v777;
      WORD3(v803[0]) = v773.i16[0];
      WORD4(v803[0]) = v778;
      WORD5(v803[0]) = v775;
      WORD6(v803[0]) = v786;
      HIWORD(v803[0]) = v787;
      LOWORD(v803[1]) = v788;
      WORD1(v803[1]) = v789;
      v230 = _So9NSDecimala__isNegative_getter(v803);
      LODWORD(v803[0]) = v791;
      WORD2(v803[0]) = v221;
      WORD3(v803[0]) = v222;
      WORD4(v803[0]) = v223;
      WORD5(v803[0]) = v224;
      WORD6(v803[0]) = v225;
      HIWORD(v803[0]) = v226;
      LOWORD(v803[1]) = v227;
      WORD1(v803[1]) = v228;
      if (v230 < _So9NSDecimala__isNegative_getter(v803))
      {
        goto LABEL_133;
      }

      LODWORD(v803[0]) = v779;
      WORD2(v803[0]) = v777;
      WORD3(v803[0]) = v773.i16[0];
      WORD4(v803[0]) = v778;
      WORD5(v803[0]) = v775;
      WORD6(v803[0]) = v786;
      HIWORD(v803[0]) = v787;
      LOWORD(v803[1]) = v788;
      WORD1(v803[1]) = v789;
      if (_So9NSDecimala__length_getter(v803))
      {
        v231 = v791;
        LODWORD(v803[0]) = v791;
        v232 = v790;
        WORD2(v803[0]) = v790;
        v233 = v785;
        WORD3(v803[0]) = v785;
        v234 = v784;
        WORD4(v803[0]) = v784;
        v235 = v783;
        WORD5(v803[0]) = v783;
        v236 = v782;
        WORD6(v803[0]) = v782;
        v237 = v781;
        HIWORD(v803[0]) = v781;
        v238 = v780;
        LOWORD(v803[1]) = v780;
        v239 = v792;
        WORD1(v803[1]) = v792;
        if (_So9NSDecimala__length_getter(v803))
        {
          LODWORD(v793) = v779;
          WORD2(v793) = v777;
          WORD3(v793) = v773.i16[0];
          WORD4(v793) = v778;
          WORD5(v793) = v775;
          WORD6(v793) = v786;
          HIWORD(v793) = v787;
          LOWORD(v794) = v788;
          HIWORD(v794) = v789;
          LODWORD(v803[0]) = v231;
          WORD2(v803[0]) = v232;
          WORD3(v803[0]) = v233;
          WORD4(v803[0]) = v234;
          WORD5(v803[0]) = v235;
          WORD6(v803[0]) = v236;
          HIWORD(v803[0]) = v237;
          LOWORD(v803[1]) = v238;
          WORD1(v803[1]) = v239;
          specialized static NSDecimal._normalize(a:b:roundingMode:)(&v793, v803);
          NSDecimal.asVariableLengthInteger()(v793, *(&v793 + 1), v794);
          v241 = v240;
          NSDecimal.asVariableLengthInteger()(*&v803[0], *(&v803[0] + 1), v803[1]);
          v243 = v242;
          v244 = v241;
          v245 = *(v241 + 16);
          v246 = *(v243 + 16);
          if (v246 < v245)
          {
            LODWORD(v247) = 0;
            v248 = 1;
            goto LABEL_252;
          }

          if (v245 >= v246)
          {
            v248 = 1;
            do
            {
              LODWORD(v247) = v245 == 0;
              if (!v245)
              {
                goto LABEL_360;
              }

              v632 = *(v244 + 30 + 2 * v245);
              v633 = *(v243 + 30 + 2 * v245);
              if (v633 < v632)
              {
                goto LABEL_252;
              }

              --v245;
            }

            while (v632 >= v633);
          }

          else
          {
            LODWORD(v247) = 0;
          }

          v248 = -1;
          goto LABEL_252;
        }

        LODWORD(v803[0]) = v779;
        WORD2(v803[0]) = v777;
        WORD3(v803[0]) = v773.i16[0];
        WORD4(v803[0]) = v778;
        WORD5(v803[0]) = v775;
        WORD6(v803[0]) = v786;
        HIWORD(v803[0]) = v787;
        LOWORD(v803[1]) = v788;
        WORD1(v803[1]) = v789;
        if (_So9NSDecimala__length_getter(v803))
        {
          goto LABEL_133;
        }
      }

      else
      {
        LODWORD(v803[0]) = v791;
        WORD2(v803[0]) = v790;
        WORD3(v803[0]) = v785;
        WORD4(v803[0]) = v784;
        WORD5(v803[0]) = v783;
        WORD6(v803[0]) = v782;
        HIWORD(v803[0]) = v781;
        LOWORD(v803[1]) = v780;
        WORD1(v803[1]) = v792;
        if (_So9NSDecimala__length_getter(v803))
        {
          v574 = -1;
        }

        else
        {
          v574 = 0;
        }

        if (v574)
        {
          goto LABEL_133;
        }
      }

      goto LABEL_256;
    case 0x10u:
      v121 = v765;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v765, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v122 = *v121;
      v123 = *(v121 + 8);
      v124 = *(v121 + 9);
      v126 = *(v121 + 16);
      v125 = *(v121 + 24);
      v127 = v792;
      if (swift_getEnumCaseMultiPayload() != 16)
      {

        swift_unknownObjectRelease();
        goto LABEL_113;
      }

      v719 = v112;
      v128 = *v127;
      LODWORD(v791) = *(v127 + 8);
      v129 = *(v127 + 9);
      v130 = *(v127 + 16);
      *&v792 = *(v127 + 24);
      v131 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(v122, v128);

      if ((v131 & 1) == 0)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_134;
      }

      if (v124)
      {
        v132 = 256;
      }

      else
      {
        v132 = 0;
      }

      if (v129)
      {
        v133 = 256;
      }

      else
      {
        v133 = 0;
      }

      v134 = _s10Foundation15ListFormatStyleV2eeoiySbACyxq_G_AEtFZAA06StringD0V_SaySSGTt1B5(v132 | v123, v126, v125, v133 | v791, v130, v792);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_257;
    case 0x11u:
      v253 = v768;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v768, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v254 = v792;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_113;
      }

      v250 = *v253;
      v252 = *v254;
LABEL_74:
      v170 = v250 == v252;
LABEL_91:
      v134 = v170;
      goto LABEL_94;
    default:
      v116 = v764;
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v112, v764, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v117 = *(v116 + 64);
      v803[5] = *(v116 + 80);
      *&v804[0] = *(v116 + 96);
      v118 = *(v116 + 16);
      v803[0] = *v116;
      v803[1] = v118;
      v119 = *(v116 + 32);
      v803[3] = *(v116 + 48);
      v803[4] = v117;
      v803[2] = v119;
      v120 = v792;
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of LocalizedStringResource(v803);
        goto LABEL_113;
      }

      v368 = *(v120 + 48);
      v369 = *(v120 + 80);
      v840 = *(v120 + 64);
      v841 = v369;
      v370 = *(v120 + 16);
      v836 = *v120;
      v837 = v370;
      v371 = *(v120 + 32);
      v373 = *v120;
      v372 = *(v120 + 16);
      v374 = v371;
      v839 = *(v120 + 48);
      v838 = v371;
      v375 = *(v116 + 80);
      v833 = *(v116 + 64);
      v834 = v375;
      v376 = *(v116 + 16);
      v829 = *v116;
      v830 = v376;
      v377 = *(v116 + 32);
      v832 = *(v116 + 48);
      v831 = v377;
      v378 = *(v120 + 80);
      v827 = v840;
      v828[0] = v378;
      v823 = v373;
      v824 = v372;
      *&v842[0] = *(v120 + 96);
      *&v835[0] = *(v116 + 96);
      *&v828[1] = *(v120 + 96);
      v826 = v368;
      v825 = v374;
      v134 = static LocalizedStringResource.== infix(_:_:)(&v829, &v823);
      outlined destroy of LocalizedStringResource(&v836);
      outlined destroy of LocalizedStringResource(v803);
LABEL_94:
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v112, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      return v134 & 1;
  }
}