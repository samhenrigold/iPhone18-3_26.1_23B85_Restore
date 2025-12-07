double String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.locale(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[5];
  v51 = v2[4];
  v52 = v5;
  v6 = v2[5];
  v53[0] = v2[6];
  *(v53 + 10) = *(v2 + 106);
  v7 = v2[1];
  v47 = *v2;
  v48 = v7;
  v8 = v2[3];
  v49 = v2[2];
  v50 = v8;
  v54[2] = v49;
  v54[3] = v4;
  v54[0] = v47;
  v54[1] = v7;
  *&v55[10] = *(v2 + 106);
  v9 = v2[6];
  v54[5] = v6;
  *v55 = v9;
  v10 = *a1;
  v11 = a1[1];
  v54[4] = v51;
  v12 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v54);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
      v34 = *v14;
      v37 = v14[1];
      v30 = v14[3];
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v47, &v42);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v42 = v34;
      *v43 = v37;
      *&v43[16] = v10;
      *&v43[24] = v11;
      v44 = v30;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v42);
    }

    else
    {
      v24 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
      v25 = *v24;
      v35 = *(v24 + 24);
      v38 = *(v24 + 40);
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v47, &v42);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *&v42 = v25;
      *(&v42 + 1) = v10;
      *&v43[8] = v35;
      *v43 = v11;
      *&v43[24] = v38;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi2_(&v42);
    }
  }

  else
  {
    if (v12)
    {
      destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
      v15 = v51;
      v16 = v52;
      a2[4] = v51;
      a2[5] = v16;
      v17 = v53[0];
      a2[6] = v53[0];
      v18 = *(v53 + 10);
      *(a2 + 106) = *(v53 + 10);
      v19 = v47;
      v20 = v48;
      *a2 = v47;
      a2[1] = v20;
      v21 = v49;
      v22 = v50;
      a2[2] = v49;
      a2[3] = v22;
      *&v46[26] = v18;
      *v46 = v16;
      *&v46[16] = v17;
      v44 = v22;
      v45 = v15;
      *v43 = v20;
      *&v43[16] = v21;
      v42 = v19;
      destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v42);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      return result;
    }

    v13 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
    v41 = *(v13 + 64);
    v39 = *(v13 + 32);
    v40 = *(v13 + 48);
    v33 = *v13;
    v36 = *(v13 + 16);
    v29 = *(v13 + 88);
    v31 = *(v13 + 104);
    v32 = *(v13 + 120);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v47, &v42);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v43[16] = v39;
    v44 = v40;
    v42 = v33;
    *v43 = v36;
    *&v46[8] = v29;
    *&v45 = v41;
    *(&v45 + 1) = v10;
    *v46 = v11;
    *&v46[24] = v31;
    *&v46[40] = v32;
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v42);
  }

  v26 = *v46;
  a2[4] = v45;
  a2[5] = v26;
  a2[6] = *&v46[16];
  *(a2 + 106) = *&v46[26];
  v27 = *v43;
  *a2 = v42;
  a2[1] = v27;
  result = *&v43[16];
  v28 = v44;
  a2[2] = *&v43[16];
  a2[3] = v28;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v24 = v1[4];
  v25 = v7;
  v26[0] = v1[6];
  *(v26 + 10) = *(v1 + 106);
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v20, &v13);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v24;
  v18 = v25;
  v19[0] = v26[0];
  *(v19 + 10) = *(v26 + 10);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11[4] = v17;
  v11[5] = v18;
  v12[0] = v19[0];
  *(v12 + 10) = *(v19 + 10);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v11);
  return (*(v4 + 8))(v6, v3);
}

void String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.hash(into:)(uint64_t a1)
{
  v3 = v1[5];
  v167[4] = v1[4];
  v167[5] = v3;
  v168[0] = v1[6];
  *(v168 + 10) = *(v1 + 106);
  v4 = v1[1];
  v167[0] = *v1;
  v167[1] = v4;
  v5 = v1[3];
  v167[2] = v1[2];
  v167[3] = v5;
  v6 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v167);
  v7 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v167);
  v8 = v7;
  if (v6 <= 1)
  {
    if (v6)
    {
      MEMORY[0x1865CD060](1);
      v21 = v8[1];
      v22 = *(v8 + 1);
      v23 = *(v8 + 5);
      String.hash(into:)();

      ObjectType = swift_getObjectType();
      (*(v23 + 120))(a1, ObjectType, v23);
      MEMORY[0x1865CD060](v22);
      String.hash(into:)();

      Hasher._combine(_:)(v21);
      String.hash(into:)();

      String.hash(into:)();

      return;
    }

    MEMORY[0x1865CD060](0);
    v9 = *(v8 + 24);
    v10 = *(v8 + 1);
    v165[2] = *v8;
    v165[3] = v10;
    v165[4] = *(v8 + 2);
    v166 = v9;
    v11 = *(v8 + 7);
    v12 = v8[64];
    specialized Optional<A>.hash(into:)(a1);
    if (v12)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v11);
    }

    v32 = *(v8 + 10);
    v33 = swift_getObjectType();
    if ((*(v32 + 48))(v33, v32))
    {
      v34 = 1;
LABEL_20:
      Hasher._combine(_:)(v34);
LABEL_113:
      v97 = *(v8 + 12);
      v98 = *(v8 + 14);
      v99 = v8[120];
      v100 = v8[121];
      v101 = swift_getObjectType();
      (*(v97 + 120))(a1, v101, v97);
      v102 = swift_getObjectType();
      (*(v98 + 120))(a1, v102, v98);
      MEMORY[0x1865CD060](v99);
      Hasher._combine(_:)(v100);
      return;
    }

    Hasher._combine(_:)(0);
    (*(v32 + 64))(v33, v32);
    String.hash(into:)();

    (*(v32 + 464))(&v150, v33, v32);
    v164 = v156;
    v165[0] = *v157;
    *(v165 + 12) = *&v157[12];
    v160 = v152;
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v158 = v150;
    v159 = v151;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v158) == 1)
    {
      v34 = 0;
      goto LABEL_20;
    }

    v43 = v150;
    v44 = *(&v150 + 1);
    v45 = *(&v151 + 1);
    v46 = *(&v152 + 1);
    v125 = v153;
    v129 = v154;
    v135 = v155;
    v47 = v156;
    v142 = *v157;
    v145 = *&v157[16];
    v147 = v157[24];
    v149 = v157[25];
    v48 = v157[26];
    v49 = v157[27];
    Hasher._combine(_:)(1u);
    if (v43 == 2)
    {
      v50 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v50 = v43 & 1;
    }

    Hasher._combine(_:)(v50);
    if (v44)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v44 + 16));
      v63 = *(v44 + 16);
      if (v63)
      {
        v64 = v44 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v134 = v48;
    if (v45)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v46)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v125)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v125, v79, v80, v81, v82, v83, v84);
      if (*(&v125 + 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v125 + 1))
      {
LABEL_68:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v125 + 1), v85, v86, v87, v88, v89, v90);
        if (v129)
        {
          goto LABEL_69;
        }

        goto LABEL_94;
      }
    }

    Hasher._combine(_:)(0);
    if (v129)
    {
LABEL_69:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v129 + 1))
      {
        goto LABEL_70;
      }

      goto LABEL_95;
    }

LABEL_94:
    Hasher._combine(_:)(0);
    if (*(&v129 + 1))
    {
LABEL_70:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v135)
      {
        goto LABEL_71;
      }

      goto LABEL_96;
    }

LABEL_95:
    Hasher._combine(_:)(0);
    if (v135)
    {
LABEL_71:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v91 = v145;
      if (*(&v135 + 1))
      {
        goto LABEL_72;
      }

      goto LABEL_97;
    }

LABEL_96:
    Hasher._combine(_:)(0);
    v91 = v145;
    if (*(&v135 + 1))
    {
LABEL_72:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v47)
      {
        goto LABEL_73;
      }

      goto LABEL_98;
    }

LABEL_97:
    Hasher._combine(_:)(0);
    if (v47)
    {
LABEL_73:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v92 = v147;
      v93 = v149;
      if (*(&v47 + 1))
      {
        goto LABEL_74;
      }

      goto LABEL_99;
    }

LABEL_98:
    Hasher._combine(_:)(0);
    v92 = v147;
    v93 = v149;
    if (*(&v47 + 1))
    {
LABEL_74:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v47 + 1));
      if (v142)
      {
        goto LABEL_75;
      }

      goto LABEL_100;
    }

LABEL_99:
    Hasher._combine(_:)(0);
    if (v142)
    {
LABEL_75:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v142);
      if (v91)
      {
        goto LABEL_76;
      }

      goto LABEL_101;
    }

LABEL_100:
    Hasher._combine(_:)(0);
    if (v91)
    {
LABEL_76:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v92 == 2)
      {
LABEL_77:
        Hasher._combine(_:)(0);
LABEL_103:
        if (v93 == 2)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v93 & 1);
        }

        if (v134 == 2)
        {
          v95 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v95 = v134 & 1;
        }

        Hasher._combine(_:)(v95);
        if (v49 == 2)
        {
          v96 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v96 = v49 & 1;
        }

        Hasher._combine(_:)(v96);
        outlined destroy of TermOfAddress?(&v150, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
        goto LABEL_113;
      }

LABEL_102:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v92 & 1);
      goto LABEL_103;
    }

LABEL_101:
    Hasher._combine(_:)(0);
    if (v92 == 2)
    {
      goto LABEL_77;
    }

    goto LABEL_102;
  }

  if (v6 == 2)
  {
    v13 = *(v7 + 1);
    v14 = *(v7 + 3);
    v16 = *(v7 + 4);
    v15 = *(v7 + 5);
    MEMORY[0x1865CD060](2);
    v17 = swift_getObjectType();
    (*(v13 + 120))(a1, v17, v13);
    v18 = swift_getObjectType();
    (*(v14 + 120))(a1, v18, v14);
    if (!v16)
    {
      goto LABEL_22;
    }

    Hasher._combine(_:)(1u);
    v19 = swift_getObjectType();
    if ((*(v15 + 48))(v19, v15))
    {
      v20 = 1;
LABEL_23:
      Hasher._combine(_:)(v20);
LABEL_24:
      String.hash(into:)();
      return;
    }

    Hasher._combine(_:)(0);
    (*(v15 + 64))(v19, v15);
    String.hash(into:)();

    (*(v15 + 464))(&v150, v19, v15);
    v164 = v156;
    v165[0] = *v157;
    *(v165 + 12) = *&v157[12];
    v160 = v152;
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v158 = v150;
    v159 = v151;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v158) == 1)
    {
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }

    v51 = v150;
    v52 = *(&v150 + 1);
    v53 = *(&v151 + 1);
    v54 = *(&v152 + 1);
    v126 = v153;
    v55 = v155;
    v130 = v154;
    v133 = *(&v155 + 1);
    v56 = v156;
    v57 = *v157;
    v140 = *&v157[16];
    v58 = v157[24];
    v146 = v157[25];
    v59 = v157[26];
    v148 = v157[27];
    Hasher._combine(_:)(1u);
    if (v51 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v51 & 1;
    }

    v143 = v58;
    Hasher._combine(_:)(v60);
    if (v52)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v52 + 16));
      v105 = *(v52 + 16);
      if (v105)
      {
        v106 = v52 + 40;
        do
        {

          String.hash(into:)();

          v106 += 16;
          --v105;
        }

        while (v105);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v53)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v54)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v126)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v126, v107, v108, v109, v110, v111, v112);
      v113 = *(&v126 + 1);
      if (*(&v126 + 1))
      {
        goto LABEL_139;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v113 = *(&v126 + 1);
      if (*(&v126 + 1))
      {
LABEL_139:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v113, v114, v115, v116, v117, v118, v119);
        if (v130)
        {
          goto LABEL_140;
        }

        goto LABEL_146;
      }
    }

    Hasher._combine(_:)(0);
    if (v130)
    {
LABEL_140:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v130 + 1))
      {
        goto LABEL_141;
      }

      goto LABEL_147;
    }

LABEL_146:
    Hasher._combine(_:)(0);
    if (*(&v130 + 1))
    {
LABEL_141:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v55)
      {
        goto LABEL_142;
      }

      goto LABEL_148;
    }

LABEL_147:
    Hasher._combine(_:)(0);
    if (v55)
    {
LABEL_142:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v133)
      {
LABEL_143:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_150;
      }

LABEL_149:
      Hasher._combine(_:)(0);
LABEL_150:
      if (v56)
      {
        v120 = v148;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v121 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
LABEL_152:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v121);
          goto LABEL_155;
        }
      }

      else
      {
        v120 = v148;
        Hasher._combine(_:)(0);
        v121 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
          goto LABEL_152;
        }
      }

      Hasher._combine(_:)(0);
LABEL_155:
      if (v57)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v57);
        if (v140)
        {
LABEL_157:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_160:
          if (v143 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v143 & 1);
          }

          if (v146 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v146 & 1);
          }

          if (v59 == 2)
          {
            v122 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v122 = v59 & 1;
          }

          Hasher._combine(_:)(v122);
          if (v120 == 2)
          {
            v123 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v123 = v120 & 1;
          }

          Hasher._combine(_:)(v123);
          outlined destroy of TermOfAddress?(&v150, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v140)
        {
          goto LABEL_157;
        }
      }

      Hasher._combine(_:)(0);
      goto LABEL_160;
    }

LABEL_148:
    Hasher._combine(_:)(0);
    if (v133)
    {
      goto LABEL_143;
    }

    goto LABEL_149;
  }

  v25 = *v7;
  v26 = v7[1];
  v27 = v7[2];
  v28 = *(v7 + 2);
  v29 = *(v7 + 4);
  MEMORY[0x1865CD060](3);
  MEMORY[0x1865CD060](v25);
  MEMORY[0x1865CD060](v26);
  MEMORY[0x1865CD060](v27);
  v30 = swift_getObjectType();
  if (((*(v28 + 48))(v30, v28) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v28 + 64))(v30, v28);
    String.hash(into:)();

    (*(v28 + 464))(&v150, v30, v28);
    v164 = v156;
    v165[0] = *v157;
    *(v165 + 12) = *&v157[12];
    v160 = v152;
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v158 = v150;
    v159 = v151;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v158) == 1)
    {
      v31 = 0;
      goto LABEL_17;
    }

    v35 = v150;
    v36 = *(&v150 + 1);
    v37 = *(&v151 + 1);
    v38 = *(&v152 + 1);
    v124 = v153;
    v39 = *(&v154 + 1);
    v127 = v154;
    v128 = *(&v155 + 1);
    v131 = v155;
    v132 = v156;
    v40 = *v157;
    v136 = *(&v156 + 1);
    v138 = *&v157[16];
    v139 = v157[24];
    v141 = v157[25];
    v144 = v157[26];
    v41 = v157[27];
    Hasher._combine(_:)(1u);
    if (v35 == 2)
    {
      v42 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v42 = v35 & 1;
    }

    v137 = v40;
    Hasher._combine(_:)(v42);
    if (v36)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v36 + 16));
      v61 = *(v36 + 16);
      if (v61)
      {
        v62 = v36 + 40;
        do
        {

          String.hash(into:)();

          v62 += 16;
          --v61;
        }

        while (v61);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v37)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v38)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v124)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v124, v65, v66, v67, v68, v69, v70);
      if (*(&v124 + 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v124 + 1))
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v124 + 1), v71, v72, v73, v74, v75, v76);
        if (v127)
        {
          goto LABEL_59;
        }

        goto LABEL_80;
      }
    }

    Hasher._combine(_:)(0);
    if (v127)
    {
LABEL_59:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v39)
      {
        goto LABEL_60;
      }

      goto LABEL_81;
    }

LABEL_80:
    Hasher._combine(_:)(0);
    if (v39)
    {
LABEL_60:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v131)
      {
        goto LABEL_61;
      }

      goto LABEL_82;
    }

LABEL_81:
    Hasher._combine(_:)(0);
    if (v131)
    {
LABEL_61:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v128)
      {
        goto LABEL_62;
      }

      goto LABEL_83;
    }

LABEL_82:
    Hasher._combine(_:)(0);
    if (v128)
    {
LABEL_62:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v77 = v138;
      if (v132)
      {
        goto LABEL_63;
      }

      goto LABEL_84;
    }

LABEL_83:
    Hasher._combine(_:)(0);
    v77 = v138;
    if (v132)
    {
LABEL_63:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v78 = v136;
      if (v136)
      {
LABEL_64:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v78);
        goto LABEL_86;
      }

LABEL_85:
      Hasher._combine(_:)(0);
LABEL_86:
      if (v137)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v137);
        if (v77)
        {
          goto LABEL_88;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v77)
        {
LABEL_88:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          if (v139 == 2)
          {
            goto LABEL_89;
          }

          goto LABEL_116;
        }
      }

      Hasher._combine(_:)(0);
      if (v139 == 2)
      {
LABEL_89:
        Hasher._combine(_:)(0);
        if (v141 != 2)
        {
          goto LABEL_90;
        }

        goto LABEL_117;
      }

LABEL_116:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v139 & 1);
      if (v141 != 2)
      {
LABEL_90:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v141 & 1);
        if (v144 != 2)
        {
LABEL_91:
          Hasher._combine(_:)(1u);
          v94 = v144 & 1;
LABEL_119:
          Hasher._combine(_:)(v94);
          if (v41 == 2)
          {
            v103 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v103 = v41 & 1;
          }

          Hasher._combine(_:)(v103);
          outlined destroy of TermOfAddress?(&v150, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          goto LABEL_123;
        }

LABEL_118:
        v94 = 0;
        goto LABEL_119;
      }

LABEL_117:
      Hasher._combine(_:)(0);
      if (v144 != 2)
      {
        goto LABEL_91;
      }

      goto LABEL_118;
    }

LABEL_84:
    Hasher._combine(_:)(0);
    v78 = v136;
    if (v136)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

  v31 = 1;
LABEL_17:
  Hasher._combine(_:)(v31);
LABEL_123:
  v104 = swift_getObjectType();
  (*(v29 + 120))(a1, v104, v29);
  specialized Set.hash(into:)();
}

uint64_t String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v13[5];
    a2[4] = v13[4];
    a2[5] = v9;
    a2[6] = v14[0];
    *(a2 + 106) = *(v14 + 10);
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    v11 = v13[3];
    a2[2] = v13[2];
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v32 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v32 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMR);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v32 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v40, v14, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v39 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v36;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v36, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
      v44 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v33;
      v23 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Currency and conformance IntegerFormatStyle<A>.Currency, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR, &protocol conformance descriptor for IntegerFormatStyle<A>.Currency);
      v24 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      outlined destroy of TermOfAddress?(v21, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
      return (*v20)(v17, v23);
    }

    else
    {
      v28 = v38;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v38, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
      v45 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v34;
      v30 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR, &protocol conformance descriptor for IntegerFormatStyle<A>.Percent);
      v31 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v31);
      outlined destroy of TermOfAddress?(v28, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
      return (*v20)(v17, v30);
    }
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
    v43 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, &protocol conformance descriptor for IntegerFormatStyle<A>);
    v27 = v42;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of TermOfAddress?(v11, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
    return (*v20)(v17, v26);
  }
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMR);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v50 - v8;
  v10 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();
  v23 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v52 = v15;
  v53 = v18;
  v54 = v12;
  v55 = v21;
  v25 = v57;
  v24 = v58;
  v27 = v59;
  v26 = v60;
  v64 = v10;
  v28 = v61;
  v29 = v62;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v66 = v30;
  v67 = v30 + 32;
  v68 = 0;
  v69 = v31;
  v32 = specialized Collection<>.popFirst()();
  v33 = v26;
  if (v32 == 3 || v68 != v69 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v40 = v64;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v32)
  {
    if (v32 == 1)
    {
      v70 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v9;
      v36 = v29;
      v57 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Currency and conformance IntegerFormatStyle<A>.Currency, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR, &protocol conformance descriptor for IntegerFormatStyle<A>.Currency);
      v37 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v51 = 0;
      (*(v56 + 8))(v34, v28);
      (*(v63 + 8))(v57, v33);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v37;
    }

    else
    {
      v70 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v26;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v9;
      v36 = v29;
      v57 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR, &protocol conformance descriptor for IntegerFormatStyle<A>.Percent);
      v45 = v54;
      v46 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v47 = v63;
      v51 = 0;
      (*(v56 + 8))(v46, v28);
      (*(v47 + 8))(v57, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v45;
    }
  }

  else
  {
    v70 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, &protocol conformance descriptor for IntegerFormatStyle<A>);
    v44 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 8))(v25, v28);
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    v51 = 0;
    swift_storeEnumTagMultiPayload();
    v36 = v29;
    v48 = v44;
  }

  v49 = v55;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v48, v55, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v49, v36, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle()
{
  Hasher.init(_seed:)();
  String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 10) = *(a1 + 106);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 10) = *(a2 + 106);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 10) = *(a1 + 106);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 10) = *(a2 + 106);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v34, v46);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v40, v46);
  v18 = specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 10) = *(v26 + 10);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 10) = *(v33 + 10);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v46);
  return v18 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.format(_:)(Swift::Int a1)
{
  v192 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v174 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v174 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v174 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v1, v14, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v183 = a1;
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
    v30 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v36 = v35;
    v37 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    v39 = (*(v37 + 472))(ObjectType, v37);
    isUniquelyReferenced_nonNull_native = v39;
    v41 = v40;
    if (one-time initialization token for cache != -1)
    {
      v39 = swift_once();
    }

    v42 = *algn_1EA7B1D98;
    v181 = static ICUNumberFormatter.cache;
    *&v184 = v30;
    *(&v184 + 1) = v36;
    *&v185 = isUniquelyReferenced_nonNull_native;
    *(&v185 + 1) = v41;
    MEMORY[0x1EEE9AC00](v39);
    *(&v174 - 2) = &v184;
    os_unfair_lock_lock((v42 + 24));
    v43 = 0;
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v42 + 16, &v189);
    os_unfair_lock_unlock((v42 + 24));
    v44 = v189;
    if (v189 != 1)
    {
LABEL_130:

      v165 = v183;
      if (v44)
      {
        v166 = v44[2];
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        v167 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v166, v165);
        if (v43)
        {
        }

        else
        {
          v171 = v167;

          v151 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v171);
          v153 = v172;

          if (v153)
          {
            goto LABEL_134;
          }
        }
      }

      *&v189 = v165;
      lazy protocol witness table accessor for type Int and conformance Int();
      v151 = String.init<A>(_:radix:uppercase:)();
      v153 = v168;
LABEL_134:
      v154 = &_s10Foundation18IntegerFormatStyleVySiGMd;
      v155 = &_s10Foundation18IntegerFormatStyleVySiGMR;
      v156 = v11;
      goto LABEL_135;
    }

    type metadata accessor for ICUNumberFormatter();
    v44 = swift_allocObject();
    v44[3] = v30;
    v44[4] = v36;
    swift_bridgeObjectRetain_n();
    v45 = MEMORY[0x1865CB200](v30, v36);
    v182 = isUniquelyReferenced_nonNull_native;
    if (v45)
    {
      v178 = v41;
      LOBYTE(isUniquelyReferenced_nonNull_native) = 0;
      v46 = v45;
      v47 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v45, 0);

      v48 = specialized Sequence._copySequenceContents(initializing:)(&v189, (v47 + 4), v46, v30, v36);

      if (v48 != v46)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        v175 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
        v177 = static _DictionaryStorage.copy(original:)();
        if (v47[2])
        {
          v93 = v177 + 64;
          v94 = 1 << v177[32];
          v176 = (v47 + 8);
          v95 = (v94 + 63) >> 6;
          if (v177 != v47 || v93 >= &v176[8 * v95])
          {
            memmove(v93, v176, 8 * v95);
          }

          v96 = 0;
          *(v177 + 2) = v47[2];
          v97 = 1 << *(v47 + 32);
          v98 = -1;
          if (v97 < 64)
          {
            v98 = ~(-1 << v97);
          }

          v179 = v98 & v47[8];
          v174 = (v97 + 63) >> 6;
          while (v179)
          {
            v99 = __clz(__rbit64(v179));
            v179 &= v179 - 1;
LABEL_76:
            v102 = v99 | (v96 << 6);
            v103 = (v47[6] + 48 * v102);
            v104 = v103[1];
            v105 = v103[2];
            v106 = v103[3];
            v107 = *(v47[7] + 8 * v102);
            v108 = v103[4];
            v109 = v103[5];
            v110 = v177;
            v111 = (*(v177 + 6) + 48 * v102);
            *v111 = *v103;
            v111[1] = v104;
            v111[2] = v105;
            v111[3] = v106;
            v111[4] = v108;
            v111[5] = v109;
            *(*(v110 + 7) + 8 * v102) = v107;
          }

          v100 = v96;
          while (1)
          {
            v96 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              break;
            }

            if (v96 >= v174)
            {
              goto LABEL_107;
            }

            v101 = *&v176[8 * v96];
            ++v100;
            if (v101)
            {
              v99 = __clz(__rbit64(v101));
              v179 = (v101 - 1) & v101;
              goto LABEL_76;
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_142;
        }

LABEL_107:

        v49 = v175;
        v66 = v177;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_34;
      }

      LOBYTE(isUniquelyReferenced_nonNull_native) = v182;
      v41 = v178;
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    v180 = 0;
    LODWORD(v189) = 0;
    if (v47[2] >> 31)
    {
      goto LABEL_59;
    }

    String.utf8CString.getter();
    v79 = unumf_openForSkeletonAndLocale();

    if (v79)
    {
      if (v189 < 1)
      {
        v44[2] = v79;
LABEL_46:
        os_unfair_lock_lock((v42 + 24));
        v47 = *(v42 + 16);
        v80 = v47[2];
        v179 = v47;
        if (v181 < v80)
        {
          v47 = MEMORY[0x1E69E7CC8];
          *(v42 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v189 = *(v42 + 16);
        v81 = v189;
        *(v42 + 16) = 0x8000000000000000;
        v83 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v36, v182, v41);
        v84 = *(v81 + 16);
        v85 = (v82 & 1) == 0;
        v49 = v84 + v85;
        if (__OFADD__(v84, v85))
        {
          goto LABEL_60;
        }

        v86 = v82;
        if (*(v81 + 24) >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v87 = v81;
            v43 = v180;
            v88 = v182;
            if ((v82 & 1) == 0)
            {
LABEL_128:
              specialized _NativeDictionary._insert(at:key:value:)(v83, v30, v36, v88, v41, v44, v87);
              goto LABEL_129;
            }
          }

          else
          {
            v176 = v83;
            v178 = v41;
            v175 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
            v131 = static _DictionaryStorage.copy(original:)();
            v87 = v131;
            if (*(v81 + 16))
            {
              v132 = (v131 + 64);
              v133 = 1 << *(v87 + 32);
              v177 = (v81 + 64);
              v134 = (v133 + 63) >> 6;
              if (v87 != v81 || v132 >= &v177[8 * v134])
              {
                memmove(v132, v177, 8 * v134);
              }

              v135 = 0;
              *(v87 + 16) = *(v81 + 16);
              v136 = 1 << *(v81 + 32);
              v137 = -1;
              if (v136 < 64)
              {
                v137 = ~(-1 << v136);
              }

              v181 = v137 & *(v81 + 64);
              v174 = (v136 + 63) >> 6;
              while (v181)
              {
                v138 = __clz(__rbit64(v181));
                v181 &= v181 - 1;
LABEL_106:
                v141 = v138 | (v135 << 6);
                v142 = (*(v81 + 48) + 32 * v141);
                v143 = v142[1];
                v144 = v142[2];
                v145 = v142[3];
                v146 = *(*(v81 + 56) + 8 * v141);
                v147 = (*(v87 + 48) + 32 * v141);
                *v147 = *v142;
                v147[1] = v143;
                v147[2] = v144;
                v147[3] = v145;
                *(*(v87 + 56) + 8 * v141) = v146;
              }

              v139 = v135;
              while (1)
              {
                v135 = v139 + 1;
                if (__OFADD__(v139, 1))
                {
                  goto LABEL_140;
                }

                if (v135 >= v174)
                {
                  break;
                }

                v140 = *&v177[8 * v135];
                ++v139;
                if (v140)
                {
                  v138 = __clz(__rbit64(v140));
                  v181 = (v140 - 1) & v140;
                  goto LABEL_106;
                }
              }
            }

            v43 = v180;
            v88 = v182;
            v30 = v175;
            v41 = v178;
            v83 = v176;
            if ((v86 & 1) == 0)
            {
              goto LABEL_128;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
          v87 = v189;
          v88 = v182;
          v89 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v36, v182, v41);
          if ((v86 & 1) != (v90 & 1))
          {
LABEL_142:
            v169 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_143;
          }

          v83 = v89;
          v43 = v180;
          if ((v86 & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v91 = v83;

        *(*(v87 + 56) + 8 * v91) = v44;

LABEL_129:
        *(v42 + 16) = v87;

        os_unfair_lock_unlock((v42 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_130;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v44 = 0;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v5, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
    v31 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v11 = v50;
    v51 = *(v5 + 1);
    v52 = swift_getObjectType();
    v53 = (*(v51 + 472))(v52, v51);
    v28 = v54;
    if (one-time initialization token for cache != -1)
    {
      v92 = v53;
      swift_once();
      v53 = v92;
    }

    v55 = static ICUPercentNumberFormatter.cache;
    v30 = *algn_1EA7B0228;
    *&v189 = v31;
    *(&v189 + 1) = v11;
    v182 = v53;
    *&v190 = v53;
    *(&v190 + 1) = v28;
    MEMORY[0x1EEE9AC00](v53);
    *(&v174 - 2) = &v189;
    os_unfair_lock_lock((v30 + 24));
    v56 = 0;
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v30 + 16, &v184);
    os_unfair_lock_unlock((v30 + 24));
    v57 = v184;
    if (v184 != 1)
    {
LABEL_120:

      v159 = v183;
      if (v57)
      {
        v160 = *(v57 + 16);
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        v161 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v160, v159);
        if (v56)
        {
        }

        else
        {
          v163 = v161;

          v151 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v163);
          v153 = v164;

          if (v153)
          {
            goto LABEL_124;
          }
        }
      }

      *&v189 = v159;
      lazy protocol witness table accessor for type Int and conformance Int();
      v151 = String.init<A>(_:radix:uppercase:)();
      v153 = v162;
LABEL_124:
      v154 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
      v155 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR;
      v156 = v5;
      goto LABEL_135;
    }

    v181 = 0;
    *&v184 = 0x746E6563726570;
    *(&v184 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v187 = 32;
      v188 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v31, v11);
      MEMORY[0x1865CB0E0](v187, v188);
    }

    v59 = *(&v184 + 1);
    v58 = v184;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v57 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v58, v59, v182, v28);
    os_unfair_lock_lock((v30 + 24));
    v47 = *(v30 + 16);
    v60 = v47[2];
    v180 = v47;
    if (v55 < v60)
    {
      v47 = MEMORY[0x1E69E7CC8];
      *(v30 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

LABEL_27:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v184 = *(v30 + 16);
    v68 = v184;
    *(v30 + 16) = 0x8000000000000000;
    v70 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v11, v182, v28);
    v71 = *(v68 + 16);
    v72 = (v69 & 1) == 0;
    v49 = v71 + v72;
    if (!__OFADD__(v71, v72))
    {
      v73 = v69;
      if (*(v68 + 24) < v49)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
        v74 = v184;
        v75 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v11, v182, v28);
        if ((v73 & 1) == (v76 & 1))
        {
          v70 = v75;
          goto LABEL_37;
        }

        goto LABEL_141;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v74 = v68;
LABEL_37:
        v56 = v181;
        if (v73)
        {
LABEL_38:
          v78 = v70;

          *(*(v74 + 56) + 8 * v78) = v57;

LABEL_119:
          *(v30 + 16) = v74;

          os_unfair_lock_unlock((v30 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_120;
        }

LABEL_118:
        specialized _NativeDictionary._insert(at:key:value:)(v70, v31, v11, v182, v28, v57, v74);
        goto LABEL_119;
      }

      v175 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v112 = static _DictionaryStorage.copy(original:)();
      v74 = v112;
      if (!*(v68 + 16))
      {
LABEL_117:

        v56 = v181;
        v70 = v175;
        if (v73)
        {
          goto LABEL_38;
        }

        goto LABEL_118;
      }

      v113 = (v112 + 64);
      v114 = 1 << *(v74 + 32);
      v176 = (v68 + 64);
      v115 = (v114 + 63) >> 6;
      if (v74 != v68 || v113 >= &v176[8 * v115])
      {
        memmove(v113, v176, 8 * v115);
      }

      v116 = 0;
      *(v74 + 16) = *(v68 + 16);
      v117 = 1 << *(v68 + 32);
      v118 = -1;
      if (v117 < 64)
      {
        v118 = ~(-1 << v117);
      }

      v179 = v118 & *(v68 + 64);
      v174 = (v117 + 63) >> 6;
      while (v179)
      {
        v119 = __clz(__rbit64(v179));
        v179 &= v179 - 1;
LABEL_91:
        v122 = v119 | (v116 << 6);
        v123 = *(v68 + 56);
        v124 = (*(v68 + 48) + 32 * v122);
        v125 = *v124;
        v177 = v124[1];
        v126 = v177;
        v127 = v124[2];
        v178 = v124[3];
        v128 = v178;
        v129 = *(v123 + 8 * v122);
        v130 = (*(v74 + 48) + 32 * v122);
        *v130 = v125;
        v130[1] = v126;
        v130[2] = v127;
        v130[3] = v128;
        *(*(v74 + 56) + 8 * v122) = v129;
      }

      v120 = v116;
      while (1)
      {
        v116 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_139;
        }

        if (v116 >= v174)
        {
          goto LABEL_117;
        }

        v121 = *&v176[8 * v116];
        ++v120;
        if (v121)
        {
          v119 = __clz(__rbit64(v121));
          v179 = (v121 - 1) & v121;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v8, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
  v16 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v18 = v17;
  v19 = v8;
  isUniquelyReferenced_nonNull_native = *(v8 + 2);
  v20 = *(v8 + 3);
  v22 = *(v19 + 1);
  v180 = v19;
  v23 = swift_getObjectType();
  v24 = *(v22 + 472);

  v25 = v24(v23, v22);
  v26 = v25;
  *&v189 = v16;
  *(&v189 + 1) = v18;
  v182 = v18;
  *&v190 = isUniquelyReferenced_nonNull_native;
  *(&v190 + 1) = v20;
  v181 = v20;
  *&v191 = v25;
  *(&v191 + 1) = v27;
  v28 = v27;
  if (one-time initialization token for cache != -1)
  {
    v25 = swift_once();
  }

  v11 = qword_1EA7B5100;
  v179 = static ICUCurrencyNumberFormatter.cache;
  v184 = v189;
  v185 = v190;
  v186 = v191;
  MEMORY[0x1EEE9AC00](v25);
  *(&v174 - 2) = &v184;
  os_unfair_lock_lock(v11 + 6);
  v29 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)((v11 + 16), &v187);
  os_unfair_lock_unlock(v11 + 6);
  v30 = v187;
  v5 = v182;
  v31 = v181;
  if (v187 == 1)
  {
    v178 = 0;
    v32 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v16, v182, isUniquelyReferenced_nonNull_native, v181);
    v34 = v33;
    type metadata accessor for ICUCurrencyNumberFormatter();
    swift_allocObject();

    v30 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v32, v34, v26, v28);
    os_unfair_lock_lock(v11 + 6);
    if (v179 >= *(*(v11 + 2) + 16))
    {
    }

    else
    {
      *(v11 + 2) = MEMORY[0x1E69E7CC8];
    }

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v187 = *(v11 + 2);
    v47 = v187;
    *(v11 + 2) = 0x8000000000000000;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v189);
    v62 = v47[2];
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    LOBYTE(isUniquelyReferenced_nonNull_native) = v61;
    if (v47[3] >= v65)
    {
      if ((v57 & 1) == 0)
      {
        goto LABEL_62;
      }

      v66 = v47;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v57);
      v66 = v187;
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v189);
      if ((isUniquelyReferenced_nonNull_native & 1) != (v67 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_26;
      }
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_108:
      specialized _NativeDictionary._insert(at:key:value:)(v49, &v189, v30, v66);
      goto LABEL_109;
    }

LABEL_34:
    v77 = v49;

    *(v66[7] + 8 * v77) = v30;

LABEL_109:
    *(v11 + 2) = v66;

    os_unfair_lock_unlock(v11 + 6);

    outlined consume of ICUNumberFormatter??(1);
    v29 = v178;
  }

  v148 = v183;
  if (v30)
  {
    v149 = *(v30 + 16);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v150 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v149, v148);
    if (v29)
    {
    }

    else
    {
      v157 = v150;

      v151 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v157);
      v153 = v158;

      if (v153)
      {
        goto LABEL_114;
      }
    }
  }

  *&v184 = v148;
  lazy protocol witness table accessor for type Int and conformance Int();
  v151 = String.init<A>(_:radix:uppercase:)();
  v153 = v152;
LABEL_114:
  v154 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
  v155 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR;
  v156 = v180;
LABEL_135:
  outlined destroy of TermOfAddress?(v156, v154, v155);
  v169 = v151;
  v170 = v153;
LABEL_143:
  result._object = v170;
  result._countAndFlagsBits = v169;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v26 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v26 - v12);
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v16, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v10, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v10 = v17;
      v10[1] = v18;
      v21 = v10;
      v22 = a2;
      v23 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
    }

    else
    {
      v20 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v7, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      v21 = v7;
      v22 = a2;
      v23 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
    }

    v24 = v20;
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v13, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    v21 = v13;
    v22 = a2;
    v23 = &_s10Foundation18IntegerFormatStyleVySiGMd;
    v24 = &_s10Foundation18IntegerFormatStyleVySiGMR;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v21, v22, v23, v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v11, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, v12, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v32 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v32 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMR);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v32 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v40, v14, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v39 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v36;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v36, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
      v44 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v33;
      v23 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Currency and conformance FloatingPointFormatStyle<A>.Currency, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Currency);
      v24 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      outlined destroy of TermOfAddress?(v21, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
      return (*v20)(v17, v23);
    }

    else
    {
      v28 = v38;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v38, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
      v45 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v34;
      v30 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
      v31 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v31);
      outlined destroy of TermOfAddress?(v28, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
      return (*v20)(v17, v30);
    }
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    v43 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>);
    v27 = v42;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of TermOfAddress?(v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    return (*v20)(v17, v26);
  }
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.hash(into:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void, double), uint64_t (*a9)(void))
{
  v231 = a1;
  v225 = a2;
  v226 = a3;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v212 - v15;
  v227 = a4;
  v228 = a5;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v212 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v229 = *(v17 - 8);
  v230 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v222 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v223 = &v212 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v212 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = (&v212 - v28);
  v30 = a8(0, v27);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v212 - v31;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v9, &v212 - v31, a9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v218;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v32, v218, v227, v228);
      v35 = v231;
      MEMORY[0x1865CD060](1);
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      if ((*(v36 + 48))(ObjectType, v36))
      {
        v38 = 1;
LABEL_11:
        Hasher._combine(_:)(v38);
        v50 = v229;
        v49 = v230;
        v51 = v219;
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v36 + 64))(ObjectType, v36);
      String.hash(into:)();

      (*(v36 + 464))(&v232, ObjectType, v36);
      v245 = v238;
      v246[0] = v239[0];
      *(v246 + 12) = *(v239 + 12);
      *v242 = v234;
      *&v242[16] = v235;
      v243 = v236;
      v244 = v237;
      v240 = v232;
      v241 = v233;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v240) == 1)
      {
        v38 = 0;
        goto LABEL_11;
      }

      v57 = v232;
      v58 = *(&v232 + 1);
      v59 = *(&v233 + 1);
      v212 = v233;
      v60 = *(&v234 + 1);
      v213 = v234;
      *v215 = v235;
      *&v215[16] = v236;
      *&v215[32] = v237;
      v217 = *(&v238 + 1);
      *&v215[48] = v238;
      v214 = *(&v239[0] + 1);
      v220 = *&v239[0];
      v221 = *&v239[1];
      v222 = BYTE8(v239[1]);
      v225 = BYTE9(v239[1]);
      v61 = BYTE10(v239[1]);
      LODWORD(v226) = BYTE11(v239[1]);
      Hasher._combine(_:)(1u);
      if (v57 == 2)
      {
        v62 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v62 = v57 & 1;
      }

      Hasher._combine(_:)(v62);
      if (v58)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v58 + 16));
        v76 = *(v58 + 16);
        if (v76)
        {
          v77 = v58 + 40;
          do
          {

            String.hash(into:)();

            v77 += 16;
            --v76;
          }

          while (v76);
        }

        LODWORD(v216) = v61;
        if (v59)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        LODWORD(v216) = v61;
        if (v59)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v50 = v229;
      v49 = v230;
      v82 = *v215;
      if (v60)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v83 = *&v215[24];
      if (v82)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v35, v82, v84, v85, v86, v87, v88, v89);
        v51 = v219;
        if (*(&v82 + 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v51 = v219;
        if (*(&v82 + 1))
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v35, *(&v82 + 1), v90, v91, v92, v93, v94, v95);
          if (*&v215[16])
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }
      }

      Hasher._combine(_:)(0);
      if (*&v215[16])
      {
LABEL_53:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v83)
        {
          goto LABEL_54;
        }

        goto LABEL_60;
      }

LABEL_59:
      Hasher._combine(_:)(0);
      if (v83)
      {
LABEL_54:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v215[32])
        {
          goto LABEL_55;
        }

        goto LABEL_61;
      }

LABEL_60:
      Hasher._combine(_:)(0);
      if (*&v215[32])
      {
LABEL_55:
        v96 = v220;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v215[40])
        {
LABEL_56:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_63;
        }

LABEL_62:
        Hasher._combine(_:)(0);
LABEL_63:
        v97 = v96;
        if (*&v215[48])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v98 = v217;
          if (v217)
          {
            goto LABEL_65;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v98 = v217;
          if (v217)
          {
LABEL_65:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(v35, v98);
            v99 = v222;
            if (v97)
            {
              goto LABEL_66;
            }

            goto LABEL_70;
          }
        }

        Hasher._combine(_:)(0);
        v99 = v222;
        if (v97)
        {
LABEL_66:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v35, v97);
          if (v221)
          {
LABEL_67:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_72:
            v100 = v216;
            if (v99 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v99 & 1);
            }

            v101 = v225;
            if (v225 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v101 & 1);
            }

            v102 = v226;
            if (v100 == 2)
            {
              v103 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v103 = v100 & 1;
            }

            Hasher._combine(_:)(v103);
            if (v102 == 2)
            {
              v104 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v104 = v102 & 1;
            }

            Hasher._combine(_:)(v104);
            outlined destroy of TermOfAddress?(&v232, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_85:
            String.hash(into:)();
            v105 = v34 + *(v51 + 40);
            if (*(v105 + 8) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v106 = *v105;
              Hasher._combine(_:)(1u);
              if ((v106 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v107 = v106;
              }

              else
              {
                v107 = 0;
              }

              MEMORY[0x1865CD090](v107);
            }

            v108 = *(v105 + 32);
            v240 = *(v105 + 16);
            v241 = v108;
            *v242 = *(v105 + 48);
            *&v242[9] = *(v105 + 57);
            specialized Optional<A>.hash(into:)();
            v109 = *(v105 + 73);
            if (v109 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v109 & 1);
            }

            v110 = *(v105 + 74);
            if (*(v105 + 74) == 2)
            {
              LOBYTE(v111) = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v110 & 1);
              MEMORY[0x1865CD060]((v110 >> 8) & 1);
              MEMORY[0x1865CD060](WORD1(v110) & 1);
              v111 = BYTE3(v110) & 1;
            }

            Hasher._combine(_:)(v111);
            v112 = *(v105 + 78);
            if (v112 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v112 & 1);
            }

            v113 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
            v114 = v223;
            outlined init with copy of FloatingPointRoundingRule?(v105 + v113[9], v223, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
            if ((*(v50 + 48))(v114, 1, v49) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v115 = v224;
              (*(v50 + 32))(v224, v114, v49);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v50 + 8))(v115, v49);
            }

            v116 = v105 + v113[10];
            v117 = *(v116 + 8);
            if (v117 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v118 = *v116;
              Hasher._combine(_:)(1u);
              if (v117)
              {
                MEMORY[0x1865CD060](1);
                if ((v118 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v119 = v118;
                }

                else
                {
                  v119 = 0;
                }

                MEMORY[0x1865CD090](v119);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v118);
              }
            }

            MEMORY[0x1865CD060](*(v105 + v113[11]));
            v120 = *(v105 + v113[12]);
            if (v120 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v120);
            }

            v121 = v34;
            v122 = v227;
            v123 = v228;
            return outlined destroy of TermOfAddress?(v121, v122, v123);
          }

LABEL_71:
          Hasher._combine(_:)(0);
          goto LABEL_72;
        }

LABEL_70:
        Hasher._combine(_:)(0);
        if (v221)
        {
          goto LABEL_67;
        }

        goto LABEL_71;
      }

LABEL_61:
      v96 = v220;
      Hasher._combine(_:)(0);
      if (*&v215[40])
      {
        goto LABEL_56;
      }

      goto LABEL_62;
    }

    v44 = v221;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v32, v221, v225, v226);
    v45 = v231;
    MEMORY[0x1865CD060](2);
    v46 = *(v44 + 8);
    v47 = swift_getObjectType();
    if ((*(v46 + 48))(v47, v46))
    {
      v48 = 1;
LABEL_17:
      Hasher._combine(_:)(v48);
      v55 = v229;
      v54 = v230;
      v56 = v220;
      goto LABEL_226;
    }

    Hasher._combine(_:)(0);
    (*(v46 + 64))(v47, v46);
    String.hash(into:)();

    (*(v46 + 464))(&v232, v47, v46);
    v245 = v238;
    v246[0] = v239[0];
    *(v246 + 12) = *(v239 + 12);
    *v242 = v234;
    *&v242[16] = v235;
    v243 = v236;
    v244 = v237;
    v240 = v232;
    v241 = v233;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v240) == 1)
    {
      v48 = 0;
      goto LABEL_17;
    }

    v70 = v232;
    v71 = *(&v232 + 1);
    v72 = *(&v233 + 1);
    v212 = v233;
    v73 = *(&v234 + 1);
    v213 = v234;
    *v215 = v235;
    *&v215[16] = v236;
    *&v215[32] = v237;
    v217 = *(&v238 + 1);
    *&v215[48] = v238;
    v214 = *(&v239[0] + 1);
    v218 = *&v239[0];
    v219 = *&v239[1];
    v223 = BYTE8(v239[1]);
    v227 = BYTE9(v239[1]);
    v74 = BYTE10(v239[1]);
    LODWORD(v228) = BYTE11(v239[1]);
    Hasher._combine(_:)(1u);
    if (v70 == 2)
    {
      v75 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v75 = v70 & 1;
    }

    Hasher._combine(_:)(v75);
    if (v71)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v71 + 16));
      v80 = *(v71 + 16);
      if (v80)
      {
        v81 = v71 + 40;
        do
        {

          String.hash(into:)();

          v81 += 16;
          --v80;
        }

        while (v80);
      }

      LODWORD(v216) = v74;
      if (v72)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      LODWORD(v216) = v74;
      if (v72)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_188;
      }
    }

    Hasher._combine(_:)(0);
LABEL_188:
    v55 = v229;
    v54 = v230;
    v171 = *v215;
    if (v73)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v172 = *&v215[24];
    if (v171)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v45, v171, v173, v174, v175, v176, v177, v178);
      v56 = v220;
      if (*(&v171 + 1))
      {
        goto LABEL_193;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v56 = v220;
      if (*(&v171 + 1))
      {
LABEL_193:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v45, *(&v171 + 1), v179, v180, v181, v182, v183, v184);
        if (*&v215[16])
        {
          goto LABEL_194;
        }

        goto LABEL_200;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v215[16])
    {
LABEL_194:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v185 = *&v215[32];
      if (v172)
      {
        goto LABEL_195;
      }

      goto LABEL_201;
    }

LABEL_200:
    Hasher._combine(_:)(0);
    v185 = *&v215[32];
    if (v172)
    {
LABEL_195:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v185)
      {
        goto LABEL_196;
      }

      goto LABEL_202;
    }

LABEL_201:
    Hasher._combine(_:)(0);
    if (v185)
    {
LABEL_196:
      v186 = v218;
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*&v215[40])
      {
LABEL_197:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_204;
      }

LABEL_203:
      Hasher._combine(_:)(0);
LABEL_204:
      v187 = v186;
      if (*&v215[48])
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v188 = v217;
        if (v217)
        {
          goto LABEL_206;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v188 = v217;
        if (v217)
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v45, v188);
          v189 = v223;
          if (v187)
          {
            goto LABEL_207;
          }

          goto LABEL_211;
        }
      }

      Hasher._combine(_:)(0);
      v189 = v223;
      if (v187)
      {
LABEL_207:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v45, v187);
        if (v219)
        {
LABEL_208:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_213:
          v190 = v228;
          if (v189 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v189 & 1);
          }

          v191 = v227;
          if (v227 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v191 & 1);
          }

          v192 = v216;
          if (v216 == 2)
          {
            v193 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v193 = v192 & 1;
          }

          Hasher._combine(_:)(v193);
          if (v190 == 2)
          {
            v194 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v194 = v190 & 1;
          }

          Hasher._combine(_:)(v194);
          outlined destroy of TermOfAddress?(&v232, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_226:
          v195 = v44 + *(v56 + 36);
          if (*(v195 + 8) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v196 = *v195;
            Hasher._combine(_:)(1u);
            if ((v196 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v197 = v196;
            }

            else
            {
              v197 = 0;
            }

            MEMORY[0x1865CD090](v197);
          }

          v198 = *(v195 + 32);
          v240 = *(v195 + 16);
          v241 = v198;
          *v242 = *(v195 + 48);
          *&v242[9] = *(v195 + 57);
          specialized Optional<A>.hash(into:)();
          v199 = *(v195 + 73);
          if (v199 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v199 & 1);
          }

          v200 = *(v195 + 74);
          v201 = v200 | (*(v195 + 76) << 16);
          if (v200 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v201 & 1);
            MEMORY[0x1865CD060]((v201 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v201) & 1);
          }

          v202 = *(v195 + 77);
          if (v202 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v202 & 1);
          }

          v203 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          v204 = v222;
          outlined init with copy of FloatingPointRoundingRule?(v195 + v203[9], v222, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
          if ((*(v55 + 48))(v204, 1, v54) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v205 = v224;
            (*(v55 + 32))(v224, v204, v54);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            (*(v55 + 8))(v205, v54);
          }

          v206 = v195 + v203[10];
          v207 = *(v206 + 8);
          if (v207 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v208 = *v206;
            Hasher._combine(_:)(1u);
            if (v207)
            {
              MEMORY[0x1865CD060](1);
              if ((v208 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v209 = v208;
              }

              else
              {
                v209 = 0;
              }

              MEMORY[0x1865CD090](v209);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v208);
            }
          }

          v210 = *(v195 + v203[11]);
          if (v210 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v210);
          }

          v121 = v44;
          v122 = v225;
          v123 = v226;
          return outlined destroy of TermOfAddress?(v121, v122, v123);
        }

LABEL_212:
        Hasher._combine(_:)(0);
        goto LABEL_213;
      }

LABEL_211:
      Hasher._combine(_:)(0);
      if (v219)
      {
        goto LABEL_208;
      }

      goto LABEL_212;
    }

LABEL_202:
    v186 = v218;
    Hasher._combine(_:)(0);
    if (*&v215[40])
    {
      goto LABEL_197;
    }

    goto LABEL_203;
  }

  v226 = v26;
  v227 = v25;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v32, v29, a6, a7);
  MEMORY[0x1865CD060](0);
  v39 = v29[1];
  v228 = v29;
  v40 = swift_getObjectType();
  v41 = (*(v39 + 48))(v40, v39);
  v216 = a7;
  v217 = a6;
  if (v41)
  {
    Hasher._combine(_:)(1u);
    v43 = v229;
    v42 = v230;
LABEL_14:
    v52 = v228;
    v53 = v226;
    goto LABEL_156;
  }

  Hasher._combine(_:)(0);
  (*(v39 + 64))(v40, v39);
  String.hash(into:)();

  (*(v39 + 464))(&v232, v40, v39);
  v245 = v238;
  v246[0] = v239[0];
  *(v246 + 12) = *(v239 + 12);
  *v242 = v234;
  *&v242[16] = v235;
  v243 = v236;
  v244 = v237;
  v240 = v232;
  v241 = v233;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v240) == 1)
  {
    Hasher._combine(_:)(0);
    v43 = v229;
    v42 = v230;
    goto LABEL_14;
  }

  v63 = v232;
  v64 = *(&v232 + 1);
  v65 = *(&v233 + 1);
  v213 = v233;
  v66 = *(&v234 + 1);
  v214 = v234;
  *&v215[8] = v235;
  *&v215[24] = v236;
  *&v215[40] = v237;
  v220 = *(&v238 + 1);
  v218 = v238;
  *v215 = *(&v239[0] + 1);
  v221 = *&v239[0];
  v222 = *&v239[1];
  v223 = BYTE8(v239[1]);
  v225 = BYTE9(v239[1]);
  v67 = BYTE10(v239[1]);
  v68 = BYTE11(v239[1]);
  Hasher._combine(_:)(1u);
  if (v63 == 2)
  {
    v69 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v69 = v63 & 1;
  }

  Hasher._combine(_:)(v69);
  if (v64)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v64 + 16));
    v78 = *(v64 + 16);
    if (v78)
    {
      v79 = v64 + 40;
      do
      {

        String.hash(into:)();

        v79 += 16;
        --v78;
      }

      while (v78);
    }

    LODWORD(v219) = v67;
    if (v65)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    LODWORD(v219) = v67;
    if (v65)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v52 = v228;
  v124 = v220;
  LODWORD(v220) = v68;
  if (v66)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v43 = v229;
  v42 = v230;
  v125 = *&v215[16];
  v126 = *&v215[8];
  if (*&v215[8])
  {
    v127 = v231;
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v127, v126, v128, v129, v130, v131, v132, v133);
    if (v125)
    {
      goto LABEL_122;
    }

LABEL_125:
    Hasher._combine(_:)(0);
    if (*(&v125 + 1))
    {
      goto LABEL_123;
    }

    goto LABEL_126;
  }

  Hasher._combine(_:)(0);
  if (!v125)
  {
    goto LABEL_125;
  }

LABEL_122:
  v134 = v231;
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v134, v125, v135, v136, v137, v138, v139, v140);
  if (*(&v125 + 1))
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_127;
  }

LABEL_126:
  Hasher._combine(_:)(0);
LABEL_127:
  v141 = v124;
  if (*&v215[32])
  {
    v142 = v222;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v215[40])
    {
LABEL_129:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_132;
    }
  }

  else
  {
    v142 = v222;
    Hasher._combine(_:)(0);
    if (*&v215[40])
    {
      goto LABEL_129;
    }
  }

  Hasher._combine(_:)(0);
LABEL_132:
  v143 = v142;
  if (*&v215[48])
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v218)
    {
      goto LABEL_134;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v218)
    {
LABEL_134:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v53 = v226;
      if (v141)
      {
        goto LABEL_135;
      }

      goto LABEL_140;
    }
  }

  Hasher._combine(_:)(0);
  v53 = v226;
  if (v141)
  {
LABEL_135:
    v144 = v231;
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v144, v141);
    v145 = v221;
    if (v221)
    {
      goto LABEL_136;
    }

LABEL_141:
    Hasher._combine(_:)(0);
    v147 = v219;
    if (v143)
    {
      goto LABEL_137;
    }

LABEL_142:
    Hasher._combine(_:)(0);
    goto LABEL_143;
  }

LABEL_140:
  Hasher._combine(_:)(0);
  v145 = v221;
  if (!v221)
  {
    goto LABEL_141;
  }

LABEL_136:
  v146 = v231;
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v146, v145);
  v147 = v219;
  if (!v143)
  {
    goto LABEL_142;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_143:
  v148 = v223;
  if (v223 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v148 & 1);
  }

  v149 = v225;
  if (v225 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v149 & 1);
  }

  v150 = v220;
  if (v147 == 2)
  {
    v151 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v151 = v147 & 1;
  }

  Hasher._combine(_:)(v151);
  if (v150 == 2)
  {
    v152 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v152 = v150 & 1;
  }

  Hasher._combine(_:)(v152);
  outlined destroy of TermOfAddress?(&v232, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_156:
  v153 = v52 + *(v53 + 9);
  if (v153[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v154 = *v153;
    Hasher._combine(_:)(1u);
    if ((v154 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v155 = v154;
    }

    else
    {
      v155 = 0;
    }

    MEMORY[0x1865CD090](v155);
  }

  v156 = *(v153 + 2);
  v240 = *(v153 + 1);
  v241 = v156;
  *v242 = *(v153 + 3);
  *&v242[9] = *(v153 + 57);
  specialized Optional<A>.hash(into:)();
  v157 = v153[73];
  if (v157 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v157 & 1);
  }

  v158 = v227;
  v159 = *(v153 + 37);
  v160 = v159 | (v153[76] << 16);
  if (v159 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v160 & 1);
    MEMORY[0x1865CD060]((v160 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v160) & 1);
  }

  v161 = v153[77];
  if (v161 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v161 & 1);
  }

  v162 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v153[v162[9]], v158, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v43 + 48))(v158, 1, v42) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v163 = v224;
    (*(v43 + 32))(v224, v158, v42);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v43 + 8))(v163, v42);
  }

  v165 = v216;
  v164 = v217;
  v166 = &v153[v162[10]];
  v167 = v166[8];
  if (v167 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v168 = *v166;
    Hasher._combine(_:)(1u);
    if (v167)
    {
      MEMORY[0x1865CD060](1);
      if ((v168 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v169 = v168;
      }

      else
      {
        v169 = 0;
      }

      MEMORY[0x1865CD090](v169);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v168);
    }
  }

  v170 = v153[v162[11]];
  if (v170 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v170);
  }

  v121 = v228;
  v122 = v164;
  v123 = v165;
  return outlined destroy of TermOfAddress?(v121, v122, v123);
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMR);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v50 - v8;
  v10 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();
  v23 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v52 = v15;
  v53 = v18;
  v54 = v12;
  v55 = v21;
  v25 = v57;
  v24 = v58;
  v27 = v59;
  v26 = v60;
  v64 = v10;
  v28 = v61;
  v29 = v62;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v66 = v30;
  v67 = v30 + 32;
  v68 = 0;
  v69 = v31;
  v32 = specialized Collection<>.popFirst()();
  v33 = v26;
  if (v32 == 3 || v68 != v69 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v40 = v64;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v32)
  {
    if (v32 == 1)
    {
      v70 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v9;
      v36 = v29;
      v57 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Currency and conformance FloatingPointFormatStyle<A>.Currency, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Currency);
      v37 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v51 = 0;
      (*(v56 + 8))(v34, v28);
      (*(v63 + 8))(v57, v33);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v37;
    }

    else
    {
      v70 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v26;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v9;
      v36 = v29;
      v57 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
      v45 = v54;
      v46 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v47 = v63;
      v51 = 0;
      (*(v56 + 8))(v46, v28);
      (*(v47 + 8))(v57, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v45;
    }
  }

  else
  {
    v70 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>);
    v44 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 8))(v25, v28);
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    v51 = 0;
    swift_storeEnumTagMultiPayload();
    v36 = v29;
    v48 = v44;
  }

  v49 = v55;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v48, v55, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v49, v36, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle@<X0>(Swift::Int *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t *, uint64_t *, uint64_t *, uint64_t *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a3(v5, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t *, uint64_t *, uint64_t *, uint64_t *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a4(v6, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.format(_:)(Swift::Double a1)
{
  v2 = v1;
  v191 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v173 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v173 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v173 - v11;
  v13 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v15, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v15, v12, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    v32 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v37 = v36;
    v38 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 472))(ObjectType, v38);
    v29 = v41;
    if (one-time initialization token for cache != -1)
    {
      v90 = v40;
      swift_once();
      v40 = v90;
    }

    isUniquelyReferenced_nonNull_native = &v173;
    v43 = static ICUNumberFormatter.cache;
    v42 = *algn_1EA7B1D98;
    *&v183 = v32;
    *(&v183 + 1) = v37;
    v182 = v40;
    *&v184 = v40;
    *(&v184 + 1) = v29;
    MEMORY[0x1EEE9AC00](v40);
    *(&v173 - 2) = &v183;
    os_unfair_lock_lock((v42 + 24));
    v44 = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v42 + 16, &v188);
    os_unfair_lock_unlock((v42 + 24));
    v45 = v188;
    if (v188 != 1)
    {
LABEL_130:

      if (v45)
      {
        v165 = v45[2];
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        v166 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v165, a1);
        if (v44)
        {
        }

        else
        {
          v170 = v166;

          v152 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v170);
          v154 = v171;

          if (v154)
          {
            goto LABEL_134;
          }
        }
      }

      v152 = Double.description.getter();
      v154 = v167;
LABEL_134:
      v155 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
      v156 = &_s10Foundation24FloatingPointFormatStyleVySdGMR;
      v157 = v12;
      goto LABEL_135;
    }

    v181 = 0;
    type metadata accessor for ICUNumberFormatter();
    v45 = swift_allocObject();
    v45[3] = v32;
    v45[4] = v37;
    swift_bridgeObjectRetain_n();
    v46 = MEMORY[0x1865CB200](v32, v37);
    if (v46)
    {
      v47 = v46;
      v48 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v46, 0);

      isUniquelyReferenced_nonNull_native = specialized Sequence._copySequenceContents(initializing:)(&v188, (v48 + 4), v47, v32, v37);

      if (isUniquelyReferenced_nonNull_native != v47)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        v175 = v29;
        v176 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
        v177 = static _DictionaryStorage.copy(original:)();
        if (*(v43 + 16))
        {
          v92 = v177 + 64;
          v93 = v43 + 64;
          v94 = ((1 << v177[32]) + 63) >> 6;
          if (v177 != v43 || v92 >= v93 + 8 * v94)
          {
            memmove(v92, (v43 + 64), 8 * v94);
          }

          v95 = 0;
          *(v177 + 2) = *(v43 + 16);
          v96 = 1 << *(v43 + 32);
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v178 = v97 & *(v43 + 64);
          v174 = (v96 + 63) >> 6;
          while (v178)
          {
            v98 = __clz(__rbit64(v178));
            v178 &= v178 - 1;
LABEL_76:
            v101 = v98 | (v95 << 6);
            v102 = (*(v43 + 48) + 48 * v101);
            v103 = v102[1];
            v104 = v102[2];
            v105 = v102[3];
            v106 = *(*(v43 + 56) + 8 * v101);
            v107 = v102[4];
            v108 = v102[5];
            v109 = v177;
            v110 = (*(v177 + 6) + 48 * v101);
            *v110 = *v102;
            v110[1] = v103;
            v110[2] = v104;
            v110[3] = v105;
            v110[4] = v107;
            v110[5] = v108;
            *(*(v109 + 7) + 8 * v101) = v106;
          }

          v99 = v95;
          while (1)
          {
            v95 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              break;
            }

            if (v95 >= v174)
            {
              goto LABEL_107;
            }

            v100 = *(v93 + 8 * v95);
            ++v99;
            if (v100)
            {
              v98 = __clz(__rbit64(v100));
              v178 = (v100 - 1) & v100;
              goto LABEL_76;
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_142;
        }

LABEL_107:

        v49 = v176;
        v60 = v177;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_34;
      }
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v188) = 0;
    if (v48[2] >> 31)
    {
      goto LABEL_59;
    }

    String.utf8CString.getter();
    v78 = unumf_openForSkeletonAndLocale();

    if (v78)
    {
      if (v188 < 1)
      {
        v45[2] = v78;
LABEL_46:
        os_unfair_lock_lock((v42 + 24));
        v79 = *(*(v42 + 16) + 16);
        v180 = *(v42 + 16);
        if (v43 < v79)
        {
          *(v42 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v188 = *(v42 + 16);
        v80 = v188;
        *(v42 + 16) = 0x8000000000000000;
        v82 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v37, v182, v29);
        v83 = *(v80 + 16);
        v84 = (v81 & 1) == 0;
        v49 = (v83 + v84);
        if (__OFADD__(v83, v84))
        {
          goto LABEL_60;
        }

        v85 = v81;
        if (*(v80 + 24) >= v49)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v175 = v82;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
            v130 = static _DictionaryStorage.copy(original:)();
            v86 = v130;
            if (*(v80 + 16))
            {
              v131 = (v130 + 64);
              v132 = 1 << *(v86 + 32);
              v176 = (v80 + 64);
              v133 = (v132 + 63) >> 6;
              if (v86 != v80 || v131 >= &v176[8 * v133])
              {
                memmove(v131, v176, 8 * v133);
              }

              v134 = 0;
              *(v86 + 16) = *(v80 + 16);
              v135 = 1 << *(v80 + 32);
              v136 = -1;
              if (v135 < 64)
              {
                v136 = ~(-1 << v135);
              }

              v179 = v136 & *(v80 + 64);
              v174 = (v135 + 63) >> 6;
              while (v179)
              {
                v137 = __clz(__rbit64(v179));
                v179 &= v179 - 1;
LABEL_106:
                v140 = v137 | (v134 << 6);
                v141 = *(v80 + 56);
                v142 = (*(v80 + 48) + 32 * v140);
                v143 = *v142;
                v177 = v142[1];
                v144 = v177;
                v145 = v142[2];
                v178 = v142[3];
                v146 = v178;
                v147 = *(v141 + 8 * v140);
                v148 = (*(v86 + 48) + 32 * v140);
                *v148 = v143;
                v148[1] = v144;
                v148[2] = v145;
                v148[3] = v146;
                *(*(v86 + 56) + 8 * v140) = v147;
              }

              v138 = v134;
              while (1)
              {
                v134 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_140;
                }

                if (v134 >= v174)
                {
                  break;
                }

                v139 = *&v176[8 * v134];
                ++v138;
                if (v139)
                {
                  v137 = __clz(__rbit64(v139));
                  v179 = (v139 - 1) & v139;
                  goto LABEL_106;
                }
              }
            }

            v44 = v181;
            v82 = v175;
            if (v85)
            {
              goto LABEL_56;
            }

            goto LABEL_128;
          }

          v86 = v80;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
          v86 = v188;
          v87 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v37, v182, v29);
          if ((v85 & 1) != (v88 & 1))
          {
LABEL_142:
            v168 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_143;
          }

          v82 = v87;
        }

        v44 = v181;
        if (v85)
        {
LABEL_56:
          v89 = v82;

          *(*(v86 + 56) + 8 * v89) = v45;

LABEL_129:
          *(v42 + 16) = v86;

          os_unfair_lock_unlock((v42 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_130;
        }

LABEL_128:
        specialized _NativeDictionary._insert(at:key:value:)(v82, v32, v37, v182, v29, v45, v86);
        goto LABEL_129;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v45 = 0;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v15, v6, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
    v30 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v12 = v50;
    v51 = *(v6 + 1);
    v52 = swift_getObjectType();
    v53 = (*(v51 + 472))(v52, v51);
    v29 = v54;
    if (one-time initialization token for cache != -1)
    {
      v91 = v53;
      swift_once();
      v53 = v91;
    }

    v55 = static ICUPercentNumberFormatter.cache;
    v43 = *algn_1EA7B0228;
    *&v188 = v30;
    *(&v188 + 1) = v12;
    v182 = v53;
    *&v189 = v53;
    *(&v189 + 1) = v29;
    MEMORY[0x1EEE9AC00](v53);
    *(&v173 - 2) = &v188;
    os_unfair_lock_lock((v43 + 24));
    v56 = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v43 + 16, &v183);
    os_unfair_lock_unlock((v43 + 24));
    v57 = v183;
    if (v183 != 1)
    {
LABEL_120:

      if (v57)
      {
        v160 = *(v57 + 16);
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        v161 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v160, a1);
        if (v56)
        {
        }

        else
        {
          v163 = v161;

          v152 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v163);
          v154 = v164;

          if (v154)
          {
            goto LABEL_124;
          }
        }
      }

      v152 = Double.description.getter();
      v154 = v162;
LABEL_124:
      v155 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
      v156 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR;
      v157 = v6;
      goto LABEL_135;
    }

    v181 = 0;
    *&v183 = 0x746E6563726570;
    *(&v183 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v186 = 32;
      v187 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v30, v12);
      MEMORY[0x1865CB0E0](v186, v187);
    }

    v59 = *(&v183 + 1);
    v58 = v183;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v57 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v58, v59, v182, v29);
    os_unfair_lock_lock((v43 + 24));
    v60 = *(v43 + 16);
    if (v55 < v60[2])
    {
      v32 = *(v43 + 16);
      *(v43 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

    v32 = v60;
LABEL_27:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = *(v43 + 16);
    v67 = v183;
    *(v43 + 16) = 0x8000000000000000;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v12, v182, v29);
    v70 = *(v67 + 16);
    v71 = (v68 & 1) == 0;
    v49 = (v70 + v71);
    if (!__OFADD__(v70, v71))
    {
      if (*(v67 + 24) < v49)
      {
        v72 = v68;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
        v73 = v183;
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v12, v182, v29);
        if ((v72 & 1) == (v75 & 1))
        {
          v69 = v74;
          LOBYTE(v68) = v72;
          goto LABEL_37;
        }

        goto LABEL_141;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v73 = v67;
LABEL_37:
        v56 = v181;
        if (v68)
        {
LABEL_38:
          v77 = v69;

          *(*(v73 + 56) + 8 * v77) = v57;

LABEL_119:
          *(v43 + 16) = v73;

          os_unfair_lock_unlock((v43 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_120;
        }

LABEL_118:
        specialized _NativeDictionary._insert(at:key:value:)(v69, v30, v12, v182, v29, v57, v73);
        goto LABEL_119;
      }

      v175 = v69;
      LODWORD(v176) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v111 = static _DictionaryStorage.copy(original:)();
      v73 = v111;
      if (!*(v67 + 16))
      {
LABEL_117:

        v56 = v181;
        v69 = v175;
        if (v176)
        {
          goto LABEL_38;
        }

        goto LABEL_118;
      }

      v112 = (v111 + 64);
      v113 = 1 << *(v73 + 32);
      v177 = (v67 + 64);
      v114 = (v113 + 63) >> 6;
      if (v73 != v67 || v112 >= &v177[8 * v114])
      {
        memmove(v112, v177, 8 * v114);
      }

      v115 = 0;
      *(v73 + 16) = *(v67 + 16);
      v116 = 1 << *(v67 + 32);
      v117 = -1;
      if (v116 < 64)
      {
        v117 = ~(-1 << v116);
      }

      v180 = v117 & *(v67 + 64);
      v174 = (v116 + 63) >> 6;
      while (v180)
      {
        v118 = __clz(__rbit64(v180));
        v180 &= v180 - 1;
LABEL_91:
        v121 = v118 | (v115 << 6);
        v122 = *(v67 + 56);
        v123 = (*(v67 + 48) + 32 * v121);
        v124 = *v123;
        v178 = v123[1];
        v125 = v178;
        v126 = v123[2];
        v179 = v123[3];
        v127 = v179;
        v128 = *(v122 + 8 * v121);
        v129 = (*(v73 + 48) + 32 * v121);
        *v129 = v124;
        v129[1] = v125;
        v129[2] = v126;
        v129[3] = v127;
        *(*(v73 + 56) + 8 * v121) = v128;
      }

      v119 = v115;
      while (1)
      {
        v115 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_139;
        }

        if (v115 >= v174)
        {
          goto LABEL_117;
        }

        v120 = *&v177[8 * v115];
        ++v119;
        if (v120)
        {
          v118 = __clz(__rbit64(v120));
          v180 = (v120 - 1) & v120;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v15, v9, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
  isUniquelyReferenced_nonNull_native = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v19 = v18;
  v20 = v9;
  v22 = *(v9 + 2);
  v21 = *(v9 + 3);
  v23 = *(v20 + 8);
  v180 = v20;
  v24 = swift_getObjectType();
  v25 = *(v23 + 472);

  v26 = v25(v24, v23);
  v27 = v26;
  *&v188 = isUniquelyReferenced_nonNull_native;
  *(&v188 + 1) = v19;
  v181 = v19;
  *&v189 = v22;
  *(&v189 + 1) = v21;
  v182 = v21;
  v29 = v28;
  *&v190 = v26;
  *(&v190 + 1) = v28;
  if (one-time initialization token for cache != -1)
  {
    v26 = swift_once();
  }

  v30 = static ICUCurrencyNumberFormatter.cache;
  v12 = qword_1EA7B5100;
  v183 = v188;
  v184 = v189;
  v185 = v190;
  MEMORY[0x1EEE9AC00](v26);
  *(&v173 - 2) = &v183;
  os_unfair_lock_lock(v12 + 6);
  v31 = 0;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply((v12 + 16), &v186);
  os_unfair_lock_unlock(v12 + 6);
  v32 = v186;
  v6 = v181;
  if (v186 == 1)
  {
    v179 = 0;
    v33 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(isUniquelyReferenced_nonNull_native, v181, v22, v182);
    v35 = v34;
    type metadata accessor for ICUCurrencyNumberFormatter();
    swift_allocObject();

    v32 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v33, v35, v27, v29);
    os_unfair_lock_lock(v12 + 6);
    if (v30 >= *(*(v12 + 2) + 16))
    {
    }

    else
    {
      *(v12 + 2) = MEMORY[0x1E69E7CC8];
    }

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v186 = *(v12 + 2);
    v43 = v186;
    *(v12 + 2) = 0x8000000000000000;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v188);
    v62 = *(v43 + 16);
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    LOBYTE(isUniquelyReferenced_nonNull_native) = v61;
    if (*(v43 + 24) >= v65)
    {
      if ((v57 & 1) == 0)
      {
        goto LABEL_62;
      }

      v60 = v43;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v57);
      v60 = v186;
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(&v188);
      if ((isUniquelyReferenced_nonNull_native & 1) != (v66 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_26;
      }
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_108:
      specialized _NativeDictionary._insert(at:key:value:)(v49, &v188, v32, v60);
      goto LABEL_109;
    }

LABEL_34:
    v76 = v49;

    *(v60[7] + 8 * v76) = v32;

LABEL_109:
    *(v12 + 2) = v60;

    os_unfair_lock_unlock(v12 + 6);

    outlined consume of ICUNumberFormatter??(1);
    v31 = v179;
  }

  v149 = v180;
  if (v32)
  {
    v150 = *(v32 + 16);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v151 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v150, a1);
    if (v31)
    {
    }

    else
    {
      v158 = v151;

      v152 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v158);
      v154 = v159;

      if (v154)
      {
        goto LABEL_114;
      }
    }
  }

  v152 = Double.description.getter();
  v154 = v153;
LABEL_114:
  v155 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
  v156 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR;
  v157 = v149;
LABEL_135:
  outlined destroy of TermOfAddress?(v157, v155, v156);
  v168 = v152;
  v169 = v154;
LABEL_143:
  result._object = v169;
  result._countAndFlagsBits = v168;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v26 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v26 - v12);
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v16, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v10, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v10 = v17;
      v10[1] = v18;
      v21 = v10;
      v22 = a2;
      v23 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
    }

    else
    {
      v20 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v7, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      v21 = v7;
      v22 = a2;
      v23 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
    }

    v24 = v20;
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v13, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    v21 = v13;
    v22 = a2;
    v23 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
    v24 = &_s10Foundation24FloatingPointFormatStyleVySdGMR;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v21, v22, v23, v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.hash(into:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void, double), uint64_t (*a9)(void))
{
  v224 = a1;
  v222 = a9;
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v225 = *(v16 - 8);
  v226 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v219 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v215 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v216 = &v207 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v207 - v23);
  v220 = a2;
  v218 = a3;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v214);
  *(&v213 + 1) = &v207 - v25;
  v221 = a4;
  v217 = a5;
  *&v213 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x1EEE9AC00](v213);
  v27 = &v207 - v26;
  v28 = a7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v207 - v31;
  v33 = a8(0, v30);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v207 - v34;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v223, &v207 - v34, v222);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v29;
    v222 = v24;
    v223 = a6;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v35, v32, a6, a7);
    v44 = v224;
    MEMORY[0x1865CD060](0);
    v45 = *(v32 + 1);
    ObjectType = swift_getObjectType();
    if ((*(v45 + 48))(ObjectType, v45))
    {
      Hasher._combine(_:)(1u);
      v47 = v226;
      goto LABEL_152;
    }

    Hasher._combine(_:)(0);
    (*(v45 + 64))(ObjectType, v45);
    String.hash(into:)();

    (*(v45 + 464))(&v227, ObjectType, v45);
    v240 = v233;
    v241[0] = v234[0];
    *(v241 + 12) = *(v234 + 12);
    *v237 = v229;
    *&v237[16] = v230;
    v238 = v231;
    v239 = v232;
    v235 = v227;
    v236 = v228;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v235) == 1)
    {
      Hasher._combine(_:)(0);
      v47 = v226;
      goto LABEL_152;
    }

    v221 = a7;
    v64 = v227;
    v65 = *(&v227 + 1);
    v66 = *(&v228 + 1);
    v208 = v228;
    v67 = *(&v229 + 1);
    v209 = v229;
    *v212 = v230;
    *&v212[16] = v231;
    *&v212[32] = v232;
    v213 = v233;
    v210 = *(&v234[0] + 1);
    v214 = *&v234[0];
    v215 = *&v234[1];
    v216 = BYTE8(v234[1]);
    v217 = BYTE9(v234[1]);
    LODWORD(v218) = BYTE10(v234[1]);
    v68 = BYTE11(v234[1]);
    Hasher._combine(_:)(1u);
    if (v64 == 2)
    {
      v69 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v69 = v64 & 1;
    }

    LODWORD(v220) = v68;
    Hasher._combine(_:)(v69);
    if (v65)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v65 + 16));
      v78 = *(v65 + 16);
      if (v78)
      {
        v79 = v65 + 40;
        do
        {

          String.hash(into:)();

          v79 += 16;
          --v78;
        }

        while (v78);
      }

      v211 = v43;
      if (v66)
      {
        goto LABEL_36;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v211 = v43;
      if (v66)
      {
LABEL_36:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_114;
      }
    }

    Hasher._combine(_:)(0);
LABEL_114:
    v123 = *&v212[24];
    v124 = *&v212[8];
    if (v67)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v47 = v226;
    v28 = v221;
    v125 = *v212;
    if (*v212)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v44, v125, v126, v127, v128, v129, v130, v131);
      if (v124)
      {
        goto LABEL_119;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v124)
      {
LABEL_119:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v44, v124, v132, v133, v134, v135, v136, v137);
        if (*&v212[16])
        {
          goto LABEL_120;
        }

        goto LABEL_126;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v212[16])
    {
LABEL_120:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v123)
      {
        goto LABEL_121;
      }

      goto LABEL_127;
    }

LABEL_126:
    Hasher._combine(_:)(0);
    if (v123)
    {
LABEL_121:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*&v212[32])
      {
        goto LABEL_122;
      }

      goto LABEL_128;
    }

LABEL_127:
    Hasher._combine(_:)(0);
    if (*&v212[32])
    {
LABEL_122:
      v138 = v214;
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*&v212[40])
      {
LABEL_123:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_130;
      }

LABEL_129:
      Hasher._combine(_:)(0);
LABEL_130:
      v139 = v138;
      if (v213)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v140 = *(&v213 + 1);
        if (*(&v213 + 1))
        {
          goto LABEL_132;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v140 = *(&v213 + 1);
        if (*(&v213 + 1))
        {
LABEL_132:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v44, v140);
          v141 = v216;
          if (v139)
          {
            goto LABEL_133;
          }

          goto LABEL_137;
        }
      }

      Hasher._combine(_:)(0);
      v141 = v216;
      if (v139)
      {
LABEL_133:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v44, v139);
        if (v215)
        {
LABEL_134:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_139:
          v142 = v218;
          if (v141 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v141 & 1);
          }

          v143 = v217;
          if (v217 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v143 & 1);
          }

          v144 = v220;
          if (v142 == 2)
          {
            v145 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v145 = v142 & 1;
          }

          v43 = v211;
          Hasher._combine(_:)(v145);
          if (v144 == 2)
          {
            v146 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v146 = v144 & 1;
          }

          Hasher._combine(_:)(v146);
          outlined destroy of TermOfAddress?(&v227, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_152:
          v147 = &v32[*(v43 + 36)];
          if (v147[8] == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v148 = *v147;
            Hasher._combine(_:)(1u);
            if ((v148 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v149 = v148;
            }

            else
            {
              v149 = 0;
            }

            MEMORY[0x1865CD090](v149);
          }

          v150 = v225;
          v151 = *(v147 + 2);
          v235 = *(v147 + 1);
          v236 = v151;
          *v237 = *(v147 + 3);
          *&v237[9] = *(v147 + 57);
          specialized Optional<A>.hash(into:)();
          v152 = v147[73];
          if (v152 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v152 & 1);
          }

          v153 = *(v147 + 37);
          v154 = v153 | (v147[76] << 16);
          if (v153 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v154 & 1);
            MEMORY[0x1865CD060]((v154 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v154) & 1);
          }

          v155 = v147[77];
          if (v155 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v155 & 1);
          }

          v156 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          v157 = v222;
          outlined init with copy of FloatingPointRoundingRule?(&v147[v156[9]], v222, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
          if ((*(v150 + 48))(v157, 1, v47) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v158 = v28;
            v159 = v219;
            (*(v150 + 32))(v219, v157, v47);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            v160 = v159;
            v28 = v158;
            (*(v150 + 8))(v160, v47);
          }

          v161 = &v147[v156[10]];
          v162 = v161[8];
          if (v162 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v163 = *v161;
            Hasher._combine(_:)(1u);
            if (v162)
            {
              MEMORY[0x1865CD060](1);
              if ((v163 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v164 = v163;
              }

              else
              {
                v164 = 0;
              }

              MEMORY[0x1865CD090](v164);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v163);
            }
          }

          v165 = v147[v156[11]];
          if (v165 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v165);
          }

          v122 = v223;
          v121 = v32;
          goto LABEL_182;
        }

LABEL_138:
        Hasher._combine(_:)(0);
        goto LABEL_139;
      }

LABEL_137:
      Hasher._combine(_:)(0);
      if (v215)
      {
        goto LABEL_134;
      }

      goto LABEL_138;
    }

LABEL_128:
    v138 = v214;
    Hasher._combine(_:)(0);
    if (*&v212[40])
    {
      goto LABEL_123;
    }

    goto LABEL_129;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = v217;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v35, v27, v221, v217);
    v37 = v224;
    MEMORY[0x1865CD060](1);
    v38 = *(v27 + 1);
    v39 = swift_getObjectType();
    v40 = (*(v38 + 48))(v39, v38);
    v42 = v225;
    v41 = v226;
    if (v40)
    {
      Hasher._combine(_:)(1u);
      goto LABEL_82;
    }

    Hasher._combine(_:)(0);
    (*(v38 + 64))(v39, v38);
    String.hash(into:)();

    (*(v38 + 464))(&v227, v39, v38);
    v240 = v233;
    v241[0] = v234[0];
    *(v241 + 12) = *(v234 + 12);
    *v237 = v229;
    *&v237[16] = v230;
    v238 = v231;
    v239 = v232;
    v235 = v227;
    v236 = v228;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v235) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_82;
    }

    v58 = v227;
    v59 = *(&v227 + 1);
    v60 = *(&v228 + 1);
    v209 = v228;
    v61 = *(&v229 + 1);
    v210 = v229;
    *v212 = *(&v230 + 1);
    v62 = v230;
    *&v212[8] = v231;
    *&v212[24] = v232;
    *(&v213 + 1) = *(&v233 + 1);
    *&v212[40] = v233;
    v211 = *(&v234[0] + 1);
    v214 = *&v234[0];
    v215 = *&v234[1];
    v218 = BYTE8(v234[1]);
    v220 = BYTE9(v234[1]);
    LODWORD(v222) = BYTE10(v234[1]);
    LODWORD(v223) = BYTE11(v234[1]);
    Hasher._combine(_:)(1u);
    if (v58 == 2)
    {
      v63 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v63 = v58 & 1;
    }

    Hasher._combine(_:)(v63);
    if (v59)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v59 + 16));
      v76 = *(v59 + 16);
      if (v76)
      {
        v77 = v59 + 40;
        do
        {

          String.hash(into:)();

          v77 += 16;
          --v76;
        }

        while (v76);
      }

      if (v60)
      {
LABEL_28:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v42 = v225;
        v41 = v226;
        if (v61)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }

LABEL_46:
        Hasher._combine(_:)(0);
LABEL_47:
        v82 = v217;
        if (v62)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v37, v62, v83, v84, v85, v86, v87, v88);
          v89 = *v212;
          if (*v212)
          {
            goto LABEL_49;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v89 = *v212;
          if (*v212)
          {
LABEL_49:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(v37, v89, v90, v91, v92, v93, v94, v95);
            if (*&v212[8])
            {
LABEL_50:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              goto LABEL_54;
            }

LABEL_53:
            Hasher._combine(_:)(0);
LABEL_54:
            v28 = v82;
            if (*&v212[16])
            {
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              if (*&v212[24])
              {
                goto LABEL_56;
              }
            }

            else
            {
              Hasher._combine(_:)(0);
              if (*&v212[24])
              {
LABEL_56:
                Hasher._combine(_:)(1u);
                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                _CFObject.hash(into:)();
                if (*&v212[32])
                {
                  goto LABEL_57;
                }

                goto LABEL_64;
              }
            }

            Hasher._combine(_:)(0);
            if (*&v212[32])
            {
LABEL_57:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              if (*&v212[40])
              {
                goto LABEL_58;
              }

              goto LABEL_65;
            }

LABEL_64:
            Hasher._combine(_:)(0);
            if (*&v212[40])
            {
LABEL_58:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              v96 = *(&v213 + 1);
              if (*(&v213 + 1))
              {
                goto LABEL_59;
              }

              goto LABEL_66;
            }

LABEL_65:
            Hasher._combine(_:)(0);
            v96 = *(&v213 + 1);
            if (*(&v213 + 1))
            {
LABEL_59:
              Hasher._combine(_:)(1u);
              specialized Dictionary<>.hash(into:)(v37, v96);
              v97 = v214;
              if (v214)
              {
                goto LABEL_60;
              }

              goto LABEL_67;
            }

LABEL_66:
            Hasher._combine(_:)(0);
            v97 = v214;
            if (v214)
            {
LABEL_60:
              Hasher._combine(_:)(1u);
              specialized Dictionary<>.hash(into:)(v37, v97);
              if (v215)
              {
LABEL_61:
                Hasher._combine(_:)(1u);
                String.hash(into:)();
LABEL_69:
                v98 = v218;
                if (v218 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v98 & 1);
                }

                v99 = v220;
                if (v220 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v99 & 1);
                }

                v100 = v222;
                if (v222 == 2)
                {
                  v101 = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  v101 = v100 & 1;
                }

                v102 = v223;
                Hasher._combine(_:)(v101);
                if (v102 == 2)
                {
                  v103 = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  v103 = v102 & 1;
                }

                Hasher._combine(_:)(v103);
                outlined destroy of TermOfAddress?(&v227, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_82:
                v104 = v213;
                String.hash(into:)();
                v105 = &v27[*(v104 + 40)];
                if (v105[8] == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v106 = *v105;
                  Hasher._combine(_:)(1u);
                  if ((v106 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v107 = v106;
                  }

                  else
                  {
                    v107 = 0;
                  }

                  MEMORY[0x1865CD090](v107);
                }

                v108 = *(v105 + 2);
                v235 = *(v105 + 1);
                v236 = v108;
                *v237 = *(v105 + 3);
                *&v237[9] = *(v105 + 57);
                specialized Optional<A>.hash(into:)();
                v109 = v105[73];
                if (v109 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v109 & 1);
                }

                v110 = *(v105 + 74);
                if (*(v105 + 74) == 2)
                {
                  LOBYTE(v111) = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v110 & 1);
                  MEMORY[0x1865CD060]((v110 >> 8) & 1);
                  MEMORY[0x1865CD060](WORD1(v110) & 1);
                  v111 = BYTE3(v110) & 1;
                }

                Hasher._combine(_:)(v111);
                v112 = v105[78];
                if (v112 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v112 & 1);
                }

                v113 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                v114 = v216;
                outlined init with copy of FloatingPointRoundingRule?(&v105[v113[9]], v216, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
                if ((*(v42 + 48))(v114, 1, v41) == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v115 = v219;
                  (*(v42 + 32))(v219, v114, v41);
                  Hasher._combine(_:)(1u);
                  dispatch thunk of Hashable.hash(into:)();
                  (*(v42 + 8))(v115, v41);
                }

                v116 = &v105[v113[10]];
                v117 = v116[8];
                if (v117 == 255)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v118 = *v116;
                  Hasher._combine(_:)(1u);
                  if (v117)
                  {
                    MEMORY[0x1865CD060](1);
                    if ((v118 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v119 = v118;
                    }

                    else
                    {
                      v119 = 0;
                    }

                    MEMORY[0x1865CD090](v119);
                  }

                  else
                  {
                    MEMORY[0x1865CD060](0);
                    MEMORY[0x1865CD060](v118);
                  }
                }

                MEMORY[0x1865CD060](v105[v113[11]]);
                v120 = v105[v113[12]];
                if (v120 == 3)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v120);
                }

                v121 = v27;
                v122 = v221;
LABEL_182:
                v166 = v28;
                return outlined destroy of TermOfAddress?(v121, v122, v166);
              }

LABEL_68:
              Hasher._combine(_:)(0);
              goto LABEL_69;
            }

LABEL_67:
            Hasher._combine(_:)(0);
            if (v215)
            {
              goto LABEL_61;
            }

            goto LABEL_68;
          }
        }

        Hasher._combine(_:)(0);
        if (*&v212[8])
        {
          goto LABEL_50;
        }

        goto LABEL_53;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v60)
      {
        goto LABEL_28;
      }
    }

    Hasher._combine(_:)(0);
    v42 = v225;
    v41 = v226;
    if (v61)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  v48 = v35;
  v49 = *(&v213 + 1);
  v50 = v218;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v48, *(&v213 + 1), v220, v218);
  v51 = v224;
  MEMORY[0x1865CD060](2);
  v52 = *(v49 + 8);
  v53 = swift_getObjectType();
  v54 = (*(v52 + 48))(v53, v52);
  v56 = v225;
  v55 = v226;
  if (v54)
  {
    Hasher._combine(_:)(1u);
LABEL_15:
    v57 = v214;
    goto LABEL_223;
  }

  Hasher._combine(_:)(0);
  (*(v52 + 64))(v53, v52);
  String.hash(into:)();

  (*(v52 + 464))(&v227, v53, v52);
  v240 = v233;
  v241[0] = v234[0];
  *(v241 + 12) = *(v234 + 12);
  *v237 = v229;
  *&v237[16] = v230;
  v238 = v231;
  v239 = v232;
  v235 = v227;
  v236 = v228;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v235) == 1)
  {
    Hasher._combine(_:)(0);
    goto LABEL_15;
  }

  v70 = v227;
  v71 = *(&v227 + 1);
  v72 = *(&v228 + 1);
  v208 = v228;
  v73 = *(&v229 + 1);
  v209 = v229;
  v74 = *(&v230 + 1);
  v211 = v230;
  *v212 = v231;
  *&v212[16] = v232;
  *&v212[32] = v233;
  v210 = *(&v234[0] + 1);
  *&v213 = *&v234[0];
  v216 = *&v234[1];
  v217 = BYTE8(v234[1]);
  v221 = BYTE9(v234[1]);
  LODWORD(v222) = BYTE10(v234[1]);
  LODWORD(v223) = BYTE11(v234[1]);
  Hasher._combine(_:)(1u);
  if (v70 == 2)
  {
    v75 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v75 = v70 & 1;
  }

  Hasher._combine(_:)(v75);
  if (v71)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v71 + 16));
    v80 = *(v71 + 16);
    if (v80)
    {
      v81 = v71 + 40;
      do
      {

        String.hash(into:)();

        v81 += 16;
        --v80;
      }

      while (v80);
    }

    if (v72)
    {
      goto LABEL_43;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v72)
    {
LABEL_43:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_185;
    }
  }

  Hasher._combine(_:)(0);
LABEL_185:
  v56 = v225;
  v55 = v226;
  v167 = v74;
  if (v73)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v168 = v218;
  v169 = v211;
  if (v211)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v51, v169, v170, v171, v172, v173, v174, v175);
    v57 = v214;
    if (v167)
    {
      goto LABEL_190;
    }

LABEL_193:
    Hasher._combine(_:)(0);
    if (*v212)
    {
      goto LABEL_191;
    }

    goto LABEL_194;
  }

  Hasher._combine(_:)(0);
  v57 = v214;
  if (!v167)
  {
    goto LABEL_193;
  }

LABEL_190:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v51, v167, v176, v177, v178, v179, v180, v181);
  if (*v212)
  {
LABEL_191:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_195;
  }

LABEL_194:
  Hasher._combine(_:)(0);
LABEL_195:
  v50 = v168;
  if (*&v212[8])
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v212[16])
    {
      goto LABEL_197;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*&v212[16])
    {
LABEL_197:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*&v212[24])
      {
        goto LABEL_198;
      }

      goto LABEL_205;
    }
  }

  Hasher._combine(_:)(0);
  if (*&v212[24])
  {
LABEL_198:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v212[32])
    {
      goto LABEL_199;
    }

    goto LABEL_206;
  }

LABEL_205:
  Hasher._combine(_:)(0);
  if (*&v212[32])
  {
LABEL_199:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v182 = *&v212[40];
    if (*&v212[40])
    {
      goto LABEL_200;
    }

    goto LABEL_207;
  }

LABEL_206:
  Hasher._combine(_:)(0);
  v182 = *&v212[40];
  if (*&v212[40])
  {
LABEL_200:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v51, v182);
    v183 = v213;
    if (v213)
    {
      goto LABEL_201;
    }

LABEL_208:
    Hasher._combine(_:)(0);
    if (v216)
    {
      goto LABEL_202;
    }

LABEL_209:
    Hasher._combine(_:)(0);
    goto LABEL_210;
  }

LABEL_207:
  Hasher._combine(_:)(0);
  v183 = v213;
  if (!v213)
  {
    goto LABEL_208;
  }

LABEL_201:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v51, v183);
  if (!v216)
  {
    goto LABEL_209;
  }

LABEL_202:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_210:
  v184 = v217;
  if (v217 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v184 & 1);
  }

  v185 = v221;
  if (v221 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v185 & 1);
  }

  v186 = v222;
  if (v222 == 2)
  {
    v187 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v187 = v186 & 1;
  }

  v188 = v223;
  Hasher._combine(_:)(v187);
  if (v188 == 2)
  {
    v189 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v189 = v188 & 1;
  }

  Hasher._combine(_:)(v189);
  outlined destroy of TermOfAddress?(&v227, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_223:
  v190 = v49 + *(v57 + 36);
  if (*(v190 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v191 = *v190;
    Hasher._combine(_:)(1u);
    if ((v191 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v192 = v191;
    }

    else
    {
      v192 = 0;
    }

    MEMORY[0x1865CD090](v192);
  }

  v193 = *(v190 + 32);
  v235 = *(v190 + 16);
  v236 = v193;
  *v237 = *(v190 + 48);
  *&v237[9] = *(v190 + 57);
  specialized Optional<A>.hash(into:)();
  v194 = *(v190 + 73);
  if (v194 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v194 & 1);
  }

  v195 = *(v190 + 74);
  v196 = v195 | (*(v190 + 76) << 16);
  if (v195 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v196 & 1);
    MEMORY[0x1865CD060]((v196 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v196) & 1);
  }

  v197 = *(v190 + 77);
  if (v197 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v197 & 1);
  }

  v198 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v199 = v215;
  outlined init with copy of FloatingPointRoundingRule?(v190 + v198[9], v215, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v56 + 48))(v199, 1, v55) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v200 = v219;
    (*(v56 + 32))(v219, v199, v55);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v56 + 8))(v200, v55);
  }

  v201 = (v190 + v198[10]);
  v202 = *(v201 + 8);
  if (v202 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v203 = *v201;
    Hasher._combine(_:)(1u);
    if (v202)
    {
      MEMORY[0x1865CD060](1);
      if ((v203 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v204 = v203;
      }

      else
      {
        v204 = 0;
      }

      MEMORY[0x1865CD090](v204);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v203);
    }
  }

  v205 = *(v190 + v198[11]);
  if (v205 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v205);
  }

  v121 = v49;
  v122 = v220;
  v166 = v50;
  return outlined destroy of TermOfAddress?(v121, v122, v166);
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v11, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, v12, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v36 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v31 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMR);
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v31 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v39, v14, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v38 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v14, v35, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v43 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v32;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
      v24 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Currency;
    }

    else
    {
      v21 = v37;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v14, v37, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v44 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v33;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
      v30 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v30);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Percent;
    }

    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v25);
    return (*v20)(v17, v23);
  }

  else
  {
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v14, v11, type metadata accessor for NSDecimal.FormatStyle);
    v42 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle, &protocol conformance descriptor for NSDecimal.FormatStyle);
    v27 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, type metadata accessor for NSDecimal.FormatStyle);
    return (*v20)(v17, v26);
  }
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.hash(into:)(Swift::Int a1)
{
  v194 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v193);
  v5 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v198 = *(v6 - 8);
  v199 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v196 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v184 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v184 - v14;
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v1, v21, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v5, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v36 = v198;
        v35 = v199;
        v37 = v193;
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v200, ObjectType, v23);
      v213 = v206;
      v214[0] = v207[0];
      *(v214 + 12) = *(v207 + 12);
      *v210 = v202;
      *&v210[16] = v203;
      v211 = v204;
      v212 = v205;
      v208 = v200;
      v209 = v201;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v41 = v200;
      v42 = *(&v200 + 1);
      v43 = *(&v201 + 1);
      v184 = v201;
      v44 = *(&v202 + 1);
      v185 = v202;
      v187 = v203;
      v188 = v204;
      v189 = v205;
      v45 = *&v207[0];
      *&v190[8] = v206;
      v186 = *(&v207[0] + 1);
      v191 = *&v207[1];
      v192 = BYTE8(v207[1]);
      v194 = BYTE9(v207[1]);
      v46 = BYTE10(v207[1]);
      LODWORD(v197) = BYTE11(v207[1]);
      Hasher._combine(_:)(1u);
      if (v41 == 2)
      {
        v47 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v47 = v41 & 1;
      }

      *&v190[24] = v45;
      Hasher._combine(_:)(v47);
      if (v42)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v42 + 16));
        v59 = *(v42 + 16);
        if (v59)
        {
          v60 = v42 + 40;
          do
          {

            String.hash(into:)();

            v60 += 16;
            --v59;
          }

          while (v59);
        }

        if (v43)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v43)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v36 = v198;
      v35 = v199;
      *v190 = v46;
      if (v44)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v65 = v188;
      v66 = v187;
      if (v187)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v66, v67, v68, v69, v70, v71, v72);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = v193;
      v73 = *(&v187 + 1);
      if (*(&v187 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v73, v74, v75, v76, v77, v78, v79);
        if (v65)
        {
          goto LABEL_54;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_54:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v188 + 1))
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }
      }

      Hasher._combine(_:)(0);
      if (*(&v188 + 1))
      {
LABEL_55:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v189)
        {
          goto LABEL_56;
        }

        goto LABEL_63;
      }

LABEL_62:
      Hasher._combine(_:)(0);
      if (v189)
      {
LABEL_56:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v189 + 1))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }

LABEL_63:
      Hasher._combine(_:)(0);
      if (*(&v189 + 1))
      {
LABEL_57:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v190[8])
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

LABEL_64:
      Hasher._combine(_:)(0);
      if (*&v190[8])
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v80 = *&v190[16];
        if (*&v190[16])
        {
LABEL_59:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v80);
          goto LABEL_67;
        }

LABEL_66:
        Hasher._combine(_:)(0);
LABEL_67:
        v81 = v192;
        v82 = *&v190[24];
        if (*&v190[24])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v82);
          if (v191)
          {
LABEL_69:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_72:
            v83 = *v190;
            if (v81 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v81 & 1);
            }

            v84 = v194;
            if (v194 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v84 & 1);
            }

            v85 = v197;
            if (v83 == 2)
            {
              v86 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v86 = v83 & 1;
            }

            Hasher._combine(_:)(v86);
            if (v85 == 2)
            {
              v87 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v87 = v85 & 1;
            }

            Hasher._combine(_:)(v87);
            outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_85:
            String.hash(into:)();
            v88 = &v5[*(v37 + 24)];
            if (v88[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v89 = *v88;
              Hasher._combine(_:)(1u);
              if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v90 = v89;
              }

              else
              {
                v90 = 0;
              }

              MEMORY[0x1865CD090](v90);
            }

            v91 = *(v88 + 2);
            v208 = *(v88 + 1);
            v209 = v91;
            *v210 = *(v88 + 3);
            *&v210[9] = *(v88 + 57);
            specialized Optional<A>.hash(into:)();
            v92 = v88[73];
            if (v92 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v92 & 1);
            }

            v93 = *(v88 + 74);
            if (*(v88 + 74) == 2)
            {
              LOBYTE(v94) = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v93 & 1);
              MEMORY[0x1865CD060]((v93 >> 8) & 1);
              MEMORY[0x1865CD060](WORD1(v93) & 1);
              v94 = BYTE3(v93) & 1;
            }

            Hasher._combine(_:)(v94);
            v95 = v88[78];
            if (v95 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v95 & 1);
            }

            v96 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
            v97 = v195;
            outlined init with copy of FloatingPointRoundingRule?(&v88[v96[9]], v195, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
            if ((*(v36 + 48))(v97, 1, v35) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v98 = v196;
              (*(v36 + 32))(v196, v97, v35);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v36 + 8))(v98, v35);
            }

            v99 = &v88[v96[10]];
            v100 = v99[8];
            if (v100 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v101 = *v99;
              Hasher._combine(_:)(1u);
              if (v100)
              {
                MEMORY[0x1865CD060](1);
                if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = 0;
                }

                MEMORY[0x1865CD090](v102);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v101);
              }
            }

            MEMORY[0x1865CD060](v88[v96[11]]);
            v103 = v88[v96[12]];
            if (v103 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v103);
            }

            v104 = type metadata accessor for NSDecimal.FormatStyle.Currency;
            v105 = v5;
            return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v105, v104);
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v191)
          {
            goto LABEL_69;
          }
        }

        Hasher._combine(_:)(0);
        goto LABEL_72;
      }

LABEL_65:
      Hasher._combine(_:)(0);
      v80 = *&v190[16];
      if (*&v190[16])
      {
        goto LABEL_59;
      }

      goto LABEL_66;
    }

    v30 = v197;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v197, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v30 + 8);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      Hasher._combine(_:)(1u);
      v34 = v198;
      v33 = v199;
LABEL_16:
      v39 = v10;
      v40 = v194;
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v200, v32, v31);
    v213 = v206;
    v214[0] = v207[0];
    *(v214 + 12) = *(v207 + 12);
    *v210 = v202;
    *&v210[16] = v203;
    v211 = v204;
    v212 = v205;
    v208 = v200;
    v209 = v201;
    v38 = _s10Foundation17LocalePreferencesVSgWOg(&v208);
    v34 = v198;
    v33 = v199;
    if (v38 == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    v53 = v200;
    v54 = *(&v200 + 1);
    v55 = *(&v201 + 1);
    v56 = *(&v202 + 1);
    v185 = v202;
    v187 = v203;
    v188 = v204;
    v189 = v205;
    *v190 = v206;
    *&v190[8] = v201;
    *&v190[16] = *(&v206 + 1);
    v186 = *(&v207[0] + 1);
    *&v190[24] = *&v207[0];
    v191 = *&v207[1];
    v192 = BYTE8(v207[1]);
    v193 = BYTE9(v207[1]);
    v57 = BYTE10(v207[1]);
    LODWORD(v195) = BYTE11(v207[1]);
    Hasher._combine(_:)(1u);
    if (v53 == 2)
    {
      v58 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v58 = v53 & 1;
    }

    Hasher._combine(_:)(v58);
    if (v54)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v54 + 16));
      v63 = *(v54 + 16);
      if (v63)
      {
        v64 = v54 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }

      if (v55)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v55)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_185;
      }
    }

    Hasher._combine(_:)(0);
LABEL_185:
    v39 = v10;
    *&v190[8] = v57;
    v143 = *(&v187 + 1);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v34 = v198;
    v33 = v199;
    v144 = *(&v188 + 1);
    v145 = v189;
    v146 = v187;
    if (v187)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v146, v147, v148, v149, v150, v151, v152);
      v40 = v194;
      if (v143)
      {
        goto LABEL_190;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v40 = v194;
      if (v143)
      {
LABEL_190:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v143, v153, v154, v155, v156, v157, v158);
        if (v188)
        {
          goto LABEL_191;
        }

        goto LABEL_196;
      }
    }

    Hasher._combine(_:)(0);
    if (v188)
    {
LABEL_191:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v144)
      {
        goto LABEL_192;
      }

      goto LABEL_197;
    }

LABEL_196:
    Hasher._combine(_:)(0);
    if (v144)
    {
LABEL_192:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v145)
      {
LABEL_193:
        v159 = *&v190[24];
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_199;
      }

LABEL_198:
      v159 = *&v190[24];
      Hasher._combine(_:)(0);
LABEL_199:
      if (*(&v189 + 1))
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

      v160 = v159;
      if (*v190)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v161 = *&v190[16];
        if (*&v190[16])
        {
          goto LABEL_204;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v161 = *&v190[16];
        if (*&v190[16])
        {
LABEL_204:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v161);
          v162 = v192;
          if (v160)
          {
            goto LABEL_205;
          }

          goto LABEL_209;
        }
      }

      Hasher._combine(_:)(0);
      v162 = v192;
      if (v160)
      {
LABEL_205:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v160);
        if (v191)
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_211:
          v163 = v195;
          if (v162 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v162 & 1);
          }

          v164 = v193;
          if (v193 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v164 & 1);
          }

          v165 = v190[8];
          if (*&v190[8] == 2)
          {
            v166 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v166 = v165 & 1;
          }

          Hasher._combine(_:)(v166);
          if (v163 == 2)
          {
            v167 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v167 = v163 & 1;
          }

          Hasher._combine(_:)(v167);
          outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_224:
          v168 = (v197 + *(v40 + 20));
          if (*(v168 + 8) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v169 = *v168;
            Hasher._combine(_:)(1u);
            if ((v169 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v170 = v169;
            }

            else
            {
              v170 = 0;
            }

            MEMORY[0x1865CD090](v170);
          }

          v171 = *(v168 + 2);
          v208 = *(v168 + 1);
          v209 = v171;
          *v210 = *(v168 + 3);
          *&v210[9] = *(v168 + 57);
          specialized Optional<A>.hash(into:)();
          v172 = *(v168 + 73);
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
          }

          v173 = *(v168 + 37);
          v174 = v173 | (*(v168 + 76) << 16);
          if (v173 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v174 & 1);
            MEMORY[0x1865CD060]((v174 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v174) & 1);
          }

          v175 = *(v168 + 77);
          if (v175 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v175 & 1);
          }

          v176 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          outlined init with copy of FloatingPointRoundingRule?(v168 + v176[9], v39, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
          if ((*(v34 + 48))(v39, 1, v33) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v177 = v196;
            (*(v34 + 32))(v196, v39, v33);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            (*(v34 + 8))(v177, v33);
          }

          v178 = (v168 + v176[10]);
          v179 = *(v178 + 8);
          if (v179 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v180 = *v178;
            Hasher._combine(_:)(1u);
            if (v179)
            {
              MEMORY[0x1865CD060](1);
              if ((v180 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v181 = v180;
              }

              else
              {
                v181 = 0;
              }

              MEMORY[0x1865CD090](v181);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v180);
            }
          }

          v182 = *(v168 + v176[11]);
          if (v182 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v182);
          }

          v104 = type metadata accessor for NSDecimal.FormatStyle.Percent;
          v105 = v197;
          return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v105, v104);
        }

LABEL_210:
        Hasher._combine(_:)(0);
        goto LABEL_211;
      }

LABEL_209:
      Hasher._combine(_:)(0);
      if (v191)
      {
        goto LABEL_206;
      }

      goto LABEL_210;
    }

LABEL_197:
    Hasher._combine(_:)(0);
    if (v145)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v26 = *(v18 + 1);
  v27 = swift_getObjectType();
  if ((*(v26 + 48))(v27, v26))
  {
    Hasher._combine(_:)(1u);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  Hasher._combine(_:)(0);
  (*(v26 + 64))(v27, v26);
  String.hash(into:)();

  (*(v26 + 464))(&v200, v27, v26);
  v213 = v206;
  v214[0] = v207[0];
  *(v214 + 12) = *(v207 + 12);
  *v210 = v202;
  *&v210[16] = v203;
  v211 = v204;
  v212 = v205;
  v208 = v200;
  v209 = v201;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
  {
    Hasher._combine(_:)(0);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  v48 = v200;
  v49 = *(&v200 + 1);
  v50 = *(&v201 + 1);
  v185 = v201;
  v51 = *(&v202 + 1);
  v186 = v202;
  v188 = v203;
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  *&v187 = *(&v207[0] + 1);
  v191 = *&v207[0];
  v192 = *&v207[1];
  v193 = BYTE8(v207[1]);
  v194 = BYTE9(v207[1]);
  LODWORD(v195) = BYTE10(v207[1]);
  LODWORD(v197) = BYTE11(v207[1]);
  Hasher._combine(_:)(1u);
  if (v48 == 2)
  {
    v52 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v52 = v48 & 1;
  }

  *(&v187 + 1) = v51;
  Hasher._combine(_:)(v52);
  if (v49)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v49 + 16));
    v61 = *(v49 + 16);
    if (v61)
    {
      v62 = v49 + 40;
      do
      {

        String.hash(into:)();

        v62 += 16;
        --v61;
      }

      while (v61);
    }

    if (v50)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v50)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v29 = v198;
  v28 = v199;
  v106 = *(&v188 + 1);
  if (*(&v187 + 1))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v107 = v188;
    if (v188)
    {
      goto LABEL_119;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v107 = v188;
    if (v188)
    {
LABEL_119:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v107, v108, v109, v110, v111, v112, v113);
      if (v106)
      {
        goto LABEL_120;
      }

      goto LABEL_131;
    }
  }

  Hasher._combine(_:)(0);
  if (v106)
  {
LABEL_120:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v106, v114, v115, v116, v117, v118, v119);
    if (v189)
    {
      goto LABEL_121;
    }

    goto LABEL_132;
  }

LABEL_131:
  Hasher._combine(_:)(0);
  if (v189)
  {
LABEL_121:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v189 + 1))
    {
      goto LABEL_122;
    }

    goto LABEL_133;
  }

LABEL_132:
  Hasher._combine(_:)(0);
  if (*(&v189 + 1))
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v190)
    {
      goto LABEL_123;
    }

    goto LABEL_134;
  }

LABEL_133:
  Hasher._combine(_:)(0);
  if (*v190)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[8])
    {
      goto LABEL_124;
    }

    goto LABEL_135;
  }

LABEL_134:
  Hasher._combine(_:)(0);
  if (*&v190[8])
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[16])
    {
      goto LABEL_125;
    }

    goto LABEL_136;
  }

LABEL_135:
  Hasher._combine(_:)(0);
  if (*&v190[16])
  {
LABEL_125:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v120 = *&v190[24];
    if (*&v190[24])
    {
      goto LABEL_126;
    }

    goto LABEL_137;
  }

LABEL_136:
  Hasher._combine(_:)(0);
  v120 = *&v190[24];
  if (*&v190[24])
  {
LABEL_126:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v120);
    v121 = v191;
    if (v191)
    {
      goto LABEL_127;
    }

LABEL_138:
    Hasher._combine(_:)(0);
    if (v192)
    {
      goto LABEL_128;
    }

LABEL_139:
    Hasher._combine(_:)(0);
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(0);
  v121 = v191;
  if (!v191)
  {
    goto LABEL_138;
  }

LABEL_127:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v121);
  if (!v192)
  {
    goto LABEL_139;
  }

LABEL_128:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_140:
  v122 = v193;
  if (v193 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v122 & 1);
  }

  v123 = v194;
  if (v194 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v123 & 1);
  }

  v124 = v195;
  if (v195 == 2)
  {
    v125 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v125 = v124 & 1;
  }

  v126 = v197;
  Hasher._combine(_:)(v125);
  if (v126 == 2)
  {
    v127 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v127 = v126 & 1;
  }

  Hasher._combine(_:)(v127);
  outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_153:
  v128 = &v18[*(v16 + 20)];
  if (v128[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v129 = *v128;
    Hasher._combine(_:)(1u);
    if ((v129 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    MEMORY[0x1865CD090](v130);
  }

  v131 = *(v128 + 2);
  v208 = *(v128 + 1);
  v209 = v131;
  *v210 = *(v128 + 3);
  *&v210[9] = *(v128 + 57);
  specialized Optional<A>.hash(into:)();
  v132 = v128[73];
  if (v132 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v132 & 1);
  }

  v133 = *(v128 + 37);
  v134 = v133 | (v128[76] << 16);
  if (v133 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v134 & 1);
    MEMORY[0x1865CD060]((v134 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v134) & 1);
  }

  v135 = v128[77];
  if (v135 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v135 & 1);
  }

  v136 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v128[v136[9]], v15, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v137 = v196;
    (*(v29 + 32))(v196, v15, v28);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v137, v28);
  }

  v138 = &v128[v136[10]];
  v139 = v138[8];
  if (v139 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v140 = *v138;
    Hasher._combine(_:)(1u);
    if (v139)
    {
      MEMORY[0x1865CD060](1);
      if ((v140 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v141 = v140;
      }

      else
      {
        v141 = 0;
      }

      MEMORY[0x1865CD090](v141);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v140);
    }
  }

  v142 = v128[v136[11]];
  if (v142 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142);
  }

  v104 = type metadata accessor for NSDecimal.FormatStyle;
  v105 = v18;
  return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v105, v104);
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMR);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v47 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();
  v25 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v47 = v17;
  v48 = v20;
  v49 = v14;
  v50 = v12;
  v26 = v53;
  v27 = v54;
  v29 = v55;
  v28 = v56;
  v59 = v23;
  v30 = v57;
  v31 = KeyedDecodingContainer.allKeys.getter();
  v32 = (2 * *(v31 + 16)) | 1;
  v61 = v31;
  v62 = v31 + 32;
  v63 = 0;
  v64 = v32;
  v33 = specialized Collection<>.popFirst()();
  if (v33 == 3 || v63 != v64 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v40 = v50;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v65 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v58;
      v35 = v30;
      type metadata accessor for NSDecimal.FormatStyle.Currency(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
      v36 = v47;
      v37 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v27, v37);
      (*(v34 + 8))(v11, v28);
    }

    else
    {
      v65 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v30;
      v43 = v58;
      type metadata accessor for NSDecimal.FormatStyle.Percent(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
      v36 = v49;
      v44 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v42, v44);
      (*(v43 + 8))(v11, v28);
    }

    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v65 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for NSDecimal.FormatStyle(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle, &protocol conformance descriptor for NSDecimal.FormatStyle);
    v36 = v48;
    v45 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 8))(v26, v45);
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v35 = v30;
  }

  v46 = v59;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v36, v59, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v46, v35, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle@<X0>(Swift::Double *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t *, uint64_t *, uint64_t *, void *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a3(v5, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t *, uint64_t *, uint64_t *, void *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a4(v6, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.format(_:)(NSDecimal *a1)
{
  v4 = v2;
  v5 = v1;
  v250 = a1;
  v262 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v6);
  v247 = &v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v3, v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v249 = v4;
  v248 = v5;
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v13, type metadata accessor for NSDecimal.FormatStyle);
    v37 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v39 = v38;
    v40 = *(v13 + 1);
    v246 = v13;
    ObjectType = swift_getObjectType();
    v42 = (*(v40 + 472))(ObjectType, v40);
    v43 = v42;
    v45 = v44;
    if (one-time initialization token for cache != -1)
    {
      v42 = swift_once();
    }

    v29 = static ICUNumberFormatter.cache;
    v46 = *algn_1EA7B1D98;
    *&v254 = v37;
    *(&v254 + 1) = v39;
    *&v255 = v43;
    *(&v255 + 1) = v45;
    MEMORY[0x1EEE9AC00](v42);
    *(&v238 - 2) = &v254;
    os_unfair_lock_lock((v46 + 24));
    LOBYTE(v36) = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v46 + 16, &v259);
    v247 = 0;
    os_unfair_lock_unlock((v46 + 24));
    v31 = v259;
    if (v259 != 1)
    {
LABEL_208:

      if (v31)
      {
        v205 = *(v31 + 16);
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_allocObject();
        v206 = v250;
        v207 = v248;
        v208 = v249;
        v209 = v247;
        v210 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v205, v250, v248, v249);
        v247 = v209;
        if (v209)
        {

          v247 = 0;
        }

        else
        {
          v233 = v210;

          v174 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v233);
          v175 = v234;

          if (v175)
          {
            goto LABEL_250;
          }
        }
      }

      else
      {
        v208 = v249;
        v207 = v248;
        v206 = v250;
      }

      *&v259 = v206;
      *(&v259 + 1) = v207;
      LODWORD(v260) = v208;
      if (_So9NSDecimala__length_getter(&v259) || (*&v259 = v206, *(&v259 + 1) = v207, LODWORD(v260) = v208, !_So9NSDecimala__isNegative_getter(&v259)))
      {
        *&v259 = v206;
        *(&v259 + 1) = v207;
        LODWORD(v260) = v208;
        if (_So9NSDecimala__length_getter(&v259))
        {
          *&v252 = 0;
          *(&v252 + 1) = 0xE000000000000000;
          *&v259 = v206;
          *(&v259 + 1) = v207;
          LODWORD(v260) = v208;
          v254 = v259;
          LODWORD(v255) = v208;
          if (_So9NSDecimala__exponent_getter(&v254) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v254 = v259;
              LODWORD(v255) = v260;
              v211 = _So9NSDecimala__exponent_getter(&v254);
              _So9NSDecimala__exponent_setter((v211 - 1), &v259);
              v254 = v259;
              LODWORD(v255) = v260;
            }

            while (_So9NSDecimala__exponent_getter(&v254) > 0);
          }

          v254 = v259;
          LODWORD(v255) = v260;
          v212 = _So9NSDecimala__exponent_getter(&v254);
          v163 = v246;
          if (!v212)
          {
            _So9NSDecimala__exponent_setter(1, &v259);
          }

          v254 = v259;
          LODWORD(v255) = v260;
          if (_So9NSDecimala__length_getter(&v254))
          {
            do
            {
              v254 = v259;
              LODWORD(v255) = v260;
              if (!_So9NSDecimala__exponent_getter(&v254))
              {
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              }

              v254 = v259;
              LODWORD(v255) = v260;
              v213 = _So9NSDecimala__exponent_getter(&v254);
              _So9NSDecimala__exponent_setter((v213 + 1), &v259);
              v214 = v259;
              v215 = WORD2(v259);
              v216 = WORD4(v259);
              v217 = WORD5(v259);
              v244 = WORD3(v259);
              v250 = WORD6(v259);
              v248 = HIWORD(v259);
              v249 = v260;
              LODWORD(v245) = WORD1(v260);
              NSDecimal.asVariableLengthInteger()(v259 | (WORD2(v259) << 32) | (WORD3(v259) << 48), WORD4(v259) | (WORD5(v259) << 16) | (WORD6(v259) << 32) | (HIWORD(v259) << 48), v260 | (WORD1(v260) << 16));
              v219 = v218;
              v220 = *(v218 + 16);
              v221 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v220);
              *&v254 = v221;
              if (!v220)
              {

                v241 = 48;
                goto LABEL_231;
              }

              v242 = v217;
              i = v216;
              v222 = v215;
              v223 = v214;
              LODWORD(v217) = 0;
              v224 = v220 + 15;
              do
              {
                if ((v224 - 15) > *(v219 + 16))
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
LABEL_258:
                  __break(1u);
                }

                v225 = *(v219 + 2 * v224);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v221 = specialized _ArrayBuffer._consumeAndCreateNew()(v221);
                }

                if ((v224 - 15) > v221[1].i64[0])
                {
                  goto LABEL_255;
                }

                v226 = v225 | (v217 << 16);
                v221->i16[v224] = v226 / 0xA;
                LODWORD(v217) = v226 % 0xA;
                --v224;
              }

              while (v224 != 15);

              *&v254 = v221;
              v241 = v217 | 0x30;
              v214 = v223;
              v215 = v222;
              LOWORD(v216) = i;
              LOWORD(v217) = v242;
LABEL_231:
              while (1)
              {
                v227 = v221[1].i64[0];
                if (!v227 || v221[1].i16[v227 + 7])
                {
                  break;
                }

                if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
                {
                  specialized Array.remove(at:)(*(v254 + 16) - 1);
                }

                v221 = v254;
              }

              LODWORD(v254) = v214;
              WORD2(v254) = v215;
              WORD3(v254) = v244;
              WORD4(v254) = v216;
              WORD5(v254) = v217;
              WORD6(v254) = v250;
              HIWORD(v254) = v248;
              LOWORD(v255) = v249;
              WORD1(v255) = v245;
              NSDecimal.copyVariableLengthInteger(_:)(v221);
              v247 = v228;
              if (v228)
              {
                goto LABEL_262;
              }

              v229 = v221[1].u64[0];

              v163 = v246;
              if (HIDWORD(v229))
              {
                goto LABEL_258;
              }

              _So9NSDecimala__length_setter(v229, &v254);
              v259 = v254;
              LODWORD(v260) = v255;
              *&v257 = v241;
              v230 = static String._uncheckedFromUTF8(_:)();
              MEMORY[0x1865CB0E0](v230);

              v257 = v259;
              v258 = v260;
            }

            while (_So9NSDecimala__length_getter(&v257));
          }

          v254 = v259;
          LODWORD(v255) = v260;
          if (_So9NSDecimala__exponent_getter(&v254) <= 0)
          {
            while (1)
            {
              v254 = v259;
              LODWORD(v255) = v260;
              if (!_So9NSDecimala__exponent_getter(&v254))
              {
                break;
              }

              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v254 = v259;
              LODWORD(v255) = v260;
              v231 = _So9NSDecimala__exponent_getter(&v254);
              _So9NSDecimala__exponent_setter((v231 + 1), &v259);
            }

            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          }

          v254 = v259;
          LODWORD(v255) = v260;
          if (_So9NSDecimala__isNegative_getter(&v254))
          {
            MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          }

          v254 = v252;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
          v174 = String.init<A>(_:)();
          v175 = v232;
          goto LABEL_251;
        }

        v175 = 0xE100000000000000;
        v174 = 48;
      }

      else
      {
        v174 = 5136718;
        v175 = 0xE300000000000000;
      }

LABEL_250:
      v163 = v246;
LABEL_251:
      v178 = type metadata accessor for NSDecimal.FormatStyle;
      goto LABEL_252;
    }

    type metadata accessor for ICUNumberFormatter();
    v31 = swift_allocObject();
    *(v31 + 24) = v37;
    *(v31 + 32) = v39;
    swift_bridgeObjectRetain_n();
    v47 = MEMORY[0x1865CB200](v37, v39);
    if (v47)
    {
      v48 = v47;
      v49 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v47, 0);

      v36 = specialized Sequence._copySequenceContents(initializing:)(&v259, (v49 + 4), v48, v37, v39);

      if (v36 != v48)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        v240 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
        v96 = static _DictionaryStorage.copy(original:)();
        v69 = v96;
        if (!*(v37 + 16))
        {
LABEL_107:

          v50 = v240;
          if (v36)
          {
            goto LABEL_35;
          }

          goto LABEL_108;
        }

        v97 = (v96 + 64);
        v98 = 1 << *(v69 + 32);
        v241 = v37 + 64;
        v99 = (v98 + 63) >> 6;
        if (v69 != v37 || v97 >= v241 + 8 * v99)
        {
          memmove(v97, v241, 8 * v99);
        }

        v100 = 0;
        *(v69 + 16) = *(v37 + 16);
        v101 = 1 << *(v37 + 32);
        v102 = -1;
        if (v101 < 64)
        {
          v102 = ~(-1 << v101);
        }

        i = v102 & *(v37 + 64);
        v239 = (v101 + 63) >> 6;
        while (i)
        {
          v103 = __clz(__rbit64(i));
          i &= i - 1;
LABEL_76:
          v106 = v103 | (v100 << 6);
          v107 = *(v37 + 56);
          v108 = (*(v37 + 48) + 48 * v106);
          v109 = *v108;
          v110 = v108[1];
          v111 = v108[2];
          v242 = v108[3];
          v112 = v242;
          v113 = *(v107 + 8 * v106);
          v114 = v108[4];
          v115 = v108[5];
          v116 = (*(v69 + 48) + 48 * v106);
          *v116 = v109;
          v116[1] = v110;
          v116[2] = v111;
          v116[3] = v112;
          v116[4] = v114;
          v116[5] = v115;
          *(*(v69 + 56) + 8 * v106) = v113;
        }

        v104 = v100;
        while (1)
        {
          v100 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          if (v100 >= v239)
          {
            goto LABEL_107;
          }

          v105 = *(v241 + 8 * v100);
          ++v104;
          if (v105)
          {
            v103 = __clz(__rbit64(v105));
            i = (v105 - 1) & v105;
            goto LABEL_76;
          }
        }

        __break(1u);
        goto LABEL_260;
      }
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v259) = 0;
    if (v49[2] >> 31)
    {
      goto LABEL_59;
    }

    LOBYTE(v36) = String.utf8CString.getter();
    v83 = unumf_openForSkeletonAndLocale();

    if (v83)
    {
      if (v259 < 1)
      {
        *(v31 + 16) = v83;
LABEL_46:
        os_unfair_lock_lock((v46 + 24));
        v84 = v29 < *(*(v46 + 16) + 16);
        v245 = *(v46 + 16);
        v29 = v43;
        if (v84)
        {
          *(v46 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v259 = *(v46 + 16);
        v86 = v259;
        *(v46 + 16) = 0x8000000000000000;
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39, v29, v45);
        v88 = *(v86 + 16);
        v89 = (v87 & 1) == 0;
        v90 = v88 + v89;
        if (!__OFADD__(v88, v89))
        {
          LOBYTE(v91) = v87;
          if (*(v86 + 24) >= v90)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v240 = v50;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
              v136 = static _DictionaryStorage.copy(original:)();
              v92 = v136;
              if (!*(v86 + 16))
              {
                goto LABEL_205;
              }

              v137 = (v136 + 64);
              v138 = 1 << *(v92 + 32);
              v241 = v86 + 64;
              v139 = (v138 + 63) >> 6;
              if (v92 != v86 || v137 >= v241 + 8 * v139)
              {
                memmove(v137, v241, 8 * v139);
              }

              v140 = 0;
              *(v92 + 16) = *(v86 + 16);
              v141 = 1 << *(v86 + 32);
              v142 = -1;
              if (v141 < 64)
              {
                v142 = ~(-1 << v141);
              }

              v244 = v142 & *(v86 + 64);
              v239 = (v141 + 63) >> 6;
              while (v244)
              {
                v143 = __clz(__rbit64(v244));
                v244 &= v244 - 1;
LABEL_106:
                v146 = v143 | (v140 << 6);
                v147 = *(v86 + 56);
                v148 = (*(v86 + 48) + 32 * v146);
                v149 = *v148;
                v242 = v148[1];
                v150 = v242;
                v151 = v148[2];
                i = v148[3];
                v152 = i;
                v153 = *(v147 + 8 * v146);
                v154 = (*(v92 + 48) + 32 * v146);
                *v154 = v149;
                v154[1] = v150;
                v154[2] = v151;
                v154[3] = v152;
                *(*(v92 + 56) + 8 * v146) = v153;
              }

              v144 = v140;
              while (1)
              {
                v140 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_261;
                }

                if (v140 >= v239)
                {
                  goto LABEL_205;
                }

                v145 = *(v241 + 8 * v140);
                ++v144;
                if (v145)
                {
                  v143 = __clz(__rbit64(v145));
                  v244 = (v145 - 1) & v145;
                  goto LABEL_106;
                }
              }
            }

            v92 = v86;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v90, isUniquelyReferenced_nonNull_native);
            v92 = v259;
            v93 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39, v29, v45);
            if ((v91 & 1) != (v94 & 1))
            {
LABEL_265:
              v235 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_266;
            }

            v50 = v93;
          }

          if ((v91 & 1) == 0)
          {
LABEL_206:
            specialized _NativeDictionary._insert(at:key:value:)(v50, v37, v39, v29, v45, v31, v92);
            goto LABEL_207;
          }

LABEL_56:
          v95 = v50;

          *(*(v92 + 56) + 8 * v95) = v31;

LABEL_207:
          *(v46 + 16) = v92;

          os_unfair_lock_unlock((v46 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_208;
        }

        goto LABEL_60;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v31 = 0;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
    v18 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v20 = v19;
    v21 = v10[2];
    v22 = v10[3];
    v23 = v10[1];
    v245 = v10;
    v24 = swift_getObjectType();
    v25 = *(v23 + 472);

    v26 = v25(v24, v23);
    v27 = v26;
    *&v259 = v18;
    *(&v259 + 1) = v20;
    v246 = v20;
    *&v260 = v21;
    *(&v260 + 1) = v22;
    *&v261 = v26;
    *(&v261 + 1) = v28;
    v244 = v28;
    if (one-time initialization token for cache != -1)
    {
      v26 = swift_once();
    }

    v30 = static ICUCurrencyNumberFormatter.cache;
    v29 = qword_1EA7B5100;
    v254 = v259;
    v255 = v260;
    v256 = v261;
    MEMORY[0x1EEE9AC00](v26);
    *(&v238 - 2) = &v254;
    os_unfair_lock_lock((v29 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v29 + 16, &v257);
    v247 = 0;
    os_unfair_lock_unlock((v29 + 24));
    v31 = v257;
    v32 = v244;
    if (v257 != 1)
    {
      goto LABEL_110;
    }

    v33 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v18, v246, v21, v22);
    v35 = v34;
    type metadata accessor for ICUCurrencyNumberFormatter();
    LOBYTE(v36) = swift_allocObject();

    v31 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v33, v35, v27, v32);
    os_unfair_lock_lock((v29 + 24));
    if (v30 >= *(*(v29 + 16) + 16))
    {
    }

    else
    {
      *(v29 + 16) = MEMORY[0x1E69E7CC8];
    }

    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v257 = *(v29 + 16);
    v37 = v257;
    *(v29 + 16) = 0x8000000000000000;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(&v259);
    v66 = *(v37 + 16);
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (!__OFADD__(v66, v67))
    {
      LOBYTE(v36) = v65;
      if (*(v37 + 24) < v68)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v64);
        v69 = v257;
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(&v259);
        if ((v36 & 1) == (v71 & 1))
        {
          v50 = v70;
          if ((v36 & 1) == 0)
          {
            goto LABEL_108;
          }

LABEL_35:
          v81 = v50;

          *(*(v69 + 56) + 8 * v81) = v31;

LABEL_109:
          *(v29 + 16) = v69;

          os_unfair_lock_unlock((v29 + 24));

          outlined consume of ICUNumberFormatter??(1);
LABEL_110:

          if (v31)
          {
            v155 = *(v31 + 16);
            type metadata accessor for ICUNumberFormatterBase.FormatResult();
            swift_allocObject();
            v156 = v250;
            v157 = v248;
            v158 = v249;
            v159 = v247;
            v160 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v155, v250, v248, v249);
            if (v159)
            {

              v247 = 0;
            }

            else
            {
              v247 = 0;
              v176 = v160;

              v174 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v176);
              v175 = v177;

              if (v175)
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v158 = v249;
            v157 = v248;
            v156 = v250;
          }

          *&v254 = v156;
          *(&v254 + 1) = v157;
          LODWORD(v255) = v158;
          if (!_So9NSDecimala__length_getter(&v254))
          {
            *&v254 = v156;
            *(&v254 + 1) = v157;
            LODWORD(v255) = v158;
            if (_So9NSDecimala__isNegative_getter(&v254))
            {
              v174 = 5136718;
              v175 = 0xE300000000000000;
LABEL_145:
              v163 = v245;
              v178 = type metadata accessor for NSDecimal.FormatStyle.Currency;
LABEL_252:
              v203 = v178;
              v204 = v163;
              goto LABEL_253;
            }
          }

          *&v254 = v156;
          *(&v254 + 1) = v157;
          LODWORD(v255) = v158;
          if (!_So9NSDecimala__length_getter(&v254))
          {
            v175 = 0xE100000000000000;
            v174 = 48;
            goto LABEL_145;
          }

          *&v251 = 0;
          *(&v251 + 1) = 0xE000000000000000;
          *&v254 = v156;
          *(&v254 + 1) = v157;
          LODWORD(v255) = v158;
          v257 = v254;
          v258 = v158;
          if (_So9NSDecimala__exponent_getter(&v257) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v257 = v254;
              v258 = v255;
              v161 = _So9NSDecimala__exponent_getter(&v257);
              _So9NSDecimala__exponent_setter((v161 - 1), &v254);
              v257 = v254;
              v258 = v255;
            }

            while (_So9NSDecimala__exponent_getter(&v257) > 0);
          }

          v257 = v254;
          v258 = v255;
          v162 = _So9NSDecimala__exponent_getter(&v257);
          v163 = v245;
          if (!v162)
          {
            _So9NSDecimala__exponent_setter(1, &v254);
          }

          v257 = v254;
          v258 = v255;
          if (!_So9NSDecimala__length_getter(&v257))
          {
LABEL_146:
            v257 = v254;
            v258 = v255;
            if (_So9NSDecimala__exponent_getter(&v257) <= 0)
            {
              while (1)
              {
                v257 = v254;
                v258 = v255;
                if (!_So9NSDecimala__exponent_getter(&v257))
                {
                  break;
                }

                MEMORY[0x1865CB0E0](48, 0xE100000000000000);
                v257 = v254;
                v258 = v255;
                v179 = _So9NSDecimala__exponent_getter(&v257);
                _So9NSDecimala__exponent_setter((v179 + 1), &v254);
              }

              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            }

            v257 = v254;
            v258 = v255;
            if (_So9NSDecimala__isNegative_getter(&v257))
            {
              MEMORY[0x1865CB0E0](45, 0xE100000000000000);
            }

            v257 = v251;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
            lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
            v174 = String.init<A>(_:)();
            v175 = v180;
            v178 = type metadata accessor for NSDecimal.FormatStyle.Currency;
            goto LABEL_252;
          }

          while (1)
          {
            v257 = v254;
            v258 = v255;
            if (!_So9NSDecimala__exponent_getter(&v257))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v257 = v254;
            v258 = v255;
            v164 = _So9NSDecimala__exponent_getter(&v257);
            _So9NSDecimala__exponent_setter((v164 + 1), &v254);
            v52 = v254;
            v31 = WORD2(v254);
            v59 = WORD4(v254);
            v37 = WORD5(v254);
            v244 = WORD3(v254);
            v250 = WORD6(v254);
            v248 = HIWORD(v254);
            v249 = v255;
            LODWORD(v246) = WORD1(v255);
            NSDecimal.asVariableLengthInteger()(v254 | (WORD2(v254) << 32) | (WORD3(v254) << 48), WORD4(v254) | (WORD5(v254) << 16) | (WORD6(v254) << 32) | (HIWORD(v254) << 48), v255 | (WORD1(v255) << 16));
            v78 = v165;
            v166 = *(v165 + 16);
            v54 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v166);
            *&v257 = v54;
            if (v166)
            {
              break;
            }

            v169 = 48;
LABEL_131:
            v170 = v54[1].i64[0];
            for (i = v169; v170; v170 = *(v257 + 16))
            {
              if (v54[1].i16[v170 + 7])
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v257 + 16) - 1);
              }

              v54 = v257;
            }

            LODWORD(v257) = v52;
            WORD2(v257) = v31;
            WORD3(v257) = v244;
            WORD4(v257) = v59;
            WORD5(v257) = v37;
            WORD6(v257) = v250;
            HIWORD(v257) = v248;
            LOWORD(v258) = v249;
            HIWORD(v258) = v246;
            NSDecimal.copyVariableLengthInteger(_:)(v54);
            v247 = v171;
            if (v171)
            {
              goto LABEL_262;
            }

            v172 = v54[1].u64[0];

            if (HIDWORD(v172))
            {
              goto LABEL_256;
            }

            _So9NSDecimala__length_setter(v172, &v257);
            v254 = v257;
            LODWORD(v255) = v258;
            *&v252 = i;
            v173 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v173);

            v252 = v254;
            v253 = v255;
            if (!_So9NSDecimala__length_getter(&v252))
            {
              goto LABEL_146;
            }
          }

          v242 = v37;
          i = v59;
          v59 = v31;
          v37 = v52;
          v52 = 0;
          v167 = v166 + 15;
          while (1)
          {
            v61 = v167 - 15;
            if ((v167 - 15) > *(v78 + 16))
            {
              break;
            }

            v31 = *(v78 + 2 * v167);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
            }

            if (v61 > v54[1].i64[0])
            {
              goto LABEL_155;
            }

            v168 = v31 | (v52 << 16);
            v54->i16[v167] = v168 / 0xA;
            v52 = v168 % 0xA;
            if (--v167 == 15)
            {

              *&v257 = v54;
              v169 = v52 | 0x30;
              v163 = v245;
              LODWORD(v52) = v37;
              LOWORD(v31) = v59;
              LOWORD(v59) = i;
              LOWORD(v37) = v242;
              goto LABEL_131;
            }
          }

          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        goto LABEL_263;
      }

      if (v64)
      {
        v69 = v37;
        if (v65)
        {
          goto LABEL_35;
        }

LABEL_108:
        specialized _NativeDictionary._insert(at:key:value:)(v50, &v259, v31, v69);
        goto LABEL_109;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_58;
  }

  v51 = v247;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v247, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v52 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v54 = v53;
  v55 = *(v51 + 1);
  v56 = swift_getObjectType();
  v57 = (*(v55 + 472))(v56, v55);
  v31 = v57;
  v59 = v58;
  if (one-time initialization token for cache != -1)
  {
    v57 = swift_once();
  }

  v60 = static ICUPercentNumberFormatter.cache;
  v61 = *algn_1EA7B0228;
  *&v259 = v52;
  *(&v259 + 1) = v54;
  *&v260 = v31;
  *(&v260 + 1) = v59;
  MEMORY[0x1EEE9AC00](v57);
  *(&v238 - 2) = &v259;
  os_unfair_lock_lock((v61 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v61 + 16, &v254);
  v246 = 0;
  os_unfair_lock_unlock((v61 + 24));
  v37 = v254;
  if (v254 == 1)
  {
    *&v254 = 0x746E6563726570;
    *(&v254 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      *&v257 = 32;
      *(&v257 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v52, v54);
      MEMORY[0x1865CB0E0](v257, *(&v257 + 1));
    }

    v62 = v254;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v37 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v62, *(&v62 + 1), v31, v59);
    os_unfair_lock_lock((v61 + 24));
    v63 = *(v61 + 16);
    if (v60 >= *(v63 + 16))
    {

      v29 = v63;
    }

    else
    {
      v29 = *(v61 + 16);
      *(v61 + 16) = MEMORY[0x1E69E7CC8];
    }

    v72 = swift_isUniquelyReferenced_nonNull_native();
    *&v254 = *(v61 + 16);
    v36 = v254;
    *(v61 + 16) = 0x8000000000000000;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54, v31, v59);
    v74 = *(v36 + 16);
    v75 = (v73 & 1) == 0;
    v76 = v74 + v75;
    if (!__OFADD__(v74, v75))
    {
      if (*(v36 + 24) < v76)
      {
        v77 = v73;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v72);
        v78 = v254;
        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54, v31, v59);
        if ((v77 & 1) == (v80 & 1))
        {
          v50 = v79;
          if ((v77 & 1) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_38;
        }

        goto LABEL_264;
      }

      if (v72)
      {
        v78 = v36;
        if ((v73 & 1) == 0)
        {
LABEL_157:
          specialized _NativeDictionary._insert(at:key:value:)(v50, v52, v54, v31, v59, v37, v78);
          goto LABEL_158;
        }

LABEL_38:
        v82 = v50;

        *(*(v78 + 56) + 8 * v82) = v37;

LABEL_158:
        *(v61 + 16) = v78;

        os_unfair_lock_unlock((v61 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_159;
      }

      v240 = v50;
      LODWORD(v241) = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v117 = static _DictionaryStorage.copy(original:)();
      v78 = v117;
      if (!*(v36 + 16))
      {
LABEL_156:

        v50 = v240;
        if ((v241 & 1) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_38;
      }

      v118 = (v117 + 64);
      v119 = 1 << *(v78 + 32);
      v242 = (v36 + 64);
      v120 = (v119 + 63) >> 6;
      if (v78 != v36 || v118 >= &v242[8 * v120])
      {
        memmove(v118, v242, 8 * v120);
      }

      v121 = 0;
      *(v78 + 16) = *(v36 + 16);
      v122 = 1 << *(v36 + 32);
      v123 = -1;
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      v245 = v123 & *(v36 + 64);
      v239 = (v122 + 63) >> 6;
      while (v245)
      {
        v124 = __clz(__rbit64(v245));
        v245 &= v245 - 1;
LABEL_91:
        v127 = v124 | (v121 << 6);
        v128 = *(v36 + 56);
        v129 = (*(v36 + 48) + 32 * v127);
        v130 = *v129;
        i = v129[1];
        v131 = i;
        v132 = v129[2];
        v244 = v129[3];
        v133 = v244;
        v134 = *(v128 + 8 * v127);
        v135 = (*(v78 + 48) + 32 * v127);
        *v135 = v130;
        v135[1] = v131;
        v135[2] = v132;
        v135[3] = v133;
        *(*(v78 + 56) + 8 * v127) = v134;
      }

      v125 = v121;
      while (1)
      {
        v121 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          break;
        }

        if (v121 >= v239)
        {
          goto LABEL_156;
        }

        v126 = *&v242[8 * v121];
        ++v125;
        if (v126)
        {
          v124 = __clz(__rbit64(v126));
          v245 = (v126 - 1) & v126;
          goto LABEL_91;
        }
      }

LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:

      swift_unexpectedError();
      __break(1u);
LABEL_263:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_264:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_265;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_159:

  if (v37)
  {
    v181 = *(v37 + 16);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    v182 = v248;
    v183 = v249;
    v184 = v246;
    v185 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v181, v250, v248, v249);
    if (v184)
    {

      v246 = 0;
    }

    else
    {
      v246 = 0;
      v201 = v185;

      v174 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v201);
      v175 = v202;

      if (v175)
      {
        goto LABEL_202;
      }
    }
  }

  else
  {
    v183 = v249;
    v182 = v248;
  }

  v186 = v250;
  *&v259 = v250;
  v187 = HIDWORD(v250);
  v188 = HIWORD(v250);
  *(&v259 + 1) = v182;
  LODWORD(v260) = v183;
  if (_So9NSDecimala__length_getter(&v259) || (LODWORD(v259) = v186, WORD2(v259) = v187, WORD3(v259) = v188, *(&v259 + 1) = v182, LODWORD(v260) = v183, !_So9NSDecimala__isNegative_getter(&v259)))
  {
    LODWORD(v259) = v186;
    WORD2(v259) = v187;
    WORD3(v259) = v188;
    *(&v259 + 1) = v182;
    LODWORD(v260) = v183;
    if (!_So9NSDecimala__length_getter(&v259))
    {
      v175 = 0xE100000000000000;
      v174 = 48;
      goto LABEL_202;
    }

    *&v252 = 0;
    *(&v252 + 1) = 0xE000000000000000;
    LODWORD(v259) = v186;
    WORD2(v259) = v187;
    WORD3(v259) = v188;
    *(&v259 + 1) = v182;
    LODWORD(v260) = v183;
    v254 = v259;
    LODWORD(v255) = v183;
    if (_So9NSDecimala__exponent_getter(&v254) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v254 = v259;
        LODWORD(v255) = v260;
        v189 = _So9NSDecimala__exponent_getter(&v254);
        _So9NSDecimala__exponent_setter((v189 - 1), &v259);
        v254 = v259;
        LODWORD(v255) = v260;
      }

      while (_So9NSDecimala__exponent_getter(&v254) > 0);
    }

    v254 = v259;
    LODWORD(v255) = v260;
    if (!_So9NSDecimala__exponent_getter(&v254))
    {
      _So9NSDecimala__exponent_setter(1, &v259);
    }

    v254 = v259;
    LODWORD(v255) = v260;
    if (!_So9NSDecimala__length_getter(&v254))
    {
LABEL_190:
      v254 = v259;
      LODWORD(v255) = v260;
      if (_So9NSDecimala__exponent_getter(&v254) <= 0)
      {
        while (1)
        {
          v254 = v259;
          LODWORD(v255) = v260;
          if (!_So9NSDecimala__exponent_getter(&v254))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v254 = v259;
          LODWORD(v255) = v260;
          v199 = _So9NSDecimala__exponent_getter(&v254);
          _So9NSDecimala__exponent_setter((v199 + 1), &v259);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v254 = v259;
      LODWORD(v255) = v260;
      if (_So9NSDecimala__isNegative_getter(&v254))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v254 = v252;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR, MEMORY[0x1E69E6EB0]);
      v174 = String.init<A>(_:)();
      v175 = v200;
      goto LABEL_202;
    }

    v29 = 3435973837;
    while (1)
    {
      v254 = v259;
      LODWORD(v255) = v260;
      if (!_So9NSDecimala__exponent_getter(&v254))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v254 = v259;
      LODWORD(v255) = v260;
      v190 = _So9NSDecimala__exponent_getter(&v254);
      _So9NSDecimala__exponent_setter((v190 + 1), &v259);
      v39 = v259;
      v45 = WORD2(v259);
      v31 = WORD4(v259);
      v37 = WORD5(v259);
      v244 = WORD3(v259);
      v250 = WORD6(v259);
      v248 = HIWORD(v259);
      v249 = v260;
      LODWORD(v245) = WORD1(v260);
      NSDecimal.asVariableLengthInteger()(v259 | (WORD2(v259) << 32) | (WORD3(v259) << 48), WORD4(v259) | (WORD5(v259) << 16) | (WORD6(v259) << 32) | (HIWORD(v259) << 48), v260 | (WORD1(v260) << 16));
      v92 = v191;
      v192 = *(v191 + 16);
      v193 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v192);
      *&v254 = v193;
      if (v192)
      {
        break;
      }

      v241 = 48;
LABEL_183:
      while (1)
      {
        v195 = v193[1].i64[0];
        if (!v195 || v193[1].i16[v195 + 7])
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v254 + 16) - 1);
        }

        v193 = v254;
      }

      LODWORD(v254) = v39;
      WORD2(v254) = v45;
      WORD3(v254) = v244;
      WORD4(v254) = v31;
      WORD5(v254) = v37;
      WORD6(v254) = v250;
      HIWORD(v254) = v248;
      LOWORD(v255) = v249;
      WORD1(v255) = v245;
      NSDecimal.copyVariableLengthInteger(_:)(v193);
      v246 = v196;
      if (v196)
      {
        goto LABEL_262;
      }

      v197 = v193[1].u64[0];

      if (HIDWORD(v197))
      {
        goto LABEL_257;
      }

      _So9NSDecimala__length_setter(v197, &v254);
      v259 = v254;
      LODWORD(v260) = v255;
      *&v257 = v241;
      v198 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v198);

      v257 = v259;
      v258 = v260;
      if (!_So9NSDecimala__length_getter(&v257))
      {
        goto LABEL_190;
      }
    }

    v242 = v37;
    i = v31;
    v31 = v45;
    v45 = v39;
    v37 = 0;
    v91 = v192 + 15;
    while (1)
    {
      v46 = v91 - 15;
      if ((v91 - 15) > *(v92 + 16))
      {
        break;
      }

      v39 = *(v92 + 2 * v91);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v193 = specialized _ArrayBuffer._consumeAndCreateNew()(v193);
      }

      if (v46 > v193[1].i64[0])
      {
        goto LABEL_204;
      }

      v194 = v39 | (v37 << 16);
      v193->i16[v91] = v194 / 0xA;
      v37 = v194 % 0xA;
      if (--v91 == 15)
      {

        *&v254 = v193;
        v241 = v37 | 0x30;
        LODWORD(v39) = v45;
        LOWORD(v45) = v31;
        LOWORD(v31) = i;
        LOWORD(v37) = v242;
        goto LABEL_183;
      }
    }

    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:

    v50 = v240;
    if ((v91 & 1) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_56;
  }

  v174 = 5136718;
  v175 = 0xE300000000000000;
LABEL_202:
  v203 = type metadata accessor for NSDecimal.FormatStyle.Percent;
  v204 = v247;
LABEL_253:
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v204, v203);
  v235 = v174;
  v236 = v175;
LABEL_266:
  result._object = v236;
  result._countAndFlagsBits = v235;
  return result;
}