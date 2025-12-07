uint64_t sub_1C89B0D48(uint64_t a1, void *a2)
{
  v157 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  MEMORY[0x1EEE9AC00](v157);
  v151 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD650, &qword_1C8C0A4F8);
  v5 = MEMORY[0x1EEE9AC00](v155);
  v7 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v158 = &v147 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v152 = &v147 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v153 = &v147 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v147 - v16;
  v162 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  MEMORY[0x1EEE9AC00](v162);
  v154 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD658, &qword_1C8C0A500);
  MEMORY[0x1EEE9AC00](v160);
  v163 = &v147 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v159 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v147 - v22;
  v167 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD660, &qword_1C8C0A508);
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v147 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v165 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v147 - v28;
  v172 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  MEMORY[0x1EEE9AC00](v172);
  v169 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD668, &qword_1C8C0A510);
  MEMORY[0x1EEE9AC00](v171);
  v173 = &v147 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v170 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v177 = &v147 - v34;
  v35 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v147 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v176 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v147 - v43;
  swift_beginAccess();
  v46 = *(a1 + 16);
  v45 = *(a1 + 24);
  swift_beginAccess();
  v47 = v46 == a2[2] && v45 == a2[3];
  if (v47 || (sub_1C8BD529C() & 1) != 0)
  {
    swift_beginAccess();
    v48 = *(a1 + 32);
    v49 = *(a1 + 40);
    swift_beginAccess();
    v50 = v48 == a2[4] && v49 == a2[5];
    if (v50 || (sub_1C8BD529C() & 1) != 0)
    {
      swift_beginAccess();
      v51 = *(a1 + 48);
      v52 = *(a1 + 56);
      swift_beginAccess();
      if (sub_1C87E4678(v51, v52, a2[6]))
      {
        v147 = v7;
        swift_beginAccess();
        swift_beginAccess();

        sub_1C87DC550();
        v53 = a2;
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          v60 = 0;
LABEL_36:

          return v60 & 1;
        }

        swift_beginAccess();
        v148 = a1;
        sub_1C89CBE2C();
        swift_beginAccess();
        v56 = *(v37 + 48);
        sub_1C89CBE2C();
        v149 = v53;
        sub_1C89CBE2C();
        if (__swift_getEnumTagSinglePayload(v39, 1, v35) == 1)
        {
          sub_1C8778ED8(v44, &qword_1EC2B60D8, &qword_1C8BE6D88);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v39[v56], 1, v35);
          v58 = v148;
          v59 = v177;
          if (EnumTagSinglePayload == 1)
          {
            sub_1C8778ED8(v39, &qword_1EC2B60D8, &qword_1C8BE6D88);
            goto LABEL_26;
          }
        }

        else
        {
          v61 = v176;
          sub_1C89CBE2C();
          v62 = __swift_getEnumTagSinglePayload(&v39[v56], 1, v35);
          v59 = v177;
          if (v62 != 1)
          {
            v66 = v174;
            sub_1C88E3EC4();
            v58 = v148;
            if (*&v61[*(v35 + 20)] == *&v66[*(v35 + 20)] || (, , sub_1C896B338(), v68 = v67, , , (v68 & 1) != 0))
            {
              sub_1C8BD49FC();
              sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
              v69 = sub_1C8BD517C();
              sub_1C88E3C58();
              sub_1C8778ED8(v44, &qword_1EC2B60D8, &qword_1C8BE6D88);
              sub_1C88E3C58();
              sub_1C8778ED8(v39, &qword_1EC2B60D8, &qword_1C8BE6D88);
              if ((v69 & 1) == 0)
              {
                goto LABEL_22;
              }

LABEL_26:
              v70 = (v58 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
              swift_beginAccess();
              v71 = *v70;
              v72 = v70[1];
              v73 = (v149 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
              swift_beginAccess();
              v74 = v73[1];
              if (v72)
              {
                v75 = v175;
                if (!v74)
                {
                  goto LABEL_35;
                }

                v76 = v71 == *v73 && v72 == v74;
                if (!v76 && (sub_1C8BD529C() & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              else
              {
                v75 = v175;
                if (v74)
                {
                  goto LABEL_35;
                }
              }

              swift_beginAccess();
              sub_1C89CBE2C();
              swift_beginAccess();
              v78 = *(v171 + 48);
              v79 = v173;
              sub_1C89CBE2C();
              v80 = v79;
              sub_1C89CBE2C();
              v81 = v172;
              if (__swift_getEnumTagSinglePayload(v79, 1, v172) == 1)
              {
                sub_1C8778ED8(v59, &qword_1EC2BADB8, &qword_1C8BFABD8);
                if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v81) == 1)
                {
                  sub_1C8778ED8(v79, &qword_1EC2BADB8, &qword_1C8BFABD8);
LABEL_47:
                  v84 = (v58 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
                  swift_beginAccess();
                  v85 = *v84;
                  v86 = v84[1];
                  v87 = v149;
                  v88 = (v149 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
                  swift_beginAccess();
                  v89 = v88[1];
                  if (v86)
                  {
                    if (!v89)
                    {
                      goto LABEL_35;
                    }

                    v90 = v85 == *v88 && v86 == v89;
                    if (!v90 && (sub_1C8BD529C() & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  else if (v89)
                  {
                    goto LABEL_35;
                  }

                  swift_beginAccess();
                  swift_beginAccess();

                  sub_1C87E27F4();
                  v91 = v87;
                  v93 = v92;

                  if ((v93 & 1) == 0)
                  {
                    goto LABEL_73;
                  }

                  v94 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
                  swift_beginAccess();
                  v95 = *(v58 + v94);
                  v96 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
                  swift_beginAccess();
                  if ((sub_1C87D2814(v95, *(v91 + v96)) & 1) == 0)
                  {
                    goto LABEL_35;
                  }

                  swift_beginAccess();
                  sub_1C89CBE2C();
                  swift_beginAccess();
                  v97 = *(v166 + 48);
                  v98 = v75;
                  v99 = v168;
                  sub_1C89CBE2C();
                  v80 = v99;
                  sub_1C89CBE2C();
                  v100 = v167;
                  if (__swift_getEnumTagSinglePayload(v99, 1, v167) == 1)
                  {
                    sub_1C8778ED8(v98, &qword_1EC2BADE0, &qword_1C8BFABE0);
                    if (__swift_getEnumTagSinglePayload(v99 + v97, 1, v100) == 1)
                    {
                      sub_1C8778ED8(v99, &qword_1EC2BADE0, &qword_1C8BFABE0);
                      v101 = v149;
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    v102 = v165;
                    sub_1C89CBE2C();
                    if (__swift_getEnumTagSinglePayload(v80 + v97, 1, v100) != 1)
                    {
                      v103 = v164;
                      sub_1C88E3EC4();
                      v104 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation.== infix(_:_:)(v102, v103);
                      sub_1C88E3C58();
                      sub_1C8778ED8(v175, &qword_1EC2BADE0, &qword_1C8BFABE0);
                      sub_1C88E3C58();
                      sub_1C8778ED8(v80, &qword_1EC2BADE0, &qword_1C8BFABE0);
                      v101 = v149;
                      if ((v104 & 1) == 0)
                      {
                        goto LABEL_35;
                      }

LABEL_65:
                      swift_beginAccess();
                      swift_beginAccess();

                      sub_1C87D964C();
                      v105 = v101;
                      v107 = v106;

                      if (v107)
                      {
                        v108 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
                        swift_beginAccess();
                        v109 = *(v58 + v108);
                        v110 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
                        swift_beginAccess();
                        if (sub_1C87E29E0(v109, *(v105 + v110)))
                        {
                          v111 = v58 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
                          swift_beginAccess();
                          v112 = *v111;
                          v113 = *(v111 + 8);
                          v114 = (v105 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy);
                          swift_beginAccess();
                          if (sub_1C87E4678(v112, v113, *v114))
                          {
                            swift_beginAccess();
                            swift_beginAccess();

                            sub_1C87D9370();
                            v116 = v115;

                            if ((v116 & 1) == 0)
                            {
                              goto LABEL_95;
                            }

                            swift_beginAccess();
                            swift_beginAccess();

                            sub_1C87E2AD0();
                            v118 = v117;

                            if ((v118 & 1) == 0)
                            {
                              goto LABEL_95;
                            }

                            swift_beginAccess();
                            sub_1C89CBE2C();
                            swift_beginAccess();
                            v119 = *(v160 + 48);
                            v120 = v163;
                            sub_1C89CBE2C();
                            sub_1C89CBE2C();
                            if (__swift_getEnumTagSinglePayload(v120, 1, v162) == 1)
                            {
                              sub_1C8778ED8(v161, &qword_1EC2BAE18, &qword_1C8BFABE8);
                              if (__swift_getEnumTagSinglePayload(v163 + v119, 1, v162) == 1)
                              {
                                sub_1C8778ED8(v163, &qword_1EC2BAE18, &qword_1C8BFABE8);
                                goto LABEL_79;
                              }
                            }

                            else
                            {
                              v121 = v163;
                              sub_1C89CBE2C();
                              if (__swift_getEnumTagSinglePayload(v121 + v119, 1, v162) != 1)
                              {
                                v125 = v163;
                                sub_1C88E3EC4();
                                static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.== infix(_:_:)();
                                v127 = v126;
                                sub_1C88E3C58();
                                sub_1C8778ED8(v161, &qword_1EC2BAE18, &qword_1C8BFABE8);
                                sub_1C88E3C58();
                                sub_1C8778ED8(v125, &qword_1EC2BAE18, &qword_1C8BFABE8);
                                if ((v127 & 1) == 0)
                                {
                                  goto LABEL_95;
                                }

LABEL_79:
                                swift_beginAccess();
                                swift_beginAccess();

                                sub_1C87DC550();
                                v129 = v128;

                                if ((v129 & 1) == 0)
                                {
                                  goto LABEL_95;
                                }

                                swift_beginAccess();
                                sub_1C89CBE2C();
                                swift_beginAccess();
                                v130 = *(v155 + 48);
                                v131 = v158;
                                sub_1C89CBE2C();
                                sub_1C89CBE2C();
                                if (__swift_getEnumTagSinglePayload(v131, 1, v157) == 1)
                                {
                                  sub_1C8778ED8(v156, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                  if (__swift_getEnumTagSinglePayload(v158 + v130, 1, v157) == 1)
                                  {
                                    sub_1C8778ED8(v158, &qword_1EC2BAE30, &unk_1C8BFABF0);
LABEL_87:
                                    swift_beginAccess();
                                    sub_1C89CBE2C();
                                    swift_beginAccess();
                                    v136 = *(v155 + 48);
                                    v137 = v147;
                                    sub_1C89CBE2C();
                                    sub_1C89CBE2C();
                                    if (__swift_getEnumTagSinglePayload(v137, 1, v157) == 1)
                                    {
                                      sub_1C8778ED8(v152, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                      if (__swift_getEnumTagSinglePayload(&v147[v136], 1, v157) == 1)
                                      {
                                        sub_1C8778ED8(v147, &qword_1EC2BAE30, &unk_1C8BFABF0);
LABEL_94:
                                        v142 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
                                        v143 = v148;
                                        swift_beginAccess();
                                        v144 = *(v143 + v142);
                                        v145 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
                                        v146 = v149;
                                        swift_beginAccess();
                                        v60 = sub_1C87D9D44(v144, *(v146 + v145));
                                        goto LABEL_36;
                                      }
                                    }

                                    else
                                    {
                                      v138 = v147;
                                      sub_1C89CBE2C();
                                      if (__swift_getEnumTagSinglePayload(v138 + v136, 1, v157) != 1)
                                      {
                                        v139 = v147;
                                        sub_1C88E3EC4();
                                        static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.== infix(_:_:)();
                                        v141 = v140;
                                        sub_1C88E3C58();
                                        sub_1C8778ED8(v152, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                        sub_1C88E3C58();
                                        sub_1C8778ED8(v139, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                        if (v141)
                                        {
                                          goto LABEL_94;
                                        }

LABEL_95:
                                        v60 = 0;
                                        goto LABEL_36;
                                      }

                                      sub_1C8778ED8(v152, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                      sub_1C88E3C58();
                                    }

                                    v122 = &qword_1EC2BD650;
                                    v123 = &qword_1C8C0A4F8;
                                    v124 = v147;
LABEL_77:
                                    sub_1C8778ED8(v124, v122, v123);
                                    goto LABEL_95;
                                  }
                                }

                                else
                                {
                                  v132 = v158;
                                  sub_1C89CBE2C();
                                  if (__swift_getEnumTagSinglePayload(v132 + v130, 1, v157) != 1)
                                  {
                                    v133 = v158;
                                    sub_1C88E3EC4();
                                    static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.== infix(_:_:)();
                                    v135 = v134;
                                    sub_1C88E3C58();
                                    sub_1C8778ED8(v156, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                    sub_1C88E3C58();
                                    sub_1C8778ED8(v133, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                    if ((v135 & 1) == 0)
                                    {
                                      goto LABEL_95;
                                    }

                                    goto LABEL_87;
                                  }

                                  sub_1C8778ED8(v156, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                  sub_1C88E3C58();
                                }

                                v122 = &qword_1EC2BD650;
                                v123 = &qword_1C8C0A4F8;
                                v124 = v158;
                                goto LABEL_77;
                              }

                              sub_1C8778ED8(v161, &qword_1EC2BAE18, &qword_1C8BFABE8);
                              sub_1C88E3C58();
                            }

                            v122 = &qword_1EC2BD658;
                            v123 = &qword_1C8C0A500;
                            v124 = v163;
                            goto LABEL_77;
                          }

                          goto LABEL_22;
                        }

LABEL_35:
                        v60 = 0;
                        goto LABEL_36;
                      }

LABEL_73:
                      v60 = 0;
                      goto LABEL_36;
                    }

                    sub_1C8778ED8(v175, &qword_1EC2BADE0, &qword_1C8BFABE0);
                    sub_1C88E3C58();
                  }

                  v63 = &qword_1EC2BD660;
                  v64 = &qword_1C8C0A508;
                  goto LABEL_45;
                }
              }

              else
              {
                sub_1C89CBE2C();
                if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v81) != 1)
                {
                  sub_1C88E3EC4();
                  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.== infix(_:_:)();
                  v83 = v82;
                  sub_1C88E3C58();
                  sub_1C8778ED8(v59, &qword_1EC2BADB8, &qword_1C8BFABD8);
                  sub_1C88E3C58();
                  sub_1C8778ED8(v79, &qword_1EC2BADB8, &qword_1C8BFABD8);
                  if ((v83 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_47;
                }

                sub_1C8778ED8(v59, &qword_1EC2BADB8, &qword_1C8BFABD8);
                sub_1C88E3C58();
              }

              v63 = &qword_1EC2BD668;
              v64 = &qword_1C8C0A510;
LABEL_45:
              v65 = v80;
              goto LABEL_21;
            }

            sub_1C88E3C58();
            sub_1C8778ED8(v44, &qword_1EC2B60D8, &qword_1C8BE6D88);
            sub_1C88E3C58();
            v65 = v39;
            v63 = &qword_1EC2B60D8;
            v64 = &qword_1C8BE6D88;
LABEL_21:
            sub_1C8778ED8(v65, v63, v64);
LABEL_22:
            v60 = 0;
            goto LABEL_36;
          }

          sub_1C8778ED8(v44, &qword_1EC2B60D8, &qword_1C8BE6D88);
          sub_1C88E3C58();
        }

        v63 = &qword_1EC2B60E0;
        v64 = &qword_1C8BE6D90;
        v65 = v39;
        goto LABEL_21;
      }
    }
  }

  v60 = 0;
  return v60 & 1;
}

uint64_t sub_1C89B2804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B2884(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B28F4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B2974()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4B0);
  __swift_project_value_buffer(v0, qword_1EC2BA4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolType_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolType_APP_INTENT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ToolType_SIRI_INTENT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ToolType_ACTION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B2BF0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4C8);
  __swift_project_value_buffer(v0, qword_1EC2BA4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Flag_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Flag_OPENS_APP_WHEN_RUN";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Flag_IS_DISCONTINUED";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Flag_IS_UNDISCOVERABLE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "Flag_DOES_NOT_IMPLEMENT_PERFORM";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "Flag_SHOWS_OPEN_WHEN_RUN";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "Flag_OUTPUT_HAS_SNIPPET";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "Flag_OUTPUT_PROVIDES_DIALOG";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B2F70()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4E0);
  __swift_project_value_buffer(v0, qword_1EC2BA4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VisibilityFlag_VISIBLE_FOR_SHORTCUTS";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlag_VISIBLE_FOR_ASSISTANT";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B3174()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4F8);
  __swift_project_value_buffer(v0, qword_1EC2BA4F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicy_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AuthenticationPolicy_NONE";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN";
  *(v12 + 1) = 54;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN_AND_REMOTE";
  *(v14 + 1) = 65;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B33F0()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74656D617261502ELL, 0xEA00000000007265);

  qword_1EC2BA510 = v1;
  *algn_1EC2BA518 = v2;
  return result;
}

uint64_t sub_1C89B34B8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA520);
  __swift_project_value_buffer(v0, qword_1EC2BA520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "valueType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "relationships";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sampleInvocations";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "flags";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C89BE258();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C89B3964(v3, v4, v5, v6);
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C89B3A18();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89B3A6C();
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C89B3AC0(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89B3964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  return sub_1C8BD4C7C();
}

void sub_1C89B3A18()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_129();
  v3(v2);
  v4 = OUTLINED_FUNCTION_254_0();
  v6 = sub_1C8776818(v4, v5, v0);
  OUTLINED_FUNCTION_163_1(v1 + 32, v7, v6);
  OUTLINED_FUNCTION_190();
}

void sub_1C89B3A6C()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_129();
  v3(v2);
  v4 = OUTLINED_FUNCTION_254_0();
  v6 = sub_1C8776818(v4, v5, v0);
  OUTLINED_FUNCTION_163_1(v1 + 40, v7, v6);
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_692();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_165_0();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_88_0();
  if (!v9 || (v1 = v0, sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v10 || (v1 = v0, sub_1C8BD4DDC(), !v0))
    {
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
      OUTLINED_FUNCTION_513();
      if (!v11 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v1))
      {
        sub_1C89CBE2C();
        v12 = OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_76(v12, v13, v7);
        if (v14)
        {
          sub_1C8778ED8(v3, &qword_1EC2B60D8, &qword_1C8BE6D88);
        }

        else
        {
          OUTLINED_FUNCTION_2_20();
          OUTLINED_FUNCTION_233();
          sub_1C88E3EC4();
          OUTLINED_FUNCTION_337_0();
          sub_1C8776818(v15, v16, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
          OUTLINED_FUNCTION_118_0();
          OUTLINED_FUNCTION_781();
          sub_1C8BD4E2C();
          OUTLINED_FUNCTION_11_15();
          sub_1C88E3C58();
          if (v1)
          {
            goto LABEL_18;
          }
        }

        if (!*(v2[4] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(0), sub_1C8776818(&qword_1EC2BB3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v1))
        {
          if (!*(v2[5] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), OUTLINED_FUNCTION_345_0(), sub_1C8776818(v17, v18, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v1))
          {
            if (!*(v2[6] + 16) || (sub_1C89CC754(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D1C(), !v1))
            {
              OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v4);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_761();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v12 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v12 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v13 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0) + 40);
  v14 = *(v0 + v13 + 8);
  if (*(v1 + v13 + 8))
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_35(v1 + v13);
    v17 = v11 && v15 == v16;
    if (!v17 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v14)
  {
    goto LABEL_37;
  }

  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_109_2();
  if (!v11)
  {
    OUTLINED_FUNCTION_268();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v2 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_1122();
      OUTLINED_FUNCTION_916();
      if (v22 || (, , OUTLINED_FUNCTION_216(), sub_1C896B338(), OUTLINED_FUNCTION_1164(), , (&qword_1C8BE6D88 & 1) != 0))
      {
        v23 = sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v24, v25, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
        OUTLINED_FUNCTION_351_0();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_229();
        sub_1C88E3C58();
        sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
        if (v23)
        {
          goto LABEL_33;
        }

LABEL_37:
        v31 = 0;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_104_3();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
      v20 = &qword_1EC2B60D8;
      v21 = &qword_1C8BE6D88;
LABEL_29:
      sub_1C8778ED8(v2, v20, v21);
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
LABEL_28:
    v20 = &qword_1EC2B60E0;
    v21 = &qword_1C8BE6D90;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_19(v2 + v18);
  if (!v11)
  {
    goto LABEL_28;
  }

  sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_33:
  sub_1C87DBE28();
  if ((v26 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C87D9370();
  if ((v27 & 1) == 0 || (sub_1C87DC4C8(v1[6], v0[6]) & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v30 = sub_1C8776818(v28, v29, MEMORY[0x1E69AAC10]);
  v31 = OUTLINED_FUNCTION_746(v30);
LABEL_38:
  OUTLINED_FUNCTION_157(v31);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89B4214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD280, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B4294(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B4304(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B4384()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA538);
  __swift_project_value_buffer(v0, qword_1EC2BA538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlags_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ParameterFlags_HIDDEN";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ParameterFlags_SYNTHESIZED";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B45C4()
{
  if (qword_1EC2B5960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA510;
  v2 = *algn_1EC2BA518;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_1EC2BA550 = v1;
  *algn_1EC2BA558 = v2;
  return result;
}

uint64_t sub_1C89B4694()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA560);
  __swift_project_value_buffer(v0, qword_1EC2BA560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B48C4()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v5 = OUTLINED_FUNCTION_578();
      v0(v5);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_627();
      v2();
    }
  }

  return result;
}

uint64_t sub_1C89B493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_1C8776818(&qword_1EC2BB338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6078, &qword_1C8BE6D28);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_88_0();
  if (!v6 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v0))
  {
    v7 = OUTLINED_FUNCTION_1142();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(v7);
    OUTLINED_FUNCTION_994();
    OUTLINED_FUNCTION_915(v8);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v9)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6078, &qword_1C8BE6D28);
LABEL_7:
      OUTLINED_FUNCTION_688();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_223_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_827();
    sub_1C8776818(v10, v11, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_490();
    sub_1C88E3C58();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(v2);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6078, &qword_1C8BE6D28);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6080, &unk_1C8BE6D30);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_761();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(0);
  OUTLINED_FUNCTION_724(v10);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_43_1(v0 + v1);
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6078, &qword_1C8BE6D28);
LABEL_17:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      v17 = sub_1C8776818(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_64_0(v17);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v0 + v1);
  if (v11)
  {
    OUTLINED_FUNCTION_490();
    sub_1C88E3C58();
LABEL_14:
    sub_1C8778ED8(v0, &qword_1EC2B6080, &unk_1C8BE6D30);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_1107();
  v13 = OUTLINED_FUNCTION_168_0();
  v14 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(v13);
  sub_1C88E3C58();
  OUTLINED_FUNCTION_239();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6078, &qword_1C8BE6D28);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_15:
  v12 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v12);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89B4E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD278, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B4E8C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B4EFC(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B4F7C()
{
  if (qword_1EC2B5978 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA550;
  v2 = *algn_1EC2BA558;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_1EC2BA578 = v1;
  unk_1EC2BA580 = v2;
  return result;
}

uint64_t sub_1C89B5044()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA588);
  __swift_project_value_buffer(v0, qword_1EC2BA588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C8BE8D40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isNone";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "equals";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "notEquals";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lessThan";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contains";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "doesNotContain";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_36_6();
        sub_1C89BF374();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C89B54C4(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C89B5980(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89B5E3C(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C89B62F8(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_33_4();
        sub_1C89B67B4(v23, v24, v25, v26);
        break;
      case 8:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C89B6C70(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89B54C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD620, &qword_1C8C0A4C8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD620, &qword_1C8C0A4C8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD620, &qword_1C8C0A4C8);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD620, &qword_1C8C0A4C8);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89B5980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD628, &qword_1C8C0A4D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD628, &qword_1C8C0A4D0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD628, &qword_1C8C0A4D0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD628, &qword_1C8C0A4D0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89B5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD630, &qword_1C8C0A4D8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD630, &qword_1C8C0A4D8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD630, &qword_1C8C0A4D8);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD630, &qword_1C8C0A4D8);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89B62F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD638, &qword_1C8C0A4E0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD638, &qword_1C8C0A4E0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD638, &qword_1C8C0A4E0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD638, &qword_1C8C0A4E0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89B67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD640, &qword_1C8C0A4E8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD640, &qword_1C8C0A4E8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD640, &qword_1C8C0A4E8);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD640, &qword_1C8C0A4E8);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89B6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  DoesNotContain = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v7 = MEMORY[0x1EEE9AC00](DoesNotContain);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD648, &qword_1C8C0A4F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, DoesNotContain);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD648, &qword_1C8C0A4F0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, DoesNotContain);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD648, &qword_1C8C0A4F0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, DoesNotContain) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD648, &qword_1C8C0A4F0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v5 = OUTLINED_FUNCTION_233();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_235_2();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  OUTLINED_FUNCTION_144_2(v9);
  if (v10)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = v3;
      sub_1C89B7434();
      goto LABEL_9;
    case 2u:
      v16 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7570(v16, v17, v18, v19);
      goto LABEL_12;
    case 3u:
      v20 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7784(v20, v21, v22, v23);
      goto LABEL_12;
    case 4u:
      v12 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7998(v12, v13, v14, v15);
      goto LABEL_12;
    case 5u:
      v29 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7BAC(v29, v30, v31, v32);
      goto LABEL_12;
    case 6u:
      v33 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7DC0(v33, v34, v35, v36);
      goto LABEL_12;
    case 7u:
      v24 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7FD4(v24, v25, v26, v27);
LABEL_12:
      v28 = v4;
      OUTLINED_FUNCTION_72_5();
      break;
    default:
      v11 = v3;
      sub_1C89B72FC();
LABEL_9:
      v28 = v11;
      OUTLINED_FUNCTION_104_0();
      break;
  }

  sub_1C88E3C58();
  if (!v28)
  {
LABEL_14:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

void sub_1C89B72FC()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (!swift_getEnumCaseMultiPayload())
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 1, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89B7434()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 2, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

uint64_t sub_1C89B7570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  DoesNotContain = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x1EEE9AC00](DoesNotContain);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B8468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B84E8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B8558(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B85D8()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x736C617571452ELL, 0xE700000000000000);

  qword_1EC2BA5A0 = v1;
  *algn_1EC2BA5A8 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B87F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD268, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B8870(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B88E0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B8960()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_1EC2BA5C8 = v1;
  unk_1EC2BA5D0 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B8B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD260, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B8BFC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B8C6C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B8CEC()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x726574616572472ELL, 0xEC0000006E616854);

  qword_1EC2BA5F0 = v1;
  *algn_1EC2BA5F8 = v2;
  return result;
}

uint64_t sub_1C89B8DB8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA600);
  __swift_project_value_buffer(v0, qword_1EC2BA600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B906C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B90EC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B915C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B91DC()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_1EC2BA618 = v1;
  unk_1EC2BA620 = v2;
  return result;
}

uint64_t sub_1C89B92A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA628);
  __swift_project_value_buffer(v0, qword_1EC2BA628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void sub_1C89B94A4()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4B3C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89C9A50();
    }
  }
}

void sub_1C89B9588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1065();
  v7 = v6;
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v8 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v9, v10, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v4))
  {
    if (*(v5 + 8) != 1 || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4D3C(), !v4))
    {
      v7(0);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89B96BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD250, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B973C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B97AC(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B982C()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_1EC2BA640 = v1;
  *algn_1EC2BA648 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B9A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD248, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B9AC8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B9B38(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B9BB8()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_1EC2BA668 = v1;
  unk_1EC2BA670 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B9E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B9EB8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B9F28(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B9FA8()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x726F67657461432ELL, 0xE900000000000079);

  qword_1EC2BA690 = v1;
  *algn_1EC2BA698 = v2;
  return result;
}

uint64_t sub_1C89BA070()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA6A0);
  __swift_project_value_buffer(v0, qword_1EC2BA6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subcategoryName";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BA368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD238, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BA3E8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BA458(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BA4D8()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_1EC2BA6B8 = v1;
  unk_1EC2BA6C0 = v2;
  return result;
}

uint64_t sub_1C89BA5A0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA6C8);
  __swift_project_value_buffer(v0, qword_1EC2BA6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_33_4();
      sub_1C89BA830(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_36_6();
      sub_1C8955054();
    }
  }
}

uint64_t sub_1C89BA830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE58, &qword_1C8BFAC10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD618, &qword_1C8C0A4C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAE58, &qword_1C8BFAC10);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD618, &qword_1C8C0A4C0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD618, &qword_1C8C0A4C0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD618, &qword_1C8C0A4C0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAE58, &qword_1C8BFAC10);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = OUTLINED_FUNCTION_9_4();
      sub_1C89BAF24(v11, v12, v13, v14);
      OUTLINED_FUNCTION_141_2();
      sub_1C88E3C58();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_141_2();
      sub_1C88E3C58();
      v15 = OUTLINED_FUNCTION_9_4();
      sub_1C89BADD0(v15, v16, v17, v18);
      if (v3)
      {
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  OUTLINED_FUNCTION_113_1();
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89BADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE58, &qword_1C8BFAC10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAE58, &qword_1C8BFAC10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89BAF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE58, &qword_1C8BFAC10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAE58, &qword_1C8BFAC10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB458, &qword_1C8BFAD50);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAE58, &qword_1C8BFAC10);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_141_2();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB458, &qword_1C8BFAD50);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE58, &qword_1C8BFAC10);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BB3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD230, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BB438(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BB4A8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BB528()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA6E0);
  __swift_project_value_buffer(v0, qword_1EC2BA6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyle_MULTICOLOR";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyle_TINTED";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BB72C()
{
  if (qword_1EC2B5A08 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA6B8;
  v2 = unk_1EC2BA6C0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_1EC2BA6F8 = v1;
  unk_1EC2BA700 = v2;
  return result;
}

uint64_t sub_1C89BB7FC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA708);
  __swift_project_value_buffer(v0, qword_1EC2BA708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "style";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foreground";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "background";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C89BBB10(v7, v8, v9, v10);
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C89BBB78(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_940(), sub_1C89CC7A8(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v0))
    {
      OUTLINED_FUNCTION_88_0();
      if (!v4 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
      {
        type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
        OUTLINED_FUNCTION_513();
        if (!v5)
        {
          return OUTLINED_FUNCTION_69();
        }

        OUTLINED_FUNCTION_210_1();
        result = sub_1C8BD4DDC();
        if (!v0)
        {
          return OUTLINED_FUNCTION_69();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C89BBD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD228, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BBDD4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BBE44(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BBEC4()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_1EC2BA720 = v1;
  *algn_1EC2BA728 = v2;
  return result;
}

uint64_t sub_1C89BBF90()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA730);
  __swift_project_value_buffer(v0, qword_1EC2BA730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BC1BC()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_638();
      sub_1C8971D40();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_55();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

void sub_1C89BC274()
{
  OUTLINED_FUNCTION_178_1();
  v2 = v1;
  OUTLINED_FUNCTION_60_4();
  if (!v3 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    v2(0);
    OUTLINED_FUNCTION_1148();
    OUTLINED_FUNCTION_513();
    if (!v5 || (OUTLINED_FUNCTION_512(v4), OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89BC314(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_85_2(a1);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1C8BD529C() & 1) != 0)
  {
    a3(0);
    OUTLINED_FUNCTION_1();
    if (v9)
    {
      if (v7)
      {
        OUTLINED_FUNCTION_35(v8);
        v12 = v6 && v10 == v11;
        if (v12 || (sub_1C8BD529C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v7)
    {
LABEL_13:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_64_0(v15) & 1;
    }
  }

  return 0;
}

uint64_t sub_1C89BC45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD220, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BC4DC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BC54C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BC5FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1CCA7E2D0](a2, a3);
  *a4 = 0xD00000000000002BLL;
  *a5 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89BC688()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA758);
  __swift_project_value_buffer(v0, qword_1EC2BA758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundleId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bundleVersion";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "teamId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "device";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "origin";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C89BCA60(v3, v4, v5, v6);
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C89BCB14(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89BCA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
  sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE68, &qword_1C8BFAC20);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_88_0();
  if (!v7 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v8 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      OUTLINED_FUNCTION_88_0();
      if (!v9 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
      {
        OUTLINED_FUNCTION_88_0();
        if (!v10 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
        {
          OUTLINED_FUNCTION_88_0();
          if (!v11 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
          {
            v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
            OUTLINED_FUNCTION_915(*(v12 + 44));
            sub_1C89CBE2C();
            OUTLINED_FUNCTION_377_0();
            if (v13)
            {
              sub_1C8778ED8(v2, &qword_1EC2BAE68, &qword_1C8BFAC20);
            }

            else
            {
              OUTLINED_FUNCTION_92_3();
              OUTLINED_FUNCTION_223_1();
              sub_1C88E3EC4();
              sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);
              OUTLINED_FUNCTION_240();
              OUTLINED_FUNCTION_9_1();
              sub_1C8BD4E2C();
              OUTLINED_FUNCTION_488_0();
              sub_1C88E3C58();
              if (v0)
              {
                goto LABEL_18;
              }
            }

            v14 = *(v1 + 80);
            if (!v14 || (OUTLINED_FUNCTION_946(v14), sub_1C89CC7FC(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D4C(), !v0))
            {
              OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(v3);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE68, &qword_1C8BFAC20);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB490, &qword_1C8BFAD58);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_761();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_646();
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1055();
  v17 = v11 && v15 == v16;
  if (!v17 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  v18 = *(v1 + 48) == v0[6] && *(v1 + 56) == v0[7];
  if (!v18 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  v19 = *(v1 + 64) == v0[8] && *(v1 + 72) == v0[9];
  if (!v19 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  v20 = *(v7 + 48);
  OUTLINED_FUNCTION_607();
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_125_0();
  if (v11)
  {
    OUTLINED_FUNCTION_43_1(v2 + v20);
    if (v11)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAE68, &qword_1C8BFAC20);
      goto LABEL_36;
    }

LABEL_34:
    sub_1C8778ED8(v2, &qword_1EC2BB490, &qword_1C8BFAD58);
LABEL_38:
    v27 = 0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v2 + v20);
  if (v21)
  {
    OUTLINED_FUNCTION_488_0();
    sub_1C88E3C58();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_1107();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.== infix(_:_:)();
  v23 = v22;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAE68, &qword_1C8BFAC20);
  if ((v23 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!sub_1C87E4678(*(v1 + 80), *(v1 + 88), v0[10]))
  {
    goto LABEL_38;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v26 = sub_1C8776818(v24, v25, MEMORY[0x1E69AAC10]);
  v27 = OUTLINED_FUNCTION_64_0(v26);
LABEL_39:
  OUTLINED_FUNCTION_157(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BD134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD218, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BD1B4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BD224(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BD2A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA770);
  __swift_project_value_buffer(v0, qword_1EC2BA770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Origin_THIRD_PARTY";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BD4E0()
{
  if (qword_1EC2B5A40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA748;
  v2 = qword_1EC2BA750;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6563697665442ELL, 0xE700000000000000);

  qword_1EC2BA788 = v1;
  unk_1EC2BA790 = v2;
  return result;
}

uint64_t sub_1C89BD5A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA798);
  __swift_project_value_buffer(v0, qword_1EC2BA798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v5 = OUTLINED_FUNCTION_233();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_235_2();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.OneOf_DeviceKind(0);
  OUTLINED_FUNCTION_144_2(v9);
  if (!v10)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_816();
      OUTLINED_FUNCTION_9_4();
      sub_1C89BF8B4();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_816();
      sub_1C89BF778();
      OUTLINED_FUNCTION_104_0();
      sub_1C88E3C58();
      if (v3)
      {
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
  OUTLINED_FUNCTION_113_1();
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.OneOf_DeviceKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB4A0, &qword_1C8BFAD60);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAE70, &qword_1C8BFAC28);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_321_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB4A0, &qword_1C8BFAD60);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.OneOf_DeviceKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE70, &qword_1C8BFAC28);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BDBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD210, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BDC3C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BDCAC(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BDD2C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000014, 0x80000001C8C23A10);
  qword_1EC2BA7B0 = 0xD00000000000002BLL;
  *algn_1EC2BA7B8 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89BDDC0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA7C0);
  __swift_project_value_buffer(v0, qword_1EC2BA7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "containerId";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "bundleVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "containerType";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "teamId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "device";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "origin";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8962408();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C89BE1F0(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89BE258();
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C89BE2A8(v7, v8, v9, v10);
        break;
      case 8:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C89BE35C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89BE258()
{
  OUTLINED_FUNCTION_9_2();
  v0(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C1C();
}

uint64_t sub_1C89BE2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
  sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE80, &qword_1C8BFAC38);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_88_0();
  if (!v7 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v8 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
      OUTLINED_FUNCTION_513();
      if (!v9 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
      {
        v10 = *(v1 + 32);
        if (!v10 || (OUTLINED_FUNCTION_946(v10), sub_1C89CC850(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D4C(), !v0))
        {
          OUTLINED_FUNCTION_513();
          if (!v11 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
          {
            OUTLINED_FUNCTION_915(*(v14 + 44));
            sub_1C89CBE2C();
            OUTLINED_FUNCTION_377_0();
            if (v12)
            {
              sub_1C8778ED8(v2, &qword_1EC2BAE80, &qword_1C8BFAC38);
            }

            else
            {
              OUTLINED_FUNCTION_91_2();
              OUTLINED_FUNCTION_223_1();
              sub_1C88E3EC4();
              sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);
              OUTLINED_FUNCTION_240();
              OUTLINED_FUNCTION_9_1();
              sub_1C8BD4E2C();
              OUTLINED_FUNCTION_487();
              sub_1C88E3C58();
              if (v0)
              {
                goto LABEL_18;
              }
            }

            v13 = *(v1 + 48);
            if (!v13 || (OUTLINED_FUNCTION_946(v13), sub_1C89CC8A4(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D4C(), !v0))
            {
              OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(v4);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE80, &qword_1C8BFAC38);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB4C8, &qword_1C8BFAD68);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_761();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_646();
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_42;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_1();
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v16);
    v20 = v11 && v18 == v19;
    if (!v20 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v15)
  {
    goto LABEL_42;
  }

  if (!sub_1C87E4678(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_1();
  if (!v23)
  {
    if (!v21)
    {
      goto LABEL_30;
    }

LABEL_42:
    v34 = 0;
    goto LABEL_43;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_35(v22);
  v26 = v11 && v24 == v25;
  if (!v26 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  v27 = *(v3 + 48);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_125_0();
  if (v11)
  {
    OUTLINED_FUNCTION_43_1(v2 + v27);
    if (v11)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAE80, &qword_1C8BFAC38);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v2 + v27);
  if (v28)
  {
    OUTLINED_FUNCTION_487();
    sub_1C88E3C58();
LABEL_38:
    sub_1C8778ED8(v2, &qword_1EC2BB4C8, &qword_1C8BFAD68);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_91_2();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.== infix(_:_:)();
  v30 = v29;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_239();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAE80, &qword_1C8BFAC38);
  if ((v30 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_40:
  if (!sub_1C87E4678(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
  {
    goto LABEL_42;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v33 = sub_1C8776818(v31, v32, MEMORY[0x1E69AAC10]);
  v34 = OUTLINED_FUNCTION_64_0(v33);
LABEL_43:
  OUTLINED_FUNCTION_157(v34);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BE9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD208, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BEA38(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BEAA8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BEB28()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA7D8);
  __swift_project_value_buffer(v0, qword_1EC2BA7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Origin_THIRD_PARTY";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BED64()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA7F0);
  __swift_project_value_buffer(v0, qword_1EC2BA7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_APP";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_DAEMON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_EXTENSION";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_FRAMEWORK";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BEFDC()
{
  if (qword_1EC2B5A68 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA7B0;
  v2 = *algn_1EC2BA7B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6563697665442ELL, 0xE700000000000000);

  qword_1EC2BA808 = v1;
  unk_1EC2BA810 = v2;
  return result;
}

uint64_t sub_1C89BF0A0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA818);
  __swift_project_value_buffer(v0, qword_1EC2BA818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void sub_1C89BF2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_567();
  while (1)
  {
    OUTLINED_FUNCTION_88();
    v5 = sub_1C8BD4AFC();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (v5 == 2)
    {
      OUTLINED_FUNCTION_536();
      OUTLINED_FUNCTION_1031();
      sub_1C8955054();
    }

    else if (v5 == 1)
    {
      OUTLINED_FUNCTION_536();
      OUTLINED_FUNCTION_1031();
      sub_1C89BF374();
    }
  }

  OUTLINED_FUNCTION_1066();
}

void sub_1C89BF374()
{
  OUTLINED_FUNCTION_189();
  v5 = v4;
  OUTLINED_FUNCTION_1052();
  OUTLINED_FUNCTION_1034();
  v6 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_13_1();
  v40 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v39 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD610, &qword_1C8C0A4B8);
  v11 = OUTLINED_FUNCTION_80(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_0();
  v41 = v12;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1057();
  v14 = OUTLINED_FUNCTION_516();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_301_1();
  sub_1C89CBE2C();
  v5(0);
  v18 = OUTLINED_FUNCTION_120();
  v38 = v19;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v18, v20, v19);
  OUTLINED_FUNCTION_627();
  sub_1C8778ED8(v21, v22, v23);
  if (v5 == 1 || (v1 = v0, sub_1C8BD4B0C(), !v0))
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v6);
    OUTLINED_FUNCTION_6_16();
    sub_1C8776818(v27, v28, MEMORY[0x1E69AA8E0]);
    OUTLINED_FUNCTION_223_1();
    OUTLINED_FUNCTION_195();
    sub_1C8BD4B4C();
    if (v1)
    {
      v29 = v3;
LABEL_8:
      sub_1C8778ED8(v29, &qword_1EC2BD610, &qword_1C8C0A4B8);
      goto LABEL_9;
    }

    sub_1C89DF3F4();
    OUTLINED_FUNCTION_72_2(v41);
    if (v30)
    {
      v29 = v41;
      goto LABEL_8;
    }

    v31 = *(v40 + 32);
    OUTLINED_FUNCTION_787();
    v31();
    OUTLINED_FUNCTION_627();
    sub_1C8778ED8(v32, v33, v34);
    (v31)(v2, v39, v6);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }

LABEL_9:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v5 = OUTLINED_FUNCTION_233();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_235_2();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.OneOf_DeviceKind(0);
  OUTLINED_FUNCTION_144_2(v9);
  if (!v10)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_815();
      OUTLINED_FUNCTION_9_4();
      sub_1C89BF8B4();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_815();
      sub_1C89BF778();
      OUTLINED_FUNCTION_104_0();
      sub_1C88E3C58();
      if (v3)
      {
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
  OUTLINED_FUNCTION_113_1();
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

void sub_1C89BF778()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_217_1();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v12 = v0(0);
  OUTLINED_FUNCTION_108_1(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v14 = OUTLINED_FUNCTION_123_2();
      v15(v14);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v16, v17, MEMORY[0x1E69AA8E0]);
      v18 = OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709(v18, 1, v19, v20);
      v21 = OUTLINED_FUNCTION_253_2();
      v22(v21);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89BF8B4()
{
  OUTLINED_FUNCTION_189();
  v1 = v0;
  v3 = v2;
  v9 = OUTLINED_FUNCTION_728(v4, v5, v6, v7, v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_525();
  sub_1C89CBE2C();
  v13 = v1(0);
  v14 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v14, v15, v13);
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_88();
    sub_1C8778ED8(v17, v18, v3);
  }

  else
  {
    OUTLINED_FUNCTION_890();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8BD4DDC();

      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    sub_1C88E3C58();
  }

  __break(1u);
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.OneOf_DeviceKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB4D8, &qword_1C8BFAD70);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAE88, &qword_1C8BFAC40);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_320_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB4D8, &qword_1C8BFAD70);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.OneOf_DeviceKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE88, &qword_1C8BFAC40);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BFC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD200, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BFCC4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BFD34(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BFDB4()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001ALL, 0x80000001C8C23920);
  qword_1EC2BA830 = 0xD00000000000002BLL;
  *algn_1EC2BA838 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89BFE48()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA840);
  __swift_project_value_buffer(v0, qword_1EC2BA840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "synonyms";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89C0130();
        break;
      case 1:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C89C0130()
{
  OUTLINED_FUNCTION_534_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_885(v2);
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  return v0();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
    OUTLINED_FUNCTION_513();
    if (!v4 || (OUTLINED_FUNCTION_512(v3), OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4DAC(), !v0))
      {
        OUTLINED_FUNCTION_69();
      }
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_85_2(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_1();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v7);
    v11 = v5 && v9 == v10;
    if (!v11 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_1C87D2814(*(v2 + 16), *(v1 + 16)))
  {
    OUTLINED_FUNCTION_1013();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_1_14();
    v14 = sub_1C8776818(v12, v13, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_64_0(v14) & 1;
  }

  return 0;
}

uint64_t sub_1C89C0374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C03F4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C0464(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C04E4()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C23900);
  qword_1EC2BA858 = 0xD00000000000002BLL;
  unk_1EC2BA860 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89C0578()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA868);
  __swift_project_value_buffer(v0, qword_1EC2BA868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C0778()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_55();
      sub_1C8BD4C2C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_55();
      v0();
    }
  }

  return result;
}

void sub_1C89C081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1065();
  v6 = v5;
  OUTLINED_FUNCTION_50_2();
  v7 = OUTLINED_FUNCTION_954();
  if (sub_1C88E36B8(v7, v8) || (OUTLINED_FUNCTION_954(), OUTLINED_FUNCTION_210_1(), sub_1C8BD4D6C(), !v4))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v9 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v4))
    {
      v6(0);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C08D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_231_2(a1);
  if ((MEMORY[0x1CCA7D0F0](v4) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_646();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_1105();
  OUTLINED_FUNCTION_1_14();
  v10 = sub_1C8776818(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v10) & 1;
}

uint64_t sub_1C89C09D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C0A54(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C0AC4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C0B44()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C238C0);
  qword_1EC2BA880 = 0xD00000000000002BLL;
  *algn_1EC2BA888 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89C0BD8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA890);
  __swift_project_value_buffer(v0, qword_1EC2BA890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "altText";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "synonyms";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "snippetPluginModel";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C89C0F94(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C89C1048(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C89C10FC(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C89C11B0(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89C0F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89C1048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
  sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89C10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
  sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89C11B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB0, &qword_1C8BFAC68);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81_3(v7, v29);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_7(v9, v30);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA8, &qword_1C8BFAC60);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = OUTLINED_FUNCTION_294_0(v12, v31);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v13);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_115_3(v15, v32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA0, &qword_1C8BFAC58);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_165_0();
  v35 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE98, &qword_1C8BFAC50);
  OUTLINED_FUNCTION_80(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_103();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_211_3();
  OUTLINED_FUNCTION_88_0();
  if (!v23 || (sub_1C8BD4DDC(), !v1))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
    sub_1C89CBE2C();
    v24 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v24, v25, v2);
    if (v26)
    {
      sub_1C8778ED8(v3, &qword_1EC2BAE98, &qword_1C8BFAC50);
    }

    else
    {
      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_1084();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_781();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_485_0();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    sub_1C89CBE2C();
    v27 = OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_76(v27, v28, v35);
    if (v26)
    {
      sub_1C8778ED8(v4, &qword_1EC2BAEA0, &qword_1C8BFAC58);
    }

    else
    {
      OUTLINED_FUNCTION_89_2();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_379();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_484();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v34);
    if (v26)
    {
      sub_1C8778ED8(v34, &qword_1EC2BAEA8, &qword_1C8BFAC60);
    }

    else
    {
      OUTLINED_FUNCTION_88_1();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);
      OUTLINED_FUNCTION_1037();
      OUTLINED_FUNCTION_1077();
      OUTLINED_FUNCTION_379();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_482();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    if (!*(*(v0 + 16) + 16) || (OUTLINED_FUNCTION_781(), sub_1C8BD4DAC(), !v1))
    {
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_72_2(v33);
      if (v26)
      {
        sub_1C8778ED8(v33, &qword_1EC2BAEB0, &qword_1C8BFAC68);
LABEL_21:
        OUTLINED_FUNCTION_119();
        sub_1C8BD49DC();
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_87_3();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);
      OUTLINED_FUNCTION_298_0();
      OUTLINED_FUNCTION_379();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_481_0();
      sub_1C88E3C58();
      if (!v1)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_1034();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB0, &qword_1C8BFAC68);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB518, &qword_1C8BFAD78);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_165_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA8, &qword_1C8BFAC60);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_207_0(v16);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB520, &qword_1C8BFAD80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_405_0(v18);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_7(v21, v67);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA0, &qword_1C8BFAC58);
  OUTLINED_FUNCTION_80(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_81();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB528, &qword_1C8BFAD88);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_217_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(v25);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_33();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE98, &qword_1C8BFAC50);
  OUTLINED_FUNCTION_80(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_552();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB530, &qword_1C8BFAD90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_112_0();
  v31 = *v1 == *v6 && v1[1] == v6[1];
  if (!v31 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v68 = v4;
  v69 = v3;
  v32 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v33 = *(v29 + 48);
  v71 = v32;
  sub_1C89CBE2C();
  v34 = v6;
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72(v0);
  if (v31)
  {
    OUTLINED_FUNCTION_72(v0 + v33);
    if (v31)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAE98, &qword_1C8BFAC50);
      goto LABEL_16;
    }

LABEL_14:
    v36 = &qword_1EC2BB530;
    v37 = &qword_1C8BFAD90;
    v38 = v0;
LABEL_36:
    sub_1C8778ED8(v38, v36, v37);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_12();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72(v0 + v33);
  if (v35)
  {
    OUTLINED_FUNCTION_485_0();
    sub_1C88E3C58();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_90_3();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_156_1();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.== infix(_:_:)();
  v40 = v39;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_271();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE98, &qword_1C8BFAC50);
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v41 = *(v74 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v42 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v42, v43);
  if (v31)
  {
    OUTLINED_FUNCTION_24(v2 + v41);
    if (v31)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAEA0, &qword_1C8BFAC58);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1150();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v2 + v41);
  if (v44)
  {
    OUTLINED_FUNCTION_484();
    sub_1C88E3C58();
LABEL_24:
    v36 = &qword_1EC2BB528;
    v37 = &qword_1C8BFAD88;
    v38 = v2;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_89_2();
  OUTLINED_FUNCTION_1051();
  OUTLINED_FUNCTION_184();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.== infix(_:_:)();
  v46 = v45;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAEA0, &qword_1C8BFAC58);
  if ((v46 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v47 = *(v72 + 48);
  v48 = v73;
  OUTLINED_FUNCTION_786();
  OUTLINED_FUNCTION_778();
  v49 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v49, v50);
  if (v31)
  {
    OUTLINED_FUNCTION_24(v73 + v47);
    if (v31)
    {
      sub_1C8778ED8(v73, &qword_1EC2BAEA8, &qword_1C8BFAC60);
      goto LABEL_40;
    }

LABEL_34:
    v36 = &qword_1EC2BB520;
    v37 = &qword_1C8BFAD80;
LABEL_35:
    v38 = v48;
    goto LABEL_36;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v73 + v47);
  if (v51)
  {
    OUTLINED_FUNCTION_482();
    sub_1C88E3C58();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_88_1();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_184();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.== infix(_:_:)();
  v54 = v53;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v73, &qword_1EC2BAEA8, &qword_1C8BFAC60);
  if ((v54 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  if ((sub_1C87D2814(v1[2], v34[2]) & 1) == 0)
  {
    goto LABEL_37;
  }

  v55 = *(v71 + 40);
  v56 = *(v70 + 48);
  v48 = v69;
  OUTLINED_FUNCTION_786();
  OUTLINED_FUNCTION_778();
  v57 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v57, v58);
  if (v31)
  {
    OUTLINED_FUNCTION_24(v69 + v56);
    if (v31)
    {
      sub_1C8778ED8(v69, &qword_1EC2BAEB0, &qword_1C8BFAC68);
LABEL_46:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v59, v60, MEMORY[0x1E69AAC10]);
      v52 = sub_1C8BD517C();
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_1074();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v69 + v56);
  if (v61)
  {
    OUTLINED_FUNCTION_481_0();
    sub_1C88E3C58();
LABEL_50:
    v36 = &qword_1EC2BB518;
    v37 = &qword_1C8BFAD78;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_87_3();
  sub_1C88E3EC4();
  if ((MEMORY[0x1CCA7D0F0](*v55, v55[1], *v68, v68[1]) & 1) == 0 || (v55[2] == v68[2] ? (v62 = v55[3] == v68[3]) : (v62 = 0), !v62 && (sub_1C8BD529C() & 1) == 0))
  {
    sub_1C88E3C58();
    OUTLINED_FUNCTION_121();
    sub_1C88E3C58();
    v36 = &qword_1EC2BAEB0;
    v37 = &qword_1C8BFAC68;
    v38 = v69;
    goto LABEL_36;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v65 = sub_1C8776818(v63, v64, MEMORY[0x1E69AAC10]);
  v66 = OUTLINED_FUNCTION_100_1(v65);
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v69, &qword_1EC2BAEB0, &qword_1C8BFAC68);
  if (v66)
  {
    goto LABEL_46;
  }

LABEL_37:
  v52 = 0;
LABEL_38:
  OUTLINED_FUNCTION_157(v52);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C215C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C21DC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C224C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C22CC()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x656761726F74532ELL, 0xE800000000000000);

  qword_1EC2BA8A8 = v1;
  unk_1EC2BA8B0 = v2;
  return result;
}

void sub_1C89C243C()
{
  OUTLINED_FUNCTION_178_1();
  v2 = *v0;
  v3 = v0[1];
  v5 = v4;
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = v2;
      v7 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
LABEL_6:
      if (v6 != v7)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_210_1();
      sub_1C8BD4D6C();
      if (!v1)
      {
LABEL_8:
        v5(0);
        OUTLINED_FUNCTION_69();
      }

      OUTLINED_FUNCTION_177_0();
      return;
  }
}

uint64_t sub_1C89C256C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C25EC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C265C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C26DC()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6C7469746275532ELL, 0xE900000000000065);

  qword_1EC2BA8D0 = v1;
  *algn_1EC2BA8D8 = v2;
  return result;
}

uint64_t sub_1C89C27A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA8E0);
  __swift_project_value_buffer(v0, qword_1EC2BA8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E8, &qword_1C8C0A498);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD5E8, &qword_1C8C0A498);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89C2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD600, &qword_1C8C0A4B0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD600, &qword_1C8C0A4B0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD600, &qword_1C8C0A4B0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD600, &qword_1C8C0A4B0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_9_4();
    sub_1C89C363C(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_4();
    sub_1C89C3428(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_359();
  sub_1C88E3C58();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB548, &qword_1C8BFAD98);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAEB8, &qword_1C8BFAC70);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_359();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB548, &qword_1C8BFAD98);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C3AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C3B50(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C3BC0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C3C40()
{
  if (qword_1EC2B5AD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA8D0;
  v2 = *algn_1EC2BA8D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC2BA8F8 = v1;
  unk_1EC2BA900 = v2;
  return result;
}

uint64_t sub_1C89C3DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C3E70(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C3EE0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C3F60()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74786554746C412ELL, 0xE800000000000000);

  qword_1EC2BA920 = v1;
  *algn_1EC2BA928 = v2;
  return result;
}

uint64_t sub_1C89C4024()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA930);
  __swift_project_value_buffer(v0, qword_1EC2BA930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C4264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E8, &qword_1C8C0A498);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD5E8, &qword_1C8C0A498);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89C4720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5F8, &qword_1C8C0A4A8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD5F8, &qword_1C8C0A4A8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD5F8, &qword_1C8C0A4A8);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD5F8, &qword_1C8C0A4A8);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_9_4();
    sub_1C89C4EBC(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_4();
    sub_1C89C4CA8(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_357_0();
  sub_1C88E3C58();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C4EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB560, &qword_1C8BFADA0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAEC8, &qword_1C8BFAC80);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_357_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB560, &qword_1C8BFADA0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C5350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C53D0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C5440(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C54C0()
{
  if (qword_1EC2B5AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA920;
  v2 = *algn_1EC2BA928;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC2BA948 = v1;
  unk_1EC2BA950 = v2;
  return result;
}

void sub_1C89C55A0()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_118();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C8BE6F30;
  v14 = v13 + v12 + v11[14];
  *(v13 + v12) = v5;
  *v14 = v3;
  *(v14 + 8) = v1;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_121_0();
  (*(v16 + 104))(v14, v15);
  sub_1C8BD510C();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C89C5734()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_55();
      v0();
    }
  }

  return result;
}

uint64_t sub_1C89C5828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C58A8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C5918(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C5998()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6567616D492ELL, 0xE600000000000000);

  qword_1EC2BA970 = v1;
  *algn_1EC2BA978 = v2;
  return result;
}

uint64_t sub_1C89C5A58()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA980);
  __swift_project_value_buffer(v0, qword_1EC2BA980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C5C98()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_300();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_300();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_1C89C5D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E8, &qword_1C8C0A498);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD5E8, &qword_1C8C0A498);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAED8, &qword_1C8BFAC90);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89C61D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5F0, &qword_1C8C0A4A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD5F0, &qword_1C8C0A4A0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD5F0, &qword_1C8C0A4A0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD5F0, &qword_1C8C0A4A0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAED8, &qword_1C8BFAC90);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_9_4();
    sub_1C89C6974(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_4();
    sub_1C89C6760(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_251_2();
  sub_1C88E3C58();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C6760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB578, &qword_1C8BFADA8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_251_2();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB578, &qword_1C8BFADA8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C6E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C6E88(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C6EF8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C6F78()
{
  if (qword_1EC2B5B18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA970;
  v2 = *algn_1EC2BA978;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC2BA998 = v1;
  unk_1EC2BA9A0 = v2;
  return result;
}

uint64_t sub_1C89C703C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA9A8);
  __swift_project_value_buffer(v0, qword_1EC2BA9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "file";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955054();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89C7338(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955198();
        break;
    }
  }
}

uint64_t sub_1C89C7338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E0, &qword_1C8C0A490);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD5E0, &qword_1C8C0A490);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E0, &qword_1C8C0A490);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD5E0, &qword_1C8C0A490);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = OUTLINED_FUNCTION_9_4();
        sub_1C89C7A4C(v11, v12, v13, v14);
        OUTLINED_FUNCTION_105_2();
        sub_1C88E3C58();
        if (v3)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      }

      OUTLINED_FUNCTION_105_2();
      sub_1C88E3C58();
      v16 = OUTLINED_FUNCTION_9_4();
      sub_1C89C7C60(v16, v17, v18, v19);
    }

    else
    {
      OUTLINED_FUNCTION_105_2();
      sub_1C88E3C58();
      v15 = OUTLINED_FUNCTION_9_4();
      sub_1C89C78F4(v15);
    }

    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(0);
  OUTLINED_FUNCTION_113_1();
LABEL_11:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C78F4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1C8BD4D6C();
      return sub_1C87A997C(v6, v5);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C7A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C7C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C7E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C7EBC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C7F2C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C7FAC()
{
  if (qword_1EC2B5B28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA998;
  v2 = unk_1EC2BA9A0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_1EC2BA9C0 = v1;
  *algn_1EC2BA9C8 = v2;
  return result;
}

uint64_t sub_1C89C8070()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA9D0);
  __swift_project_value_buffer(v0, qword_1EC2BA9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "configurationData";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C89C0130();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8971D40();
        break;
      case 1:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
    }
  }

  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_60_4();
  if (!v1 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
    OUTLINED_FUNCTION_1148();
    OUTLINED_FUNCTION_1133();
    if (!v3 & v2 || (v4 = OUTLINED_FUNCTION_455(), sub_1C87A8FBC(v4, v5), OUTLINED_FUNCTION_455(), OUTLINED_FUNCTION_210_1(), sub_1C8BD4D6C(), v6 = OUTLINED_FUNCTION_455(), sub_1C87A9A24(v6, v7), !v0))
    {
      OUTLINED_FUNCTION_1133();
      if (!v3 & v2 || (v8 = OUTLINED_FUNCTION_455(), sub_1C87A8FBC(v8, v9), OUTLINED_FUNCTION_455(), OUTLINED_FUNCTION_210_1(), sub_1C8BD4D6C(), v10 = OUTLINED_FUNCTION_455(), sub_1C87A9A24(v10, v11), !v0))
      {
        OUTLINED_FUNCTION_69();
      }
    }
  }

  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89C84D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C8554(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C85C4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C8644()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C23810);
  qword_1EC2BA9E8 = 0xD00000000000002BLL;
  unk_1EC2BA9F0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89C86D8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA9F8);
  __swift_project_value_buffer(v0, qword_1EC2BA9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C8980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51_1();
  if (!*v1 || (OUTLINED_FUNCTION_946(*v1), sub_1C89CC8F8(), OUTLINED_FUNCTION_1146(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), !v0))
  {
    v7 = OUTLINED_FUNCTION_1142();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v7);
    OUTLINED_FUNCTION_994();
    OUTLINED_FUNCTION_915(v8);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v9)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_7:
      OUTLINED_FUNCTION_688();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_223_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_337_0();
    sub_1C8776818(v10, v11, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v4);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  v9 = *v1;
  v10 = *v0;
  if (*(v1 + 8))
  {
    v9 = *v1 != 0;
  }

  if (*(v0 + 8) == 1)
  {
    if (v10)
    {
      if (v9 != 1)
      {
        goto LABEL_20;
      }
    }

    else if (v9)
    {
      goto LABEL_20;
    }
  }

  else if (v9 != v10)
  {
    goto LABEL_20;
  }

  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(0);
  OUTLINED_FUNCTION_724(v11);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_109_2();
  if (v12)
  {
    OUTLINED_FUNCTION_19(v2 + v3);
    if (v12)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_25:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      v22 = sub_1C8776818(v20, v21, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_746(v22);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_268();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2 + v3);
  if (v12)
  {
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
LABEL_18:
    v13 = &qword_1EC2B60E0;
    v14 = &qword_1C8BE6D90;
LABEL_19:
    sub_1C8778ED8(v2, v13, v14);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_1122();
  OUTLINED_FUNCTION_916();
  if (!v16)
  {

    OUTLINED_FUNCTION_216();
    sub_1C896B338();
    OUTLINED_FUNCTION_1164();

    if ((&qword_1C8BE6D88 & 1) == 0)
    {
      OUTLINED_FUNCTION_104_3();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
      v13 = &qword_1EC2B60D8;
      v14 = &qword_1C8BE6D88;
      goto LABEL_19;
    }
  }

  v17 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v18, v19, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_258();
  sub_1C8BD517C();
  OUTLINED_FUNCTION_351_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_229();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
  if (v17)
  {
    goto LABEL_25;
  }

LABEL_20:
  v15 = 0;
LABEL_21:
  OUTLINED_FUNCTION_157(v15);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C8F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C8F98(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C9008(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAF90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C9088()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BAA10);
  __swift_project_value_buffer(v0, qword_1EC2BAA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirection_IMPORT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirection_EXPORT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C928C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C237A0);
  qword_1EC2BAA28 = 0xD00000000000002BLL;
  unk_1EC2BAA30 = 0x80000001C8C22BA0;
  return result;
}

uint64_t _s12SiriNLUTypes0A38_Nlu_External_IntelligenceFlow_ToolKitV0G10DefinitionV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v0, v1, MEMORY[0x1E69AAC10]);
  v2 = OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1(v2, v3, v4, v5) & 1;
}

uint64_t sub_1C89C9414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD198, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C9494(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC468, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C9504(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC468, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C9580()
{
  if (qword_1EC2B5B60 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BAA28;
  v2 = unk_1EC2BAA30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F69737265562ELL, 0xE900000000000031);

  qword_1EC2BAA50 = v1;
  *algn_1EC2BAA58 = v2;
  return result;
}

uint64_t sub_1C89C9648()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BAA60);
  __swift_project_value_buffer(v0, qword_1EC2BAA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C9848@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89C9A50();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C89C999C(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1C89C999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);
  return sub_1C8BD4C7C();
}

void sub_1C89C9A50()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_129();
  v3(v2);
  v4 = OUTLINED_FUNCTION_254_0();
  v6 = sub_1C8776818(v4, v5, v0);
  OUTLINED_FUNCTION_163_1(v1, v7, v6);
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_921(v2);
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v7);
  OUTLINED_FUNCTION_229_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_3();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(0);
  OUTLINED_FUNCTION_329_0(v13);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72_2(v1);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_532();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_523_0();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_1050();
  if (!v10 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(0), sub_1C8776818(&qword_1EC2BB5B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_532(), sub_1C8BD4E0C(), !v0))
  {
    v11 = OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_1125(v11, v12);
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_6();
  v6 = OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_212();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB5C0, &qword_1C8BFADB0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(v11);
  v12 = *(v4 + 56);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_109_2();
  if (v13)
  {
    OUTLINED_FUNCTION_19(v1 + v12);
    if (v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_315();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1 + v12);
  if (v13)
  {
    OUTLINED_FUNCTION_523_0();
    sub_1C88E3C58();
LABEL_9:
    v14 = &qword_1EC2BB5C0;
    v15 = &qword_1C8BFADB0;
LABEL_10:
    sub_1C8778ED8(v1, v14, v15);
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_1122();
  if (*(v3 + *(v0 + 20)) != *(v2 + *(v0 + 20)))
  {

    v16 = OUTLINED_FUNCTION_216();
    sub_1C89B0D48(v16, v17);
    OUTLINED_FUNCTION_1164();

    if ((&qword_1C8BFACB8 & 1) == 0)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_91();
      sub_1C88E3C58();
      v14 = &qword_1EC2BAF00;
      v15 = &qword_1C8BFACB8;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v18, v19, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_666();
  v20 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_104_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  sub_1C87DB73C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_1_14();
  v24 = sub_1C8776818(v22, v23, MEMORY[0x1E69AAC10]);
  v25 = OUTLINED_FUNCTION_100_1(v24);
LABEL_17:
  OUTLINED_FUNCTION_157(v25);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C9FA4()
{
  OUTLINED_FUNCTION_382_0();
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8776818(v2, v3, v0);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C89CA05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD190, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89CA0DC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC480, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89CA14C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BC480, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89CA60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_1EC2B60B8, &qword_1C8BE6D68);
  MEMORY[0x1EEE9AC00](v63);
  v64 = v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v57 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v73 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v74 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v68 = v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD890, &qword_1C8C0A748);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = (v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v21);
  v70 = (v57 - v25);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v65 = v12;
  v57[1] = v10;
  v61 = v4;
  v62 = a1;
  v26 = 0;
  v27 = *(a1 + 64);
  v58 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v69 = a2;
  v60 = v18;
  v66 = v23;
  v67 = v13;
  while (v30)
  {
    v72 = (v30 - 1) & v30;
    v32 = __clz(__rbit64(v30)) | (v26 << 6);
LABEL_13:
    v36 = (*(v62 + 48) + 16 * v32);
    v37 = *v36;
    v38 = v36[1];
    sub_1C88E4144();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD898, &qword_1C8C0A750);
    *v23 = v37;
    v23[1] = v38;
    sub_1C88E3EC4();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v39);

    v33 = v70;
LABEL_14:
    sub_1C89DF3F4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD898, &qword_1C8C0A750);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v40);
    v71 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v71;
    }

    v42 = *v33;
    v43 = v33[1];
    sub_1C88E3EC4();
    sub_1C88DB074(v42, v43);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      goto LABEL_31;
    }

    v46 = v74;
    sub_1C88E4144();
    if (*&v46[*(v67 + 20)] != *&v18[*(v67 + 20)])
    {
      swift_beginAccess();
      v47 = v65;
      sub_1C89CBE2C();
      swift_beginAccess();
      v48 = v64;
      v49 = *(v63 + 48);
      sub_1C89CBE2C();
      sub_1C89CBE2C();
      v50 = v61;
      if (__swift_getEnumTagSinglePayload(v48, 1, v61) == 1)
      {

        sub_1C8778ED8(v47, &qword_1EC2B60C0, &unk_1C8BE6D70);
        v51 = __swift_getEnumTagSinglePayload(v48 + v49, 1, v50) == 1;
        v52 = v48;
        if (!v51)
        {
          goto LABEL_29;
        }

        sub_1C8778ED8(v48, &qword_1EC2B60C0, &unk_1C8BE6D70);
        v18 = v60;
      }

      else
      {
        sub_1C89CBE2C();
        if (__swift_getEnumTagSinglePayload(v48 + v49, 1, v50) == 1)
        {

          sub_1C8778ED8(v65, &qword_1EC2B60C0, &unk_1C8BE6D70);
          sub_1C88E3C58();
          v52 = v48;
LABEL_29:
          sub_1C8778ED8(v52, &byte_1EC2B60B8, &qword_1C8BE6D68);
LABEL_30:

          sub_1C88E3C58();
LABEL_31:
          sub_1C88E3C58();
          return 0;
        }

        sub_1C88E3EC4();

        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind.== infix(_:_:)();
        v54 = v53;
        sub_1C88E3C58();
        sub_1C8778ED8(v65, &qword_1EC2B60C0, &unk_1C8BE6D70);
        sub_1C88E3C58();
        sub_1C8778ED8(v48, &qword_1EC2B60C0, &unk_1C8BE6D70);
        v18 = v60;
        if ((v54 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    sub_1C8BD49FC();
    sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v55 = sub_1C8BD517C();
    sub_1C88E3C58();
    result = sub_1C88E3C58();
    v23 = v66;
    v30 = v72;
    if ((v55 & 1) == 0)
    {
      return v71;
    }
  }

  v33 = v70;
  while (1)
  {
    v34 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD898, &qword_1C8C0A750);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v56);
      v72 = 0;
      goto LABEL_14;
    }

    v35 = *(v58 + 8 * v34);
    ++v26;
    if (v35)
    {
      v72 = (v35 - 1) & v35;
      v32 = __clz(__rbit64(v35)) | (v34 << 6);
      v26 = v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89CBD78()
{
  OUTLINED_FUNCTION_12_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_121_0();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C89CBE2C()
{
  OUTLINED_FUNCTION_12_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_121_0();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

unint64_t sub_1C89CBEC0()
{
  result = qword_1EC2BAF88;
  if (!qword_1EC2BAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BAF88);
  }

  return result;
}

unint64_t sub_1C89CBF14()
{
  result = qword_1EC2BAFB8;
  if (!qword_1EC2BAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BAFB8);
  }

  return result;
}

unint64_t sub_1C89CBF68()
{
  result = qword_1EC2BB078;
  if (!qword_1EC2BB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB078);
  }

  return result;
}

unint64_t sub_1C89CBFBC()
{
  result = qword_1EC2BB088;
  if (!qword_1EC2BB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB088);
  }

  return result;
}

unint64_t sub_1C89CC010()
{
  result = qword_1EC2BB0A8;
  if (!qword_1EC2BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB0A8);
  }

  return result;
}

unint64_t sub_1C89CC064()
{
  result = qword_1EC2BB0E0;
  if (!qword_1EC2BB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB0E0);
  }

  return result;
}

unint64_t sub_1C89CC0B8()
{
  result = qword_1EC2BB1C8;
  if (!qword_1EC2BB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB1C8);
  }

  return result;
}

unint64_t sub_1C89CC10C()
{
  result = qword_1EC2BB1D0;
  if (!qword_1EC2BB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB1D0);
  }

  return result;
}

unint64_t sub_1C89CC160()
{
  result = qword_1EC2BB1D8;
  if (!qword_1EC2BB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB1D8);
  }

  return result;
}

unint64_t sub_1C89CC1B4()
{
  result = qword_1EC2BB250;
  if (!qword_1EC2BB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB250);
  }

  return result;
}

unint64_t sub_1C89CC208()
{
  result = qword_1EC2BB2D0;
  if (!qword_1EC2BB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB2D0);
  }

  return result;
}

uint64_t sub_1C89CC25C(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations(0);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6C8, &qword_1C8C0A570);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v49 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v49 + 16))
  {
    return 0;
  }

  v44 = a1;
  v45 = &v43 - v12;
  v48 = v13;
  v14 = 0;
  v15 = *(a1 + 64);
  v43 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v50 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_13:
    v24 = (*(v44 + 48) + 16 * v20);
    v26 = *v24;
    v25 = v24[1];
    sub_1C88E4144();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D0, &qword_1C8C0A578);
    v28 = v48;
    *v48 = v26;
    v28[1] = v25;
    v29 = v28;
    sub_1C88E3EC4();
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v27);

LABEL_14:
    v30 = v45;
    sub_1C89DF3F4();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D0, &qword_1C8C0A578);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
    v33 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v33;
    }

    v34 = v30;
    v35 = v6;
    v36 = *v34;
    v37 = v34[1];
    sub_1C88E3EC4();
    sub_1C88DB074(v36, v37);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_22;
    }

    v6 = v35;
    sub_1C88E4144();
    sub_1C87DB3DC();
    if ((v40 & 1) == 0)
    {
      sub_1C88E3C58();
LABEL_22:
      sub_1C88E3C58();
      return 0;
    }

    sub_1C8BD49FC();
    sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v41 = sub_1C8BD517C();
    sub_1C88E3C58();
    result = sub_1C88E3C58();
    v18 = v50;
    if ((v41 & 1) == 0)
    {
      return v33;
    }
  }

  v21 = v48;
  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D0, &qword_1C8C0A578);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v42);
      v50 = 0;
      goto LABEL_14;
    }

    v23 = *(v43 + 8 * v22);
    ++v14;
    if (v23)
    {
      v50 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v22 << 6);
      v14 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C89CC754()
{
  result = qword_1EC2BB400;
  if (!qword_1EC2BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB400);
  }

  return result;
}

unint64_t sub_1C89CC7A8()
{
  result = qword_1EC2BB468;
  if (!qword_1EC2BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB468);
  }

  return result;
}

unint64_t sub_1C89CC7FC()
{
  result = qword_1EC2BB480;
  if (!qword_1EC2BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB480);
  }

  return result;
}

unint64_t sub_1C89CC850()
{
  result = qword_1EC2BB4B0;
  if (!qword_1EC2BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB4B0);
  }

  return result;
}

unint64_t sub_1C89CC8A4()
{
  result = qword_1EC2BB4B8;
  if (!qword_1EC2BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB4B8);
  }

  return result;
}

unint64_t sub_1C89CC8F8()
{
  result = qword_1EC2BB598;
  if (!qword_1EC2BB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB598);
  }

  return result;
}

unint64_t sub_1C89CC970()
{
  result = qword_1EC2BB5D0;
  if (!qword_1EC2BB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5D0);
  }

  return result;
}

unint64_t sub_1C89CC9C8()
{
  result = qword_1EC2BB5D8;
  if (!qword_1EC2BB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5D8);
  }

  return result;
}

unint64_t sub_1C89CCA20()
{
  result = qword_1EC2BB5E0;
  if (!qword_1EC2BB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5E0);
  }

  return result;
}

unint64_t sub_1C89CCA78()
{
  result = qword_1EC2BB5E8;
  if (!qword_1EC2BB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5E8);
  }

  return result;
}

unint64_t sub_1C89CCAD0()
{
  result = qword_1EC2BB5F0;
  if (!qword_1EC2BB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5F0);
  }

  return result;
}

unint64_t sub_1C89CCB28()
{
  result = qword_1EC2BB5F8;
  if (!qword_1EC2BB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5F8);
  }

  return result;
}

unint64_t sub_1C89CCB80()
{
  result = qword_1EC2BB600;
  if (!qword_1EC2BB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB600);
  }

  return result;
}

unint64_t sub_1C89CCBD8()
{
  result = qword_1EC2BB608;
  if (!qword_1EC2BB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB608);
  }

  return result;
}

unint64_t sub_1C89CCC30()
{
  result = qword_1EC2BB610;
  if (!qword_1EC2BB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB610);
  }

  return result;
}

unint64_t sub_1C89CCC88()
{
  result = qword_1EC2BB618;
  if (!qword_1EC2BB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB618);
  }

  return result;
}

unint64_t sub_1C89CCCE0()
{
  result = qword_1EC2BB620;
  if (!qword_1EC2BB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB620);
  }

  return result;
}

unint64_t sub_1C89CCD38()
{
  result = qword_1EC2BB628;
  if (!qword_1EC2BB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB628);
  }

  return result;
}

unint64_t sub_1C89CCD90()
{
  result = qword_1EC2BB630;
  if (!qword_1EC2BB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB630);
  }

  return result;
}

unint64_t sub_1C89CCDE8()
{
  result = qword_1EC2BB638;
  if (!qword_1EC2BB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB638);
  }

  return result;
}

unint64_t sub_1C89CCE40()
{
  result = qword_1EC2BB640;
  if (!qword_1EC2BB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB640);
  }

  return result;
}

unint64_t sub_1C89CCE98()
{
  result = qword_1EC2BB648;
  if (!qword_1EC2BB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB648);
  }

  return result;
}

unint64_t sub_1C89CCEF0()
{
  result = qword_1EC2BB650;
  if (!qword_1EC2BB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB650);
  }

  return result;
}

unint64_t sub_1C89CCF48()
{
  result = qword_1EC2BB658;
  if (!qword_1EC2BB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB658);
  }

  return result;
}

unint64_t sub_1C89CCFA0()
{
  result = qword_1EC2BB660;
  if (!qword_1EC2BB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB660);
  }

  return result;
}

unint64_t sub_1C89CCFF8()
{
  result = qword_1EC2BB668;
  if (!qword_1EC2BB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB668);
  }

  return result;
}

unint64_t sub_1C89CD050()
{
  result = qword_1EC2BB670;
  if (!qword_1EC2BB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB670);
  }

  return result;
}

unint64_t sub_1C89CD0A8()
{
  result = qword_1EC2BB678;
  if (!qword_1EC2BB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB678);
  }

  return result;
}

unint64_t sub_1C89CD100()
{
  result = qword_1EC2BB680;
  if (!qword_1EC2BB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB680);
  }

  return result;
}

unint64_t sub_1C89CD158()
{
  result = qword_1EC2BB688;
  if (!qword_1EC2BB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB688);
  }

  return result;
}

unint64_t sub_1C89CD1B0()
{
  result = qword_1EC2BB690;
  if (!qword_1EC2BB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB690);
  }

  return result;
}

unint64_t sub_1C89CD208()
{
  result = qword_1EC2BB698;
  if (!qword_1EC2BB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB698);
  }

  return result;
}

unint64_t sub_1C89CD260()
{
  result = qword_1EC2BB6A0;
  if (!qword_1EC2BB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6A0);
  }

  return result;
}

unint64_t sub_1C89CD2B8()
{
  result = qword_1EC2BB6A8;
  if (!qword_1EC2BB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6A8);
  }

  return result;
}

unint64_t sub_1C89CD310()
{
  result = qword_1EC2BB6B0;
  if (!qword_1EC2BB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6B0);
  }

  return result;
}

unint64_t sub_1C89CD368()
{
  result = qword_1EC2BB6B8;
  if (!qword_1EC2BB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6B8);
  }

  return result;
}

unint64_t sub_1C89CD3C0()
{
  result = qword_1EC2BB6C0;
  if (!qword_1EC2BB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6C0);
  }

  return result;
}

unint64_t sub_1C89CD418()
{
  result = qword_1EC2BB6C8;
  if (!qword_1EC2BB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6C8);
  }

  return result;
}

unint64_t sub_1C89CD470()
{
  result = qword_1EC2BB6D0;
  if (!qword_1EC2BB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6D0);
  }

  return result;
}

unint64_t sub_1C89CD4C8()
{
  result = qword_1EC2BB6D8;
  if (!qword_1EC2BB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6D8);
  }

  return result;
}

unint64_t sub_1C89CD520()
{
  result = qword_1EC2BB6E0;
  if (!qword_1EC2BB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6E0);
  }

  return result;
}

unint64_t sub_1C89CD578()
{
  result = qword_1EC2BB6E8;
  if (!qword_1EC2BB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6E8);
  }

  return result;
}

unint64_t sub_1C89CD5D0()
{
  result = qword_1EC2BB6F0;
  if (!qword_1EC2BB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6F0);
  }

  return result;
}

unint64_t sub_1C89CD628()
{
  result = qword_1EC2BB6F8;
  if (!qword_1EC2BB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6F8);
  }

  return result;
}

unint64_t sub_1C89CD680()
{
  result = qword_1EC2BB700;
  if (!qword_1EC2BB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB700);
  }

  return result;
}

unint64_t sub_1C89CD6D8()
{
  result = qword_1EC2BB708;
  if (!qword_1EC2BB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB708);
  }

  return result;
}

unint64_t sub_1C89CD730()
{
  result = qword_1EC2BB710;
  if (!qword_1EC2BB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB710);
  }

  return result;
}

unint64_t sub_1C89CD788()
{
  result = qword_1EC2BB718;
  if (!qword_1EC2BB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB718);
  }

  return result;
}

unint64_t sub_1C89CD7E0()
{
  result = qword_1EC2BB720;
  if (!qword_1EC2BB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB720);
  }

  return result;
}

unint64_t sub_1C89CD838()
{
  result = qword_1EC2BB728;
  if (!qword_1EC2BB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB728);
  }

  return result;
}

unint64_t sub_1C89CD890()
{
  result = qword_1EC2BB730;
  if (!qword_1EC2BB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB730);
  }

  return result;
}

unint64_t sub_1C89CD8E8()
{
  result = qword_1EC2BB738;
  if (!qword_1EC2BB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB738);
  }

  return result;
}

unint64_t sub_1C89CD940()
{
  result = qword_1EC2BB740;
  if (!qword_1EC2BB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB740);
  }

  return result;
}

unint64_t sub_1C89CD998()
{
  result = qword_1EC2BB748;
  if (!qword_1EC2BB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB748);
  }

  return result;
}

unint64_t sub_1C89CD9F0()
{
  result = qword_1EC2BB750;
  if (!qword_1EC2BB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB750);
  }

  return result;
}

unint64_t sub_1C89CDA48()
{
  result = qword_1EC2BB758;
  if (!qword_1EC2BB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB758);
  }

  return result;
}

unint64_t sub_1C89CDAA0()
{
  result = qword_1EC2BB760;
  if (!qword_1EC2BB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB760);
  }

  return result;
}

unint64_t sub_1C89CDAF8()
{
  result = qword_1EC2BB768;
  if (!qword_1EC2BB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB768);
  }

  return result;
}

unint64_t sub_1C89CDB50()
{
  result = qword_1EC2BB770;
  if (!qword_1EC2BB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB770);
  }

  return result;
}

unint64_t sub_1C89CDBA8()
{
  result = qword_1EC2BB778;
  if (!qword_1EC2BB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB778);
  }

  return result;
}

unint64_t sub_1C89CDC00()
{
  result = qword_1EC2BB780;
  if (!qword_1EC2BB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB780);
  }

  return result;
}

unint64_t sub_1C89CDC58()
{
  result = qword_1EC2BB788;
  if (!qword_1EC2BB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB788);
  }

  return result;
}

unint64_t sub_1C89CDCB0()
{
  result = qword_1EC2BB790;
  if (!qword_1EC2BB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB790);
  }

  return result;
}

unint64_t sub_1C89CDD08()
{
  result = qword_1EC2BB798;
  if (!qword_1EC2BB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB798);
  }

  return result;
}

unint64_t sub_1C89CDD60()
{
  result = qword_1EC2BB7A0;
  if (!qword_1EC2BB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7A0);
  }

  return result;
}

unint64_t sub_1C89CDDB8()
{
  result = qword_1EC2BB7A8;
  if (!qword_1EC2BB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7A8);
  }

  return result;
}

unint64_t sub_1C89CDE10()
{
  result = qword_1EC2BB7B0;
  if (!qword_1EC2BB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7B0);
  }

  return result;
}

unint64_t sub_1C89CDE68()
{
  result = qword_1EC2BB7B8;
  if (!qword_1EC2BB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7B8);
  }

  return result;
}

unint64_t sub_1C89CDEC0()
{
  result = qword_1EC2BB7C0;
  if (!qword_1EC2BB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7C0);
  }

  return result;
}

unint64_t sub_1C89CDF18()
{
  result = qword_1EC2BB7C8;
  if (!qword_1EC2BB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7C8);
  }

  return result;
}

unint64_t sub_1C89CDF70()
{
  result = qword_1EC2BB7D0;
  if (!qword_1EC2BB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7D0);
  }

  return result;
}

unint64_t sub_1C89CDFC8()
{
  result = qword_1EC2BB7D8;
  if (!qword_1EC2BB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7D8);
  }

  return result;
}

unint64_t sub_1C89CE020()
{
  result = qword_1EC2BB7E0;
  if (!qword_1EC2BB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7E0);
  }

  return result;
}

unint64_t sub_1C89CE078()
{
  result = qword_1EC2BB7E8;
  if (!qword_1EC2BB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7E8);
  }

  return result;
}

unint64_t sub_1C89CE0D0()
{
  result = qword_1EC2BB7F0;
  if (!qword_1EC2BB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7F0);
  }

  return result;
}

unint64_t sub_1C89CE128()
{
  result = qword_1EC2BB7F8;
  if (!qword_1EC2BB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7F8);
  }

  return result;
}

unint64_t sub_1C89CE180()
{
  result = qword_1EC2BB800;
  if (!qword_1EC2BB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB800);
  }

  return result;
}

unint64_t sub_1C89CE1D8()
{
  result = qword_1EC2BB808;
  if (!qword_1EC2BB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB808);
  }

  return result;
}

unint64_t sub_1C89CE230()
{
  result = qword_1EC2BB810;
  if (!qword_1EC2BB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB810);
  }

  return result;
}

unint64_t sub_1C89CE288()
{
  result = qword_1EC2BB818;
  if (!qword_1EC2BB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB818);
  }

  return result;
}

unint64_t sub_1C89CE2E0()
{
  result = qword_1EC2BB820;
  if (!qword_1EC2BB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB820);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1C89D7D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C89D7DAC(uint64_t a1)
{
  result = sub_1C8BD47CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C89D7ECC(uint64_t a1)
{
  v1 = sub_1C8BD47CC();
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(319);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1C89D800C()
{
  OUTLINED_FUNCTION_717();
  sub_1C89DC6F0(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_1049();
    sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_428();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_169_2();
    }
  }
}