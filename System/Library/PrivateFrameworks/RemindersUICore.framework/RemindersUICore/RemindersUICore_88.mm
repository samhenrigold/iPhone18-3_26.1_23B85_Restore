void **sub_21D922108(void **a1, void **a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v34 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(a2, 1, v34))
            {
              v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v36 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v65 = *(v34 + 20);
              v66 = sub_21DBF6C1C();
              v67 = *(*(v66 - 8) + 16);
              sub_21DBF8E0C();
              v67(a1 + v65, a2 + v65, v66);
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v68 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v69 = (a1 + v68);
            v70 = (a2 + v68);
            v71 = v70[1];
            if (v71)
            {
              *v69 = *v70;
              v69[1] = v71;
              v72 = v70[2];
              v69[2] = v72;
              sub_21DBF8E0C();
              v73 = v72;
            }

            else
            {
              *v69 = *v70;
              v69[2] = v70[2];
            }

            goto LABEL_236;
          case 7:
            v40 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v41 = *(v40 - 8);
            if ((*(v41 + 48))(a2, 1, v40))
            {
              v42 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v42 - 8) + 64));
            }

            else
            {
              v82 = sub_21DBF563C();
              (*(*(v82 - 8) + 16))(a1, a2, v82);
              *(a1 + *(v40 + 20)) = *(a2 + *(v40 + 20));
              (*(v41 + 56))(a1, 0, 1, v40);
            }

            v83 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v83 + 20)) = *(a2 + *(v83 + 20));
            goto LABEL_236;
          case 8:
            *a1 = *a2;
            v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v8 = sub_21DBF8D7C();
            (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_236:
            swift_storeEnumTagMultiPayload();
            goto LABEL_237;
        }

LABEL_50:
        memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_237:
        v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
        *(a1 + *(v207 + 48)) = *(a2 + *(v207 + 48));
        *(a1 + *(v207 + 64)) = *(a2 + *(v207 + 64));
        sub_21DBF8E0C();
        goto LABEL_265;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v24 = a2[2];
        a1[2] = v24;
        v25 = v24;
        goto LABEL_236;
      }

      v37 = *a2;
      *a1 = *a2;
      v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = *(v20 - 8);
      v38 = *(v21 + 48);
      v39 = v37;
      if (v38(a2 + v19, 1, v20))
      {
LABEL_43:
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v19, a2 + v19, *(*(v33 - 8) + 64));
        goto LABEL_236;
      }

      v74 = swift_getEnumCaseMultiPayload();
      if (v74 > 4)
      {
        if (v74 <= 7)
        {
          if (v74 == 5 || v74 == 6)
          {
            goto LABEL_185;
          }

          goto LABEL_234;
        }

        if (v74 != 8 && v74 != 9)
        {
          goto LABEL_234;
        }

LABEL_184:
        v154 = *(a2 + v19);
        *(a1 + v19) = v154;
        v155 = v154;
        swift_storeEnumTagMultiPayload();
LABEL_235:
        (*(v21 + 56))(a1 + v19, 0, 1, v20);
        goto LABEL_236;
      }

      if (v74 <= 2)
      {
        if (v74 != 1)
        {
          if (v74 == 2)
          {
            goto LABEL_185;
          }

LABEL_234:
          memcpy(a1 + v19, a2 + v19, *(v21 + 64));
          goto LABEL_235;
        }

        goto LABEL_184;
      }

LABEL_185:
      v156 = sub_21DBF563C();
      (*(*(v156 - 8) + 16))(a1 + v19, a2 + v19, v156);
      swift_storeEnumTagMultiPayload();
      goto LABEL_235;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = *a2;
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v31 = *(v21 + 48);
        v32 = v30;
        if (v31(a2 + v19, 1, v20))
        {
          goto LABEL_43;
        }

        v55 = swift_getEnumCaseMultiPayload();
        if (v55 > 4)
        {
          if (v55 <= 7)
          {
            if (v55 == 5 || v55 == 6)
            {
              goto LABEL_185;
            }

            goto LABEL_234;
          }

          if (v55 != 8 && v55 != 9)
          {
            goto LABEL_234;
          }

          goto LABEL_184;
        }

        if (v55 > 2)
        {
          goto LABEL_185;
        }

        if (v55 == 1)
        {
          goto LABEL_184;
        }

        if (v55 != 2)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v18 = *a2;
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v22 = *(v21 + 48);
        v23 = v18;
        if (v22(a2 + v19, 1, v20))
        {
          goto LABEL_43;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_185;
            }

            goto LABEL_234;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_234;
          }

          goto LABEL_184;
        }

        if (v52 > 2)
        {
          goto LABEL_185;
        }

        if (v52 == 1)
        {
          goto LABEL_184;
        }

        if (v52 != 2)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_185;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_50;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_99:
          v84 = sub_21DBF563C();
          (*(*(v84 - 8) + 16))(a1, a2, v84);
          swift_storeEnumTagMultiPayload();
          goto LABEL_155;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_99;
          }

          goto LABEL_154;
        }

LABEL_102:
        v85 = *a2;
        *a1 = *a2;
        v86 = v85;
        swift_storeEnumTagMultiPayload();
        goto LABEL_155;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_102;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_99;
      }

LABEL_154:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_155:
      v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v106 = v105[5];
      v107 = a1 + v106;
      v108 = a2 + v106;
      v109 = *(a2 + v106 + 8);
      if (v109)
      {
        v218 = a2;
        v223 = a1;
        *v107 = *v108;
        *(v107 + 1) = v109;
        v110 = *(v108 + 2);
        v111 = *(v108 + 3);
        v112 = *(v108 + 4);
        v113 = *(v108 + 5);
        v114 = *(v108 + 6);
        v115 = *(v108 + 7);
        v116 = v108[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v110, v111, v112, v113, v114, v115, v116);
        *(v107 + 2) = v110;
        *(v107 + 3) = v111;
        *(v107 + 4) = v112;
        *(v107 + 5) = v113;
        *(v107 + 6) = v114;
        *(v107 + 7) = v115;
        v107[64] = v116;
        *(v107 + 65) = *(v108 + 65);
        v117 = v108[120];
        if (v117 == 255)
        {
          *(v107 + 72) = *(v108 + 72);
          *(v107 + 88) = *(v108 + 88);
          *(v107 + 104) = *(v108 + 104);
          v107[120] = v108[120];
        }

        else
        {
          v118 = *(v108 + 9);
          v119 = *(v108 + 10);
          v120 = *(v108 + 11);
          v121 = *(v108 + 12);
          v122 = *(v108 + 13);
          v123 = *(v108 + 14);
          v124 = v117 & 1;
          sub_21D0FB960(v118, v119, v120, v121, v122, v123, v117 & 1);
          *(v107 + 9) = v118;
          *(v107 + 10) = v119;
          *(v107 + 11) = v120;
          *(v107 + 12) = v121;
          *(v107 + 13) = v122;
          *(v107 + 14) = v123;
          v107[120] = v124;
        }

        v107[121] = v108[121];
        a2 = v218;
        a1 = v223;
        goto LABEL_161;
      }

LABEL_158:
      v125 = *(v108 + 5);
      *(v107 + 4) = *(v108 + 4);
      *(v107 + 5) = v125;
      *(v107 + 6) = *(v108 + 6);
      *(v107 + 106) = *(v108 + 106);
      v126 = *(v108 + 1);
      *v107 = *v108;
      *(v107 + 1) = v126;
      v127 = *(v108 + 3);
      *(v107 + 2) = *(v108 + 2);
      *(v107 + 3) = v127;
LABEL_161:
      *(a1 + v105[6]) = *(a2 + v105[6]);
      *(a1 + v105[7]) = *(a2 + v105[7]);
      *(a1 + v105[8]) = *(a2 + v105[8]);
      *(a1 + v105[9]) = *(a2 + v105[9]);
      *(a1 + v105[10]) = *(a2 + v105[10]);
      v128 = v105[11];
      v129 = *(a2 + v128);
      *(a1 + v128) = v129;
      v130 = v129;
      goto LABEL_236;
    }

    v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29 <= 4)
    {
      if (v29 > 2)
      {
LABEL_103:
        v87 = sub_21DBF563C();
        (*(*(v87 - 8) + 16))(a1, a2, v87);
        swift_storeEnumTagMultiPayload();
        goto LABEL_163;
      }

      if (v29 != 1)
      {
        if (v29 == 2)
        {
          goto LABEL_103;
        }

        goto LABEL_162;
      }

LABEL_106:
      v88 = *a2;
      *a1 = *a2;
      v89 = v88;
      swift_storeEnumTagMultiPayload();
      goto LABEL_163;
    }

    if (v29 > 7)
    {
      if (v29 == 8 || v29 == 9)
      {
        goto LABEL_106;
      }
    }

    else if (v29 == 5 || v29 == 6)
    {
      goto LABEL_103;
    }

LABEL_162:
    memcpy(a1, a2, *(*(v28 - 8) + 64));
LABEL_163:
    v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v131 = v105[5];
    v107 = a1 + v131;
    v108 = a2 + v131;
    v132 = *(a2 + v131 + 8);
    if (v132)
    {
      v219 = a2;
      v224 = a1;
      *v107 = *v108;
      *(v107 + 1) = v132;
      v133 = *(v108 + 2);
      v134 = *(v108 + 3);
      v135 = *(v108 + 4);
      v136 = *(v108 + 5);
      v137 = *(v108 + 6);
      v138 = *(v108 + 7);
      v139 = v108[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v133, v134, v135, v136, v137, v138, v139);
      *(v107 + 2) = v133;
      *(v107 + 3) = v134;
      *(v107 + 4) = v135;
      *(v107 + 5) = v136;
      *(v107 + 6) = v137;
      *(v107 + 7) = v138;
      v107[64] = v139;
      *(v107 + 65) = *(v108 + 65);
      v140 = v108[120];
      if (v140 == 255)
      {
        *(v107 + 72) = *(v108 + 72);
        *(v107 + 88) = *(v108 + 88);
        *(v107 + 104) = *(v108 + 104);
        v107[120] = v108[120];
      }

      else
      {
        v141 = *(v108 + 9);
        v142 = *(v108 + 10);
        v143 = *(v108 + 11);
        v144 = *(v108 + 12);
        v145 = *(v108 + 13);
        v146 = *(v108 + 14);
        v147 = v140 & 1;
        sub_21D0FB960(v141, v142, v143, v144, v145, v146, v140 & 1);
        *(v107 + 9) = v141;
        *(v107 + 10) = v142;
        *(v107 + 11) = v143;
        *(v107 + 12) = v144;
        *(v107 + 13) = v145;
        *(v107 + 14) = v146;
        v107[120] = v147;
      }

      v107[121] = v108[121];
      a2 = v219;
      a1 = v224;
      goto LABEL_161;
    }

    goto LABEL_158;
  }

  v9 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a2, 1, v9))
  {
    v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v62 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v63 = *(v62 - 8);
            if ((*(v63 + 48))(a2, 1, v62))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v64 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v229 = v10;
              v92 = *(v62 + 20);
              v93 = sub_21DBF6C1C();
              v222 = *(*(v93 - 8) + 16);
              sub_21DBF8E0C();
              v94 = a1 + v92;
              v95 = a2 + v92;
              v10 = v229;
              v222(v94, v95, v93);
              (*(v63 + 56))(a1, 0, 1, v62);
            }

            v96 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v97 = (a1 + v96);
            v98 = (a2 + v96);
            v99 = v98[1];
            if (v99)
            {
              *v97 = *v98;
              v97[1] = v99;
              v100 = v98[2];
              v97[2] = v100;
              sub_21DBF8E0C();
              v101 = v100;
            }

            else
            {
              *v97 = *v98;
              v97[2] = v98[2];
            }

            goto LABEL_263;
          case 7:
            v79 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v80 = *(v79 - 8);
            if ((*(v80 + 48))(a2, 1, v79))
            {
              v81 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v81 - 8) + 64));
            }

            else
            {
              v103 = sub_21DBF563C();
              (*(*(v103 - 8) + 16))(a1, a2, v103);
              *(a1 + *(v79 + 20)) = *(a2 + *(v79 + 20));
              (*(v80 + 56))(a1, 0, 1, v79);
            }

            v104 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v104 + 20)) = *(a2 + *(v104 + 20));
            goto LABEL_263;
          case 8:
            *a1 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_263:
            swift_storeEnumTagMultiPayload();
            goto LABEL_264;
        }

        goto LABEL_98;
      }

      if (v15 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v50 = a2[2];
        a1[2] = v50;
        v51 = v50;
        goto LABEL_263;
      }

      v228 = v10;
      v75 = *a2;
      *a1 = *a2;
      v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v59 = *(v58 - 8);
      v76 = *(v59 + 48);
      v77 = v75;
      if (v76(a2 + v57, 1, v58))
      {
LABEL_93:
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v57, a2 + v57, *(*(v78 - 8) + 64));
        v10 = v228;
        goto LABEL_263;
      }

      v102 = swift_getEnumCaseMultiPayload();
      if (v102 > 4)
      {
        if (v102 <= 7)
        {
          if (v102 == 5 || v102 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v102 != 8 && v102 != 9)
        {
          goto LABEL_261;
        }

LABEL_249:
        v212 = *(a2 + v57);
        *(a1 + v57) = v212;
        v213 = v212;
        swift_storeEnumTagMultiPayload();
        goto LABEL_262;
      }

      if (v102 <= 2)
      {
        if (v102 != 1)
        {
          if (v102 == 2)
          {
            goto LABEL_246;
          }

LABEL_261:
          memcpy(a1 + v57, a2 + v57, *(v59 + 64));
          goto LABEL_262;
        }

        goto LABEL_249;
      }

LABEL_246:
      v211 = sub_21DBF563C();
      (*(*(v211 - 8) + 16))(a1 + v57, a2 + v57, v211);
      swift_storeEnumTagMultiPayload();
LABEL_262:
      (*(v59 + 56))(a1 + v57, 0, 1, v58);
      goto LABEL_263;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
LABEL_98:
          memcpy(a1, a2, *(*(v14 - 8) + 64));
LABEL_264:
          *(a1 + *(v9 + 20)) = *(a2 + *(v9 + 20));
          (*(v10 + 56))(a1, 0, 1, v9);
          goto LABEL_265;
        }

        v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v27 = swift_getEnumCaseMultiPayload();
        v227 = v10;
        v217 = v9;
        if (v27 > 4)
        {
          if (v27 <= 7)
          {
            if (v27 == 5 || v27 == 6)
            {
              goto LABEL_169;
            }

            goto LABEL_216;
          }

          if (v27 != 8 && v27 != 9)
          {
            goto LABEL_216;
          }
        }

        else
        {
          if (v27 > 2)
          {
LABEL_169:
            v148 = sub_21DBF563C();
            (*(*(v148 - 8) + 16))(a1, a2, v148);
            swift_storeEnumTagMultiPayload();
LABEL_217:
            v157 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v158 = v157[5];
            v159 = a1 + v158;
            v160 = a2 + v158;
            v161 = *(a2 + v158 + 8);
            if (v161)
            {
              v220 = a2;
              v225 = a1;
              *v159 = *v160;
              *(v159 + 1) = v161;
              v162 = *(v160 + 2);
              v163 = *(v160 + 3);
              v164 = *(v160 + 4);
              v165 = *(v160 + 5);
              v167 = *(v160 + 6);
              v166 = *(v160 + 7);
              v168 = v160[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v162, v163, v164, v165, v167, v166, v168);
              *(v159 + 2) = v162;
              *(v159 + 3) = v163;
              *(v159 + 4) = v164;
              *(v159 + 5) = v165;
              *(v159 + 6) = v167;
              *(v159 + 7) = v166;
              v159[64] = v168;
              *(v159 + 65) = *(v160 + 65);
              v169 = v160[120];
              if (v169 == 255)
              {
                *(v159 + 72) = *(v160 + 72);
                *(v159 + 88) = *(v160 + 88);
                *(v159 + 104) = *(v160 + 104);
                v159[120] = v160[120];
              }

              else
              {
                v170 = *(v160 + 9);
                v171 = *(v160 + 10);
                v172 = *(v160 + 11);
                v173 = *(v160 + 12);
                v174 = *(v160 + 13);
                v175 = *(v160 + 14);
                v176 = v169 & 1;
                sub_21D0FB960(v170, v171, v172, v173, v174, v175, v169 & 1);
                *(v159 + 9) = v170;
                *(v159 + 10) = v171;
                *(v159 + 11) = v172;
                *(v159 + 12) = v173;
                *(v159 + 13) = v174;
                *(v159 + 14) = v175;
                v159[120] = v176;
              }

              v9 = v217;
              a2 = v220;
              v159[121] = v160[121];
              a1 = v225;
            }

            else
            {
              v177 = *(v160 + 5);
              *(v159 + 4) = *(v160 + 4);
              *(v159 + 5) = v177;
              *(v159 + 6) = *(v160 + 6);
              *(v159 + 106) = *(v160 + 106);
              v178 = *(v160 + 1);
              *v159 = *v160;
              *(v159 + 1) = v178;
              v179 = *(v160 + 3);
              *(v159 + 2) = *(v160 + 2);
              *(v159 + 3) = v179;
            }

            *(a1 + v157[6]) = *(a2 + v157[6]);
            *(a1 + v157[7]) = *(a2 + v157[7]);
            *(a1 + v157[8]) = *(a2 + v157[8]);
            *(a1 + v157[9]) = *(a2 + v157[9]);
            *(a1 + v157[10]) = *(a2 + v157[10]);
            v180 = v157[11];
            v181 = *(a2 + v180);
            *(a1 + v180) = v181;
            v182 = v181;
LABEL_233:
            swift_storeEnumTagMultiPayload();
            v10 = v227;
            goto LABEL_264;
          }

          if (v27 != 1)
          {
            if (v27 == 2)
            {
              goto LABEL_169;
            }

LABEL_216:
            memcpy(a1, a2, *(*(v26 - 8) + 64));
            goto LABEL_217;
          }
        }

        v149 = *a2;
        *a1 = *a2;
        v150 = v149;
        swift_storeEnumTagMultiPayload();
        goto LABEL_217;
      }

      v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v54 = swift_getEnumCaseMultiPayload();
      v227 = v10;
      if (v54 > 4)
      {
        if (v54 <= 7)
        {
          if (v54 == 5 || v54 == 6)
          {
            goto LABEL_177;
          }

          goto LABEL_225;
        }

        if (v54 != 8 && v54 != 9)
        {
          goto LABEL_225;
        }
      }

      else
      {
        if (v54 > 2)
        {
LABEL_177:
          v151 = sub_21DBF563C();
          (*(*(v151 - 8) + 16))(a1, a2, v151);
          swift_storeEnumTagMultiPayload();
LABEL_226:
          v183 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v184 = v183[5];
          v185 = a1 + v184;
          v186 = a2 + v184;
          v187 = *(a2 + v184 + 8);
          if (v187)
          {
            v221 = a2;
            v226 = a1;
            *v185 = *v186;
            *(v185 + 1) = v187;
            v188 = *(v186 + 2);
            v189 = *(v186 + 3);
            v191 = *(v186 + 4);
            v190 = *(v186 + 5);
            v193 = *(v186 + 6);
            v192 = *(v186 + 7);
            v215 = v186[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v188, v189, v191, v190, v193, v192, v215);
            *(v185 + 2) = v188;
            *(v185 + 3) = v189;
            *(v185 + 4) = v191;
            *(v185 + 5) = v190;
            *(v185 + 6) = v193;
            *(v185 + 7) = v192;
            v185[64] = v215;
            *(v185 + 65) = *(v186 + 65);
            v194 = v186[120];
            if (v194 == 255)
            {
              *(v185 + 72) = *(v186 + 72);
              *(v185 + 88) = *(v186 + 88);
              *(v185 + 104) = *(v186 + 104);
              v185[120] = v186[120];
            }

            else
            {
              v195 = *(v186 + 9);
              v216 = *(v186 + 10);
              v196 = *(v186 + 11);
              v197 = *(v186 + 12);
              v198 = *(v186 + 13);
              v199 = *(v186 + 14);
              v200 = v194 & 1;
              sub_21D0FB960(v195, v216, v196, v197, v198, v199, v194 & 1);
              *(v185 + 9) = v195;
              *(v185 + 10) = v216;
              *(v185 + 11) = v196;
              *(v185 + 12) = v197;
              *(v185 + 13) = v198;
              *(v185 + 14) = v199;
              v185[120] = v200;
            }

            v185[121] = v186[121];
            a2 = v221;
            a1 = v226;
          }

          else
          {
            v201 = *(v186 + 5);
            *(v185 + 4) = *(v186 + 4);
            *(v185 + 5) = v201;
            *(v185 + 6) = *(v186 + 6);
            *(v185 + 106) = *(v186 + 106);
            v202 = *(v186 + 1);
            *v185 = *v186;
            *(v185 + 1) = v202;
            v203 = *(v186 + 3);
            *(v185 + 2) = *(v186 + 2);
            *(v185 + 3) = v203;
          }

          *(a1 + v183[6]) = *(a2 + v183[6]);
          *(a1 + v183[7]) = *(a2 + v183[7]);
          *(a1 + v183[8]) = *(a2 + v183[8]);
          *(a1 + v183[9]) = *(a2 + v183[9]);
          *(a1 + v183[10]) = *(a2 + v183[10]);
          v204 = v183[11];
          v205 = *(a2 + v204);
          *(a1 + v204) = v205;
          v206 = v205;
          goto LABEL_233;
        }

        if (v54 != 1)
        {
          if (v54 == 2)
          {
            goto LABEL_177;
          }

LABEL_225:
          memcpy(a1, a2, *(*(v53 - 8) + 64));
          goto LABEL_226;
        }
      }

      v152 = *a2;
      *a1 = *a2;
      v153 = v152;
      swift_storeEnumTagMultiPayload();
      goto LABEL_226;
    }

    if (v15 == 2)
    {
      v228 = v10;
      v56 = *a2;
      *a1 = *a2;
      v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v59 = *(v58 - 8);
      v60 = *(v59 + 48);
      v61 = v56;
      if (v60(a2 + v57, 1, v58))
      {
        goto LABEL_93;
      }

      v91 = swift_getEnumCaseMultiPayload();
      if (v91 > 4)
      {
        if (v91 <= 7)
        {
          if (v91 == 5 || v91 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v91 != 8 && v91 != 9)
        {
          goto LABEL_261;
        }

        goto LABEL_249;
      }

      if (v91 > 2)
      {
        goto LABEL_246;
      }

      if (v91 == 1)
      {
        goto LABEL_249;
      }

      if (v91 != 2)
      {
        goto LABEL_261;
      }

      goto LABEL_246;
    }

    v43 = *a2;
    *a1 = *a2;
    v44 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v48 = v43;
    if (v47(a2 + v44, 1, v45))
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v44, a2 + v44, *(*(v49 - 8) + 64));
      goto LABEL_263;
    }

    v90 = swift_getEnumCaseMultiPayload();
    if (v90 > 4)
    {
      if (v90 <= 7)
      {
        if (v90 == 5 || v90 == 6)
        {
          goto LABEL_238;
        }

        goto LABEL_259;
      }

      if (v90 != 8 && v90 != 9)
      {
        goto LABEL_259;
      }
    }

    else
    {
      if (v90 > 2)
      {
LABEL_238:
        v208 = sub_21DBF563C();
        (*(*(v208 - 8) + 16))(a1 + v44, a2 + v44, v208);
        swift_storeEnumTagMultiPayload();
LABEL_260:
        (*(v46 + 56))(a1 + v44, 0, 1, v45);
        goto LABEL_263;
      }

      if (v90 != 1)
      {
        if (v90 == 2)
        {
          goto LABEL_238;
        }

LABEL_259:
        memcpy(a1 + v44, a2 + v44, *(v46 + 64));
        goto LABEL_260;
      }
    }

    v209 = *(a2 + v44);
    *(a1 + v44) = v209;
    v210 = v209;
    swift_storeEnumTagMultiPayload();
    goto LABEL_260;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90, &unk_21DC31740);
  memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_265:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_21D924E4C(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    sub_21D91BA78(a1, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v34 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v35 = *(v34 - 8);
              if ((*(v35 + 48))(v4, 1, v34))
              {
                v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
                memcpy(a1, v4, *(*(v36 - 8) + 64));
              }

              else
              {
                *a1 = *v4;
                v65 = *(v34 + 20);
                v66 = sub_21DBF6C1C();
                v234 = *(*(v66 - 8) + 16);
                sub_21DBF8E0C();
                v234(a1 + v65, v4 + v65, v66);
                (*(v35 + 56))(a1, 0, 1, v34);
              }

              v67 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v68 = (a1 + v67);
              v69 = (v4 + v67);
              if (v69[1])
              {
                *v68 = *v69;
                v68[1] = v69[1];
                v70 = v69[2];
                v68[2] = v70;
                sub_21DBF8E0C();
                v71 = v70;
              }

              else
              {
                v72 = *v69;
                v68[2] = v69[2];
                *v68 = v72;
              }

              goto LABEL_236;
            case 7:
              v40 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v41 = *(v40 - 8);
              if ((*(v41 + 48))(v4, 1, v40))
              {
                v42 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, v4, *(*(v42 - 8) + 64));
              }

              else
              {
                v81 = sub_21DBF563C();
                (*(*(v81 - 8) + 16))(a1, v4, v81);
                *(a1 + *(v40 + 20)) = *(v4 + *(v40 + 20));
                (*(v41 + 56))(a1, 0, 1, v40);
              }

              v82 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v82 + 20)) = *(v4 + *(v82 + 20));
              goto LABEL_236;
            case 8:
              *a1 = *v4;
              v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v8 = sub_21DBF8D7C();
              (*(*(v8 - 8) + 16))(a1 + v7, v4 + v7, v8);
LABEL_236:
              swift_storeEnumTagMultiPayload();
              goto LABEL_237;
          }

LABEL_51:
          memcpy(a1, v4, *(*(v5 - 8) + 64));
LABEL_237:
          v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
          *(a1 + *(v210 + 48)) = *(v4 + *(v210 + 48));
          *(a1 + *(v210 + 64)) = *(v4 + *(v210 + 64));
          sub_21DBF8E0C();
          goto LABEL_265;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *v4;
          *(a1 + 8) = *(v4 + 8);
          *(a1 + 9) = *(v4 + 9);
          *(a1 + 10) = *(v4 + 10);
          v24 = v4[2];
          a1[2] = v24;
          v25 = v24;
          goto LABEL_236;
        }

        v37 = *v4;
        *a1 = *v4;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        v38 = *(v21 + 48);
        v39 = v37;
        if (v38(v4 + v19, 1, v20))
        {
LABEL_44:
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          memcpy(a1 + v19, v4 + v19, *(*(v33 - 8) + 64));
          goto LABEL_236;
        }

        v73 = swift_getEnumCaseMultiPayload();
        if (v73 > 4)
        {
          if (v73 <= 7)
          {
            if (v73 == 5 || v73 == 6)
            {
              goto LABEL_186;
            }

            goto LABEL_234;
          }

          if (v73 != 8 && v73 != 9)
          {
            goto LABEL_234;
          }

LABEL_185:
          v155 = *(v4 + v19);
          *(a1 + v19) = v155;
          v156 = v155;
          swift_storeEnumTagMultiPayload();
LABEL_235:
          (*(v21 + 56))(a1 + v19, 0, 1, v20);
          goto LABEL_236;
        }

        if (v73 <= 2)
        {
          if (v73 != 1)
          {
            if (v73 == 2)
            {
              goto LABEL_186;
            }

LABEL_234:
            memcpy(a1 + v19, v4 + v19, *(v21 + 64));
            goto LABEL_235;
          }

          goto LABEL_185;
        }

LABEL_186:
        v157 = sub_21DBF563C();
        (*(*(v157 - 8) + 16))(a1 + v19, v4 + v19, v157);
        swift_storeEnumTagMultiPayload();
        goto LABEL_235;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v30 = *v4;
          *a1 = *v4;
          v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = *(v20 - 8);
          v31 = *(v21 + 48);
          v32 = v30;
          if (v31(v4 + v19, 1, v20))
          {
            goto LABEL_44;
          }

          v55 = swift_getEnumCaseMultiPayload();
          if (v55 > 4)
          {
            if (v55 <= 7)
            {
              if (v55 == 5 || v55 == 6)
              {
                goto LABEL_186;
              }

              goto LABEL_234;
            }

            if (v55 != 8 && v55 != 9)
            {
              goto LABEL_234;
            }

            goto LABEL_185;
          }

          if (v55 > 2)
          {
            goto LABEL_186;
          }

          if (v55 == 1)
          {
            goto LABEL_185;
          }

          if (v55 != 2)
          {
            goto LABEL_234;
          }
        }

        else
        {
          v18 = *v4;
          *a1 = *v4;
          v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = *(v20 - 8);
          v22 = *(v21 + 48);
          v23 = v18;
          if (v22(v4 + v19, 1, v20))
          {
            goto LABEL_44;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_186;
              }

              goto LABEL_234;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_234;
            }

            goto LABEL_185;
          }

          if (v52 > 2)
          {
            goto LABEL_186;
          }

          if (v52 == 1)
          {
            goto LABEL_185;
          }

          if (v52 != 2)
          {
            goto LABEL_234;
          }
        }

        goto LABEL_186;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_51;
        }

        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = swift_getEnumCaseMultiPayload();
        if (v13 <= 4)
        {
          if (v13 > 2)
          {
LABEL_100:
            v83 = sub_21DBF563C();
            (*(*(v83 - 8) + 16))(a1, v4, v83);
            swift_storeEnumTagMultiPayload();
            goto LABEL_156;
          }

          if (v13 != 1)
          {
            if (v13 == 2)
            {
              goto LABEL_100;
            }

            goto LABEL_155;
          }

LABEL_103:
          v84 = *v4;
          *a1 = *v4;
          v85 = v84;
          swift_storeEnumTagMultiPayload();
          goto LABEL_156;
        }

        if (v13 > 7)
        {
          if (v13 == 8 || v13 == 9)
          {
            goto LABEL_103;
          }
        }

        else if (v13 == 5 || v13 == 6)
        {
          goto LABEL_100;
        }

LABEL_155:
        memcpy(a1, v4, *(*(v12 - 8) + 64));
LABEL_156:
        v103 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v104 = v103[5];
        v105 = a1 + v104;
        v106 = v4 + v104;
        if (*(v4 + v104 + 8))
        {
          v235 = v4;
          *v105 = *v106;
          *(v105 + 1) = *(v106 + 1);
          v107 = *(v106 + 2);
          v108 = *(v106 + 3);
          v109 = *(v106 + 4);
          v110 = *(v106 + 5);
          v112 = *(v106 + 6);
          v111 = *(v106 + 7);
          v230 = v106[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v107, v108, v109, v110, v112, v111, v230);
          *(v105 + 2) = v107;
          *(v105 + 3) = v108;
          *(v105 + 4) = v109;
          *(v105 + 5) = v110;
          *(v105 + 6) = v112;
          *(v105 + 7) = v111;
          v105[64] = v230;
          v105[65] = v106[65];
          v105[66] = v106[66];
          v105[67] = v106[67];
          v105[68] = v106[68];
          v113 = v106[120];
          if (v113 == 255)
          {
            v126 = *(v106 + 72);
            v127 = *(v106 + 88);
            v128 = *(v106 + 104);
            v105[120] = v106[120];
            *(v105 + 104) = v128;
            *(v105 + 88) = v127;
            *(v105 + 72) = v126;
          }

          else
          {
            v114 = *(v106 + 9);
            v231 = *(v106 + 10);
            v115 = *(v106 + 11);
            v116 = *(v106 + 12);
            v117 = *(v106 + 13);
            v118 = *(v106 + 14);
            v119 = v113 & 1;
            sub_21D0FB960(v114, v231, v115, v116, v117, v118, v113 & 1);
            *(v105 + 9) = v114;
            *(v105 + 10) = v231;
            *(v105 + 11) = v115;
            *(v105 + 12) = v116;
            *(v105 + 13) = v117;
            *(v105 + 14) = v118;
            v105[120] = v119;
          }

          v105[121] = v106[121];
          v4 = v235;
          goto LABEL_162;
        }

LABEL_159:
        v120 = *v106;
        v121 = *(v106 + 1);
        v122 = *(v106 + 3);
        *(v105 + 2) = *(v106 + 2);
        *(v105 + 3) = v122;
        *v105 = v120;
        *(v105 + 1) = v121;
        v123 = *(v106 + 4);
        v124 = *(v106 + 5);
        v125 = *(v106 + 6);
        *(v105 + 106) = *(v106 + 106);
        *(v105 + 5) = v124;
        *(v105 + 6) = v125;
        *(v105 + 4) = v123;
LABEL_162:
        *(a1 + v103[6]) = *(v4 + v103[6]);
        *(a1 + v103[7]) = *(v4 + v103[7]);
        *(a1 + v103[8]) = *(v4 + v103[8]);
        *(a1 + v103[9]) = *(v4 + v103[9]);
        *(a1 + v103[10]) = *(v4 + v103[10]);
        v129 = v103[11];
        v130 = *(v4 + v129);
        *(a1 + v129) = v130;
        v131 = v130;
        goto LABEL_236;
      }

      v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 4)
      {
        if (v29 > 2)
        {
LABEL_104:
          v86 = sub_21DBF563C();
          (*(*(v86 - 8) + 16))(a1, v4, v86);
          swift_storeEnumTagMultiPayload();
          goto LABEL_164;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_104;
          }

          goto LABEL_163;
        }

LABEL_107:
        v87 = *v4;
        *a1 = *v4;
        v88 = v87;
        swift_storeEnumTagMultiPayload();
        goto LABEL_164;
      }

      if (v29 > 7)
      {
        if (v29 == 8 || v29 == 9)
        {
          goto LABEL_107;
        }
      }

      else if (v29 == 5 || v29 == 6)
      {
        goto LABEL_104;
      }

LABEL_163:
      memcpy(a1, v4, *(*(v28 - 8) + 64));
LABEL_164:
      v103 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v132 = v103[5];
      v105 = a1 + v132;
      v106 = v4 + v132;
      if (*(v4 + v132 + 8))
      {
        v236 = v4;
        *v105 = *v106;
        *(v105 + 1) = *(v106 + 1);
        v133 = *(v106 + 2);
        v134 = *(v106 + 3);
        v135 = *(v106 + 4);
        v136 = *(v106 + 5);
        v137 = *(v106 + 6);
        v138 = *(v106 + 7);
        v232 = v106[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v133, v134, v135, v136, v137, v138, v232);
        *(v105 + 2) = v133;
        *(v105 + 3) = v134;
        *(v105 + 4) = v135;
        *(v105 + 5) = v136;
        *(v105 + 6) = v137;
        *(v105 + 7) = v138;
        v105[64] = v232;
        v105[65] = v106[65];
        v105[66] = v106[66];
        v105[67] = v106[67];
        v105[68] = v106[68];
        v139 = v106[120];
        if (v139 == 255)
        {
          v146 = *(v106 + 72);
          v147 = *(v106 + 88);
          v148 = *(v106 + 104);
          v105[120] = v106[120];
          *(v105 + 104) = v148;
          *(v105 + 88) = v147;
          *(v105 + 72) = v146;
        }

        else
        {
          v140 = *(v106 + 9);
          v233 = *(v106 + 10);
          v141 = *(v106 + 11);
          v142 = *(v106 + 12);
          v143 = *(v106 + 13);
          v144 = *(v106 + 14);
          v145 = v139 & 1;
          sub_21D0FB960(v140, v233, v141, v142, v143, v144, v139 & 1);
          *(v105 + 9) = v140;
          *(v105 + 10) = v233;
          *(v105 + 11) = v141;
          *(v105 + 12) = v142;
          *(v105 + 13) = v143;
          *(v105 + 14) = v144;
          v105[120] = v145;
        }

        v105[121] = v106[121];
        v4 = v236;
        goto LABEL_162;
      }

      goto LABEL_159;
    }

    v9 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90, &unk_21DC31740);
      memcpy(a1, v4, *(*(v11 - 8) + 64));
LABEL_265:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v62 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v63 = *(v62 - 8);
            if ((*(v63 + 48))(v4, 1, v62))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, v4, *(*(v64 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v92 = *(v62 + 20);
              v93 = sub_21DBF6C1C();
              v224 = *(*(v93 - 8) + 16);
              sub_21DBF8E0C();
              v224(a1 + v92, v4 + v92, v93);
              (*(v63 + 56))(a1, 0, 1, v62);
            }

            v94 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v95 = (a1 + v94);
            v96 = (v4 + v94);
            if (v96[1])
            {
              *v95 = *v96;
              v95[1] = v96[1];
              v97 = v96[2];
              v95[2] = v97;
              sub_21DBF8E0C();
              v98 = v97;
            }

            else
            {
              v99 = *v96;
              v95[2] = v96[2];
              *v95 = v99;
            }

            goto LABEL_263;
          case 7:
            v78 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v79 = *(v78 - 8);
            if ((*(v79 + 48))(v4, 1, v78))
            {
              v80 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v80 - 8) + 64));
            }

            else
            {
              v101 = sub_21DBF563C();
              (*(*(v101 - 8) + 16))(a1, v4, v101);
              *(a1 + *(v78 + 20)) = *(v4 + *(v78 + 20));
              (*(v79 + 56))(a1, 0, 1, v78);
            }

            v102 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v102 + 20)) = *(v4 + *(v102 + 20));
            goto LABEL_263;
          case 8:
            *a1 = *v4;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(a1 + v16, v4 + v16, v17);
LABEL_263:
            swift_storeEnumTagMultiPayload();
            goto LABEL_264;
        }

LABEL_99:
        memcpy(a1, v4, *(*(v14 - 8) + 64));
LABEL_264:
        *(a1 + *(v9 + 20)) = *(v4 + *(v9 + 20));
        (*(v10 + 56))(a1, 0, 1, v9);
        goto LABEL_265;
      }

      if (v15 != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v50 = v4[2];
        a1[2] = v50;
        v51 = v50;
        goto LABEL_263;
      }

      v240 = v10;
      v74 = *v4;
      *a1 = *v4;
      v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v59 = *(v58 - 8);
      v75 = *(v59 + 48);
      v76 = v74;
      if (v75(v4 + v57, 1, v58))
      {
LABEL_94:
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v57, v4 + v57, *(*(v77 - 8) + 64));
        v10 = v240;
        goto LABEL_263;
      }

      v100 = swift_getEnumCaseMultiPayload();
      v10 = v240;
      if (v100 > 4)
      {
        if (v100 <= 7)
        {
          if (v100 == 5 || v100 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v100 != 8 && v100 != 9)
        {
          goto LABEL_261;
        }

LABEL_249:
        v215 = *(v4 + v57);
        *(a1 + v57) = v215;
        v216 = v215;
        swift_storeEnumTagMultiPayload();
        goto LABEL_262;
      }

      if (v100 <= 2)
      {
        if (v100 != 1)
        {
          if (v100 == 2)
          {
            goto LABEL_246;
          }

LABEL_261:
          memcpy(a1 + v57, v4 + v57, *(v59 + 64));
          goto LABEL_262;
        }

        goto LABEL_249;
      }

LABEL_246:
      v214 = sub_21DBF563C();
      (*(*(v214 - 8) + 16))(a1 + v57, v4 + v57, v214);
      swift_storeEnumTagMultiPayload();
LABEL_262:
      (*(v59 + 56))(a1 + v57, 0, 1, v58);
      goto LABEL_263;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_99;
        }

        v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v27 = swift_getEnumCaseMultiPayload();
        v237 = v10;
        v229 = v9;
        if (v27 > 4)
        {
          if (v27 <= 7)
          {
            if (v27 == 5 || v27 == 6)
            {
              goto LABEL_170;
            }

            goto LABEL_217;
          }

          if (v27 != 8 && v27 != 9)
          {
            goto LABEL_217;
          }
        }

        else
        {
          if (v27 > 2)
          {
LABEL_170:
            v149 = sub_21DBF563C();
            (*(*(v149 - 8) + 16))(a1, v4, v149);
            swift_storeEnumTagMultiPayload();
LABEL_218:
            v158 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v159 = v158[5];
            v160 = a1 + v159;
            v161 = v4 + v159;
            if (*(v4 + v159 + 8))
            {
              *v160 = *v161;
              *(v160 + 1) = *(v161 + 1);
              v162 = *(v161 + 2);
              v163 = *(v161 + 3);
              v164 = *(v161 + 4);
              v165 = *(v161 + 5);
              v166 = *(v161 + 6);
              v220 = *(v161 + 7);
              v225 = v161[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v162, v163, v164, v165, v166, v220, v225);
              *(v160 + 2) = v162;
              *(v160 + 3) = v163;
              *(v160 + 4) = v164;
              *(v160 + 5) = v165;
              *(v160 + 6) = v166;
              *(v160 + 7) = v220;
              v160[64] = v225;
              v160[65] = v161[65];
              v160[66] = v161[66];
              v160[67] = v161[67];
              v160[68] = v161[68];
              v167 = v161[120];
              if (v167 == 255)
              {
                v179 = *(v161 + 72);
                v180 = *(v161 + 88);
                v181 = *(v161 + 104);
                v160[120] = v161[120];
                *(v160 + 104) = v181;
                *(v160 + 88) = v180;
                *(v160 + 72) = v179;
              }

              else
              {
                v168 = *(v161 + 9);
                v169 = *(v161 + 11);
                v170 = *(v161 + 12);
                v171 = *(v161 + 13);
                v221 = *(v161 + 14);
                v226 = *(v161 + 10);
                v172 = v167 & 1;
                sub_21D0FB960(v168, v226, v169, v170, v171, v221, v167 & 1);
                *(v160 + 9) = v168;
                *(v160 + 10) = v226;
                *(v160 + 11) = v169;
                *(v160 + 12) = v170;
                *(v160 + 13) = v171;
                *(v160 + 14) = v221;
                v160[120] = v172;
              }

              v10 = v237;
              v9 = v229;
              v160[121] = v161[121];
            }

            else
            {
              v173 = *v161;
              v174 = *(v161 + 1);
              v175 = *(v161 + 3);
              *(v160 + 2) = *(v161 + 2);
              *(v160 + 3) = v175;
              *v160 = v173;
              *(v160 + 1) = v174;
              v176 = *(v161 + 4);
              v177 = *(v161 + 5);
              v178 = *(v161 + 6);
              *(v160 + 106) = *(v161 + 106);
              *(v160 + 5) = v177;
              *(v160 + 6) = v178;
              *(v160 + 4) = v176;
            }

            *(a1 + v158[6]) = *(v4 + v158[6]);
            *(a1 + v158[7]) = *(v4 + v158[7]);
            *(a1 + v158[8]) = *(v4 + v158[8]);
            *(a1 + v158[9]) = *(v4 + v158[9]);
            *(a1 + v158[10]) = *(v4 + v158[10]);
            v182 = v158[11];
            v183 = *(v4 + v182);
            *(a1 + v182) = v183;
            v184 = v183;
            goto LABEL_263;
          }

          if (v27 != 1)
          {
            if (v27 == 2)
            {
              goto LABEL_170;
            }

LABEL_217:
            memcpy(a1, v4, *(*(v26 - 8) + 64));
            goto LABEL_218;
          }
        }

        v150 = *v4;
        *a1 = *v4;
        v151 = v150;
        swift_storeEnumTagMultiPayload();
        goto LABEL_218;
      }

      v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v54 = swift_getEnumCaseMultiPayload();
      v239 = v10;
      if (v54 > 4)
      {
        if (v54 <= 7)
        {
          if (v54 == 5 || v54 == 6)
          {
            goto LABEL_178;
          }

          goto LABEL_226;
        }

        if (v54 != 8 && v54 != 9)
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v54 > 2)
        {
LABEL_178:
          v152 = sub_21DBF563C();
          (*(*(v152 - 8) + 16))(a1, v4, v152);
          swift_storeEnumTagMultiPayload();
LABEL_227:
          v185 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v186 = v185[5];
          v187 = a1 + v186;
          v188 = v4 + v186;
          if (*(v4 + v186 + 8))
          {
            *v187 = *v188;
            *(v187 + 1) = *(v188 + 1);
            v189 = *(v188 + 2);
            v190 = *(v188 + 3);
            v192 = *(v188 + 4);
            v191 = *(v188 + 5);
            v227 = *(v188 + 6);
            v218 = *(v188 + 7);
            v222 = v188[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v189, v190, v192, v191, v227, v218, v222);
            *(v187 + 2) = v189;
            *(v187 + 3) = v190;
            *(v187 + 4) = v192;
            *(v187 + 5) = v191;
            *(v187 + 6) = v227;
            *(v187 + 7) = v218;
            v187[64] = v222;
            v187[65] = v188[65];
            v187[66] = v188[66];
            v187[67] = v188[67];
            v187[68] = v188[68];
            v193 = v188[120];
            if (v193 == 255)
            {
              v204 = *(v188 + 72);
              v205 = *(v188 + 88);
              v206 = *(v188 + 104);
              v187[120] = v188[120];
              *(v187 + 104) = v206;
              *(v187 + 88) = v205;
              *(v187 + 72) = v204;
            }

            else
            {
              v223 = *(v188 + 10);
              v228 = *(v188 + 9);
              v194 = *(v188 + 11);
              v195 = *(v188 + 12);
              v196 = *(v188 + 13);
              v219 = *(v188 + 14);
              v197 = v193 & 1;
              sub_21D0FB960(v228, v223, v194, v195, v196, v219, v193 & 1);
              *(v187 + 9) = v228;
              *(v187 + 10) = v223;
              *(v187 + 11) = v194;
              *(v187 + 12) = v195;
              *(v187 + 13) = v196;
              *(v187 + 14) = v219;
              v187[120] = v197;
            }

            v10 = v239;
            v187[121] = v188[121];
          }

          else
          {
            v198 = *v188;
            v199 = *(v188 + 1);
            v200 = *(v188 + 3);
            *(v187 + 2) = *(v188 + 2);
            *(v187 + 3) = v200;
            *v187 = v198;
            *(v187 + 1) = v199;
            v201 = *(v188 + 4);
            v202 = *(v188 + 5);
            v203 = *(v188 + 6);
            *(v187 + 106) = *(v188 + 106);
            *(v187 + 5) = v202;
            *(v187 + 6) = v203;
            *(v187 + 4) = v201;
          }

          *(a1 + v185[6]) = *(v4 + v185[6]);
          *(a1 + v185[7]) = *(v4 + v185[7]);
          *(a1 + v185[8]) = *(v4 + v185[8]);
          *(a1 + v185[9]) = *(v4 + v185[9]);
          *(a1 + v185[10]) = *(v4 + v185[10]);
          v207 = v185[11];
          v208 = *(v4 + v207);
          *(a1 + v207) = v208;
          v209 = v208;
          goto LABEL_263;
        }

        if (v54 != 1)
        {
          if (v54 == 2)
          {
            goto LABEL_178;
          }

LABEL_226:
          memcpy(a1, v4, *(*(v53 - 8) + 64));
          goto LABEL_227;
        }
      }

      v153 = *v4;
      *a1 = *v4;
      v154 = v153;
      swift_storeEnumTagMultiPayload();
      goto LABEL_227;
    }

    if (v15 == 2)
    {
      v240 = v10;
      v56 = *v4;
      *a1 = *v4;
      v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v59 = *(v58 - 8);
      v60 = *(v59 + 48);
      v61 = v56;
      if (v60(v4 + v57, 1, v58))
      {
        goto LABEL_94;
      }

      v91 = swift_getEnumCaseMultiPayload();
      v10 = v240;
      if (v91 > 4)
      {
        if (v91 <= 7)
        {
          if (v91 == 5 || v91 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v91 != 8 && v91 != 9)
        {
          goto LABEL_261;
        }

        goto LABEL_249;
      }

      if (v91 > 2)
      {
        goto LABEL_246;
      }

      if (v91 == 1)
      {
        goto LABEL_249;
      }

      if (v91 != 2)
      {
        goto LABEL_261;
      }

      goto LABEL_246;
    }

    v238 = v10;
    v43 = *v4;
    *a1 = *v4;
    v44 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v48 = v43;
    if (v47(v4 + v44, 1, v45))
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v44, v4 + v44, *(*(v49 - 8) + 64));
      v10 = v238;
      goto LABEL_263;
    }

    v89 = swift_getEnumCaseMultiPayload();
    v90 = v45;
    if (v89 > 4)
    {
      v10 = v238;
      if (v89 <= 7)
      {
        if (v89 == 5 || v89 == 6)
        {
          goto LABEL_238;
        }

        goto LABEL_259;
      }

      if (v89 != 8 && v89 != 9)
      {
        goto LABEL_259;
      }
    }

    else
    {
      v10 = v238;
      if (v89 > 2)
      {
LABEL_238:
        v211 = sub_21DBF563C();
        (*(*(v211 - 8) + 16))(a1 + v44, v4 + v44, v211);
        swift_storeEnumTagMultiPayload();
LABEL_260:
        (*(v46 + 56))(a1 + v44, 0, 1, v90);
        goto LABEL_263;
      }

      if (v89 != 1)
      {
        if (v89 == 2)
        {
          goto LABEL_238;
        }

LABEL_259:
        memcpy(a1 + v44, v4 + v44, *(v46 + 64));
        goto LABEL_260;
      }
    }

    v212 = *(v4 + v44);
    *(a1 + v44) = v212;
    v213 = v212;
    swift_storeEnumTagMultiPayload();
    goto LABEL_260;
  }

  return a1;
}

void *sub_21D927C94(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v32 = *(v31 - 8);
          if ((*(v32 + 48))(a2, 1, v31))
          {
            v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v33 - 8) + 64));
          }

          else
          {
            v42 = sub_21DBF563C();
            (*(*(v42 - 8) + 32))(a1, a2, v42);
            *(a1 + *(v31 + 20)) = *(a2 + *(v31 + 20));
            (*(v32 + 56))(a1, 0, 1, v31);
          }

          v43 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v43 + 20)) = *(a2 + *(v43 + 20));
          goto LABEL_158;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_49;
        }

        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v25 = sub_21DBF8D7C();
        (*(*(v25 - 8) + 32))(a1 + v24, a2 + v24, v25);
LABEL_158:
        swift_storeEnumTagMultiPayload();
        goto LABEL_159;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v14 = *(v13 - 8);
          if ((*(v14 + 48))(a2, 1, v13))
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v15 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v48 = *(v13 + 20);
            v49 = sub_21DBF6C1C();
            (*(*(v49 - 8) + 32))(a1 + v48, a2 + v48, v49);
            (*(v14 + 56))(a1, 0, 1, v13);
          }

          v50 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v51 = a1 + v50;
          v52 = a2 + v50;
          *v51 = *v52;
          *(v51 + 2) = *(v52 + 2);
          goto LABEL_158;
        }

        goto LABEL_49;
      }

      *a1 = *a2;
      v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(a2 + v21, 1, v22))
      {
        v40 = swift_getEnumCaseMultiPayload();
        if (v40 <= 3)
        {
          if (v40 == 2 || v40 == 3)
          {
            goto LABEL_91;
          }
        }

        else if (v40 == 4 || v40 == 5 || v40 == 6)
        {
          goto LABEL_91;
        }

        goto LABEL_156;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v29 = swift_getEnumCaseMultiPayload();
          if (v29 <= 3)
          {
            if (v29 == 2 || v29 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v29 == 4 || v29 == 5 || v29 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_99;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v8 = swift_getEnumCaseMultiPayload();
          if (v8 <= 3)
          {
            if (v8 == 2 || v8 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v8 == 4 || v8 == 5 || v8 == 6)
          {
LABEL_10:
            v9 = sub_21DBF563C();
            (*(*(v9 - 8) + 32))(a1, a2, v9);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v56 = v55[5];
            v57 = (a1 + v56);
            v58 = (a2 + v56);
            v59 = v58[3];
            v57[2] = v58[2];
            v57[3] = v59;
            v60 = v58[1];
            *v57 = *v58;
            v57[1] = v60;
            *(v57 + 106) = *(v58 + 106);
            v61 = v58[6];
            v57[5] = v58[5];
            v57[6] = v61;
            v57[4] = v58[4];
            *(a1 + v55[6]) = *(a2 + v55[6]);
            *(a1 + v55[7]) = *(a2 + v55[7]);
            *(a1 + v55[8]) = *(a2 + v55[8]);
            *(a1 + v55[9]) = *(a2 + v55[9]);
            *(a1 + v55[10]) = *(a2 + v55[10]);
            *(a1 + v55[11]) = *(a2 + v55[11]);
            goto LABEL_158;
          }

LABEL_99:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          goto LABEL_100;
        }

LABEL_49:
        memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_159:
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
        *(a1 + *(v80 + 48)) = *(a2 + *(v80 + 48));
        *(a1 + *(v80 + 64)) = *(a2 + *(v80 + 64));
        goto LABEL_182;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(a2 + v21, 1, v22))
        {
          goto LABEL_46;
        }

        v53 = swift_getEnumCaseMultiPayload();
        if (v53 <= 3)
        {
          if (v53 == 2 || v53 == 3)
          {
            goto LABEL_91;
          }
        }

        else if (v53 == 4 || v53 == 5 || v53 == 6)
        {
LABEL_91:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 32))(a1 + v21, a2 + v21, v54);
          swift_storeEnumTagMultiPayload();
LABEL_157:
          (*(v23 + 56))(a1 + v21, 0, 1, v22);
          goto LABEL_158;
        }

LABEL_156:
        memcpy(a1 + v21, a2 + v21, *(v23 + 64));
        goto LABEL_157;
      }

      *a1 = *a2;
      v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(a2 + v21, 1, v22))
      {
        v41 = swift_getEnumCaseMultiPayload();
        if (v41 <= 3)
        {
          if (v41 == 2 || v41 == 3)
          {
            goto LABEL_91;
          }
        }

        else if (v41 == 4 || v41 == 5 || v41 == 6)
        {
          goto LABEL_91;
        }

        goto LABEL_156;
      }
    }

LABEL_46:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v21, a2 + v21, *(*(v30 - 8) + 64));
    goto LABEL_158;
  }

  v10 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a2, 1, v10))
  {
    v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 > 3)
    {
      if (v17 > 6)
      {
        if (v17 == 7)
        {
          v45 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v46 = *(v45 - 8);
          if ((*(v46 + 48))(a2, 1, v45))
          {
            v47 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v47 - 8) + 64));
          }

          else
          {
            v64 = sub_21DBF563C();
            (*(*(v64 - 8) + 32))(a1, a2, v64);
            *(a1 + *(v45 + 20)) = *(a2 + *(v45 + 20));
            (*(v46 + 56))(a1, 0, 1, v45);
          }

          v65 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v65 + 20)) = *(a2 + *(v65 + 20));
          goto LABEL_180;
        }

        if (v17 != 8)
        {
          goto LABEL_92;
        }

        *a1 = *a2;
        v37 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v38 = sub_21DBF8D7C();
        (*(*(v38 - 8) + 32))(a1 + v37, a2 + v37, v38);
LABEL_180:
        swift_storeEnumTagMultiPayload();
        goto LABEL_181;
      }

      if (v17 != 4)
      {
        if (v17 == 6)
        {
          v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v27 = *(v26 - 8);
          if ((*(v27 + 48))(a2, 1, v26))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v28 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v66 = *(v26 + 20);
            v67 = sub_21DBF6C1C();
            (*(*(v67 - 8) + 32))(a1 + v66, a2 + v66, v67);
            (*(v27 + 56))(a1, 0, 1, v26);
          }

          v68 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v69 = a1 + v68;
          v70 = a2 + v68;
          *v69 = *v70;
          *(v69 + 2) = *(v70 + 2);
          goto LABEL_180;
        }

        goto LABEL_92;
      }

      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(a2 + v34, 1, v35))
      {
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 <= 3)
        {
          if (v62 == 2 || v62 == 3)
          {
            goto LABEL_135;
          }
        }

        else if (v62 == 4 || v62 == 5 || v62 == 6)
        {
          goto LABEL_135;
        }

        goto LABEL_178;
      }
    }

    else
    {
      if (v17 <= 1)
      {
        if (!v17)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v39 = swift_getEnumCaseMultiPayload();
          if (v39 <= 3)
          {
            if (v39 == 2 || v39 == 3)
            {
              goto LABEL_26;
            }
          }

          else if (v39 == 4 || v39 == 5 || v39 == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_151;
        }

        if (v17 == 1)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_26;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_26:
            v20 = sub_21DBF563C();
            (*(*(v20 - 8) + 32))(a1, a2, v20);
            swift_storeEnumTagMultiPayload();
LABEL_152:
            v73 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v74 = v73[5];
            v75 = (a1 + v74);
            v76 = (a2 + v74);
            v77 = v76[3];
            v75[2] = v76[2];
            v75[3] = v77;
            v78 = v76[1];
            *v75 = *v76;
            v75[1] = v78;
            *(v75 + 106) = *(v76 + 106);
            v79 = v76[6];
            v75[5] = v76[5];
            v75[6] = v79;
            v75[4] = v76[4];
            *(a1 + v73[6]) = *(a2 + v73[6]);
            *(a1 + v73[7]) = *(a2 + v73[7]);
            *(a1 + v73[8]) = *(a2 + v73[8]);
            *(a1 + v73[9]) = *(a2 + v73[9]);
            *(a1 + v73[10]) = *(a2 + v73[10]);
            *(a1 + v73[11]) = *(a2 + v73[11]);
            goto LABEL_180;
          }

LABEL_151:
          memcpy(a1, a2, *(*(v18 - 8) + 64));
          goto LABEL_152;
        }

LABEL_92:
        memcpy(a1, a2, *(*(v16 - 8) + 64));
LABEL_181:
        *(a1 + *(v10 + 20)) = *(a2 + *(v10 + 20));
        (*(v11 + 56))(a1, 0, 1, v10);
        goto LABEL_182;
      }

      if (v17 != 2)
      {
        *a1 = *a2;
        v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(a2 + v34, 1, v35))
        {
          goto LABEL_82;
        }

        v71 = swift_getEnumCaseMultiPayload();
        if (v71 <= 3)
        {
          if (v71 == 2 || v71 == 3)
          {
            goto LABEL_135;
          }
        }

        else if (v71 == 4 || v71 == 5 || v71 == 6)
        {
LABEL_135:
          v72 = sub_21DBF563C();
          (*(*(v72 - 8) + 32))(a1 + v34, a2 + v34, v72);
          swift_storeEnumTagMultiPayload();
LABEL_179:
          (*(v36 + 56))(a1 + v34, 0, 1, v35);
          goto LABEL_180;
        }

LABEL_178:
        memcpy(a1 + v34, a2 + v34, *(v36 + 64));
        goto LABEL_179;
      }

      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(a2 + v34, 1, v35))
      {
        v63 = swift_getEnumCaseMultiPayload();
        if (v63 <= 3)
        {
          if (v63 == 2 || v63 == 3)
          {
            goto LABEL_135;
          }
        }

        else if (v63 == 4 || v63 == 5 || v63 == 6)
        {
          goto LABEL_135;
        }

        goto LABEL_178;
      }
    }

LABEL_82:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v34, a2 + v34, *(*(v44 - 8) + 64));
    goto LABEL_180;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90, &unk_21DC31740);
  memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_182:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_21D929F14(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D91BA78(a1, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 6)
        {
          if (EnumCaseMultiPayload == 7)
          {
            v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v32 = *(v31 - 8);
            if ((*(v32 + 48))(a2, 1, v31))
            {
              v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v33 - 8) + 64));
            }

            else
            {
              v42 = sub_21DBF563C();
              (*(*(v42 - 8) + 32))(a1, a2, v42);
              *(a1 + *(v31 + 20)) = *(a2 + *(v31 + 20));
              (*(v32 + 56))(a1, 0, 1, v31);
            }

            v43 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v43 + 20)) = *(a2 + *(v43 + 20));
            goto LABEL_159;
          }

          if (EnumCaseMultiPayload != 8)
          {
            goto LABEL_50;
          }

          *a1 = *a2;
          v24 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v25 = sub_21DBF8D7C();
          (*(*(v25 - 8) + 32))(a1 + v24, a2 + v24, v25);
LABEL_159:
          swift_storeEnumTagMultiPayload();
          goto LABEL_160;
        }

        if (EnumCaseMultiPayload != 4)
        {
          if (EnumCaseMultiPayload == 6)
          {
            v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v14 = *(v13 - 8);
            if ((*(v14 + 48))(a2, 1, v13))
            {
              v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
              memcpy(a1, a2, *(*(v15 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v48 = *(v13 + 20);
              v49 = sub_21DBF6C1C();
              (*(*(v49 - 8) + 32))(a1 + v48, a2 + v48, v49);
              (*(v14 + 56))(a1, 0, 1, v13);
            }

            v50 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v51 = a1 + v50;
            v52 = a2 + v50;
            *v51 = *v52;
            *(v51 + 2) = *(v52 + 2);
            goto LABEL_159;
          }

          goto LABEL_50;
        }

        *a1 = *a2;
        v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = *(v22 - 8);
        if (!(*(v23 + 48))(a2 + v21, 1, v22))
        {
          v40 = swift_getEnumCaseMultiPayload();
          if (v40 <= 3)
          {
            if (v40 == 2 || v40 == 3)
            {
              goto LABEL_92;
            }
          }

          else if (v40 == 4 || v40 == 5 || v40 == 6)
          {
            goto LABEL_92;
          }

          goto LABEL_157;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v29 = swift_getEnumCaseMultiPayload();
            if (v29 <= 3)
            {
              if (v29 == 2 || v29 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v29 == 4 || v29 == 5 || v29 == 6)
            {
              goto LABEL_11;
            }

            goto LABEL_100;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v8 = swift_getEnumCaseMultiPayload();
            if (v8 <= 3)
            {
              if (v8 == 2 || v8 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v8 == 4 || v8 == 5 || v8 == 6)
            {
LABEL_11:
              v9 = sub_21DBF563C();
              (*(*(v9 - 8) + 32))(a1, a2, v9);
              swift_storeEnumTagMultiPayload();
LABEL_101:
              v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v56 = v55[5];
              v57 = (a1 + v56);
              v58 = (a2 + v56);
              v59 = v58[3];
              v57[2] = v58[2];
              v57[3] = v59;
              v60 = v58[1];
              *v57 = *v58;
              v57[1] = v60;
              *(v57 + 106) = *(v58 + 106);
              v61 = v58[6];
              v57[5] = v58[5];
              v57[6] = v61;
              v57[4] = v58[4];
              *(a1 + v55[6]) = *(a2 + v55[6]);
              *(a1 + v55[7]) = *(a2 + v55[7]);
              *(a1 + v55[8]) = *(a2 + v55[8]);
              *(a1 + v55[9]) = *(a2 + v55[9]);
              *(a1 + v55[10]) = *(a2 + v55[10]);
              *(a1 + v55[11]) = *(a2 + v55[11]);
              goto LABEL_159;
            }

LABEL_100:
            memcpy(a1, a2, *(*(v7 - 8) + 64));
            goto LABEL_101;
          }

LABEL_50:
          memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_160:
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88, &qword_21DC31738);
          *(a1 + *(v80 + 48)) = *(a2 + *(v80 + 48));
          *(a1 + *(v80 + 64)) = *(a2 + *(v80 + 64));
          goto LABEL_183;
        }

        if (EnumCaseMultiPayload != 2)
        {
          *a1 = *a2;
          v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = *(v22 - 8);
          if ((*(v23 + 48))(a2 + v21, 1, v22))
          {
            goto LABEL_47;
          }

          v53 = swift_getEnumCaseMultiPayload();
          if (v53 <= 3)
          {
            if (v53 == 2 || v53 == 3)
            {
              goto LABEL_92;
            }
          }

          else if (v53 == 4 || v53 == 5 || v53 == 6)
          {
LABEL_92:
            v54 = sub_21DBF563C();
            (*(*(v54 - 8) + 32))(a1 + v21, a2 + v21, v54);
            swift_storeEnumTagMultiPayload();
LABEL_158:
            (*(v23 + 56))(a1 + v21, 0, 1, v22);
            goto LABEL_159;
          }

LABEL_157:
          memcpy(a1 + v21, a2 + v21, *(v23 + 64));
          goto LABEL_158;
        }

        *a1 = *a2;
        v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = *(v22 - 8);
        if (!(*(v23 + 48))(a2 + v21, 1, v22))
        {
          v41 = swift_getEnumCaseMultiPayload();
          if (v41 <= 3)
          {
            if (v41 == 2 || v41 == 3)
            {
              goto LABEL_92;
            }
          }

          else if (v41 == 4 || v41 == 5 || v41 == 6)
          {
            goto LABEL_92;
          }

          goto LABEL_157;
        }
      }

LABEL_47:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v21, a2 + v21, *(*(v30 - 8) + 64));
      goto LABEL_159;
    }

    v10 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90, &unk_21DC31740);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_183:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 > 3)
    {
      if (v17 > 6)
      {
        if (v17 == 7)
        {
          v45 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v46 = *(v45 - 8);
          if ((*(v46 + 48))(a2, 1, v45))
          {
            v47 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v47 - 8) + 64));
          }

          else
          {
            v64 = sub_21DBF563C();
            (*(*(v64 - 8) + 32))(a1, a2, v64);
            *(a1 + *(v45 + 20)) = *(a2 + *(v45 + 20));
            (*(v46 + 56))(a1, 0, 1, v45);
          }

          v65 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v65 + 20)) = *(a2 + *(v65 + 20));
          goto LABEL_181;
        }

        if (v17 != 8)
        {
          goto LABEL_93;
        }

        *a1 = *a2;
        v37 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v38 = sub_21DBF8D7C();
        (*(*(v38 - 8) + 32))(a1 + v37, a2 + v37, v38);
LABEL_181:
        swift_storeEnumTagMultiPayload();
        goto LABEL_182;
      }

      if (v17 != 4)
      {
        if (v17 == 6)
        {
          v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v27 = *(v26 - 8);
          if ((*(v27 + 48))(a2, 1, v26))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
            memcpy(a1, a2, *(*(v28 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v66 = *(v26 + 20);
            v67 = sub_21DBF6C1C();
            (*(*(v67 - 8) + 32))(a1 + v66, a2 + v66, v67);
            (*(v27 + 56))(a1, 0, 1, v26);
          }

          v68 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v69 = a1 + v68;
          v70 = a2 + v68;
          *v69 = *v70;
          *(v69 + 2) = *(v70 + 2);
          goto LABEL_181;
        }

        goto LABEL_93;
      }

      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(a2 + v34, 1, v35))
      {
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 <= 3)
        {
          if (v62 == 2 || v62 == 3)
          {
            goto LABEL_136;
          }
        }

        else if (v62 == 4 || v62 == 5 || v62 == 6)
        {
          goto LABEL_136;
        }

        goto LABEL_179;
      }
    }

    else
    {
      if (v17 <= 1)
      {
        if (!v17)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v39 = swift_getEnumCaseMultiPayload();
          if (v39 <= 3)
          {
            if (v39 == 2 || v39 == 3)
            {
              goto LABEL_27;
            }
          }

          else if (v39 == 4 || v39 == 5 || v39 == 6)
          {
            goto LABEL_27;
          }

          goto LABEL_152;
        }

        if (v17 == 1)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_27;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_27:
            v20 = sub_21DBF563C();
            (*(*(v20 - 8) + 32))(a1, a2, v20);
            swift_storeEnumTagMultiPayload();
LABEL_153:
            v73 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v74 = v73[5];
            v75 = (a1 + v74);
            v76 = (a2 + v74);
            v77 = v76[3];
            v75[2] = v76[2];
            v75[3] = v77;
            v78 = v76[1];
            *v75 = *v76;
            v75[1] = v78;
            *(v75 + 106) = *(v76 + 106);
            v79 = v76[6];
            v75[5] = v76[5];
            v75[6] = v79;
            v75[4] = v76[4];
            *(a1 + v73[6]) = *(a2 + v73[6]);
            *(a1 + v73[7]) = *(a2 + v73[7]);
            *(a1 + v73[8]) = *(a2 + v73[8]);
            *(a1 + v73[9]) = *(a2 + v73[9]);
            *(a1 + v73[10]) = *(a2 + v73[10]);
            *(a1 + v73[11]) = *(a2 + v73[11]);
            goto LABEL_181;
          }

LABEL_152:
          memcpy(a1, a2, *(*(v18 - 8) + 64));
          goto LABEL_153;
        }

LABEL_93:
        memcpy(a1, a2, *(*(v16 - 8) + 64));
LABEL_182:
        *(a1 + *(v10 + 20)) = *(a2 + *(v10 + 20));
        (*(v11 + 56))(a1, 0, 1, v10);
        goto LABEL_183;
      }

      if (v17 != 2)
      {
        *a1 = *a2;
        v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(a2 + v34, 1, v35))
        {
          goto LABEL_83;
        }

        v71 = swift_getEnumCaseMultiPayload();
        if (v71 <= 3)
        {
          if (v71 == 2 || v71 == 3)
          {
            goto LABEL_136;
          }
        }

        else if (v71 == 4 || v71 == 5 || v71 == 6)
        {
LABEL_136:
          v72 = sub_21DBF563C();
          (*(*(v72 - 8) + 32))(a1 + v34, a2 + v34, v72);
          swift_storeEnumTagMultiPayload();
LABEL_180:
          (*(v36 + 56))(a1 + v34, 0, 1, v35);
          goto LABEL_181;
        }

LABEL_179:
        memcpy(a1 + v34, a2 + v34, *(v36 + 64));
        goto LABEL_180;
      }

      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(a2 + v34, 1, v35))
      {
        v63 = swift_getEnumCaseMultiPayload();
        if (v63 <= 3)
        {
          if (v63 == 2 || v63 == 3)
          {
            goto LABEL_136;
          }
        }

        else if (v63 == 4 || v63 == 5 || v63 == 6)
        {
          goto LABEL_136;
        }

        goto LABEL_179;
      }
    }

LABEL_83:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(a1 + v34, a2 + v34, *(*(v44 - 8) + 64));
    goto LABEL_181;
  }

  return a1;
}

void sub_21D92C1B8(uint64_t a1)
{
  sub_21D92C2BC(319, &qword_27CE63DE0, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
  if (v2 <= 0x3F)
  {
    v4[4] = *(v1 - 8) + 64;
    type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v4[5] = v4;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void sub_21D92C2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D92C334(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D92C37C()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21D919E00(v2, v3);
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.__allocating_init(footerText:footerFont:footerTextColor:isFlipped:isRightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 65) = a6;
  return result;
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.init(footerText:footerFont:footerTextColor:isFlipped:isRightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 65) = a6;
  return v6;
}

double TTRRemindersPrintingPageRenderingUtilities.footerHeight.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_21D92CAE0(v0);
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  return result;
}

uint64_t (*TTRRemindersPrintingPageRenderingUtilities.footerHeight.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = TTRRemindersPrintingPageRenderingUtilities.footerHeight.getter();
  return sub_21D92C540;
}

void *sub_21D92C540(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

Swift::Void __swiftcall TTRRemindersPrintingPageRenderingUtilities.drawFooter(pageNumber:pageCount:in:)(Swift::Int pageNumber, Swift::Int pageCount, __C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v10 = *(v3 + 64);
  MinY = CGRectGetMinY(in);
  v12 = MinY + 12.0 + -1.0;
  v13 = MinY + 1.0;
  if (v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_21D92C980(pageNumber, pageCount);
  v15 = sub_21DBFA12C();

  v16 = sub_21DBFA12C();
  v17 = v16;
  if (*(v3 + 65))
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  if (*(v3 + 65))
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  v21 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D00;
  v22 = *v21;
  *(inited + 32) = *v21;
  v23 = *(v3 + 48);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 40) = v23;
  v24 = v18;
  v25 = v19;
  v26 = v22;
  v27 = v23;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D1BAED0(inited + 32);
  type metadata accessor for Key(0);
  sub_21D112874();
  v28 = sub_21DBF9E5C();

  [v25 sizeWithAttributes_];
  v30 = v29;

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxX = CGRectGetMaxX(v33);
  sub_21D92C780(v25, MaxX - v30, v14, v3);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MinX = CGRectGetMinX(v34);
  sub_21D92C780(v24, MinX, v14, v3);
}

void sub_21D92C780(void *a1, double a2, double a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D20;
  v10 = *v9;
  *(inited + 32) = *v9;
  v11 = *(a4 + 48);
  v12 = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(a4 + 56);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  *(inited + 80) = v14;
  v15 = v10;
  v16 = v11;
  v17 = v13;
  v18 = v14;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0, &qword_21DC09050);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D112874();
  v19 = sub_21DBF9E5C();

  [a1 drawAtPoint:v19 withAttributes:{a2, a3}];
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.deinit()
{

  return v0;
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D92C980(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D20;
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = a2;
  v7 = sub_21DBFA13C();

  return v7;
}

double sub_21D92CAE0(uint64_t a1)
{
  sub_21D92C980(1, 3);
  v2 = sub_21DBFA12C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D00;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = *(a1 + 48);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(inited + 40) = v6;
  v7 = v5;
  v8 = v6;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D1BAED0(inited + 32);
  type metadata accessor for Key(0);
  sub_21D112874();
  v9 = sub_21DBF9E5C();

  [v2 sizeWithAttributes_];
  v11 = v10;

  return v11 + 12.0;
}

void *TTRSearchResultCollector.__allocating_init(performer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v3;
  v2[3] = a1;
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  return v2;
}

void *TTRSearchResultCollector.init(performer:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = v2;
  v1[3] = a1;
  v3 = a1 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  return v1;
}

void TTRSearchResultCollector.start(completionHandler:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[2] = MEMORY[0x277D84F98];

  v5 = v2[4];
  v6 = v2[5];
  v2[4] = a1;
  v2[5] = a2;
  sub_21D0D0E88(v5, v6);
  v7 = v2[3];

  v8 = v7;
  TTRSearchQueryPerformer.start()();
}

uint64_t static TTRSearchResultCollector.promise(performer:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E00, &unk_21DC31970);
  swift_allocObject();
  return sub_21DBF828C();
}

uint64_t sub_21D92CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for TTRSearchResultCollector();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F98];
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = v12;
  v11[3] = a5;
  v13 = &a5[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate];
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_21D5FBBA0;
  v14[5] = v10;
  v14[6] = v11;

  v15 = a5;

  TTRSearchResultCollector.start(completionHandler:)(sub_21D92EF0C, v14);
}

double sub_21D92D028(int a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v9 = a2;
    a3(a2);
  }

  else
  {
    swift_beginAccess();
    v12 = sub_21DBF8E0C();
    a5(v12);
  }

  return result;
}

uint64_t static TTRSearchResultCollector.promise(searchTerm:itemTypes:matchCriteria:attributesToFetch:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08, &unk_21DC380B0);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10, &unk_21DC31980);
  v6 = sub_21DBF81FC();

  return v6;
}

void sub_21D92D1AC(void (*a1)(char **), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v37 = a1;
  v38 = a4;
  v36[1] = a2;
  v15 = sub_21DBF624C();
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v39 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_21DBF672C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v22(v21, a8, v17, v19);
  v23 = HIBYTE(a6) & 0xF;
  v36[0] = a5;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v23 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 && *(a7 + 16))
  {
    objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v24 = a10;
    v25 = sub_21D46C3B0(a9, a7, v24);

    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08, &unk_21DC14FF0) + 48);
    v27 = v39;
    *v39 = v36[0];
    v27[1] = a6;
    (v22)(v27 + v26, v21, v17);
    (*(v40 + 104))(v27, *MEMORY[0x277D44F10], v41);
    v28 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
    swift_beginAccess();
    v29 = *&v25[v28];
    v30 = v25;
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[v28] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_21D21303C(0, v29[2] + 1, 1, v29);
      *&v25[v28] = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_21D21303C((v32 > 1), v33 + 1, 1, v29);
    }

    v29[2] = v33 + 1;
    (*(v40 + 32))(v29 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33, v39, v41);
    *&v25[v28] = v29;
    swift_endAccess();
    (*(v18 + 8))(v21, v17);

    v42 = v30;
    v37(&v42);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    sub_21D92EBE4();
    v34 = swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 2;
    a3();
  }
}

uint64_t static TTRSearchResultCollector.promise(criteria:itemTypes:attributesToFetch:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08, &unk_21DC380B0);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10, &unk_21DC31980);
  v4 = sub_21DBF81FC();

  return v4;
}

void sub_21D92D660(void (*a1)(char **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v12 = a7;
  v13 = sub_21D46C3B0(a5, a6, v12);

  swift_beginAccess();
  v14 = sub_21DBF8E0C();
  sub_21D562A78(v14);
  swift_endAccess();
  v15 = v13;
  a1(&v15);
}

uint64_t static TTRSearchResultCollector.promise(spotlightItemIdentifier:attributesToFetch:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08, &unk_21DC380B0);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10, &unk_21DC31980);
  sub_21DBF81FC();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_21DBF8E0C();
  v7 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E18, &qword_21DC380C0);
  v8 = sub_21DBF820C();

  return v8;
}

void sub_21D92D8A4(void (*a1)(char **), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8)
{
  v37 = a8;
  v38 = a7;
  v41 = a1;
  v42 = a5;
  v35[1] = a4;
  v36 = a3;
  v40 = a2;
  v39 = sub_21DBF624C();
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20, &unk_21DC31990);
  v12 = sub_21DBF659C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = 2 * v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC08D10;
  v18 = v17 + v15;
  v19 = *(v13 + 104);
  v19(v18, *MEMORY[0x277D45058], v12);
  v20 = v18 + v14;
  v21 = v42;
  v19(v20, *MEMORY[0x277D45050], v12);
  v19(v18 + v16, *MEMORY[0x277D45048], v12);
  v22 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
    v24 = v38;
    sub_21DBF8E0C();
    v25 = v37;
    v26 = sub_21D46C3B0(v24, v17, v25);

    *v11 = v21;
    v11[1] = a6;
    (*(v9 + 104))(v11, *MEMORY[0x277D44F20], v39);
    v27 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
    swift_beginAccess();
    v28 = *&v26[v27];
    v29 = v26;
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[v27] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_21D21303C(0, v28[2] + 1, 1, v28);
      *&v26[v27] = v28;
    }

    v32 = v28[2];
    v31 = v28[3];
    if (v32 >= v31 >> 1)
    {
      v28 = sub_21D21303C((v31 > 1), v32 + 1, 1, v28);
    }

    v28[2] = v32 + 1;
    (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11);
    *&v26[v27] = v28;
    swift_endAccess();

    v43 = v29;
    v41(&v43);
  }

  else
  {

    sub_21D92EBE4();
    v33 = swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 2;
    v36();
  }
}

uint64_t sub_21D92DC84(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E00, &unk_21DC31970);
  swift_allocObject();
  return sub_21DBF828C();
}

void sub_21D92DCF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (sub_21DBFBD7C() != 1)
    {
      goto LABEL_8;
    }
  }

  else if (*(v7 + 16) != 1)
  {
LABEL_8:
    sub_21D92EBE4();
    swift_allocError();
    *v12 = a2;
    *(v12 + 8) = a3;
    *(v12 + 16) = 1;
    swift_willThrow();
    sub_21DBF8E0C();
    return;
  }

  v8 = sub_21D195860(v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = v9;

  v11 = sub_21DBFB51C();
  if (v11)
  {
    *a4 = v11;
    a4[1] = v10;
  }

  else
  {
    v13 = sub_21DBFB52C();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 7104878;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    sub_21D92EBE4();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t static TTRSearchResultCollector.result(spotlightItemIdentifier:attributesToFetch:)(uint64_t a1, uint64_t a2, char *a3)
{
  v69 = a3;
  v81 = a2;
  v78 = a1;
  v3 = sub_21DBF9D2C();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_21DBF9D5C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_21DBF624C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_21DBF9D3C();
  v7 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20, &unk_21DC31990);
  v10 = sub_21DBF659C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC08D10;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277D45058], v10);
  v16(v15 + v12, *MEMORY[0x277D45050], v10);
  v16(v15 + 2 * v12, *MEMORY[0x277D45048], v10);
  v17 = v78;
  v18 = v81;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v19 = v77;
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v77);
  v20 = sub_21DBFB15C();
  (*(v7 + 8))(v9, v19);
  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    sub_21D92EBE4();
    swift_allocError();
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 2;
    swift_willThrow();

    return v17;
  }

  v22 = objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
  v23 = v20;
  v24 = sub_21DBF8E0C();
  v25 = sub_21D46C3B0(v24, v14, v23);
  v77 = v23;

  v26 = v66;
  v27 = v81;
  *v66 = v17;
  v26[1] = v27;
  v28 = v67;
  (*(v67 + 104))(v26, *MEMORY[0x277D44F20], v68);
  v29 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
  swift_beginAccess();
  v30 = *&v25[v29];
  v31 = v25;
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[v29] = v30;
  v33 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_21D21303C(0, v30[2] + 1, 1, v30);
    *&v25[v29] = v30;
  }

  v35 = v30[2];
  v34 = v30[3];
  if (v35 >= v34 >> 1)
  {
    v30 = sub_21D21303C((v34 > 1), v35 + 1, 1, v30);
  }

  v30[2] = v35 + 1;
  (*(v28 + 32))(v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v35, v33);
  *&v25[v29] = v30;
  swift_endAccess();

  v36 = swift_allocObject();
  v37 = MEMORY[0x277D84F98];
  v36[4] = 0;
  v36[5] = 0;
  v36[2] = v37;
  v36[3] = v31;
  v38 = &v31[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate];
  swift_beginAccess();
  *(v38 + 1) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  v69 = v31;
  v39 = dispatch_group_create();
  dispatch_group_enter(v39);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v67 = v40 + 16;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v17 = v41 + 16;
  v42 = swift_allocObject();
  v42[2] = v36;
  v42[3] = v40;
  v42[4] = v41;
  v42[5] = v39;
  aBlock[4] = sub_21D92EBD8;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_114;
  v43 = _Block_copy(aBlock);

  v68 = v40;

  v70 = v39;
  v44 = v71;
  sub_21DBF9D4C();
  v79 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0CD8F0();
  v45 = v73;
  v46 = v76;
  v47 = v77;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v44, v45, v43);
  _Block_release(v43);
  (*(v75 + 8))(v45, v46);
  v48 = v70;
  (*(v72 + 8))(v44, v74);

  sub_21DBFB09C();
  swift_beginAccess();
  v49 = *(v41 + 16);
  if (v49)
  {
    swift_willThrow();
    v50 = v49;

    return v17;
  }

  v52 = v69;
  v53 = v67;
  swift_beginAccess();
  if ((*v53 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBFBD7C();

    if (v17)
    {
      goto LABEL_13;
    }

LABEL_17:

    return v17;
  }

  v17 = *(*v53 + 16);
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((*v53 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBFBD7C();

    if (v17 != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = *(*v53 + 16);
    if (v17 != 1)
    {
LABEL_22:
      sub_21D92EBE4();
      swift_allocError();
      v58 = v81;
      *v59 = v78;
      *(v59 + 8) = v58;
      *(v59 + 16) = 1;
      swift_willThrow();
      sub_21DBF8E0C();

      return v17;
    }
  }

  v54 = sub_21DBF8E0C();
  v17 = sub_21D195860(v54);
  v56 = v55;

  if (!v17)
  {
    goto LABEL_22;
  }

  v57 = sub_21DBFB51C();
  if (v57)
  {
    v17 = v57;
  }

  else
  {
    v61 = sub_21DBFB52C();
    if (v62)
    {
      v17 = v61;
    }

    else
    {
      v17 = 7104878;
    }

    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0xE300000000000000;
    }

    sub_21D92EBE4();
    swift_allocError();
    *v64 = v17;
    *(v64 + 8) = v63;
    *(v64 + 16) = 0;
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_21D92E8D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;

  v8 = a4;
  TTRSearchResultCollector.start(completionHandler:)(sub_21D92EF00, v7);
}

void sub_21D92E978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  v9 = sub_21DBF8E0C();
  sub_21D65F7F0(v9, sub_21D65F928, 0, (a3 + 16));
  swift_endAccess();
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  dispatch_group_leave(a5);
}

uint64_t TTRSearchResultCollector.deinit()
{

  sub_21D0D0E88(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t TTRSearchResultCollector.__deallocating_deinit()
{

  sub_21D0D0E88(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t TTRSearchResultCollector.searchQueryPerformer(_:didFindItems:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == result)
  {
    swift_beginAccess();
    v3 = sub_21DBF8E0C();
    sub_21D65F7F0(v3, sub_21D65F928, 0, (v2 + 16));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_21D92EB4C(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == result)
  {
    swift_beginAccess();
    v3 = sub_21DBF8E0C();
    sub_21D65F7F0(v3, sub_21D65F928, 0, (v2 + 16));
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_21D92EBE4()
{
  result = qword_27CE63E20;
  if (!qword_27CE63E20)
  {
    result = swift_getWitnessTable(aY_5, &type metadata for TTRSearchResultCollectorError, v0, v1);
    atomic_store(result, &qword_27CE63E20);
  }

  return result;
}

void sub_21D92EC38(void *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 40);
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if (a1)
    {
      v5 = a1;
      v6 = sub_21D178758(MEMORY[0x277D84F90]);
      v7 = a1;
      v2(v6, a1);

      sub_21D0D0E88(v2, v3);
    }

    else
    {
      swift_beginAccess();
      v8 = sub_21DBF8E0C();
      v2(v8, 0);

      sub_21D0D0E88(v2, v3);
    }
  }
}

double sub_21D92ED94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    sub_21DBF8E0C();
  }

  return result;
}

double sub_21D92EDBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21D92EDD4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D92ED94(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRSearchResultCollectorError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D92ED94(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D92EDBC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRSearchResultCollectorError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D92EDBC(v4, v5, v6);
  return a1;
}

uint64_t sub_21D92EEC0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D92EED8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t TTRTreeStorageTemporaryNodeLocation.index.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21DBFBA8C();
    v6 = *&v3[*(swift_getTupleTypeMetadata2() + 48)];
  }

  else
  {
    v5 = sub_21DBFBA8C();
    v6 = 0;
  }

  (*(*(v5 - 8) + 8))(v3, v5);
  return v6;
}

uint64_t TTRTreeStorageTemporaryNodeLocation.parent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  v7 = sub_21DBFBA8C();
  return (*(*(v7 - 8) + 32))(a2, v5, v7);
}

uint64_t TTRTreeStorageTemporaryNodeValue.init(item:auxiliaryData:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v15 = type metadata accessor for TTRTreeStorageTemporaryNodeValue(0, v20);
  (*(*(a5 - 8) + 32))(a8 + *(v15 + 52), a2, a5);
  v16 = *(v15 + 56);
  v18 = type metadata accessor for TTRTreeStorageTemporaryNodeLocation(0, a4, a6, v17);
  return (*(*(v18 - 8) + 32))(a8 + v16, a3, v18);
}

uint64_t TTRTreeStorageTemporaryNodeValue.location.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = type metadata accessor for TTRTreeStorageTemporaryNodeLocation(0, *(a1 + 16), *(a1 + 32), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t *sub_21D92F3E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = v6 + v8;
  v10 = *(v7 + 64);
  v11 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = v6 + 1;
  }

  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v14 = v13 + ((((v6 + v8) & ~v8) + v10 + (v11 | 7)) & ~(v11 | 7)) + 1;
  v15 = v11 | v8;
  if (v15 > 7 || ((*(v5 + 80) | *(v7 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    v19 = (v18 + ((v15 & 0xF8 ^ 0x1F8) & (v15 + 16)));

    return v19;
  }

  v36 = *(v5 + 84);
  v37 = *(*(*(a3 + 16) - 8) + 64);
  v20 = ~v8;
  v39 = *(a3 + 16);
  v35 = *(v5 + 16);
  v35(a1, a2, v39);
  v38 = a1;
  v22 = (a1 + v9) & v20;
  v23 = (a2 + v9) & v20;
  (*(v7 + 16))(v22, v23, v4);
  v24 = (v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = ((v10 + 7 + v23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[v13];
  if (v26 < 2)
  {
    v19 = v38;
    v29 = v39;
    goto LABEL_33;
  }

  if (v13 <= 3)
  {
    v27 = v13;
  }

  else
  {
    v27 = 4;
  }

  if (v27 <= 1)
  {
    v19 = v38;
    v29 = v39;
    if (!v27)
    {
      goto LABEL_33;
    }

    v28 = *v25;
  }

  else
  {
    if (v27 == 2)
    {
      v28 = *v25;
    }

    else if (v27 == 3)
    {
      v28 = *v25 | (v25[2] << 16);
    }

    else
    {
      v28 = *v25;
    }

    v19 = v38;
    v29 = v39;
  }

  v30 = (v28 | ((v26 - 2) << (8 * v13))) + 2;
  v31 = v28 + 2;
  if (v13 >= 4)
  {
    v26 = v31;
  }

  else
  {
    v26 = v30;
  }

LABEL_33:
  v32 = (*(v5 + 48))(v25, 1, v29);
  if (v26 == 1)
  {
    if (v32)
    {
      memcpy(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v12);
    }

    else
    {
      v35(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v39);
      (*(v5 + 56))((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8, 0, 1, v39);
    }

    v33 = 7;
    if (!v36)
    {
      v33 = 8;
    }

    *((v37 + v33 + v24) & 0xFFFFFFFFFFFFFFF8) = *(&v25[v37 + v33] & 0xFFFFFFFFFFFFFFF8);
    *(v24 + v13) = 1;
  }

  else
  {
    if (v32)
    {
      memcpy(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v12);
    }

    else
    {
      v35(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v39);
      (*(v5 + 56))((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8, 0, 1, v39);
    }

    *(v24 + v13) = 0;
  }

  return v19;
}

uint64_t sub_21D92F754(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v14 = *(v5 + 8);
  v14(a1, v4);
  v6 = *(v5 + 64) + a1;
  v7 = *(*(a2 + 24) - 8);
  v8 = v7 + 8;
  v9 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v7 + 8))(v9);
  v10 = *(v8 + 56);
  v11 = *(v5 + 80) & 0xF8 | 7;
  v12 = v9 + v10 + v11;
  result = (*(v5 + 48))(v12 & ~v11, 1, v4);
  if (!result)
  {

    return (v14)(v12 & ~v11, v4);
  }

  return result;
}

uint64_t sub_21D92F8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v31 = *(v7 + 16);
  v31(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v8 + 84);
  v16 = *(v8 + 80) & 0xF8 | 7;
  v17 = *(v11 + 48) + v16;
  v18 = ((v17 + v13) & ~v16);
  v19 = ((v17 + v14) & ~v16);
  if (v15)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  if (((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v22 = v19[v21];
  if (v22 >= 2)
  {
    if (v21 <= 3)
    {
      v23 = v21;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v24 = *v19;
    }

    else if (v23 == 2)
    {
      v24 = *v19;
    }

    else if (v23 == 3)
    {
      v24 = *v19 | (v19[2] << 16);
    }

    else
    {
      v24 = *v19;
    }

    v25 = (v24 | ((v22 - 2) << (8 * v21))) + 2;
    v26 = v24 + 2;
    if (v21 >= 4)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }
  }

LABEL_22:
  v27 = (*(v8 + 48))(v19, 1, v6);
  if (v22 == 1)
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v28 = 7;
    if (!v15)
    {
      v28 = 8;
    }

    *((v18 + v9 + v28) & 0xFFFFFFFFFFFFFFF8) = *(&v19[v9 + v28] & 0xFFFFFFFFFFFFFFF8);
    v29 = 1;
  }

  else
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v29 = 0;
  }

  *(v18 + v21) = v29;
  return a1;
}

uint64_t sub_21D92FB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  (*(v7 + 24))(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = *(v11 + 40) + v15;
  v17 = ((v16 + v13) & ~v15);
  v18 = ((v16 + v14) & ~v15);
  if (v17 == v18)
  {
    return a1;
  }

  v33 = *(v8 + 84);
  if (v33)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 + 1;
  }

  if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v34 = *(v8 + 48);
  if (!v34(v17, 1, v6))
  {
    (*(v8 + 8))(v17, v6);
  }

  v21 = v20;
  v22 = *(v18 + v20);
  if (v22 < 2)
  {
    v23 = v21;
  }

  else
  {
    v23 = v21;
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v26 = *v18;
        v25 = v21;
      }

      else
      {
        v25 = v21;
        if (v24 == 3)
        {
          v26 = *v18 | (*(v18 + 2) << 16);
        }

        else
        {
          v26 = *v18;
        }
      }

      goto LABEL_23;
    }

    if (v24)
    {
      v26 = *v18;
      v25 = v21;
LABEL_23:
      v27 = (v26 | ((v22 - 2) << (8 * v25))) + 2;
      v28 = v26 + 2;
      if (v25 >= 4)
      {
        v22 = v28;
      }

      else
      {
        v22 = v27;
      }
    }
  }

  v29 = v34(v18, 1, v6);
  if (v22 == 1)
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 16))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v30 = 7;
    if (!v33)
    {
      v30 = 8;
    }

    *((v17 + v9 + v30) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + v30) & 0xFFFFFFFFFFFFFFF8);
    v31 = 1;
  }

  else
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 16))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v31 = 0;
  }

  *(v17 + v23) = v31;
  return a1;
}

uint64_t sub_21D92FECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v31 = *(v7 + 32);
  v31(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 32))(v13, v14);
  v15 = *(v8 + 84);
  v16 = *(v8 + 80) & 0xF8 | 7;
  v17 = *(v11 + 32) + v16;
  v18 = ((v17 + v13) & ~v16);
  v19 = ((v17 + v14) & ~v16);
  if (v15)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  if (((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v22 = v19[v21];
  if (v22 >= 2)
  {
    if (v21 <= 3)
    {
      v23 = v21;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v24 = *v19;
    }

    else if (v23 == 2)
    {
      v24 = *v19;
    }

    else if (v23 == 3)
    {
      v24 = *v19 | (v19[2] << 16);
    }

    else
    {
      v24 = *v19;
    }

    v25 = (v24 | ((v22 - 2) << (8 * v21))) + 2;
    v26 = v24 + 2;
    if (v21 >= 4)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }
  }

LABEL_22:
  v27 = (*(v8 + 48))(v19, 1, v6);
  if (v22 == 1)
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v28 = 7;
    if (!v15)
    {
      v28 = 8;
    }

    *((v18 + v9 + v28) & 0xFFFFFFFFFFFFFFF8) = *(&v19[v9 + v28] & 0xFFFFFFFFFFFFFFF8);
    v29 = 1;
  }

  else
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v29 = 0;
  }

  *(v18 + v21) = v29;
  return a1;
}

uint64_t sub_21D93019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  (*(v7 + 40))(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = *(v11 + 24) + v15;
  v17 = ((v16 + v13) & ~v15);
  v18 = ((v16 + v14) & ~v15);
  if (v17 == v18)
  {
    return a1;
  }

  v33 = *(v8 + 84);
  if (v33)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 + 1;
  }

  if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v34 = *(v8 + 48);
  if (!v34(v17, 1, v6))
  {
    (*(v8 + 8))(v17, v6);
  }

  v21 = v20;
  v22 = *(v18 + v20);
  if (v22 < 2)
  {
    v23 = v21;
  }

  else
  {
    v23 = v21;
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v26 = *v18;
        v25 = v21;
      }

      else
      {
        v25 = v21;
        if (v24 == 3)
        {
          v26 = *v18 | (*(v18 + 2) << 16);
        }

        else
        {
          v26 = *v18;
        }
      }

      goto LABEL_23;
    }

    if (v24)
    {
      v26 = *v18;
      v25 = v21;
LABEL_23:
      v27 = (v26 | ((v22 - 2) << (8 * v25))) + 2;
      v28 = v26 + 2;
      if (v25 >= 4)
      {
        v22 = v28;
      }

      else
      {
        v22 = v27;
      }
    }
  }

  v29 = v34(v18, 1, v6);
  if (v22 == 1)
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 32))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v30 = 7;
    if (!v33)
    {
      v30 = 8;
    }

    *((v17 + v9 + v30) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + v30) & 0xFFFFFFFFFFFFFFF8);
    v31 = 1;
  }

  else
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 32))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v31 = 0;
  }

  *(v17 + v23) = v31;
  return a1;
}

uint64_t sub_21D9304E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  if (v5)
  {
    v13 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v13 = v9 + 1;
  }

  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v9 + v10;
  v16 = *(v4 + 80) & 0xF8 | 7;
  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_36;
  }

  v18 = v14 + ((v11 + v16 + (v15 & ~v10)) & ~v16) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v22 < 2)
    {
LABEL_36:
      if (v5 == v12)
      {
        return (*(v4 + 48))();
      }

      v26 = (a1 + v15) & ~v10;
      if (v8 == v12)
      {
        return (*(v7 + 48))(v26, v8, v6);
      }

      if (v5)
      {
        v27 = *(*(*(a3 + 16) - 8) + 64);
      }

      else
      {
        v27 = v9 + 1;
      }

      if (((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v27)
      {
        v27 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      v28 = *(((v26 + v11 + v16) & ~v16) + v27);
      if (v28 >= 2)
      {
        return (v28 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_36;
  }

LABEL_23:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v12 + (v25 | v23) + 1;
}

void sub_21D930744(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80) & 0xF8 | 7;
  if (v6)
  {
    v15 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v15 = v9 + 1;
  }

  if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
  {
    v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = v15 + ((v11 + v14 + ((v9 + v10) & ~v10)) & ~v14) + 1;
  v17 = a3 >= v13;
  v18 = a3 - v13;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v23 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v23))
      {
        v19 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v19 = v24;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v13 < a2)
  {
    v20 = ~v13 + a2;
    if (v16 < 4)
    {
      v22 = (v20 >> (8 * v16)) + 1;
      if (v15 + ((v11 + v14 + ((v9 + v10) & ~v10)) & ~v14) != -1)
      {
        v25 = v20 & ~(-1 << (8 * v16));
        v26 = a1;
        bzero(a1, v16);
        a1 = v26;
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *v26 = v25;
            if (v19 > 1)
            {
LABEL_62:
              if (v19 == 2)
              {
                *&a1[v16] = v22;
              }

              else
              {
                *&a1[v16] = v22;
              }

              return;
            }
          }

          else
          {
            *v26 = v20;
            if (v19 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *v26 = v25;
        v26[2] = BYTE2(v25);
      }

      if (v19 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v21 = a1;
      bzero(a1, v16);
      a1 = v21;
      *v21 = v20;
      v22 = 1;
      if (v19 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v19)
    {
      a1[v16] = v22;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v16] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v6 == v13)
  {
    v27 = *(v5 + 56);

    v27();
  }

  else
  {
    v28 = &a1[v9 + v10] & ~v10;
    if (v8 == v13)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = ((v28 + v11 + v14) & ~v14);
      if (v6)
      {
        v31 = v9;
      }

      else
      {
        v31 = v9 + 1;
      }

      if (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v31)
      {
        LODWORD(v31) = ((v31 + 7) & 0xFFFFFFF8) + 8;
      }

      if (a2 > 0xFE)
      {
        v32 = (v31 + 1);
        if (v32 <= 3)
        {
          v33 = ~(-1 << (8 * v32));
        }

        else
        {
          v33 = -1;
        }

        if (v32)
        {
          v34 = v33 & (a2 - 255);
          if (v32 <= 3)
          {
            v35 = v32;
          }

          else
          {
            v35 = 4;
          }

          bzero(v30, v32);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              *v30 = v34;
              v30[2] = BYTE2(v34);
            }

            else
            {
              *v30 = v34;
            }
          }

          else if (v35 == 1)
          {
            *v30 = v34;
          }

          else
          {
            *v30 = v34;
          }
        }
      }

      else
      {
        v30[v15] = -a2;
      }
    }
  }
}

void *sub_21D930B08(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = *(v6 + 80);
  if ((v9 & 0x1000F8) != 0 || v8 + 1 > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + (((v9 & 0xF8) + 23) & ~(v9 & 0xF8) & 0x1F8));

    return a1;
  }

  v12 = a2[v8];
  if (v12 >= 2)
  {
    if (v8 <= 3)
    {
      v13 = v8;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | ((v12 - 2) << (8 * v8))) + 2;
    v16 = v14 + 2;
    if (v8 >= 4)
    {
      v12 = v16;
    }

    else
    {
      v12 = v15;
    }
  }

LABEL_28:
  v17 = (*(v6 + 48))(a2, 1, v5);
  if (v12 == 1)
  {
    if (v17)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(a1 + v8) = 1;
  }

  else
  {
    if (v17)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *(a1 + v8) = 0;
  }

  return a1;
}

void *sub_21D930D6C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = a2[v8];
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | ((v9 - 2) << (8 * v8))) + 2;
    v13 = v11 + 2;
    if (v8 >= 4)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }
  }

LABEL_22:
  v14 = (*(v6 + 48))(a2, 1, v5);
  if (v9 == 1)
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = 1;
  }

  else
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = 0;
  }

  *(a1 + v8) = v15;
  return a1;
}

unsigned __int16 *sub_21D930F90(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v10 = *(v6 + 48);
  if (!v10(a1, 1, v5))
  {
    (*(v7 + 8))(a1, v5);
  }

  v11 = *(a2 + v9);
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      v13 = *a2;
LABEL_22:
      v14 = (v13 | ((v11 - 2) << (8 * v9))) + 2;
      v15 = v13 + 2;
      if (v9 >= 4)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  v16 = v10(a2, 1, v5);
  if (v11 == 1)
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = 1;
  }

  else
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    v17 = 0;
  }

  *(a1 + v9) = v17;
  return a1;
}

void *sub_21D93120C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = a2[v8];
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | ((v9 - 2) << (8 * v8))) + 2;
    v13 = v11 + 2;
    if (v8 >= 4)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }
  }

LABEL_22:
  v14 = (*(v6 + 48))(a2, 1, v5);
  if (v9 == 1)
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = 1;
  }

  else
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = 0;
  }

  *(a1 + v8) = v15;
  return a1;
}

unsigned __int16 *sub_21D931430(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v10 = *(v6 + 48);
  if (!v10(a1, 1, v5))
  {
    (*(v7 + 8))(a1, v5);
  }

  v11 = *(a2 + v9);
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      v13 = *a2;
LABEL_22:
      v14 = (v13 | ((v11 - 2) << (8 * v9))) + 2;
      v15 = v13 + 2;
      if (v9 >= 4)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  v16 = v10(a2, 1, v5);
  if (v11 == 1)
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 32))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = 1;
  }

  else
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 32))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    v17 = 0;
  }

  *(a1 + v9) = v17;
  return a1;
}

uint64_t sub_21D9316AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_21D931804(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v6)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_21D9319FC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if (*(v2 + 84))
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = *(v2 + 64) + 1;
  }

  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = v3;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    LODWORD(v5) = v8 + 2;
    if (v4 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void sub_21D931ADC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (a2 <= 1)
  {
    a1[v7] = a2;
    return;
  }

  v8 = a2 - 2;
  if (v7 < 4)
  {
    a1[v7] = (v8 >> (8 * v7)) + 2;
    if (!v7)
    {
      return;
    }

    v8 &= ~(-1 << (8 * v7));
  }

  else
  {
    a1[v7] = 2;
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  bzero(a1, v7);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      *a1 = v8;
      a1[2] = BYTE2(v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  else if (v9 == 1)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = v8;
  }
}

uint64_t sub_21D931C04()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63E30);
  v1 = __swift_project_value_buffer(v0, qword_27CE63E30);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NSItemProvider.loadObject<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  sub_21DBF82AC();
  sub_21DBF827C();
  sub_21D0CE468();
  v2 = sub_21DBFB12C();
  v3 = sub_21DBF826C();

  return v3;
}

void sub_21D931D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a1;
  v12[4] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = sub_21D932520;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v17[4] = sub_21D932558;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21D5F87C8;
  v17[3] = &block_descriptor_115;
  v15 = _Block_copy(v17);

  v16 = [a5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v15];
  _Block_release(v15);
}

void sub_21D931EC8(void *a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)(id), uint64_t a6, uint64_t a7)
{
  if (a1 && (v24 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE70, &unk_21DC1EE18), (swift_dynamicCast() & 1) != 0))
  {
    a3();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CE56E78 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE63E30);
    v11 = a2;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAEBC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v16 = sub_21DBFC74C();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_21D0CDFB4(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, v12, v13, "[NSItemProvider loadObject] failed {error: %s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v20 = a2;
    if (!a2)
    {
      v21 = objc_opt_self();
      v22 = sub_21DBFA12C();
      v20 = [v21 internalErrorWithDebugDescription_];
    }

    v23 = a2;
    a5(v20);
  }
}

uint64_t sub_21D93214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_21DBF843C();
  MEMORY[0x28223BE20](v10);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = *(a3 + 16);
  if (!v15)
  {
    return 0;
  }

  v37 = &v31 - v14;
  v38 = v6;
  v16 = (v13 + 48);
  v17 = (v13 + 32);
  v34 = (v13 + 8);
  v41 = sub_21D176F0C();
  v18 = (a3 + 40);
  v19 = v39;
  v35 = v9;
  v36 = v16;
  v32 = v17;
  while (1)
  {
    v22 = *(v18 - 1);
    v21 = *v18;
    v45 = v42;
    v46 = v19;
    v43 = v22;
    v44 = v21;
    sub_21DBF8E0C();
    if (!sub_21DBFBB7C())
    {
      break;
    }

    sub_21DBF8E0C();
    sub_21DBF844C();
    v23 = *v16;
    if ((*v16)(v9, 1, v10) == 1)
    {

      v20 = v9;
LABEL_4:
      sub_21D3F983C(v20);
      goto LABEL_5;
    }

    v24 = v9;
    v25 = v37;
    v40 = *v17;
    v40(v37, v24, v10);
    sub_21DBF8E0C();
    v26 = v38;
    sub_21DBF844C();
    if (v23(v26, 1, v10) == 1)
    {

      (*v34)(v25, v10);
      v20 = v26;
      v19 = v39;
      v9 = v35;
      v16 = v36;
      goto LABEL_4;
    }

    v17 = v32;
    v27 = v33;
    v40(v33, v26, v10);
    v28 = sub_21DBF841C();

    v29 = *v34;
    (*v34)(v27, v10);
    v29(v25, v10);
    v19 = v39;
    v9 = v35;
    v16 = v36;
    if (v28)
    {
      return 1;
    }

LABEL_5:
    v18 += 2;
    if (!--v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21D9324A0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = [swift_getObjCClassFromMetadata() *a4];
  v7 = sub_21DBFA5EC();

  LOBYTE(v6) = sub_21D93214C(a1, a2, v7);

  return v6 & 1;
}

uint64_t sub_21D932520(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

CGSize __swiftcall CGSize.aspectFitting(boundingSize:)(CGSize boundingSize)
{
  v3 = boundingSize.width / v1;
  v4 = boundingSize.height / v2;
  if (boundingSize.height / v2 >= boundingSize.width / v1)
  {
    if (v3 < v4)
    {
      boundingSize.height = v3 * v2;
    }
  }

  else
  {
    boundingSize.width = v4 * v1;
  }

  return boundingSize;
}

__C::CGRect __swiftcall CGSize.centered(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v9 = CGRectGetMidX(in) - v1 * 0.5;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetMidY(v14) - v3 * 0.5;
  v11 = v9;
  v12 = v4;
  v13 = v3;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

CGSize __swiftcall CGSize.aspectFilling(minimumSize:)(CGSize minimumSize)
{
  v3 = minimumSize.width / v1;
  v4 = minimumSize.height / v2;
  if (minimumSize.width / v1 >= minimumSize.height / v2)
  {
    if (v4 < v3)
    {
      minimumSize.height = v3 * v2;
    }
  }

  else
  {
    minimumSize.width = v4 * v1;
  }

  return minimumSize;
}

double CGSize.integral(forScale:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 1.0;
  }

  return 1.0 / a1 * ceil(a1 * a2);
}

id NSAttributedString.replaceTimeZonePlaceholderWithTextEncapsulation(placeholder:dayString:timeZoneEncapsulationProvider:overrideFont:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, objc_class *a7)
{
  v8 = v7;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v14 = [v7 string];
  if (!v14)
  {
    sub_21DBFA16C();
    v14 = sub_21DBFA12C();
  }

  v15 = sub_21DBFA12C();
  v16 = [v14 rangeOfString_];

  v17 = sub_21DBF4B4C();
  v8 = v7;
  if (v16 != v17)
  {
    a5();
    v19._countAndFlagsBits = a3;
    v19._object = a4;
    v24.value.super.isa = a7;
    isa = TTRTimeZoneDayStringTextEncapsulationProvider.timeZoneAttributedStringWithTextEncapsulation(title:overrideFont:)(v19, v24).super.isa;

    sub_21DBF8E0C();
    v21 = isa;
    v22 = sub_21D47BA90();

    return v22;
  }

  else
  {
LABEL_7:

    return v8;
  }
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.__allocating_init(contactStoreCreator:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  sub_21DBFB12C();
  sub_21DBF633C();
  swift_allocObject();
  *(v5 + 16) = sub_21DBF62FC();
  *(v5 + 24) = 0;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.init(contactStoreCreator:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 24) = 0;
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  sub_21DBFB12C();
  sub_21DBF633C();
  swift_allocObject();
  *(v4 + 16) = sub_21DBF62FC();
  *(v4 + 24) = 0;

  *(v4 + 32) = a4;
  return v4;
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.deinit()
{

  return v0;
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.items(matching:location:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_21DBF9DAC();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (*(v3 + 32))
    {
      goto LABEL_14;
    }

    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
LABEL_14:
      if (*(v3 + 24))
      {
        v16 = *(v3 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
        swift_allocObject();
        sub_21DBF8E0C();
        return sub_21DBF824C();
      }

      else
      {
        sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
        sub_21DBF82FC();

        v13 = sub_21DBF816C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626E0, "F7\n");
        v14 = sub_21DBF820C();

        return v14;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0, &qword_21DC1E0F0);
      swift_allocObject();
      return sub_21DBF824C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D932CD0()
{
  sub_21DBF633C();
  sub_21DBF631C();
  v0 = sub_21DBF632C();

  return v0;
}

void sub_21D932D2C(void **a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v11 = sub_21DBFB12C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = sub_21DBF9DAC();
  (*(v9 + 8))(v11, v8);
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

  v14 = [v12 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0, &qword_21DC31BC0);
  v13 = sub_21DBFA5EC();

  v11 = v12;
  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v16 = v13;
      v49 = MEMORY[0x277D84F90];
      sub_21D18F1F0(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        break;
      }

      v37 = a2;
      v38 = a3;
      a2 = 0;
      v13 = v49;
      v17 = v16;
      v42 = v16;
      v43 = v16 & 0xC000000000000001;
      v39 = v4;
      v40 = v16 & 0xFFFFFFFFFFFFFF8;
      v41 = v15;
      while (!__OFADD__(a2, 1))
      {
        if (v43)
        {
          v18 = MEMORY[0x223D44740](a2, v17);
        }

        else
        {
          if (a2 >= *(v40 + 16))
          {
            goto LABEL_25;
          }

          v18 = *(v17 + 8 * a2 + 32);
        }

        v19 = v18;
        v20 = v13;
        v21 = [v18 label];
        v45 = a2 + 1;
        if (v21)
        {
          v22 = v21;
          v23 = sub_21DBFA16C();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v26 = [v19 value];
        v47 = 0x2D64726143656DLL;
        v48 = 0xE700000000000000;
        if (v25)
        {
          v27 = v23;
        }

        else
        {
          v27 = 0x6C6562616C5F6F6ELL;
        }

        if (v25)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0xE800000000000000;
        }

        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v27, v28);

        MEMORY[0x223D42AA0](45, 0xE100000000000000);
        v44 = v26;
        v46 = [v26 hash];
        v29 = sub_21DBFC5BC();
        MEMORY[0x223D42AA0](v29);

        a3 = v23;
        v4 = v47;
        v30 = v48;
        v31 = v11;

        v13 = v20;
        v49 = v20;
        v32 = v11;
        v34 = *(v13 + 16);
        v33 = *(v13 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_21D18F1F0((v33 > 1), v34 + 1, 1);
          v13 = v49;
        }

        *(v13 + 16) = v34 + 1;
        v35 = v13 + 56 * v34;
        *(v35 + 32) = v4;
        *(v35 + 40) = v30;
        *(v35 + 48) = v32;
        *(v35 + 56) = a3;
        v36 = v44;
        *(v35 + 64) = v25;
        *(v35 + 72) = v36;
        *(v35 + 80) = 33;
        ++a2;
        v17 = v42;
        v11 = v32;
        if (v45 == v41)
        {

          a3 = v38;
          a2 = v37;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v15 = sub_21DBFBD7C();
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    v13 = MEMORY[0x277D84F90];
LABEL_29:
    *(a2 + 24) = v13;
    sub_21DBF8E0C();

    *a3 = v13;
  }
}

id static UIImage.ttr_systemSymbolImage(named:)()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  return v1;
}

id static UIImage.ttr_image(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:a3 compatibleWithTraitCollection:0];

  return v5;
}

uint64_t UIImage.resized(to:scale:)(double a1, double a2, double a3)
{
  v7 = [v3 imageRendererFormat];
  [v7 setScale_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v7 format:{a1, a2}];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21D933E04;
  *(v10 + 24) = v9;
  v15[4] = sub_21D112B4C;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_21D112B7C;
  v15[3] = &block_descriptor_116;
  v11 = _Block_copy(v15);
  v12 = v3;

  v13 = [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

id static UIImage.ttr_systemSymbolImage(named:withConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 imageWithSymbolConfiguration_];

  return v6;
}

uint64_t UIImage.pngDataWithRotation()()
{
  isa = UIImage.drawnWithRotation()().super.isa;
  v1 = UIImagePNGRepresentation(isa);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_21DBF551C();

  return v2;
}

double UIImage.pixelSize.getter()
{
  [v0 size];
  v2 = v1;
  [v0 scale];
  return v2 * v3;
}

id UIImage.init(contentsOf:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21DBF549C();
  v3 = sub_21DBFA12C();

  v4 = [v2 initWithContentsOfFile_];

  v5 = sub_21DBF54CC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

UIImage __swiftcall UIImage.drawnWithRotation()()
{
  if ([v0 imageOrientation])
  {
    [v13 size];
    v2 = v1;
    v4 = v3;
    v5 = [v13 imageRendererFormat];
    v6 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v5 format:{v2, v4}];

    v7 = swift_allocObject();
    *(v7 + 16) = v13;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D933E20;
    *(v8 + 24) = v7;
    aBlock[4] = sub_21D119838;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D112B7C;
    aBlock[3] = &block_descriptor_13_6;
    v9 = _Block_copy(aBlock);
    v10 = v13;

    v11 = [v6 imageWithActions_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return v13;
  }

  return result;
}

UIImage_optional __swiftcall UIImage.drawnOpaque(backgroundColor:)(UIColor backgroundColor)
{
  [v1 size];
  v4 = v3;
  v6 = v5;
  [v1 scale];
  v8 = v7;
  v20.width = v4;
  v20.height = v6;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v8);
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v11 = v9;
    [v1 size];
    v13 = v12;
    v15 = v14;
    v16 = [(objc_class *)backgroundColor.super.isa CGColor];
    CGContextSetFillColorWithColor(v11, v16);

    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v13;
    v21.size.height = v15;
    CGContextFillRect(v11, v21);
    [v1 drawInRect:0 blendMode:0.0 alpha:{0.0, v13, v15, 1.0}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    if (v17)
    {
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  result.value.super.isa = v18;
  result.is_nil = v10;
  return result;
}

id sub_21D9339C0()
{
  result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  qword_27CE63E58 = result;
  return result;
}

id static UIImage.empty.getter()
{
  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE63E58;

  return v0;
}

void static UIImage.empty.setter(uint64_t a1)
{
  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE63E58;
  qword_27CE63E58 = a1;
}

uint64_t (*static UIImage.empty.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id UIImage.init(contentsOfSecurityScopedURL:)(char *a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBF547C())
  {
    (*(v3 + 16))(v5, a1, v2);
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_21DBF549C();
    v7 = sub_21DBFA12C();

    v8 = [v6 initWithContentsOfFile_];

    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      v10 = v8;
      sub_21DBF53DC();
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v3 + 8);
  }

  v9(a1, v2);
  return v8;
}

id sub_21D933D08(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (sub_21DBFC5BC(), MEMORY[0x223D42AA0](0x61646E656C61632ELL, 0xE900000000000072), v2 = sub_21DBFA12C(), , v3 = [objc_opt_self() _systemImageNamed_], v2, !v3))
  {
    v4 = sub_21DBFA12C();
    v3 = [objc_opt_self() _systemImageNamed_];
  }

  return v3;
}

id sub_21D933E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + qword_27CE63E60);
  *v7 = 0;
  v7[1] = 0;
  v8 = MEMORY[0x277D85000];
  *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v9 = (v3 + *((*v8 & *v3) + 0x78));
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x88));
  *v10 = 0x65436E6F73726550;
  v10[1] = 0xEA00000000006C6CLL;
  v12.receiver = v3;
  v12.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63EA0, &qword_21DC31C78);
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_21D933FC4(uint64_t a1)
{
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = *(a1 + qword_27CE65590);
  if (*(v3 + 1))
  {
    v5 = v4;
    sub_21DBF8E0C();
    v6 = sub_21DBFA12C();
  }

  else
  {
    v7 = v4;
    v6 = 0;
  }

  [v4 setText_];

  v8 = *(v3 + 2);
  v9 = v8;
  sub_21D9340B0(v8);
}

void sub_21D9340B0(id a1)
{
  v3 = *(v1 + qword_27CE63E78);
  *(v1 + qword_27CE63E78) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_21D4B6DC0();
  a1 = a1;
  v4 = v7;
  v5 = sub_21DBFB63C();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_21D934348();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

void sub_21D9341DC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v5 = *&v4[qword_27CE63E60];
  if (v5)
  {
    v6 = *&v4[qword_27CE63E60 + 8];

    v5(v7);
    sub_21D0D0E88(v5, v6);

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
  }
}

void sub_21D934348()
{
  v1 = *(v0 + qword_27CE63E78);
  if (v1)
  {
    v2 = *(v0 + qword_27CE63E88);
    v3 = v1;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = sub_21D934978(v0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC09CF0;
    *(v9 + 32) = v1;
    sub_21D4B6DC0();
    v10 = v1;
    v11 = v2;
    v12 = sub_21DBFA5DC();

    [v4 setContacts_];
  }

  else
  {
    v5 = v0 + qword_27CE655A0;
    swift_beginAccess();
    v6 = *(v5 + 48);
    v17 = *(v5 + 32);
    v18 = v6;
    v19 = *(v5 + 64);
    v7 = *(v5 + 16);
    v15 = *v5;
    v16 = v7;
    v20[2] = v17;
    v20[3] = v6;
    v21 = v19;
    v20[0] = v15;
    v20[1] = v7;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0x1FFFFFFFELL;
    *(v5 + 64) = 0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    sub_21D1ADB0C(&v15, v13);
    sub_21D1ADB7C(v20);
    v13[2] = v17;
    v13[3] = v18;
    v14 = v19;
    v13[0] = v15;
    v13[1] = v16;
    sub_21DA7EF48(v13);
    sub_21D1ADB7C(&v15);
    v8 = *(v0 + qword_27CE63E88);
    *(v0 + qword_27CE63E88) = 0;
  }
}

char *sub_21D934514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[qword_27CE63E78] = 0;
  *&v3[qword_27CE63E88] = 0;
  v8 = [objc_opt_self() buttonWithType_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = sub_21DBFA12C();

  [v8 setTitle:v9 forState:{0, 0x800000021DC70B80}];

  v10 = [v8 titleLabel];
  if (v10)
  {
    v11 = v10;
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v12 = sub_21D900614(1);
    [v11 setFont_];
  }

  v13 = [v8 titleLabel];
  if (v13)
  {
    v14 = v13;
    [v13 setAdjustsFontForContentSizeCategory_];
  }

  *&v4[qword_27CE63E80] = v8;
  v15 = v8;
  if (a3)
  {
    v16 = sub_21DBFA12C();
  }

  else
  {
    v16 = 0;
  }

  v31.receiver = v4;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v18 = &v17[qword_27CE65610];
  swift_beginAccess();
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = *(v18 + 2);
  v22 = *(v18 + 3);
  v23 = *(v18 + 4);
  *v18 = v8;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v24 = v18[40];
  v18[40] = 1;
  v25 = v17;
  v26 = v8;
  v27 = v25;
  sub_21D361B20(v19, v20, v21, v22, v23, v24);
  sub_21D361BB4(v19, v20, v21, v22, v23, v24);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  v29[4] = v23;
  v30 = v24;
  sub_21DA7F6B4(v29);

  sub_21D361BB4(v19, v20, v21, v22, v23, v24);
  return v27;
}

char *sub_21D93485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D934514(a3, a4, v6);
}

void sub_21D9348A8(uint64_t a1)
{
  *(a1 + qword_27CE63E78) = 0;
  *(a1 + qword_27CE63E88) = 0;
  sub_21DBFC31C();
  __break(1u);
}

id sub_21D934978(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  [v2 setThreeDTouchEnabled_];
  v3 = *(a1 + qword_27CE63E88);
  *(a1 + qword_27CE63E88) = v2;
  v4 = v2;

  v5 = [v4 view];
  LOBYTE(v17[0]) = 1;
  LOBYTE(v12) = 1;
  v6 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v7 = *(v6 + 48);
  v14 = *(v6 + 32);
  v15 = v7;
  v16 = *(v6 + 64);
  v8 = *(v6 + 16);
  v12 = *v6;
  v13 = v8;
  v17[2] = v14;
  v17[3] = v7;
  v18 = v16;
  v17[0] = v12;
  v17[1] = v8;
  *v6 = v5;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 65;
  sub_21D1ADB0C(&v12, v10);
  sub_21D1ADB7C(v17);
  v10[2] = v14;
  v10[3] = v15;
  v11 = v16;
  v10[0] = v12;
  v10[1] = v13;
  sub_21DA7EF48(v10);
  sub_21D1ADB7C(&v12);
  return v4;
}

void sub_21D934AD8()
{
  v1 = *(v0 + qword_27CE63E88);
}

void sub_21D934B28(uint64_t a1)
{
  v2 = *(a1 + qword_27CE63E88);
}

uint64_t sub_21D934C10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v6 = a3;
      v7 = a6;
      v8 = sub_21DBFC64C();
      a6 = v7;
      a3 = v6;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      v9 = a3;
      v10 = a6;
      sub_21D4B6DC0();
      v11 = v10;
      v12 = v9;
      v13 = sub_21DBFB63C();

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

id sub_21D934CCC(uint64_t a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v4 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v5 = v4;
  v6 = sub_21DBFA12C();

  [v5 setText_];

  return [*(a1 + qword_27CE63EC0) setImage_];
}

void sub_21D934DB0()
{
  v1 = *(v0 + qword_27CE63EA8);
  if (v1)
  {
    v2 = *(v0 + qword_27CE63EA8 + 8);
    v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
    swift_beginAccess();
    v4 = *(v3 + 2);
    v5 = *(v3 + 3);
    v9 = *v3;
    v10 = v4;
    v11 = v5;
    sub_21D0D0E78(v1, v2);
    v6 = v9;
    sub_21DBF8E0C();
    v7 = v5;
    v1(&v9);
    sub_21D0D0E88(v1, v2);
    v8 = v9;
  }
}

char *sub_21D934F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = sub_21DBFA16C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_21D9350A0(v4, v5);
}

char *sub_21D9350A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v5 setContentMode_];
  v6 = [v5 layer];
  [v6 setCornerCurve_];

  v7 = [v5 layer];
  [v7 setCornerRadius_];

  [v5 setClipsToBounds_];
  *&v2[qword_27CE63EC0] = v5;
  v8 = v5;
  if (a2)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, 0, v9);

  v11 = *&v10[qword_27CE63EC0];
  LOBYTE(v30[0]) = 1;
  LOBYTE(v25) = 1;
  v12 = &v10[qword_27CE655A0];
  swift_beginAccess();
  v25 = *v12;
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = *(v12 + 3);
  v29 = v12[64];
  v27 = v14;
  v28 = v15;
  v26 = v13;
  v30[0] = *v12;
  v16 = *(v12 + 1);
  v17 = *(v12 + 2);
  v18 = *(v12 + 3);
  v31 = v12[64];
  v30[2] = v17;
  v30[3] = v18;
  v30[1] = v16;
  *v12 = v11;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 1;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  v12[64] = 65;
  v19 = v10;
  v20 = v11;
  sub_21D1ADB0C(&v25, v22);
  sub_21D1ADB7C(v30);
  v22[2] = v27;
  v22[3] = v28;
  v23 = v29;
  v22[0] = v25;
  v22[1] = v26;
  sub_21DA7EF48(v22);

  sub_21D1ADB7C(&v25);
  return v19;
}

unint64_t sub_21D9352FC(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v36 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v40 = MEMORY[0x277D84F90];
    v35 = v4;
    while (1)
    {
      if (v38)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D44740](v5, v34);
        v6 = __OFADD__(v5++, 1);
        if (v6)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v5 >= *(v37 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v36 + 8 * v5);
        v6 = __OFADD__(v5++, 1);
        if (v6)
        {
          goto LABEL_40;
        }
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = [v7 children];
      sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
      v9 = sub_21DBFA5EC();
      v42 = v3;
      v10 = v9;

      v41[0] = v10;
      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE98, &qword_21DC31DA0);
      sub_21D0D0F1C(&qword_27CE63EE0, &qword_27CE5DE98, &qword_21DC31DA0, MEMORY[0x277D83970]);
      v11 = sub_21DBFA47C();

      v12 = [v7 children];
      v13 = sub_21DBFA5EC();

      v41[0] = v13;
      sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
      v14 = sub_21DBFA47C();

      v15 = v42;
      v16 = sub_21D9352FC(v14, a2);

      v41[0] = v11;
      sub_21D5621D8(v16);

      v17 = v41[0];
      v3 = v41[0] >> 62;
      v18 = v41[0] >> 62 ? sub_21DBFBD7C() : *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v40 >> 62;
      if (v40 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v42 = v15;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v19)
        {
          v21 = v40 & 0xFFFFFFFFFFFFFF8;
          if (v20 <= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_21DBFBD7C();
        goto LABEL_19;
      }

      if (v19)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBF9C();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v21 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v3)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBD7C();
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v23 >> 1) - v22) < v18)
          {
            goto LABEL_43;
          }

          v25 = v21 + 8 * v22 + 32;
          if (v3)
          {
            if (v24 < 1)
            {
              goto LABEL_45;
            }

            sub_21D0D0F1C(&unk_27CE5DE10, &qword_27CE5DE08, &unk_21DC1B1D8, MEMORY[0x277D83988]);
            for (i = 0; i != v24; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE08, &unk_21DC1B1D8);
              v27 = sub_21D198D24(v41, i, v17);
              v29 = *v28;
              (v27)(v41, 0);
              *(v25 + 8 * i) = v29;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v3 = v42;
          if (v18 >= 1)
          {
            v30 = *(v21 + 16);
            v6 = __OFADD__(v30, v18);
            v31 = v30 + v18;
            if (v6)
            {
              goto LABEL_44;
            }

            *(v21 + 16) = v31;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_24;
        }
      }

      v3 = v42;
      if (v18 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v5 == v35)
      {
        return v40;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBD7C();
    v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_21DBFBD7C();
    isUniquelyReferenced_nonNull_bridgeObject = v32;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D9357D8(uint64_t a1, void *a2)
{
  sub_21D0CEB98(a1, v36);
  result = swift_dynamicCast();
  if (result)
  {
    v25 = *&v35[64];
    v26 = *&v35[80];
    v21 = *v35;
    v22 = *&v35[16];
    v23 = *&v35[32];
    v24 = *&v35[48];
    v5 = *v35;
    v29 = *&v35[24];
    v30 = *&v35[40];
    v27 = *&v35[96];
    v28 = *&v35[8];
    v34 = *&v35[104];
    v32 = *&v35[72];
    v33 = *&v35[88];
    v31 = *&v35[56];
    if (*v35)
    {
      v6 = *v35;
      v7 = [a2 identifier];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19[0] = *(v2 + 32);
      *(v2 + 32) = 0x8000000000000000;
      sub_21D477B78(v7, v6, isUniquelyReferenced_nonNull_native);

      *(v2 + 32) = v19[0];
      swift_endAccess();
      swift_beginAccess();
      v9 = *(v2 + 24);
      v20[4] = v25;
      v20[5] = v26;
      v20[6] = v27;
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23;
      v20[3] = v24;
      sub_21D1D9C94(v20, v19);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 24) = v9;
      if ((v10 & 1) == 0)
      {
        v9 = sub_21D212760(0, *(v9 + 2) + 1, 1, v9);
        *(v2 + 24) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_21D212760((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[112 * v12];
      *(v13 + 4) = v5;
      v14 = v28;
      v15 = v29;
      *(v13 + 72) = v30;
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      v16 = v31;
      v17 = v32;
      v18 = v33;
      *(v13 + 17) = v34;
      *(v13 + 120) = v18;
      *(v13 + 104) = v17;
      *(v13 + 88) = v16;
      *(v2 + 24) = v9;
      swift_endAccess();
      return sub_21D1D9AE0(&v21);
    }
  }

  return result;
}

void sub_21D935A1C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = [a1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (v7 == 0.0)
  {
    v7 = 1.0;
  }

  v8 = [a1 effectiveUserInterfaceLayoutDirection] == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A300, &unk_21DC0EA70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 32) = v7;
  swift_beginAccess();
  v10 = v2[3];
  v14 = vdupq_n_s64(0x4044000000000000uLL);
  v15 = v9;
  v16 = v8;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = v4;
  sub_21DBF8E0C();

  v13 = a1;
  TTRParticipantAvatarProvider.fillInAvatarImages(for:configuration:completion:)(v10, v14.i64, sub_21D936164, v12);
}

double sub_21D935BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = [a3 menu];
    if (v8)
    {
      v9 = v8;
      v10 = [v9 children];
      sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
      sub_21DBFA5EC();

      sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE98, &qword_21DC31DA0);
      sub_21D0D0F1C(&qword_27CE63EE0, &qword_27CE5DE98, &qword_21DC31DA0, MEMORY[0x277D83970]);
      sub_21DBFA47C();

      v11 = [v9 children];
      sub_21DBFA5EC();

      sub_21D0D8CF0(0, &qword_280D0C1F0, 0x277D75710);
      v12 = sub_21DBFA47C();

      v13 = sub_21D9352FC(v12, a4);

      sub_21D5621D8(v13);
    }

    swift_getKeyPath(asc_21DC31D50);
    swift_getKeyPath(a8_0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE08, &unk_21DC1B1D8);
    sub_21D0D0F1C(&qword_27CE63ED8, &qword_27CE5DE08, &unk_21DC1B1D8, MEMORY[0x277D83970]);
    sub_21D93617C();
    v14 = sub_21DBFA46C();

    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = a1 + 72;
      v31 = v14;
      do
      {
        v34 = v15;
        v17 = *(v16 - 40);
        v18 = *(v16 - 32);
        v19 = *(v16 + 64);
        swift_beginAccess();
        v20 = *(Strong + 32);
        v33 = *(v20 + 16);
        v21 = v19;
        v22 = v17;
        v23 = v18;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        if (v33 && (v24 = sub_21D17E07C(v22), (v25 & 1) != 0))
        {
          v26 = *(*(v20 + 56) + 8 * v24);
          swift_endAccess();
          if (*(v31 + 16))
          {
            v27 = v26;
            v28 = sub_21D10FE34(v27);
            if ((v29 & 1) == 0)
            {

              v23 = v22;
              v22 = v27;
              goto LABEL_7;
            }

            v30 = *(*(v31 + 56) + 8 * v28);
            [v30 setImage_];
          }
        }

        else
        {
          swift_endAccess();
        }

LABEL_7:

        v16 += 112;
        v15 = v34 - 1;
      }

      while (v34 != 1);
    }
  }

  return result;
}

uint64_t sub_21D936084()
{

  return swift_deallocClassInstance();
}

double sub_21D9360F0()
{
  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x277D84F98];

  return result;
}

unint64_t sub_21D93617C()
{
  result = qword_27CE57BE8;
  if (!qword_27CE57BE8)
  {
    type metadata accessor for Identifier(255);
    result = swift_getWitnessTable("9!cdܫ\b", v3, v0, v1);
    atomic_store(result, &qword_27CE57BE8);
  }

  return result;
}

__n128 TTRIListCellStateAdaptor.State.init(title:listName:listColorName:listBadge:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 121) = 0u;
  *(a8 + 48) = xmmword_21DC19C40;
  *(a8 + 64) = 0u;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a8 + 96);
  v15[2] = *(a8 + 80);
  v15[3] = v10;
  v16[0] = *(a8 + 112);
  *(v16 + 9) = *(a8 + 121);
  v11 = *(a8 + 64);
  v15[0] = *(a8 + 48);
  v15[1] = v11;
  sub_21D0CF7E0(v15, &unk_27CE5E9E0, &unk_21DC1D600);
  v12 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v12;
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 121) = *(a7 + 73);
  result = *a7;
  v14 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v14;
  return result;
}

id TTRIListCellContent.__allocating_init(state:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[7];
  v9[6] = a1[6];
  v10[0] = v4;
  *(v10 + 9) = *(a1 + 121);
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v6 = a1[5];
  v9[4] = a1[4];
  v9[5] = v6;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  return sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, v9);
}

uint64_t TTRIListCellStateAdaptor.State.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void TTRIListCellStateAdaptor.State.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TTRIListCellStateAdaptor.State.listName.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

void TTRIListCellStateAdaptor.State.listName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TTRIListCellStateAdaptor.State.listColorName.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

void TTRIListCellStateAdaptor.State.listColorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t TTRIListCellStateAdaptor.State.listBadge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v10 = v1[5];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[7];
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 121);
  v6 = v1[4];
  v9[0] = v1[3];
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_21D0D3954(v9, &v8, &unk_27CE5E9E0, &unk_21DC1D600);
}

__n128 TTRIListCellStateAdaptor.State.listBadge.setter(uint64_t a1)
{
  v3 = v1[6];
  v8[2] = v1[5];
  v8[3] = v3;
  v9[0] = v1[7];
  *(v9 + 9) = *(v1 + 121);
  v4 = v1[4];
  v8[0] = v1[3];
  v8[1] = v4;
  sub_21D0CF7E0(v8, &unk_27CE5E9E0, &unk_21DC1D600);
  v5 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v5;
  v1[7] = *(a1 + 64);
  *(v1 + 121) = *(a1 + 73);
  result = *a1;
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  return result;
}

id TTRIListCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRIListCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIListCellStateAdaptor.setState(_:on:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v12[6] = a1[6];
  v13[0] = v2;
  *(v13 + 9) = *(a1 + 121);
  v3 = a1[3];
  v12[2] = a1[2];
  v12[3] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v10[2] = a2;
  v10[3] = v12;
  v6 = *(a2 + qword_27CE5AF20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D937A48;
  *(v7 + 24) = v10;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_117;
  v8 = _Block_copy(aBlock);

  [v6 performBatchUpdates_];
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_21D936750(char *a1, uint64_t a2)
{
  v4 = *&a1[qword_27CE65590];
  v5 = sub_21DBFA12C();
  [v4 setText_];

  v6 = *&a1[qword_27CE63EE8];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_21DBF8E0C();
  v9 = sub_21DBFA12C();
  [v6 setText_];

  v10 = *(a2 + 64);
  v57 = *(a2 + 48);
  v58 = v10;
  v11 = *(a2 + 96);
  v59 = *(a2 + 80);
  v60 = v11;
  v61[0] = *(a2 + 112);
  *(v61 + 9) = *(a2 + 121);
  v12 = *(&v57 + 1);
  if (*(&v57 + 1) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21DC08D00;
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    v14 = 1;
    v15 = *(a2 + 40);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v16 = v57;
  v17 = v58;
  v53 = v59;
  v54 = *(&v58 + 1);
  v51 = v60;
  v52 = *(&v59 + 1);
  v50 = *(&v60 + 1);
  v49 = v61[0];
  v62 = *(a2 + 120);
  v63 = *(a2 + 136);
  v18 = v62;
  if (v63)
  {
    v48 = v58;
    v12 = *(&v62 + 1);
    v19 = *&a1[qword_27CE63EF0];
    v20 = (v19 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    v23 = v62;
    *v20 = v62;
    v20[1] = v12;
    sub_21D93814C(&v62, v55);
    sub_21D93814C(&v62, v55);
    sub_21D0D3954(&v57, v55, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D1136D0(v21, v22);

    v24 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
    swift_beginAccess();
    v25 = *(v19 + v24);
    *(v19 + v24) = 0x4030000000000000;
    if (v25 == 16.0)
    {
      v26 = v23;
      v17 = v48;
    }

    else
    {
      v40 = *(v19 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
      v26 = v23;
      if (v40)
      {
        v41 = v40;
        v42 = [v41 font];
        v17 = v48;
        if (v42)
        {
          v47 = v42;
          v43 = [v42 fontWithSize_];
          v44 = v41;
          v46 = v41;
          v45 = v43;
          [v44 setFont_];
        }

        else
        {
        }
      }

      else
      {
        v17 = v48;
      }
    }
  }

  else
  {
    sub_21D93814C(&v62, v55);
    sub_21D0D3954(&v57, v55, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D114670(0);
    v27 = REMListBadgeEmblem.image.getter(v18);
    sub_21D112D3C(v27);
    sub_21D9381A8(&v62);
    sub_21DBF8E0C();
    v26 = v16;
  }

  v55[0] = v17;
  v55[1] = v54;
  v55[2] = v53;
  v55[3] = v52;
  v55[4] = v51;
  v55[5] = v50;
  v56 = v49 & 1;
  sub_21D0FB960(v17, v54, v53, v52, v51, v50, v49 & 1);
  sub_21D113E3C(v55);
  sub_21D0CF7E0(&v57, &unk_27CE5E9E0, &unk_21DC1D600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D00;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  if (!v12)
  {
    v14 = 1;
    v15 = *(a2 + 40);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (qword_280D16610 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21DC08D00;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_21D17A884();
  *(v28 + 32) = v26;
  *(v28 + 40) = v12;
  v29 = sub_21DBFA13C();
  v31 = v30;

  v33 = *(v13 + 16);
  v32 = *(v13 + 24);
  v14 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v13 = sub_21D210A84((v32 > 1), v33 + 1, 1, v13);
  }

  *(v13 + 16) = v14;
  v34 = v13 + 16 * v33;
  *(v34 + 32) = v29;
  *(v34 + 40) = v31;
  v15 = *(a2 + 40);
  if (v15)
  {
LABEL_16:
    v35 = *(a2 + 32);
    v36 = *(v13 + 24);
    sub_21DBF8E0C();
    if (v14 >= v36 >> 1)
    {
      v13 = sub_21D210A84((v36 > 1), v14 + 1, 1, v13);
    }

    *(v13 + 16) = v14 + 1;
    v37 = v13 + 16 * v14;
    *(v37 + 32) = v35;
    *(v37 + 40) = v15;
  }

LABEL_19:
  v38 = sub_21DBFA12C();
  [a1 setAccessibilityLabel_];

  v55[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  sub_21DBFA07C();

  v39 = sub_21DBFA12C();

  [a1 setAccessibilityValue_];
}

id TTRIListCellContent.init(state:)(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 121);
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, v6);
}

id TTRIDetailListTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIDetailListTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[qword_27CE63EF8];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v10 = sub_21D900614(1);
  [v9 setFont_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setLineBreakMode_];
  v11 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC09CF0;
  *(v12 + 32) = v9;
  v13 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D114EC8();
  v14 = v9;
  v15 = sub_21DBFA5DC();

  v16 = [v13 initWithArrangedSubviews_];

  [v16 setAxis_];
  [v16 setDistribution_];
  [v16 setAlignment_];
  [v16 setSpacing_];
  type metadata accessor for TTRListBadgeView();
  *&v4[qword_27CE63EF0] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_27CE63EE8] = v14;
  v17 = v14;
  if (a3)
  {
    v18 = sub_21DBFA12C();
  }

  else
  {
    v18 = 0;
  }

  v51.receiver = v4;
  v51.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v51, sel_initWithStyle_reuseIdentifier_, a1, v18);

  type metadata accessor for TTRIDetailListTableViewCell.ExtraAccessoryProvider();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v14;
  v48 = v14;
  v21 = &v19[qword_27CE65610];
  swift_beginAccess();
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 2);
  v25 = *(v21 + 3);
  v26 = *(v21 + 4);
  *v21 = v20;
  *(v21 + 1) = &off_282EDBDD0;
  *(v21 + 3) = 0;
  *(v21 + 4) = 0;
  *(v21 + 2) = 0;
  v27 = v21[40];
  v21[40] = 2;
  v28 = v19;
  v29 = v48;
  v30 = v28;
  v31 = v16;
  sub_21D361B20(v22, v23, v24, v25, v26, v27);
  sub_21D361BB4(v22, v23, v24, v25, v26, v27);
  *&v57 = v22;
  *(&v57 + 1) = v23;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  *&v59 = v26;
  BYTE8(v59) = v27;
  sub_21DA7F6B4(&v57);
  sub_21D361BB4(v22, v23, v24, v25, v26, v27);
  v32 = *&v30[qword_27CE63EF0];
  LOBYTE(v57) = 0;
  LOBYTE(v52) = 1;
  v33 = &v30[qword_27CE655A0];
  swift_beginAccess();
  v52 = *v33;
  v34 = *(v33 + 1);
  v35 = *(v33 + 2);
  v36 = *(v33 + 3);
  v56 = v33[64];
  v54 = v35;
  v55 = v36;
  v53 = v34;
  v57 = *v33;
  v37 = *(v33 + 1);
  v38 = *(v33 + 2);
  v39 = *(v33 + 3);
  v61 = v33[64];
  v59 = v38;
  v60 = v39;
  v58 = v37;
  *v33 = v32;
  __asm { FMOV            V0.2D, #31.0 }

  *(v33 + 8) = _Q0;
  *(v33 + 3) = 0;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  v33[64] = 65;
  v45 = v30;
  v46 = v32;
  sub_21D0D3954(&v52, v49, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(&v57, &unk_27CE5EA00, &unk_21DC0A7C0);
  v49[2] = v54;
  v49[3] = v55;
  v50 = v56;
  v49[0] = v52;
  v49[1] = v53;
  sub_21DA7EF48(v49);

  sub_21D0CF7E0(&v52, &unk_27CE5EA00, &unk_21DC0A7C0);
  [v45 setIsAccessibilityElement_];

  return v45;
}

char *sub_21D937350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIDetailListTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRIDetailListTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIDetailListTableViewCell.init(coder:)()
{
  v1 = (v0 + qword_27CE63EF8);
  *v1 = 0u;
  v1[1] = 0u;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D937450(uint64_t a1)
{
  v1 = (a1 + qword_27CE63EF8);
  *v1 = 0u;
  v1[1] = 0u;
  sub_21DBFC31C();
  __break(1u);
}

void TTRIDetailListTableViewCell.init(reuseIdentifier:)()
{
  v1 = (v0 + qword_27CE63EF8);
  *v1 = 0u;
  v1[1] = 0u;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t _s15RemindersUICore24TTRIListCellStateAdaptorV0E0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v58[2] = *(a1 + 5);
  v58[3] = v10;
  v59[0] = *(a1 + 7);
  *(v59 + 9) = *(a1 + 121);
  v11 = *(a1 + 4);
  v58[0] = *(a1 + 3);
  v58[1] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  *(v61 + 9) = *(a2 + 121);
  v18 = *(a2 + 7);
  v60[3] = *(a2 + 6);
  v61[0] = v18;
  v19 = *(a2 + 5);
  v60[1] = *(a2 + 4);
  v60[2] = v19;
  v60[0] = *(a2 + 3);
  if ((v4 != v12 || v5 != v13) && (sub_21DBFC64C() & 1) == 0 || (v6 != v14 || v8 != v15) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    if (v16 && (v7 == v17 && v9 == v16 || (sub_21DBFC64C() & 1) != 0))
    {
      goto LABEL_12;
    }

LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_12:
  v20 = v58[0];
  v21 = v60[0];
  if (*(&v58[0] + 1) == 1)
  {
    if (*(&v60[0] + 1) == 1)
    {
      v22 = 1;
      *&v52 = *&v58[0];
      *(&v52 + 1) = 1;
      v23 = *(a1 + 7);
      v55 = *(a1 + 6);
      v56[0] = v23;
      *(v56 + 9) = *(a1 + 121);
      v24 = *(a1 + 5);
      v53 = *(a1 + 4);
      v54 = v24;
      sub_21D0D3954(v58, &v47, &unk_27CE5E9E0, &unk_21DC1D600);
      sub_21D0D3954(v60, &v47, &unk_27CE5E9E0, &unk_21DC1D600);
      v25 = &v52;
LABEL_23:
      sub_21D0CF7E0(v25, &unk_27CE5E9E0, &unk_21DC1D600);
      return v22 & 1;
    }

    sub_21D0D3954(v58, &v52, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D0D3954(v60, &v52, &unk_27CE5E9E0, &unk_21DC1D600);
  }

  else
  {
    v52 = v58[0];
    v27 = *(a1 + 121);
    v28 = *(a1 + 7);
    v55 = *(a1 + 6);
    v56[0] = v28;
    *(v56 + 9) = v27;
    v29 = *(a1 + 5);
    v53 = *(a1 + 4);
    v54 = v29;
    v49 = v29;
    v50 = v55;
    v47 = v58[0];
    v48 = v53;
    v51[0] = v56[0];
    *(v51 + 9) = *(v56 + 9);
    if (*(&v60[0] + 1) != 1)
    {
      v34 = *(a2 + 7);
      v45 = *(a2 + 6);
      v46[0] = v34;
      *(v46 + 9) = *(a2 + 121);
      v35 = *(a2 + 5);
      v43 = *(a2 + 4);
      v44 = v35;
      v42 = v60[0];
      sub_21D0D3954(v58, v40, &unk_27CE5E9E0, &unk_21DC1D600);
      sub_21D0D3954(v60, v40, &unk_27CE5E9E0, &unk_21DC1D600);
      sub_21D0D3954(&v52, v40, &unk_27CE5E9E0, &unk_21DC1D600);
      v22 = _s15RemindersUICore26TTRReminderDetailViewModelV05BadgeeF0V2eeoiySbAE_AEtFZ_0(&v47, &v42);
      v38[2] = v44;
      v38[3] = v45;
      v39[0] = v46[0];
      *(v39 + 9) = *(v46 + 9);
      v38[0] = v42;
      v38[1] = v43;
      sub_21D5AF8C8(v38);
      v40[2] = v49;
      v40[3] = v50;
      v41[0] = v51[0];
      *(v41 + 9) = *(v51 + 9);
      v40[0] = v47;
      v40[1] = v48;
      sub_21D5AF8C8(v40);
      v42 = v20;
      v36 = *(a1 + 7);
      v45 = *(a1 + 6);
      v46[0] = v36;
      *(v46 + 9) = *(a1 + 121);
      v37 = *(a1 + 5);
      v43 = *(a1 + 4);
      v44 = v37;
      v25 = &v42;
      goto LABEL_23;
    }

    v44 = v54;
    v45 = v55;
    v46[0] = v56[0];
    *(v46 + 9) = *(v56 + 9);
    v42 = v52;
    v43 = v53;
    sub_21D0D3954(v58, v40, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D0D3954(v60, v40, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D0D3954(&v52, v40, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D5AF8C8(&v42);
  }

  v52 = v20;
  v30 = *(a1 + 7);
  v55 = *(a1 + 6);
  v56[0] = v30;
  *(v56 + 9) = *(a1 + 121);
  v31 = *(a1 + 5);
  v53 = *(a1 + 4);
  v54 = v31;
  v56[2] = v21;
  *(v57 + 9) = *(a2 + 121);
  v32 = *(a2 + 7);
  v56[5] = *(a2 + 6);
  v57[0] = v32;
  v33 = *(a2 + 5);
  v56[3] = *(a2 + 4);
  v56[4] = v33;
  sub_21D0CF7E0(&v52, &qword_27CE63F28, &qword_21DC31EE8);
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_21D937A78()
{
  result = qword_27CE63F00;
  if (!qword_27CE63F00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIListCellStateAdaptor.State, &type metadata for TTRIListCellStateAdaptor.State, v0, v1);
    atomic_store(result, &qword_27CE63F00);
  }

  return result;
}

void destroy for TTRIListCellStateAdaptor.State(uint64_t a1)
{

  if (*(a1 + 56) != 1)
  {

    sub_21D1078C0(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
    v2 = *(a1 + 120);
    v3 = *(a1 + 128);
    v4 = *(a1 + 136);

    sub_21D0FB9F4(v2, v3, v4);
  }
}

uint64_t initializeWithCopy for TTRIListCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 == 1)
  {
    v8 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v8;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 121) = *(a2 + 121);
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v10 = *(a2 + 64);
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = *(a2 + 88);
    v14 = *(a2 + 96);
    v15 = *(a2 + 104);
    v16 = *(a2 + 112);
    sub_21DBF8E0C();
    sub_21D0FB960(v10, v11, v12, v13, v14, v15, v16);
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
    *(a1 + 112) = v16;
    v17 = *(a2 + 120);
    v18 = *(a2 + 128);
    v19 = *(a2 + 136);
    sub_21D0FB9BC(v17, v18, v19);
    *(a1 + 120) = v17;
    *(a1 + 128) = v18;
    *(a1 + 136) = v19;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIListCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  v4 = *(a2 + 56);
  if (*(a1 + 56) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v5;
      v6 = *(a2 + 80);
      v7 = *(a2 + 96);
      v8 = *(a2 + 112);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 96) = v7;
      *(a1 + 112) = v8;
      *(a1 + 80) = v6;
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v13 = *(a2 + 64);
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);
      v16 = *(a2 + 88);
      v17 = *(a2 + 96);
      v18 = *(a2 + 104);
      v19 = *(a2 + 112);
      sub_21DBF8E0C();
      sub_21D0FB960(v13, v14, v15, v16, v17, v18, v19);
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      *(a1 + 80) = v15;
      *(a1 + 88) = v16;
      *(a1 + 96) = v17;
      *(a1 + 104) = v18;
      *(a1 + 112) = v19;
      v20 = *(a2 + 120);
      v21 = *(a2 + 128);
      v22 = *(a2 + 136);
      sub_21D0FB9BC(v20, v21, v22);
      *(a1 + 120) = v20;
      *(a1 + 128) = v21;
      *(a1 + 136) = v22;
    }
  }

  else if (v4 == 1)
  {
    sub_21D5AF8C8(a1 + 48);
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    v11 = *(a2 + 96);
    v10 = *(a2 + 112);
    v12 = *(a2 + 80);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 96) = v11;
    *(a1 + 112) = v10;
    *(a1 + 80) = v12;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    sub_21DBF8E0C();

    v23 = *(a2 + 64);
    v24 = *(a2 + 72);
    v25 = *(a2 + 80);
    v26 = *(a2 + 88);
    v27 = *(a2 + 96);
    v28 = *(a2 + 104);
    v29 = *(a2 + 112);
    sub_21D0FB960(v23, v24, v25, v26, v27, v28, v29);
    v30 = *(a1 + 64);
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
    v35 = *(a1 + 104);
    v36 = *(a1 + 112);
    *(a1 + 64) = v23;
    *(a1 + 72) = v24;
    *(a1 + 80) = v25;
    *(a1 + 88) = v26;
    *(a1 + 96) = v27;
    *(a1 + 104) = v28;
    *(a1 + 112) = v29;
    sub_21D1078C0(v30, v31, v32, v33, v34, v35, v36);
    v37 = *(a2 + 120);
    v38 = *(a2 + 128);
    v39 = *(a2 + 136);
    sub_21D0FB9BC(v37, v38, v39);
    v40 = *(a1 + 120);
    v41 = *(a1 + 128);
    v42 = *(a1 + 136);
    *(a1 + 120) = v37;
    *(a1 + 128) = v38;
    *(a1 + 136) = v39;
    sub_21D0FB9F4(v40, v41, v42);
  }

  return a1;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for TTRIListCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  if (*(a1 + 56) != 1)
  {
    v7 = *(a2 + 56);
    if (v7 != 1)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v7;

      v10 = *(a2 + 112);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v13 = *(a1 + 80);
      v14 = *(a1 + 88);
      v15 = *(a1 + 96);
      v16 = *(a1 + 104);
      v17 = *(a1 + 112);
      v18 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v18;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v10;
      sub_21D1078C0(v11, v12, v13, v14, v15, v16, v17);
      v19 = *(a2 + 136);
      v20 = *(a1 + 120);
      v21 = *(a1 + 128);
      v22 = *(a1 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v19;
      sub_21D0FB9F4(v20, v21, v22);
      return a1;
    }

    sub_21D5AF8C8(a1 + 48);
  }

  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIListCellStateAdaptor.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t storeEnumTagSinglePayload for TTRIListCellStateAdaptor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}