uint64_t sub_24FE6B574@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_24FEDD234();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AttributionsTextView(0);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55B8, &qword_24FEE1FD0);
  MEMORY[0x28223BE20](v31);
  v30 = &v29 - v10;
  v12 = v1[1];
  v11 = v1[2];
  v14 = v1[3];
  v13 = v1[4];
  v16 = v1[5];
  v15 = v1[6];
  v17 = v1[7];
  v18 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE58B14(v1 + *(v18 + 36), v7 + *(v5 + 40), &unk_27F3A4A40, &qword_24FEE08C0);
  *v7 = v12;
  v7[1] = v11;
  v7[2] = v14;
  v7[3] = v13;
  v7[4] = v16;
  v7[5] = v15;
  v7[6] = v17;

  v19 = v29;
  AttributionsTextView.init(model:)(v7, v29);
  sub_24FEDDF44();
  sub_24FEDD294();
  v20 = v30;
  sub_24FE728F8(v19, v30, type metadata accessor for AttributionsTextView);
  v22 = v31;
  v21 = v32;
  v23 = (v20 + *(v31 + 36));
  v24 = v43;
  v23[4] = v42;
  v23[5] = v24;
  v23[6] = v44;
  v25 = v39;
  *v23 = v38;
  v23[1] = v25;
  v26 = v41;
  v23[2] = v40;
  v23[3] = v26;
  sub_24FE69B78(v21);
  sub_24FEDD224();
  (*(v33 + 8))(v21, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55C0, &qword_24FEE1FD8);
  v27 = sub_24FE73044();
  v36 = v22;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  sub_24FEDDA64();
  return sub_24FE58B7C(v20, &qword_27F3A55B8, &qword_24FEE1FD0);
}

void sub_24FE6B910()
{
  if (qword_27F3A4698 != -1)
  {
    swift_once();
  }

  v0 = sub_24FEDCF54();
  __swift_project_value_buffer(v0, qword_27F3A5310);
  v1 = sub_24FEDCF34();
  v2 = sub_24FEDE4B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24FE70EC4(0xD000000000000012, 0x800000024FEE1CD0, &v10);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24FE70EC4(2036625250, 0xE400000000000000, &v10);
    _os_log_impl(&dword_24FE50000, v1, v2, "%s.%s User tapped on response view. Activating TTS.", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25305B320](v4, -1, -1);
    MEMORY[0x25305B320](v3, -1, -1);
  }

  v9 = [objc_allocWithZone(GenerativeAssistantSiriInvocationManager) init];
  [v9 invokeTypeToSiriForFollowup];
  v5 = sub_24FEDCF34();
  v6 = sub_24FEDE4B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24FE70EC4(0xD000000000000012, 0x800000024FEE1CD0, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24FE70EC4(2036625250, 0xE400000000000000, &v10);
    _os_log_impl(&dword_24FE50000, v5, v6, "%s.%s Finished activating TTS.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25305B320](v8, -1, -1);
    MEMORY[0x25305B320](v7, -1, -1);
  }
}

uint64_t TextGenerationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24FE70838(a1, v6, type metadata accessor for GenerativeRichTextResultSnippetModel);
  v9 = 1;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  TextGenerationView.init(model:shouldMockSnippetContext:presentationOptions:)(v6, 0, &v9, a2);
  return sub_24FE73150(a1, type metadata accessor for GenerativeRichTextResultSnippetModel);
}

id TextGenerationView.init(model:shouldMockSnippetContext:presentationOptions:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v216) = a2;
  v188 = a1;
  v205 = sub_24FEDC774();
  v219 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v202 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v201 = &v161 - v8;
  MEMORY[0x28223BE20](v9);
  v200 = &v161 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5358, &qword_24FEE1BB8);
  MEMORY[0x28223BE20](v11 - 8);
  v171 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v174 = &v161 - v14;
  v177 = sub_24FEDC9E4();
  v218 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v211 = &v161 - v17;
  v195 = sub_24FEDCE94();
  v203 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v194 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for RichContentResultSegment(0);
  v198 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v212 = (&v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5360, &qword_24FEE1BC0);
  v215 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v197 = (&v161 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5368, &qword_24FEE1BC8);
  MEMORY[0x28223BE20](v21 - 8);
  v213 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v217 = &v161 - v24;
  v25 = *a3;
  v26 = *(a3 + 8);
  v27 = *(a3 + 16);
  v28 = *(a3 + 24);
  v29 = *(a3 + 32);
  v30 = *(a3 + 40);
  v31 = *(a3 + 48);
  v32 = type metadata accessor for TextGenerationView(0);
  v33 = v32[6];
  *(a4 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5370, &qword_24FEE1C00);
  swift_storeEnumTagMultiPayload();
  *(a4 + v32[7]) = 0x401C000000000000;
  *(a4 + v32[8]) = 0x4026000000000000;
  *(a4 + v32[9]) = 0x402E000000000000;
  *(a4 + v32[10]) = 0x4010000000000000;
  sub_24FE70838(v188, a4, type metadata accessor for GenerativeRichTextResultSnippetModel);
  *(a4 + v32[14]) = v216;
  v186 = v32;
  v34 = v32[15];
  v187 = a4;
  v35 = a4 + v34;
  *v35 = v25;
  *(v35 + 8) = v26;
  *(v35 + 16) = v27;
  *(v35 + 24) = v28;
  v184 = v28;
  v183 = v29;
  *(v35 + 32) = v29;
  *(v35 + 40) = v30;
  v182 = v30;
  v185 = v31;
  *(v35 + 48) = v31;
  if (v25 >= 2)
  {
    v224[0] = v25;
    v224[1] = v26;
    v36 = v184;
    v224[2] = v27;
    v224[3] = v184;
    v37 = v183;
    v38 = v182;
    v224[4] = v183;
    v224[5] = v182;
    sub_24FE71AF4(v25, v26, v27, v184, v183, v182);
    sub_24FE71B04(v25, v26, v27, v36, v37, v38);
    v39 = *(**MarkdownFont.shared.unsafeMutableAddressor() + 112);

    v39(v224);
  }

  v179 = v27;
  v180 = v26;
  v181 = v25;
  v40 = MEMORY[0x277D84F90];
  v210 = MarkdownParser.init(documentElementParsers:includeDefaultDocumentElementParsers:inlineParsers:includeDefaultInlineParsers:)(MEMORY[0x277D84F90], 1, MEMORY[0x277D84F90], 1);
  v209 = v41;
  v208 = v42;
  v207 = v43;
  v223 = v40;
  result = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v45 = result;
  LODWORD(v178) = 0;
  v46 = 0;
  v47 = 0;
  v48 = *v188;
  v49 = *(*v188 + 16);
  v216 = (v215 + 7);
  v215 += 6;
  v193 = (v203 + 8);
  v199 = v219 + 16;
  v191 = *MEMORY[0x277D76918];
  v190 = v219 + 8;
  v176 = (v218 + 32);
  v189 = *MEMORY[0x277D740A8];
  v172 = (v218 + 16);
  v175 = (v218 + 8);
  v170 = (v203 + 48);
  *(&v50 + 1) = 2;
  v196 = xmmword_24FEE0740;
  *&v50 = 136315394;
  v169 = v50;
  v51 = v211;
  v52 = v212;
  v53 = v214;
  v54 = v213;
  v55 = v217;
  v203 = v49;
  v192 = result;
  v206 = v48;
  while (1)
  {
    v219 = v47;
    if (v46 != v49)
    {
      break;
    }

    v56 = 1;
    v218 = v49;
LABEL_12:
    (*v216)(v54, v56, 1, v53);
    sub_24FE6315C(v54, v55, &qword_27F3A5368, &qword_24FEE1BC8);
    if ((*v215)(v55, 1, v53) == 1)
    {
      v152 = v45;
      if ([v152 length] <= 0)
      {

        v153 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5378, &qword_24FEE1C08);
        v153 = swift_allocObject();
        *(v153 + 16) = v196;
        *(v153 + 56) = v205;
        *(v153 + 64) = &protocol witness table for AttributedString;
        __swift_allocate_boxed_opaque_existential_1((v153 + 32));
        sub_24FEDC7B4();
      }

      v154 = v186;
      v155 = v187;
      *(v187 + v186[11]) = v153;
      *(v155 + v154[12]) = v40;
      v156 = MarkdownParser.makeDocumentViewModel(from:)(v223);

      *(v155 + v154[5]) = v156;

      LOBYTE(v155) = DocumentViewModel.hasCodeblockOrImage()();

      if (v155)
      {
        v157 = 1;
        v158 = v181;
        v159 = v180;
        v160 = v179;
        goto LABEL_58;
      }

      v158 = v181;
      v159 = v180;
      v160 = v179;
      if (v181 == 1)
      {
        v157 = 0;
      }

      else
      {
        v157 = v185;
LABEL_58:
        sub_24FE708A0(v158, v159, v160, v184, v183, v182);
      }

      *(v187 + v186[13]) = v157 & 1;
      sub_24FE6D994();

      return sub_24FE73150(v188, type metadata accessor for GenerativeRichTextResultSnippetModel);
    }

    v61 = *v55;
    sub_24FE728F8(v55 + *(v53 + 48), v52, type metadata accessor for RichContentResultSegment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v76 = *v52;
      v77 = v52[1];
      KeyPath = swift_getKeyPath();
      v79 = type metadata accessor for AttributeScopes.MarkdownDocumentAttributes(0);
      v80 = sub_24FE73100(&qword_27F3A5380, type metadata accessor for AttributeScopes.MarkdownDocumentAttributes, &protocol conformance descriptor for AttributeScopes.MarkdownDocumentAttributes);
      v81 = v200;
      v82 = v210;
      v83 = v209;
      v84 = v208;
      v85 = v207;
      MarkdownParser.attributedStringSafeForLaTeX<A>(markdown:including:)(v76, v77, KeyPath, v210, v209, v208, v207, v79, v200, v80);

      v87 = MarkdownParser.makeDocumentElements(attributedString:)(v81, v82, v86, v83, v84, v85);
      sub_24FE6D86C(v87);
      v88 = [objc_opt_self() preferredFontForTextStyle_];
      v89 = objc_opt_self();
      v90 = sub_24FEDE1C4();

      v91 = [objc_opt_self() defaultFormatOptions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5388, &qword_24FEE1C40);
      inited = swift_initStackObject();
      *(inited + 16) = v196;
      v93 = v189;
      *(inited + 32) = v189;
      *(inited + 64) = sub_24FE709D8();
      *(inited + 40) = v88;
      v94 = v93;
      v95 = v88;
      sub_24FE7197C(inited);
      swift_setDeallocating();
      sub_24FE58B7C(inited + 32, &qword_27F3A5398, &qword_24FEE1C48);
      type metadata accessor for Key();
      sub_24FE73100(&qword_27F3A46D8, type metadata accessor for Key, &unk_24FEDFB10);
      v96 = sub_24FEDE144();

      v97 = [v89 reconstituteAttributedStringFromFormattedString:v90 formatOptions:v91 attributes:v96];

      v98 = v97;
      v99 = v201;
      sub_24FEDC7B4();
      v100 = *v199;
      (*v199)(v202, v99, v205);
      v101 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24FE70D7C(0, v40[2] + 1, 1, v40, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      v103 = v101[2];
      v102 = v101[3];
      v51 = v211;
      v45 = v192;
      if (v103 >= v102 >> 1)
      {
        v40 = sub_24FE70D7C((v102 > 1), v103 + 1, 1, v101, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      else
      {
        v40 = v101;
      }

      v104 = v205;
      v221 = v205;
      v222 = &protocol witness table for AttributedString;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v220);
      v106 = v202;
      v100(boxed_opaque_existential_1, v202, v104);
      v40[2] = v103 + 1;
      sub_24FE71ADC(&v220, &v40[5 * v103 + 4]);
      v107 = *v190;
      (*v190)(v106, v104);
      [v45 appendAttributedString_];

      v107(v201, v104);
      result = (v107)(v200, v104);
      v52 = v212;
      v53 = v214;
      v54 = v213;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v63 = *v52;
      v64 = v52[1];
      sub_24FE62C94(*v52, v64);
      v65 = v194;
      sub_24FEDCE64();
      sub_24FEDCDF4();
      (*v193)(v65, v195);
      v66 = objc_allocWithZone(MEMORY[0x277D74270]);
      v67 = sub_24FEDCA04();
      sub_24FE62CFC(v63, v64);
      v68 = sub_24FEDE1C4();

      v69 = [v66 initWithData:v67 ofType:v68];

      v70 = [objc_opt_self() attributedStringWithAttachment_];
      [v45 appendAttributedString_];
      MarkdownParser.makeDocumentElement(imageData:isFirst:)(v63, v64, v61 == 0, &v220);
      v71 = v223;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_24FE70D7C(0, v71[2] + 1, 1, v71, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
      }

      v73 = v71[2];
      v72 = v71[3];
      v51 = v211;
      if (v73 >= v72 >> 1)
      {
        v71 = sub_24FE70D7C((v72 > 1), v73 + 1, 1, v71, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
      }

      v71[2] = v73 + 1;
      sub_24FE71ADC(&v220, &v71[5 * v73 + 4]);
      v223 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24FE70D7C(0, v40[2] + 1, 1, v40, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      v48 = v206;
      v75 = v40[2];
      v74 = v40[3];
      if (v75 >= v74 >> 1)
      {
        v40 = sub_24FE70D7C((v74 > 1), v75 + 1, 1, v40, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
      }

      v221 = MEMORY[0x277CC9318];
      v222 = &protocol witness table for Data;
      *&v220 = v63;
      *(&v220 + 1) = v64;
      v40[2] = v75 + 1;
      result = sub_24FE71ADC(&v220, &v40[5 * v75 + 4]);
      v52 = v212;
      v53 = v214;
      v54 = v213;
LABEL_24:
      v55 = v217;
LABEL_6:
      v49 = v203;
      v46 = v218;
      v47 = v219;
    }

    else
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53A0, &qword_24FEE1C50);
      v109 = *(v52 + v108[12]);
      v110 = (v52 + v108[16]);
      v111 = v110[1];
      v168 = *v110;
      v167 = *(v52 + v108[20]);
      v112 = v177;
      (*v176)(v51, v52, v177);
      if (v178)
      {
        (*v175)(v51, v112);

        LODWORD(v178) = 1;
LABEL_5:
        v55 = v217;
        v48 = v206;
        goto LABEL_6;
      }

      v166 = v109;
      v178 = v111;
      v113 = v219;
      v114 = sub_24FEDC9F4();
      v48 = v206;
      v219 = v113;
      if (!v113)
      {
        v164 = v115;
        v165 = v114;

        sub_24FEDCE54();
        v137 = v174;
        sub_24FEDCDE4();
        v138 = v137;
        v139 = v171;
        sub_24FE58B14(v138, v171, &qword_27F3A5358, &qword_24FEE1BB8);
        if ((*v170)(v139, 1, v195) == 1)
        {
          sub_24FE58B7C(v171, &qword_27F3A5358, &qword_24FEE1BB8);
          v139 = v194;
          sub_24FEDCE54();
        }

        v163 = sub_24FEDCDF4();
        (*v193)(v139, v195);
        v162 = objc_allocWithZone(MEMORY[0x277D74270]);
        v140 = v165;
        v141 = v164;
        sub_24FE62C94(v165, v164);
        v142 = sub_24FEDCA04();
        sub_24FE62CFC(v140, v141);
        v143 = sub_24FEDE1C4();

        v144 = [v162 initWithData:v142 ofType:v143];

        v145 = [objc_opt_self() attributedStringWithAttachment_];
        [v45 appendAttributedString_];
        MarkdownParser.makeFileDocumentElement(url:fileName:mimeType:size:)(v51, v168, v178, v167, &v220);

        v146 = v223;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_24FE70D7C(0, v146[2] + 1, 1, v146, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
        }

        v148 = v146[2];
        v147 = v146[3];
        if (v148 >= v147 >> 1)
        {
          v146 = sub_24FE70D7C((v147 > 1), v148 + 1, 1, v146, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
        }

        v146[2] = v148 + 1;
        sub_24FE71ADC(&v220, &v146[5 * v148 + 4]);
        v223 = v146;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_24FE70D7C(0, v40[2] + 1, 1, v40, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
        }

        v54 = v213;
        v150 = v40[2];
        v149 = v40[3];
        if (v150 >= v149 >> 1)
        {
          v40 = sub_24FE70D7C((v149 > 1), v150 + 1, 1, v40, &qword_27F3A54C0, &qword_24FEE1EF0, &qword_27F3A53E8, &qword_24FEE1D10);
        }

        sub_24FE58B7C(v174, &qword_27F3A5358, &qword_24FEE1BB8);
        (*v175)(v51, v177);
        v221 = MEMORY[0x277CC9318];
        v222 = &protocol witness table for Data;
        *&v220 = v165;
        *(&v220 + 1) = v164;
        v40[2] = v150 + 1;
        result = sub_24FE71ADC(&v220, &v40[5 * v150 + 4]);
        LODWORD(v178) = 1;
        v53 = v214;
        goto LABEL_24;
      }

      if (qword_27F3A4688 != -1)
      {
        swift_once();
      }

      v116 = sub_24FEDCF54();
      __swift_project_value_buffer(v116, qword_27F3A52E0);
      v117 = v173;
      v118 = v177;
      (*v172)(v173, v51, v177);
      v119 = v219;
      v120 = v219;
      v121 = sub_24FEDCF34();
      v122 = sub_24FEDE4C4();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = v118;
        v124 = v117;
        v125 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        *&v220 = v178;
        *v125 = v169;
        sub_24FE73100(&qword_27F3A53A8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        LODWORD(v168) = v122;
        v126 = sub_24FEDE824();
        v128 = v127;
        v129 = *v175;
        v167 = v121;
        v130 = v124;
        v51 = v211;
        v129(v130, v123);
        v131 = sub_24FE70EC4(v126, v128, &v220);

        *(v125 + 4) = v131;
        *(v125 + 12) = 2080;
        swift_getErrorValue();
        v132 = sub_24FEDE8A4();
        v134 = sub_24FE70EC4(v132, v133, &v220);

        *(v125 + 14) = v134;
        v53 = v214;
        v135 = v167;
        _os_log_impl(&dword_24FE50000, v167, v168, "Failed to load file data at %s: %s", v125, 0x16u);
        v136 = v178;
        swift_arrayDestroy();
        MEMORY[0x25305B320](v136, -1, -1);
        MEMORY[0x25305B320](v125, -1, -1);

        result = (v129)(v51, v177);
        v54 = v213;
      }

      else
      {

        v151 = *v175;
        (*v175)(v117, v118);
        result = (v151)(v51, v118);
      }

      LODWORD(v178) = 0;
      v47 = 0;
      v52 = v212;
      v55 = v217;
      v48 = v206;
      v49 = v203;
      v46 = v218;
    }
  }

  if ((v46 & 0x8000000000000000) == 0)
  {
    if (v46 >= *(v48 + 16))
    {
      goto LABEL_61;
    }

    v57 = v46 + 1;
    v58 = v48 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v46;
    v59 = *(v53 + 48);
    v60 = v197;
    *v197 = v46;
    sub_24FE70838(v58, v60 + v59, type metadata accessor for RichContentResultSegment);
    sub_24FE6315C(v60, v54, &qword_27F3A5360, &qword_24FEE1BC0);
    v56 = 0;
    v218 = v57;
    goto LABEL_12;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t TextGenerationView.init(model:shouldMockSnippetContext:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24FE70838(a1, v8, type metadata accessor for GenerativeRichTextResultSnippetModel);
  v11 = 1;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  TextGenerationView.init(model:shouldMockSnippetContext:presentationOptions:)(v8, a2, &v11, a3);
  return sub_24FE73150(a1, type metadata accessor for GenerativeRichTextResultSnippetModel);
}

void *sub_24FE6D86C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_24FE70D7C(result, v10, 1, v3, &qword_27F3A54A8, &qword_24FEE1ED8, &qword_27F3A54B0, &qword_24FEE1EE0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24FE6D994()
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D0, &qword_24FEE1F00);
  MEMORY[0x28223BE20](v84);
  v83 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v82 = &v61 - v3;
  v4 = sub_24FEDC714();
  v96 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D8, &qword_24FEE1F08);
  MEMORY[0x28223BE20](v81);
  v80 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E0, &qword_24FEE1F10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E8, &qword_24FEE1F18);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v61 - v12;
  v95 = sub_24FEDC5A4();
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24FEDC774();
  v14 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F0, &qword_24FEE1F20);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = &v61 - v17;
  v92 = type metadata accessor for DocumentOutlineElement(0);
  v18 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = LaTeXMathTracker.instance.unsafeMutableAddressor();
  swift_beginAccess();
  v71 = v21;
  v22 = *(**v21 + 192);

  v22(v23);

  type metadata accessor for TextGenerationView(0);
  v69 = v0;
  result = DocumentViewModel.elements.getter();
  v87 = *(result + 16);
  if (!v87)
  {
  }

  v25 = 0;
  v91 = result + 32;
  v26 = (v18 + 56);
  v78 = (v14 + 8);
  v77 = (v96 + 32);
  v76 = (v96 + 8);
  v75 = (v88 + 8);
  v27 = v93;
  v28 = v92;
  v89 = result;
  v90 = v26;
  while (1)
  {
    if (v25 >= *(result + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_24FE72D1C(v91 + 40 * v25, &v103);
    sub_24FE72D1C(&v103, &v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B0, &qword_24FEE1EE0);
    v29 = swift_dynamicCast();
    v30 = *v90;
    if (v29)
    {
      break;
    }

    v30(v27, 1, 1, v28);
    sub_24FE58B7C(v27, &qword_27F3A54F0, &qword_24FEE1F20);
    sub_24FE72D1C(&v103, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54F8, &qword_24FEE1F28);
    if (swift_dynamicCast())
    {
      sub_24FE71ADC(v97, &v100);
      v58 = sub_24FE6E608(&v100);
      __swift_destroy_boxed_opaque_existential_1(&v100);
      __swift_destroy_boxed_opaque_existential_1(&v103);
      if (v58)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v103);
      v98 = 0;
      memset(v97, 0, sizeof(v97));
      sub_24FE58B7C(v97, &qword_27F3A5500, &qword_24FEE1F30);
    }

LABEL_4:
    result = v89;
    if (++v25 == v87)
    {
    }
  }

  v30(v27, 0, 1, v28);
  result = sub_24FE728F8(v27, v20, type metadata accessor for DocumentOutlineElement);
  v31 = *&v20[*(v28 + 20)];
  v67 = *(v31 + 16);
  if (!v67)
  {
LABEL_21:
    sub_24FE73150(v20, type metadata accessor for DocumentOutlineElement);
    __swift_destroy_boxed_opaque_existential_1(&v103);
    goto LABEL_4;
  }

  v32 = 0;
  v33 = v31 + 32;
  v65 = v6;
  v64 = v10;
  v73 = v20;
  v72 = v25;
  v63 = v31;
  v62 = v31 + 32;
  while (v32 < *(v31 + 16))
  {
    v68 = v32;
    v34 = *(*(v33 + 8 * v32) + 16);

    v70 = v34;
    if (v34)
    {
      v35 = 0;
      v36 = result + 32;
      v74 = result;
      v66 = result + 32;
      while (v35 < *(result + 16))
      {
        v96 = v35;
        sub_24FE72D1C(v36 + 40 * v35, &v100);
        v37 = v101;
        v38 = v102;
        __swift_project_boxed_opaque_existential_1(&v100, v101);
        v39 = v85;
        (*(v38 + 24))(v37, v38);
        sub_24FEDC574();
        (*v78)(v39, v86);
        v40 = sub_24FE73100(&qword_27F3A5508, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
        sub_24FEDE454();
        sub_24FE73100(&qword_27F3A5510, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
        result = sub_24FEDE194();
        if ((result & 1) == 0)
        {
          goto LABEL_27;
        }

        sub_24FEDE474();
        sub_24FE73100(&qword_27F3A5518, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
        result = sub_24FEDE184();
        if ((result & 1) == 0)
        {
          goto LABEL_28;
        }

        ++v96;
        v41 = *v77;
        v42 = v82;
        (*v77)(v82, v10, v4);
        v88 = v40;
        v43 = v84;
        v41((v42 + *(v84 + 48)), v6, v4);
        v44 = v83;
        sub_24FE58B14(v42, v83, &qword_27F3A54D0, &qword_24FEE1F00);
        v45 = *(v43 + 48);
        v46 = v80;
        v41(v80, v44, v4);
        v47 = *v76;
        (*v76)(v44 + v45, v4);
        v48 = v42;
        v49 = v94;
        sub_24FE6315C(v48, v44, &qword_27F3A54D0, &qword_24FEE1F00);
        v41((v46 + *(v81 + 36)), (v44 + *(v43 + 48)), v4);
        v25 = v72;
        v50 = v44;
        v51 = v95;
        v47(v50, v4);
        sub_24FEDE494();
        sub_24FE58B7C(v46, &qword_27F3A54D8, &qword_24FEE1F08);
        (*v75)(v49, v51);
        v52 = sub_24FEDE224();
        LaTeXMathExtractor.ExtractionType.all.unsafeMutableAddressor();
        v53 = static LaTeXMathExtractor.extract(from:extractingTypes:)(v52);

        v54 = *(v53 + 16) + 1;
        v55 = 64;
        v20 = v73;
        v27 = v93;
        v28 = v92;
        while (--v54)
        {
          v56 = *(v53 + v55);
          v55 += 40;
          if ((v56 & 1) == 0)
          {

            v59 = v71;
            swift_beginAccess();
            v60 = *(**v59 + 104);

            v60(1);

            __swift_destroy_boxed_opaque_existential_1(&v100);

            sub_24FE73150(v20, type metadata accessor for DocumentOutlineElement);
            return __swift_destroy_boxed_opaque_existential_1(&v103);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v100);
        v35 = v96;
        v6 = v65;
        v10 = v64;
        result = v74;
        v36 = v66;
        if (v96 == v70)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_26;
    }

LABEL_20:
    v57 = v68 + 1;

    v32 = v57;
    v31 = v63;
    v33 = v62;
    if (v57 == v67)
    {
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_24FE6E608(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E8, &qword_24FEE1F18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_24FEDC5A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDC774();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 24))(v13, v14);
  sub_24FEDC574();
  (*(v10 + 8))(v12, v9);
  sub_24FE6E8E4(v4);
  (*(v6 + 8))(v8, v5);
  v15 = sub_24FEDE224();
  LaTeXMathExtractor.ExtractionType.all.unsafeMutableAddressor();
  v16 = static LaTeXMathExtractor.extract(from:extractingTypes:)(v15);

  v17 = *(v16 + 16) + 1;
  v18 = 64;
  while (--v17)
  {
    v19 = *(v16 + v18);
    v18 += 40;
    if ((v19 & 1) == 0)
    {

      v20 = LaTeXMathTracker.instance.unsafeMutableAddressor();
      swift_beginAccess();
      v21 = *(**v20 + 104);

      v21(1);

      return v17 != 0;
    }
  }

  return v17 != 0;
}

uint64_t sub_24FE6E8E4@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D0, &qword_24FEE1F00);
  MEMORY[0x28223BE20](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = sub_24FEDC714();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54D8, &qword_24FEE1F08);
  MEMORY[0x28223BE20](v25);
  v26 = v24 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54E0, &qword_24FEE1F10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = sub_24FEDC5A4();
  v17 = sub_24FE73100(&qword_27F3A5508, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v27 = v16;
  v18 = v17;
  sub_24FEDE454();
  sub_24FE73100(&qword_27F3A5510, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_24FEDE194();
  if (result)
  {
    sub_24FEDE474();
    sub_24FE73100(&qword_27F3A5518, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_24FEDE184();
    if (result)
    {
      v24[0] = v1;
      v24[1] = v18;
      v20 = *(v9 + 32);
      v20(v7, v15, v8);
      v20(&v7[*(v2 + 48)], v11, v8);
      sub_24FE58B14(v7, v4, &qword_27F3A54D0, &qword_24FEE1F00);
      v21 = *(v2 + 48);
      v22 = v26;
      v20(v26, v4, v8);
      v23 = *(v9 + 8);
      v23(&v4[v21], v8);
      sub_24FE6315C(v7, v4, &qword_27F3A54D0, &qword_24FEE1F00);
      v20((v22 + *(v25 + 36)), &v4[*(v2 + 48)], v8);
      v23(v4, v8);
      sub_24FEDE494();
      return sub_24FE58B7C(v22, &qword_27F3A54D8, &qword_24FEE1F08);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE6ECF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55B8, &qword_24FEE1FD0);
  sub_24FE73044();
  return sub_24FEDDA34();
}

uint64_t sub_24FE6ED48@<X0>(uint64_t a3@<X8>)
{
  sub_24FEDDCB4();
  v4 = sub_24FEDDA04();
  v6 = v5;
  v8 = v7;
  sub_24FEDD7E4();
  v9 = sub_24FEDD994();
  v11 = v10;
  v13 = v12;

  sub_24FE56B94(v4, v6, v8 & 1);

  sub_24FEDD664();
  v40 = sub_24FEDD974();
  v15 = v14;
  v41 = v16;
  v42 = v17;
  sub_24FE56B94(v9, v11, v13 & 1);

  sub_24FEDD4B4();
  v18 = sub_24FEDD9D4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_24FEDD7E4();
  KeyPath = swift_getKeyPath();
  v74 = v22 & 1;
  sub_24FEDDF14();
  sub_24FEDD294();
  *&v51 = v18;
  *(&v51 + 1) = v20;
  LOBYTE(v52) = v22 & 1;
  *(&v52 + 1) = *v73;
  DWORD1(v52) = *&v73[3];
  *(&v52 + 1) = v24;
  LOWORD(v53) = 256;
  *(&v53 + 2) = v71;
  WORD3(v53) = v72;
  *(&v53 + 1) = KeyPath;
  *v54 = v25;
  *&v54[40] = v46;
  v28 = v45;
  v27 = v46;
  *&v54[24] = v45;
  v29 = v44;
  *&v54[8] = v44;
  *&v54[104] = v50;
  v31 = v49;
  v30 = v50;
  *&v54[88] = v49;
  *&v54[72] = v48;
  v33 = v47;
  v32 = v48;
  *&v54[56] = v47;
  v34 = v52;
  *(a3 + 32) = v51;
  *(a3 + 48) = v34;
  v35 = *&v54[32];
  *(a3 + 96) = *&v54[16];
  *(a3 + 112) = v35;
  v36 = *v54;
  *(a3 + 64) = v53;
  *(a3 + 80) = v36;
  v37 = *&v54[96];
  *(a3 + 160) = *&v54[80];
  *(a3 + 176) = v37;
  v38 = *&v54[64];
  *(a3 + 128) = *&v54[48];
  *(a3 + 144) = v38;
  v66 = v27;
  v65 = v28;
  v64 = v29;
  v43[168] = v41 & 1;
  *a3 = v40;
  *(a3 + 8) = v15;
  *(a3 + 16) = v41 & 1;
  *(a3 + 24) = v42;
  *(a3 + 192) = *&v54[112];
  v55[0] = v18;
  v55[1] = v20;
  v56 = v22 & 1;
  *v57 = *v73;
  *&v57[3] = *&v73[3];
  v58 = v24;
  v59 = 256;
  v60 = v71;
  v61 = v72;
  v62 = KeyPath;
  v63 = v25;
  v70 = v30;
  v69 = v31;
  v68 = v32;
  v67 = v33;
  sub_24FE629DC(v40, v15, v41 & 1);

  sub_24FE58B14(&v51, v43, &qword_27F3A55E0, &qword_24FEE2018);
  sub_24FE58B7C(v55, &qword_27F3A55E0, &qword_24FEE2018);
  sub_24FE56B94(v40, v15, v41 & 1);
}

uint64_t sub_24FE6F0C8@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = type metadata accessor for RateLimitTextView(0);
  v79 = *(v1 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v77 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5420, &qword_24FEE1E78);
  MEMORY[0x28223BE20](v75);
  v74 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5428, &qword_24FEE1E80);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v62 - v7;
  v8 = sub_24FEDD054();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v72 = sub_24FEDDF84();
  v15 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24FEDDE84();
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5430, &qword_24FEE1E88);
  MEMORY[0x28223BE20](v66);
  v20 = &v62 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5438, &qword_24FEE1E90);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5440, &qword_24FEE1E98);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v73 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  MEMORY[0x28223BE20](v28);
  v84 = &v62 - v29;
  sub_24FEDDE74();
  sub_24FE70A24(v14);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3D0], v8);
  v30 = sub_24FEDD044();
  v31 = *(v9 + 8);
  v31(v11, v8);
  v31(v14, v8);
  v32 = MEMORY[0x277CE13B0];
  if ((v30 & 1) == 0)
  {
    v32 = MEMORY[0x277CE13B8];
  }

  v33 = v68;
  v34 = v72;
  (*(v15 + 104))(v68, *v32, v72);
  (*(v15 + 32))(&v20[*(v66 + 36)], v33, v34);
  (*(v70 + 32))(v20, v63, v71);
  sub_24FE72698();
  v35 = v64;
  sub_24FEDDA54();
  sub_24FE58B7C(v20, &qword_27F3A5430, &qword_24FEE1E88);
  v36 = sub_24FEDD754();
  sub_24FEDD014();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  (*(v67 + 32))(v27, v35, v69);
  v45 = &v27[*(v23 + 44)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = v84;
  sub_24FE72754(v27, v84);
  v47 = v74;
  v48 = v65;
  sub_24FE6F924(v74);
  *(v47 + *(v75 + 36)) = 256;
  v49 = v77;
  sub_24FE70838(v48, v77, type metadata accessor for RateLimitTextView);
  v50 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v51 = swift_allocObject();
  sub_24FE728F8(v49, v51 + v50, type metadata accessor for RateLimitTextView);
  sub_24FE729C0();
  v52 = v76;
  sub_24FEDDB14();

  sub_24FE58B7C(v47, &qword_27F3A5420, &qword_24FEE1E78);
  v53 = v73;
  sub_24FE58B14(v46, v73, &qword_27F3A5440, &qword_24FEE1E98);
  v54 = v80;
  v55 = v81;
  v56 = *(v81 + 16);
  v57 = v82;
  v56(v80, v52, v82);
  v58 = v83;
  sub_24FE58B14(v53, v83, &qword_27F3A5440, &qword_24FEE1E98);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5480, &qword_24FEE1EB8);
  v56((v58 + *(v59 + 48)), v54, v57);
  v60 = *(v55 + 8);
  v60(v52, v57);
  sub_24FE58B7C(v84, &qword_27F3A5440, &qword_24FEE1E98);
  v60(v54, v57);
  return sub_24FE58B7C(v53, &qword_27F3A5440, &qword_24FEE1E98);
}

uint64_t sub_24FE6F924@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_24FEDD054();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v62 - v5;
  v73 = sub_24FEDDF84();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24FEDD1E4();
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24FEDD4A4();
  MEMORY[0x28223BE20](v10 - 8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5478, &qword_24FEE1EB0) - 8;
  MEMORY[0x28223BE20](v66);
  v65 = &v62 - v11;
  v12 = (v1 + *(type metadata accessor for RateLimitTextView(0) + 20));
  v13 = v12[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v12 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 32 * (v14 != 0);
  if (v14)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v75 = *v12;
  v76 = v13;

  MEMORY[0x25305A470](v15, v16);

  sub_24FEDD494();
  sub_24FEDD484();
  sub_24FEDD474();

  sub_24FEDD484();
  v17 = v12[3];
  v75 = v12[2];
  v76 = v17;
  sub_24FE56B40();

  v18 = sub_24FEDD9F4();
  v20 = v19;
  v22 = v21;
  v63 = v9;
  sub_24FEDD1D4();
  v23 = sub_24FEDD974();
  v25 = v24;
  v27 = v26;
  sub_24FE56B94(v18, v20, v22 & 1);

  (*(v64 + 8))(v63, v7);
  sub_24FEDD464();
  sub_24FE56B94(v23, v25, v27 & 1);

  sub_24FEDD484();
  sub_24FEDD4C4();
  v28 = sub_24FEDD9D4();
  v30 = v29;
  v32 = v31;
  sub_24FEDD8A4();
  v33 = sub_24FEDD994();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_24FE56B94(v28, v30, v32 & 1);

  v40 = v67;
  sub_24FE70A24(v67);
  v42 = v71;
  v41 = v72;
  v43 = v68;
  (*(v71 + 104))(v68, *MEMORY[0x277CDF3D0], v72);
  LOBYTE(v28) = sub_24FEDD044();
  v44 = *(v42 + 8);
  v44(v43, v41);
  v44(v40, v41);
  v46 = v69;
  v45 = v70;
  v47 = MEMORY[0x277CE13B0];
  if ((v28 & 1) == 0)
  {
    v47 = MEMORY[0x277CE13B8];
  }

  v48 = v73;
  (*(v70 + 104))(v69, *v47, v73);
  v49 = v65;
  (*(v45 + 32))(&v65[*(v66 + 44)], v46, v48);
  *v49 = v33;
  *(v49 + 8) = v35;
  *(v49 + 16) = v37 & 1;
  *(v49 + 24) = v39;
  v50 = sub_24FEDD7A4();
  sub_24FEDD014();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v74;
  sub_24FE6315C(v49, v74, &qword_27F3A5478, &qword_24FEE1EB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5468, &qword_24FEE1EA8);
  v61 = v59 + *(result + 36);
  *v61 = v50;
  *(v61 + 8) = v52;
  *(v61 + 16) = v54;
  *(v61 + 24) = v56;
  *(v61 + 32) = v58;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_24FE6FF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_24FEDC9E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1 + *(type metadata accessor for RateLimitTextView(0) + 20);
  sub_24FEDC9D4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_24FE58B7C(v4, &unk_27F3A4A40, &qword_24FEE08C0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = *(v9 + 24);
  v12 = *(v9 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  if (!v12)
  {
    return (*(v6 + 8))(v8, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5488, &unk_24FEE2440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0830;
  *(inited + 32) = sub_24FEDE1F4();
  *(inited + 40) = v14;
  *(inited + 48) = 1;
  *(inited + 56) = sub_24FEDE1F4();
  *(inited + 64) = v15;
  *(inited + 72) = 1;
  v16 = sub_24FE72B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5490, &qword_24FEE1EC0);
  swift_arrayDestroy();
  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v18 = v17;
    v19 = sub_24FEDC974();
    sub_24FE7023C(v16);

    v20 = sub_24FEDE144();

    [v18 openSensitiveURL:v19 withOptions:v20];

    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
}

unint64_t sub_24FE7023C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5498, &qword_24FEE1EC8);
    v2 = sub_24FEDE6D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_24FE725D8(&v22, v24);
        sub_24FE725D8(v24, v25);
        sub_24FE725D8(v25, &v23);
        result = sub_24FE71544(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_24FE725D8(&v23, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_24FE725D8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24FE705E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_24FEDCF24();
  return sub_24FEDCF44();
}

uint64_t sub_24FE7066C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24FEDCF54();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24FE70728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_24FE70838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE708A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    return sub_24FE708C4(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_24FE708C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24FE709A8@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.markdownDocumentAttributes.getter();
  result = type metadata accessor for AttributeScopes.MarkdownDocumentAttributes(0);
  *a1 = result;
  return result;
}

unint64_t sub_24FE709D8()
{
  result = qword_27F3A5390;
  if (!qword_27F3A5390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A5390);
  }

  return result;
}

uint64_t sub_24FE70A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24FEDD3E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24FE58B14(v2, &v14 - v9, &qword_27F3A52C0, &qword_24FEE1EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24FEDD054();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24FEDE4D4();
    v13 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24FE70C24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_24FE70C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55E8, &qword_24FEE2020);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_24FE70D7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_24FE70EC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24FE70F90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_24FE72CC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24FE70F90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24FE7109C(a5, a6);
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
    result = sub_24FEDE674();
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

void *sub_24FE7109C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24FE710E8(a1, a2);
  sub_24FE71218(&unk_286284510);
  return v3;
}

void *sub_24FE710E8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24FE71304(v5, 0);
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

  result = sub_24FEDE674();
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
        v10 = sub_24FEDE284();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24FE71304(v10, 0);
        result = sub_24FEDE614();
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

uint64_t sub_24FE71218(uint64_t result)
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

  result = sub_24FE71378(result, v11, 1, v3);
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

void *sub_24FE71304(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B8, &qword_24FEE1EE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24FE71378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54B8, &qword_24FEE1EE8);
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

unint64_t sub_24FE7146C(uint64_t a1)
{
  v2 = sub_24FEDE5A4();

  return sub_24FE715BC(a1, v2);
}

unint64_t sub_24FE714B0(uint64_t a1)
{
  sub_24FEDE1F4();
  sub_24FEDE904();
  sub_24FEDE254();
  v2 = sub_24FEDE924();

  return sub_24FE71684(a1, v2);
}

unint64_t sub_24FE71544(uint64_t a1, uint64_t a2)
{
  sub_24FEDE904();
  sub_24FEDE254();
  v4 = sub_24FEDE924();

  return sub_24FE71788(a1, a2, v4);
}

unint64_t sub_24FE715BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24FE725E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25305A7B0](v9, a1);
      sub_24FE72644(v9);
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

unint64_t sub_24FE71684(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24FEDE1F4();
      v8 = v7;
      if (v6 == sub_24FEDE1F4() && v8 == v9)
      {
        break;
      }

      v11 = sub_24FEDE844();

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

unint64_t sub_24FE71788(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24FEDE844())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24FE71840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5418, &unk_24FEE1E68);
    v3 = sub_24FEDE6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24FE58B14(v4, v13, &qword_27F3A4C88, &qword_24FEE0C50);
      result = sub_24FE7146C(v13);
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
      result = sub_24FE725D8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24FE7197C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54C8, &qword_24FEE1EF8);
    v3 = sub_24FEDE6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24FE58B14(v4, &v11, &qword_27F3A5398, &qword_24FEE1C48);
      v5 = v11;
      result = sub_24FE714B0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24FE725D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24FE71ADC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24FE71AF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    return sub_24FE71B04(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_24FE71B04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24FE71BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53B0, qword_24FEE1CC8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FE71CF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53B0, qword_24FEE1CC8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24FE71E28(uint64_t a1)
{
  type metadata accessor for GenerativeRichTextResultSnippetModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DocumentViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_24FE72568(319, &qword_27F3A53C8, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_24FE71F7C(319, &qword_27F3A53D0, &qword_27F3A53D8, &qword_24FEE1D08);
        if (v4 <= 0x3F)
        {
          sub_24FE71F7C(319, &qword_27F3A53E0, &qword_27F3A53E8, &qword_24FEE1D10);
          if (v5 <= 0x3F)
          {
            sub_24FE71FD0();
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

void sub_24FE71F7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24FEDE3A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24FE71FD0()
{
  if (!qword_27F3A53F0)
  {
    v0 = sub_24FEDE554();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A53F0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MarkdownDocument0A17FontConfigurationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24FE72054(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24FE720B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24FE72124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24FE7216C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24FE721C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5338, &qword_24FEE1BA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5330, &qword_24FEE1B98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5328, &qword_24FEE1B90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5348, &qword_24FEE1BB0);
  sub_24FE58928(&qword_27F3A5350, &qword_27F3A5328, &qword_24FEE1B90, MEMORY[0x277CE1198]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FE72310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53F8, &qword_24FEE1DF8);
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

uint64_t sub_24FE723F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53F8, &qword_24FEE1DF8);
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

void sub_24FE724D8(uint64_t a1)
{
  sub_24FE72568(319, &qword_27F3A5410, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24FE72568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24FEDD074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *sub_24FE725D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24FE72698()
{
  result = qword_27F3A5448;
  if (!qword_27F3A5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5430, &qword_24FEE1E88);
    sub_24FE73100(&qword_27F3A5450, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5448);
  }

  return result;
}

uint64_t sub_24FE72754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5440, &qword_24FEE1E98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE727C4()
{
  v1 = *(type metadata accessor for RateLimitTextView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24FEDD054();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE728F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE72960()
{
  v1 = *(type metadata accessor for RateLimitTextView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE6FF2C(v2);
}

unint64_t sub_24FE729C0()
{
  result = qword_27F3A5458;
  if (!qword_27F3A5458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5420, &qword_24FEE1E78);
    sub_24FE72A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5458);
  }

  return result;
}

unint64_t sub_24FE72A4C()
{
  result = qword_27F3A5460;
  if (!qword_27F3A5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5468, &qword_24FEE1EA8);
    sub_24FE72AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5460);
  }

  return result;
}

unint64_t sub_24FE72AD8()
{
  result = qword_27F3A5470;
  if (!qword_27F3A5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5478, &qword_24FEE1EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5470);
  }

  return result;
}

unint64_t sub_24FE72B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A54A0, &qword_24FEE1ED0);
    v3 = sub_24FEDE6D4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24FE71544(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
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

uint64_t sub_24FE72CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24FE72D1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24FE72D80()
{
  result = qword_27F3A5560;
  if (!qword_27F3A5560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5550, &qword_24FEE1F70);
    sub_24FE72E38();
    sub_24FE58928(&qword_27F3A5590, &qword_27F3A5598, &qword_24FEE1F88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5560);
  }

  return result;
}

unint64_t sub_24FE72E38()
{
  result = qword_27F3A5568;
  if (!qword_27F3A5568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5548, &qword_24FEE1F68);
    sub_24FE72EF0();
    sub_24FE58928(&qword_27F3A5580, &qword_27F3A5588, &qword_24FEE1F80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5568);
  }

  return result;
}

unint64_t sub_24FE72EF0()
{
  result = qword_27F3A5570;
  if (!qword_27F3A5570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5540, &qword_24FEE1F60);
    sub_24FE58928(&qword_27F3A5578, &qword_27F3A5538, &qword_24FEE1F58, MEMORY[0x277CDD870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5570);
  }

  return result;
}

double sub_24FE7300C(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 297) = 0u;
  return result;
}

unint64_t sub_24FE73044()
{
  result = qword_27F3A55C8;
  if (!qword_27F3A55C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A55B8, &qword_24FEE1FD0);
    sub_24FE73100(&qword_27F3A55D0, type metadata accessor for AttributionsTextView, &protocol conformance descriptor for AttributionsTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A55C8);
  }

  return result;
}

uint64_t sub_24FE73100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE73150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FE73214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE73298(uint64_t a1)
{
  v2 = sub_24FE7344C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE732D4(uint64_t a1)
{
  v2 = sub_24FE7344C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeSearchWebButtonSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5600, &qword_24FEE2030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7344C();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE7344C()
{
  result = qword_27F3A5608;
  if (!qword_27F3A5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5608);
  }

  return result;
}

uint64_t GenerativeSearchWebButtonSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5610, &qword_24FEE2038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7344C();
  sub_24FEDE934();
  if (!v2)
  {
    v9 = sub_24FEDE754();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE73634(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5600, &qword_24FEE2030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7344C();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE73794()
{
  result = qword_27F3A5618;
  if (!qword_27F3A5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5618);
  }

  return result;
}

unint64_t sub_24FE737EC()
{
  result = qword_27F3A5620;
  if (!qword_27F3A5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5620);
  }

  return result;
}

unint64_t sub_24FE73844()
{
  result = qword_27F3A5628;
  if (!qword_27F3A5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5628);
  }

  return result;
}

uint64_t GenerativeDismissalView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeDismissalView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDD4B4();
  v8 = sub_24FEDD9D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_24FE73C04(v2, v7);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_24FE73C6C(v7, v16 + v15);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = sub_24FE73CD0;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t type metadata accessor for GenerativeDismissalView(uint64_t a1)
{
  result = qword_27F3A5648;
  if (!qword_27F3A5648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE73A50()
{
  v0 = sub_24FEDE0B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F3A46A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24FEDCF54();
  __swift_project_value_buffer(v4, qword_27F3A5630);
  v5 = sub_24FEDCF34();
  v6 = sub_24FEDE4B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24FE50000, v5, v6, "Dismissing Siri by sending SAUICloseAssistant", v7, 2u);
    MEMORY[0x25305B320](v7, -1, -1);
  }

  sub_24FEDE044();
  v8 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_24FEDE094();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24FE73C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeDismissalView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE73C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeDismissalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE73CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDD4B4();
  v8 = sub_24FEDD9D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_24FE73C04(v3, v7);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_24FE73C6C(v7, v16 + v15);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = sub_24FE7429C;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_24FE73E3C()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A5630);
  __swift_project_value_buffer(v0, qword_27F3A5630);
  sub_24FEDCF24();
  return sub_24FEDCF44();
}

uint64_t static Logger.dismissalView.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A46A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24FEDCF54();
  v3 = __swift_project_value_buffer(v2, qword_27F3A5630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24FE73F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDE064();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE74008(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDE064();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE74078(uint64_t a1)
{
  result = sub_24FEDE064();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24FE740E8()
{
  result = qword_27F3A5658;
  if (!qword_27F3A5658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5660, &unk_24FEE22D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5658);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for GenerativeDismissalView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24FEDE064();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE74238()
{
  type metadata accessor for GenerativeDismissalView(0);

  return sub_24FE73A50();
}

uint64_t AttributionsTextView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = sub_24FEDDFD4();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v33 - v7;
  v41 = sub_24FEDE034();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5668, &qword_24FEE2318);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for AttributionsTextView(0);
  v12 = (a2 + v11[5]);
  v46 = 0;
  sub_24FEDDD34();
  v13 = v48;
  *v12 = v47;
  v12[1] = v13;
  v14 = a2 + v11[6];
  sub_24FE765DC(a1, v14, type metadata accessor for GenerativeResultAttributionSnippetModel);
  v15 = *(v14 + 6);
  v16 = *(v15 + 16);
  if (v16)
  {
    v33 = v11;
    v34 = a1;
    v35 = a2;
    v47 = MEMORY[0x277D84F90];
    sub_24FE76038(0, v16, 0);
    v17 = v47;
    v37 = v8 + 32;
    v38 = (v4 + 104);
    v36 = *MEMORY[0x277D63AD0];
    v18 = v15 + 56;
    v39 = v10;
    v40 = v8;
    do
    {
      v45 = *(v18 - 24);
      v19 = objc_allocWithZone(MEMORY[0x277D479F0]);

      v20 = [v19 init];
      v21 = v44;
      sub_24FEDC9D4();
      v22 = sub_24FEDC9E4();
      v23 = *(v22 - 8);
      v24 = 0;
      if ((*(v23 + 48))(v21, 1, v22) != 1)
      {
        v25 = v44;
        v24 = sub_24FEDC974();
        (*(v23 + 8))(v25, v22);
      }

      [v20 setPunchOutUri_];

      v27 = v42;
      v26 = v43;
      *v42 = v20;
      (*v38)(v27, v36, v26);

      v28 = v39;
      sub_24FEDE024();

      v47 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      v31 = v40;
      if (v30 >= v29 >> 1)
      {
        sub_24FE76038((v29 > 1), v30 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v30 + 1;
      (*(v31 + 32))(v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v28, v41);
      v18 += 32;
      --v16;
    }

    while (v16);
    result = sub_24FE76058(v34);
    a2 = v35;
    v11 = v33;
  }

  else
  {
    result = sub_24FE76058(a1);
    v17 = MEMORY[0x277D84F90];
  }

  *(a2 + v11[7]) = v17;
  return result;
}

uint64_t AttributionsTextView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_24FEDDF14();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5670, &qword_24FEE2320);
  sub_24FE747A4(v2, (a2 + *(v5 + 44)));
  v6 = sub_24FEDD8A4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5678, &qword_24FEE2358);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_24FE747A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v148 = a2;
  v129 = sub_24FEDDFD4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = (&v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56C8, &qword_24FEE2408);
  v146 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v130 = &v126 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D0, &qword_24FEE2410);
  MEMORY[0x28223BE20](v5 - 8);
  v147 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v142 = &v126 - v8;
  v153 = type metadata accessor for AttributionsTextView(0);
  v138 = *(v153 - 1);
  v137 = *(v138 + 64);
  MEMORY[0x28223BE20](v153);
  v135 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D8, &qword_24FEE2418);
  v140 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v126 - v10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56E0, &qword_24FEE2420);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v154 = &v126 - v13;
  v152 = a1;
  v134 = sub_24FE754C0();
  v15 = v14;
  v17 = v16;
  v133 = v18;
  v19 = sub_24FE758E8();
  v21 = v20;
  v23 = v22;
  LODWORD(v156) = sub_24FEDD664();
  v24 = sub_24FEDD974();
  v26 = v25;
  LOBYTE(a1) = v27;
  sub_24FE56B94(v19, v21, v23 & 1);

  v28 = v134;
  v151 = sub_24FEDD984();
  v150 = v29;
  v31 = v30;
  v149 = v32;
  sub_24FE56B94(v24, v26, a1 & 1);

  sub_24FE56B94(v28, v15, v17 & 1);

  v156 = 0x20A280E220;
  v157 = 0xA500000000000000;
  sub_24FE56B40();
  v33 = sub_24FEDD9F4();
  v35 = v34;
  LOBYTE(v24) = v36;
  sub_24FEDD814();
  v37 = sub_24FEDD8E4();
  v39 = v38;
  LOBYTE(v28) = v40;
  sub_24FE56B94(v33, v35, v24 & 1);

  LODWORD(v156) = sub_24FEDD664();
  v41 = sub_24FEDD974();
  v43 = v42;
  v45 = v44;
  sub_24FE56B94(v37, v39, v28 & 1);

  v46 = v151;
  v47 = v150;
  v133 = sub_24FEDD984();
  v132 = v48;
  LOBYTE(v37) = v49;
  v131 = v50;
  sub_24FE56B94(v41, v43, v45 & 1);

  sub_24FE56B94(v46, v47, v31 & 1);

  v51 = v152;
  v52 = v152 + v153[6];
  v53 = *(v52 + 40);
  v156 = *(v52 + 32);
  v157 = v53;

  v54 = sub_24FEDD9F4();
  v56 = v55;
  LOBYTE(v41) = v57;
  sub_24FEDD814();
  v58 = sub_24FEDD8E4();
  v60 = v59;
  LOBYTE(v39) = v61;
  sub_24FE56B94(v54, v56, v41 & 1);

  LODWORD(v156) = sub_24FEDD664();
  v62 = sub_24FEDD974();
  v64 = v63;
  LOBYTE(v41) = v65;
  sub_24FE56B94(v58, v60, v39 & 1);

  v66 = v133;
  v67 = v132;
  v150 = sub_24FEDD984();
  v149 = v68;
  LODWORD(v134) = v69;
  v151 = v70;
  sub_24FE56B94(v62, v64, v41 & 1);

  sub_24FE56B94(v66, v67, v37 & 1);

  v71 = sub_24FE754C0();
  v73 = v72;
  LOBYTE(v66) = v74;
  v156 = sub_24FEDDC44();
  v75 = sub_24FEDD974();
  v132 = v75;
  v77 = v76;
  LOBYTE(v60) = v78;
  v80 = v79;
  v133 = v79;
  sub_24FE56B94(v71, v73, v66 & 1);

  v156 = v75;
  v157 = v77;
  v158 = v60 & 1;
  v159 = v80;
  v81 = v135;
  sub_24FE765DC(v51, v135, type metadata accessor for AttributionsTextView);
  v82 = (*(v138 + 80) + 16) & ~*(v138 + 80);
  v83 = swift_allocObject();
  sub_24FE76648(v81, v83 + v82);
  v84 = v136;
  sub_24FEDDB14();

  sub_24FE56B94(v132, v77, v60 & 1);

  v85 = v152;
  sub_24FE765DC(v152, v81, type metadata accessor for AttributionsTextView);
  v86 = swift_allocObject();
  sub_24FE76648(v81, v86 + v82);
  v156 = MEMORY[0x277CE0BD8];
  v157 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v87 = v139;
  sub_24FEDDA74();

  (*(v140 + 8))(v84, v87);
  v88 = *(v85 + v153[7]);
  if (*(v88 + 16))
  {
    v89 = sub_24FE758E8();
    v91 = v90;
    v93 = v92;
    v94 = v127;
    *v127 = v88;
    v95 = v128;
    v96 = v129;
    (*(v128 + 104))(v94, *MEMORY[0x277D63AD8], v129);

    v97 = sub_24FEDD8D4();
    v99 = v98;
    LODWORD(v140) = v100;
    v102 = v101;
    sub_24FE56B94(v89, v91, v93 & 1);

    (*(v95 + 8))(v94, v96);
    v156 = v97;
    v157 = v99;
    LOBYTE(v89) = v140 & 1;
    v158 = v140 & 1;
    v159 = v102;
    v103 = v130;
    sub_24FEDDA14();
    sub_24FE56B94(v97, v99, v89);

    v104 = sub_24FEDDC44();
    *(v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56E8, &qword_24FEE2428) + 36)) = v104;
    v105 = (v152 + v153[5]);
    v106 = *v105;
    v107 = v105[1];
    v156 = v106;
    v157 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56F0, &qword_24FEE2430);
    sub_24FEDDD44();
    v108 = v145;
    v109 = (v103 + *(v145 + 36));
    *v109 = v155;
    v109[1] = 0;
    v110 = v142;
    sub_24FE76968(v103, v142);
    v111 = 0;
    v112 = v108;
  }

  else
  {
    v110 = v142;
    v112 = v145;
    v111 = 1;
  }

  (*(v146 + 56))(v110, v111, 1, v112);
  v113 = v143;
  v114 = *(v143 + 16);
  v115 = v141;
  v116 = v144;
  v114(v141, v154, v144);
  v117 = v147;
  sub_24FE769D8(v110, v147);
  v118 = v148;
  v119 = v149;
  *v148 = v150;
  v118[1] = v119;
  v120 = v134 & 1;
  *(v118 + 16) = v134 & 1;
  v118[3] = v151;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56F8, &qword_24FEE2438);
  v114(v118 + *(v121 + 48), v115, v116);
  sub_24FE769D8(v117, v118 + *(v121 + 64));
  v122 = v150;
  v123 = v149;
  sub_24FE629DC(v150, v149, v120);

  sub_24FE76A48(v110);
  v124 = *(v113 + 8);
  v124(v154, v116);
  sub_24FE76A48(v117);
  v124(v115, v116);
  sub_24FE56B94(v122, v123, v120);
}

uint64_t sub_24FE754C0()
{
  v1 = sub_24FEDD1E4();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (v0 + *(type metadata accessor for AttributionsTextView(0) + 24));
  if (v3[3])
  {

    v58 = sub_24FEDDCE4();

    v4 = sub_24FEDDA04();
    v6 = v5;
    v8 = v7;
    sub_24FEDD814();
    v9 = sub_24FEDD8E4();
    v11 = v10;
    v13 = v12;
    v54 = v14;
    sub_24FE56B94(v4, v6, v8 & 1);

    sub_24FEDD4B4();
    v15 = sub_24FEDD9D4();
    v17 = v16;
    LOBYTE(v6) = v18;
    v19 = sub_24FEDD984();
    v56 = v20;
    v57 = v19;
    v55 = v21;
    v62 = v22;
    sub_24FE56B94(v15, v17, v6 & 1);

    sub_24FE56B94(v9, v11, v13 & 1);

    v23 = v3[1];
    v63 = *v3;
    v64 = v23;
    sub_24FE56B40();

    v24 = sub_24FEDD9F4();
    v26 = v25;
    LOBYTE(v17) = v27;
    sub_24FEDD824();
    v28 = sub_24FEDD8E4();
    v30 = v29;
    LOBYTE(v4) = v31;
    v54 = v32;
    sub_24FE56B94(v24, v26, v17 & 1);

    LOBYTE(v6) = v55;
    v34 = v56;
    v33 = v57;
    v35 = sub_24FEDD984();
    v37 = v36;
    v39 = v38;

    sub_24FE56B94(v28, v30, v4 & 1);

    v40 = v6 & 1;
  }

  else
  {
    v41 = v3[1];
    v63 = *v3;
    v64 = v41;
    sub_24FE56B40();

    v33 = sub_24FEDD9F4();
    v34 = v42;
    v44 = v43;
    v46 = v45;
    sub_24FEDD824();
    v62 = v46;
    v35 = sub_24FEDD8E4();
    v37 = v47;
    v39 = v48;
    v40 = v44 & 1;
  }

  sub_24FE56B94(v33, v34, v40);

  sub_24FE629DC(v35, v37, v39 & 1);

  v49 = v59;
  sub_24FEDD1D4();
  v50 = v61;
  v51 = sub_24FEDD974();
  sub_24FE56B94(v35, v37, v39 & 1);

  sub_24FE56B94(v35, v37, v39 & 1);

  (*(v60 + 8))(v49, v50);
  return v51;
}

uint64_t sub_24FE758E8()
{
  v1 = sub_24FEDD4A4();
  MEMORY[0x28223BE20](v1 - 8);
  if (*(*(v0 + *(type metadata accessor for AttributionsTextView(0) + 28)) + 16))
  {
    sub_24FEDD494();
    sub_24FEDD484();
    sub_24FEDD454();
    sub_24FEDD484();
    sub_24FEDD4C4();
    if (qword_27F3A4678 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v2 = qword_27F3B30E0;
  return sub_24FEDD9D4();
}

uint64_t sub_24FE75B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20[-v3];
  v5 = sub_24FEDC9E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1 + *(type metadata accessor for AttributionsTextView(0) + 24);
  v10 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  sub_24FE76AB0(v9 + *(v10 + 32), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_24FE76B20(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5488, &unk_24FEE2440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0830;
  *(inited + 32) = sub_24FEDE1F4();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_24FEDE1F4();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_24FE72B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5490, &qword_24FEE1EC0);
  swift_arrayDestroy();
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24FEDC974();
    sub_24FE7023C(v15);

    v19 = sub_24FEDE144();

    [v17 openURL:v18 withOptions:v19];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24FE75DF8(uint64_t a1, double a2)
{
  type metadata accessor for AttributionsTextView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56F0, &qword_24FEE2430);
  return sub_24FEDDD54();
}

uint64_t sub_24FE75E70@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_24FEDDF14();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5670, &qword_24FEE2320);
  sub_24FE747A4(v2, (a2 + *(v5 + 44)));
  v6 = sub_24FEDD8A4();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5678, &qword_24FEE2358);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_24FE75F20(uint64_t a1)
{
  v2 = sub_24FEDD164();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24FEDD3A4();
}

uint64_t type metadata accessor for AttributionsTextView(uint64_t a1)
{
  result = qword_27F3A5688;
  if (!qword_27F3A5688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_24FE76038(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FE76B88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24FE76058(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE760EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5680, qword_24FEE23B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24FE76218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5680, qword_24FEE23B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24FE7632C(uint64_t a1)
{
  sub_24FE76490(319, &qword_27F3A5698, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24FE76440();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GenerativeResultAttributionSnippetModel(319);
      if (v3 <= 0x3F)
      {
        sub_24FE76490(319, &qword_27F3A56A8, MEMORY[0x277D63CE8], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24FE76440()
{
  if (!qword_27F3A56A0)
  {
    v0 = sub_24FEDDD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A56A0);
    }
  }
}

void sub_24FE76490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24FE764F8()
{
  result = qword_27F3A56B0;
  if (!qword_27F3A56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5678, &qword_24FEE2358);
    sub_24FE58928(&qword_27F3A56B8, &qword_27F3A56C0, &unk_24FEE23F8, MEMORY[0x277CE11A8]);
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A56B0);
  }

  return result;
}

uint64_t sub_24FE765DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE76648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionsTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE766AC()
{
  v1 = *(type metadata accessor for AttributionsTextView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE75B04(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for AttributionsTextView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5668, &qword_24FEE2318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24FEDD164();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);

  v7 = *(type metadata accessor for GenerativeResultAttributionSnippetModel(0) + 32);
  v8 = sub_24FEDC9E4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE768F0(double a1)
{
  v3 = *(type metadata accessor for AttributionsTextView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24FE75DF8(v4, a1);
}

uint64_t sub_24FE76968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56C8, &qword_24FEE2408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE769D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D0, &qword_24FEE2410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE76A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A56D0, &qword_24FEE2410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE76AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE76B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24FE76B88(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5700, &unk_24FEE2450);
  v10 = *(sub_24FEDE034() - 8);
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
  v15 = *(sub_24FEDE034() - 8);
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

uint64_t sub_24FE76D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE76E04(uint64_t a1)
{
  v2 = sub_24FE76FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE76E40(uint64_t a1)
{
  v2 = sub_24FE76FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeNoResultSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5708, &qword_24FEE2460);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE76FB8();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE76FB8()
{
  result = qword_27F3A5710;
  if (!qword_27F3A5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5710);
  }

  return result;
}

uint64_t GenerativeNoResultSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5718, &qword_24FEE2468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE76FB8();
  sub_24FEDE934();
  if (!v2)
  {
    v9 = sub_24FEDE754();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE771A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5708, &qword_24FEE2460);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE76FB8();
  sub_24FEDE944();
  sub_24FEDE7E4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE77300()
{
  result = qword_27F3A5720;
  if (!qword_27F3A5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5720);
  }

  return result;
}

unint64_t sub_24FE77358()
{
  result = qword_27F3A5728;
  if (!qword_27F3A5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5728);
  }

  return result;
}

unint64_t sub_24FE773B0()
{
  result = qword_27F3A5730;
  if (!qword_27F3A5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5730);
  }

  return result;
}

uint64_t sub_24FE77414@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24FE77444(uint64_t a1)
{
  v2 = sub_24FE775D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE77480(uint64_t a1)
{
  v2 = sub_24FE775D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeDismissalSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5738, &qword_24FEE2670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE775D0();
  sub_24FEDE944();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE775D0()
{
  result = qword_27F3A5740;
  if (!qword_27F3A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5740);
  }

  return result;
}

uint64_t sub_24FE7767C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5738, &qword_24FEE2670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE775D0();
  sub_24FEDE944();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24FE777B4()
{
  result = qword_27F3A5748;
  if (!qword_27F3A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5748);
  }

  return result;
}

unint64_t sub_24FE7780C()
{
  result = qword_27F3A5750;
  if (!qword_27F3A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5750);
  }

  return result;
}

uint64_t GenerativeResultAttributionSnippetModel.init(provider:iconName:disclaimer:attributions:punchOutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v10 = a9 + *(type metadata accessor for GenerativeResultAttributionSnippetModel(0) + 32);

  return sub_24FE77904(a8, v10);
}

uint64_t type metadata accessor for GenerativeResultAttributionSnippetModel(uint64_t a1)
{
  result = qword_27F3A57B0;
  if (!qword_27F3A57B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE77904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE77974()
{
  v1 = *v0;
  v2 = 0x72656469766F7270;
  v3 = 0x6D69616C63736964;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x74754F68636E7570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E6E6F6369;
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

uint64_t sub_24FE77A24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE79048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE77A4C(uint64_t a1)
{
  v2 = sub_24FE77D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE77A88(uint64_t a1)
{
  v2 = sub_24FE77D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeResultAttributionSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5758, &qword_24FEE27F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE77D84();
  sub_24FEDE944();
  v14 = 0;
  sub_24FEDE7E4();
  if (!v2)
  {
    v13 = 1;
    sub_24FEDE7B4();
    v12 = 2;
    sub_24FEDE7E4();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
    sub_24FE78284(&qword_27F3A5770, sub_24FE77DD8, MEMORY[0x277D83948]);
    sub_24FEDE804();
    type metadata accessor for GenerativeResultAttributionSnippetModel(0);
    v10[14] = 4;
    sub_24FEDC9E4();
    sub_24FE78A20(&qword_27F3A51C8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24FEDE7D4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24FE77D84()
{
  result = qword_27F3A5760;
  if (!qword_27F3A5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5760);
  }

  return result;
}

unint64_t sub_24FE77DD8()
{
  result = qword_27F3A5778;
  if (!qword_27F3A5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5778);
  }

  return result;
}

uint64_t GenerativeResultAttributionSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5780, &qword_24FEE2808);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE77D84();
  v22 = v9;
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v20;
  v28 = 0;
  *v12 = sub_24FEDE754();
  v12[1] = v14;
  v18 = v14;
  v27 = 1;
  v12[2] = sub_24FEDE724();
  v12[3] = v15;
  v26 = 2;
  v12[4] = sub_24FEDE754();
  v12[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
  v25 = 3;
  sub_24FE78284(&qword_27F3A5788, sub_24FE782FC, MEMORY[0x277D83978]);
  sub_24FEDE774();
  v12[6] = v23;
  sub_24FEDC9E4();
  v24 = 4;
  sub_24FE78A20(&qword_27F3A51F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_24FEDE744();
  (*(v13 + 8))(v22, v21);
  sub_24FE77904(v6, v12 + *(v10 + 32));
  sub_24FE78350(v12, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24FE76058(v12);
}

uint64_t sub_24FE78284(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5768, &qword_24FEE2800);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE782FC()
{
  result = qword_27F3A5790;
  if (!qword_27F3A5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5790);
  }

  return result;
}

uint64_t sub_24FE78350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeResultAttributionSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

GenerativeAssistantUI::Attribution __swiftcall Attribution.init(displayUrl:url:)(Swift::String displayUrl, Swift::String url)
{
  *v2 = displayUrl;
  v2[1] = url;
  result.url = url;
  result.displayUrl = displayUrl;
  return result;
}

uint64_t sub_24FE78408()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x5579616C70736964;
  }
}

uint64_t sub_24FE78440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5579616C70736964 && a2 == 0xEA00000000006C72;
  if (v6 || (sub_24FEDE844() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24FEDE844();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24FE78530(uint64_t a1)
{
  v2 = sub_24FE7873C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7856C(uint64_t a1)
{
  v2 = sub_24FE7873C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Attribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5798, &qword_24FEE2810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7873C();
  sub_24FEDE944();
  v12 = 0;
  v8 = v10[3];
  sub_24FEDE7E4();
  if (!v8)
  {
    v11 = 1;
    sub_24FEDE7E4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24FE7873C()
{
  result = qword_27F3A57A0;
  if (!qword_27F3A57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57A0);
  }

  return result;
}

uint64_t Attribution.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A57A8, &qword_24FEE2818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7873C();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24FEDE754();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24FEDE754();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE78A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE78AAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE78B7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE78C2C(uint64_t a1)
{
  sub_24FE685A0(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24FE685A0(319, &qword_27F3A57C0, &type metadata for Attribution, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24FE78D1C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24FE78D1C(uint64_t a1)
{
  if (!qword_27F3A4A70)
  {
    sub_24FEDC9E4();
    v1 = sub_24FEDE554();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A4A70);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24FE78D80(uint64_t a1, int a2)
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

uint64_t sub_24FE78DC8(uint64_t result, int a2, int a3)
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

unint64_t sub_24FE78E3C()
{
  result = qword_27F3A57C8;
  if (!qword_27F3A57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57C8);
  }

  return result;
}

unint64_t sub_24FE78E94()
{
  result = qword_27F3A57D0;
  if (!qword_27F3A57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57D0);
  }

  return result;
}

unint64_t sub_24FE78EEC()
{
  result = qword_27F3A57D8;
  if (!qword_27F3A57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57D8);
  }

  return result;
}

unint64_t sub_24FE78F44()
{
  result = qword_27F3A57E0;
  if (!qword_27F3A57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57E0);
  }

  return result;
}

unint64_t sub_24FE78F9C()
{
  result = qword_27F3A57E8;
  if (!qword_27F3A57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57E8);
  }

  return result;
}

unint64_t sub_24FE78FF4()
{
  result = qword_27F3A57F0;
  if (!qword_27F3A57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A57F0);
  }

  return result;
}

uint64_t sub_24FE79048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74754F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double GenerativeRichTextResultSnippetModel.init(results:partnerName:iconName:contentDisclaimer:attributions:punchOutURL:criticalDisclaimers:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v12 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE77904(a10, a9 + v12[9]);
  *(a9 + v12[10]) = a11;
  v13 = (a9 + v12[11]);
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = 0u;
  result = 0.0;
  *(a9 + v12[12]) = xmmword_24FEE2B90;
  return result;
}

double GenerativeRichTextResultSnippetModel.init(results:partnerName:iconName:contentDisclaimer:attributions:punchOutURL:criticalDisclaimers:modelDisclaimer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 32);
  v14 = *(a12 + 40);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v15 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE77904(a10, a9 + v15[9]);
  *(a9 + v15[10]) = a11;
  v16 = a9 + v15[11];
  v17 = *(a12 + 16);
  *v16 = *a12;
  *(v16 + 1) = v17;
  *(v16 + 4) = v13;
  *(v16 + 5) = v14;
  result = 0.0;
  *(a9 + v15[12]) = xmmword_24FEE2B90;
  return result;
}

__n128 GenerativeRichTextResultSnippetModel.init(results:partnerName:iconName:contentDisclaimer:attributions:punchOutURL:criticalDisclaimers:modelDisclaimer:visualIntelligenceImage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a12 + 32);
  v16 = *(a12 + 40);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v17 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  sub_24FE77904(a10, a9 + v17[9]);
  *(a9 + v17[10]) = a11;
  v18 = a9 + v17[11];
  result = *a12;
  v20 = *(a12 + 16);
  *v18 = *a12;
  *(v18 + 1) = v20;
  *(v18 + 4) = v15;
  *(v18 + 5) = v16;
  v21 = (a9 + v17[12]);
  *v21 = a13;
  v21[1] = a14;
  return result;
}

unint64_t sub_24FE793F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73746C75736572;
    v6 = 0x656D614E6E6F6369;
    if (a1 != 2)
    {
      v6 = 0x6D69616C63736964;
    }

    if (a1)
    {
      v5 = 0x72656469766F7270;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x7369446C65646F6DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7475626972747461;
    if (a1 != 4)
    {
      v3 = 0x74754F68636E7570;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24FE7953C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE7D0FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE79570(uint64_t a1)
{
  v2 = sub_24FE79A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE795AC(uint64_t a1)
{
  v2 = sub_24FE79A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeRichTextResultSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A57F8, &qword_24FEE2BA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE79A90();
  sub_24FEDE944();
  v20 = *v3;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5808, &unk_24FEE2BB0);
  sub_24FE7A2A8(&qword_27F3A5810, &qword_27F3A5818, &protocol conformance descriptor for RichContentResultSegment, MEMORY[0x277D83948]);
  sub_24FEDE804();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_24FEDE7E4();
    LOBYTE(v20) = 2;
    sub_24FEDE7B4();
    LOBYTE(v20) = 3;
    sub_24FEDE7E4();
    v20 = v3[7];
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
    sub_24FE78284(&qword_27F3A5770, sub_24FE77DD8, MEMORY[0x277D83948]);
    sub_24FEDE804();
    v9 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
    LOBYTE(v20) = 5;
    sub_24FEDC9E4();
    sub_24FE79B04(&qword_27F3A51C8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24FEDE7D4();
    v20 = *(v3 + v9[10]);
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5820, &qword_24FEE2BC0);
    sub_24FE7A344(&qword_27F3A5828, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24FEDE804();
    v10 = (v3 + v9[11]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v20 = *v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = 7;
    sub_24FE63DA4(v20, v11, v12, v13, v14, v15);
    sub_24FE63DF4();
    sub_24FEDE7D4();
    sub_24FE63E48(v20, v21, v22, v23, v24, v25);
    v16 = (v3 + v9[12]);
    v17 = v16[1];
    v20 = *v16;
    v21 = v17;
    v26 = 8;
    sub_24FE62C80(v20, v17);
    sub_24FE666C0();
    sub_24FEDE7D4();
    sub_24FE62CE8(v20, v21);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24FE79A90()
{
  result = qword_27F3A5800;
  if (!qword_27F3A5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5800);
  }

  return result;
}

uint64_t sub_24FE79B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void GenerativeRichTextResultSnippetModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5830, &qword_24FEE2BC8);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24FE79A90();
  v15 = v10;
  sub_24FEDE934();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v16 = v6;
    v30 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5808, &unk_24FEE2BB0);
    v38 = 0;
    sub_24FE7A2A8(&qword_27F3A5838, &qword_27F3A5840, &protocol conformance descriptor for RichContentResultSegment, MEMORY[0x277D83978]);
    v17 = v32;
    v18 = v15;
    sub_24FEDE774();
    v19 = v30;
    *v30 = v35;
    LOBYTE(v35) = 1;
    v19[1] = sub_24FEDE754();
    v19[2] = v20;
    v29 = v20;
    LOBYTE(v35) = 2;
    v19[3] = sub_24FEDE724();
    v19[4] = v21;
    LOBYTE(v35) = 3;
    v19[5] = sub_24FEDE754();
    v19[6] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5768, &qword_24FEE2800);
    v38 = 4;
    sub_24FE78284(&qword_27F3A5788, sub_24FE782FC, MEMORY[0x277D83978]);
    sub_24FEDE774();
    v23 = v30;
    v30[7] = v35;
    sub_24FEDC9E4();
    LOBYTE(v35) = 5;
    sub_24FE79B04(&qword_27F3A51F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_24FEDE744();
    sub_24FE77904(v16, v23 + v11[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5820, &qword_24FEE2BC0);
    v38 = 6;
    sub_24FE7A344(&qword_27F3A5848, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_24FEDE774();
    *(v23 + v11[10]) = v35;
    v38 = 7;
    sub_24FE641D8();
    sub_24FEDE744();
    v24 = v33;
    v25 = (v23 + v11[11]);
    v26 = v36;
    *v25 = v35;
    v25[1] = v26;
    v25[2] = v37;
    v38 = 8;
    sub_24FE66AE0();
    sub_24FEDE744();
    (*(v24 + 8))(v18, v17);
    v28 = v30;
    v27 = v31;
    *(v30 + v11[12]) = v35;
    sub_24FE7AF54(v28, v27, type metadata accessor for GenerativeRichTextResultSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_24FE7A3B0(v28);
  }
}

uint64_t sub_24FE7A2A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5808, &unk_24FEE2BB0);
    sub_24FE79B04(a2, type metadata accessor for RichContentResultSegment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FE7A344(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5820, &qword_24FEE2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FE7A3B0(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE7A43C()
{
  v1 = 0x7461446567616D69;
  if (*v0 != 1)
  {
    v1 = 0x61746144656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_24FE7A498@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE7D400(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE7A4C0(uint64_t a1)
{
  v2 = sub_24FE7AF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A4FC(uint64_t a1)
{
  v2 = sub_24FE7AF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE7A538()
{
  v1 = 7107189;
  v2 = 0x656D614E656C6966;
  if (*v0 != 2)
  {
    v2 = 1702521203;
  }

  if (*v0)
  {
    v1 = 0x65707954656D696DLL;
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

uint64_t sub_24FE7A5A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE7D51C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE7A5D8(uint64_t a1)
{
  v2 = sub_24FE7AFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A614(uint64_t a1)
{
  v2 = sub_24FE7AFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE7A650(uint64_t a1)
{
  v2 = sub_24FE7B010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A68C(uint64_t a1)
{
  v2 = sub_24FE7B010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE7A6C8(uint64_t a1)
{
  v2 = sub_24FE7B064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7A704(uint64_t a1)
{
  v2 = sub_24FE7B064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RichContentResultSegment.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5850, &qword_24FEE2BD0);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v40 - v3;
  v4 = sub_24FEDC9E4();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5858, &qword_24FEE2BD8);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5860, &qword_24FEE2BE0);
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for RichContentResultSegment(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5868, &unk_24FEE2BE8);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = &v40 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7AF00();
  v52 = v16;
  sub_24FEDE944();
  sub_24FE7AF54(v50, v14, type metadata accessor for RichContentResultSegment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v14;
      v19 = v14[1];
      LOBYTE(v54) = 1;
      sub_24FE7B010();
      v20 = v56;
      v21 = v52;
      sub_24FEDE7A4();
      v54 = v18;
      v55 = v19;
      sub_24FE666C0();
      v22 = v43;
      sub_24FEDE804();
      (*(v42 + 8))(v8, v22);
      (*(v53 + 8))(v21, v20);
      return sub_24FE62CFC(v18, v19);
    }

    else
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53A0, &qword_24FEE1C50);
      v27 = (v14 + v26[12]);
      v28 = *v27;
      v50 = v27[1];
      v42 = *(v14 + v26[16]);
      v43 = v28;
      v41 = *(v14 + v26[20]);
      v30 = v47;
      v29 = v48;
      v31 = v49;
      (*(v48 + 32))(v47, v14, v49);
      LOBYTE(v54) = 2;
      sub_24FE7AFBC();
      v32 = v44;
      v33 = v56;
      v34 = v52;
      sub_24FEDE7A4();
      LOBYTE(v54) = 0;
      sub_24FE79B04(&qword_27F3A51C8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v35 = v46;
      v36 = v51;
      sub_24FEDE804();
      if (v36)
      {

        (*(v45 + 8))(v32, v35);
        (*(v29 + 8))(v30, v31);
      }

      else
      {
        LOBYTE(v54) = 1;
        sub_24FEDE7E4();

        LOBYTE(v54) = 2;
        sub_24FEDE7E4();
        v37 = v47;
        v38 = v48;

        LOBYTE(v54) = 3;
        sub_24FEDE814();
        v39 = v49;
        (*(v45 + 8))(v32, v35);
        (*(v38 + 8))(v37, v39);
      }

      return (*(v53 + 8))(v34, v33);
    }
  }

  else
  {
    LOBYTE(v54) = 0;
    sub_24FE7B064();
    v24 = v56;
    v25 = v52;
    sub_24FEDE7A4();
    sub_24FEDE7E4();

    (*(v41 + 8))(v11, v9);
    return (*(v53 + 8))(v25, v24);
  }
}

unint64_t sub_24FE7AF00()
{
  result = qword_27F3A5870;
  if (!qword_27F3A5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5870);
  }

  return result;
}

uint64_t sub_24FE7AF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE7AFBC()
{
  result = qword_27F3A5878;
  if (!qword_27F3A5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5878);
  }

  return result;
}

unint64_t sub_24FE7B010()
{
  result = qword_27F3A5880;
  if (!qword_27F3A5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5880);
  }

  return result;
}

unint64_t sub_24FE7B064()
{
  result = qword_27F3A5888;
  if (!qword_27F3A5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5888);
  }

  return result;
}

uint64_t RichContentResultSegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5890, &qword_24FEE2BF8);
  v67 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5898, &qword_24FEE2C00);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = (&v60 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58A0, &qword_24FEE2C08);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v60 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58A8, &unk_24FEE2C10);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v60 - v8;
  v10 = type metadata accessor for RichContentResultSegment(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v60 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v60 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24FE7AF00();
  v23 = v75;
  sub_24FEDE934();
  if (!v23)
  {
    v60 = v18;
    v61 = v15;
    v24 = v71;
    v25 = v72;
    v75 = v12;
    v62 = v21;
    v26 = v10;
    v28 = v73;
    v27 = v74;
    v29 = sub_24FEDE794();
    v30 = (2 * *(v29 + 16)) | 1;
    v77 = v29;
    v78 = v29 + 32;
    v79 = 0;
    v80 = v30;
    v31 = sub_24FE5583C();
    if (v31 != 3 && v79 == v80 >> 1)
    {
      if (v31)
      {
        v32 = v70;
        if (v31 == 1)
        {
          LOBYTE(v76) = 1;
          sub_24FE7B010();
          v33 = v68;
          sub_24FEDE704();
          sub_24FE66AE0();
          v34 = v66;
          sub_24FEDE774();
          (*(v65 + 8))(v33, v34);
          (*(v24 + 8))(v9, v28);
          swift_unknownObjectRelease();
          v43 = v61;
          *v61 = v76;
          swift_storeEnumTagMultiPayload();
          v44 = v62;
          sub_24FE7BA8C(v43, v62);
LABEL_12:
          sub_24FE7BA8C(v44, v32);
          return __swift_destroy_boxed_opaque_existential_1(v81);
        }

        LOBYTE(v76) = 2;
        sub_24FE7AFBC();
        v41 = v69;
        sub_24FEDE704();
        v42 = v41;
        v72 = v9;
        sub_24FEDC9E4();
        LOBYTE(v76) = 0;
        sub_24FE79B04(&qword_27F3A51F8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
        sub_24FEDE774();
        LOBYTE(v76) = 1;
        v49 = sub_24FEDE754();
        v51 = v50;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A53A0, &qword_24FEE1C50);
        v52 = (v75 + v68[12]);
        *v52 = v49;
        v52[1] = v51;
        LOBYTE(v76) = 2;
        v53 = sub_24FEDE754();
        v54 = v75;
        v55 = (v75 + v68[16]);
        *v55 = v53;
        v55[1] = v56;
        v66 = v56;
        LOBYTE(v76) = 3;
        v57 = sub_24FEDE784();
        v58 = v68[20];
        v59 = v57;
        (*(v67 + 8))(v42, v27);
        (*(v24 + 8))(v72, v28);
        swift_unknownObjectRelease();
        *(v54 + v58) = v59;
        swift_storeEnumTagMultiPayload();
        v48 = v54;
      }

      else
      {
        LOBYTE(v76) = 0;
        sub_24FE7B064();
        sub_24FEDE704();
        v39 = v9;
        v40 = v64;
        v75 = sub_24FEDE754();
        v46 = v45;
        (*(v63 + 8))(v25, v40);
        (*(v24 + 8))(v39, v28);
        swift_unknownObjectRelease();
        v47 = v60;
        *v60 = v75;
        v47[1] = v46;
        swift_storeEnumTagMultiPayload();
        v48 = v47;
      }

      v44 = v62;
      sub_24FE7BA8C(v48, v62);
      v32 = v70;
      goto LABEL_12;
    }

    v35 = sub_24FEDE664();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47E0, &qword_24FEDFBE0);
    *v37 = v26;
    sub_24FEDE714();
    sub_24FEDE654();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v24 + 8))(v9, v28);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_24FE7BA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RichContentResultSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall ModelDisclaimer.init(message:displayUrl:url:)(GenerativeAssistantUI::ModelDisclaimer *__return_ptr retstr, Swift::String message, Swift::String displayUrl, Swift::String url)
{
  retstr->message = message;
  retstr->displayUrl = displayUrl;
  retstr->url = url;
}

uint64_t sub_24FE7BB30()
{
  v1 = 0x5579616C70736964;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_24FE7BB88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FE7D680(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24FE7BBB0(uint64_t a1)
{
  v2 = sub_24FE7BDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE7BBEC(uint64_t a1)
{
  v2 = sub_24FE7BDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelDisclaimer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58B0, &qword_24FEE2C20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7BDEC();
  sub_24FEDE944();
  v14 = 0;
  v9 = v11[5];
  sub_24FEDE7E4();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24FEDE7E4();
  v12 = 2;
  sub_24FEDE7E4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24FE7BDEC()
{
  result = qword_27F3A58B8;
  if (!qword_27F3A58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A58B8);
  }

  return result;
}

uint64_t ModelDisclaimer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A58C0, &qword_24FEE2C28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE7BDEC();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24FEDE754();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24FEDE754();
  v21 = v12;
  v23 = 2;
  v13 = sub_24FEDE754();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE7C18C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE7C25C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE7C30C(uint64_t a1)
{
  sub_24FE7C520(319, &qword_27F3A58D8, type metadata accessor for RichContentResultSegment, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24FE7C584(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24FE7C584(319, &qword_27F3A57C0, &type metadata for Attribution, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24FE7C520(319, &qword_27F3A4A70, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24FE7C584(319, &qword_27F3A58E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_24FE7C584(319, &qword_27F3A58E8, &type metadata for ModelDisclaimer, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24FE7C584(319, &qword_27F3A58F0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24FE7C520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24FE7C584(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24FE7C5D4(uint64_t a1)
{
  sub_24FE7C648(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24FE7C648(uint64_t a1)
{
  if (!qword_27F3A5908)
  {
    MEMORY[0x28223BE20](0);
    sub_24FEDC9E4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F3A5908);
    }
  }
}

uint64_t sub_24FE7C740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24FE7C788(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RichContentResultSegment.FileDataCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RichContentResultSegment.FileDataCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for GenerativeRichTextResultSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeRichTextResultSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE7CAD0()
{
  result = qword_27F3A5910;
  if (!qword_27F3A5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5910);
  }

  return result;
}

unint64_t sub_24FE7CB28()
{
  result = qword_27F3A5918;
  if (!qword_27F3A5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5918);
  }

  return result;
}

unint64_t sub_24FE7CB80()
{
  result = qword_27F3A5920;
  if (!qword_27F3A5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5920);
  }

  return result;
}

unint64_t sub_24FE7CBD8()
{
  result = qword_27F3A5928;
  if (!qword_27F3A5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5928);
  }

  return result;
}

unint64_t sub_24FE7CC30()
{
  result = qword_27F3A5930;
  if (!qword_27F3A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5930);
  }

  return result;
}

unint64_t sub_24FE7CC88()
{
  result = qword_27F3A5938;
  if (!qword_27F3A5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5938);
  }

  return result;
}

unint64_t sub_24FE7CCE0()
{
  result = qword_27F3A5940;
  if (!qword_27F3A5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5940);
  }

  return result;
}

unint64_t sub_24FE7CD38()
{
  result = qword_27F3A5948;
  if (!qword_27F3A5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5948);
  }

  return result;
}

unint64_t sub_24FE7CD90()
{
  result = qword_27F3A5950;
  if (!qword_27F3A5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5950);
  }

  return result;
}

unint64_t sub_24FE7CDE8()
{
  result = qword_27F3A5958;
  if (!qword_27F3A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5958);
  }

  return result;
}

unint64_t sub_24FE7CE40()
{
  result = qword_27F3A5960;
  if (!qword_27F3A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5960);
  }

  return result;
}

unint64_t sub_24FE7CE98()
{
  result = qword_27F3A5968;
  if (!qword_27F3A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5968);
  }

  return result;
}

unint64_t sub_24FE7CEF0()
{
  result = qword_27F3A5970;
  if (!qword_27F3A5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5970);
  }

  return result;
}

unint64_t sub_24FE7CF48()
{
  result = qword_27F3A5978;
  if (!qword_27F3A5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5978);
  }

  return result;
}

unint64_t sub_24FE7CFA0()
{
  result = qword_27F3A5980;
  if (!qword_27F3A5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5980);
  }

  return result;
}

unint64_t sub_24FE7CFF8()
{
  result = qword_27F3A5988;
  if (!qword_27F3A5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5988);
  }

  return result;
}

unint64_t sub_24FE7D050()
{
  result = qword_27F3A5990;
  if (!qword_27F3A5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5990);
  }

  return result;
}

unint64_t sub_24FE7D0A8()
{
  result = qword_27F3A5998;
  if (!qword_27F3A5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5998);
  }

  return result;
}

uint64_t sub_24FE7D0FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69 || (sub_24FEDE844() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74754F68636E7570 && a2 == 0xEB000000004C5255 || (sub_24FEDE844() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FEE9A80 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7369446C65646F6DLL && a2 == 0xEF72656D69616C63 || (sub_24FEDE844() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FEE9AA0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24FE7D400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746144656C6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24FEDE844();

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

uint64_t sub_24FE7D51C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24FEDE844();

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

uint64_t sub_24FE7D680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5579616C70736964 && a2 == 0xEA00000000006C72 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24FEDE844();

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

uint64_t type metadata accessor for GeneratedText(uint64_t a1)
{
  result = qword_27F3A5A10;
  if (!qword_27F3A5A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE7D840()
{
  v0 = sub_24FEDC414();
  __swift_allocate_value_buffer(v0, qword_27F3B30E8);
  __swift_project_value_buffer(v0, qword_27F3B30E8);
  return sub_24FEDC404();
}

uint64_t sub_24FE7D8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24FEDC3D4();
  v4 = (a2 + *(a1 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return sub_24FEDC764();
}

uint64_t sub_24FE7DA38(uint64_t a1)
{
  v2 = sub_24FE7E854(&qword_27F3A5A58, type metadata accessor for GeneratedText, &unk_24FEE34C0);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24FE7DC1C(uint64_t a1)
{
  sub_24FE7E854(&qword_27F3A5A58, type metadata accessor for GeneratedText, &unk_24FEE34C0);

  return _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
}

uint64_t sub_24FE7DC9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A46A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24FEDC414();
  v3 = __swift_project_value_buffer(v2, qword_27F3B30E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24FE7DD88(uint64_t a1)
{
  v2 = sub_24FE7E854(&qword_27F3A59A0, type metadata accessor for GeneratedText, &unk_24FEE34F8);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24FE7DE4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDC3E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24FE7DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24FE7DF78;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_24FE7DF78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24FE7E06C(uint64_t a1)
{
  v2 = sub_24FE7E854(&qword_27F3A59E8, type metadata accessor for GeneratedText, &unk_24FEE36A8);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24FE7E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GeneratedText(0) + 24);
  v5 = sub_24FEDC774();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_24FE7E180@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GeneratedText(0) + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24FE7E1D0@<X0>(uint64_t a3@<X8>)
{
  v17[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5A30, &qword_24FEE3770);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5A38, &qword_24FEE3778);
  v6 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5A40, &unk_24FEE3780);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  sub_24FEDC774();
  sub_24FE7E854(&qword_27F3A5A48, MEMORY[0x277CC8C40], MEMORY[0x277CC4AD8]);
  sub_24FEDCCC4();
  sub_24FE7E800();
  sub_24FEDCCC4();
  v13 = *(v3 + 48);
  (*(v10 + 16))(v5, v12, v9);
  v14 = &v5[v13];
  v15 = v17[0];
  (*(v6 + 16))(v14, v8, v17[0]);
  sub_24FEDCCD4();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24FE7E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC3E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FE7E608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC3E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24FE7E730(uint64_t a1)
{
  result = sub_24FEDC3E4();
  if (v2 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24FE7E800()
{
  result = qword_27F3A5A50;
  if (!qword_27F3A5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5A50);
  }

  return result;
}

uint64_t sub_24FE7E854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GeneratedImage(uint64_t a1)
{
  result = qword_27F3A5AC8;
  if (!qword_27F3A5AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE7E938()
{
  v0 = sub_24FEDC414();
  __swift_allocate_value_buffer(v0, qword_27F3B3100);
  __swift_project_value_buffer(v0, qword_27F3B3100);
  return sub_24FEDC404();
}

double sub_24FE7E9A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24FEDC3D4();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_24FEE3790;
  return result;
}

uint64_t sub_24FE7EB1C(uint64_t a1)
{
  v2 = sub_24FE7F390(&qword_27F3A5AE8, type metadata accessor for GeneratedImage, &unk_24FEE37A0);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24FE7ED00(uint64_t a1)
{
  sub_24FE7F390(&qword_27F3A5AE8, type metadata accessor for GeneratedImage, &unk_24FEE37A0);

  return _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
}

uint64_t sub_24FE7ED7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A46B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24FEDC414();
  v3 = __swift_project_value_buffer(v2, qword_27F3B3100);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24FE7EE68(uint64_t a1)
{
  v2 = sub_24FE7F390(&qword_27F3A5A60, type metadata accessor for GeneratedImage, &unk_24FEE37D8);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24FE7EF2C(uint64_t a1)
{
  v2 = sub_24FE7F390(&qword_27F3A5AA8, type metadata accessor for GeneratedImage, &unk_24FEE3988);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24FE7EFE4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for GeneratedImage(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  sub_24FE62C94(*v2, v3);
  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_24FE7F06C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24FEDCE94();
  MEMORY[0x28223BE20](v2 - 8);
  sub_24FEDCE74();
  return sub_24FEDCCB4();
}

uint64_t sub_24FE7F12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC3E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24FE7F210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC3E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24FE7F2D8(uint64_t a1)
{
  result = sub_24FEDC3E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FE7F390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GeneratedContent(uint64_t a1)
{
  result = qword_27F3A5B18;
  if (!qword_27F3A5B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE7F490()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5B00, &qword_24FEE3AF8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  v4 = type metadata accessor for GeneratedContent(0);
  v5 = sub_24FE7FB7C();
  MEMORY[0x253058640](v5, v4, &type metadata for GeneratedContent.GeneratedTextResolver, v5);
  v6 = sub_24FE7FBD0();
  MEMORY[0x253058640](v6, v4, &type metadata for GeneratedContent.GeneratedImageResolver, v6);
  sub_24FE7FACC(&qword_27F3A5AF0, type metadata accessor for GeneratedContent, &unk_24FEE3A60);
  sub_24FEDC464();
  v8[0] = v5;
  v8[1] = &type metadata for GeneratedContent.GeneratedTextResolver;
  sub_24FEDC454();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24FE7F63C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24FE7F65C, 0, 0);
}

uint64_t sub_24FE7F65C()
{
  v1 = v0[2];
  sub_24FE7FF10(v0[3], v1, type metadata accessor for GeneratedText);
  v2 = type metadata accessor for GeneratedContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24FE7F798(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24FE7F7B8, 0, 0);
}

uint64_t sub_24FE7F7B8()
{
  v1 = v0[2];
  sub_24FE7FF10(v0[3], v1, type metadata accessor for GeneratedImage);
  v2 = type metadata accessor for GeneratedContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24FE7F888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5AF8, &qword_24FEE3AF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FEE0830;
  v1 = type metadata accessor for GeneratedText(0);
  v2 = sub_24FE7FACC(&qword_27F3A59E0, type metadata accessor for GeneratedText, &unk_24FEE3648);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for GeneratedImage(0);
  v4 = sub_24FE7FACC(&qword_27F3A5AA0, type metadata accessor for GeneratedImage, &unk_24FEE3928);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_24FE7F960@<X0>(uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE7FF10(v6, v5, type metadata accessor for GeneratedContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2[3] = type metadata accessor for GeneratedImage(0);
    v7 = sub_24FE7FACC(&qword_27F3A5AA0, type metadata accessor for GeneratedImage, &unk_24FEE3928);
    v8 = type metadata accessor for GeneratedImage;
  }

  else
  {
    a2[3] = type metadata accessor for GeneratedText(0);
    v7 = sub_24FE7FACC(&qword_27F3A59E0, type metadata accessor for GeneratedText, &unk_24FEE3648);
    v8 = type metadata accessor for GeneratedText;
  }

  v9 = v8;
  a2[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_24FE7FB14(v5, boxed_opaque_existential_1, v9);
}

uint64_t sub_24FE7FACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE7FB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE7FB7C()
{
  result = qword_27F3A5B08;
  if (!qword_27F3A5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B08);
  }

  return result;
}

unint64_t sub_24FE7FBD0()
{
  result = qword_27F3A5B10;
  if (!qword_27F3A5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B10);
  }

  return result;
}

uint64_t sub_24FE7FC44(uint64_t a1)
{
  result = type metadata accessor for GeneratedText(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeneratedImage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24FE7FCBC()
{
  result = qword_27F3A5B28;
  if (!qword_27F3A5B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5B30, &qword_24FEE3B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B28);
  }

  return result;
}

unint64_t sub_24FE7FD24()
{
  result = qword_27F3A5B38;
  if (!qword_27F3A5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B38);
  }

  return result;
}

unint64_t sub_24FE7FD7C()
{
  result = qword_27F3A5B40;
  if (!qword_27F3A5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B40);
  }

  return result;
}

unint64_t sub_24FE7FDD4()
{
  result = qword_27F3A5B48;
  if (!qword_27F3A5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B48);
  }

  return result;
}

unint64_t sub_24FE7FE74()
{
  result = qword_27F3A5B50;
  if (!qword_27F3A5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5B50);
  }

  return result;
}

uint64_t sub_24FE7FF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double variable initialization expression of MarkdownFont.$__lazy_storage_$_currentConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of ShareButton.foregroundColor()
{
  sub_24FEDDC74();
  v0 = sub_24FEDDC64();

  return v0;
}

uint64_t _s16MarkdownDocument0B4ViewV17_laTeXMathTracker33_1F3B118046804018F521221474E12D47LL7SwiftUI14ObservedObjectVyAA02LaefG0CGvpfi_0()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_24FE8011C()
{
  sub_24FEDE134();
  sub_24FE807FC(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);

  return sub_24FEDD2C4();
}

uint64_t sub_24FE80194@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a7;
    v37 = a8;
    v38 = v9;
    v35 = sub_24FEDD214();
    v18 = *(v35 - 8);
    MEMORY[0x28223BE20](v35);
    v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_24FEDE624();

      strcpy(v40, "View.task @ ");
      BYTE5(v40[1]) = 0;
      HIWORD(v40[1]) = -5120;
      MEMORY[0x25305A470](a4, a5);
      MEMORY[0x25305A470](58, 0xE100000000000000);
      v39 = a6;
      v27 = sub_24FEDE824();
      MEMORY[0x25305A470](v27);
    }

    v28 = sub_24FEDE414();
    v29 = MEMORY[0x28223BE20](v28);
    (*(v31 + 16))(&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v29);

    sub_24FEDD204();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C20, &unk_24FEE3E10);
    (*(*(v32 - 8) + 16))(a9, v38, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C28, &unk_24FEE60B0);
    return (*(v18 + 32))(a9 + *(v33 + 36), v20, v35);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C30, &qword_24FEE3E20) + 36));
    v22 = *(sub_24FEDD174() + 20);
    v23 = sub_24FEDE414();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C20, &unk_24FEE3E10);
    v25 = *(*(v24 - 8) + 16);

    return v25(a9, v9, v24);
  }
}

double sub_24FE80580@<D0>(_OWORD *a1@<X8>)
{
  sub_24FE81030();
  sub_24FEDD3F4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24FE805D0(void *a1, uint64_t a2)
{
  sub_24FE81030();

  return sub_24FEDD404();
}

uint64_t sub_24FE80654(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24FEDD214();
  }

  else
  {
    sub_24FEDD174();
  }

  return sub_24FEDD254();
}

uint64_t sub_24FE806BC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24FEDD214();
    sub_24FEDD254();
    sub_24FE807B0();
  }

  else
  {
    sub_24FEDD174();
    sub_24FEDD254();
    sub_24FE807FC(&qword_27F3A5C18, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_24FE807B0()
{
  result = qword_27F3A5C10;
  if (!qword_27F3A5C10)
  {
    sub_24FEDD214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C10);
  }

  return result;
}

uint64_t sub_24FE807FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FE808B4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of MarkdownParser.defaultDocumentElementParsers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C38, "Lr");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FEE3D40;
  v1 = sub_24FE80C7C();
  *(v0 + 32) = &type metadata for DocumentElementCapsuleParser;
  *(v0 + 40) = v1;
  v2 = sub_24FE80CD0();
  *(v0 + 48) = &type metadata for DocumentElementListImageParser;
  *(v0 + 56) = v2;
  v3 = sub_24FE80D24();
  *(v0 + 64) = &type metadata for DocumentElementOutlineParser;
  *(v0 + 72) = v3;
  v4 = sub_24FE80D78();
  *(v0 + 80) = &type metadata for DocumentElementHeadingParser;
  *(v0 + 88) = v4;
  v5 = sub_24FE80DCC();
  *(v0 + 96) = &type metadata for DocumentElementEmbeddedVideoParser;
  *(v0 + 104) = v5;
  v6 = sub_24FE80E20();
  *(v0 + 112) = &type metadata for DocumentElementBreakParser;
  *(v0 + 120) = v6;
  v7 = sub_24FE80E74();
  *(v0 + 128) = &type metadata for DocumentElementTableParser;
  *(v0 + 136) = v7;
  v8 = sub_24FE80EC8();
  *(v0 + 144) = &type metadata for DocumentElementBlockQuoteParser;
  *(v0 + 152) = v8;
  v9 = sub_24FE80F1C();
  *(v0 + 160) = &type metadata for DocumentElementCodeBlockParser;
  *(v0 + 168) = v9;
  v10 = sub_24FE80F70();
  *(v0 + 176) = &type metadata for DocumentElementParagraphParser;
  *(v0 + 184) = v10;
  return v0;
}

double variable initialization expression of MarkdownParser.defaultInlineParsers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C90, &qword_24FEE3E80);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_24FEE0830;
  *(v0 + 32) = &type metadata for InlineElementGlossaryLinkParser;
  *(v0 + 40) = &protocol witness table for InlineElementGlossaryLinkParser;
  *(v0 + 48) = &type metadata for InlineElementTextColorParser;
  *(v0 + 56) = &protocol witness table for InlineElementTextColorParser;
  return result;
}

uint64_t sub_24FE80AF8(uint64_t a1)
{
  v2 = sub_24FE807FC(&qword_27F3A5D50, _s3__C3KeyVMa_0, &unk_24FEE41BC);
  v3 = sub_24FE807FC(&qword_27F3A5D58, _s3__C3KeyVMa_0, &unk_24FEE4110);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24FE80BB8(uint64_t a1)
{
  v2 = sub_24FE807FC(&qword_27F3A5D60, type metadata accessor for URLResourceKey, &unk_24FEE4018);
  v3 = sub_24FE807FC(&qword_27F3A5D68, type metadata accessor for URLResourceKey, "qk52");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_24FE80C7C()
{
  result = qword_27F3A5C40;
  if (!qword_27F3A5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C40);
  }

  return result;
}

unint64_t sub_24FE80CD0()
{
  result = qword_27F3A5C48;
  if (!qword_27F3A5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C48);
  }

  return result;
}

unint64_t sub_24FE80D24()
{
  result = qword_27F3A5C50;
  if (!qword_27F3A5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C50);
  }

  return result;
}

unint64_t sub_24FE80D78()
{
  result = qword_27F3A5C58;
  if (!qword_27F3A5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C58);
  }

  return result;
}

unint64_t sub_24FE80DCC()
{
  result = qword_27F3A5C60;
  if (!qword_27F3A5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C60);
  }

  return result;
}

unint64_t sub_24FE80E20()
{
  result = qword_27F3A5C68;
  if (!qword_27F3A5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C68);
  }

  return result;
}

unint64_t sub_24FE80E74()
{
  result = qword_27F3A5C70;
  if (!qword_27F3A5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C70);
  }

  return result;
}

unint64_t sub_24FE80EC8()
{
  result = qword_27F3A5C78;
  if (!qword_27F3A5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C78);
  }

  return result;
}

unint64_t sub_24FE80F1C()
{
  result = qword_27F3A5C80;
  if (!qword_27F3A5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C80);
  }

  return result;
}

unint64_t sub_24FE80F70()
{
  result = qword_27F3A5C88;
  if (!qword_27F3A5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5C88);
  }

  return result;
}

__n128 __swift_memcpy16_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24FE80FD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FE80FF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_24FE81030()
{
  result = qword_27F3A5CA0;
  if (!qword_27F3A5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5CA0);
  }

  return result;
}

void sub_24FE810C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24FE8130C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v23 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_24FEDD254();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v24 = sub_24FEDD254();
  MEMORY[0x28223BE20](v24);
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  (*(a3 + 72))(a2, a3, a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v23, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = swift_getAssociatedConformanceWitness();
  sub_24FEDDBB4();
  v28 = v18;
  v29 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_24FEDDBF4();
  (*(v25 + 8))(v12, v10);
  v26 = WitnessTable;
  v27 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  v20 = sub_24FEDDE14();
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  return v20;
}

double sub_24FE81640@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentDataImageElement(0);
  v4 = (v1 + v3[5]);
  v5 = *(v1 + v3[6]);
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v1 + v3[7]);
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24FE62C94(v6, v7);
  sub_24FE62C94(v6, v7);
  v10 = sub_24FEDCA04();
  v11 = [v9 initWithData_];

  sub_24FE62CFC(v6, v7);
  result = 210.0;
  *a1 = xmmword_24FEE3D50;
  *(a1 + 16) = v11;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 41) = v8;
  return result;
}

uint64_t sub_24FE81728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

double sub_24FE81768(uint64_t a1)
{
  v2 = type metadata accessor for DocumentCodeBlockElement(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE81980(a1, &v6);
  if (v7)
  {
    sub_24FE71ADC(&v6, v8);
    sub_24FE71ADC(v8, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    if (swift_dynamicCast())
    {
      sub_24FE819F0(v4);
      return 16.0;
    }

    else
    {
      return 10.0;
    }
  }

  else
  {
    sub_24FE58B7C(&v6, &qword_27F3A5DD8, &unk_24FEE42C0);
    return 0.0;
  }
}

double DocumentElementView.topPadding(previousElement:)(uint64_t a1)
{
  v2 = type metadata accessor for DocumentCodeBlockElement(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE81980(a1, &v6);
  if (v7)
  {
    sub_24FE71ADC(&v6, v8);
    sub_24FE71ADC(v8, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    if (swift_dynamicCast())
    {
      sub_24FE819F0(v4);
      return 16.0;
    }

    else
    {
      return 10.0;
    }
  }

  else
  {
    sub_24FE58B7C(&v6, &qword_27F3A5DD8, &unk_24FEE42C0);
    return 0.0;
  }
}

uint64_t sub_24FE81980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DD8, &unk_24FEE42C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE819F0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentCodeBlockElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24FE81A4C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27F3A5DD0 = v1 == 1;
}

uint64_t sub_24FE81B34(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (qword_27F3A5B60 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  if (byte_27F3A5DD0 == 1)
  {

    return a1();
  }

  else
  {

    return a2();
  }
}

uint64_t static MarkdownFontConfiguration.Defaults.inlineCodeFont.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27F3A5B60 != -1)
  {
    swift_once();
  }

  sub_24FEDD814();
  v3 = *MEMORY[0x277CE0980];
  v4 = sub_24FEDD7F4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_24FEDD834();
  sub_24FE58B7C(v2, &qword_27F3A5DE8, &qword_24FEE42D0);
  return v6;
}

uint64_t static MarkdownFontConfiguration.Defaults.inlineCodeMajorHeadingFont.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27F3A5B60 != -1)
  {
    swift_once();
  }

  sub_24FEDD814();
  v3 = *MEMORY[0x277CE0980];
  v4 = sub_24FEDD7F4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_24FEDD834();
  sub_24FE58B7C(v2, &qword_27F3A5DE8, &qword_24FEE42D0);
  return v6;
}

uint64_t static MarkdownFontConfiguration.Defaults.codeBlockFont.getter(uint64_t a1)
{
  sub_24FEDD7C4();
  v1 = sub_24FEDD7B4();

  return v1;
}

uint64_t MarkdownFontConfiguration.init(majorFont:regularFont:bulletFont:inlineCodeFont:inlineCodeMajorHeadingFont:codeBlockFont:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_24FE81F30()
{
  type metadata accessor for MarkdownFont();
  result = swift_initStaticObject();
  static MarkdownFont.shared = result;
  return result;
}

uint64_t *MarkdownFont.shared.unsafeMutableAddressor()
{
  if (qword_27F3A5B68 != -1)
  {
    swift_once();
  }

  return &static MarkdownFont.shared;
}

uint64_t static MarkdownFont.shared.getter()
{
  type metadata accessor for MarkdownFont();

  return swift_initStaticObject();
}

uint64_t sub_24FE82000@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  if (v6)
  {
    v12 = v1[2];
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
  }

  else
  {
    v39 = v1[7];
    v40 = v10;
    v41 = v9;
    v42 = v8;
    v43 = v7;
    v44 = 0;
    if (qword_27F3A5B60 != -1)
    {
      swift_once();
    }

    if (byte_27F3A5DD0 == 1)
    {
      v18 = sub_24FEDD854();
    }

    else
    {
      v18 = sub_24FEDD844();
    }

    v38 = v18;
    if (byte_27F3A5DD0 == 1)
    {
      v19 = sub_24FEDD7E4();
    }

    else
    {
      v19 = sub_24FEDD854();
    }

    v37 = v19;
    if (byte_27F3A5DD0 == 1)
    {
      v20 = sub_24FEDD894();
    }

    else
    {
      v20 = sub_24FEDD884();
    }

    v36 = v20;
    sub_24FEDD814();
    v21 = *MEMORY[0x277CE0980];
    v22 = sub_24FEDD7F4();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v5, v21, v22);
    (*(v23 + 56))(v5, 0, 1, v22);
    v15 = sub_24FEDD834();
    sub_24FE58B7C(v5, &qword_27F3A5DE8, &qword_24FEE42D0);
    sub_24FEDD814();
    v24 = sub_24FEDD7F4();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v5, v21, v24);
    (*(v25 + 56))(v5, 0, 1, v24);
    v16 = sub_24FEDD834();
    sub_24FE58B7C(v5, &qword_27F3A5DE8, &qword_24FEE42D0);
    sub_24FEDD7C4();
    v17 = sub_24FEDD7B4();

    v26 = v1[2];
    v27 = v1[3];
    v29 = v1[4];
    v28 = v1[5];
    v30 = v1[7];
    v34 = v1[6];
    v35 = v26;
    v33 = v30;
    v13 = v37;
    v31 = v38;
    v1[2] = v38;
    v1[3] = v13;
    v14 = v36;
    v1[4] = v36;
    v1[5] = v15;
    v1[6] = v16;
    v1[7] = v17;
    v12 = v31;

    sub_24FE708C4(v35, v27, v29, v28, v34, v33);
    v7 = v43;
    v6 = v44;
    v9 = v41;
    v8 = v42;
    v11 = v39;
    v10 = v40;
  }

  result = sub_24FE71B04(v6, v7, v8, v9, v10, v11);
  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  return result;
}

uint64_t MarkdownFont.apply(configuration:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v1[2] = *a1;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v20 = v3;
  v21 = v2;
  v18 = v5;
  v19 = v4;
  v16 = v7;
  v17 = v6;
  sub_24FE82458(&v21, v15);
  sub_24FE82458(&v20, v15);
  sub_24FE82458(&v19, v15);
  sub_24FE82458(&v18, v15);
  sub_24FE82458(&v17, v15);
  sub_24FE82458(&v16, v15);
  return sub_24FE708C4(v8, v9, v10, v11, v12, v13);
}

uint64_t MarkdownFont.__deallocating_deinit()
{
  sub_24FE708C4(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7]);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy48_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of DocumentView.viewModel(uint64_t *a1)
{
  sub_24FE86F30(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel, "!W22 p");

  return sub_24FEDD1B4();
}

uint64_t property wrapper backing initializer of DocumentView.laTeXMathTracker(uint64_t a1)
{
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  return sub_24FEDD1B4();
}

uint64_t DocumentView.init(viewModel:linkTapped:contentsToShare:forceOffsetFirstElement:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  *(a6 + 16) = sub_24FEDD1B4();
  *(a6 + 24) = v11;
  type metadata accessor for DocumentView(0);
  sub_24FE85C8C();
  sub_24FEDD0B4();
  type metadata accessor for DocumentViewModel(0);
  sub_24FE86F30(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel, "!W22 p");

  *a6 = sub_24FEDD1B4();
  *(a6 + 8) = v12;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5 & 1;
  sub_24FE82880();
}

uint64_t sub_24FE82880()
{
  v1 = type metadata accessor for DocumentFileElement(0);
  MEMORY[0x28223BE20](v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v5 = *(v18[0] + 16);
  if (v5)
  {
    v16[0] = v18[0];
    v16[1] = v4;
    v6 = v18[0] + 32;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_24FE72D1C(v6, v18);
      sub_24FE72D1C(v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
      if (swift_dynamicCast())
      {
        sub_24FE86F78(v3, type metadata accessor for DocumentFileElement);
        sub_24FE72D1C(v18, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24FEBAFF8(0, v8[2] + 1, 1, v8);
        }

        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          v8 = sub_24FEBAFF8((v10 > 1), v11 + 1, 1, v8);
        }

        __swift_destroy_boxed_opaque_existential_1(v18);
        v8[2] = v11 + 1;
        v9 = &v8[5 * v11];
      }

      else
      {
        sub_24FE72D1C(v18, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24FEBAFF8(0, v7[2] + 1, 1, v7);
        }

        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          v7 = sub_24FEBAFF8((v12 > 1), v13 + 1, 1, v7);
        }

        __swift_destroy_boxed_opaque_existential_1(v18);
        v7[2] = v13 + 1;
        v9 = &v7[5 * v13];
      }

      sub_24FE71ADC(v17, (v9 + 4));
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
  }

  v18[0] = v7;

  sub_24FEDA074(v8);
  v14 = v18[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v18[0] = v14;
  return sub_24FEDCFF4();
}

uint64_t DocumentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_24FEDD514();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E08, &qword_24FEE43A0) + 44);
  v14 = v1;
  v15 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v13[2] = swift_getKeyPath();
  sub_24FE86E60(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_24FE86EC8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for DocumentView);
  v13[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E20, &qword_24FEE4428);
  sub_24FE58928(&qword_27F3A5E28, &qword_27F3A5E18, &qword_24FEE4420, MEMORY[0x277D83980]);
  sub_24FE86F30(&qword_27F3A5E30, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24FE85DF4(&qword_27F3A5E38, &qword_27F3A5E20, &qword_24FEE4428, sub_24FE85DC4);
  sub_24FEDDE94();
  KeyPath = swift_getKeyPath();
  sub_24FE86E60(v14, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentView);
  v10 = swift_allocObject();
  sub_24FE86EC8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for DocumentView);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E80, &qword_24FEE4480) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A5E88, &qword_24FEE4488);
  result = sub_24FEDD154();
  *v11 = KeyPath;
  return result;
}

void *sub_24FE82EA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F30, &qword_24FEE4578);
  MEMORY[0x28223BE20](v49);
  v50 = (&v40 - v5);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E78, &qword_24FEE4448);
  MEMORY[0x28223BE20](v46);
  v41 = (&v40 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F38, &qword_24FEE4580);
  MEMORY[0x28223BE20](v42);
  v44 = &v40 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E68, &qword_24FEE4440);
  MEMORY[0x28223BE20](v43);
  v40 = (&v40 - v8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E58, &qword_24FEE4438);
  MEMORY[0x28223BE20](v48);
  v45 = &v40 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E48, &qword_24FEE4430);
  MEMORY[0x28223BE20](v52);
  v11 = &v40 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F40, &unk_24FEE4588);
  MEMORY[0x28223BE20](v51);
  v13 = (&v40 - v12);
  v47 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v54 = a1;
  v14 = *(v55 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v55 + 32);
    while (1)
    {
      v17 = sub_24FE86C94(v16);
      if (v17)
      {
        break;
      }

      ++v15;
      v16 += 5;
      if (v14 == v15)
      {
        v15 = 0;
        break;
      }
    }

    v18 = v17 ^ 1;
  }

  else
  {
    v15 = 0;
    v18 = 1;
  }

  v19 = v18 & 1;

  if (v19)
  {
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v22 = sub_24FE8130C(&v55, v20, v21, 0.0, 0.0);
    sub_24FE58B7C(&v55, &qword_27F3A5DD8, &unk_24FEE42C0);
    *v13 = v22;
    swift_storeEnumTagMultiPayload();
    sub_24FE85DC4();
    return sub_24FEDD5F4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v24 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24FEDCFE4();

    v25 = *(v55 + 16);

    if ((v24 & 0x8000000000000000) != 0 || v24 >= v25)
    {
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      if (v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (*(*(v47 + 32) + 16) || *(v47 + 40) == 1)
      {
        v29 = a1[3];
        v30 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v29);
        if ((*(v30 + 56))(v29, v30))
        {
          v31 = sub_24FEDDF24();
          v32 = v40;
          *v40 = v31;
          *(v32 + 8) = v33;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F50, &qword_24FEE45A0);
          sub_24FE8391C(a1, &v55, v47, (v32 + *(v34 + 44)));
          v35 = &qword_27F3A5E68;
          v36 = &qword_24FEE4440;
          sub_24FE58B14(v32, v44, &qword_27F3A5E68, &qword_24FEE4440);
        }

        else
        {
          v37 = sub_24FEDD424();
          v32 = v41;
          *v41 = v37;
          *(v32 + 8) = 0;
          *(v32 + 16) = 1;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F48, &qword_24FEE4598);
          sub_24FE847F4(a1, &v55, v47, v32 + *(v38 + 44));
          v35 = &qword_27F3A5E78;
          v36 = &qword_24FEE4448;
          sub_24FE58B14(v32, v44, &qword_27F3A5E78, &qword_24FEE4448);
        }

        swift_storeEnumTagMultiPayload();
        sub_24FE58928(&qword_27F3A5E60, &qword_27F3A5E68, &qword_24FEE4440, MEMORY[0x277CE11A8]);
        sub_24FE58928(&qword_27F3A5E70, &qword_27F3A5E78, &qword_24FEE4448, MEMORY[0x277CE1138]);
        v39 = v45;
        sub_24FEDD5F4();
        sub_24FE58B7C(v32, v35, v36);
        sub_24FE58B14(v39, v50, &qword_27F3A5E58, &qword_24FEE4438);
        swift_storeEnumTagMultiPayload();
        sub_24FE85E78();
        sub_24FEDD5F4();
        sub_24FE58B7C(v39, &qword_27F3A5E58, &qword_24FEE4438);
        goto LABEL_24;
      }

LABEL_17:
      v26 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      v28 = sub_24FE8130C(&v55, v26, v27, 0.0, 0.0);
      *v50 = v28;
      swift_storeEnumTagMultiPayload();
      sub_24FE85E78();
      sub_24FEDD5F4();
LABEL_24:
      sub_24FE58B14(v11, v13, &qword_27F3A5E48, &qword_24FEE4430);
      swift_storeEnumTagMultiPayload();
      sub_24FE85DC4();
      sub_24FEDD5F4();
      sub_24FE58B7C(v11, &qword_27F3A5E48, &qword_24FEE4430);
      return sub_24FE58B7C(&v55, &qword_27F3A5DD8, &unk_24FEE42C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24FEDCFE4();

    if (v24 < *(v55 + 16))
    {
      sub_24FE72D1C(v55 + 40 * v24 + 32, &v55);

      if (v15)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8378C(void *a1, void *a2)
{
  v4 = sub_24FEDCA64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 48))(v11, v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 48))(v13, v14);
  LOBYTE(a2) = _s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return a2 & 1;
}

uint64_t sub_24FE8391C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v108 = a4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F58, &qword_24FEE45A8);
  MEMORY[0x28223BE20](v102);
  v103 = v83 - v7;
  v95 = sub_24FEDCE94();
  v98 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  MEMORY[0x28223BE20](v90);
  v93 = v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = v83 - v13;
  MEMORY[0x28223BE20](v14);
  v97 = v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v99 = v83 - v19;
  v20 = type metadata accessor for ShareButton(0);
  MEMORY[0x28223BE20](v20);
  v22 = (v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v92 = v83 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F78, &qword_24FEE45C8);
  MEMORY[0x28223BE20](v101);
  v91 = v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v94 = v83 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F80, &qword_24FEE45D0);
  v105 = *(v28 - 8);
  v106 = v28;
  MEMORY[0x28223BE20](v28);
  v100 = v83 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F88, &qword_24FEE45D8);
  MEMORY[0x28223BE20](v30 - 8);
  v107 = v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v104 = v83 - v33;
  v35 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  type metadata accessor for DocumentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  v36 = v112;
  sub_24FEDD0C4();
  v37 = sub_24FE8130C(a2, v35, v34, v36, v112);
  v38 = *(a3 + 32);
  if (*(v38 + 16))
  {
    if (qword_27F3A5B88 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24FEDCFE4();

    if (v110 != 1)
    {
      v109 = 0;

      sub_24FEDDD34();
      v58 = v110;
      v59 = v111;
      v109 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
      sub_24FEDDD54();
      v60 = v103;
      *v103 = 0;
      v60[8] = v58;
      *(v60 + 2) = v59;
      *(v60 + 3) = v38;
      *(v60 + 2) = xmmword_24FEE3D60;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
      sub_24FE86CBC();
      sub_24FE86D78();
      v61 = v100;
      sub_24FEDD5F4();
LABEL_19:
      v57 = v104;
      sub_24FE6315C(v61, v104, &qword_27F3A5F80, &qword_24FEE45D0);
      v56 = 0;
      goto LABEL_20;
    }

    v86 = v37;
    v85 = *(a3 + 8);
    v39 = type metadata accessor for ShareSheetMetadata(0);
    v40 = *(v39 - 8);
    v41 = v99;
    (*(v40 + 56))(v99, 1, 1, v39);
    *v22 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v110 = 0x403C000000000000;
    sub_24FE85C8C();

    sub_24FEDD0B4();
    v42 = v20[6];
    sub_24FEDDC74();
    v43 = sub_24FEDDC64();

    v84 = v42;
    v83[1] = v43;
    *(v22 + v42) = v43;
    v83[0] = v20[7];
    *(v22 + v83[0]) = 0;
    *(v22 + v20[8]) = 0;
    v44 = (v22 + v20[9]);
    sub_24FEDE134();
    sub_24FE86F30(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    *v44 = sub_24FEDD2C4();
    v44[1] = v45;
    v46 = (v22 + v20[10]);
    type metadata accessor for LaTeXMathTracker(0);
    sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

    *v46 = sub_24FEDD1B4();
    v46[1] = v47;
    v48 = v22 + v20[11];
    v109 = 0;
    sub_24FEDDD34();
    v49 = v111;
    *v48 = v110;
    *(v48 + 1) = v49;
    *(v22 + v20[12]) = v85;
    *(v22 + v20[13]) = v38;
    sub_24FE58B14(v41, v22 + v20[14], &qword_27F3A5F70, &qword_24FEE45C0);
    *(v22 + v20[15]) = 0;
    v50 = v89;
    sub_24FE58B14(v41, v89, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v40 + 48))(v50, 1, v39) == 1)
    {
      sub_24FE58B7C(v50, &qword_27F3A5F70, &qword_24FEE45C0);
      v51 = 1;
      v52 = v95;
      v53 = v93;
      v55 = v97;
      v54 = v98;
    }

    else
    {
      v55 = v97;
      v54 = v98;
      v52 = v95;
      (*(v98 + 16))(v97, v50 + *(v39 + 24), v95);
      sub_24FE86F78(v50, type metadata accessor for ShareSheetMetadata);
      v51 = 0;
      v53 = v93;
    }

    v62 = v96;
    v63 = *(v54 + 56);
    v63(v55, v51, 1, v52);
    sub_24FEDCE64();
    v63(v62, 0, 1, v52);
    v64 = *(v90 + 48);
    sub_24FE58B14(v55, v53, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B14(v62, v53 + v64, &qword_27F3A5F68, &qword_24FEE5350);
    v65 = v55;
    v66 = *(v54 + 48);
    v67 = v66(v53, 1, v52);
    v37 = v86;
    if (v67 == 1)
    {
      sub_24FE58B7C(v62, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v65, &qword_27F3A5F68, &qword_24FEE5350);
      v68 = v66(v53 + v64, 1, v52);
      v61 = v100;
      if (v68 == 1)
      {
        sub_24FE58B7C(v53, &qword_27F3A5F68, &qword_24FEE5350);
LABEL_17:
        v74 = sub_24FEDDC54();

        *(v22 + v84) = v74;
        *(v22 + v83[0]) = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v69 = v88;
      sub_24FE58B14(v53, v88, &qword_27F3A5F68, &qword_24FEE5350);
      if (v66(v53 + v64, 1, v52) != 1)
      {
        v70 = v98;
        v71 = v87;
        (*(v98 + 32))(v87, v53 + v64, v52);
        sub_24FE86F30(&qword_27F3A5FC0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
        v72 = sub_24FEDE194();
        v73 = *(v70 + 8);
        v73(v71, v52);
        sub_24FE58B7C(v96, &qword_27F3A5F68, &qword_24FEE5350);
        sub_24FE58B7C(v97, &qword_27F3A5F68, &qword_24FEE5350);
        v73(v69, v52);
        sub_24FE58B7C(v53, &qword_27F3A5F68, &qword_24FEE5350);
        v61 = v100;
        if (v72)
        {
          goto LABEL_17;
        }

LABEL_18:
        v75 = v92;
        sub_24FE86E60(v22, v92, type metadata accessor for ShareButton);
        sub_24FE58B7C(v99, &qword_27F3A5F70, &qword_24FEE45C0);
        sub_24FE86F78(v22, type metadata accessor for ShareButton);
        v76 = v75;
        v77 = v91;
        sub_24FE86EC8(v76, v91, type metadata accessor for ShareButton);
        *(v77 + *(v101 + 36)) = xmmword_24FEE3D60;
        v78 = v94;
        sub_24FE6315C(v77, v94, &qword_27F3A5F78, &qword_24FEE45C8);
        sub_24FE58B14(v78, v103, &qword_27F3A5F78, &qword_24FEE45C8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
        sub_24FE86CBC();
        sub_24FE86D78();
        sub_24FEDD5F4();
        sub_24FE58B7C(v78, &qword_27F3A5F78, &qword_24FEE45C8);
        goto LABEL_19;
      }

      sub_24FE58B7C(v96, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v97, &qword_27F3A5F68, &qword_24FEE5350);
      (*(v98 + 8))(v69, v52);
      v61 = v100;
    }

    sub_24FE58B7C(v53, &qword_27F3A5F60, &unk_24FEE45B0);
    goto LABEL_18;
  }

  v56 = 1;
  v57 = v104;
LABEL_20:
  (*(v105 + 56))(v57, v56, 1, v106);
  v79 = v107;
  sub_24FE58B14(v57, v107, &qword_27F3A5F88, &qword_24FEE45D8);
  v80 = v108;
  *v108 = v37;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FB8, &qword_24FEE4638);
  sub_24FE58B14(v79, v80 + *(v81 + 48), &qword_27F3A5F88, &qword_24FEE45D8);

  sub_24FE58B7C(v57, &qword_27F3A5F88, &qword_24FEE45D8);
  sub_24FE58B7C(v79, &qword_27F3A5F88, &qword_24FEE45D8);
}

uint64_t sub_24FE847F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F58, &qword_24FEE45A8);
  MEMORY[0x28223BE20](v102);
  v103 = &v79 - v8;
  v94 = sub_24FEDCE94();
  v9 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  MEMORY[0x28223BE20](v90);
  v92 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  MEMORY[0x28223BE20](v12 - 8);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v96 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  MEMORY[0x28223BE20](v18 - 8);
  v89 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v97 = &v79 - v21;
  v22 = type metadata accessor for ShareButton(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F78, &qword_24FEE45C8);
  MEMORY[0x28223BE20](v98);
  v91 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v93 = &v79 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F80, &qword_24FEE45D0);
  MEMORY[0x28223BE20](v31 - 8);
  v101 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v100 = &v79 - v34;
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  v99 = sub_24FE8130C(a2, v35, v36, 0.0, 0.0);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFE4();

  if (v105 == 1)
  {
    v84 = v27;
    v88 = v9;
    v85 = a4;
    v37 = *(a3 + 8);
    v83 = *(a3 + 32);
    v38 = type metadata accessor for ShareSheetMetadata(0);
    v39 = *(v38 - 8);
    v40 = v97;
    (*(v39 + 56))(v97, 1, 1, v38);
    *v24 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v105 = 0x403C000000000000;
    sub_24FE85C8C();

    sub_24FEDD0B4();
    v41 = v22[6];
    sub_24FEDDC74();
    v42 = sub_24FEDDC64();

    v82 = v41;
    v81 = v42;
    *(v24 + v41) = v42;
    v80 = v22[7];
    *(v24 + v80) = 0;
    *(v24 + v22[8]) = 0;
    v43 = (v24 + v22[9]);
    sub_24FEDE134();
    sub_24FE86F30(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    *v43 = sub_24FEDD2C4();
    v43[1] = v44;
    v45 = (v24 + v22[10]);
    type metadata accessor for LaTeXMathTracker(0);
    sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

    *v45 = sub_24FEDD1B4();
    v45[1] = v46;
    v47 = v24 + v22[11];
    v104 = 0;
    sub_24FEDDD34();
    v48 = v106;
    *v47 = v105;
    *(v47 + 1) = v48;
    *(v24 + v22[12]) = v37;
    *(v24 + v22[13]) = v83;
    sub_24FE58B14(v40, v24 + v22[14], &qword_27F3A5F70, &qword_24FEE45C0);
    *(v24 + v22[15]) = 0;
    v49 = v89;
    sub_24FE58B14(v40, v89, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v39 + 48))(v49, 1, v38) == 1)
    {
      sub_24FE58B7C(v49, &qword_27F3A5F70, &qword_24FEE45C0);
      v50 = 1;
      v51 = v94;
      v52 = v88;
      v53 = v96;
    }

    else
    {
      v52 = v88;
      v53 = v96;
      v51 = v94;
      (*(v88 + 16))(v96, v49 + *(v38 + 24), v94);
      sub_24FE86F78(v49, type metadata accessor for ShareSheetMetadata);
      v50 = 0;
    }

    v59 = v95;
    v60 = *(v52 + 56);
    v60(v53, v50, 1, v51);
    sub_24FEDCE64();
    v60(v59, 0, 1, v51);
    v61 = v52;
    v62 = *(v90 + 48);
    v63 = v92;
    sub_24FE58B14(v53, v92, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B14(v59, v63 + v62, &qword_27F3A5F68, &qword_24FEE5350);
    v64 = *(v61 + 48);
    v65 = v64(v63, 1, v51) == 1;
    v66 = v59;
    v58 = v100;
    if (v65)
    {
      sub_24FE58B7C(v66, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v53, &qword_27F3A5F68, &qword_24FEE5350);
      v67 = v64(v63 + v62, 1, v51);
      a4 = v85;
      if (v67 != 1)
      {
LABEL_14:
        sub_24FE58B7C(v63, &qword_27F3A5F60, &unk_24FEE45B0);
LABEL_17:
        v73 = v84;
        sub_24FE86E60(v24, v84, type metadata accessor for ShareButton);
        sub_24FE58B7C(v97, &qword_27F3A5F70, &qword_24FEE45C0);
        sub_24FE86F78(v24, type metadata accessor for ShareButton);
        v74 = v91;
        sub_24FE86EC8(v73, v91, type metadata accessor for ShareButton);
        *(v74 + *(v98 + 36)) = xmmword_24FEE3D60;
        v75 = v93;
        sub_24FE6315C(v74, v93, &qword_27F3A5F78, &qword_24FEE45C8);
        sub_24FE58B14(v75, v103, &qword_27F3A5F78, &qword_24FEE45C8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
        sub_24FE86CBC();
        sub_24FE86D78();
        sub_24FEDD5F4();
        sub_24FE58B7C(v75, &qword_27F3A5F78, &qword_24FEE45C8);
        goto LABEL_18;
      }

      sub_24FE58B7C(v63, &qword_27F3A5F68, &qword_24FEE5350);
    }

    else
    {
      v68 = v87;
      sub_24FE58B14(v63, v87, &qword_27F3A5F68, &qword_24FEE5350);
      if (v64(v63 + v62, 1, v51) == 1)
      {
        sub_24FE58B7C(v95, &qword_27F3A5F68, &qword_24FEE5350);
        sub_24FE58B7C(v96, &qword_27F3A5F68, &qword_24FEE5350);
        (*(v88 + 8))(v68, v51);
        a4 = v85;
        goto LABEL_14;
      }

      v69 = v88;
      v70 = v86;
      (*(v88 + 32))(v86, v63 + v62, v51);
      sub_24FE86F30(&qword_27F3A5FC0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      LODWORD(v94) = sub_24FEDE194();
      v71 = *(v69 + 8);
      v71(v70, v51);
      sub_24FE58B7C(v95, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v96, &qword_27F3A5F68, &qword_24FEE5350);
      v71(v68, v51);
      sub_24FE58B7C(v63, &qword_27F3A5F68, &qword_24FEE5350);
      a4 = v85;
      if ((v94 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v72 = sub_24FEDDC54();

    *(v24 + v82) = v72;
    *(v24 + v80) = 1;
    goto LABEL_17;
  }

  v54 = *(a3 + 32);
  v104 = 0;

  sub_24FEDDD34();
  v55 = v105;
  v56 = v106;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  v57 = v103;
  *v103 = 0;
  v57[8] = v55;
  *(v57 + 2) = v56;
  *(v57 + 3) = v54;
  *(v57 + 2) = xmmword_24FEE3D60;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F90, &qword_24FEE4630);
  sub_24FE86CBC();
  sub_24FE86D78();
  v58 = v100;
  sub_24FEDD5F4();
LABEL_18:
  v76 = v101;
  sub_24FE58B14(v58, v101, &qword_27F3A5F80, &qword_24FEE45D0);
  *a4 = v99;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FC8, &qword_24FEE4678);
  sub_24FE58B14(v76, a4 + *(v77 + 64), &qword_27F3A5F80, &qword_24FEE45D0);

  sub_24FE58B7C(v58, &qword_27F3A5F80, &qword_24FEE45D0);
  sub_24FE58B7C(v76, &qword_27F3A5F80, &qword_24FEE45D0);
}

uint64_t sub_24FE855A8(uint64_t a1)
{
  v2 = sub_24FEDD164();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24FEDD3A4();
}

void sub_24FE85670(uint64_t a1, uint64_t a2)
{
  v17[11] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (v3)
  {
    v4 = *(a2 + 56);

    v3(a1);
    sub_24FEDD144();

    sub_24FE86C84(v3, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F18, &qword_24FEE4560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24FEE0830;
    *(inited + 32) = sub_24FEDE1F4();
    *(inited + 40) = v6;
    *(inited + 48) = 1;
    *(inited + 56) = sub_24FEDE1F4();
    *(inited + 64) = v7;
    *(inited + 72) = 1;
    v8 = sub_24FE9E4F8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F20, &qword_24FEE4568);
    swift_arrayDestroy();
    v9 = [objc_opt_self() defaultWorkspace];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24FEDC974();
      sub_24FE858F0(v8);

      v12 = sub_24FEDE144();

      v17[0] = 0;
      v13 = [v10 openURL:v11 withOptions:v12 error:v17];

      if (v13)
      {
        v14 = v17[0];
        sub_24FEDD144();
      }

      else
      {
        v15 = v17[0];
        v16 = sub_24FEDC914();

        swift_willThrow();
        sub_24FEDD134();
      }
    }

    else
    {

      sub_24FEDD134();
    }
  }
}

unint64_t sub_24FE858F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F28, &qword_24FEE4570);
    v2 = sub_24FEDE6D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_24FE725D8(&v22, v24);
        sub_24FE725D8(v24, v25);
        sub_24FE725D8(v25, &v23);
        result = sub_24FE71544(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_24FE725D8(&v23, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_24FE725D8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24FE85B44@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  *a2 = v4;
  return result;
}

uint64_t sub_24FE85BC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

uint64_t type metadata accessor for DocumentView(uint64_t a1)
{
  result = qword_27F3A5E98;
  if (!qword_27F3A5E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24FE85C8C()
{
  result = qword_27F3A5E00;
  if (!qword_27F3A5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5E00);
  }

  return result;
}

uint64_t sub_24FE85CE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

void *sub_24FE85D44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for DocumentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24FE82EA8(a1, v6, a2);
}

uint64_t sub_24FE85DF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE85E78()
{
  result = qword_27F3A5E50;
  if (!qword_27F3A5E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5E58, &qword_24FEE4438);
    sub_24FE58928(&qword_27F3A5E60, &qword_27F3A5E68, &qword_24FEE4440, MEMORY[0x277CE11A8]);
    sub_24FE58928(&qword_27F3A5E70, &qword_27F3A5E78, &qword_24FEE4448, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5E50);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for DocumentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 48))
  {
  }

  v5 = *(v1 + 36);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24FE8609C(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24FE85670(a1, v4);
}

uint64_t _s16MarkdownDocument0B4ViewV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = sub_24FEDC774();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v7 = *(*&v50[0] + 16);

  v8 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v8;
  sub_24FEDCFE4();

  v9 = *(*&v50[0] + 16);

  if (v7 != v9)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v11 = 0;
  v33 = *&v50[0] + 32;
  v32 = (v3 + 8);
  v38 = *&v50[0];
  v12 = *(*&v50[0] + 16);
  v13 = &qword_27F3A5F00;
  v14 = &qword_24FEE4550;
  while (1)
  {
    v15 = v12;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    if (v11 != v12)
    {
      break;
    }

LABEL_6:
    v50[0] = v16;
    v50[1] = v17;
    v50[2] = v18;
    if (!v18)
    {

      return 1;
    }

    v39 = v16;
    sub_24FE71ADC((v50 + 8), v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    if (swift_dynamicCast())
    {
      sub_24FE71ADC(v42, &v47);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24FEDCFE4();

      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v39 >= *(*&v42[0] + 16))
      {
        goto LABEL_22;
      }

      sub_24FE72D1C(*&v42[0] + 40 * v39 + 32, v42);

      if (!swift_dynamicCast())
      {
        v41 = 0;
        memset(v40, 0, sizeof(v40));

        sub_24FE58B7C(v40, &qword_27F3A5F08, &qword_24FEE4558);
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(&v47);
        return 0;
      }

      v19 = v14;
      v20 = v12;
      v21 = v13;
      sub_24FE71ADC(v40, v44);
      v22 = *(&v48 + 1);
      v23 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      v24 = v35;
      (*(v23 + 24))(v22, v23);
      v25 = v45;
      v26 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v27 = v36;
      (*(v26 + 24))(v25, v26);
      sub_24FE86F30(&qword_27F3A5F10, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v28 = v34;
      v29 = sub_24FEDE194();
      v30 = *v32;
      (*v32)(v27, v28);
      v30(v24, v28);
      if ((v29 & 1) == 0)
      {

        __swift_destroy_boxed_opaque_existential_1(v44);
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(v44);
      result = __swift_destroy_boxed_opaque_existential_1(&v47);
      v11 = v15;
      v13 = v21;
      v12 = v20;
      v14 = v19;
    }

    else
    {
      v43 = 0;
      memset(v42, 0, sizeof(v42));
      result = sub_24FE58B7C(v42, &qword_27F3A5F08, &qword_24FEE4558);
      v11 = v15;
    }
  }

  if (v11 < *(v38 + 16))
  {
    v15 = v11 + 1;
    *&v47 = v11;
    sub_24FE72D1C(v33 + 40 * v11, &v47 + 8);
    v16 = v47;
    v17 = v48;
    v18 = v49;
    goto LABEL_6;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}