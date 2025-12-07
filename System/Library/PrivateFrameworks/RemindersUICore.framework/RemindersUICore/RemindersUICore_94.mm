Swift::Void __swiftcall TTRReminderEditor.add(attachments:)(Swift::OpaquePointer attachments)
{
  v3 = type metadata accessor for TTRDirectlySavableImageData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v219 = &v189[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v210 = &v189[-v6];
  MEMORY[0x28223BE20](v7);
  v9 = &v189[-v8];
  v233 = sub_21DBF843C();
  v10 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v197 = &v189[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v202 = &v189[-v13];
  MEMORY[0x28223BE20](v14);
  v196 = &v189[-v15];
  MEMORY[0x28223BE20](v16);
  v211 = &v189[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v189[-v19];
  MEMORY[0x28223BE20](v21);
  v208 = &v189[-v22];
  v207 = sub_21DBF518C();
  v23 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v218 = &v189[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  MEMORY[0x28223BE20](v25 - 8);
  v201 = &v189[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v199 = &v189[-v28];
  MEMORY[0x28223BE20](v29);
  v206 = &v189[-v30];
  v234 = sub_21DBF54CC();
  v31 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v194 = &v189[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v192 = &v189[-v34];
  MEMORY[0x28223BE20](v35);
  v200 = &v189[-v36];
  MEMORY[0x28223BE20](v37);
  v217 = &v189[-v38];
  MEMORY[0x28223BE20](v39);
  v232 = &v189[-v40];
  v237 = type metadata accessor for TTRUnsavedAttachment(0);
  v41 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v229 = &v189[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43);
  v220 = &v189[-v44];
  MEMORY[0x28223BE20](v45);
  v228 = &v189[-v46];
  *&v48 = MEMORY[0x28223BE20](v47).n128_u64[0];
  v231 = &v189[-v49];
  v213 = *(v1 + 16);
  v214 = v1;
  v216 = [v213 attachmentContext];
  if (!v216)
  {
    return;
  }

  v50 = *(attachments._rawValue + 2);
  if (!v50)
  {
    v182 = v216;

    return;
  }

  v195 = v9;
  v51 = 0;
  v52 = attachments._rawValue + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v222 = (v31 + 32);
  v215 = *MEMORY[0x277CBE7B8];
  v203 = (v10 + 48);
  v204 = (v23 + 8);
  v224 = (v10 + 8);
  v53 = (v10 + 32);
  v212 = (v31 + 16);
  v221 = (v31 + 8);
  v193 = (v10 + 16);
  v198 = (v10 + 56);
  v227 = *(v41 + 72);
  *(&v54 + 1) = 2;
  v226 = xmmword_21DC08D00;
  *&v54 = 136315394;
  v191 = v54;
  *&v54 = 136315138;
  v209 = v54;
  v55 = v234;
  v57 = v231;
  v56 = v232;
  v58 = v228;
  v223 = (v10 + 32);
  v225 = v20;
  while (1)
  {
    v235 = v52;
    v236 = v50;
    sub_21D1074E8(v52, v57, type metadata accessor for TTRUnsavedAttachment);
    sub_21D1074E8(v57, v58, type metadata accessor for TTRUnsavedAttachment);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*v222)(v56, v58, v55);
      sub_21DBF547C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64858, &unk_21DC34B98);
      inited = swift_initStackObject();
      *(inited + 16) = v226;
      v77 = v215;
      *(inited + 32) = v215;
      v78 = v77;
      sub_21D1D0D5C(inited);
      swift_setDeallocating();
      sub_21D9D9170(inited + 32, type metadata accessor for URLResourceKey);
      v79 = v218;
      sub_21DBF538C();
      if (v51)
      {

        v230 = 0;
        v80 = v217;
LABEL_25:
        v107 = v221;
        if (qword_280D0F2B8 != -1)
        {
          swift_once();
        }

        v108 = sub_21DBF84BC();
        __swift_project_value_buffer(v108, qword_280D0F2C0);
        (*v212)(v80, v56, v55);
        v109 = sub_21DBF84AC();
        v110 = sub_21DBFAEBC();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = v80;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v240[0] = v113;
          *v112 = v209;
          sub_21D9D77FC(&qword_27CE59F18, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v114 = sub_21DBFC5BC();
          v116 = v115;
          v117 = *v107;
          v117(v111, v234);
          v118 = sub_21D0CDFB4(v114, v116, v240);

          *(v112 + 4) = v118;
          _os_log_impl(&dword_21D0C9000, v109, v110, "Error finding file type for FileURL attachment uti {url: %s}", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v113);
          v55 = v234;
          MEMORY[0x223D46520](v113, -1, -1);
          MEMORY[0x223D46520](v112, -1, -1);
        }

        else
        {

          v117 = *v107;
          v117(v80, v55);
        }

        v56 = v232;
        sub_21DBF545C();
        v117(v56, v55);
        v57 = v231;
        sub_21D9D9170(v231, type metadata accessor for TTRUnsavedAttachment);
        v20 = v225;
        v58 = v228;
        v53 = v223;
        v51 = v230;
        goto LABEL_6;
      }

      v230 = 0;

      v100 = v206;
      sub_21DBF517C();
      (*v204)(v79, v207);
      v101 = *v203;
      v102 = (*v203)(v100, 1, v233);
      v103 = v208;
      v80 = v217;
      if (v102 == 1)
      {
        v104 = v100;
LABEL_24:
        sub_21D0CF7E0(v104, &qword_27CE63E50, &unk_21DC2E420);
        v55 = v234;
        v56 = v232;
        goto LABEL_25;
      }

      sub_21DBF836C();
      v105 = v233;
      v205 = *v224;
      v205(v100, v233);
      v106 = v199;
      sub_21DBF844C();
      if (v101(v106, 1, v105) == 1)
      {
        v104 = v106;
        goto LABEL_24;
      }

      v119 = *v53;
      (*v53)(v103, v106, v233);
      v120 = v232;
      v121 = v230;
      v122 = sub_21DBF54DC();
      v51 = v121;
      if (v121)
      {
        if (qword_280D0F2B8 != -1)
        {
          swift_once();
        }

        v124 = sub_21DBF84BC();
        __swift_project_value_buffer(v124, qword_280D0F2C0);
        v125 = v194;
        v55 = v234;
        (*v212)(v194, v232, v234);
        v126 = v121;
        v127 = sub_21DBF84AC();
        v128 = sub_21DBFAEBC();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v190 = v128;
          v130 = v125;
          v131 = v129;
          v230 = swift_slowAlloc();
          v240[0] = v230;
          *v131 = v191;
          sub_21D9D77FC(&qword_27CE59F18, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v132 = sub_21DBFC5BC();
          v134 = v133;
          v135 = v130;
          v136 = *v221;
          (*v221)(v135, v234);
          v137 = sub_21D0CDFB4(v132, v134, v240);

          *(v131 + 4) = v137;
          *(v131 + 12) = 2082;
          swift_getErrorValue();
          v138 = sub_21DBFC75C();
          v140 = sub_21D0CDFB4(v138, v139, v240);

          *(v131 + 14) = v140;
          v55 = v234;
          _os_log_impl(&dword_21D0C9000, v127, v190, "Error handling FileURL attachment {url: %s, {error: %{public}s}", v131, 0x16u);
          v141 = v230;
          swift_arrayDestroy();
          MEMORY[0x223D46520](v141, -1, -1);
          MEMORY[0x223D46520](v131, -1, -1);
        }

        else
        {

          v136 = *v221;
          (*v221)(v125, v55);
        }

        v205(v208, v233);
        v56 = v232;
        sub_21DBF545C();
        v136(v56, v55);
        v57 = v231;
        sub_21D9D9170(v231, type metadata accessor for TTRUnsavedAttachment);
        v51 = 0;
        v58 = v228;
        v20 = v225;
        goto LABEL_6;
      }

      v173 = v122;
      v174 = v123;
      v175 = v231;
      sub_21D9D9170(v231, type metadata accessor for TTRUnsavedAttachment);
      v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
      *v175 = v173;
      v175[1] = v174;
      v119(v175 + v176, v103, v233);
      v57 = v175;
      swift_storeEnumTagMultiPayload();
      sub_21DBF545C();
      v55 = v234;
      (*v221)(v120, v234);
      v20 = v225;
    }

    else
    {
      sub_21D9D9170(v58, type metadata accessor for TTRUnsavedAttachment);
    }

    v81 = v220;
    sub_21D1074E8(v57, v220, type metadata accessor for TTRUnsavedAttachment);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D9D9170(v81, type metadata accessor for TTRUnsavedAttachment);
      goto LABEL_41;
    }

    v82 = *v81;
    v83 = v81[1];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90);
    v85 = v233;
    (*v53)(v20, v81 + *(v84 + 48), v233);
    v86 = v211;
    sub_21DBF83FC();
    v87 = sub_21DBF841C();
    v88 = *v224;
    (*v224)(v86, v85);
    if ((v87 & 1) == 0)
    {
      v88(v20, v233);
      sub_21D17B8A8(v82, v83);
LABEL_39:
      v55 = v234;
      v57 = v231;
      goto LABEL_40;
    }

    sub_21D1BAF70(v82, v83);
    v89 = v195;
    TTRDirectlySavableImageData.init(data:)(v82, v83, v195);
    if (v51)
    {
      v90 = v197;
      v20 = v225;
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v91 = sub_21DBF84BC();
      __swift_project_value_buffer(v91, qword_280D0F2C0);
      (*v193)(v90, v20, v233);
      v92 = sub_21DBF84AC();
      v93 = sub_21DBFAEBC();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v240[0] = v95;
        *v94 = v209;
        v230 = v92;
        v205 = sub_21DBF836C();
        v97 = v96;
        v88(v90, v233);
        v98 = sub_21D0CDFB4(v205, v97, v240);

        *(v94 + 4) = v98;
        v99 = v230;
        _os_log_impl(&dword_21D0C9000, v230, v93, "TTRReminderEditor: failed to create TTRDirectlySavableImageData {uti: %s}", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x223D46520](v95, -1, -1);
        MEMORY[0x223D46520](v94, -1, -1);

        sub_21D17B8A8(v82, v83);
        v88(v225, v233);
        v20 = v225;
      }

      else
      {

        sub_21D17B8A8(v82, v83);
        v142 = v90;
        v143 = v233;
        v88(v142, v233);
        v88(v20, v143);
      }

      v51 = 0;
      goto LABEL_39;
    }

    sub_21D17B8A8(v82, v83);
    v20 = v225;
    v88(v225, v233);
    v57 = v231;
    sub_21D9D9170(v231, type metadata accessor for TTRUnsavedAttachment);
    sub_21D9D9028(v89, v57, type metadata accessor for TTRDirectlySavableImageData);
    swift_storeEnumTagMultiPayload();
    v55 = v234;
LABEL_40:
    v53 = v223;
LABEL_41:
    sub_21D1074E8(v57, v229, type metadata accessor for TTRUnsavedAttachment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v145 = *v229;
        v146 = v201;
        (*v198)(v201, 1, 1, v233);
        v147 = v145;
        v148 = v210;
        v205 = v147;
        TTRDirectlySavableImageData.init(image:sourceUTI:)(v147, v146, v210);
        if (v51)
        {
          if (qword_280D0F2B8 != -1)
          {
            swift_once();
          }

          v230 = 0;
          v149 = sub_21DBF84BC();
          __swift_project_value_buffer(v149, qword_280D0F2C0);
          v150 = v51;
          v151 = sub_21DBF84AC();
          v152 = sub_21DBFAEBC();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v240[0] = v154;
            *v153 = v209;
            swift_getErrorValue();
            v155 = sub_21DBFC75C();
            v157 = v20;
            v158 = sub_21D0CDFB4(v155, v156, v240);

            *(v153 + 4) = v158;
            v20 = v157;
            _os_log_impl(&dword_21D0C9000, v151, v152, "TTRReminderEditor: failed to create TTRDirectlySavableImageData from image {error: %s}", v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v154);
            MEMORY[0x223D46520](v154, -1, -1);
            v159 = v153;
            v55 = v234;
            MEMORY[0x223D46520](v159, -1, -1);
          }

          else
          {
          }

          v57 = v231;
          sub_21D9D9170(v231, type metadata accessor for TTRUnsavedAttachment);
          v56 = v232;
          v58 = v228;
          v51 = v230;
          goto LABEL_6;
        }

        v166 = sub_21DBF54FC();
        if (v148[16])
        {
          v167 = v196;
          if (v148[16] == 1)
          {
            sub_21DBF83AC();
          }

          else
          {
            sub_21DBF83EC();
          }
        }

        else
        {
          v167 = v196;
          sub_21DBF83DC();
        }

        sub_21DBF836C();
        (*v224)(v167, v233);
        v177 = sub_21DBFA12C();

        v178 = *(v210 + 3);
        if ((*&v178 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_91;
        }

        if (v178 <= -1.0)
        {
          goto LABEL_92;
        }

        if (v178 >= 1.84467441e19)
        {
          goto LABEL_93;
        }

        v179 = *(v210 + 4);
        if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_94;
        }

        if (v179 <= -1.0)
        {
          goto LABEL_95;
        }

        if (v179 >= 1.84467441e19)
        {
          goto LABEL_96;
        }

        v180 = [v216 addImageAttachmentWithData:v166 uti:v177 width:v178 height:v179];

        sub_21D9D9170(v210, type metadata accessor for TTRDirectlySavableImageData);
        v181 = objc_opt_self();
        v69 = v180;
        [v181 attachmentAddedForType_];
      }

      else
      {
        v59 = v229;
        v60 = *v229;
        v61 = v229[1];
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90);
        v63 = v233;
        v64 = v211;
        (*v53)(v211, v59 + *(v62 + 48), v233);
        v65 = sub_21DBF54FC();
        sub_21DBF836C();
        v66 = sub_21DBFA12C();

        v67 = [v216 addFileAttachmentWithData:v65 uti:v66];

        v68 = objc_opt_self();
        v69 = v67;
        v70 = sub_21DBF838C();
        v71 = v68;
        v55 = v234;
        [v71 attachmentAddedForUTType_];
        sub_21D17B8A8(v60, v61);

        v72 = v64;
        v20 = v225;
        (*v224)(v72, v63);
      }

      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_97;
    }

    v163 = v200;
    (*v222)(v200, v229, v55);
    v164 = sub_21DBF53FC();
    v165 = [v216 addURLAttachmentWithURL_];

    (*v221)(v163, v55);
    v69 = v165;
LABEL_5:
    v73 = swift_allocObject();
    *(v73 + 16) = v69;
    v240[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v240[0] = [v213 objectID];
    v74 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
    *&v238 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
    v75 = swift_allocObject();
    *(v75 + 16) = v226;
    sub_21D0CEB98(v240, v75 + 32);
    sub_21D0CF2E8(&v238, (v75 + 64));
    __swift_destroy_boxed_opaque_existential_0(v240);
    sub_21D1C442C(v75, sub_21D9D711C, v73);

    v57 = v231;
    sub_21D9D9170(v231, type metadata accessor for TTRUnsavedAttachment);
    v56 = v232;
    v58 = v228;
LABEL_6:
    v52 = &v235[v227];
    v50 = v236 - 1;
    if (v236 == 1)
    {

      return;
    }
  }

  v160 = v219;
  sub_21D9D9028(v229, v219, type metadata accessor for TTRDirectlySavableImageData);
  v161 = sub_21DBF54FC();
  if (v160[16])
  {
    v162 = v202;
    if (v160[16] == 1)
    {
      sub_21DBF83AC();
    }

    else
    {
      sub_21DBF83EC();
    }
  }

  else
  {
    v162 = v202;
    sub_21DBF83DC();
  }

  sub_21DBF836C();
  (*v224)(v162, v233);
  v168 = sub_21DBFA12C();

  v169 = *(v219 + 3);
  if ((*&v169 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v169 <= -1.0)
    {
      goto LABEL_86;
    }

    if (v169 >= 1.84467441e19)
    {
      goto LABEL_87;
    }

    v170 = *(v219 + 4);
    if ((*&v170 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_88;
    }

    if (v170 <= -1.0)
    {
      goto LABEL_89;
    }

    if (v170 >= 1.84467441e19)
    {
      goto LABEL_90;
    }

    v171 = [v216 addImageAttachmentWithData:v161 uti:v168 width:v169 height:v170];

    v172 = objc_opt_self();
    v69 = v171;
    [v172 attachmentAddedForType_];
    sub_21D9D9170(v219, type metadata accessor for TTRDirectlySavableImageData);
    goto LABEL_5;
  }

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
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  (*v222)(v192, v229, v55);
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v183 = sub_21DBF84BC();
  __swift_project_value_buffer(v183, qword_280D0F2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  v184 = swift_initStackObject();
  *(v184 + 16) = v226;
  *(v184 + 32) = 48;
  *(v184 + 40) = 0xE100000000000000;
  v185 = sub_21DBF535C();
  *(v184 + 72) = MEMORY[0x277D837D0];
  *(v184 + 48) = v185;
  *(v184 + 56) = v186;
  v187 = sub_21D17716C(v184);

  v188 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEAB00("Tried to add unhandled attachment type {type: fileURL, url: %@}", 63, 2, v187, v188);
  __break(1u);
}

void TTRReminderEditor.advanceForwardRecurrence(after:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v50 - v8;
  v9 = sub_21DBF563C();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF509C();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v50 - v16;
  v62 = v1;
  isa = v1[2].isa;
  if (![(objc_class *)isa isRecurrent])
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_280D0F2C0);
    v62 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v62, v32))
    {
      goto LABEL_23;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Ignoring advanceForwardRecurrence, not a recurrent reminder.";
    goto LABEL_22;
  }

  v19 = [(objc_class *)isa dueDateComponents];
  if (!v19)
  {
    if (qword_280D0F2B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  v53 = v12;
  v54 = v9;
  v55 = a1;
  v20 = v19;
  sub_21DBF4EFC();

  v52 = isa;
  v21 = [(objc_class *)isa recurrenceRules];
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v23 = v21;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v24 = sub_21DBFA5EC();

    if (!(v24 >> 62))
    {
      goto LABEL_5;
    }

LABEL_27:
    v25 = sub_21DBFBD7C();
    v56 = v13;
    v57 = v17;
    if (v25)
    {
      goto LABEL_6;
    }

LABEL_28:

    v27 = MEMORY[0x277D84F90];
LABEL_29:
    v37 = v59;
    sub_21D0D3954(v55, v59, &qword_27CE58D68, &unk_21DC0C060);
    v38 = v60;
    v39 = v54;
    v40 = (*(v60 + 48))(v37, 1, v54);
    v41 = v52;
    if (v40 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE58D68, &unk_21DC0C060);
      [(objc_class *)v41 advanceForwardRecurrenceAfterNow];
    }

    else
    {
      v42 = v58;
      (*(v38 + 32))(v58, v37, v39);
      v43 = sub_21DBF55BC();
      [(objc_class *)v41 advanceForwardToNextRecurrenceAfterDate:v43];

      (*(v38 + 8))(v42, v39);
    }

    v44 = v61;
    v46 = v56;
    v45 = v57;
    (*(v61 + 16))(v56, v57, v11);
    v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v48 = (v53 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v44 + 32))(v49 + v47, v46, v11);
    *(v49 + v48) = v27;
    sub_21D182E74(sub_21D9D7884, v49);

    (*(v44 + 8))(v45, v11);
    return;
  }

  v24 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_27;
  }

LABEL_5:
  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v13;
  v57 = v17;
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_6:
  v51 = v11;
  v63 = v22;
  sub_21D18EA80(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v63;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x223D44740](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      TTRRecurrenceRuleModel.init(sourceRule:)(v28, v6);
      v63 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21D18EA80((v29 > 1), v30 + 1, 1);
        v27 = v63;
      }

      ++v26;
      *(v27 + 16) = v30 + 1;
      sub_21D9D9028(v6, v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, type metadata accessor for TTRRecurrenceRuleModel);
    }

    while (v25 != v26);

    v11 = v51;
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_20:
  v35 = sub_21DBF84BC();
  __swift_project_value_buffer(v35, qword_280D0F2C0);
  v62 = sub_21DBF84AC();
  v32 = sub_21DBFAEBC();
  if (os_log_type_enabled(v62, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Ignoring advanceForwardRecurrence, no dueDateComponents.";
LABEL_22:
    _os_log_impl(&dword_21D0C9000, v62, v32, v34, v33, 2u);
    MEMORY[0x223D46520](v33, -1, -1);
  }

LABEL_23:
  v36 = v62;
}

uint64_t TTRReminderEditor.advanceRecurrenceAndCreateIncompleteClone(withDueDate:)(uint64_t a1)
{
  v84 = a1;
  v81 = sub_21DBF563C();
  v2 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21DBF509C();
  v4 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0, &unk_21DC18EA0);
  MEMORY[0x28223BE20](v83);
  v92 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v69 - v10;
  MEMORY[0x28223BE20](v11);
  v86 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v69 - v16;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v93 = &v69 - v19;
  v20 = [*(v1 + 16) saveRequest];
  v21 = [v20 advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks];

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v22 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880, 0x277D44700);
  v73 = v22;
  v23 = sub_21DBF9E6C();

  v91 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = sub_21DBFC21C();
    v94 = 0;
    v72 = 0;
    v25 = 0;
    v91 = v24 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v91 + 32);
    v27 = *(v91 + 64);
    v94 = v91 + 64;
    v72 = ~v26;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v30 = 0;
  v76 = (v72 + 64) >> 6;
  v88 = (v4 + 48);
  v89 = (v4 + 56);
  v69 = (v4 + 32);
  v82 = (v4 + 8);
  v78 = (v2 + 8);
  v31 = &selRef__setContentViewMarginType_;
  v32 = v75;
  for (i = v25; ; i = v87)
  {
    v85 = v30;
    if ((v91 & 0x8000000000000000) != 0)
    {
      if (!sub_21DBFC2DC())
      {
        return sub_21D0CFAF8(v91);
      }

      v41 = v40;
      swift_unknownObjectRelease();
      v96 = v41;
      swift_dynamicCast();
      v4 = v97;
      v39 = i;
      if (!v97)
      {
        return sub_21D0CFAF8(v91);
      }
    }

    else
    {
      v37 = v30;
      v38 = i;
      if (!i)
      {
        while (1)
        {
          v30 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v30 >= v76)
          {
            return sub_21D0CFAF8(v91);
          }

          v38 = *(v94 + 8 * v30);
          ++v37;
          if (v38)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_15:
      v39 = (v38 - 1) & v38;
      v4 = *(*(v91 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v38)))));
      if (!v4)
      {
        return sub_21D0CFAF8(v91);
      }
    }

    v42 = [v4 v31[180]];
    v77 = i;
    v87 = v39;
    if (v42)
    {
      v43 = v42;
      sub_21DBF4EFC();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = *v89;
    v46 = 1;
    (*v89)(v32, v44, 1, v95);
    sub_21D67A548(v32, v93);
    sub_21D0CF7E0(v32, &qword_27CE58D60, &unk_21DC0A690);
    v47 = [v4 v31[180]];
    if (v47)
    {
      v48 = v47;
      sub_21DBF4EFC();

      v46 = 0;
    }

    v49 = v86;
    v50 = v95;
    v45(v86, v46, 1, v95);
    v51 = v49;
    v52 = v90;
    sub_21D0D523C(v51, v90, &qword_27CE58D60, &unk_21DC0A690);
    v53 = *(v83 + 48);
    v54 = v52;
    v55 = v92;
    sub_21D0D3954(v54, v92, &qword_27CE58D60, &unk_21DC0A690);
    sub_21D0D3954(v93, v55 + v53, &qword_27CE58D60, &unk_21DC0A690);
    v56 = *v88;
    if ((*v88)(v55, 1, v50) == 1)
    {
      break;
    }

    v57 = v92;
    v58 = v74;
    sub_21D0D3954(v92, v74, &qword_27CE58D60, &unk_21DC0A690);
    if (v56(v57 + v53, 1, v95) == 1)
    {
      (*v82)(v58, v95);
      v32 = v75;
      v31 = &selRef__setContentViewMarginType_;
      goto LABEL_29;
    }

    v59 = v92;
    v60 = v70;
    v61 = v95;
    (*v69)(v70, v92 + v53, v95);
    sub_21D9D77FC(&qword_27CE5D1A8, 255, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
    v71 = sub_21DBFA10C();
    v62 = *v82;
    (*v82)(v60, v61);
    v62(v58, v61);
    sub_21D0CF7E0(v59, &qword_27CE58D60, &unk_21DC0A690);
    v32 = v75;
    v31 = &selRef__setContentViewMarginType_;
    if (v71)
    {
      goto LABEL_34;
    }

LABEL_31:
    v63 = v79;
    sub_21D0D3954(v93, v79, &qword_27CE58D60, &unk_21DC0A690);
    if (v56(v63, 1, v95) == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_21DBF4EDC();
      (*v82)(v63, v95);
    }

    [v4 setDueDateComponentsWithAlarmsIfNeeded_];

    v35 = v80;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v36 = sub_21DBF55BC();
    (*v78)(v35, v81);
    [v4 setLastBannerPresentationDate_];

    sub_21D0CF7E0(v90, &qword_27CE58D60, &unk_21DC0A690);
    sub_21D0CF7E0(v93, &qword_27CE58D60, &unk_21DC0A690);
  }

  v31 = &selRef__setContentViewMarginType_;
  if (v56(v92 + v53, 1, v95) != 1)
  {
LABEL_29:
    sub_21D0CF7E0(v92, &qword_27CE5D1A0, &unk_21DC18EA0);
    goto LABEL_31;
  }

  sub_21D0CF7E0(v92, &qword_27CE58D60, &unk_21DC0A690);
LABEL_34:
  if (qword_280D0F2B8 == -1)
  {
    goto LABEL_35;
  }

LABEL_39:
  swift_once();
LABEL_35:
  v65 = sub_21DBF84BC();
  __swift_project_value_buffer(v65, qword_280D0F2C0);
  v66 = sub_21DBF84AC();
  v67 = sub_21DBFAE9C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_21D0C9000, v66, v67, "Don't change this recurring clone dueDate as value is the same", v68, 2u);
    MEMORY[0x223D46520](v68, -1, -1);
  }

  sub_21D0CFAF8(v91);
  sub_21D0CF7E0(v90, &qword_27CE58D60, &unk_21DC0A690);
  return sub_21D0CF7E0(v93, &qword_27CE58D60, &unk_21DC0A690);
}

Swift::Void __swiftcall TTRReminderEditor.removeAllAssignments()()
{
  v1 = *(v0 + 16);
  v2 = &selRef__setContentViewMarginType_;
  v3 = [v1 assignmentContext];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 assignments];
  sub_21D0D8CF0(0, &qword_27CE59850, 0x277D44598);
  sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850, 0x277D44598);
  v5 = sub_21DBFAAAC();

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21DBFAB5C();
    v5 = v47[4];
    v6 = v47[5];
    v7 = v47[6];
    v8 = v47[7];
    v9 = v47[8];
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);
  }

  v39 = v7;
  v13 = (v7 + 64) >> 6;
  v42 = v5;
  v43 = v6;
  v41 = v1;
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v14 = sub_21DBFBDBC();
  if (!v14 || (*&v45 = v14, swift_dynamicCast(), v15 = v47[0], v16 = v8, v44 = v9, v6 = v43, !v47[0]))
  {
LABEL_37:
    sub_21D0CFAF8(v5);

    return;
  }

  while (1)
  {
    v19 = [v1 v2[112]];
    if (!v19)
    {

      v8 = v16;
      v9 = v44;
      v5 = v42;
      if (v42 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v20 = v19;
    v21 = [v19 assignments];
    v22 = sub_21DBFAAAC();

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = v15;
      v24 = sub_21DBFBDCC();

      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (*(v22 + 16))
      {
        v29 = sub_21DBFB62C();
        v30 = -1 << *(v22 + 32);
        v31 = v29 & ~v30;
        if ((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = *(*(v22 + 48) + 8 * v31);
            v34 = sub_21DBFB63C();

            if (v34)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          v1 = v41;
          v2 = &selRef__setContentViewMarginType_;
LABEL_22:
          [v20 removeAssignment_];
          v25 = swift_allocObject();
          *(v25 + 16) = v15;
          v47[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          v26 = v15;
          v47[0] = [v1 objectID];
          v27 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
          *&v45 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_21DC08D00;
          sub_21D0CEB98(v47, v28 + 32);
          sub_21D0CF2E8(&v45, (v28 + 64));
          __swift_destroy_boxed_opaque_existential_0(v47);
          sub_21D1C442C(v28, sub_21D9D7920, v25);

          goto LABEL_34;
        }
      }

LABEL_28:

      v1 = v41;
      v2 = &selRef__setContentViewMarginType_;
    }

    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_280D0F2C0);
    v36 = sub_21DBF84AC();
    v37 = sub_21DBFAE9C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21D0C9000, v36, v37, "Ignoring remove(assignment:) because the assignment has already been removed", v38, 2u);
      MEMORY[0x223D46520](v38, -1, -1);
    }

LABEL_34:
    v8 = v16;
    v6 = v43;
    v9 = v44;
    v5 = v42;
    if (v42 < 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v17 = v8;
    v18 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v44 = (v18 - 1) & v18;
    v15 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_37;
    }

    v18 = *(v6 + 8 * v16);
    ++v17;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void TTRReminderEditor.addAssignment(assigneeID:originatorID:)(void *a1, void *a2)
{
  v4 = *(v2 + 16);
  v40 = [v4 assignmentContext];
  if (!v40)
  {
    return;
  }

  if (a2)
  {
    v41 = a2;
  }

  else
  {
    v12 = [v4 listChangeItem];
    if (!v12 || (v13 = v12, v14 = sub_21D9BEE50(), v13, !v14) || (v15 = [v14 objectID], v14, (v41 = v15) == 0))
    {
      if (qword_280D0F2B8 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_10;
    }
  }

  v5 = a2;
  v6 = [v40 assignments];
  sub_21D0D8CF0(0, &qword_27CE59850, 0x277D44598);
  sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850, 0x277D44598);
  v7 = sub_21DBFAAAC();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21DBFAB5C();
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
  }

  else
  {
    v10 = 0;
    v20 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v11 = v22 & *(v7 + 56);
  }

  v39 = 0;
  v23 = (v9 + 64) >> 6;
LABEL_20:
  v24 = v10;
  while (v7 < 0)
  {
    if (!sub_21DBFBDBC() || (swift_dynamicCast(), v28 = v44, v10 = v24, v27 = v11, !v44))
    {
LABEL_35:
      sub_21D0CFAF8(v7);
      if (v39)
      {
      }

      else
      {
        v36 = [v40 addAssignmentWithAssigneeID:a1 originatorID:v41 status:1];
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        v38 = v36;
        sub_21D182E74(sub_21D9D794C, v37);
      }

      return;
    }

LABEL_32:
    v43 = v27;
    v29 = [v28 assigneeID];
    v30 = [v28 originatorID];
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v31 = a1;
    v32 = v41;
    v33 = v29;
    v34 = v30;
    if (sub_21DBFB63C())
    {
      v35 = sub_21DBFB63C();

      if (v35)
      {

        v39 = 1;
        v11 = v43;
        goto LABEL_20;
      }
    }

    else
    {
    }

    sub_21D9C7F8C(v28);

    v24 = v10;
    v11 = v43;
  }

  v25 = v24;
  v26 = v11;
  v10 = v24;
  if (v11)
  {
LABEL_28:
    v27 = (v26 - 1) & v26;
    v28 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v28)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v10 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v10 >= v23)
    {
      goto LABEL_35;
    }

    v26 = *(v8 + 8 * v10);
    ++v25;
    if (v26)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_10:
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_280D0F2C0);
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEBC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21D0C9000, v17, v18, "addAssignment(assigneeID:) failed. Can't find sharee ID for the current user", v19, 2u);
    MEMORY[0x223D46520](v19, -1, -1);
  }
}

void static TTRReminderEditor.move(moves:saveRequest:shouldSave:undoContext:)(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v23 = v4 - 1;
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      sub_21D0D3954(a4, aBlock, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0D3954(aBlock, v27, &unk_27CE60D80, &unk_21DC093F0);
      v8 = v6;
      v9 = v7;
      v10 = [a2 updateReminder_];
      sub_21D0D3954(v27, v26, &unk_27CE60D80, &unk_21DC093F0);
      v25[6] = 0;
      sub_21D0D3954(v26, v25, &unk_27CE60D80, &unk_21DC093F0);
      v11 = [v10 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v26, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(v27, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
      v12 = [v10 subtaskContext];
      if (v12)
      {
        v13 = v12;
        v14 = [v10 listChangeItem];
        if (v14)
        {
          v15 = v14;
          v16 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v9, v14, v13, 0);
        }

        else
        {
          v16 = v9;
        }

        [v13 insertReminderChangeItem:v16 afterReminderChangeItem:0];

        sub_21D0CF7E0(v25, &unk_27CE60D80, &unk_21DC093F0);
        v17 = v23;
        if (!v23)
        {
          break;
        }
      }

      else
      {

        sub_21D0CF7E0(v25, &unk_27CE60D80, &unk_21DC093F0);
        v17 = v23;
        if (!v23)
        {
          break;
        }
      }

      v23 = v17 - 1;
    }
  }

  if (a3)
  {
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v18 = sub_21DBFB12C();
    aBlock[4] = sub_21D9C89C0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_127;
    v19 = _Block_copy(aBlock);
    [a2 saveWithQueue:v18 completion:v19];
    _Block_release(v19);
  }
}

void TTRReminderEditor.editAttachmentOrUserActivity(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v21 - v6;
  v8 = *(v2 + 16);
  v9 = [v8 attachmentContext];
  if (v9)
  {

    v10 = sub_21DBF54CC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a1, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    TTRReminderEditor.edit(url:)(v7);
    sub_21D0CF7E0(v7, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v13 = sub_21DBF53FC();
    v14 = [v12 initWithUniversalLink_];

    sub_21DBF535C();
    v15 = [v8 userActivity];
    v16 = [v8 notes];
    [v8 setUserActivity_];
    v17 = sub_21DBFA12C();

    [v8 setNotesAsString_];

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v22 = v15;
    v19 = v16;
    sub_21D182E74(sub_21D9D7978, v18);

    v20 = v22;
  }
}

Swift::Void __swiftcall TTRReminderEditor.edit(notes:)(NSAttributedString_optional notes)
{
  v1 = sub_21D9C7928(notes.value.super.isa);
  if (v1)
  {
    v2 = v1;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v2);
  }
}

void TTRReminderEditor.edit(userActivity:)(void *a1)
{
  v3 = *(v1 + 16);
  v13 = [v3 userActivity];
  if (v13)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_27CE5B258, 0x277D448F0);
      v4 = v13;
      v5 = a1;
      v6 = sub_21DBFB63C();

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_10:
    [v3 setUserActivity_];
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    v12 = v13;
    sub_21D182E74(sub_21D9D7980, v11);

    goto LABEL_11;
  }

  if (a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F2C0);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Ignoring edit(notes:) because the value is the same", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

LABEL_11:
}

void TTRReminderEditor.edit(completed:trackEditedUsing:)(int a1, uint64_t a2)
{
  v33 = a1;
  v4 = a1 & 1;
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *(v2 + 16);
  if ([v18 isCompleted] == v4)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F2C0);
    v34 = sub_21DBF84AC();
    v23 = sub_21DBFAE9C();
    if (os_log_type_enabled(v34, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21D0C9000, v34, v23, "Ignoring edit(completed:) because value is the same", v24, 2u);
      MEMORY[0x223D46520](v24, -1, -1);
    }

    v25 = v34;
  }

  else
  {
    if (a2)
    {
      v31 = [v18 objectID];
      swift_beginAccess();
      sub_21D29B0D0(&v35, v31);
      swift_endAccess();
    }

    v19 = [v18 completionDate];
    if (v19)
    {
      v20 = v19;
      sub_21DBF55FC();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    (*(v6 + 56))(v13, v21, 1, v5);
    sub_21D0D523C(v13, v17, &qword_27CE58D68, &unk_21DC0C060);
    [v18 setCompleted_];
    sub_21D0D3954(v17, v10, &qword_27CE58D68, &unk_21DC0C060);
    v26 = v5;
    v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v28 = swift_allocObject();
    sub_21D0D523C(v10, v28 + v27, &qword_27CE58D68, &unk_21DC0C060);
    sub_21D182E74(sub_21D9D9778, v28);

    v29 = v34;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v30 = sub_21DBF55BC();
    (*(v6 + 8))(v29, v26);
    [v18 setLastBannerPresentationDate_];

    sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
  }
}

void TTRReminderEditor.updateHashtags(toMatchLabels:)(uint64_t a1)
{
  v3 = sub_21DBF78CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v69 = v63 - v8;
  v70 = v1;
  v72 = *(v1 + 16);
  v68 = [v72 hashtagContext];
  if (v68)
  {
    v64 = v4;
    v65 = v3;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = sub_21D9D6344(*(a1 + 16), 0);
      v11 = sub_21D9D4F98(v77, v10 + 4, v9, a1);
      v12 = v77[0];
      sub_21DBF8E0C();
      sub_21D0CFAF8(v12);
      if (v11 != v9)
      {
        __break(1u);
      }
    }

    sub_21DBF784C();
    v13 = [v68 hashtags];
    v14 = sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    v15 = sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
    v16 = sub_21DBFAAAC();

    v66 = v14;
    v63[2] = v15;
    if ((v16 & 0xC000000000000001) != 0)
    {
      sub_21DBFBD1C();
      sub_21DBFAB5C();
      v16 = v77[0];
      v17 = v77[1];
      v18 = v77[2];
      v19 = v77[3];
      v20 = v77[4];
    }

    else
    {
      v19 = 0;
      v21 = -1 << *(v16 + 32);
      v17 = v16 + 56;
      v18 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = v23 & *(v16 + 56);
    }

    v63[1] = v18;
    v24 = (v18 + 64) >> 6;
    v67 = xmmword_21DC08D00;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v30 = sub_21DBFBDBC();
    if (v30 && (*&v73 = v30, swift_dynamicCast(), v29 = v75[0], v27 = v19, v28 = v20, v75[0]))
    {
      while (1)
      {
        v31 = [v29 name];
        sub_21DBFA16C();

        LOBYTE(v31) = sub_21DBF788C();

        if ((v31 & 1) != 0 || (v32 = [v72 hashtagContext]) == 0)
        {

          v19 = v27;
          v20 = v28;
          if (v16 < 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v33 = v32;
          sub_21D9CB53C(v29, 0, 0, 1);
          if (v34)
          {
            v35 = v34;
            [v33 removeHashtag_];
            v36 = [v35 objectID];
            [v33 cancelUndeleteHashtagWithID_];

            v37 = swift_allocObject();
            *(v37 + 16) = 0;
            v38 = sub_21D9CBAD8(v35, 0);

            *(v37 + 16) = v38;

            v39 = swift_allocObject();
            *(v39 + 16) = v37;
            *(v39 + 24) = v35;
            *(v39 + 32) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
            v40 = swift_allocObject();
            *(v40 + 16) = sub_21D9D79B8;
            *(v40 + 24) = v39;
            v76 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

            v75[0] = [v72 objectID];
            v41 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
            *&v73 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
            v42 = swift_allocObject();
            *(v42 + 16) = v67;
            sub_21D0CEB98(v75, v42 + 32);
            sub_21D0CF2E8(&v73, (v42 + 64));
            __swift_destroy_boxed_opaque_existential_0(v75);
            sub_21D1C442C(v42, sub_21D233058, v40);
          }

          else
          {
          }

          v19 = v27;
          v20 = v28;
          if (v16 < 0)
          {
            goto LABEL_20;
          }
        }

LABEL_14:
        v25 = v19;
        v26 = v20;
        v27 = v19;
        if (!v20)
        {
          break;
        }

LABEL_18:
        v28 = (v26 - 1) & v26;
        v29 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v29)
        {
          goto LABEL_29;
        }
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          goto LABEL_29;
        }

        v26 = *(v17 + 8 * v27);
        ++v25;
        if (v26)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
      sub_21D0CFAF8(v16);
      v43 = [v68 hashtags];
      v44 = sub_21DBFAAAC();

      sub_21D9B2298(v44);

      v45 = v71;
      sub_21DBF784C();
      v46 = sub_21DBF785C();
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = (v46 + 40);
        do
        {
          v49 = *(v48 - 1);
          v50 = *v48;
          sub_21DBF8E0C();
          if ((sub_21DBF788C() & 1) != 0 || (v51 = [v72 hashtagContext]) == 0)
          {
          }

          else
          {
            v52 = v51;
            sub_21D9CB53C(v49, v50, 0, 0);
            if (v53)
            {
              v54 = v53;
            }

            else
            {
              v55 = sub_21DBFA12C();
              v56 = [v52 addHashtagWithType:0 name:v55];

              v57 = swift_allocObject();
              *(v57 + 16) = v56;
              *(v57 + 24) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
              v58 = swift_allocObject();
              *(v58 + 16) = sub_21D9D79AC;
              *(v58 + 24) = v57;
              v76 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

              v75[0] = [v72 objectID];
              v59 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
              *&v73 = v59;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
              v60 = swift_allocObject();
              *(v60 + 16) = v67;
              sub_21D0CEB98(v75, v60 + 32);
              sub_21D0CF2E8(&v73, (v60 + 64));
              __swift_destroy_boxed_opaque_existential_0(v75);
              sub_21D1C442C(v60, sub_21D233058, v58);
            }

            v45 = v71;
          }

          v48 += 2;
          --v47;
        }

        while (v47);
      }

      v61 = *(v64 + 8);
      v62 = v65;
      v61(v45, v65);
      v61(v69, v62);
    }
  }
}

uint64_t static TTRReminderEditor.defaultDueDateComponentsSettingToNextFullHour(dateComponents:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v21 = sub_21DBF5A0C();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF583C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF5A2C();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF563C();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF559C();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6);
  sub_21DBF584C();
  (*(v7 + 8))(v9, v6);
  v16 = v21;
  (*(v3 + 104))(v5, *MEMORY[0x277CC9980], v21);
  sub_21DBF5A1C();
  (*(v3 + 8))(v5, v16);
  v17 = sub_21DBF509C();
  (*(*(v17 - 8) + 16))(a2, v24, v17);
  sub_21DBF4F6C();
  sub_21DBF4FDC();
  sub_21DBF4FFC();
  sub_21DBF4DFC();
  (*(v22 + 8))(v12, v23);
  return (*(v13 + 8))(v15, v20);
}

void sub_21D9B84D8(void (*a1)(id))
{
  sub_21D0D3954(v1 + 24, v7, &unk_27CE60D80, &unk_21DC093F0);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    a1([v5 disableUndoRegistration]);
    [v5 enableUndoRegistration];
  }

  else
  {
    v6 = sub_21D0CF7E0(v7, &unk_27CE60D80, &unk_21DC093F0);
    a1(v6);
  }
}

uint64_t static TTRReminderEditor.tomorrowDueDateComponents(now:)@<X0>(uint64_t a2@<X8>)
{
  v64 = a2;
  v2 = sub_21DBF509C();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF5A2C();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v60 = sub_21DBF563C();
  v69 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v68 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v13 - 8);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v54 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v20 = sub_21DBF5C4C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  sub_21DBF507C();
  v26 = *(v21 + 48);
  v27 = v26(v19, 1, v20);
  v65 = v25;
  v56 = v26;
  if (v27 == 1)
  {
    v28 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v26(v19, 1, v20) != 1)
    {
      sub_21D0CF7E0(v19, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  (*(v57 + 8))(v6, v58);
  v29 = v69;
  v30 = *(v69 + 48);
  v31 = v60;
  if (v30(v9, 1, v60) == 1)
  {
    v32 = v67;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v33 = v30(v9, 1, v31);
    v34 = v59;
    if (v33 != 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    v35 = *(v29 + 32);
    v32 = v67;
    v35(v67, v9, v31);
    v34 = v59;
  }

  static TTRReminderEditor.tomorrowDueDate(now:)(v32, v68);
  v36 = v66;
  (*(v21 + 16))(v66, v65, v20);
  (*(v21 + 56))(v36, 0, 1, v20);
  v37 = sub_21DBF55BC();
  v38 = v36;
  v39 = v55;
  sub_21D0D3954(v38, v55, &unk_27CE60DB0, qword_21DC0BF70);
  v40 = v56;
  if (v56(v39, 1, v20) == 1)
  {
    v41 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v40(v39, 1, v20) != 1)
    {
      sub_21D0CF7E0(v39, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v21 + 32))(v34, v39, v20);
  }

  v42 = objc_opt_self();
  v43 = sub_21DBF5C0C();
  v44 = *(v21 + 8);
  v44(v34, v20);
  v45 = [v42 rem:v37 dateComponentsWithDate:v43 timeZone:1 isAllDay:?];

  v46 = v64;
  sub_21DBF4EFC();

  v47 = sub_21DBF4EDC();
  v48 = [v47 rem_strippingTimeZone];

  v49 = v61;
  sub_21DBF4EFC();

  v51 = v62;
  v50 = v63;
  (*(v62 + 8))(v46, v63);
  sub_21D0CF7E0(v66, &unk_27CE60DB0, qword_21DC0BF70);
  v52 = *(v69 + 8);
  v52(v68, v31);
  v52(v67, v31);
  v44(v65, v20);
  return (*(v51 + 32))(v46, v49, v50);
}

uint64_t static TTRReminderEditor.postponedDueDateComponents(to:dueDate:timeZone:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a1;
  v46 = a2;
  v50 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v39 - v5;
  v6 = sub_21DBF563C();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF5C4C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21DBF5A2C();
  v54 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF509C();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8, &qword_21DC109A0);
  v18 = sub_21DBF5A0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC08D10;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277CC9988], v18);
  v24(v23 + v20, *MEMORY[0x277CC9998], v18);
  v24(v23 + 2 * v20, *MEMORY[0x277CC9968], v18);
  v25 = v41;
  sub_21D1D0F50(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21DBF58DC();

  v27 = v54 + 8;
  v26 = *(v54 + 8);
  v28 = v40;
  v26(v12, v40);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v29 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  sub_21DBF58BC();
  v30 = v10;
  v31 = v45;
  (*(v43 + 8))(v30, v44);
  v26(v12, v28);
  sub_21DBF4F5C();
  sub_21DBF4F6C();
  sub_21DBF4FCC();
  sub_21DBF4FDC();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v46 = v17;
  sub_21DBF597C();
  v32 = v28;
  v54 = v27;
  v26(v12, v28);
  v33 = *(v25 + 48);
  v34 = v42;
  if ((v33)(v31, 1) == 1)
  {
    v35 = v49;
    (*(v25 + 16))(v49, v52, v34);
    if (v33(v31, 1, v34) != 1)
    {
      sub_21D0CF7E0(v31, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    v35 = v49;
    (*(v25 + 32))(v49, v31, v34);
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF58BC();
  v26(v12, v32);
  (*(v25 + 8))(v35, v34);
  v36 = v48;
  v37 = *(v47 + 8);
  v37(v53, v48);
  return (v37)(v46, v36);
}

uint64_t static TTRReminderEditor.todayDueDateComponents(now:)@<X0>(uint64_t a2@<X8>)
{
  v58 = a2;
  v2 = sub_21DBF509C();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF5A2C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v10 = sub_21DBF563C();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = sub_21DBF5C4C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  sub_21DBF507C();
  v25 = *(v20 + 48);
  v26 = v25(v18, 1, v19);
  v59 = v24;
  v50 = v25;
  if (v26 == 1)
  {
    v27 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v25(v18, 1, v19) != 1)
    {
      sub_21D0CF7E0(v18, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  (*(v51 + 8))(v6, v52);
  v29 = v61;
  v28 = v62;
  v30 = *(v61 + 48);
  if (v30(v9, 1, v62) == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v31 = v30(v9, 1, v28);
    v32 = v53;
    if (v31 != 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    (*(v29 + 32))(v60, v9, v28);
    v32 = v53;
  }

  v33 = v54;
  (*(v20 + 16))(v54, v59, v19);
  (*(v20 + 56))(v33, 0, 1, v19);
  v34 = sub_21DBF55BC();
  v35 = v49;
  sub_21D0D3954(v33, v49, &unk_27CE60DB0, qword_21DC0BF70);
  v36 = v50;
  if (v50(v35, 1, v19) == 1)
  {
    v37 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v36(v35, 1, v19) != 1)
    {
      sub_21D0CF7E0(v35, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v20 + 32))(v32, v35, v19);
  }

  v38 = objc_opt_self();
  v39 = sub_21DBF5C0C();
  v40 = *(v20 + 8);
  v40(v32, v19);
  v41 = [v38 rem:v34 dateComponentsWithDate:v39 timeZone:1 isAllDay:?];

  v42 = v58;
  sub_21DBF4EFC();

  v43 = sub_21DBF4EDC();
  v44 = [v43 rem_strippingTimeZone];

  v45 = v55;
  sub_21DBF4EFC();

  v47 = v56;
  v46 = v57;
  (*(v56 + 8))(v42, v57);
  sub_21D0CF7E0(v33, &unk_27CE60DB0, qword_21DC0BF70);
  (*(v61 + 8))(v60, v62);
  v40(v59, v19);
  return (*(v47 + 32))(v42, v45, v46);
}

uint64_t static TTRReminderEditor.startOfWeekDueDateComponents(with:now:)@<X0>(uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v108 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = &v88 - v4;
  v5 = sub_21DBF509C();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v102 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v88 - v12;
  v13 = sub_21DBF5C4C();
  v14 = *(v13 - 8);
  v109 = v13;
  v110 = v14;
  MEMORY[0x28223BE20](v13);
  v92 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v88 - v17;
  v18 = sub_21DBF5A2C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v22 - 8);
  v94 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v88 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  v30 = sub_21DBF563C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v93 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v106 = &v88 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  v38 = v31;
  v103 = v19;
  v40 = v19 + 8;
  v39 = *(v19 + 8);
  v107 = v18;
  v99 = v39;
  v39(v21, v18);
  v41 = *(v38 + 6);
  if (v41(v29, 1, v30) == 1)
  {
    sub_21D0CF7E0(v29, &qword_27CE58D68, &unk_21DC0C060);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_280D0F2C0);
    v43 = sub_21DBF84AC();
    v44 = sub_21DBFAEBC();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v110;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_21D0C9000, v43, v44, "TTRReminderEditor: Unable to retrieve a date from dueDateComponents for startOfWeekDueDateComponents", v47, 2u);
      MEMORY[0x223D46520](v47, -1, -1);
    }

    (*(v103 + 7))(v105, 1, 1, v107);
    (*(v46 + 56))(v104, 1, 1, v109);
    return sub_21DBF504C();
  }

  else
  {
    v90 = v40;
    v49 = *(v38 + 4);
    v95 = v37;
    v49(v37, v29, v30);
    static TTRReminderEditor.startOfWeekDate(now:)(v26);
    v98 = v41;
    v50 = v30;
    if (v41(v26, 1, v30) == 1)
    {
      v51 = v38;
      sub_21D0CF7E0(v26, &qword_27CE58D68, &unk_21DC0C060);
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v52 = sub_21DBF84BC();
      __swift_project_value_buffer(v52, qword_280D0F2C0);
      v53 = sub_21DBF84AC();
      v54 = sub_21DBFAEBC();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v110;
      v57 = v95;
      if (v55)
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_21D0C9000, v53, v54, "TTRReminderEditor: Unable to find a startOfWeekDate", v58, 2u);
        MEMORY[0x223D46520](v58, -1, -1);
      }

      (*(v103 + 7))(v105, 1, 1, v107);
      (*(v56 + 56))(v104, 1, 1, v109);
      sub_21DBF504C();
      return v51[1](v57, v50);
    }

    else
    {
      v105 = v38;
      v103 = v38 + 32;
      v49(v106, v26, v30);
      v59 = v91;
      sub_21DBF507C();
      v61 = v109;
      v60 = v110;
      v62 = *(v110 + 48);
      v63 = v62(v59, 1, v109);
      v89 = v50;
      v88 = v49;
      if (v63 == 1)
      {
        v64 = [objc_opt_self() defaultTimeZone];
        sub_21DBF5C2C();

        if (v62(v59, 1, v61) != 1)
        {
          sub_21D0CF7E0(v59, &unk_27CE60DB0, qword_21DC0BF70);
        }
      }

      else
      {
        (*(v60 + 32))(v100, v59, v61);
      }

      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8, &qword_21DC109A0);
      v65 = sub_21DBF5A0C();
      v66 = *(v65 - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_21DC08D10;
      v70 = v69 + v68;
      v71 = *(v66 + 104);
      v71(v70, *MEMORY[0x277CC9988], v65);
      v71(v70 + v67, *MEMORY[0x277CC9998], v65);
      v71(v70 + 2 * v67, *MEMORY[0x277CC9968], v65);
      sub_21D1D0F50(v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_21DBF58DC();

      v72 = v107;
      v73 = v99;
      v99(v21, v107);
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v74 = [objc_opt_self() defaultTimeZone];
      v75 = v92;
      sub_21DBF5C2C();

      sub_21DBF58BC();
      v76 = *(v110 + 8);
      v77 = v75;
      v78 = v109;
      v110 += 8;
      v104 = v76;
      (v76)(v77, v109);
      v73(v21, v72);
      sub_21DBF4F5C();
      sub_21DBF4F6C();
      sub_21DBF4FCC();
      sub_21DBF4FDC();
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v79 = v94;
      sub_21DBF597C();
      v73(v21, v72);
      v80 = v89;
      v81 = v98;
      v82 = v78;
      if (v98(v79, 1, v89) == 1)
      {
        v83 = v93;
        (*(v105 + 2))(v93, v106, v80);
        if (v81(v79, 1, v80) != 1)
        {
          sub_21D0CF7E0(v79, &qword_27CE58D68, &unk_21DC0C060);
        }
      }

      else
      {
        v83 = v93;
        v88(v93, v79, v80);
      }

      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v84 = v100;
      sub_21DBF58BC();
      v99(v21, v72);
      v85 = *(v105 + 1);
      v85(v83, v80);
      v86 = v97;
      v87 = *(v96 + 8);
      v87(v102, v97);
      v87(v101, v86);
      (v104)(v84, v82);
      v85(v106, v80);
      return (v85)(v95, v80);
    }
  }
}

uint64_t static TTRReminderEditor.defaultDueDateComponentsFromNow()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  static TTRReminderEditor.defaultDueDateComponents(from:)(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t TTRReminderEditor.WeekendType.localizedDescription.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRReminderEditor.weekendDueDateComponents(now:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v76 = a1;
  v77 = a2;
  v3 = sub_21DBF5A2C();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_21DBF5C4C();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v60 - v8;
  v9 = sub_21DBF509C();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v60 - v16;
  v73 = sub_21DBF563C();
  v17 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64860, &qword_21DC34BA8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v60 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64868, &qword_21DC34BB0);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v29 = sub_21DBF4D0C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D9CDF64(v25);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64870, &qword_21DC34BB8);
  if ((*(*(v33 - 8) + 48))(v25, 1, v33) == 1)
  {
    sub_21D0CF7E0(v25, &qword_27CE64860, &qword_21DC34BA8);
    v34 = v64;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v35 = [objc_opt_self() defaultTimeZone];
    v36 = v63;
    sub_21DBF5C2C();

    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v37 = v62;
    sub_21DBF58BC();
    (*(v17 + 8))(v19, v73);
    (*(v71 + 8))(v36, v72);
    (*(v65 + 8))(v34, v66);
    static TTRReminderEditor.todayDueDateComponents(now:)(v76);
    result = (*(v74 + 8))(v37, v75);
    v39 = 0;
  }

  else
  {
    v70 = v17;
    v40 = v25[*(v33 + 48)];
    v41 = *(v26 + 48);
    v64 = v30;
    v42 = v30[4];
    (v42)(v28, v25, v29);
    v28[v41] = v40;
    LODWORD(v62) = v28[*(v26 + 48)];
    v65 = v29;
    (v42)(v32, v28, v29);
    v63 = v32;
    sub_21DBF4CDC();
    v43 = v71;
    v44 = v72;
    v45 = v61;
    (*(v71 + 56))(v61, 1, 1, v72);
    v66 = v22;
    v46 = sub_21DBF55BC();
    v47 = v69;
    sub_21D0D3954(v45, v69, &unk_27CE60DB0, qword_21DC0BF70);
    v48 = *(v43 + 48);
    if (v48(v47, 1, v44) == 1)
    {
      v49 = [objc_opt_self() defaultTimeZone];
      v50 = v67;
      sub_21DBF5C2C();

      v51 = v48(v47, 1, v44);
      v52 = v75;
      v53 = v74;
      if (v51 != 1)
      {
        sub_21D0CF7E0(v69, &unk_27CE60DB0, qword_21DC0BF70);
      }
    }

    else
    {
      v50 = v67;
      (*(v43 + 32))(v67, v47, v44);
      v52 = v75;
      v53 = v74;
    }

    v54 = objc_opt_self();
    v55 = sub_21DBF5C0C();
    (*(v43 + 8))(v50, v44);
    v56 = [v54 rem:v46 dateComponentsWithDate:v55 timeZone:1 isAllDay:?];

    v57 = v68;
    sub_21DBF4EFC();

    v58 = sub_21DBF4EDC();
    v59 = [v58 rem_strippingTimeZone];

    sub_21DBF4EFC();
    (*(v53 + 8))(v57, v52);
    sub_21D0CF7E0(v45, &unk_27CE60DB0, qword_21DC0BF70);
    (*(v70 + 8))(v66, v73);
    result = v64[1](v63, v65);
    v39 = v62;
  }

  *v77 = v39;
  return result;
}

uint64_t static TTRReminderEditor.tomorrowDueDate(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - v3;
  v4 = sub_21DBF509C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0, &unk_21DC18C20);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v34 = &v32 - v21;
  v22 = *(v8 + 56);
  v22(v18, 1, 1, v7, v20);
  sub_21D0D3954(v18, v15, &qword_27CE5A8B0, &unk_21DC18C20);
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v24 = v10;
    if (v23(v15, 1, v7) != 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE5A8B0, &unk_21DC18C20);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v15, v7);
    v24 = v10;
  }

  (v22)(v33, 1, 1, v7);
  v25 = sub_21DBF5C4C();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  sub_21DBF504C();
  sub_21DBF4F1C();
  v26 = v34;
  v27 = v38;
  sub_21DBF598C();
  (*(v36 + 8))(v6, v37);
  (*(v8 + 8))(v24, v7);
  sub_21D0CF7E0(v18, &qword_27CE5A8B0, &unk_21DC18C20);
  v28 = sub_21DBF563C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v26, 1, v28) != 1)
  {
    return (*(v29 + 32))(v39, v26, v28);
  }

  (*(v29 + 16))(v39, v27, v28);
  result = (v30)(v26, 1, v28);
  if (result != 1)
  {
    return sub_21D0CF7E0(v26, &qword_27CE58D68, &unk_21DC0C060);
  }

  return result;
}

uint64_t static TTRReminderEditor.thisWeekendDueDate(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_21DBF58EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF557C();
  v19 = 0;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  (*(v4 + 104))(v6, *MEMORY[0x277CC98E8], v3);
  v17 = a1;
  LOBYTE(a1) = sub_21DBF586C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  if (a1)
  {
    return (*(v12 + 32))(v18, v14, v11);
  }

  (*(v12 + 8))(v14, v11);
  return (*(v12 + 16))(v18, v17, v11);
}

char **TTRReminderEditor.edit(listID:knownSubtaskChangeItems:forceCopyingReminder:allowsLossyCopying:assignmentCopying:)(void *a1, uint64_t a2, int a3, char a4, char *a5)
{
  v144 = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v134 = *(v5 + 16);
  v11 = [v134 listID];
  if (v11)
  {
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v12 = v11;
    v13 = a1;
    v14 = sub_21DBFB63C();

    if (v14)
    {
      if (qword_280D0F2B8 == -1)
      {
LABEL_4:
        v15 = sub_21DBF84BC();
        __swift_project_value_buffer(v15, qword_280D0F2C0);
        v16 = v13;
        v17 = sub_21DBF84AC();
        v18 = sub_21DBFAE9C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&dword_21D0C9000, v17, v18, "Ignoring edit(listID:) because list is the same {listID: %@}", v19, 0xCu);
          sub_21D0CF7E0(v20, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v20, -1, -1);
          MEMORY[0x223D46520](v19, -1, -1);
        }

LABEL_15:
        v36 = v134;
LABEL_43:

        return v36;
      }

LABEL_102:
      swift_once();
      goto LABEL_4;
    }
  }

  v22 = sub_21D9C4584(a1);
  if (!v22)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_280D0F2C0);
    v30 = a1;
    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_21D0C9000, v31, v32, "Ignoring edit(listID:) because it failed to obtain REMListChangeItem {listID: %@}", v33, 0xCu);
      sub_21D0CF7E0(v34, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    goto LABEL_15;
  }

  v23 = v22;
  v128 = v10;
  v130 = a4;
  v131 = a3;
  v132 = a2;
  v24 = [v134 saveRequest];
  *(&v142 + 1) = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  v143 = &protocol witness table for REMReminderChangeItem;
  *&v141 = v134;
  v25 = __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
  v133 = v134;
  v26 = v23;
  v27 = [v133 listChangeItem];
  if (v27)
  {
    *&v139[0] = v27;
    sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680);
    v28 = sub_21D1D20BC();
  }

  else
  {
    v28 = 0;
  }

  v37 = [v26 objectID];
  v38 = v37;
  if (v28)
  {
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v39 = sub_21DBFB63C();

    if (v39)
    {

      v40 = 0;
      goto LABEL_61;
    }
  }

  else
  {
  }

  if (sub_21D1D2090())
  {
    v41 = 0;
LABEL_25:

LABEL_26:
    v42 = v24;
    __swift_destroy_boxed_opaque_existential_0(&v141);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v43 = sub_21DBF84BC();
    __swift_project_value_buffer(v43, qword_280D0F2C0);
    v44 = a1;
    v45 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();

    if (os_log_type_enabled(v45, v46))
    {
      v126 = v26;
      v47 = v11;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v141 = v50;
      *v48 = 136315394;
      v51 = "sslessly to the target list";
      v52 = "gular list to template";
      v53 = 0xD000000000000037;
      if (v41 != 2)
      {
        v53 = 0xD000000000000036;
        v52 = "TTRIMenuButtonAttachment.swift";
      }

      v54 = 0xD00000000000003BLL;
      if (v41)
      {
        v51 = "ot linked to an account";
      }

      else
      {
        v54 = 0xD000000000000035;
      }

      if (v41 <= 1)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      if (v41 <= 1)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      v57 = sub_21D0CDFB4(v55, v56 | 0x8000000000000000, &v141);

      *(v48 + 4) = v57;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v44;
      *v49 = v44;
      v58 = v44;
      _os_log_impl(&dword_21D0C9000, v45, v46, "TTRReminderEditor: ignoring edit(listID:) because this reminder cannot be moved {reason: %s, listID: %@}", v48, 0x16u);
      sub_21D0CF7E0(v49, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x223D46520](v50, -1, -1);
      MEMORY[0x223D46520](v48, -1, -1);
    }

    else
    {
    }

    v36 = v133;
    goto LABEL_43;
  }

  if (sub_21D1D2094())
  {
    v41 = 3;
    goto LABEL_25;
  }

  v60 = [v133 accountID];
  v61 = [v26 accountID];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v62 = sub_21DBFB63C();

  if ((v62 & 1) == 0)
  {
    v67 = sub_21D1C3494(v133, v26);

    if (v67 == 2)
    {
      v41 = 2;
      goto LABEL_26;
    }

    if ((v67 & 1) == 0 && (v130 & 1) == 0)
    {
      v41 = 1;
      goto LABEL_26;
    }

    goto LABEL_58;
  }

  v63 = [v26 accountCapabilities];
  v64 = [v63 supportsMoveAcrossLists];

  if ((v64 & 1) == 0)
  {
    goto LABEL_57;
  }

  v65 = [v26 accountCapabilities];
  v66 = [v65 supportsMoveAcrossSharedLists];

  if (!v66)
  {
    v68 = [*v25 listChangeItem];
    if (!v68 || (*&v139[0] = v68, sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680), v69 = sub_21D1D2098(), *&v139[0], (v69 & 1) == 0))
    {
      v70 = [v26 isShared];

      if ((v70 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_58:
      v40 = 1;
      goto LABEL_61;
    }

LABEL_57:

    goto LABEL_58;
  }

LABEL_60:
  v40 = 0;
LABEL_61:
  __swift_destroy_boxed_opaque_existential_0(&v141);
  v71 = v132;
  if (v132)
  {
    sub_21DBF8E0C();
    v134 = v132;
    goto LABEL_85;
  }

  v72 = [v24 store];
  v73 = [v133 objectID];
  *&v141 = 0;
  v74 = [v72 fetchReminderWithObjectID:v73 error:&v141];

  if (!v74)
  {
    v125 = v40;
    v88 = v141;
    v89 = sub_21DBF52DC();

    swift_willThrow();
LABEL_78:

    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v91 = sub_21DBF84BC();
    __swift_project_value_buffer(v91, qword_280D0F2C0);
    v92 = v26;

    v93 = sub_21DBF84AC();
    v94 = sub_21DBFAEBC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412546;
      v97 = [v133 objectID];
      *(v95 + 4) = v97;
      *v96 = v97;
      *(v95 + 12) = 2112;
      v98 = [v92 objectID];
      *(v95 + 14) = v98;
      v96[1] = v98;
      _os_log_impl(&dword_21D0C9000, v93, v94, "Failed to move subtasks to another list { parentReminderID: %@, toList: %@ }", v95, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v96, -1, -1);
      MEMORY[0x223D46520](v95, -1, -1);
    }

    v134 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v75 = v141;
  v76 = [v74 subtaskContext];
  if (!v76)
  {

    v134 = MEMORY[0x277D84F90];
    goto LABEL_85;
  }

  v135 = v74;
  v123 = v72;
  v125 = v40;
  *&v141 = 0;
  v77 = v76;
  v78 = [v76 fetchRemindersForMovingWithError_];

  v79 = v141;
  if (!v78)
  {
    v90 = v141;
    v89 = sub_21DBF52DC();

    swift_willThrow();
    v72 = v135;
    goto LABEL_78;
  }

  sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v80 = sub_21DBFA5EC();
  v81 = v79;

  if (v80 >> 62)
  {
    v82 = sub_21DBFBD7C();
    v83 = v74;
    if (v82)
    {
      goto LABEL_68;
    }

LABEL_117:

    v134 = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v83 = v74;
  if (!v82)
  {
    goto LABEL_117;
  }

LABEL_68:
  *&v141 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if (v82 < 0)
  {
    __break(1u);
  }

  v84 = 0;
  do
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x223D44740](v84, v80);
    }

    else
    {
      v85 = *(v80 + 8 * v84 + 32);
    }

    v86 = v85;
    ++v84;
    v87 = [v24 updateReminder_];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v82 != v84);

  v134 = v141;
LABEL_83:
  v71 = 0;
LABEL_84:
  v40 = v125;
LABEL_85:
  if ((v40 | v131))
  {
    LOBYTE(v141) = v128;
    v99 = v133;
    v129 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v99, v134, v26, v131 & 1, v130 & 1, &v141);
  }

  else
  {
    v100 = v133;
    v101 = [v100 assignmentContext];
    [v101 removeAllAssignments];

    v102 = v26;
    v13 = &selRef__setContentViewMarginType_;
    v127 = v102;
    [v102 addReminderChangeItem_];
    v103 = [v100 subtaskContext];
    v129 = v100;
    if (v103)
    {
      v104 = v103;
      if (v134 >> 62)
      {
        v12 = sub_21DBFBD7C();
        v124 = v24;
        if (v12)
        {
LABEL_93:
          while (!__OFSUB__(v12--, 1))
          {
            if ((v134 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x223D44740](v12, v134);
            }

            else
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_100;
              }

              if (v12 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_101;
              }

              v105 = *(v134 + 32 + 8 * v12);
            }

            v106 = v105;
            v107 = [v105 assignmentContext];
            [v107 removeAllAssignments];

            [v104 addReminderChangeItem_];
            if (!v12)
            {
              goto LABEL_104;
            }
          }

          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      else
      {
        v12 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v124 = v24;
        if (v12)
        {
          goto LABEL_93;
        }
      }

LABEL_104:

      v24 = v124;
    }

    v26 = v127;
    v71 = v132;
  }

  if (v11)
  {
    v109 = v26;
    v110 = swift_allocObject();
    *(v110 + 16) = v71;
    *(v110 + 24) = v11;
    *(v110 + 32) = v131 & 1;
    *(v110 + 33) = v130 & 1;
    sub_21DBF8E0C();
    v111 = v11;
    sub_21D182E74(sub_21D9D79C4, v110);
  }

  else
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v109 = v26;
    v112 = sub_21DBF84BC();
    __swift_project_value_buffer(v112, qword_280D0F2C0);
    v113 = sub_21DBF84AC();
    v114 = sub_21DBFAECC();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = v24;
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_21D0C9000, v113, v114, "edit(listID:) not registering undo because previous list is nil", v116, 2u);
      v117 = v116;
      v24 = v115;
      MEMORY[0x223D46520](v117, -1, -1);
    }
  }

  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  sub_21D0D3954(&v141, v139, &unk_27CE60D80, &unk_21DC093F0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v118 = qword_280D1AA18;
  sub_21D0CF7E0(&v141, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRListEditor();
  inited = swift_initStackObject();
  v137 = type metadata accessor for TTRUserDefaults();
  v138 = &protocol witness table for TTRUserDefaults;
  *&v136 = v118;
  *(inited + 64) = 0;
  *(inited + 16) = v109;
  *(inited + 56) = v140;
  v120 = v139[0];
  *(inited + 40) = v139[1];
  *(inited + 24) = v120;
  sub_21D0D15E0(&v136, inited + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_21DC09CF0;
  v122 = v118;
  *(v121 + 32) = [v133 objectID];
  sub_21D1BF9F4(v121);

  swift_setDeallocating();
  sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
  __swift_destroy_boxed_opaque_existential_0((inited + 72));
  return v129;
}

uint64_t TTRReminderEditor.edit(toMatch:now:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v152 = a2;
  v148 = 0;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64878, &unk_21DC34BC0);
  MEMORY[0x28223BE20](v150);
  v6 = &v143 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880, &unk_21DC40300);
  MEMORY[0x28223BE20](v7 - 8);
  v153 = &v143 - v8;
  v154 = sub_21DBF7E8C();
  v9 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v155 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v143 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70, &unk_21DC299D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v143 - v15;
  v17 = sub_21DBF7E5C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v143 - v22;
  v156 = a1;
  sub_21DBF7FCC();
  v24 = (*(v18 + 48))(v16, 1, v17);
  v149 = v6;
  if (v24 == 1)
  {
    sub_21D0CF7E0(v16, &qword_27CE61B70, &unk_21DC299D0);
    v25 = 0;
    v26 = v156;
    v27 = v3;
    goto LABEL_3;
  }

  (*(v18 + 32))(v23, v16, v17);
  v30 = *(v18 + 16);
  v163 = v23;
  v30(v20, v23, v17);
  v31 = (*(v18 + 88))(v20, v17);
  if (v31 != *MEMORY[0x277D458A0])
  {
    v27 = v3;
    if (v31 != *MEMORY[0x277D458A8])
    {
      v26 = v156;
      if (v31 != *MEMORY[0x277D45898])
      {
        goto LABEL_126;
      }

      v28 = v9;
      (*(v18 + 8))(v163, v17);
      v25 = 0;
      goto LABEL_4;
    }

    TTRReminderEditor.updateHashtags(toMatchLabels:)(MEMORY[0x277D84FA0]);
    (*(v18 + 8))(v163, v17);
    v25 = 0;
    v26 = v156;
LABEL_3:
    v28 = v9;
LABEL_4:
    v29 = v154;
LABEL_60:
    LOBYTE(v36) = sub_21D9CEAC0(v26, v152) | v25;
    v88 = sub_21DBF7E9C();
    if (v88)
    {
      v89 = v88;
      v90 = *(v27 + 16);
      [v90 priority];
      v91 = REMReminderPriorityLevelForPriority();
      v92 = *(v89 + 16);
      v93 = 32;
      v94 = v92;
      while (v94)
      {
        v95 = *(v89 + v93);
        v93 += 8;
        --v94;
        if (v95 == v91)
        {

          goto LABEL_83;
        }
      }

      v96 = 32;
      v97 = *(v89 + 16);
      do
      {
        v98 = v97;
        if (!v97)
        {
          break;
        }

        v99 = *(v89 + v96);
        v96 += 8;
        --v97;
      }

      while (v99 != 1);
      v100 = v29;
      v101 = 32;
      v102 = *(v89 + 16);
      do
      {
        v103 = v102;
        if (!v102)
        {
          break;
        }

        v104 = *(v89 + v101);
        v101 += 8;
        --v102;
      }

      while (v104 != 2);
      v105 = 32;
      v106 = 3;
      while (v92)
      {
        v107 = *(v89 + v105);
        v105 += 8;
        --v92;
        if (v107 == 3)
        {
          goto LABEL_76;
        }
      }

      v106 = 0;
LABEL_76:

      v108 = 2;
      if (!v103)
      {
        v108 = v106;
      }

      if (v98)
      {
        v109 = 1;
      }

      else
      {
        v109 = v108;
      }

      [v90 priority];
      v29 = v100;
      if (REMReminderPriorityLevelForPriority() != v109)
      {
        v110 = REMReminderDefaultPriorityForPriorityLevel();
        TTRReminderEditor.edit(priority:)(v110);
        LOBYTE(v36) = 1;
      }
    }

LABEL_83:
    v111 = sub_21DBF7FAC();
    if (v111 != 2)
    {
      v112 = v111;
      v113 = [*(v27 + 16) flaggedContext];
      if (!v113 || (v114 = v113, v115 = [v113 flagged], v114, v115 > 0 != (v112 & 1)))
      {
        TTRReminderEditor.edit(isFlagged:)(v112 & 1);
        LOBYTE(v36) = 1;
      }
    }

    v116 = v153;
    sub_21DBF7FDC();
    if ((*(v28 + 48))(v116, 1, v29) == 1)
    {
      sub_21D0CF7E0(v116, &qword_27CE64880, &unk_21DC40300);
      return v36 & 1;
    }

    (*(v28 + 32))(v155, v116, v29);
    v43 = sub_21D7A5EA8();
    if (v43 >> 62)
    {
      goto LABEL_97;
    }

    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_98;
    }

    goto LABEL_91;
  }

  (*(v18 + 96))(v20, v17);
  v33 = *v20;
  v32 = *(v20 + 1);
  v146 = v20;
  v27 = v3;
  v157 = *(v3 + 16);
  v34 = [v157 hashtagContext];
  if (!v34)
  {
    (*(v18 + 8))(v163, v17);

    v25 = 0;
    v26 = v156;
    v28 = v9;
    v29 = v154;
    goto LABEL_59;
  }

  v160 = v32;
  v151 = v3;
  v144 = v34;
  v35 = [v34 hashtags];
  v162 = v33;
  LOBYTE(v36) = sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
  sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
  v37 = sub_21DBFAAAC();

  v38 = v148;
  sub_21D9B1E50(v37);
  v40 = v39;
  v148 = v38;
  v41 = v162;

  v42 = sub_21D0FC0A8(v40);

  v44 = *(v41 + 16);
  v164 = v18;
  v165 = v17;
  v159 = v44;
  v145 = v9;
  if (!v44)
  {
    v28 = v9;

    v161 = 0;
    v45 = v163;
LABEL_34:
    v29 = v154;
    v67 = v160;
    v162 = *(v160 + 16);
    if (v162)
    {
      v29 = 0;
      v159 = v160 + 32;
      v28 = v42 + 56;
      while (1)
      {
        if (v29 >= *(v67 + 16))
        {
          goto LABEL_96;
        }

        v68 = (v159 + 16 * v29);
        v70 = *v68;
        v69 = v68[1];
        v168 = *v68;
        v169 = v69;
        sub_21DBF8E0C();
        sub_21DBF57AC();
        v71 = sub_21DBF582C();
        (*(*(v71 - 8) + 56))(v13, 0, 1, v71);
        sub_21D176F0C();
        v36 = sub_21DBFBBEC();
        v73 = v72;
        sub_21D0CF7E0(v13, &unk_27CE65010, &qword_21DC08D60);
        if (!*(v42 + 16))
        {
          break;
        }

        sub_21DBFC7DC();
        sub_21DBFA27C();
        v74 = sub_21DBFC82C();
        v75 = -1 << *(v42 + 32);
        v76 = v74 & ~v75;
        if ((*(v28 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
        {
          v77 = ~v75;
          while (1)
          {
            v78 = (*(v42 + 48) + 16 * v76);
            v79 = *v78 == v36 && v78[1] == v73;
            if (v79 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v76 = (v76 + 1) & v77;
            if (((*(v28 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v168 = v70;
          v169 = v69;
          v170 = 0;
          LOBYTE(v171) = 0;
          sub_21DBF8E0C();
          v80 = sub_21D9C7BBC(&v168, 1);
          if (v80)
          {
            v82 = v81;

            sub_21D182E74(sub_21D233058, v82);
          }

          v168 = v70;
          v169 = v69;
          v170 = 1;
          LOBYTE(v171) = 0;
          v83 = sub_21D9C7BBC(&v168, 1);
          v45 = v163;
          if (v83)
          {
            v85 = v84;

            sub_21D182E74(sub_21D233058, v85);
          }

          v161 = 1;
          goto LABEL_55;
        }

LABEL_36:

        v17 = v165;
        v45 = v163;
LABEL_37:
        ++v29;

        v18 = v164;
        v67 = v160;
        if (v29 == v162)
        {

          v28 = v145;
          v29 = v154;
          goto LABEL_58;
        }
      }

LABEL_55:
      v17 = v165;
      goto LABEL_37;
    }

LABEL_58:

    (*(v18 + 8))(v45, v17);
    v27 = v151;
    v26 = v156;
    v25 = v161;
LABEL_59:
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78, &unk_21DC34BD0) + 64);
    v87 = sub_21DBF7FEC();
    (*(*(v87 - 8) + 8))(&v146[v86], v87);
    goto LABEL_60;
  }

  v161 = 0;
  v28 = 0;
  v158 = v41 + 32;
  v29 = v42 + 56;
  v147 = xmmword_21DC08D00;
  while (v28 < *(v41 + 16))
  {
    v46 = v158 + 16 * v28;
    v48 = *v46;
    v47 = *(v46 + 8);
    v168 = *v46;
    v169 = v47;
    sub_21DBF8E0C();
    sub_21DBF57AC();
    v49 = sub_21DBF582C();
    (*(*(v49 - 8) + 56))(v13, 0, 1, v49);
    sub_21D176F0C();
    v36 = sub_21DBFBBEC();
    v51 = v50;
    sub_21D0CF7E0(v13, &unk_27CE65010, &qword_21DC08D60);
    if (*(v42 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v52 = sub_21DBFC82C(), v53 = -1 << *(v42 + 32), v54 = v52 & ~v53, ((*(v29 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
    {
      v55 = ~v53;
      while (1)
      {
        v56 = (*(v42 + 48) + 16 * v54);
        v57 = *v56 == v36 && v56[1] == v51;
        if (v57 || (sub_21DBFC64C() & 1) != 0)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(v29 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:

      v58 = [v157 hashtagContext];
      if (v58)
      {
        v59 = v58;
        sub_21D9CB53C(v48, v47, 0, 0);
        v17 = v165;
        if (v60)
        {
          v61 = v60;

          v161 = 1;
        }

        else
        {
          v62 = sub_21DBFA12C();
          v63 = [v59 addHashtagWithType:0 name:v62];

          v64 = swift_allocObject();
          *(v64 + 16) = v63;
          v161 = 1;
          *(v64 + 24) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
          v65 = swift_allocObject();
          *(v65 + 16) = sub_21D9D9784;
          *(v65 + 24) = v64;
          v171 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);

          v168 = [v157 objectID];
          v66 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
          *&v166 = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
          v36 = swift_allocObject();
          *(v36 + 16) = v147;
          sub_21D0CEB98(&v168, v36 + 32);
          sub_21D0CF2E8(&v166, (v36 + 64));
          __swift_destroy_boxed_opaque_existential_0(&v168);
          sub_21D1C442C(v36, sub_21D233058, v65);
        }

        goto LABEL_11;
      }

      v161 = 1;
    }

    v17 = v165;
LABEL_11:
    ++v28;
    v45 = v163;
    v18 = v164;
    v41 = v162;
    if (v28 == v159)
    {

      v28 = v145;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  v121 = v43;
  v122 = sub_21DBFBD7C();
  v43 = v121;
  if (v122)
  {
LABEL_91:
    if ((v43 & 0xC000000000000001) != 0)
    {
      v117 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_123;
      }

      v117 = *(v43 + 32);
    }

    v118 = v117;

    v119 = v155;
    v120 = sub_21DBF7E7C();
LABEL_105:
    v125 = v120;

    v126 = v125 ^ 1;
    v127 = 1;
    goto LABEL_106;
  }

LABEL_98:

  v43 = sub_21D7A5E9C();
  if (!(v43 >> 62))
  {
    v123 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_100;
  }

LABEL_123:
  v142 = v43;
  v123 = sub_21DBFBD7C();
  v43 = v142;
LABEL_100:
  v119 = v155;
  if (!v123)
  {

    v126 = 0;
    v127 = 0;
LABEL_106:
    v128 = v149;
    v129 = &v149[*(v150 + 64)];
    *v149 = v127;
    v128[1] = v126 & 1;
    (*(v28 + 16))(v129, v119, v29);
    v130 = (*(v28 + 88))(v129, v29);
    if (v130 == *MEMORY[0x277D458C0])
    {
      (*(v28 + 96))(v129, v29);
      if (v126 & 1 | ((v127 & 1) == 0))
      {
        v131 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
        _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v131);
        (*(v28 + 8))(v119, v29);
LABEL_112:

        LOBYTE(v36) = 1;
        return v36 & 1;
      }
    }

    else
    {
      if (v130 == *MEMORY[0x277D458C8])
      {
        (*(v28 + 96))(v129, v29);
        if (!(v126 & 1 | ((v127 & 1) == 0)))
        {
          (*(v28 + 8))(v155, v29);

          return v36 & 1;
        }

        v132 = *(v129 + 5);
        v134 = v129[3];
        v133 = v129[4];
        v135 = v129[2];
        v136 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
        v137 = sub_21DBFA12C();
        v138 = [v136 initWithCenter:v137 radius:v135 identifier:{v134, v133}];

        sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
        v139 = v138;
        v140 = sub_21DBFB3EC();
        v131 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v140 proximity:v132];
        _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v131);

        (*(v28 + 8))(v155, v29);
        goto LABEL_112;
      }

      if (v130 != *MEMORY[0x277D458B8])
      {
        if (v130 != *MEMORY[0x277D458B0])
        {
          goto LABEL_127;
        }

        if (v127)
        {
          _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(0);
          _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(0);
          (*(v28 + 8))(v119, v29);
          LOBYTE(v36) = 1;
          return v36 & 1;
        }
      }
    }

    (*(v28 + 8))(v119, v29);
    return v36 & 1;
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    v124 = MEMORY[0x223D44740](0);
LABEL_104:
    v118 = v124;

    v119 = v155;
    v120 = sub_21DBF7E6C();
    goto LABEL_105;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v124 = *(v43 + 32);
    goto LABEL_104;
  }

  __break(1u);
LABEL_126:
  sub_21DBFC63C();
  __break(1u);
LABEL_127:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id TTRReminderEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

void *sub_21D9BDF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64888, &unk_21DC34BF0);
  sub_21D0D0F1C(&qword_280D0C3F8, &qword_27CE64888, &unk_21DC34BF0, MEMORY[0x277D83970]);
  v2 = sub_21DBFA41C();

  if (v2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_5:

    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v1 + 16) = sub_21D9D978C;
  *(v1 + 24) = v3;
  return v1;
}

Swift::Void __swiftcall TTRReminderEditor.edit(tagged:withHashtagNamed:)(Swift::Bool tagged, Swift::String withHashtagNamed)
{
  object = withHashtagNamed._object;
  countAndFlagsBits = withHashtagNamed._countAndFlagsBits;
  v88 = sub_21DBF78CC();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v70 - v11;
  v13 = *(v2 + 16);
  v14 = [v13 hashtagContext];
  if (!v14)
  {
    return;
  }

  v86 = v6;
  v87 = v14;
  v15 = object;
  v78 = v8;
  v80 = v2;
  v16 = [v14 hashtags];
  v17 = sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
  v81 = sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348, 0x277D44648);
  v18 = sub_21DBFAAAC();

  v92[0] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148, &qword_21DC21710);
  v20 = sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148, &qword_21DC21710, MEMORY[0x277D83B68]);
  v77 = v19;
  sub_21DBF789C();
  if (tagged)
  {
    if (sub_21DBF788C())
    {
      v17 = v87;
      if (qword_280D0F2B8 != -1)
      {
LABEL_52:
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_280D0F2C0);
      sub_21DBF8E0C();
      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAEDC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v92[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_21D0CDFB4(countAndFlagsBits, v15, v92);
        _os_log_impl(&dword_21D0C9000, v22, v23, "Attempt to add tag withHashtagNamed:%s but it already exists", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x223D46520](v25, -1, -1);
        MEMORY[0x223D46520](v24, -1, -1);
      }
    }

    else
    {
      sub_21DBF8E0C();
      v61 = [v13 hashtagContext];
      v17 = v87;
      if (v61)
      {
        v62 = v61;
        sub_21D9CB53C(countAndFlagsBits, v15, 0, 0);
        if (!v63)
        {
          v65 = sub_21DBFA12C();
          v66 = [v62 addHashtagWithType:0 name:v65];

          v67 = swift_allocObject();
          *(v67 + 16) = v66;
          *(v67 + 24) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
          v68 = swift_allocObject();
          *(v68 + 16) = sub_21D9D9784;
          *(v68 + 24) = v67;
          swift_retain_n();
          v69 = v66;
          sub_21D182E74(sub_21D233058, v68);

          goto LABEL_46;
        }

        v64 = v63;

        v17 = v64;
      }

      else
      {
      }
    }

LABEL_46:
    (*(v86 + 8))(v12, v88);
    return;
  }

  v73 = v20;
  v26 = sub_21DBF781C();
  if (!v27)
  {
    v28 = v87;
    v59 = *(v86 + 8);
LABEL_43:
    v59(v12, v88);

    return;
  }

  v74 = (v86 + 8);
  v71 = (v86 + 32);
  v28 = v87;
  v82 = v12;
  v72 = v15;
  v79 = v17;
  while (2)
  {
    v84 = v26;
    v86 = v27;
    v29 = [v28 hashtags];
    v30 = sub_21DBFAAAC();

    v76 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_21DBFBD1C();
      sub_21DBFAB5C();
      v30 = v92[0];
      v15 = v92[1];
      v31 = v92[2];
      v32 = v92[3];
      v33 = v92[4];
    }

    else
    {
      v34 = -1 << *(v30 + 32);
      v15 = v30 + 56;
      v31 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v33 = v36 & *(v30 + 56);
      sub_21DBF8E0C();
      v32 = 0;
    }

    v75 = v31;
    v37 = (v31 + 64) >> 6;
    v85 = v32;
    if ((v30 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v41 = v32;
        v42 = v33;
        v43 = v82;
        if (!v33)
        {
          while (1)
          {
            v32 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v32 >= v37)
            {
              goto LABEL_41;
            }

            v42 = *(v15 + 8 * v32);
            ++v41;
            if (v42)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_24:
        v40 = (v42 - 1) & v42;
        v39 = *(*(v30 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v42)))));
        if (!v39)
        {
          goto LABEL_49;
        }

LABEL_25:
        v44 = v37;
        v83 = v33;
        v17 = v30;
        v45 = countAndFlagsBits;
        v12 = v39;
        v46 = [v39 name];
        v47 = sub_21DBFA16C();
        v49 = v48;

        if (v47 == v84 && v86 == v49)
        {

          countAndFlagsBits = v45;
          goto LABEL_34;
        }

        v51 = sub_21DBFC64C();

        countAndFlagsBits = v45;
        if (v51)
        {
          break;
        }

        v33 = v40;
        v30 = v17;
        v37 = v44;
        v85 = v32;
        if (v17 < 0)
        {
          goto LABEL_17;
        }
      }

LABEL_34:
      sub_21D0CFAF8(v17);

      v90[0] = v12;
      v90[1] = 0;
      v90[2] = 0;
      v91 = 1;
      v52 = v12;
      v53 = sub_21D9C7BBC(v90, 1);
      v12 = v82;
      if (v53)
      {
        v55 = v54;

        sub_21D182E74(sub_21D233058, v55);
      }

      v28 = v87;
      v56 = [v87 hashtags];
      v17 = v79;
      v57 = sub_21DBFAAAC();

      v90[0] = v57;
      v58 = v78;
      sub_21DBF789C();

      v59 = *v74;
      v60 = v88;
      (*v74)(v12, v88);
      (*v71)(v12, v58, v60);
      v26 = sub_21DBF781C();
      if (v27)
      {
        continue;
      }

      goto LABEL_43;
    }

    break;
  }

LABEL_17:
  v38 = sub_21DBFBDBC();
  if (v38)
  {
    v89 = v38;
    swift_dynamicCast();
    v39 = v90[0];
    v40 = v33;
    if (v90[0])
    {
      goto LABEL_25;
    }

LABEL_49:
    v43 = v82;
  }

  else
  {
    v43 = v82;
  }

LABEL_41:

  sub_21D0CFAF8(v30);

  (*v74)(v43, v88);
}

uint64_t static TTRReminderEditor.thisWeekendDueDateComponents(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_21DBF509C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_21DBF563C();
  v31 = *(v15 - 8);
  v32 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTRReminderEditor.thisWeekendDueDate(now:)(a1, v17);
  (*(v6 + 56))(v14, 1, 1, v5);
  v18 = sub_21DBF55BC();
  sub_21D0D3954(v14, v11, &unk_27CE60DB0, qword_21DC0BF70);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) == 1)
  {
    v20 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v19(v11, 1, v5) != 1)
    {
      sub_21D0CF7E0(v11, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v21 = objc_opt_self();
  v22 = sub_21DBF5C0C();
  (*(v6 + 8))(v8, v5);
  v23 = [v21 rem:v18 dateComponentsWithDate:v22 timeZone:1 isAllDay:?];

  v24 = v36;
  sub_21DBF4EFC();

  v25 = sub_21DBF4EDC();
  v26 = [v25 rem_strippingTimeZone];

  v27 = v33;
  sub_21DBF4EFC();

  v29 = v34;
  v28 = v35;
  (*(v34 + 8))(v24, v35);
  sub_21D0CF7E0(v14, &unk_27CE60DB0, qword_21DC0BF70);
  (*(v31 + 8))(v17, v32);
  return (*(v29 + 32))(v24, v27, v28);
}

void *TTRReminderEditor.replaceHashtag(_:with:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  result = sub_21D9C7D50(&v11, &v8, 0);
  if (result)
  {
    v7 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v7);
  }

  return result;
}

void *sub_21D9BEE50()
{
  v1 = v0;
  v32 = sub_21DBF56BC();
  v2 = *(v32 - 8);
  *&v3 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 accountCapabilities];
  v7 = [v6 supportsListSharees];

  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    v35 = v8;
    v9 = off_282ED4450[0];
    sub_21D0D8CF0(0, &qword_280D176F0, 0x277D446C0);
    v10 = v9();

    v11 = [v1 currentUserShareParticipantID];
    if (v11)
    {
      v12 = v11;
      v30 = sub_21DBFA16C();
      v31 = v13;

      if (v10 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v15 = 0;
        v28 = v10 & 0xFFFFFFFFFFFFFF8;
        v29 = v10 & 0xC000000000000001;
        v16 = (v2 + 8);
        while (1)
        {
          if (v29)
          {
            v17 = MEMORY[0x223D44740](v15, v10);
          }

          else
          {
            if (v15 >= *(v28 + 16))
            {
              goto LABEL_16;
            }

            v17 = *(v10 + 8 * v15 + 32);
          }

          v18 = v17;
          v19 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v2 = i;
          v20 = [v17 objectID];
          v21 = [v20 uuid];

          sub_21DBF568C();
          v22 = sub_21DBF565C();
          v24 = v23;
          (*v16)(v5, v32);
          v35 = v22;
          v36 = v24;
          v33 = v30;
          v34 = v31;
          sub_21D176F0C();
          v25 = sub_21DBFBB7C();

          if (!v25)
          {

            return v18;
          }

          ++v15;
          i = v2;
          if (v19 == v2)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

void *sub_21D9BF158()
{
  v29 = sub_21DBF56BC();
  v1 = *(v29 - 8);
  *&v2 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 shareeContext];
  if (v5)
  {
    v32 = v5;
    v6 = off_282ED4428[0];
    sub_21D0D8CF0(0, &qword_280D177C8, 0x277D446B8);
    v7 = v6();

    v8 = [v0 currentUserShareParticipantID];
    if (v8)
    {
      v9 = v8;
      v27 = sub_21DBFA16C();
      v28 = v10;

      if (v7 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v12 = 0;
        v25 = v7 & 0xFFFFFFFFFFFFFF8;
        v26 = v7 & 0xC000000000000001;
        v13 = (v1 + 8);
        while (1)
        {
          if (v26)
          {
            v14 = MEMORY[0x223D44740](v12, v7);
          }

          else
          {
            if (v12 >= *(v25 + 16))
            {
              goto LABEL_16;
            }

            v14 = *(v7 + 8 * v12 + 32);
          }

          v15 = v14;
          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v1 = i;
          v17 = [v14 objectID];
          v18 = [v17 uuid];

          sub_21DBF568C();
          v19 = sub_21DBF565C();
          v21 = v20;
          (*v13)(v4, v29);
          v32 = v19;
          v33 = v21;
          v30 = v27;
          v31 = v28;
          sub_21D176F0C();
          v22 = sub_21DBFBB7C();

          if (!v22)
          {

            return v15;
          }

          ++v12;
          i = v1;
          if (v16 == v1)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

uint64_t static TTRReminderEditor.startOfWeekdayDueDateComponents(now:)@<X0>(char *a2@<X8>)
{
  v72 = a2;
  v2 = sub_21DBF5C4C();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF509C();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v56 - v11;
  v12 = sub_21DBF563C();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF4D0C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v67 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF58EC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610, &unk_21DC34BE0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  v30 = sub_21DBF5A2C();
  v65 = *(v30 - 8);
  v66 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v73 = v15;
  (*(v15 + 56))(v29, 1, 1, v14);
  if (sub_21DBF58FC())
  {
    sub_21DBF595C();
  }

  else
  {
    (*(v18 + 104))(v20, *MEMORY[0x277CC98E8], v17);
    sub_21DBF587C();
    (*(v18 + 8))(v20, v17);
  }

  sub_21D0CF7E0(v29, &qword_27CE5C610, &unk_21DC34BE0);
  sub_21D0D523C(v26, v29, &qword_27CE5C610, &unk_21DC34BE0);
  sub_21D0D3954(v29, v23, &qword_27CE5C610, &unk_21DC34BE0);
  v33 = v73;
  if ((*(v73 + 48))(v23, 1, v14) == 1)
  {
    sub_21D0CF7E0(v29, &qword_27CE5C610, &unk_21DC34BE0);
    (*(v65 + 8))(v32, v66);
    sub_21D0CF7E0(v23, &qword_27CE5C610, &unk_21DC34BE0);
    v34 = 1;
    v36 = v71;
    v35 = v72;
    v37 = v70;
  }

  else
  {
    (*(v33 + 32))(v67, v23, v14);
    sub_21DBF4CCC();
    v39 = v58;
    v38 = v59;
    v40 = v69;
    (*(v58 + 56))(v69, 1, 1, v59);
    v41 = sub_21DBF55BC();
    v42 = v64;
    sub_21D0D3954(v40, v64, &unk_27CE60DB0, qword_21DC0BF70);
    v43 = *(v39 + 48);
    if (v43(v42, 1, v38) == 1)
    {
      v44 = [objc_opt_self() defaultTimeZone];
      v45 = v57;
      sub_21DBF5C2C();

      v46 = v64;
      if (v43(v64, 1, v38) != 1)
      {
        sub_21D0CF7E0(v46, &unk_27CE60DB0, qword_21DC0BF70);
      }
    }

    else
    {
      v45 = v57;
      (*(v39 + 32))(v57, v42, v38);
    }

    v47 = objc_opt_self();
    v48 = sub_21DBF5C0C();
    (*(v39 + 8))(v45, v38);
    v49 = [v47 rem:v41 dateComponentsWithDate:v48 timeZone:1 isAllDay:?];

    v50 = v62;
    sub_21DBF4EFC();

    v51 = sub_21DBF4EDC();
    v52 = [v51 rem_strippingTimeZone];

    v53 = v63;
    sub_21DBF4EFC();

    v37 = v70;
    v36 = v71;
    (*(v70 + 8))(v50, v71);
    sub_21D0CF7E0(v69, &unk_27CE60DB0, qword_21DC0BF70);
    (*(v60 + 8))(v68, v61);
    (*(v73 + 8))(v67, v14);
    sub_21D0CF7E0(v29, &qword_27CE5C610, &unk_21DC34BE0);
    (*(v65 + 8))(v32, v66);
    v54 = *(v37 + 32);
    v54(v50, v53, v36);
    v35 = v72;
    v54(v72, v50, v36);
    v34 = 0;
  }

  return (*(v37 + 56))(v35, v34, 1, v36);
}

Swift::Void __swiftcall TTRReminderEditor.edit(attachments:)(Swift::OpaquePointer_optional attachments)
{
  rawValue = attachments.value._rawValue;
  v3 = [*(v1 + 16) attachmentContext];
  if (!v3)
  {
    return;
  }

  v8 = v3;
  [v3 removeAllAttachments];
  if (rawValue)
  {
    if (rawValue >> 62)
    {
      v4 = sub_21DBFBD7C();
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_5:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((rawValue & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x223D44740](i, rawValue);
          }

          else
          {
            v6 = *(rawValue + 8 * i + 32);
          }

          v7 = v6;
          [v8 addAttachment_];
        }
      }
    }
  }
}

uint64_t TTRReminderEditor.EditedObjectIDs.__allocating_init(objectIDs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

id TTRReminderEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

void TTRReminderEditor.edit(completed:subtasks:trackEditedUsing:)(char a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1 & 1;
  v110 = *v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540);
  MEMORY[0x28223BE20](v114);
  v10 = &v102 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v102 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v102 - v16;
  MEMORY[0x28223BE20](v18);
  v117 = (&v102 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v23);
  v111 = &v102 - v24;
  v122 = sub_21DBF563C();
  isa = v122[-1].isa;
  MEMORY[0x28223BE20](v122);
  v106 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v120 = &v102 - v28;
  v112 = v4[2];
  v113 = v4;
  if ([v112 isCompleted] != v8)
  {
    v118 = a2;
    if (a2 >> 62)
    {
      v119 = sub_21DBFBD7C();
      if (!v119)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v119 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v119)
      {
LABEL_5:

        TTRReminderEditor.edit(completed:trackEditedUsing:)(a1 & 1, a3);
        return;
      }
    }

    if ([v112 isRecurrent])
    {
      goto LABEL_5;
    }

    v107 = a3;
    if (a1)
    {
      v33 = v120;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v34 = isa;
      v35 = *(isa + 2);
      v36 = v111;
      v37 = v33;
      v38 = v122;
      v121 = isa + 16;
      v117 = v35;
      v35(v111, v37, v122);
      v41 = *(v34 + 7);
      v40 = v34 + 56;
      v39 = v41;
      v41(v36, 0, 1, v38);
      TTRReminderEditor.edit(completionDate:)(v36);
      sub_21D0CF7E0(v36, &qword_27CE58D68, &unk_21DC0C060);
      if (a3)
      {
        v42 = [v112 objectID];
        swift_beginAccess();
        sub_21D29B0D0(v123, v42);
        swift_endAccess();
      }

      v43 = v119;
      if (v119 >= 1)
      {
        v44 = 0;
        v45 = v118;
        v46 = v118 & 0xC000000000000001;
        v47 = &selRef__setContentViewMarginType_;
        v115 = v22;
        v116 = (v118 & 0xC000000000000001);
        v114 = v40;
        do
        {
          if (v46)
          {
            v49 = MEMORY[0x223D44740](v44, v45);
          }

          else
          {
            v49 = *(v45 + 8 * v44 + 32);
          }

          v50 = v49;
          v51 = [v49 v47[499]];
          if (v51)
          {
            v48 = v51;
            sub_21DBF55FC();

            v39(v22, 0, 1, v122);
            sub_21D0CF7E0(v22, &qword_27CE58D68, &unk_21DC0C060);
          }

          else
          {
            v52 = v122;
            v39(v22, 1, 1, v122);
            sub_21D0CF7E0(v22, &qword_27CE58D68, &unk_21DC0C060);
            v53 = v50;
            v54 = [v112 saveRequest];
            v55 = v113;
            sub_21D0D3954((v113 + 3), v124, &unk_27CE60D80, &unk_21DC093F0);
            v56 = *(v55 + 64);
            v57 = [v54 updateReminder_];
            sub_21D0D3954(v124, v123, &unk_27CE60D80, &unk_21DC093F0);
            v58 = swift_allocObject();
            *(v58 + 72) = 0;
            *(v58 + 16) = v57;
            sub_21D0D3954(v123, v58 + 24, &unk_27CE60D80, &unk_21DC093F0);
            *(v58 + 64) = v56;
            v59 = v57;
            v60 = [v59 fetchedCurrentDueDateDeltaAlert];

            sub_21D0CF7E0(v123, &unk_27CE60D80, &unk_21DC093F0);
            sub_21D0CF7E0(v124, &unk_27CE60D80, &unk_21DC093F0);
            v61 = *(v58 + 72);
            *(v58 + 72) = v60;
            v62 = v107;

            v63 = v111;
            v117(v111, v120, v52);
            v39(v63, 0, 1, v52);
            TTRReminderEditor.edit(completionDate:)(v63);
            sub_21D0CF7E0(v63, &qword_27CE58D68, &unk_21DC0C060);
            if (v62)
            {
              v64 = [v53 objectID];
              swift_beginAccess();
              sub_21D29B0D0(v123, v64);
              swift_endAccess();
            }

            else
            {
            }

            v45 = v118;
            v43 = v119;
            v22 = v115;
            v46 = v116;
            v47 = &selRef__setContentViewMarginType_;
          }

          ++v44;
        }

        while (v43 != v44);
        (*(isa + 1))(v120, v122);
        return;
      }

      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v65 = &selRef__setContentViewMarginType_;
    v66 = [v112 completionDate];
    if (v66)
    {
      v67 = v66;
      sub_21DBF55FC();

      v68 = *(isa + 7);
      v69 = v17;
      v70 = 0;
    }

    else
    {
      v68 = *(isa + 7);
      v69 = v17;
      v70 = 1;
    }

    v116 = v68;
    v68(v69, v70, 1, v122);
    sub_21D0D523C(v17, v117, &qword_27CE58D68, &unk_21DC0C060);
    TTRReminderEditor.edit(completed:trackEditedUsing:)(0, a3);
    if (v119 < 1)
    {
      goto LABEL_61;
    }

    v71 = 0;
    v109 = v118 & 0xC000000000000001;
    v115 = isa + 56;
    v120 = isa + 48;
    v103 = (isa + 32);
    isa = (isa + 8);
    v72 = &qword_27CE58D68;
    v73 = &unk_21DC0C060;
    while (1)
    {
      v75 = v109 ? MEMORY[0x223D44740](v71, v118) : *(v118 + 8 * v71 + 32);
      v76 = v75;
      v77 = [v75 v65[499]];
      if (v77)
      {
        v78 = v77;
        sub_21DBF55FC();

        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = v121;
      v81 = v122;
      v116(v121, v79, 1, v122);
      v82 = *(v114 + 48);
      sub_21D0D3954(v80, v10, v72, v73);
      sub_21D0D3954(v117, &v10[v82], v72, v73);
      v83 = v73;
      v84 = *v120;
      if ((*v120)(v10, 1, v81) == 1)
      {
        break;
      }

      v85 = v108;
      sub_21D0D3954(v10, v108, v72, v83);
      if (v84(&v10[v82], 1, v122) == 1)
      {

        sub_21D0CF7E0(v121, v72, v83);
        (*isa)(v85, v122);
LABEL_51:
        v73 = v83;
        sub_21D0CF7E0(v10, &qword_27CE5BE10, &qword_21DC28540);
        goto LABEL_52;
      }

      v86 = v106;
      v87 = v122;
      (*v103)(v106, &v10[v82], v122);
      sub_21D9D77FC(&qword_280D171A0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v104 = sub_21DBFA10C();
      v88 = *isa;
      (*isa)(v86, v87);
      sub_21D0CF7E0(v121, v72, v83);
      v88(v85, v87);
      sub_21D0CF7E0(v10, v72, v83);
      if (v104)
      {
        goto LABEL_54;
      }

      v73 = v83;

      v65 = &selRef__setContentViewMarginType_;
LABEL_52:
      v74 = v119;
LABEL_38:
      if (v74 == ++v71)
      {
        sub_21D0CF7E0(v117, &qword_27CE58D68, &unk_21DC0C060);
        return;
      }
    }

    sub_21D0CF7E0(v121, v72, v83);
    if (v84(&v10[v82], 1, v122) == 1)
    {
      sub_21D0CF7E0(v10, v72, v83);
LABEL_54:
      v89 = v76;
      v90 = [v112 saveRequest];
      v91 = v113;
      sub_21D0D3954((v113 + 3), v124, &unk_27CE60D80, &unk_21DC093F0);
      LOBYTE(v91) = *(v91 + 64);
      v92 = [v90 updateReminder_];
      sub_21D0D3954(v124, v123, &unk_27CE60D80, &unk_21DC093F0);
      v93 = v72;
      v94 = swift_allocObject();
      *(v94 + 72) = 0;
      *(v94 + 16) = v92;
      sub_21D0D3954(v123, v94 + 24, &unk_27CE60D80, &unk_21DC093F0);
      *(v94 + 64) = v91;
      v95 = v92;
      v96 = [v95 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v123, &unk_27CE60D80, &unk_21DC093F0);
      sub_21D0CF7E0(v124, &unk_27CE60D80, &unk_21DC093F0);
      v97 = *(v94 + 72);
      *(v94 + 72) = v96;

      v98 = v111;
      v116(v111, 1, 1, v122);
      TTRReminderEditor.edit(completionDate:)(v98);
      v99 = v98;
      v73 = &unk_21DC0C060;
      sub_21D0CF7E0(v99, v93, &unk_21DC0C060);
      if (v107)
      {
        v100 = [v89 objectID];
        swift_beginAccess();
        v101 = v100;
        v73 = &unk_21DC0C060;
        sub_21D29B0D0(v123, v101);
        swift_endAccess();
      }

      else
      {
      }

      v74 = v119;
      v65 = &selRef__setContentViewMarginType_;
      v72 = v93;
      goto LABEL_38;
    }

    goto LABEL_51;
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_280D0F2C0);
  v122 = sub_21DBF84AC();
  v30 = sub_21DBFAE9C();
  if (os_log_type_enabled(v122, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_21D0C9000, v122, v30, "Ignoring edit(completed:) because value is the same", v31, 2u);
    MEMORY[0x223D46520](v31, -1, -1);
  }

  v32 = v122;
}

Swift::Void __swiftcall TTRReminderEditor.edit(isFlagged:)(Swift::Bool isFlagged)
{
  v3 = [*(v1 + 16) flaggedContext];
  if (v3)
  {
    v14 = v3;
    v4 = [v3 flagged];
    if (v4 > 0 == isFlagged)
    {
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_280D0F2C0);
      v11 = sub_21DBF84AC();
      v12 = sub_21DBFAE9C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21D0C9000, v11, v12, "Ignoring edit(isFlagged:) because value is the same", v13, 2u);
        MEMORY[0x223D46520](v13, -1, -1);
      }
    }

    else
    {
      v5 = v4 > 0;
      [v14 setFlagged:isFlagged];
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      sub_21D182E74(sub_21D9D79D4, v6);
    }
  }

  else
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F2C0);
    v14 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v8, "Ignoring edit(isFlagged:) because flagged is not supported on this reminder", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }
}

void TTRReminderEditor.edit(priorityLevel:)(uint64_t a1)
{
  v1 = REMReminderDefaultPriorityForPriorityLevel();

  TTRReminderEditor.edit(priority:)(v1);
}

void TTRReminderEditor.edit(contactHandles:)(void *a1)
{
  v3 = *(v1 + 16);
  v13 = [v3 contactHandles];
  if (v13)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &unk_27CE626A0, 0x277D445D8);
      v4 = v13;
      v5 = a1;
      v6 = sub_21DBFB63C();

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_10:
    [v3 setContactHandles_];
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    v12 = v13;
    sub_21D182E74(sub_21D9D7A00, v11);

    goto LABEL_11;
  }

  if (a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F2C0);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Ignoring edit(contactHandles:) because the value is the same", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

LABEL_11:
}

id TTRReminderEditor.addHashtag(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v7 = *a1;
  v8 = v1;
  v9 = v2;
  result = sub_21D9D7AEC(&v7, 1);
  if (result)
  {
    v5 = v4;
    v6 = result;

    if (v5)
    {

      sub_21D182E74(sub_21D233058, v5);
    }

    else
    {
    }

    return v6;
  }

  return result;
}

void *TTRReminderEditor.removeHashtag(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v7 = *a1;
  v8 = v1;
  v9 = v2;
  result = sub_21D9C7BBC(&v7, 1);
  if (result)
  {
    v5 = result;
    v6 = v4;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v6);

    return v5;
  }

  return result;
}

Swift::Void __swiftcall TTRReminderEditor.editHashtagsWithoutUpdatingTextProperties(adding:removing:)(Swift::OpaquePointer adding, Swift::OpaquePointer removing)
{
  v3 = v2;
  v43 = MEMORY[0x277D84F90];
  v4 = *(adding._rawValue + 2);
  if (v4)
  {
    rawValue = removing._rawValue;
    v5 = adding._rawValue + 56;
    v41 = *(v2 + 16);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = [v41 hashtagContext];
      if (v10)
      {
        v11 = v10;
        sub_21D9CB53C(v6, v7, v8, v9);
        if (v12)
        {
          v13 = v12;

          v14 = 0;
        }

        else if (v9)
        {
          v15 = v6;
          [v11 addHashtag_];
          v16 = [v15 objectID];
          [v11 undeleteHashtagWithID_];

          v17 = swift_allocObject();
          *(v17 + 16) = v15;
          *(v17 + 24) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
          v14 = swift_allocObject();
          *(v14 + 16) = sub_21D9D9784;
          *(v14 + 24) = v17;
          sub_21D9D7C80(v6, v7, v8, 1);

          v13 = v6;
        }

        else
        {
          v18 = sub_21DBFA12C();
          v13 = [v11 addHashtagWithType:v8 name:v18];

          v19 = swift_allocObject();
          *(v19 + 16) = v13;
          *(v19 + 24) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
          v14 = swift_allocObject();
          *(v14 + 16) = sub_21D9D9784;
          *(v14 + 24) = v19;
          v20 = v13;
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      MEMORY[0x223D42D80](v10);
      if (*(v43 + 16) >= *(v43 + 24) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      sub_21D24B434(v6, v7, v8, v9);
      sub_21D1578FC(v13, v14);
      v5 += 32;
      --v4;
    }

    while (v4);
    removing._rawValue = rawValue;
    v3 = v40;
  }

  v21 = *(removing._rawValue + 2);
  if (v21)
  {
    v22 = removing._rawValue + 56;
    v42 = *(v3 + 16);
    while (1)
    {
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;
      v27 = [v42 hashtagContext];
      if (!v27)
      {
        break;
      }

      v28 = v27;
      sub_21D9CB53C(v23, v24, v25, v26);
      v30 = v29;
      if (!v29)
      {

        goto LABEL_21;
      }

      [v28 removeHashtag_];
      v31 = [v30 objectID];
      [v28 cancelUndeleteHashtagWithID_];

      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v30;
      *(v33 + 32) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
      v34 = swift_allocObject();
      *(v34 + 16) = sub_21D9D9758;
      *(v34 + 24) = v33;
      v35 = v30;

LABEL_22:
      MEMORY[0x223D42D80](v27);
      if (*(v43 + 16) >= *(v43 + 24) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      sub_21D24B434(v23, v24, v25, v26);
      sub_21D1578FC(v30, v34);
      v22 += 32;
      if (!--v21)
      {
        goto LABEL_25;
      }
    }

    v30 = 0;
LABEL_21:
    v34 = 0;
    goto LABEL_22;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
  v36 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64888, &unk_21DC34BF0);
  sub_21D0D0F1C(&qword_280D0C3F8, &qword_27CE64888, &unk_21DC34BF0, MEMORY[0x277D83970]);
  v37 = sub_21DBFA41C();

  if (v37 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_27;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v36 + 16) = sub_21D9D7C90;
    *(v36 + 24) = v38;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v36);

    return;
  }

  swift_deallocPartialClassInstance();
}

Swift::Void __swiftcall TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(Swift::OpaquePointer_optional recurrenceRules, Swift::Bool shouldCopyRecurrenceEnd)
{
  v3 = *&recurrenceRules.is_nil;
  rawValue = recurrenceRules.value._rawValue;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - v6;
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v68 - v13;
  MEMORY[0x28223BE20](v14);
  v79 = &v68 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v68 - v17;
  v73 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  if (rawValue)
  {
    v22 = rawValue;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  sub_21DBF8E0C();
  v23 = sub_21D19F308(v22);

  if (*(v23 + 16))
  {
    LODWORD(v76) = v3;
    v75 = v7;
    v68 = v11;
    v24 = *(v2 + 16);
    v25 = [v24 displayDate];
    v74 = v2;
    *&v70 = v21;
    if (v25)
    {
      v82[0] = v23;
      MEMORY[0x28223BE20](v25);
      *(&v68 - 2) = v26;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64890, &qword_21DC34C08);
      sub_21D0D0F1C(&qword_27CE64898, &qword_27CE64890, &qword_21DC34C08, MEMORY[0x277D83B68]);
      sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel, protocol conformance descriptor for TTRRecurrenceRuleModel);
      v28 = v8;
      v29 = sub_21DBFA49C();

      v23 = v29;
    }

    else
    {
      if (qword_280D0F2B8 != -1)
      {
LABEL_66:
        swift_once();
      }

      v28 = v8;
      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_280D0F2C0);
      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAECC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21D0C9000, v31, v32, "Trying to set recurrenceRules but changeItem.displayDate is nil. The recurrenceRules may not be fixed up correctly. A due date should be set before adding recurrence rules", v33, 2u);
        MEMORY[0x223D46520](v33, -1, -1);
      }
    }

    v34 = [v24 recurrenceRules];
    v78 = v9;
    if (v34)
    {
      v35 = v34;
      sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
      v36 = sub_21DBFA5EC();
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v82[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108, &qword_21DC34C00);
    sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108, &qword_21DC34C00, MEMORY[0x277D83970]);
    sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel, protocol conformance descriptor for TTRRecurrenceRuleModel);
    v8 = sub_21DBFA49C();

    if (*(v23 + 16) <= v8[2] >> 3)
    {
      v82[0] = v8;
      sub_21DBF8E0C();
      sub_21D9F8814(v23);
      v9 = v82[0];
    }

    else
    {
      sub_21DBF8E0C();
      v9 = sub_21D9F92B0(v23, v8);
    }

    if (v8[2] <= *(v23 + 16) >> 3)
    {
      v82[0] = v23;
      sub_21D9F8814(v8);

      v69 = v82[0];
    }

    else
    {
      v69 = sub_21D9F92B0(v8, v23);
    }

    v71 = v9;
    if ((v76 & 1) != 0 && *(v9 + 16) == 1)
    {
      v37 = v75;
      sub_21D19560C(v9, v75);
      if ((*(v78 + 48))(v37, 1, v28) == 1)
      {
        sub_21D0CF7E0(v37, &qword_27CE5A018, &unk_21DC0DCB0);
      }

      else
      {
        v38 = v70;
        v39 = sub_21D9D9028(v37, v70, type metadata accessor for TTRRecurrenceRuleModel);
        v76 = &v68;
        v82[0] = v69;
        MEMORY[0x28223BE20](v39);
        v8 = &v68 - 4;
        *(&v68 - 2) = v38;
        v23 = &qword_21DC34C08;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64890, &qword_21DC34C08);
        sub_21D0D0F1C(&qword_27CE64898, &qword_27CE64890, &qword_21DC34C08, MEMORY[0x277D83B68]);
        v9 = v71;
        v40 = sub_21DBFA49C();

        sub_21D9D9170(v38, type metadata accessor for TTRRecurrenceRuleModel);
        v69 = v40;
      }
    }

    v41 = 0;
    v42 = v9 + 56;
    v43 = 1 << *(v9 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v9 + 56);
    v46 = (v43 + 63) >> 6;
    v70 = xmmword_21DC08D00;
    v75 = v46;
    v76 = v9 + 56;
    while (v45)
    {
      v51 = v41;
LABEL_38:
      v52 = v77;
      sub_21D1074E8(*(v9 + 48) + *(v78 + 72) * (__clz(__rbit64(v45)) | (v51 << 6)), v77, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D9D9028(v52, v79, type metadata accessor for TTRRecurrenceRuleModel);
      v53 = [v24 recurrenceRules];
      if (v53)
      {
        v8 = v53;
        sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
        v54 = sub_21DBFA5EC();
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v53);
      *(&v68 - 2) = v79;
      v55 = sub_21D9B26A0(sub_21D9D7C98, (&v68 - 4), v54);
      v56 = v55;
      if (v55 >> 62)
      {
        v23 = sub_21DBFBD7C();
      }

      else
      {
        v23 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 &= v45 - 1;
      if (v23)
      {
        if (v23 < 1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        for (i = 0; i != v23; ++i)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x223D44740](i, v56);
          }

          else
          {
            v58 = *(v56 + 8 * i + 32);
          }

          v59 = v58;
          [v24 removeRecurrenceRule_];
        }

        v47 = v79;
        v48 = v72;
        sub_21D1074E8(v79, v72, type metadata accessor for TTRRecurrenceRuleModel);
        v49 = (*(v78 + 80) + 16) & ~*(v78 + 80);
        v23 = swift_allocObject();
        sub_21D9D9028(v48, v23 + v49, type metadata accessor for TTRRecurrenceRuleModel);
        v82[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v82[0] = [v24 objectID];
        v50 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
        *&v80 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
        v8 = swift_allocObject();
        *(v8 + 1) = v70;
        sub_21D0CEB98(v82, (v8 + 4));
        sub_21D0CF2E8(&v80, v8 + 4);
        __swift_destroy_boxed_opaque_existential_0(v82);
        sub_21D1C442C(v8, sub_21D9D7CB8, v23);

        sub_21D9D9170(v47, type metadata accessor for TTRRecurrenceRuleModel);
        v41 = v51;
        v9 = v71;
      }

      else
      {
        sub_21D9D9170(v79, type metadata accessor for TTRRecurrenceRuleModel);

        v41 = v51;
      }

      v46 = v75;
      v42 = v76;
    }

    while (1)
    {
      v51 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v51 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v51);
      ++v41;
      if (v45)
      {
        goto LABEL_38;
      }
    }

    v8 = 0;
    v60 = v69;
    v61 = v69 + 56;
    v62 = 1 << *(v69 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & *(v69 + 56);
    v65 = (v62 + 63) >> 6;
    v23 = v68;
    if (v64)
    {
      while (1)
      {
        v66 = v8;
LABEL_60:
        v67 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        sub_21D1074E8(*(v60 + 48) + *(v78 + 72) * (v67 | (v66 << 6)), v23, type metadata accessor for TTRRecurrenceRuleModel);
        sub_21D9C6FDC(v23);
        sub_21D9D9170(v23, type metadata accessor for TTRRecurrenceRuleModel);
        if (!v64)
        {
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
LABEL_56:
      v66 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_64;
      }

      if (v66 >= v65)
      {
        break;
      }

      v64 = *(v61 + 8 * v66);
      v8 = (v8 + 1);
      if (v64)
      {
        v8 = v66;
        goto LABEL_60;
      }
    }
  }

  else
  {

    sub_21D9C6924();
  }
}

double TTRReminderEditor.remove(attachment:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [v2 attachmentContext];
  if (!v3)
  {
    return result;
  }

  v18 = v3;
  v5 = [v3 attachments];
  sub_21D0D8CF0(0, &qword_280D0C310, 0x277D445A0);
  v6 = sub_21DBFA5EC();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_23:

    return result;
  }

LABEL_22:
  v7 = sub_21DBFBD7C();
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223D44740](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v12 = [v10 objectID];
    v13 = sub_21DBFB63C();

    if (v13)
    {
      break;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_23;
    }
  }

  v14 = [v2 attachmentContext];
  if (v14)
  {
    v15 = v14;
    [v14 removeAttachment_];
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    v17 = v10;
    sub_21D182E74(sub_21D9D9788, v16);
  }

  else
  {
  }

  return result;
}

uint64_t TTRReminderEditor.edit(dueDateComponentsUsing:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [*(v0 + 16) dueDateComponents];
  if (v11)
  {
    v12 = v11;
    sub_21DBF4EFC();

    v13 = sub_21DBF509C();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_21D67A548(v6, v10);
  sub_21D0CF7E0(v6, &qword_27CE58D60, &unk_21DC0A690);
  v15 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_21D9C50E0(v10, v3);
  sub_21D0CF7E0(v3, &unk_27CE60DA0, &unk_21DC0C0C0);
  return sub_21D0CF7E0(v10, &qword_27CE58D60, &unk_21DC0A690);
}

void TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(void *a1)
{
  v3 = [*(v1 + 16) dueDateDeltaAlertContext];
  if (!v3)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F2C0);
    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Ignoring dueDateDeltaAlertInterval update, no context.", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_21;
  }

  oslog = v3;
  v4 = *(v1 + 72);
  if (!v4 || (v5 = [v4 dueDateDelta]) == 0)
  {
    if (a1)
    {
LABEL_6:
      v9 = *(v1 + 72);
      if (v9)
      {
        goto LABEL_7;
      }

LABEL_23:
      v10 = 0;
LABEL_24:
      if (a1)
      {
        v22 = [oslog addDueDateDeltaAlertWithDueDateDelta:a1];
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_30;
    }

    goto LABEL_12;
  }

  v6 = v5;
  if (a1)
  {
    sub_21D0D8CF0(0, &qword_27CE648A8, 0x277D44610);
    v7 = a1;
    v8 = sub_21DBFB63C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F2C0);
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAE9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Ignoring edit(dueDateDeltaAlertInterval:) because value is the same", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }

LABEL_21:
    v21 = oslog;
    goto LABEL_31;
  }

  v9 = *(v1 + 72);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_7:
  v10 = [v9 dueDateDelta];
  v11 = *(v1 + 72);
  if (!v11)
  {
    goto LABEL_24;
  }

  if (a1)
  {
    v12 = a1;
    v13 = v11;
    if (([v12 isEmpty] & 1) == 0)
    {
      v30 = [oslog updateDueDateDeltaAlert:v13];
      v31 = [v30 setDueDateDelta_];

      v22 = v31;
      goto LABEL_30;
    }
  }

  else
  {
    v23 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648A0, &unk_21DC34C10);
  v24 = sub_21DBF56BC();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21DC08D00;
  v28 = [v11 identifier];
  sub_21DBF568C();

  sub_21D1D170C(v27);
  swift_setDeallocating();
  (*(v25 + 8))(v27 + v26, v24);
  swift_deallocClassInstance();
  sub_21D9D77FC(&qword_280D1B850, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v29 = sub_21DBFAA9C();

  [oslog removeDueDateDeltaAlertsWithIdentifiers:v29];

  v22 = 0;
LABEL_30:
  v32 = *(v1 + 72);
  *(v1 + 72) = v22;
  v33 = v22;

  v34 = swift_allocObject();
  *(v34 + 16) = v10;
  v35 = v10;
  sub_21D182E74(sub_21D9D7D48, v34);

  v21 = v33;
LABEL_31:
}

Swift::Void __swiftcall TTRReminderEditor.edit(prefersUrgentPresentationStyleForDateAlarms:)(Swift::Bool prefersUrgentPresentationStyleForDateAlarms)
{
  v3 = *(v1 + 16);
  v4 = [v3 prefersUrgentPresentationStyleForDateAlarms];
  [v3 setPrefersUrgentPresentationStyleForDateAlarms_];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_21D182E74(sub_21D9B1160, v5);
}

uint64_t TTRReminderEditor.edit(dueDateTimeZone:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + 16) displayDate];
  sub_21D9C5D14(v14, a1, v13);

  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v15 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_21D9C50E0(v8, v5);
  sub_21D0CF7E0(v5, &unk_27CE60DA0, &unk_21DC0C0C0);
  sub_21D0CF7E0(v8, &qword_27CE58D60, &unk_21DC0A690);
  return (*(v10 + 8))(v13, v9);
}

Swift::Void __swiftcall TTRReminderEditor.editDueDateComponentsByPromotingAlternativeDueDateForCalendarIfAvailable()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  v19 = [v18 alternativeDisplayDateDate_forCalendar];
  if (v19)
  {
    v20 = v19;
    sub_21DBF55FC();

    v21 = sub_21DBF563C();
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
    v22 = [v18 effectiveDisplayDateComponents_forCalendar];
    if (v22)
    {
      v23 = v22;
      sub_21DBF4EFC();

      (*(v8 + 32))(v13, v10, v7);
      (*(v8 + 16))(v6, v13, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      v24 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
      (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
      sub_21D9C50E0(v6, v3);
      sub_21D0CF7E0(v3, &unk_27CE60DA0, &unk_21DC0C0C0);
      sub_21D0CF7E0(v6, &qword_27CE58D60, &unk_21DC0A690);
      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    v25 = sub_21DBF563C();
    (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
    sub_21D0CF7E0(v17, &qword_27CE58D68, &unk_21DC0C060);
  }
}

void TTRReminderEditor.edit(recurrenceEnd:)(uint64_t a1)
{
  v50 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v41 - v17;
  v19 = [*(v1 + 16) recurrenceRules];
  if (v19)
  {
    v20 = v19;
    v47 = v7;
    v48 = v18;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v21 = sub_21DBFA5EC();

    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v20 = v21;
      }

      else
      {
        v20 = (v21 & 0xFFFFFFFFFFFFFF8);
      }

      if (sub_21DBFBD7C())
      {
        v22 = sub_21DBFBD7C();
        if (!v22)
        {
          v42 = v5;
          v43 = v3;
          v44 = v2;

          v5 = MEMORY[0x277D84F90];
          goto LABEL_13;
        }

LABEL_4:
        v46 = v1;
        v52 = MEMORY[0x277D84F90];
        sub_21D18EA80(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_37;
        }

        v42 = v5;
        v43 = v3;
        v44 = v2;
        v45 = v6;
        v23 = 0;
        v5 = v52;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x223D44740](v23, v21);
          }

          else
          {
            v24 = *(v21 + 8 * v23 + 32);
          }

          TTRRecurrenceRuleModel.init(sourceRule:)(v24, v12);
          v52 = v5;
          v26 = v5[2];
          v25 = v5[3];
          if (v26 >= v25 >> 1)
          {
            sub_21D18EA80((v25 > 1), v26 + 1, 1);
            v5 = v52;
          }

          ++v23;
          v5[2] = v26 + 1;
          sub_21D9D9028(v12, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, type metadata accessor for TTRRecurrenceRuleModel);
        }

        while (v22 != v23);

        v6 = v45;
LABEL_13:
        v27 = v51;
        sub_21D0D3954(v50, v51, &unk_27CE62610, &unk_21DC0DF00);
        v28 = v47;
        v29 = (*(v47 + 48))(v27, 1, v6);
        v20 = v48;
        v30 = v49;
        if (v29 == 1)
        {
          sub_21D0CF7E0(v27, &unk_27CE62610, &unk_21DC0DF00);
          v31 = 1;
        }

        else
        {
          sub_21D1074E8(v27, v49, type metadata accessor for TTRRecurrenceEndModel);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21D1074E8(v27, v20, type metadata accessor for TTRRecurrenceEndModel);
          }

          else
          {
            v33 = v42;
            v32 = v43;
            v34 = v30;
            v35 = v44;
            (*(v43 + 32))(v42, v34, v44);
            sub_21DBF554C();
            sub_21DBF553C();
            v20 = v48;
            (*(v32 + 8))(v33, v35);
            swift_storeEnumTagMultiPayload();
          }

          sub_21D9D9170(v27, type metadata accessor for TTRRecurrenceEndModel);
          v31 = 0;
        }

        (*(v28 + 56))(v20, v31, 1, v6);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v5[2])
          {
LABEL_21:
            sub_21D0F02F4(v20, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &unk_27CE62610, &unk_21DC0DF00);
            v54.value._rawValue = v5;
            v54.is_nil = 0;
            TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v54, v36);

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        v5 = sub_21D256CA4(v5);
        if (v5[2])
        {
          goto LABEL_21;
        }

LABEL_38:
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_4;
      }
    }
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v37 = sub_21DBF84BC();
  __swift_project_value_buffer(v37, qword_280D0F2C0);
  v51 = sub_21DBF84AC();
  v38 = sub_21DBFAECC();
  if (os_log_type_enabled(v51, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_21D0C9000, v51, v38, "Tried to update recurrenceEnd on reminder without recurrence rules -- skipping", v39, 2u);
    MEMORY[0x223D46520](v39, -1, -1);
  }

  v40 = v51;
}

void TTRReminderEditor.remove(subtask:)(void *a1)
{
  v3 = [a1 parentReminderID];
  v4 = *(v1 + 16);
  v5 = [v4 objectID];
  v6 = v5;
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
    v6 = v3;
    goto LABEL_9;
  }

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v7 = sub_21DBFB63C();

  if ((v7 & 1) == 0)
  {
LABEL_10:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D0F2C0);
    v18 = a1;

    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v20 = 138412802;
      v23 = [v18 objectID];
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2080;
      v24 = [v18 parentReminderID];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 description];

        v27 = sub_21DBFA16C();
        v29 = v28;
      }

      else
      {
        v29 = 0xE400000000000000;
        v27 = 1819047278;
      }

      v36 = sub_21D0CDFB4(v27, v29, &v40);

      *(v20 + 14) = v36;
      *(v20 + 22) = 2112;
      v37 = [v4 objectID];
      *(v20 + 24) = v37;
      v21[1] = v37;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Tried to remove subtask from incorrect parent reminder {subtask.objectID: %@, sutbask.parentReminderID: %s, reminder.objectID: %@}", v20, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D46520](v22, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);

      return;
    }

    goto LABEL_22;
  }

LABEL_6:
  v8 = [a1 objectID];
  v9 = [a1 removeFromParentReminderAllowingUndo];
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v10;
    v13 = v8;
    v14 = v10;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
    v15 = v40;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_21D9D7D74;
    *(v16 + 24) = v12;

    sub_21D1C442C(v15, sub_21D1CDA04, v16);

    return;
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v30 = sub_21DBF84BC();
  __swift_project_value_buffer(v30, qword_280D0F2C0);
  v31 = v8;
  oslog = sub_21DBF84AC();
  v32 = sub_21DBFAEBC();

  if (!os_log_type_enabled(oslog, v32))
  {

LABEL_22:
    v35 = oslog;
    goto LABEL_23;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v33 = 138412290;
  *(v33 + 4) = v31;
  *v34 = v31;
  v38 = v31;
  _os_log_impl(&dword_21D0C9000, oslog, v32, "Unable to obtain an undo token for removing subtask {subtask.objectID: %@}", v33, 0xCu);
  sub_21D0CF7E0(v34, &unk_27CE60070, &unk_21DC09550);
  MEMORY[0x223D46520](v34, -1, -1);
  MEMORY[0x223D46520](v33, -1, -1);

  v35 = v38;
LABEL_23:
}

void TTRReminderEditor.move(attachment:position:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = [*(v2 + 16) attachmentContext];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  [v6 removeAttachment_];
  if (!v5)
  {
    v9 = v4;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    v9 = 0;
    if (v4)
    {
      v8 = &selRef_insertAttachment_afterAttachment_;
      goto LABEL_10;
    }

LABEL_9:
    v8 = &selRef_insertAttachment_beforeAttachment_;
    goto LABEL_10;
  }

  v8 = &selRef_insertAttachment_afterAttachment_;
  v9 = v4;
LABEL_10:
  sub_21D157850(v4, v5);
  [v7 *v8];
}

uint64_t sub_21D9C41A4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F2C0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F2C0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 16) = a1;
  sub_21D0D3954(a2, v6 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v6 + 64) = a3;
  v7 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a2, &unk_27CE60D80, &unk_21DC093F0);
  *(v6 + 72) = v7;
  return v6;
}

uint64_t TTRReminderEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, uint64_t a2, char a3)
{
  *(v3 + 72) = 0;
  *(v3 + 16) = a1;
  sub_21D0D3954(a2, v3 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v3 + 64) = a3;
  v7 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a2, &unk_27CE60D80, &unk_21DC093F0);
  v8 = *(v3 + 72);
  *(v3 + 72) = v7;

  return v3;
}

uint64_t TTRReminderEditor.EditedObjectIDs.init(objectIDs:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

double TTRReminderEditor.EditedObjectIDs.objectIDs.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double TTRReminderEditor.EditedObjectIDs.objectIDs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t TTRReminderEditor.EditedObjectIDs.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D9C4584(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = [v3 saveRequest];
  v5 = [v4 _trackedListChangeItemForObjectID_];

  if (!v5)
  {
    v6 = [v3 saveRequest];
    v7 = [v6 store];

    v14[0] = 0;
    v8 = [v7 fetchListWithObjectID:a1 error:v14];

    if (v8)
    {
      v9 = v14[0];
      v10 = [v3 saveRequest];
      v5 = [v10 updateList_];
    }

    else
    {
      v11 = v14[0];
      v12 = sub_21DBF52DC();

      swift_willThrow();
      return 0;
    }
  }

  return v5;
}

void sub_21D9C4708(uint64_t *a1, unint64_t a2, void *a3, char a4, char a5)
{
  v8 = *a1;
  if (a2)
  {
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v16 = a2;
      v17 = sub_21DBFBD7C();
      a2 = v16;
      if (!v17)
      {
        goto LABEL_12;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = a2;
      v11 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*(v9 + 16))
      {
        __break(1u);
        return;
      }

      v10 = a2;
      v11 = *(a2 + 32);
    }

    v12 = v11;
    v13 = [v11 saveRequest];

    if (v13)
    {
      v14 = [*(v8 + 16) saveRequest];

      if (v13 == v14)
      {
        a2 = v10;
      }

      else
      {
        a2 = 0;
      }
    }

    else
    {
      a2 = v10;
    }
  }

LABEL_12:
  v18 = 0;
  v15 = TTRReminderEditor.edit(listID:knownSubtaskChangeItems:forceCopyingReminder:allowsLossyCopying:assignmentCopying:)(a3, a2, a4 & 1, a5 & 1, &v18);
}

uint64_t TTRReminderEditor.edit(completionDate:)(uint64_t a1)
{
  v55 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540);
  MEMORY[0x28223BE20](v5);
  v7 = &v47[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v49 = &v47[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v47[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v47[-v16];
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v56 = &v47[-v20];
  v53 = v1;
  v50 = *(v1 + 16);
  v21 = [v50 completionDate];
  if (v21)
  {
    v22 = v21;
    sub_21DBF55FC();

    (*(v3 + 56))(v17, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v17, 1, 1, v2);
  }

  v23 = v17;
  v24 = v56;
  sub_21D0D523C(v23, v56, &qword_27CE58D68, &unk_21DC0C060);
  v25 = *(v5 + 48);
  sub_21D0D3954(v24, v7, &qword_27CE58D68, &unk_21DC0C060);
  v26 = v55;
  sub_21D0D3954(v55, &v7[v25], &qword_27CE58D68, &unk_21DC0C060);
  v27 = *(v3 + 48);
  if (v27(v7, 1, v2) != 1)
  {
    sub_21D0D3954(v7, v14, &qword_27CE58D68, &unk_21DC0C060);
    if (v27(&v7[v25], 1, v2) != 1)
    {
      v38 = v54;
      (*(v3 + 32))(v54, &v7[v25], v2);
      sub_21D9D77FC(&qword_280D171A0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v48 = sub_21DBFA10C();
      v39 = *(v3 + 8);
      v40 = v38;
      v26 = v55;
      v39(v40, v2);
      v39(v14, v2);
      sub_21D0CF7E0(v7, &qword_27CE58D68, &unk_21DC0C060);
      if (v48)
      {
        goto LABEL_15;
      }

LABEL_10:
      v28 = v27(v26, 1, v2) != 1;
      v29 = v50;
      [v50 setCompleted_];
      v30 = v49;
      sub_21D0D3954(v26, v49, &qword_27CE58D68, &unk_21DC0C060);
      if (v27(v30, 1, v2) == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = sub_21DBF55BC();
        (*(v3 + 8))(v30, v2);
      }

      v32 = v56;
      [v29 setCompletionDate_];

      v33 = v54;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v34 = sub_21DBF55BC();
      (*(v3 + 8))(v33, v2);
      [v29 setLastBannerPresentationDate_];

      v35 = v52;
      sub_21D0D3954(v32, v52, &qword_27CE58D68, &unk_21DC0C060);
      v36 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v37 = swift_allocObject();
      sub_21D0D523C(v35, v37 + v36, &qword_27CE58D68, &unk_21DC0C060);
      sub_21D182E74(sub_21D9D7DA0, v37);

      return sub_21D0CF7E0(v32, &qword_27CE58D68, &unk_21DC0C060);
    }

    (*(v3 + 8))(v14, v2);
LABEL_9:
    sub_21D0CF7E0(v7, &qword_27CE5BE10, &qword_21DC28540);
    goto LABEL_10;
  }

  if (v27(&v7[v25], 1, v2) != 1)
  {
    goto LABEL_9;
  }

  sub_21D0CF7E0(v7, &qword_27CE58D68, &unk_21DC0C060);
LABEL_15:
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v41 = sub_21DBF84BC();
  __swift_project_value_buffer(v41, qword_280D0F2C0);
  v42 = sub_21DBF84AC();
  v43 = sub_21DBFAE9C();
  v44 = os_log_type_enabled(v42, v43);
  v32 = v56;
  if (v44)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_21D0C9000, v42, v43, "Ignoring edit(completionDate:) because value is the same", v45, 2u);
    MEMORY[0x223D46520](v45, -1, -1);
  }

  return sub_21D0CF7E0(v32, &qword_27CE58D68, &unk_21DC0C060);
}

uint64_t TTRReminderEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v6 = sub_21D9D6AE0(a1, a2, a3, a4);

  return v6;
}

Swift::Void __swiftcall TTRReminderEditor.edit(priority:)(Swift::UInt priority)
{
  v3 = *(v1 + 16);
  v4 = [v3 priority];
  if (v4 == priority)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F2C0);
    oslog = sub_21DBF84AC();
    v6 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v6, "Ignoring edit(priority:) because value is the same", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  else
  {
    v8 = v4;
    [v3 setPriority_];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_21D182E74(sub_21D9D7E44, v9);
  }
}

uint64_t sub_21D9C50E0(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v84[-v4];
  v5 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  MEMORY[0x28223BE20](v5);
  v94 = v7;
  v95 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v96 = &v84[-v9];
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v86 = &v84[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0, &unk_21DC18EA0);
  MEMORY[0x28223BE20](v13);
  v15 = &v84[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  v88 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v84[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v84[-v22];
  v89 = v24;
  *&v26 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v102 = &v84[-v27];
  v100 = v2;
  v28 = *(v2 + 16);
  v29 = [v28 dueDateComponents];
  v87 = v20;
  if (v29)
  {
    v30 = v29;
    sub_21DBF4EFC();

    (*(v11 + 56))(v23, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v23, 1, 1, v10);
  }

  v31 = v102;
  sub_21D0D523C(v23, v102, &qword_27CE58D60, &unk_21DC0A690);
  v98 = v28;
  v32 = [v28 displayDate];
  v33 = *(v11 + 48);
  v34 = v33(v31, 1, v10);
  v97 = v32;
  LODWORD(v36) = v34 == 1 && v32 != 0;
  v37 = *(v13 + 48);
  sub_21D0D3954(v31, v15, &qword_27CE58D60, &unk_21DC0A690);
  sub_21D0D3954(v101, &v15[v37], &qword_27CE58D60, &unk_21DC0A690);
  if (v33(v15, 1, v10) == 1)
  {
    v38 = v33(&v15[v37], 1, v10);
    v39 = v98;
    v40 = v99;
    if (v38 == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D60, &unk_21DC0A690);
      v41 = v100;
      goto LABEL_18;
    }

LABEL_15:
    sub_21D0CF7E0(v15, &qword_27CE5D1A0, &unk_21DC18EA0);
    v41 = v100;
    if (!v36)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v85 = v36;
  v36 = v87;
  sub_21D0D3954(v15, v87, &qword_27CE58D60, &unk_21DC0A690);
  v42 = v33(&v15[v37], 1, v10);
  v40 = v99;
  if (v42 == 1)
  {
    (*(v11 + 8))(v36, v10);
    v39 = v98;
    LODWORD(v36) = v85;
    goto LABEL_15;
  }

  v43 = v86;
  (*(v11 + 32))(v86, &v15[v37], v10);
  sub_21D9D77FC(&qword_27CE5D1A8, 255, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v44 = sub_21DBFA10C();
  v45 = *(v11 + 8);
  v45(v43, v10);
  v45(v36, v10);
  sub_21D0CF7E0(v15, &qword_27CE58D60, &unk_21DC0A690);
  v41 = v100;
  v39 = v98;
  LOBYTE(v36) = v85;
  if ((v44 & 1) == 0)
  {
    if (!v85)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_18:
  if (v36)
  {
LABEL_25:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v53 = sub_21DBF84BC();
    __swift_project_value_buffer(v53, qword_280D0F2C0);
    v54 = sub_21DBF84AC();
    v55 = sub_21DBFAE9C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21D0C9000, v54, v55, "edit(dueDateComponents:): previousDueDateComponents == nil with previousDisplayDate != nil.", v56, 2u);
      MEMORY[0x223D46520](v56, -1, -1);
    }

LABEL_30:
    v57 = [v39 alternativeDisplayDateDate_forCalendar];
    if (v57)
    {
      v58 = v57;
      sub_21DBF55FC();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v60 = sub_21DBF563C();
    (*(*(v60 - 8) + 56))(v40, v59, 1, v60);
    v61 = *(v41 + 72);
    if (v61)
    {
      v62 = [v61 dueDateDelta];
    }

    else
    {
      v62 = 0;
    }

    v63 = [v39 recurrenceRules];
    if (v63)
    {
      v64 = v63;
      sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
      v65 = sub_21DBFA5EC();
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v103 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108, &qword_21DC34C00);
    v66 = type metadata accessor for TTRRecurrenceRuleModel(0);
    sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108, &qword_21DC34C00, MEMORY[0x277D83970]);
    sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel, protocol conformance descriptor for TTRRecurrenceRuleModel);
    v67 = sub_21DBFA49C();

    v68 = *(v67 + 16);
    if (v68)
    {
      v69 = sub_21D9D674C(*(v67 + 16), 0, &qword_27CE58970, &qword_21DC27570, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D9D50F0(&v103, v69 + ((*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80)), v68, v67);
      v71 = v70;
      sub_21D0CFAF8(v103);
      if (v71 == v68)
      {
LABEL_43:
        v72 = v96;
        v73 = sub_21D0D523C(v40, v96, &qword_27CE58D68, &unk_21DC0C060);
        v74 = v91;
        *&v72[*(v91 + 20)] = v62;
        *&v72[*(v74 + 24)] = v69;
        MEMORY[0x28223BE20](v73);
        v75 = v101;
        *&v84[-32] = v41;
        *&v84[-24] = v75;
        v76 = v97;
        v77 = v93;
        *&v84[-16] = v97;
        *&v84[-8] = v77;
        sub_21D9B84D8(sub_21D9D9008);
        v50 = v102;
        v78 = v90;
        sub_21D0D3954(v102, v90, &qword_27CE58D60, &unk_21DC0A690);
        v79 = v95;
        sub_21D1074E8(v72, v95, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
        v80 = (*(v88 + 80) + 16) & ~*(v88 + 80);
        v81 = (v89 + *(v92 + 80) + v80) & ~*(v92 + 80);
        v82 = swift_allocObject();
        sub_21D0D523C(v78, v82 + v80, &qword_27CE58D60, &unk_21DC0A690);
        sub_21D9D9028(v79, v82 + v81, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
        sub_21D182E74(sub_21D9D9090, v82);

        sub_21D9D9170(v72, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
        v52 = 1;
        goto LABEL_44;
      }

      __break(1u);
    }

    v69 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v46 = sub_21DBF84BC();
  __swift_project_value_buffer(v46, qword_280D0F2C0);
  v47 = sub_21DBF84AC();
  v48 = sub_21DBFAE9C();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v102;
  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_21D0C9000, v47, v48, "Ignoring edit(dueDateComponents:) because value is the same", v51, 2u);
    MEMORY[0x223D46520](v51, -1, -1);
  }

  v52 = 0;
LABEL_44:
  sub_21D0CF7E0(v50, &qword_27CE58D60, &unk_21DC0A690);
  return v52;
}

uint64_t sub_21D9C5C74(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) prefersUrgentPresentationStyleForDateAlarms];
  [*(v3 + 16) setPrefersUrgentPresentationStyleForDateAlarms_];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_21D182E74(sub_21D9B1E4C, v5);
}

uint64_t sub_21D9C5D14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_21DBF563C();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = sub_21DBF5C4C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = v7;
    v26 = [a1 timeZone];
    if (v26)
    {
      v27 = v26;
      sub_21DBF5C2C();

      v28 = *(v22 + 56);
      v29 = v17;
      v30 = 0;
    }

    else
    {
      v28 = *(v22 + 56);
      v29 = v17;
      v30 = 1;
    }

    v48 = v28;
    (v28)(v29, v30, 1, v21);
    sub_21D0D523C(v17, v20, &unk_27CE60DB0, qword_21DC0BF70);
    v31 = (*(v22 + 48))(v20, 1, v21);
    v7 = v46;
    if (v31 != 1)
    {
      (*(v22 + 32))(v25, v20, v21);
LABEL_14:
      v36 = [a1 date];
      sub_21DBF55FC();

      v37 = *(v47 + 32);
      v38 = v9;
      v33 = v47;
      v37(v6, v38, v7);
      (*(v33 + 56))(v6, 0, 1, v7);
      v37(v12, v6, v7);
      v35 = [a1 isAllDay];
      v34 = v7;
      goto LABEL_15;
    }
  }

  else
  {
    v48 = *(v22 + 56);
    v48(v20, 1, 1, v21, v23);
  }

  v32 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_21D0CF7E0(v20, &unk_27CE60DB0, qword_21DC0BF70);
  }

  if (a1)
  {
    goto LABEL_14;
  }

  v33 = v47;
  (*(v47 + 56))(v6, 1, 1, v7);
  sub_21DBF560C();
  v34 = v7;
  if ((*(v33 + 48))(v6, 1, v7) != 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE58D68, &unk_21DC0C060);
  }

  v35 = 0;
LABEL_15:
  v39 = objc_opt_self();
  v40 = v12;
  v41 = sub_21DBF55BC();
  v42 = sub_21DBF5C0C();
  v43 = [v39 rem:v41 dateComponentsWithDate:v42 timeZone:v35 isAllDay:?];

  sub_21DBF4EFC();
  v44 = v49;
  (*(v22 + 16))(v49, v50, v21);
  (v48)(v44, 0, 1, v21);
  sub_21DBF508C();
  (*(v33 + 8))(v40, v34);
  return (*(v22 + 8))(v25, v21);
}

void sub_21D9C62D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_21D9C50E0(v10, v7);
  sub_21D0CF7E0(v7, &unk_27CE60DA0, &unk_21DC0C0C0);
  sub_21D0CF7E0(v10, &qword_27CE58D60, &unk_21DC0A690);
  v16.value._rawValue = a3;
  v16.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v16, v14);
}

void _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v32 = *(v1 + 16);
  v4 = [v32 alarms];
  if (v4)
  {
    v5 = v4;
    sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
    v3 = sub_21DBFA5EC();
  }

  if (v3 >> 62)
  {
    v6 = sub_21DBFBD7C();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      if (v6 >= 1)
      {
        v30 = v1;
        swift_beginAccess();
        v7 = 0;
        v8 = MEMORY[0x277D84F90];
        v9 = &selRef__setContentViewMarginType_;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x223D44740](v7, v3);
          }

          else
          {
            v16 = *(v3 + 8 * v7 + 32);
          }

          v17 = v16;
          v18 = [v16 v9[357]];
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            v10 = v19;
            swift_beginAccess();
            v11 = v17;
            MEMORY[0x223D42D80]();
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v8 = v33;
            swift_endAccess();

            v12 = swift_allocObject();
            *(v12 + 16) = v10;
            v14 = *(v2 + 16);
            v13 = *(v2 + 24);
            v15 = sub_21D9D8FA4;
          }

          else
          {

            v20 = [v17 v9[357]];
            objc_opt_self();
            v21 = swift_dynamicCastObjCClass();
            if (!v21)
            {

              goto LABEL_11;
            }

            v22 = v21;
            swift_beginAccess();
            v23 = v17;
            MEMORY[0x223D42D80]();
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v8 = v33;
            swift_endAccess();

            v12 = swift_allocObject();
            *(v12 + 16) = v22;
            v14 = *(v2 + 16);
            v13 = *(v2 + 24);
            v15 = sub_21D9D8F78;
          }

          *(v2 + 16) = v15;
          *(v2 + 24) = v12;
          sub_21D0D0E88(v14, v13);
LABEL_11:
          ++v7;
          v9 = &selRef__setContentViewMarginType_;
          if (v6 == v7)
          {

            goto LABEL_24;
          }
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_24:
  [v32 removeAllSnoozeAlarms];
  if (v8 >> 62)
  {
    v24 = sub_21DBFBD7C();
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v24 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  if (v24 < 1)
  {
LABEL_37:
    __break(1u);
    return;
  }

  for (i = 0; i != v24; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x223D44740](i, v8);
    }

    else
    {
      v26 = *(v8 + 8 * i + 32);
    }

    v27 = v26;
    [v32 removeAlarm_];
  }

LABEL_33:
  if (a1)
  {
    v28 = a1;
    v29 = [v32 addAlarmWithTrigger_];
  }

  sub_21D182E74(sub_21D9D8F70, v2);
}

void sub_21D9C6924()
{
  v1 = *(v0 + 16);
  v2 = [v1 recurrenceRules];
  if (v2)
  {
    v3 = v2;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v4 = sub_21DBFA5EC();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = sub_21DBFBD7C();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_4:
    v6 = [v1 recurrenceRules];
    if (v6)
    {
      v7 = v6;
      sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
      sub_21DBFA5EC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108, &qword_21DC34C00);
    type metadata accessor for TTRRecurrenceRuleModel(0);
    sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108, &qword_21DC34C00, MEMORY[0x277D83970]);
    sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel, protocol conformance descriptor for TTRRecurrenceRuleModel);
    v8 = sub_21DBFA49C();

    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x223D44740](i, v4);
        }

        else
        {
          v10 = *(v4 + 8 * i + 32);
        }

        v11 = v10;
        [v1 removeRecurrenceRule_];
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      sub_21D182E74(sub_21D9D8D00, v12);
    }

    return;
  }

LABEL_8:
}

uint64_t sub_21D9C6C00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21D7DAFA0(a2);
  v11 = v10;
  v13 = v12;
  sub_21D1074E8(a1, v8, type metadata accessor for TTRRecurrenceRuleModel);
  v14 = v6[5];
  if (*(a1 + v14) == 3)
  {
    v15 = *(a1 + v6[13]);
    if (v15)
    {
      if (*(v15 + 16))
      {
        v16 = *(a1 + v6[12]);
        if (v16)
        {
          if (*(v16 + 16))
          {
            *&v8[v14] = 2;
          }
        }
      }
    }
  }

  sub_21D7D8908(v9, v11, v13 & 1, a3);
  return sub_21D9D9170(v8, type metadata accessor for TTRRecurrenceRuleModel);
}

void sub_21D9C6D40(uint64_t a1)
{
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v7 = *(v1 + 16);
  v8 = [v7 recurrenceRules];
  if (v8)
  {
    v9 = v8;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v10 = sub_21DBFA5EC();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v8);
  *(&v19 - 2) = a1;
  v11 = sub_21D9B26A0(sub_21D9D9728, (&v19 - 4), v10);
  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_14:

    return;
  }

  v13 = sub_21DBFBD7C();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v4;
    v20 = a1;
    v21 = v1;
    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      v16 = v15;
      [v7 removeRecurrenceRule_];
    }

    sub_21D1074E8(v20, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRRecurrenceRuleModel);
    v17 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v18 = swift_allocObject();
    sub_21D9D9028(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D182E74(sub_21D9D977C, v18);
  }
}

double sub_21D9C6FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v72 = *(v4 - 1);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  *&v11 = MEMORY[0x28223BE20](v10 - 8).n128_u64[0];
  v13 = (&v63 - v12);
  v71 = *(v2 + 16);
  v14 = [v71 recurrenceRules];
  v73 = v5;
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v15 = v14;
    sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
    v16 = sub_21DBFA5EC();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v14);
  v62[2] = a1;
  v17 = sub_21D9B26A0(sub_21D9D9728, v62, v16);
  if (v17 >> 62)
  {
    v61 = sub_21DBFBD7C();

    if (v61)
    {
      return result;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      return result;
    }
  }

  sub_21D0D3954(a1, v13, &unk_27CE62610, &unk_21DC0DF00);
  v20 = type metadata accessor for TTRRecurrenceEndModel(0);
  v21 = (*(*(v20 - 8) + 48))(v13, 1, v20);
  v22 = 0;
  if (v21 != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];
    }

    else
    {
      (*(v7 + 32))(v9, v13, v6);
      v24 = sub_21DBF55BC();
      v23 = [objc_opt_self() recurrenceEndWithEndDate_];

      (*(v7 + 8))(v9, v6);
    }

    v22 = v23;
  }

  v70 = v22;
  v25 = *(a1 + v4[5]);
  v68 = *(a1 + v4[6]);
  v69 = v25;
  v26 = v4[8];
  v67 = *(a1 + v4[7]);
  v27 = *(a1 + v26);
  if (v27)
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      v75 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v29 = objc_opt_self();
      v30 = (v27 + 40);
      do
      {
        v31 = [v29 dayOfWeek:*(v30 - 1) weekNumber:*v30];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v30 += 2;
        --v28;
      }

      while (v28);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8, 0x277D44718);
    v66 = sub_21DBFA5DC();
  }

  else
  {
    v66 = 0;
  }

  v32 = *(a1 + v4[9]);
  if (v32)
  {
    v33 = *(v32 + 16);
    if (v33)
    {
      v75 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v34 = (v32 + 32);
      do
      {
        v35 = *v34++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v33;
      }

      while (v33);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v65 = sub_21DBFA5DC();
  }

  else
  {
    v65 = 0;
  }

  v36 = *(a1 + v4[12]);
  if (v36)
  {
    v37 = *(v36 + 16);
    if (v37)
    {
      v75 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v38 = (v36 + 32);
      do
      {
        v39 = *v38++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v37;
      }

      while (v37);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v64 = sub_21DBFA5DC();
  }

  else
  {
    v64 = 0;
  }

  v40 = *(a1 + v4[11]);
  if (v40)
  {
    v41 = v40[2];
    if (v41)
    {
      v75 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v42 = v40 + 4;
      do
      {
        v43 = *v42++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v41;
      }

      while (v41);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v40 = sub_21DBFA5DC();
  }

  v44 = *(a1 + v4[10]);
  if (v44)
  {
    v45 = *(v44 + 16);
    if (v45)
    {
      v63 = v2;
      v75 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v46 = (v44 + 32);
      do
      {
        v47 = *v46++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v45;
      }

      while (v45);
      v2 = v63;
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v48 = sub_21DBFA5DC();
  }

  else
  {
    v48 = 0;
  }

  v49 = *(a1 + v4[13]);
  if (v49)
  {
    v50 = *(v49 + 16);
    if (v50)
    {
      v63 = v2;
      v75 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v51 = (v49 + 32);
      do
      {
        v52 = *v51++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v50;
      }

      while (v50);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v53 = sub_21DBFA5DC();
  }

  else
  {
    v53 = 0;
  }

  v54 = v74;
  v55 = v70;
  v56 = v66;
  v58 = v64;
  v57 = v65;

  sub_21D1074E8(a1, v54, type metadata accessor for TTRRecurrenceRuleModel);
  v59 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v60 = swift_allocObject();
  sub_21D9D9028(v54, v60 + v59, type metadata accessor for TTRRecurrenceRuleModel);
  sub_21D182E74(sub_21D9D8D08, v60);

  return result;
}

uint64_t sub_21D9C7928(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 notes];
  if (sub_21D9D6EFC(v4, a1))
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F2C0);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAE9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Ignoring edit(notes:) because the value is the same", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    return 0;
  }

  v9 = sub_21D9D74E0(a1);
  v10 = v9;
  if (v4)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      v11 = v4;
      v12 = sub_21DBFB63C();

      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  else if (!v9)
  {
LABEL_10:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F2C0);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Ignoring edit(notes:) because the value is the same", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    return 0;
  }

  [v3 setNotes_];

  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
  result = swift_allocObject();
  *(result + 16) = sub_21D9D8FDC;
  *(result + 24) = v18;
  return result;
}

void *sub_21D9C7BBC(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = [*(v3 + 16) hashtagContext];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_21D9CB53C(v5, v6, v7, v8);
  v12 = v11;
  if (v11)
  {
    [v10 removeHashtag_];
    v13 = [v12 objectID];
    [v10 cancelUndeleteHashtagWithID_];

    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    if (a2)
    {
      v15 = sub_21D9CBAD8(v12, 0);

      *(v14 + 16) = v15;
    }

    else
    {
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v12;
    *(v16 + 32) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_21D9D9758;
    *(v17 + 24) = v16;
    v18 = v12;
  }

  else
  {
  }

  return v12;
}

void *sub_21D9C7D50(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  result = [*(v3 + 16) hashtagContext];
  if (result)
  {
    v13 = result;
    sub_21D9CB53C(v5, v4, v6, v7);
    if (!v14)
    {

      return 0;
    }

    v15 = v14;
    [v13 removeHashtag_];
    v16 = [v15 objectID];
    [v13 cancelUndeleteHashtagWithID_];

    sub_21D9CB53C(v8, v9, v10, v11);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
LABEL_12:
      v22 = v18;
      v23 = v19;
      v24 = sub_21D9CBAD8(v15, v19);

      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = v23;
      v25[4] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
      result = swift_allocObject();
      result[2] = sub_21D7E6718;
      result[3] = v25;
      return result;
    }

    if (v11)
    {
      v20 = v8;
      [v13 addHashtag_];
      if ((a3 & 1) == 0)
      {
LABEL_11:
        v19 = v20;
        goto LABEL_12;
      }

      v21 = [v20 objectID];
      [v13 undeleteHashtagWithID_];
    }

    else
    {
      v21 = sub_21DBFA12C();
      v20 = [v13 addHashtagWithType:v10 name:v21];
    }

    goto LABEL_11;
  }

  return result;
}

void sub_21D9C7F8C(void *a1)
{
  v3 = [*(v1 + 16) assignmentContext];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 assignments];
    sub_21D0D8CF0(0, &qword_27CE59850, 0x277D44598);
    sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850, 0x277D44598);
    v5 = sub_21DBFAAAC();

    LOBYTE(v4) = sub_21D1E22D8(a1, v5);

    if (v4)
    {
      [v12 removeAssignment_];
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v7 = a1;
      sub_21D182E74(sub_21D9D9750, v6);
    }

    else
    {
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_280D0F2C0);
      v9 = sub_21DBF84AC();
      v10 = sub_21DBFAE9C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_21D0C9000, v9, v10, "Ignoring remove(assignment:) because the assignment has already been removed", v11, 2u);
        MEMORY[0x223D46520](v11, -1, -1);
      }
    }
  }
}

void sub_21D9C81F4(void *a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(v4 + 16) attachmentContext];
  if (v8)
  {
    v11 = v8;
    [v8 *a2];
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = a1;
    sub_21D182E74(a4, v9);
  }
}

void sub_21D9C82C0(uint64_t a1, void *a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v8 = [*(*a1 + 16) attachmentContext];
  if (v8)
  {
    v11 = v8;
    [v8 *a3];
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = a2;
    sub_21D182E74(a5, v9);
  }
}

uint64_t sub_21D9C8390(uint64_t a1, void *a2, void *a3)
{
  TTRReminderEditor.edit(userActivity:)(a2);
  result = sub_21D9C7928(a3);
  if (result)
  {
    v5 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v5);
  }

  return result;
}

void TTRReminderEditor.undelete(subtaskID:undoToken:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 subtaskContext];
  if (v6)
  {
    v7 = v6;
    [v6 undeleteSubtaskWithID:a1 usingUndo:a2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = a1;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = a1;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_21D9D7EB0;
    *(v11 + 24) = v9;

    sub_21D1C442C(v20, sub_21D1D20DC, v11);
  }

  else
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F2C0);
    v13 = a1;

    oslog = sub_21DBF84AC();
    v14 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v13;
      *v16 = v13;
      *(v15 + 12) = 2112;
      v17 = v13;
      v18 = [v5 objectID];
      *(v15 + 14) = v18;
      v16[1] = v18;
      _os_log_impl(&dword_21D0C9000, oslog, v14, "Tried to undelete subtask from reminder without subtaskContext {subtaskID: %@, reminderID: %@}", v15, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
    }
  }
}

void sub_21D9C86C4(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = [v3 saveRequest];
  v5 = [v4 store];

  v23[0] = 0;
  v6 = [v5 fetchReminderWithObjectID:a2 error:v23];

  if (v6)
  {
    v7 = v23[0];
    v8 = [v3 saveRequest];
    v9 = [v8 updateReminder_];

    TTRReminderEditor.remove(subtask:)(v9);
LABEL_7:

    return;
  }

  v10 = v23[0];
  v11 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F2C0);
  v13 = v11;
  v14 = a2;
  v9 = sub_21DBF84AC();
  v15 = sub_21DBFAEBC();

  if (os_log_type_enabled(v9, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v16 = 136315394;
    swift_getErrorValue();
    v19 = sub_21DBFC74C();
    v21 = sub_21D0CDFB4(v19, v20, v23);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v14;
    *v17 = v14;
    v22 = v14;
    _os_log_impl(&dword_21D0C9000, v9, v15, "Failed to get subtask for undelete {error: %s, subtaskID: %@}", v16, 0x16u);
    sub_21D0CF7E0(v17, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v16, -1, -1);

    goto LABEL_7;
  }
}

void sub_21D9C89C0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F2C0);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Failed to move reminders {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static TTRReminderEditor.defaultDueDateComponents(from:)@<X0>(uint64_t a2@<X8>)
{
  v25 = a2;
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = sub_21DBF563C();
  v23 = *(v12 - 8);
  v24 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D9C8ECC(v14);
  (*(v3 + 56))(v11, 1, 1, v2);
  v15 = sub_21DBF55BC();
  sub_21D0D3954(v11, v8, &unk_27CE60DB0, qword_21DC0BF70);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) == 1)
  {
    v17 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v16(v8, 1, v2) != 1)
    {
      sub_21D0CF7E0(v8, &unk_27CE60DB0, qword_21DC0BF70);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
  }

  v18 = objc_opt_self();
  v19 = sub_21DBF5C0C();
  (*(v3 + 8))(v5, v2);
  v20 = [v18 rem:v15 dateComponentsWithDate:v19 timeZone:0 isAllDay:?];

  sub_21DBF4EFC();
  sub_21D0CF7E0(v11, &unk_27CE60DB0, qword_21DC0BF70);
  return (*(v23 + 8))(v14, v24);
}

uint64_t sub_21D9C8ECC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v27 - v2;
  v3 = sub_21DBF509C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF583C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF5A2C();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DBF563C();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF559C();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9830], v5);
  sub_21DBF584C();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8, &qword_21DC109A0);
  v15 = sub_21DBF5A0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC0B380;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277CC99C0], v15);
  v21(v20 + v17, *MEMORY[0x277CC9978], v15);
  v21(v20 + 2 * v17, *MEMORY[0x277CC99C8], v15);
  v21(v20 + 3 * v17, *MEMORY[0x277CC9988], v15);
  v21(v20 + 4 * v17, *MEMORY[0x277CC9998], v15);
  v21(v20 + 5 * v17, *MEMORY[0x277CC9968], v15);
  v21(v20 + 6 * v17, *MEMORY[0x277CC9980], v15);
  sub_21D1D0F50(v19);
  swift_setDeallocating();
  v22 = v31;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v30;
  sub_21DBF58DC();
  v24 = v27;

  sub_21DBF597C();
  (*(v32 + 8))(v23, v33);
  (*(v28 + 8))(v11, v29);
  v25 = *(v12 + 48);
  if (v25(v22, 1, v24) == 1)
  {
    (*(v12 + 32))(v34, v14, v24);
    result = v25(v22, 1, v24);
    if (result != 1)
    {
      return sub_21D0CF7E0(v22, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  else
  {
    (*(v12 + 8))(v14, v24);
    return (*(v12 + 32))(v34, v22, v24);
  }

  return result;
}

id sub_21D9C9488(uint64_t a1, unint64_t *a2, void *a3)
{
  sub_21D0D8CF0(0, a2, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata newObjectID];
  v6 = [objc_allocWithZone(ObjCClassFromMetadata) initWithAlarmTrigger:a1 objectID:v5];

  return v6;
}

void sub_21D9C94F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 24);

    v6 = v3(v5);
    sub_21D0D0E88(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v6);
}

void sub_21D9C9584(char *a1)
{
  v139 = a1;
  v136 = sub_21DBF563C();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v3 = v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF5A0C();
  v133 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v132 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v114 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v128 = v105 - v10;
  v112 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v11 = *(v112 - 1);
  MEMORY[0x28223BE20](v112);
  v110 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v105 - v14;
  MEMORY[0x28223BE20](v16);
  v122 = v105 - v17;
  MEMORY[0x28223BE20](v18);
  v129 = v105 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v105 - v21;
  v23 = sub_21DBF509C();
  v137 = *(v23 - 8);
  v138 = v23;
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v1;
  v111 = *(v1 + 16);
  v27 = [v111 recurrenceRules];
  if (!v27)
  {
    return;
  }

  v28 = v27;
  v124 = v15;
  v125 = v7;
  sub_21D0D8CF0(0, &qword_280D177E8, 0x277D44740);
  v29 = sub_21DBFA5EC();

  if (v29 >> 62)
  {
    v30 = sub_21DBFBD7C();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v126 = v6;
  v127 = v3;
  v135 = v4;
  if (v30)
  {
    v141 = MEMORY[0x277D84F90];
    sub_21D18EA80(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
      goto LABEL_93;
    }

    v31 = 0;
    v32 = v141;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223D44740](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      TTRRecurrenceRuleModel.init(sourceRule:)(v33, v22);
      v141 = v32;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_21D18EA80((v34 > 1), v35 + 1, 1);
        v32 = v141;
      }

      ++v31;
      *(v32 + 16) = v35 + 1;
      sub_21D9D9028(v22, v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35, type metadata accessor for TTRRecurrenceRuleModel);
    }

    while (v30 != v31);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v141 = v32;
  sub_21DBF8E0C();
  v36 = v111;
  v37 = [v111 dueDateComponents];
  v38 = v32;
  v39 = v122;
  if (v37)
  {
    v40 = v37;
    sub_21DBF4EFC();

    v38 = v32;
    v41 = sub_21DBF4EDC();
    v42 = [v41 rem_isAllDayDateComponents];

    v43 = v38;
    if (!v42)
    {
LABEL_27:
      (v137[1])(v26, v138);
      v32 = v43;
      goto LABEL_28;
    }

    v44 = v113;

    v45 = sub_21D9D91D0(&v141, v44);

    v38 = v141;
    v46 = v141[2];
    if (v45 <= v46)
    {
      if ((v45 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v46, v45 - v46))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v45 > v38[3] >> 1)
          {
            if (v46 <= v45)
            {
              v48 = v45;
            }

            else
            {
              v48 = v46;
            }

            v38 = sub_21D212C78(isUniquelyReferenced_nonNull_native, v48, 1, v38);
            v141 = v38;
          }

          sub_21D506AE4(v45, v46, 0);
          goto LABEL_27;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_28:
  if (v139)
  {
    v49 = v139;
    v50 = [v36 displayDate];
    if (v50)
    {
      v51 = v50;
      v107 = v32;
      sub_21D0D8CF0(0, &qword_27CE5CC20, 0x277D44600);
      if (sub_21DBFB63C())
      {

        goto LABEL_86;
      }

      v52 = v38[2];
      if (v52)
      {
        v109 = v51;
        v140 = MEMORY[0x277D84F90];
        sub_21D18EA80(0, v52, 0);
        v53 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v105[1] = v38;
        v120 = v53;
        v54 = v38 + v53;
        v55 = (v133 + 104);
        v119 = (v134 + 8);
        v56 = v140;
        v118 = (v133 + 8);
        v117 = (v132 + 8);
        v116 = *(v11 + 72);
        v57 = &selRef_keyboardType;
        v58 = *MEMORY[0x277CC9968];
        *&v59 = 138543362;
        v106 = v59;
        LODWORD(v134) = v58;
        v121 = v49;
        v108 = (v133 + 104);
        while (1)
        {
          v137 = v56;
          v138 = v54;
          v139 = v52;
          sub_21D1074E8(v54, v39, type metadata accessor for TTRRecurrenceRuleModel);
          v60 = v128;
          _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
          v61 = v126;
          v62 = v135;
          v133 = *v55;
          (v133)(v126, v58, v135);
          v63 = [v49 v57[260]];
          v64 = v127;
          sub_21DBF55FC();

          v65 = sub_21DBF5A1C();
          v132 = *v119;
          (v132)(v64, v136);
          v131 = *v118;
          v131(v61, v62);
          v66 = v39;
          v67 = v125;
          v130 = *v117;
          v130(v60);
          v68 = (v65 - 32) >= 0xFFFFFFFFFFFFFFFDLL ? 28 : 0;
          v123 = v65;
          v69 = (v65 - 32) >= 0xFFFFFFFFFFFFFFFDLL ? v65 : 0;
          if (sub_21D7D8BE8(v68, v69, (v65 - 32) < 0xFFFFFFFFFFFFFFFDLL))
          {
            break;
          }

          v76 = v124;
          sub_21D9D9028(v66, v124, type metadata accessor for TTRRecurrenceRuleModel);
          v39 = v66;
          v49 = v121;
          v77 = v138;
LABEL_62:
          v90 = v129;
          sub_21D9D9028(v76, v129, type metadata accessor for TTRRecurrenceRuleModel);
          v56 = v137;
          v140 = v137;
          v92 = v137[2];
          v91 = v137[3];
          if (v92 >= v91 >> 1)
          {
            sub_21D18EA80((v91 > 1), v92 + 1, 1);
            v90 = v129;
            v56 = v140;
          }

          v56[2] = v92 + 1;
          v93 = v116;
          sub_21D9D9028(v90, v56 + v120 + v92 * v116, type metadata accessor for TTRRecurrenceRuleModel);
          v54 = v77 + v93;
          v52 = v139 - 1;
          v57 = &selRef_keyboardType;
          v58 = v134;
          if (v139 == 1)
          {

            v38 = v56;
            goto LABEL_86;
          }
        }

        v115 = v65 - 32;
        v70 = v114;
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v71 = v135;
        (v133)(v61, v134, v135);
        v72 = [v109 date];
        sub_21DBF55FC();

        v73 = sub_21DBF5A1C();
        (v132)(v64, v136);
        v131(v61, v71);
        (v130)(v70, v67);
        v74 = v73 - 29;
        if ((v73 - 29) >= 3)
        {
          v75 = 0;
        }

        else
        {
          v75 = v73;
        }

        if (v115 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v76 = v124;
          v39 = v122;
          if (v74 > 2 || v123 != v75)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v76 = v124;
          v39 = v122;
          if (v74 < 3)
          {
LABEL_52:
            v78 = v110;
            sub_21D1074E8(v39, v110, type metadata accessor for TTRRecurrenceRuleModel);
            v79 = v112;
            v80 = v112[13];

            *(v78 + v80) = 0;
            v81 = v79[9];

            *(v78 + v81) = 0;
            if (*(v78 + v79[5]) != 2 || (v82 = *(v78 + v112[8])) != 0 && *(v82 + 16))
            {
              sub_21D1074E8(v78, v76, type metadata accessor for TTRRecurrenceRuleModel);
            }

            else
            {
              sub_21D1074E8(v78, v76, type metadata accessor for TTRRecurrenceRuleModel);
              if (v74 <= 2)
              {
                v94 = v112[13];

                *(v76 + v94) = &unk_282EA8148;
                v95 = v73 - 27;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0, &unk_21DC0D000);
                v96 = swift_allocObject();
                v97 = _swift_stdlib_malloc_size(v96);
                v98 = v97 - 32;
                if (v97 < 32)
                {
                  v98 = v97 - 25;
                }

                v96[2] = v95;
                v96[3] = 2 * (v98 >> 3);
                v99 = 29;
                if (v75 == 28)
                {
                  v99 = 0;
                }

                v96[4] = 28;
                if (v95 != 1)
                {
                  if (v75 == 28)
                  {
                    goto LABEL_96;
                  }

                  v100 = v99 == v75 ? 0 : v99 + 1;
                  v96[5] = v99;
                  if (v95 != 2)
                  {
                    if (v99 == v75)
                    {
                      goto LABEL_96;
                    }

                    v101 = v100 == v75 ? 0 : v100 + 1;
                    v96[6] = v100;
                    if (v95 != 3)
                    {
                      if (v100 == v75)
                      {
                        goto LABEL_96;
                      }

                      v96[7] = v101;
                      if (v95 != 4)
                      {
                        goto LABEL_97;
                      }
                    }
                  }
                }

                v102 = v112[9];

                *(v76 + v102) = v96;
                v78 = v110;
              }
            }

            sub_21D9D9170(v78, type metadata accessor for TTRRecurrenceRuleModel);
            if (qword_280D0F2B8 != -1)
            {
              swift_once();
            }

            v83 = sub_21DBF84BC();
            __swift_project_value_buffer(v83, qword_280D0F2C0);

            v84 = sub_21DBF84AC();
            v85 = sub_21DBFAEDC();

            v86 = os_log_type_enabled(v84, v85);
            v49 = v121;
            if (v86)
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v87 = v106;
              v89 = [v111 objectID];
              *(v87 + 4) = v89;
              *v88 = v89;
              _os_log_impl(&dword_21D0C9000, v84, v85, "Adjusting fixed up recurrenceRule because dueDate has changed {reminderID: %{public}@}", v87, 0xCu);
              sub_21D0CF7E0(v88, &unk_27CE60070, &unk_21DC09550);
              MEMORY[0x223D46520](v88, -1, -1);
              MEMORY[0x223D46520](v87, -1, -1);
            }

            sub_21D9D9170(v39, type metadata accessor for TTRRecurrenceRuleModel);
            goto LABEL_61;
          }
        }

        sub_21D9D9028(v39, v76, type metadata accessor for TTRRecurrenceRuleModel);
        v49 = v121;
LABEL_61:
        v77 = v138;
        v55 = v108;
        goto LABEL_62;
      }

      v38 = MEMORY[0x277D84F90];
LABEL_86:
      v32 = v107;
    }

    else
    {
    }
  }

  v103 = sub_21D1D991C(v38, v32);

  if ((v103 & 1) == 0)
  {
    v142.value._rawValue = v38;
    v142.is_nil = 0;
    TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v142, v104);
  }
}

uint64_t sub_21D9CA3E0(void *a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = [v7 title];
  v9 = sub_21D9D6EFC(v8, a1);

  if (v9)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F2C0);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Ignoring edit(title:) because value is the same", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    return 0;
  }

  v14 = [v7 title];
  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v15 = [objc_opt_self() allowedAttributesForModel];
  type metadata accessor for Key(0);
  sub_21D9D77FC(&qword_280D17790, 255, type metadata accessor for Key, byte_21DC082E8);
  v16 = sub_21DBFAAAC();

  v17 = [a1 string];
  if (!v17)
  {
    sub_21DBFA16C();
    v17 = sub_21DBFA12C();
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  v50 = v14;
  if (*(v16 + 16))
  {
    [v18 beginEditing];
    v19 = [a1 string];
    v20 = sub_21DBFA16C();
    v22 = v21;

    v14 = MEMORY[0x223D42B30](v20, v22);

    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    *(v23 + 24) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_21D9D9714;
    *(v24 + 24) = v23;
    v58 = sub_21D9D9718;
    v59 = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v57 = sub_21D472CC4;
    *(&v57 + 1) = &block_descriptor_257;
    v25 = _Block_copy(&aBlock);
    sub_21DBF8E0C();
    v26 = v18;

    [a1 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v25}];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_40;
    }

    [v26 endEditing];

    v28 = sub_21D9D9714;
    v14 = v50;
  }

  else
  {

    v28 = 0;
    v23 = 0;
  }

  sub_21D0D0E88(v28, v23);
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  v29 = a3;
  if (sub_21DBFB63C())
  {
    if (qword_280D0F2B8 == -1)
    {
LABEL_17:
      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_280D0F2C0);
      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAE9C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21D0C9000, v31, v32, "Ignoring edit(title:) because value is the same", v33, 2u);
        MEMORY[0x223D46520](v33, -1, -1);
      }

      return 0;
    }

LABEL_40:
    swift_once();
    goto LABEL_17;
  }

  [v7 setTitle_];
  if (a3 != 1)
  {
    v37 = [v7 primaryLocaleInferredFromLastUsedKeyboard];
    if (v37)
    {
      v38 = v37;
      v36 = sub_21DBFA16C();
      v35 = v39;

      if (!a3)
      {
LABEL_32:
        [v7 setPrimaryLocaleInferredFromLastUsedKeyboard_];

        goto LABEL_33;
      }

      if (v36 == a2 && v35 == a3)
      {
        v36 = a2;
        v35 = a3;
        goto LABEL_33;
      }

      if (sub_21DBFC64C())
      {
        goto LABEL_33;
      }
    }

    else
    {
      v36 = 0;
      v35 = 0;
      if (!a3)
      {
        goto LABEL_33;
      }
    }

    v29 = sub_21DBFA12C();
    goto LABEL_32;
  }

  v35 = 1;
  v36 = a2;
LABEL_33:
  v40 = [v7 listChangeItem];
  if (v40)
  {
    v41 = v40;
    v58 = 0;
    aBlock = 0u;
    v57 = 0u;
    sub_21D0D3954(&aBlock, v54, &unk_27CE60D80, &unk_21DC093F0);
    v42 = qword_280D1AA10;
    v43 = v41;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = qword_280D1AA18;
    sub_21D0CF7E0(&aBlock, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    v52 = type metadata accessor for TTRUserDefaults();
    v53 = &protocol witness table for TTRUserDefaults;
    *&v51 = v44;
    *(inited + 64) = 0;
    *(inited + 16) = v43;
    *(inited + 56) = v55;
    v46 = v54[0];
    *(inited + 40) = v54[1];
    *(inited + 24) = v46;
    sub_21D0D15E0(&v51, inited + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_21DC09CF0;
    v48 = v44;
    *(v47 + 32) = [v7 objectID];
    sub_21D1BF9F4(v47);

    swift_setDeallocating();
    sub_21D0CF7E0(inited + 24, &unk_27CE60D80, &unk_21DC093F0);
    __swift_destroy_boxed_opaque_existential_0((inited + 72));
    v14 = v50;
  }

  else
  {
  }

  v49 = swift_allocObject();
  v49[2] = v14;
  v49[3] = v36;
  v49[4] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
  result = swift_allocObject();
  *(result + 16) = sub_21D9D96D0;
  *(result + 24) = v49;
  return result;
}

uint64_t sub_21D9CABB8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v41 = a4;
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v42 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  v11 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21DBF563C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v43 = *(a1 + 16);
  sub_21D0D3954(a2, &v36 - v16, &qword_27CE58D60, &unk_21DC0A690);
  v18 = sub_21DBF509C();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = sub_21DBF4EDC();
    (*(v19 + 8))(v17, v18);
  }

  v21 = v43;
  [v43 setDueDateComponentsWithAlarmsIfNeeded_];

  v22 = v39;
  v39 = a1;
  sub_21D9C9584(v22);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v23 = sub_21DBF55BC();
  v24 = v38;
  v25 = *(v38 + 8);
  v26 = v14;
  v27 = v40;
  v25(v26, v40);
  [v21 setLastBannerPresentationDate_];

  sub_21D0D3954(v41, v10, &unk_27CE60DA0, &unk_21DC0C0C0);
  v28 = v42;
  if ((*(v11 + 48))(v10, 1, v42) == 1)
  {
    return sub_21D0CF7E0(v10, &unk_27CE60DA0, &unk_21DC0C0C0);
  }

  v30 = v36;
  sub_21D9D9028(v10, v36, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
  v31 = v37;
  sub_21D0D3954(v30, v37, &qword_27CE58D68, &unk_21DC0C060);
  if ((*(v24 + 48))(v31, 1, v27) == 1)
  {
    v32 = 0;
  }

  else
  {
    v33 = sub_21DBF55BC();
    v34 = v27;
    v32 = v33;
    v25(v31, v34);
  }

  [v43 setAlternativeDisplayDateDate:v32 forCalendar:?];

  TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(*(v30 + *(v28 + 20)));
  v44.value._rawValue = *(v30 + *(v28 + 24));
  v44.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v44, v35);
  return sub_21D9D9170(v30, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
}