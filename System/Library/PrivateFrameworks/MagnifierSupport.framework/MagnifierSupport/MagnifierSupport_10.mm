uint64_t sub_257C907B4(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = *(a1 + 16);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v25[0] = *a1;
  v26 = v7;
  v27 = v6;
  v28 = v5;
  v29 = v8;
  v30 = v9;
  v10 = v3;
  sub_257C97430(v25, a2, 0, &v31, a3);
  if (!v32)
  {

    return 0;
  }

  v11 = v34;
  v12 = v35;
  v13 = v36;
  v14 = v33;
  v25[0] = v31;
  v25[1] = v32;

  MEMORY[0x259C72150](8236, 0xE200000000000000);
  v24 = v25[0];
  if (v13)
  {
    type metadata accessor for MAGOutputEvent(0);
    swift_beginAccess();
    v15 = qword_2815447E0;

    if (v15 != -1)
    {
      v16 = swift_once();
    }

    MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
    sub_257ECFD50();

    if (v23 == 1)
    {
      MEMORY[0x259C72150](8236, 0xE200000000000000);
      MEMORY[0x259C72150](v12, v13);
    }
  }

  MEMORY[0x259C72150](v14, v11);

  return v24;
}

uint64_t sub_257C90A14(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  sub_257C97B70(a1, a2, 0, v16, a3);
  if (!v16[1])
  {
    return 0;
  }

  v3 = v16[3];
  v4 = v16[4];
  v5 = v16[5];
  v6 = v16[2];
  v15 = v16[0];

  MEMORY[0x259C72150](8236, 0xE200000000000000);
  if (v5)
  {
    type metadata accessor for MAGOutputEvent(0);
    swift_beginAccess();
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
    sub_257ECFD50();

    if (v14 == 1)
    {
      MEMORY[0x259C72150](8236, 0xE200000000000000);
      MEMORY[0x259C72150](v4, v5);
    }
  }

  MEMORY[0x259C72150](v6, v3);

  return v15;
}

uint64_t sub_257C90C08(uint64_t a1, __n128 a2)
{
  v20 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = sub_257C63CD8(*(a1 + 16), 0);
  v6 = sub_257C67308(&v21, v5 + 32, v3, a1);
  v7 = v21;

  sub_257C02520(v7);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v21 = v5;
  sub_257C9AA00(&v21);
  v8 = v21;
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v18[2] = v2;
  v19 = v20;
  sub_257C8321C(sub_257C9F1B0, v18, v8);
  v15 = v14;

  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
  v16 = sub_257ECF420();

  return v16;
}

void sub_257C90DC8(uint64_t a1, int a2)
{
  v84 = a2;
  v83 = sub_257ECC7D0();
  v3 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v4, v5, v6, v7);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DetectedTextBlock(0);
  v78 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v9, v10, v11, v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E58, &qword_257EDF530);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v77 = (&v72 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E60, &qword_257EDF538);
  MEMORY[0x28223BE20](v22 - 8, v23, v24, v25, v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  v35 = &v72 - v34;
  v36 = 0;
  v79 = a1;
  v37 = *(a1 + 16);
  v86 = (v16 + 48);
  v87 = (v16 + 56);
  v81 = (v3 + 8);
  v75 = 0;
  v76 = 0xE000000000000000;
  v74 = xmmword_257ED9BD0;
  v80 = v37;
  while (1)
  {
    if (v36 == v37)
    {
      v38 = 1;
      v36 = v37;
      goto LABEL_8;
    }

    if (v36 >= v37)
    {
      break;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_21;
    }

    v39 = v77;
    v40 = v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v36;
    v41 = *(v15 + 48);
    *v77 = v36;
    sub_257C9A79C(v40, v39 + v41, type metadata accessor for DetectedTextBlock);
    sub_257C0DD14(v39, v28, &qword_27F8F6E58, &qword_257EDF530);
    v38 = 0;
    ++v36;
LABEL_8:
    (*v87)(v28, v38, 1, v15);
    sub_257C0DD14(v28, v35, &qword_27F8F6E60, &qword_257EDF538);
    if ((*v86)(v35, 1, v15) == 1)
    {
      return;
    }

    v42 = sub_257C9CF58(&v35[*(v15 + 48)], v14, type metadata accessor for DetectedTextBlock);
    v46 = *&v14[*(v85 + 20)];
    if (v46)
    {
      MEMORY[0x28223BE20](v42, v43, v46, v44, v45);
      *(&v72 - 2) = v14;
      sub_257C82C5C(sub_257C31C98, (&v72 - 4), v47);
      if (v84)
      {
        v49 = sub_257E5B998(v48);
      }

      else
      {
        v49 = sub_257E5B9A4(v48);
      }

      v50 = v49;

      v51 = [v50 string];

      v52 = sub_257ECF500();
      v54 = v53;

      v88 = v52;
      v89 = v54;
      v55 = v82;
      sub_257ECC7A0();
      sub_257BDAB08();
      v56 = sub_257ED0110();
      v58 = v57;
      (*v81)(v55, v83);

      if (sub_257ECF5E0() >= 1)
      {
        v60 = v75;
        v59 = v76;
        if (sub_257ECF5E0() < 1)
        {
          sub_257C9A804(v14, type metadata accessor for DetectedTextBlock);

          v75 = v56;
          v76 = v58;
        }

        else
        {
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v75 = v60;
          v76 = v59;
          v62 = [objc_opt_self() bundleForClass_];
          v63 = sub_257ECF4C0();
          v72 = v63;
          v73 = sub_257ECF4C0();
          v64 = [v62 localizedStringForKey:v63 value:0 table:v73];

          v65 = sub_257ECF500();
          v72 = v66;
          v73 = v65;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
          v67 = swift_allocObject();
          *(v67 + 16) = v74;
          v68 = MEMORY[0x277D837D0];
          *(v67 + 56) = MEMORY[0x277D837D0];
          v69 = sub_257BFB13C();
          v70 = v76;
          *(v67 + 32) = v75;
          *(v67 + 40) = v70;
          *(v67 + 96) = v68;
          *(v67 + 104) = v69;
          *(v67 + 64) = v69;
          *(v67 + 72) = v56;
          *(v67 + 80) = v58;
          v75 = sub_257ECF540();
          v76 = v71;

          sub_257C9A804(v14, type metadata accessor for DetectedTextBlock);
        }

        v37 = v80;
      }

      else
      {
        sub_257C9A804(v14, type metadata accessor for DetectedTextBlock);

        v37 = v80;
      }
    }

    else
    {
      sub_257C9A804(v14, type metadata accessor for DetectedTextBlock);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t MAGOutputEvent.brailleContent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v215 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v216 = (&v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v214 = (&v212 - v19);
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v213 = (&v212 - v25);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = (&v212 - v31);
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = (&v212 - v38);
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  v46 = (&v212 - v45);
  MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
  v53 = &v212 - v52;
  MEMORY[0x28223BE20](v54, v55, v56, v57, v58);
  v60 = &v212 - v59;
  MEMORY[0x28223BE20](v61, v62, v63, v64, v65);
  v67 = &v212 - v66;
  MEMORY[0x28223BE20](v68, v69, v70, v71, v72);
  v74 = &v212 - v73;
  MEMORY[0x28223BE20](v75, v76, v77, v78, v79);
  v81 = &v212 - v80;
  v217 = type metadata accessor for MAGOutputEvent(0);
  v82 = v217[5];
  v218 = v1;
  sub_257C9A79C(v1 + v82, v81, type metadata accessor for MAGOutputEvent.EventType);
  v219 = v81;
  v83 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_257C9A79C(v219, v74, type metadata accessor for MAGOutputEvent.EventType);
      v117 = *v74;
      v118 = *(v74 + 2);
      v119 = v217;
      v120 = v218;
      v121 = *(v218 + v217[7]);
      v83 = sub_257C8F16C(v117, v118);
      if ((v121 & 1) == 0)
      {

        goto LABEL_79;
      }

      v122 = *(v120 + v119[6]);
      v123 = [objc_opt_self() sharedInstance];
      v124 = v123;
      if (v122 == 2)
      {
        v125 = [v123 liveRecognitionActivity];

        if (v125)
        {
          v126 = [v125 peopleFeedbacksBraille];

          if (!v126)
          {
            goto LABEL_77;
          }

          goto LABEL_79;
        }

LABEL_65:

        goto LABEL_78;
      }

      v193 = [v123 liveRecognitionPeopleFeedbacks];

      if (!v193)
      {
        goto LABEL_65;
      }

      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      sub_257C9CE74();
      v194 = sub_257ECFA70();

      v195 = sub_257ECFAC0();
      v196 = sub_257C409E8(v195, v194);

      if ((v196 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_79;
    case 2u:
      sub_257C9A79C(v219, v67, type metadata accessor for MAGOutputEvent.EventType);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);
      v100 = *&v67[*(v99 + 48)];
      v101 = *&v67[*(v99 + 64)];
      v102 = v215;
      sub_257C9CF58(v67, v215, type metadata accessor for DetectedDoor);
      if (!*(v100 + 16))
      {
        goto LABEL_49;
      }

      v103 = v217;
      v104 = v218;
      v105 = *(v218 + v217[7]);
      v83 = sub_257C8F7CC(v102, v100, v101);

      if ((v105 & 1) == 0)
      {
        sub_257C9A804(v102, type metadata accessor for DetectedDoor);
        goto LABEL_79;
      }

      v106 = *(v104 + v103[6]);
      v107 = [objc_opt_self() sharedInstance];
      v108 = v107;
      if (v106 == 2)
      {
        v109 = [v107 liveRecognitionActivity];

        if (v109)
        {
          v110 = [v109 doorsFeedbacksBraille];

          sub_257C9A804(v102, type metadata accessor for DetectedDoor);
          if (!v110)
          {
            goto LABEL_77;
          }

          goto LABEL_79;
        }

LABEL_49:
        sub_257C9A804(v102, type metadata accessor for DetectedDoor);
        goto LABEL_77;
      }

      v208 = [v107 liveRecognitionDoorsFeedbacks];

      if (!v208)
      {
        goto LABEL_49;
      }

      sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
      sub_257C9CE74();
      v209 = sub_257ECFA70();

      v210 = sub_257ECFAC0();
      v211 = sub_257C409E8(v210, v209);

      sub_257C9A804(v102, type metadata accessor for DetectedDoor);
      if ((v211 & 1) == 0)
      {
LABEL_77:

LABEL_78:
        v83 = 0;
      }

LABEL_79:
      sub_257C9A804(v219, type metadata accessor for MAGOutputEvent.EventType);
      return v83;
    case 3u:
      sub_257C9A79C(v219, v60, type metadata accessor for MAGOutputEvent.EventType);
      v142 = *v60;
      v141 = *(v60 + 1);
      v143 = *(v60 + 4);
      v144 = v217;
      v145 = v218;
      if ((*(v218 + v217[7]) & 1) == 0)
      {
        if (v141)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
          v180 = swift_allocObject();
          *(v180 + 16) = xmmword_257ED9BD0;
          v181 = MEMORY[0x277D837D0];
          *(v180 + 56) = MEMORY[0x277D837D0];
          v182 = sub_257BFB13C();
          *(v180 + 64) = v182;
          *(v180 + 32) = v142;
          *(v180 + 40) = v141;
          v183 = generateTextToDisplay(depth:longUnitStyle:)(v143, 0);
          *(v180 + 96) = v181;
          *(v180 + 104) = v182;
          *(v180 + 72) = v183;
          v86 = sub_257ECF540();
LABEL_48:
          v83 = v86;
        }

        else
        {
          v83 = 0;
        }

        goto LABEL_79;
      }

      if (v141)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_257ED9BD0;
        v147 = MEMORY[0x277D837D0];
        *(v146 + 56) = MEMORY[0x277D837D0];
        v148 = sub_257BFB13C();
        *(v146 + 64) = v148;
        *(v146 + 32) = v142;
        *(v146 + 40) = v141;
        v149 = generateTextToDisplay(depth:longUnitStyle:)(v143, 0);
        *(v146 + 96) = v147;
        *(v146 + 104) = v148;
        *(v146 + 72) = v149;
        v83 = sub_257ECF540();
      }

      else
      {
        v83 = 0;
      }

      v202 = *(v145 + v144[6]);
      v94 = [objc_opt_self() sharedInstance];
      v95 = v94;
      if (v202 != 2)
      {
LABEL_73:
        v201 = [v94 liveRecognitionFurnitureFeedbacks];
        goto LABEL_74;
      }

LABEL_68:
      v139 = [v94 liveRecognitionActivity];

      if (!v139)
      {
        goto LABEL_77;
      }

      v152 = [v139 furnitureFeedbacksBraille];
      goto LABEL_70;
    case 4u:
      sub_257C9A79C(v219, v53, type metadata accessor for MAGOutputEvent.EventType);
      v128 = *(v53 + 4);
      v127 = *(v53 + 5);
      v129 = *(v53 + 2);
      v225[3] = *(v53 + 3);
      v225[4] = v128;
      v130 = *v53;
      v225[1] = *(v53 + 1);
      v225[2] = v129;
      v225[0] = v130;
      v131 = *(v53 + 12);
      v132 = v217;
      v133 = v218;
      if ((*(v218 + v217[7]) & 1) == 0)
      {
        v178 = *(v53 + 3);
        v222 = *(v53 + 2);
        v223 = v178;
        v224 = *(v53 + 4);
        v179 = *v53;
        v221 = *(v53 + 1);
        v220 = v179;
        v83 = sub_257C907B4(&v220, v131, v127);

        sub_257BE4084(v225, &qword_27F8F9C90, &unk_257EDCBD0);
        goto LABEL_79;
      }

      v134 = *(v53 + 3);
      v222 = *(v53 + 2);
      v223 = v134;
      v224 = *(v53 + 4);
      v135 = *v53;
      v221 = *(v53 + 1);
      v220 = v135;
      v83 = sub_257C907B4(&v220, v131, v127);

      v136 = *(v133 + v132[6]);
      v137 = [objc_opt_self() sharedInstance];
      v138 = v137;
      if (v136 == 2)
      {
        v139 = [v137 liveRecognitionActivity];

        if (v139)
        {
          v140 = [v139 furnitureFeedbacksBraille];
          sub_257BE4084(v225, &qword_27F8F9C90, &unk_257EDCBD0);
          goto LABEL_71;
        }

        sub_257BE4084(v225, &qword_27F8F9C90, &unk_257EDCBD0);
        goto LABEL_77;
      }

      v197 = [v137 liveRecognitionFurnitureFeedbacks];

      if (v197)
      {
        sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
        sub_257C9CE74();
        v198 = sub_257ECFA70();

        v199 = sub_257ECFAC0();
        v200 = sub_257C409E8(v199, v198);
        sub_257BE4084(v225, &qword_27F8F9C90, &unk_257EDCBD0);
        goto LABEL_76;
      }

      sub_257BE4084(v225, &qword_27F8F9C90, &unk_257EDCBD0);
      goto LABEL_78;
    case 5u:
      sub_257C9A79C(v219, v46, type metadata accessor for MAGOutputEvent.EventType);
      v87 = v46->i64[0];
      v88 = v46[1];
      v89 = v46[2].i64[0];
      v90 = v217;
      v91 = v218;
      v92 = *(v218 + v217[7]);
      v83 = sub_257C90A14(v87, v89, v88);

      if ((v92 & 1) == 0)
      {
        goto LABEL_79;
      }

      v93 = *(v91 + v90[6]);
      v94 = [objc_opt_self() sharedInstance];
      v95 = v94;
      if (v93 == 2)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 6u:
      sub_257C9A79C(v219, v39, type metadata accessor for MAGOutputEvent.EventType);
      v111 = v39->n128_u64[0];
      v112 = v39[1];
      v113 = v217;
      v114 = v218;
      v115 = *(v218 + v217[7]);
      v83 = sub_257C90C08(v111, v112);

      if ((v115 & 1) == 0)
      {
        goto LABEL_79;
      }

      v116 = *(v114 + v113[6]);
      v94 = [objc_opt_self() sharedInstance];
      v95 = v94;
      if (v116 == 2)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 7u:
      sub_257C9A79C(v219, v32, type metadata accessor for MAGOutputEvent.EventType);
      v83 = *v32;
      if ((*(v218 + v217[7]) & 1) == 0)
      {
        goto LABEL_79;
      }

      v150 = *(v218 + v217[6]);
      v151 = [objc_opt_self() sharedInstance];
      v95 = v151;
      if (v150 != 2)
      {
        v201 = [v151 liveRecognitionSceneFeedbacks];
        goto LABEL_74;
      }

      v139 = [v151 liveRecognitionActivity];

      if (!v139)
      {
        goto LABEL_77;
      }

      v152 = [v139 sceneFeedbacksBraille];
      goto LABEL_70;
    case 8u:
      v153 = v213;
      sub_257C9A79C(v219, v213, type metadata accessor for MAGOutputEvent.EventType);
      v154 = v217;
      v155 = v218;
      v156 = *(v218 + v217[7]);
      sub_257C90DC8(*v153, 1);
      v83 = v157;

      if ((v156 & 1) == 0)
      {
        goto LABEL_79;
      }

      v158 = *(v155 + v154[6]);
      v159 = [objc_opt_self() sharedInstance];
      v95 = v159;
      if (v158 != 2)
      {
        v201 = [v159 liveRecognitionPointAndSpeakFeedbacks];
LABEL_74:
        v203 = v201;

        if (v203)
        {
          sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0);
          sub_257C9CE74();
          v204 = sub_257ECFA70();

          v199 = sub_257ECFAC0();
          v200 = sub_257C409E8(v199, v204);
LABEL_76:

          if (v200)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_77;
      }

      v139 = [v159 liveRecognitionActivity];

      if (!v139)
      {
        goto LABEL_77;
      }

      v152 = [v139 pointAndSpeakFeedbacksBraille];
LABEL_70:
      v140 = v152;
LABEL_71:

      if (!v140)
      {
        goto LABEL_77;
      }

      goto LABEL_79;
    case 9u:
      v160 = v214;
      v161 = sub_257C9A79C(v219, v214, type metadata accessor for MAGOutputEvent.EventType);
      v166 = *v160;
      v167 = v218;
      if (!*(v218 + v217[6]))
      {
        goto LABEL_81;
      }

      if (*(v218 + v217[6]) != 1)
      {
        v184 = [objc_opt_self() sharedInstance];
        v185 = [v184 liveRecognitionActivity];

        if (!v185)
        {
          goto LABEL_77;
        }

        v186 = [v185 textFeedbacksBraille];
        if (v186)
        {
          MEMORY[0x28223BE20](v186, v187, v188, v189, v190);
          *(&v212 - 2) = v167;
          sub_257C833D4(sub_257C9F324, (&v212 - 4), v166);
          v192 = v191;

          *&v225[0] = v192;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
          sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
          v83 = sub_257ECF420();

          goto LABEL_79;
        }

        goto LABEL_78;
      }

      if (*(v218 + v217[7]) & 1) == 0 || (v168 = [objc_opt_self() sharedInstance], v169 = objc_msgSend(v168, sel_liveRecognitionTextFeedbacks), v168, v169) && (sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0), sub_257C9CE74(), v170 = sub_257ECFA70(), v169, v171 = sub_257ECFAC0(), v172 = sub_257C409E8(v171, v170), v171, v161 = , (v172))
      {
LABEL_81:
        MEMORY[0x28223BE20](v161, v162, v163, v164, v165);
        *(&v212 - 2) = v167;
        sub_257C833D4(sub_257C9F324, (&v212 - 4), v166);
        v207 = v206;

        *&v225[0] = v207;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
        v83 = sub_257ECF420();

        goto LABEL_79;
      }

      goto LABEL_77;
    case 0xAu:
    case 0xBu:
    case 0xCu:
      v84 = v216;
      sub_257C9A79C(v219, v216, type metadata accessor for MAGOutputEvent.EventType);
      v83 = *v84;
      goto LABEL_79;
    case 0xDu:
      v96 = v216;
      sub_257C9A79C(v219, v216, type metadata accessor for MAGOutputEvent.EventType);
      v97 = *v96;
      v98 = [v97 string];
      v83 = sub_257ECF500();

      goto LABEL_79;
    case 0xFu:
      v85 = v216;
      sub_257C9A79C(v219, v216, type metadata accessor for MAGOutputEvent.EventType);
      LOBYTE(v225[0]) = *v85;
      v86 = MAGOutputAnnouncement.displayContent.getter();
      goto LABEL_48;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x16u:
    case 0x17u:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v174 = [objc_opt_self() bundleForClass_];
      v175 = sub_257ECF4C0();
      v176 = sub_257ECF4C0();
      v177 = [v174 localizedStringForKey:v175 value:0 table:v176];

      v83 = sub_257ECF500();
      goto LABEL_79;
    default:
      goto LABEL_79;
  }
}

uint64_t MAGOutputEvent.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BD0;
  type metadata accessor for MAGOutputEvent(0);
  *(v0 + 32) = MAGOutputEvent.EventType.description.getter();
  *(v0 + 40) = v1;
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x259C72150](0x79726F6765746143, 0xE90000000000003DLL);
  MAGOutputEvent.category.getter(&v12);
  sub_257ED0400();
  v2 = v14;
  *(v0 + 48) = v13;
  *(v0 + 56) = v2;
  MAGOutputEvent.soundEffect.getter(&v13);
  v3 = v13;
  if (v13 != 20)
  {
    v13 = 0x3D646E756F53;
    v14 = 0xE600000000000000;
    v12 = v3;
    v4 = MAGSoundEffect.rawValue.getter();
    MEMORY[0x259C72150](v4);

    v5 = v13;
    v6 = v14;
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_257BFCB3C((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 16) = v8 + 1;
    v9 = v0 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
  v10 = sub_257ECF420();

  return v10;
}

unint64_t MAGOutputEvent.EventType.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C9A79C(v1, v8, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x616F432072657355;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 5:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0xD000000000000017;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);

      sub_257C9A804(v8, type metadata accessor for DetectedDoor);
      return 0x74654420726F6F44;
    case 3:
    case 4:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0xD000000000000011;
    case 6:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0xD000000000000026;
    case 7:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6143206567616D49;
    case 8:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6E6120746E696F50;
    case 9:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6465746365746544;
    case 10:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 4280662;
    case 11:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0x4768746957415156;
    case 13:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0x706154206B636142;
    case 14:
      return result;
    case 15:
      return 0x65636E756F6E6E41;
    case 16:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6570532074736554;
    case 17:
      v11 = 9;
      goto LABEL_28;
    case 18:
      return 0xD000000000000010;
    case 19:
      return 0xD000000000000011;
    case 20:
    case 23:
      v11 = 5;
      goto LABEL_28;
    case 21:
      return 0xD000000000000017;
    case 22:
    case 32:
      return 0xD000000000000016;
    case 24:
      v11 = 11;
      goto LABEL_28;
    case 25:
      return 0xD000000000000010;
    case 26:
      return 0x61635320706F6F4CLL;
    case 27:
      return 0xD000000000000010;
    case 28:
      return 0xD000000000000010;
    case 29:
      return 0xD000000000000028;
    case 30:
      return 0xD00000000000002BLL;
    case 31:
      return 0xD000000000000018;
    case 33:
      return 0xD000000000000013;
    case 34:
      v11 = 10;
LABEL_28:
      result = v11 | 0xD000000000000010;
      break;
    default:
      sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t MAGOutputEvent.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30, &unk_257EDB2A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BD0;
  type metadata accessor for MAGOutputEvent(0);
  *(v0 + 32) = MAGOutputEvent.EventType.description.getter();
  *(v0 + 40) = v1;
  v16 = 0;
  v17 = 0xE000000000000000;
  MEMORY[0x259C72150](0x79726F6765746143, 0xE90000000000003DLL);
  MAGOutputEvent.category.getter(&v15);
  sub_257ED0400();
  v2 = v17;
  *(v0 + 48) = v16;
  *(v0 + 56) = v2;
  MAGOutputEvent.soundEffect.getter(&v16);
  v3 = v16;
  if (v16 != 20)
  {
    v16 = 0x3D646E756F53;
    v17 = 0xE600000000000000;
    LOBYTE(v15) = v3;
    v4 = MAGSoundEffect.rawValue.getter();
    MEMORY[0x259C72150](v4);

    v5 = v16;
    v6 = v17;
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_257BFCB3C((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 16) = v8 + 1;
    v9 = v0 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_257ED02D0();

  v16 = 0x757074754F47414DLL;
  v17 = 0xEF3C746E65764574;
  v10 = sub_257ECCCA0();
  MEMORY[0x259C72150](v10);

  MEMORY[0x259C72150](539828286, 0xE400000000000000);
  v15 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83958]);
  v11 = sub_257ECF420();
  v13 = v12;

  MEMORY[0x259C72150](v11, v13);

  return v16;
}

id MAGOutputEvent.itemIDs.getter()
{
  v1 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_257ECCCF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v59[-v21];
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v59[-v28];
  v30 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v36 = &v59[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v0 + *(v37 + 20), v36, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v44 = *v36;

      if (!v44)
      {
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8, &unk_257EDB240);
      v45 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_257ED6D30;
      result = [v44 identifier];
      if (result)
      {
        v47 = result;
        sub_257ECCCD0();

        (*(v9 + 32))(v46 + v45, v15, v8);
        v48 = sub_257C5714C(v46);
        swift_setDeallocating();
        (*(v9 + 8))(v46 + v45, v8);
        swift_deallocClassInstance();

        return v48;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
LABEL_8:
        sub_257C9A804(v36, type metadata accessor for MAGOutputEvent.EventType);
        return 0;
      }

      v55 = *v36;

      sub_257C834FC(v55);
      v57 = v56;

      v58 = sub_257C5714C(v57);

      return v58;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);

          sub_257C9CF58(v36, v7, type metadata accessor for DetectedDoor);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8, &unk_257EDB240);
          v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_257ED6D30;
          (*(v9 + 16))(v40 + v39, v7, v8);
          v41 = sub_257C5714C(v40);
          swift_setDeallocating();
          (*(v9 + 8))(v40 + v39, v8);
          swift_deallocClassInstance();
          sub_257C9A804(v7, type metadata accessor for DetectedDoor);
          return v41;
        }

        goto LABEL_8;
      }

      v43 = *v36;

      if (!v43)
      {
        return 0;
      }
    }

    else
    {
      v43 = *v36;
      if (!*v36)
      {
        return 0;
      }
    }

    v49 = [v43 uuid];
    if (!v49)
    {

      return 0;
    }

    v50 = v49;
    sub_257ECCCD0();

    (*(v9 + 32))(v29, v22, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8, &unk_257EDB240);
    v51 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_257ED6D30;
    (*(v9 + 16))(v52 + v51, v29, v8);
    v53 = sub_257C5714C(v52);
    swift_setDeallocating();
    v54 = *(v9 + 8);
    v54(v52 + v51, v8);
    swift_deallocClassInstance();

    v54(v29, v8);
    return v53;
  }

  return result;
}

uint64_t MAGOutputEvent.hash(into:)(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v3 = type metadata accessor for MAGOutputEvent(0);
  MAGOutputEvent.EventType.hash(into:)(a1);
  MEMORY[0x259C732E0](*(v1 + *(v3 + 24)));
  MEMORY[0x259C732E0](*(v1 + *(v3 + 28)));
  return MEMORY[0x259C732E0](1);
}

uint64_t MAGOutputEvent.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v1 = type metadata accessor for MAGOutputEvent(0);
  MAGOutputEvent.EventType.hash(into:)(v3);
  MEMORY[0x259C732E0](*(v0 + *(v1 + 24)));
  MEMORY[0x259C732E0](*(v0 + *(v1 + 28)));
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

uint64_t sub_257C93C1C(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  MAGOutputEvent.EventType.hash(into:)(v4);
  MEMORY[0x259C732E0](*(v1 + *(a1 + 24)));
  MEMORY[0x259C732E0](*(v1 + *(a1 + 28)));
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

uint64_t sub_257C93CF0(uint64_t a1, uint64_t a2)
{
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  MAGOutputEvent.EventType.hash(into:)(a1);
  MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
  MEMORY[0x259C732E0](*(v2 + *(a2 + 28)));
  return MEMORY[0x259C732E0](1);
}

uint64_t sub_257C93DAC(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  MAGOutputEvent.EventType.hash(into:)(v5);
  MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
  MEMORY[0x259C732E0](*(v2 + *(a2 + 28)));
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

void sub_257C93E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v83 = &v69 - v15;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v23 = &v69 - v22;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v24 = 0;
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(a1 + 56);
  v29 = (v26 + 63) >> 6;
  v30 = (v21 + 8);
  v80 = a2 + 56;
  v31 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  v73 = a1;
  v72 = &v69 - v22;
  v71 = a1 + 56;
  v70 = v29;
  v77 = (v21 + 8);
  v78 = a2;
  if (!v28)
  {
LABEL_8:
    v33 = v24;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v29)
      {
        return;
      }

      v35 = *(v25 + 8 * v34);
      ++v33;
      if (v35)
      {
        v74 = (v35 - 1) & v35;
        v75 = v34;
        v32 = __clz(__rbit64(v35)) | (v34 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_7:
  v74 = (v28 - 1) & v28;
  v75 = v24;
  v32 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_13:
  v36 = *(a1 + 48) + 96 * v32;
  v37 = *v36;
  v38 = *(v36 + 80);
  v39 = *(v36 + 88);
  sub_257ED07B0();
  v40 = v37;

  v41 = v31[273];
  v81 = v40;
  v42 = [v40 v41];
  if (!v42)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v43 = v42;
  sub_257ECCCD0();

  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v44 = *v30;
  (*v30)(v23, v4);
  sub_257C9C120(v85, v38);
  sub_257ED07E0();
  v45 = sub_257ED0800();
  v46 = -1 << *(a2 + 32);
  v47 = v45 & ~v46;
  if ((*(v80 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
  {
    v76 = ~v46;
    v79 = v38;
    do
    {
      v48 = *(a2 + 48) + 96 * v47;
      v49 = *(v48 + 80);
      v50 = *(v48 + 88);
      v51 = *v48;

      v52 = [v51 v31[273]];
      if (!v52)
      {
        goto LABEL_32;
      }

      v53 = v52;
      v84 = v51;
      v54 = v83;
      sub_257ECCCD0();

      v55 = sub_257ECCCA0();
      v57 = v56;
      v44(v54, v4);
      v58 = [v81 v31[273]];
      if (!v58)
      {
        goto LABEL_33;
      }

      v59 = v58;
      v60 = v4;
      v61 = v82;
      sub_257ECCCD0();

      v62 = sub_257ECCCA0();
      v64 = v63;
      v65 = v61;
      v4 = v60;
      v44(v65, v60);
      if (v55 == v62 && v57 == v64)
      {
      }

      else
      {
        v66 = sub_257ED0640();

        if ((v66 & 1) == 0)
        {

          a2 = v78;
          goto LABEL_17;
        }
      }

      sub_257C943E4(v49, v79);
      v68 = v67;

      a2 = v78;
      if ((v68 & 1) != 0 && v50 == v39)
      {

        a1 = v73;
        v23 = v72;
        v24 = v75;
        v25 = v71;
        v29 = v70;
        v30 = v77;
        v31 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
        v28 = v74;
        if (v74)
        {
          goto LABEL_7;
        }

        goto LABEL_8;
      }

LABEL_17:
      v47 = (v47 + 1) & v76;
      v31 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
    }

    while (((*(v80 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) != 0);
  }
}

void sub_257C943E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v56 = &v45 - v17;
  v24 = MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v25 = &v45 - v23;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v26 = 0;
    v27 = *(a1 + 56);
    v45 = a1 + 56;
    v28 = 1 << *(a1 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v52 = v5 + 32;
    v54 = a2 + 56;
    v55 = v5 + 16;
    v32 = (v5 + 8);
    v46 = v31;
    v47 = &v45 - v23;
    v48 = v5;
    v49 = a1;
    if (v30)
    {
      while (1)
      {
        v33 = __clz(__rbit64(v30));
        v51 = (v30 - 1) & v30;
LABEL_13:
        v36 = *(a1 + 48);
        v53 = *(v5 + 72);
        v37 = *(v5 + 16);
        v37(v25, v36 + v53 * (v33 | (v26 << 6)), v4, v24);
        (*(v5 + 32))(v56, v25, v4);
        sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v38 = sub_257ECF3F0();
        v39 = -1 << *(a2 + 32);
        v40 = v38 & ~v39;
        if (((*(v54 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          break;
        }

        v50 = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v41 = a2;
        v42 = ~v39;
        while (1)
        {
          (v37)(v11, *(v41 + 48) + v40 * v53, v4);
          sub_257C9E5B4(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v43 = sub_257ECF450();
          v44 = *v32;
          (*v32)(v11, v4);
          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v42;
          if (((*(v54 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            v44(v56, v4);
            return;
          }
        }

        v44(v56, v4);
        a2 = v41;
        v5 = v48;
        a1 = v49;
        v31 = v46;
        v25 = v47;
        v30 = v51;
        if (!v51)
        {
          goto LABEL_8;
        }
      }

      (*v32)(v56, v4);
    }

    else
    {
LABEL_8:
      v34 = v26;
      while (1)
      {
        v26 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v26 >= v31)
        {
          return;
        }

        v35 = *(v45 + 8 * v26);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v51 = (v35 - 1) & v35;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_257C94794(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v74 = &v61 - v15;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v23 = &v61 - v22;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v24 = 0;
    v25 = *(a1 + 56);
    v63 = a1 + 56;
    v26 = 1 << *(a1 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v25;
    v62 = (v26 + 63) >> 6;
    v29 = (v21 + 8);
    v70 = a2 + 56;
    v30 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
    v65 = a1;
    v72 = v4;
    v64 = &v61 - v22;
    v69 = a2;
    if (!v28)
    {
LABEL_8:
      v32 = v24;
      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v33 >= v62)
        {
          return;
        }

        v34 = *(v63 + 8 * v33);
        ++v32;
        if (v34)
        {
          v66 = (v34 - 1) & v34;
          v67 = v33;
          v31 = __clz(__rbit64(v34)) | (v33 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_7:
    v66 = (v28 - 1) & v28;
    v67 = v24;
    v31 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_13:
    v35 = *(*(a1 + 48) + 80 * v31);
    sub_257ED07B0();
    v36 = v35;
    v37 = v30[273];
    v75 = v36;
    v38 = [v36 v37];
    if (!v38)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v39 = v38;
    sub_257ECCCD0();

    sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_257ECF400();
    v71 = *v29;
    v71(v23, v4);
    v40 = sub_257ED0800();
    v41 = -1 << *(a2 + 32);
    v42 = v40 & ~v41;
    if ((*(v70 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v68 = ~v41;
      do
      {
        v43 = *(*(a2 + 48) + 80 * v42);
        v44 = v30[273];
        v76 = v43;
        v45 = [v43 v44];
        if (!v45)
        {
          goto LABEL_30;
        }

        v46 = v45;
        v47 = v74;
        sub_257ECCCD0();

        v48 = sub_257ECCCA0();
        v50 = v49;
        v52 = v71;
        v51 = v72;
        v71(v47, v72);
        v53 = [v75 v30[273]];
        if (!v53)
        {
          goto LABEL_31;
        }

        v54 = v53;
        v55 = v73;
        sub_257ECCCD0();

        v56 = sub_257ECCCA0();
        v58 = v57;
        v52(v55, v51);
        v59 = v76;
        if (v48 == v56 && v50 == v58)
        {

          a2 = v69;
LABEL_24:

          a1 = v65;
          v28 = v66;
          v4 = v72;
          v23 = v64;
          v24 = v67;
          v30 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
          if (v66)
          {
            goto LABEL_7;
          }

          goto LABEL_8;
        }

        v60 = sub_257ED0640();

        a2 = v69;
        if (v60)
        {
          goto LABEL_24;
        }

        v42 = (v42 + 1) & v68;
        v30 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
      }

      while (((*(v70 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0);
    }
  }
}

void sub_257C94C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v76 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v77 = &v67 - v17;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(a1 + 56);
    v23 = (v20 + 63) >> 6;
    v24 = a2 + 56;
    v25 = (v16 + 8);
    v74 = a2 + 56;
    v75 = v15;
    v69 = a1 + 56;
    v70 = a1;
    v68 = v23;
    v73 = a2;
    if (v22)
    {
      do
      {
        v71 = (v22 - 1) & v22;
        v72 = v18;
        v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_13:
        v30 = (*(a1 + 48) + 96 * v26);
        v31 = v30[1];
        v87 = *v30;
        v88 = v31;
        v33 = v30[3];
        v32 = v30[4];
        v34 = v30[2];
        *&v91[12] = *(v30 + 76);
        v90 = v33;
        *v91 = v32;
        v89 = v34;
        v82[2] = v30[2];
        v82[3] = v30[3];
        v83[0] = v30[4];
        *(v83 + 12) = *(v30 + 76);
        v82[0] = *v30;
        v82[1] = v30[1];
        sub_257ED07B0();
        sub_257C58DDC(&v87, v85);
        FurnitureDetectionResult.hash(into:)(v81);
        v35 = sub_257ED0800();
        v36 = -1 << *(a2 + 32);
        v37 = v35 & ~v36;
        if (((*(v24 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
LABEL_35:
          sub_257C58E38(&v87);
          return;
        }

        v80 = ~v36;
        while (1)
        {
          v38 = (*(a2 + 48) + 96 * v37);
          v39 = v38[1];
          v85[0] = *v38;
          v85[1] = v39;
          v41 = v38[3];
          v40 = v38[4];
          v42 = v38[2];
          *(v86 + 12) = *(v38 + 76);
          v85[3] = v41;
          v86[0] = v40;
          v85[2] = v42;
          memmove(v82, v38, 0x5CuLL);
          v83[4] = v89;
          v83[5] = v90;
          v84[0] = *v91;
          *(v84 + 12) = *&v91[12];
          v83[2] = v87;
          v83[3] = v88;
          v43 = *&v85[0];
          if ((HIDWORD(v85[0]) & 0x80000000) == 0)
          {
            break;
          }

          if ((HIDWORD(v87) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          v44 = *(v85 + 2);
          v45 = *(&v87 + 2);
          v64 = v87;
          sub_257C58DDC(v85, v81);
          sub_257C58DDC(&v87, v81);
          sub_257C58DDC(v85, v81);
          sub_257C93E84(v43, v64);
          v66 = v65;
          sub_257C58E38(v85);
          sub_257BE4084(v82, &qword_27F8F6670, &qword_257EDCE10);
          if (v66)
          {
            goto LABEL_29;
          }

LABEL_17:
          v37 = (v37 + 1) & v80;
          if (((*(v24 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        if ((*(&v87 + 1) & 0x8000000000000000) != 0)
        {
LABEL_16:
          sub_257C58DDC(&v87, v81);
          sub_257C58DDC(v85, v81);
          sub_257BE4084(v82, &qword_27F8F6670, &qword_257EDCE10);
          goto LABEL_17;
        }

        v44 = *(&v86[1] + 2);
        v45 = *&v91[24];
        v78 = *&v91[16];
        v79 = *&v86[1];
        v46 = v87;
        sub_257C58DDC(v85, v81);
        sub_257C58DDC(&v87, v81);
        sub_257C58DDC(v85, v81);
        sub_257C58DDC(&v87, v81);
        sub_257C58DDC(v85, v81);
        v47 = [v43 identifier];
        if (!v47)
        {
          goto LABEL_39;
        }

        v48 = v47;
        v49 = v77;
        sub_257ECCCD0();

        v50 = sub_257ECCCA0();
        v52 = v51;
        v53 = *v25;
        v54 = v75;
        (*v25)(v49, v75);
        v55 = [v46 identifier];
        if (!v55)
        {
          goto LABEL_38;
        }

        v56 = v55;
        v57 = v76;
        sub_257ECCCD0();

        v58 = sub_257ECCCA0();
        v60 = v59;
        v53(v57, v54);
        if (v50 == v58 && v52 == v60)
        {

          a2 = v73;
        }

        else
        {
          v61 = sub_257ED0640();

          a2 = v73;
          if ((v61 & 1) == 0)
          {
            sub_257BE4084(v82, &qword_27F8F6670, &qword_257EDCE10);
            sub_257C58E38(v85);
            sub_257C58E38(&v87);
            sub_257C58E38(v85);
            v24 = v74;
            goto LABEL_17;
          }
        }

        sub_257C943E4(v79, v78);
        v63 = v62;
        sub_257BE4084(v82, &qword_27F8F6670, &qword_257EDCE10);
        sub_257C58E38(v85);
        sub_257C58E38(&v87);
        sub_257C58E38(v85);
        v24 = v74;
        if ((v63 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_29:
        if (v44 != v45)
        {
          goto LABEL_17;
        }

        sub_257C58E38(&v87);
        v19 = v69;
        a1 = v70;
        v22 = v71;
        v18 = v72;
        v23 = v68;
      }

      while (v71);
    }

    v27 = v18;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        return;
      }

      v29 = *(v19 + 8 * v28);
      ++v27;
      if (v29)
      {
        v71 = (v29 - 1) & v29;
        v72 = v28;
        v26 = __clz(__rbit64(v29)) | (v28 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }
}

uint64_t sub_257C951D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_257ECF500();
      sub_257ED07B0();
      v27 = v13;
      sub_257ECF5D0();
      v14 = sub_257ED0800();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_257ECF500();
        v20 = v19;
        if (v18 == sub_257ECF500() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_257ED0640();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void MAGOutputEvent.EventType.hash(into:)(uint64_t a1)
{
  v71 = a1;
  v2 = type metadata accessor for DetectedTextBlock(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4, v5, v6, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECCCF0();
  v70.n128_u64[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DetectedDoor(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8, v19, v20, v21, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = &v69 - v30;
  v32 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = (&v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_257C9A79C(v1, v38, type metadata accessor for MAGOutputEvent.EventType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v38->n128_u64[0];
      MEMORY[0x259C732E0](1);
      sub_257ED07D0();
      if (v57)
      {
        v58 = v57;
        sub_257ECFF60();
      }

      else
      {
        v58 = 0;
      }

      sub_257ED07E0();
      sub_257ECF5D0();

      return;
    case 2u:
      v52 = *(v38->n128_i64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128) + 48));
      sub_257C9CF58(v38, v31, type metadata accessor for DetectedDoor);
      MEMORY[0x259C732E0](2);
      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_257ECF400();
      MEMORY[0x259C732E0](*(v52 + 16));
      v53 = *(v52 + 16);
      if (v53)
      {
        v54 = v52 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v55 = *(v18 + 72);
        do
        {
          sub_257C9A79C(v54, v24, type metadata accessor for DetectedDoor);
          sub_257ECF400();
          sub_257C9A804(v24, type metadata accessor for DetectedDoor);
          v54 += v55;
          --v53;
        }

        while (v53);
      }

      sub_257ED07E0();
      sub_257C9A804(v31, type metadata accessor for DetectedDoor);
      return;
    case 3u:
      v56 = v38->n128_u64[1];
      MEMORY[0x259C732E0](3);
      sub_257ED07D0();
      if (v56)
      {
        sub_257ECF5D0();
      }

      sub_257ED07E0();
      return;
    case 4u:
      v45 = v38->n128_u64[0];
      v69 = v38[5];
      v46 = v38[6].n128_i64[0];
      v47 = v71;
      MEMORY[0x259C732E0](4);
      if (v45)
      {
        sub_257ED07D0();
        v48 = [v45 identifier];
        if (!v48)
        {
          __break(1u);
          return;
        }

        v49 = v48;
        sub_257ECCCD0();

        sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_257ECF400();
        (*(v70.n128_u64[0] + 8))(v16, v10);
      }

      else
      {
        sub_257ED07D0();
      }

      sub_257C9CB6C(v69);
      sub_257ED07D0();
      if (v46)
      {
        sub_257C9C120(v47, v46);
      }

      return;
    case 5u:
      v59 = v38->n128_u64[0];
      v70 = v38[1];
      v60 = v38[2].n128_i64[0];
      v61 = v71;
      MEMORY[0x259C732E0](5);
      sub_257C9C73C(v61, v59);

      sub_257C9CB6C(v70);
      if (v60)
      {
        sub_257ED07D0();
        sub_257C9C120(v61, v60);
        goto LABEL_39;
      }

      sub_257ED07D0();
      return;
    case 6u:
      v63 = v38->n128_u64[0];
      v70 = v38[1];
      v64 = v71;
      MEMORY[0x259C732E0](6);
      sub_257C9C34C(v64, v63);

      sub_257C9CB6C(v70);
      return;
    case 7u:
      v42 = 7;
      goto LABEL_38;
    case 8u:
      v65 = v38->n128_u64[0];
      MEMORY[0x259C732E0](8);
      MEMORY[0x259C732E0](*(v65 + 16));
      v66 = *(v65 + 16);
      if (v66)
      {
        v67 = v65 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v68 = *(v3 + 72);
        do
        {
          sub_257C9A79C(v67, v9, type metadata accessor for DetectedTextBlock);
          sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_257ECF400();
          sub_257C9A804(v9, type metadata accessor for DetectedTextBlock);
          v67 += v68;
          --v66;
        }

        while (v66);
      }

      goto LABEL_39;
    case 9u:
      v50 = v38->n128_u64[0];
      v51 = v71;
      MEMORY[0x259C732E0](9);
      sub_257C9C990(v51, v50);

      return;
    case 0xAu:
      v42 = 10;
      goto LABEL_38;
    case 0xBu:
      v42 = 11;
      goto LABEL_38;
    case 0xCu:
      v42 = 12;
      goto LABEL_38;
    case 0xDu:
      v62 = v38->n128_u64[0];
      MEMORY[0x259C732E0](14);
      sub_257ECFF60();

      return;
    case 0xEu:
      v43 = v38->n128_u8[0];
      v44 = 28;
      goto LABEL_22;
    case 0xFu:
      v43 = v38->n128_u8[0];
      v44 = 29;
LABEL_22:
      MEMORY[0x259C732E0](v44);
      v41 = v43;
      goto LABEL_52;
    case 0x10u:
      v42 = 32;
LABEL_38:
      MEMORY[0x259C732E0](v42);
      sub_257ECF5D0();
LABEL_39:

      return;
    case 0x11u:
      v41 = 13;
      goto LABEL_52;
    case 0x12u:
      v41 = 15;
      goto LABEL_52;
    case 0x13u:
      v41 = 16;
      goto LABEL_52;
    case 0x14u:
      v41 = 17;
      goto LABEL_52;
    case 0x15u:
      v41 = 18;
      goto LABEL_52;
    case 0x16u:
      v41 = 19;
      goto LABEL_52;
    case 0x17u:
      v41 = 20;
      goto LABEL_52;
    case 0x18u:
      v41 = 21;
      goto LABEL_52;
    case 0x19u:
      v41 = 22;
      goto LABEL_52;
    case 0x1Au:
      v41 = 23;
      goto LABEL_52;
    case 0x1Bu:
      v41 = 24;
      goto LABEL_52;
    case 0x1Cu:
      v41 = 25;
      goto LABEL_52;
    case 0x1Du:
      v41 = 26;
      goto LABEL_52;
    case 0x1Eu:
      v41 = 27;
      goto LABEL_52;
    case 0x1Fu:
      v41 = 30;
      goto LABEL_52;
    case 0x20u:
      v41 = 31;
      goto LABEL_52;
    case 0x21u:
      v41 = 33;
      goto LABEL_52;
    case 0x22u:
      v41 = 34;
LABEL_52:
      MEMORY[0x259C732E0](v41);
      return;
    default:
      v39 = v38->n128_u64[0];
      MEMORY[0x259C732E0](0);
      sub_257ED07D0();
      if (v39)
      {
        v40 = v39;
        sub_257ECFF60();
      }

      else
      {
        v40 = 0;
      }

      sub_257ED07E0();

      return;
  }
}

uint64_t MAGOutputEvent.EventType.hashValue.getter()
{
  sub_257ED07B0();
  MAGOutputEvent.EventType.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257C95D5C()
{
  sub_257ED07B0();
  MAGOutputEvent.EventType.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257C95DA0(uint64_t a1)
{
  sub_257ED07B0();
  MAGOutputEvent.EventType.hash(into:)(v2);
  return sub_257ED0800();
}

uint64_t sub_257C95DE4()
{
  v1 = *v0;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88)
  {
    v2 = 1684107369;
  }

  else
  {
    v2 = 0x656E6F687069;
  }

  if (byte_27F8F8D88)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (v1 <= 5)
  {
    if (v1 <= 2)
    {
      if (!v1)
      {
        sub_257ED02D0();

        v6 = 0x7665642E65766F6DLL;
LABEL_31:
        MEMORY[0x259C72150](v2, v3);

        return v6;
      }

      sub_257ED02D0();

      if (v1 == 1)
      {
        v4 = 0xD000000000000015;
      }

      else
      {
        v4 = 0xD000000000000012;
      }

LABEL_30:
      v6 = v4;
      goto LABEL_31;
    }

    if (v1 == 3)
    {
      sub_257ED02D0();

      v4 = 0xD000000000000017;
      goto LABEL_30;
    }

    if (v1 != 4)
    {
      sub_257ED02D0();

      v4 = 0xD000000000000016;
      goto LABEL_30;
    }

LABEL_24:
    sub_257ED02D0();

    v4 = 0xD000000000000011;
    goto LABEL_30;
  }

  if (v1 <= 8)
  {
    if (v1 != 6)
    {
      if (v1 != 7)
      {

        return 0x6E69662E65766F6DLL;
      }

      sub_257ED02D0();

      v4 = 0xD000000000000014;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v1 == 9)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t MAGOutputEvent.UserCoachingInstruction.speechContent.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  v7 = sub_257ECD1A0();
  v8 = MEMORY[0x277D70398];
  a1[3] = v7;
  a1[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_257ECD1B0();
}

double sub_257C9628C(uint64_t a1)
{
  v10 = type metadata accessor for DetectedTextBlock(0);
  v11 = sub_257C9E5B4(&unk_27F8FBBD0, type metadata accessor for DetectedTextBlock, &protocol conformance descriptor for DetectedTextBlock);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_257C9A79C(a1, boxed_opaque_existential_1, type metadata accessor for DetectedTextBlock);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 16))(v4, v5);
  v8[3] = sub_257ECD1C0();
  v8[4] = MEMORY[0x277D703A0];
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_257ECD1D0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v8);
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v9);
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v8);
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

double sub_257C96424@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_257ECD1A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[2];
  v14 = a1[3];
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v17 = (*(v16 + 88))(v15, v16);
  if (_s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(v13, v14, v17 & 1))
  {

    sub_257ECD1B0();
    sub_257ECCFA0();
    (*(v6 + 8))(v12, v5);
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_257ECD130();
    sub_257C024BC(v21, v20);
    sub_257ECD180();
    sub_257BE4084(v20, &qword_27F8F6E68, &qword_257EDF540);
    __swift_destroy_boxed_opaque_existential_0(v21);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_257ECD180();
    sub_257BE4084(v22, &qword_27F8F6E68, &qword_257EDF540);
  }

  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_257C96638(uint64_t a1)
{
  v2 = type metadata accessor for DetectedDoor(0);
  result = 0;
  v4 = a1 + *(v2 + 40);
  if ((*(v4 + 4) & 1) == 0)
  {
    v5 = *v4 * 1000.0;
    if (COERCE_INT(fabs(v5)) > 2139095039)
    {
      __break(1u);
    }

    else if (v5 > -2147500000.0)
    {
      if (v5 < 2147500000.0)
      {
        return generateTextToDisplay(depth:longUnitStyle:)(v5, 1)._countAndFlagsBits;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_257C966D8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = 0;
      v3 = a1 + 32;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v5 = (v3 + 72 * v2);
        v6 = v2;
        while (1)
        {
          if (v6 >= v1)
          {
            __break(1u);
LABEL_20:
            __break(1u);

            __break(1u);
            return;
          }

          v21 = *v5;
          v7 = v5[1];
          v8 = v5[2];
          v9 = v5[3];
          v25 = *(v5 + 8);
          v23 = v8;
          v24 = v9;
          v22 = v7;
          v2 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_20;
          }

          if ((BYTE1(v24) & 1) == 0 && *(&v22 + 1) * *&v23 > 0.0009)
          {
            break;
          }

          ++v6;
          v5 = (v5 + 72);
          if (v2 == v1)
          {
            goto LABEL_17;
          }
        }

        sub_257C241DC(&v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_257BF2624(0, *(v4 + 16) + 1, 1);
          v4 = v26;
        }

        v11 = *(v4 + 16);
        v12 = *(v4 + 24);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v18 = v11 + 1;
          v19 = v11;
          sub_257BF2624((v12 > 1), v11 + 1, 1);
          v11 = v19;
          v13 = v18;
          v4 = v26;
        }

        *(v4 + 16) = v13;
        v14 = v4 + 72 * v11;
        *(v14 + 32) = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
        *(v14 + 96) = v25;
        *(v14 + 64) = v16;
        *(v14 + 80) = v17;
        *(v14 + 48) = v15;
      }

      while (v2 != v1);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

LABEL_17:
    *&v21 = v4;
    sub_257ECC3F0();
    sub_257C9A864(&v21);
  }
}

uint64_t sub_257C968A0(uint64_t a1, unsigned int a2)
{
  v4 = sub_257ECC7D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = a2;
    v13 = *(a1 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v35 = MEMORY[0x277D84F90];
      sub_257BF2604(0, v13, 0);
      v14 = v35;
      v15 = (a1 + 32);
      do
      {
        v17 = *v15;
        v15 += 9;
        v16 = v17;
        if (v17 && v16[2])
        {
          v19 = v16[4];
          v18 = v16[5];
        }

        else
        {
          v19 = 0;
          v18 = 0;
        }

        v35 = v14;
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_257BF2604((v20 > 1), v21 + 1, 1);
          v14 = v35;
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v19;
        *(v22 + 5) = v18;
        --v13;
      }

      while (v13);
    }

    v23 = sub_257E5B84C(v14, v10);
    v25 = v24;

    if (v25)
    {
      v35 = v23;
      v36 = v25;
      sub_257ECC7A0();
      sub_257BDAB08();
      v26 = MEMORY[0x277D837D0];
      sub_257ED0110();
      (*(v5 + 8))(v12, v4);
      v27 = sub_257ECF5E0();

      if (v27 > 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_257ED9BD0;
        *(v28 + 56) = v26;
        v29 = sub_257BFB13C();
        *(v28 + 64) = v29;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v30 = sub_257DE86E0(v34);
        *(v28 + 96) = v26;
        *(v28 + 104) = v29;
        *(v28 + 72) = v30;
        *(v28 + 80) = v31;
        return sub_257ECF540();
      }
    }
  }

  return 0;
}

void sub_257C96B18(uint64_t a1)
{
  v2 = sub_257ECC7D0();
  v111 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v110 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      do
      {
        v11 = a1 + 32 + 72 * v9;
        v12 = v9;
        while (1)
        {
          if (v12 >= v8)
          {
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          v113 = *v11;
          v13 = *(v11 + 16);
          v14 = *(v11 + 32);
          v15 = *(v11 + 48);
          v117 = *(v11 + 64);
          v115 = v14;
          v116 = v15;
          v114 = v13;
          v9 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_76;
          }

          if (BYTE1(v116) == 1 && BYTE2(v116) == 3)
          {
            break;
          }

          ++v12;
          v11 += 72;
          if (v9 == v8)
          {
            goto LABEL_18;
          }
        }

        sub_257C241DC(&v113, v112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_257BF2624(0, *(v10 + 16) + 1, 1);
          v10 = v118;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_257BF2624((v17 > 1), v18 + 1, 1);
          v10 = v118;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 72 * v18;
        *(v19 + 32) = v113;
        v20 = v114;
        v21 = v115;
        v22 = v116;
        *(v19 + 96) = v117;
        *(v19 + 64) = v21;
        *(v19 + 80) = v22;
        *(v19 + 48) = v20;
      }

      while (v9 != v8);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  v23 = sub_257C968A0(v10, 3u);
  v25 = v24;

  if (a1)
  {
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
LABEL_21:
      v29 = a1 + 32 + 72 * v27;
      v30 = v27;
      while (v30 < v26)
      {
        v113 = *v29;
        v31 = *(v29 + 16);
        v32 = *(v29 + 32);
        v33 = *(v29 + 48);
        v117 = *(v29 + 64);
        v115 = v32;
        v116 = v33;
        v114 = v31;
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_78;
        }

        if (BYTE1(v116) == 1 && BYTE2(v116) == 1)
        {
          sub_257C241DC(&v113, v112);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v28;
          v108 = v25;
          if ((v34 & 1) == 0)
          {
            sub_257BF2624(0, *(v28 + 16) + 1, 1);
            v28 = v118;
          }

          v36 = *(v28 + 16);
          v35 = *(v28 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_257BF2624((v35 > 1), v36 + 1, 1);
            v28 = v118;
          }

          *(v28 + 16) = v36 + 1;
          v37 = v28 + 72 * v36;
          *(v37 + 32) = v113;
          v38 = v114;
          v39 = v115;
          v40 = v116;
          *(v37 + 96) = v117;
          *(v37 + 64) = v39;
          *(v37 + 80) = v40;
          *(v37 + 48) = v38;
          v25 = v108;
          if (v27 != v26)
          {
            goto LABEL_21;
          }

          goto LABEL_35;
        }

        ++v30;
        v29 += 72;
        if (v27 == v26)
        {
          goto LABEL_35;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = 0;
  }

LABEL_35:
  v41 = sub_257C968A0(v28, 1u);
  v43 = v42;

  v109 = v2;
  if (a1)
  {
    v44 = *(a1 + 16);
    if (v44)
    {
      v45 = 0;
      v46 = MEMORY[0x277D84F90];
LABEL_38:
      v47 = a1 + 32 + 72 * v45;
      v48 = v45;
      while (v48 < v44)
      {
        v113 = *v47;
        v49 = *(v47 + 16);
        v50 = *(v47 + 32);
        v51 = *(v47 + 48);
        v117 = *(v47 + 64);
        v115 = v50;
        v116 = v51;
        v114 = v49;
        v45 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_80;
        }

        if (BYTE1(v116) == 1 && BYTE2(v116) == 2)
        {
          v107 = v43;
          v52 = v41;
          sub_257C241DC(&v113, v112);
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v46;
          v54 = v25;
          if ((v53 & 1) == 0)
          {
            sub_257BF2624(0, *(v46 + 16) + 1, 1);
            v46 = v118;
          }

          v56 = *(v46 + 16);
          v55 = *(v46 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_257BF2624((v55 > 1), v56 + 1, 1);
            v46 = v118;
          }

          *(v46 + 16) = v56 + 1;
          v57 = v46 + 72 * v56;
          *(v57 + 32) = v113;
          v58 = v114;
          v59 = v115;
          v60 = v116;
          *(v57 + 96) = v117;
          *(v57 + 64) = v59;
          *(v57 + 80) = v60;
          *(v57 + 48) = v58;
          v25 = v54;
          v41 = v52;
          v43 = v107;
          if (v45 != v44)
          {
            goto LABEL_38;
          }

          goto LABEL_52;
        }

        ++v48;
        v47 += 72;
        if (v45 == v44)
        {
          goto LABEL_52;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v46 = 0;
  }

LABEL_52:
  v61 = sub_257C968A0(v46, 2u);
  v63 = v62;

  if (!a1)
  {
    v70 = 0;
LABEL_70:
    v84 = sub_257C968A0(v70, 0);
    v86 = v85;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A78, &unk_257EDD4E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257EDBE50;
    *(inited + 32) = v23;
    *(inited + 40) = v25;
    *(inited + 48) = v84;
    *(inited + 56) = v86;
    *(inited + 64) = v41;
    *(inited + 72) = v43;
    *(inited + 80) = v61;
    *(inited + 88) = v63;
    v89 = sub_257E5B84C(inited, v88);
    v91 = v90;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
    swift_arrayDestroy();
    if (v91)
    {
      *&v113 = v89;
      *(&v113 + 1) = v91;
      v92 = v110;
      sub_257ECC7A0();
      sub_257BDAB08();
      v93 = MEMORY[0x277D837D0];
      sub_257ED0110();
      (*(v111 + 8))(v92, v109);
      v94 = sub_257ECF5E0();

      if (v94 < 1)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_257ED9BD0;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v97 = [objc_opt_self() bundleForClass_];
        v98 = sub_257ECF4C0();
        v99 = sub_257ECF4C0();
        v100 = [v97 localizedStringForKey:v98 value:0 table:v99];

        v101 = sub_257ECF500();
        v103 = v102;

        *(v95 + 56) = v93;
        v104 = sub_257BFB13C();
        *(v95 + 32) = v101;
        *(v95 + 40) = v103;
        *(v95 + 96) = v93;
        *(v95 + 104) = v104;
        *(v95 + 64) = v104;
        *(v95 + 72) = v89;
        *(v95 + 80) = v91;
        sub_257ECF540();
      }
    }

    return;
  }

  v64 = v43;
  v65 = v41;
  v66 = v25;
  v67 = *(a1 + 16);
  if (!v67)
  {
    v70 = MEMORY[0x277D84F90];
LABEL_69:
    v25 = v66;
    v41 = v65;
    v43 = v64;
    goto LABEL_70;
  }

  v68 = 0;
  v69 = a1 + 32;
  v70 = MEMORY[0x277D84F90];
LABEL_55:
  v71 = (v69 + 72 * v68);
  v72 = v68;
  while (v72 < v67)
  {
    v113 = *v71;
    v73 = v71[1];
    v74 = v71[2];
    v75 = v71[3];
    v117 = *(v71 + 8);
    v115 = v74;
    v116 = v75;
    v114 = v73;
    v68 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_82;
    }

    if (BYTE1(v116) == 1 && !BYTE2(v116))
    {
      sub_257C241DC(&v113, v112);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v70;
      v106 = v23;
      if ((v76 & 1) == 0)
      {
        sub_257BF2624(0, *(v70 + 16) + 1, 1);
        v70 = v118;
      }

      v78 = *(v70 + 16);
      v77 = *(v70 + 24);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v107 = v78 + 1;
        sub_257BF2624((v77 > 1), v78 + 1, 1);
        v79 = v107;
        v70 = v118;
      }

      *(v70 + 16) = v79;
      v80 = v70 + 72 * v78;
      *(v80 + 32) = v113;
      v81 = v114;
      v82 = v115;
      v83 = v116;
      *(v80 + 96) = v117;
      *(v80 + 64) = v82;
      *(v80 + 80) = v83;
      *(v80 + 48) = v81;
      v23 = v106;
      if (v68 != v67)
      {
        goto LABEL_55;
      }

      goto LABEL_69;
    }

    ++v72;
    v71 = (v71 + 72);
    if (v68 == v67)
    {
      goto LABEL_69;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void sub_257C97430(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t *a4@<X8>, float32x4_t a5@<Q0>)
{
  v74 = a2;
  v80 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v71 - v13;
  v15 = *a1;
  v16 = *(a1 + 32);
  v78 = *(a1 + 16);
  v77 = v16;
  v17 = *(a1 + 64);
  v76 = *(a1 + 48);
  v75 = v17;
  v18 = [v15 type];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = v18;
  v20 = sub_257ECF500();
  v22 = v21;
  if (v20 == sub_257ECF500() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_257ED0640();

    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  *(&v83 + 1) = &type metadata for MFFeatureFlags;
  *&v84 = sub_257C73100();
  LOBYTE(v81) = 1;
  v26 = sub_257ECCF60();
  __swift_destroy_boxed_opaque_existential_0(&v81);
  if ((v26 & 1) == 0)
  {
    v70 = 0;
    v39 = 0;
    countAndFlagsBits = 0;
    object = 0;
    v67 = 0;
    v69 = 0;
LABEL_20:
    *a4 = v70;
    a4[1] = v39;
    a4[2] = countAndFlagsBits;
    a4[3] = object;
    a4[4] = v67;
    a4[5] = v69;
    return;
  }

LABEL_10:
  v73 = a3;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_257ED02D0();

  v81 = 0xD000000000000019;
  v82 = 0x8000000257EFC6E0;
  v27 = [v15 type];
  if (v27)
  {
    v28 = v27;
    v29 = sub_257ECF500();
    v31 = v30;

    MEMORY[0x259C72150](v29, v31);

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v72 = objc_opt_self();
    v33 = [v72 bundleForClass_];
    v34 = sub_257ECF4C0();

    v35 = sub_257ECF4C0();
    v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

    sub_257ECF500();
    v37 = sub_257ECF540();
    v39 = v38;

    v81 = v15;
    v83 = v78;
    v84 = v77;
    v85 = v76;
    v86 = v75;
    sub_257E4FDE8(v80);
    v40 = objc_opt_self();
    v41 = [v40 meters];
    sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
    sub_257ECC740();
    v42 = [v40 millimeters];
    sub_257ECC770();

    sub_257ECC750();
    v44 = round(v43);
    (*(v79 + 8))(v14, v8);
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -2147483650.0)
    {
      if (v44 < 2147483650.0)
      {
        v80.i64[0] = v37;
        v45 = generateTextToDisplay(depth:longUnitStyle:)(v44, v73 & 1);
        countAndFlagsBits = v45._countAndFlagsBits;
        object = v45._object;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8, &qword_257EDCD38);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        v49 = *MEMORY[0x277D36D38];
        *(inited + 32) = *MEMORY[0x277D36D38];
        v50 = *MEMORY[0x277D36D68];
        *(inited + 40) = *MEMORY[0x277D36D68];
        v51 = v49;
        v52 = v50;
        v53 = [v15 type];
        v81 = v53;
        MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
        *(&v71 - 2) = &v81;
        v58 = sub_257DF8E30(sub_257C5883C, (&v71 - 4), inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0, &qword_257EDCD40);
        swift_arrayDestroy();

        v59 = v74;
        if ((v58 & 1) != 0 && v74)
        {
          v60 = [v72 bundleForClass_];
          v61 = sub_257ECF4C0();
          v62 = sub_257ECF4C0();
          v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

          sub_257ECF500();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_257ED6D30;
          v65 = *(v59 + 16);
          v66 = MEMORY[0x277D83C10];
          *(v64 + 56) = MEMORY[0x277D83B88];
          *(v64 + 64) = v66;
          *(v64 + 32) = v65;
          v67 = sub_257ECF540();
          v69 = v68;
        }

        else
        {
          v67 = 0;
          v69 = 0;
        }

        v70 = v80.i64[0];
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_257C97B70(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, float32x4_t a5@<Q0>)
{
  v184 = a5;
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v179 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v178 = &v170 - v21;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v177 = &v170 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30, v31, v32, v33);
  v35 = &v170 - v34;
  v183 = a1;
  sub_257C82D88(a1, v184);
  v37 = *(v36 + 16);
  if (!v37)
  {

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_50;
  }

  v38 = *(v36 + 32);
  v39 = v37 - 1;
  v174 = v9;
  v171 = a2;
  v172 = 0;
  v181 = v36;
  if (v39)
  {
    v46 = vdup_laneq_s32(v184, 2);
    v47 = (v36 + 48);
    do
    {
      v48 = *v47++;
      v49 = vsub_f32(*v48.i8, *v184.f32);
      v50 = vmul_f32(v49, v49);
      v51 = vsub_f32(*v38.i8, *v184.f32);
      v52 = vmul_f32(v51, v51);
      v53 = vsub_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v38, v38, 8uLL)), v46);
      v54 = vsqrt_f32(vadd_f32(vmul_f32(v53, v53), vadd_f32(vzip1_s32(v50, v52), vzip2_s32(v50, v52))));
      v38 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vdup_lane_s32(v54, 1), v54), 0)), v48, v38);
      --v39;
    }

    while (v39);
  }

  v40 = objc_opt_self();
  v41 = [v40 meters];
  sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
  sub_257ECC740();
  v55 = [v40 millimeters];
  sub_257ECC770();

  sub_257ECC750();
  v57 = round(v56);
  (*(v29 + 8))(v35, v28);
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v57 <= -2147483650.0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v57 >= 2147483650.0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    sub_257ED06C0();
    __break(1u);
    return;
  }

  v175 = v10;
  v180 = a4;
  v58 = generateTextToDisplay(depth:longUnitStyle:)(v57, a3 & 1);
  countAndFlagsBits = v58._countAndFlagsBits;
  object = v58._object;
  v59 = v183;
  v60 = v183 + 56;
  v61 = 1 << *(v183 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v183 + 56);
  v64 = (v61 + 63) >> 6;

  v65 = 0;
  v66 = 0;
  v67 = MEMORY[0x277D84F98];
  v184.i64[0] = v60;
  while (v63)
  {
LABEL_19:
    v69 = (*(v59 + 48) + 80 * (__clz(__rbit64(v63)) | (v66 << 6)));
    v186[0] = *v69;
    v70 = v69[4];
    v72 = v69[1];
    v71 = v69[2];
    v186[3] = v69[3];
    v186[4] = v70;
    v186[1] = v72;
    v186[2] = v71;
    v73 = *&v186[0];
    sub_257C588B0(v186, v185);
    v74 = [v73 type];
    if (!v74)
    {
      goto LABEL_59;
    }

    v41 = v74;
    sub_257BBD88C(v65, 0);
    v75 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v185[0] = v75;
    v40 = sub_257C09E74();
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      __break(1u);
      goto LABEL_56;
    }

    v81 = v77;
    if (v75[3] >= v80)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v67 = v75;
        if (v77)
        {
          goto LABEL_13;
        }

LABEL_27:
        sub_257EC7E60(v40, v41, MEMORY[0x277D84FA0], v67);
        v84 = v41;
        goto LABEL_13;
      }

      sub_257C07E70();
      v67 = *&v185[0];
      if ((v81 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_257EC2F60(v80, isUniquelyReferenced_nonNull_native);
      type metadata accessor for OU3DObjectType(0);
      v67 = *&v185[0];
      v82 = sub_257C09E74();
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_60;
      }

      v40 = v82;
      v59 = v183;
      if ((v81 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_13:
    v63 &= v63 - 1;
    sub_257C588B0(v186, v185);
    sub_257C4BBBC(v185, v186);

    sub_257C5890C(v186);
    v65 = sub_257C9A3C8;
    v60 = v184.i64[0];
  }

  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v68 >= v64)
    {
      break;
    }

    v63 = *(v60 + 8 * v68);
    ++v66;
    if (v63)
    {
      v66 = v68;
      goto LABEL_19;
    }
  }

  sub_257C44114(v85);
  v87 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E78, &qword_257EDF548);
  v88 = v67;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  v90 = *MEMORY[0x277D36D30];
  *(inited + 32) = *MEMORY[0x277D36D30];
  v91 = *MEMORY[0x277D36D78];
  v92 = *MEMORY[0x277D36D58];
  *(inited + 40) = *MEMORY[0x277D36D78];
  *(inited + 48) = v92;
  v93 = *MEMORY[0x277D36D28];
  *(inited + 56) = *MEMORY[0x277D36D28];
  v94 = v90;
  v95 = v91;
  v96 = v92;
  v97 = v93;
  v98 = sub_257C55DD0(inited);
  swift_setDeallocating();
  type metadata accessor for OU3DObjectType(0);
  swift_arrayDestroy();
  sub_257C9A3D8(v98, v87);
  v100 = v99;

  if (v100)
  {

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v102 = [objc_opt_self() bundleForClass_];
    v103 = sub_257ECF4C0();
    v104 = sub_257ECF4C0();
    v105 = [v102 localizedStringForKey:v103 value:0 table:v104];

    sub_257ECF500();
    v40 = sub_257ECF540();
    v41 = v106;

    goto LABEL_32;
  }

  v173 = v88;
  v107 = swift_initStackObject();
  v184 = xmmword_257ED9BD0;
  *(v107 + 16) = xmmword_257ED9BD0;
  v108 = *MEMORY[0x277D36D88];
  *(v107 + 32) = *MEMORY[0x277D36D88];
  v109 = *MEMORY[0x277D36D38];
  *(v107 + 40) = *MEMORY[0x277D36D38];
  v110 = v108;
  v109;
  v111 = sub_257C55DD0(v107);
  swift_setDeallocating();
  swift_arrayDestroy();
  v112 = sub_257C951D8(v87, v111);

  if (v112)
  {

    v113 = v173;
    v114 = v175;
    if (v173[2])
    {
      v115 = sub_257C09E74();
      if ((v116 & 1) != 0 && *(*(v113[7] + 8 * v115) + 16) == 1)
      {
        if (v113[2])
        {
          v117 = sub_257C09E74();
          if (v118)
          {
            v183 = *(v113[7] + 8 * v117);
            type metadata accessor for MAGUtilities();
            v119 = swift_getObjCClassFromMetadata();
            v120 = objc_opt_self();

            v121 = [v120 bundleForClass_];
            v122 = sub_257ECF4C0();
            v123 = sub_257ECF4C0();
            v124 = [v121 localizedStringForKey:v122 value:0 table:v123];

            v181 = sub_257ECF500();
            v179 = v125;

            v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
            v127 = swift_allocObject();
            v127[1] = v184;
            v178 = v120;
            v184.i64[0] = v119;
            v128 = [v120 bundleForClass_];
            v129 = sub_257ECF4C0();
            v130 = sub_257ECF4C0();
            v131 = [v128 localizedStringForKey:v129 value:0 table:v130];

            sub_257ECF500();
            v172 = v126;
            v132 = swift_allocObject();
            v170 = xmmword_257ED6D30;
            *(v132 + 16) = xmmword_257ED6D30;
            v133 = *(v183 + 16);

            v134 = MEMORY[0x277D83C10];
            *(v132 + 56) = MEMORY[0x277D83B88];
            *(v132 + 64) = v134;
            *(v132 + 32) = v133;
            v135 = sub_257ECF540();
            v137 = v136;

            v138 = MEMORY[0x277D837D0];
            v127[3].i64[1] = MEMORY[0x277D837D0];
            v139 = sub_257BFB13C();
            v127[2].i64[0] = v135;
            v127[2].i64[1] = v137;
            v127[6].i64[0] = v138;
            v127[6].i64[1] = v139;
            v140 = countAndFlagsBits;
            v127[4].i64[0] = v139;
            v127[4].i64[1] = v140;
            v127[5].i64[0] = object;

            v40 = sub_257ECF540();
            v41 = v141;

            v142 = v171;
            if (v171)
            {
              v143 = [v178 bundleForClass_];
              v144 = sub_257ECF4C0();
              v145 = sub_257ECF4C0();
              v146 = [v143 localizedStringForKey:v144 value:0 table:v145];

              sub_257ECF500();
              v147 = swift_allocObject();
              *(v147 + 16) = v170;
              v148 = *(v142 + 16);
              *(v147 + 56) = MEMORY[0x277D83B88];
              *(v147 + 64) = v134;
              *(v147 + 32) = v148;
              v44 = sub_257ECF540();
              v45 = v149;

              sub_257BBD88C(v65, 0);
              goto LABEL_33;
            }

LABEL_52:
            v166 = v177;
            sub_257ECD4A0();
            v167 = sub_257ECDA20();
            v168 = sub_257ECFBE0();
            if (os_log_type_enabled(v167, v168))
            {
              v169 = swift_slowAlloc();
              *v169 = 0;
              _os_log_impl(&dword_257BAC000, v167, v168, "Error: expected occupancy information for a table and chairs group", v169, 2u);
              MEMORY[0x259C74820](v169, -1, -1);
            }

            (*(v175 + 8))(v166, v174);
LABEL_32:

            sub_257BBD88C(v65, 0);
            v44 = 0;
            v45 = 0;
LABEL_33:
            a4 = v180;
            v42 = countAndFlagsBits;
            v43 = object;
            goto LABEL_50;
          }
        }
      }
    }

    v162 = v178;
    sub_257ECD4A0();
    v163 = sub_257ECDA20();
    v164 = sub_257ECFBE0();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_257BAC000, v163, v164, "Error: expected exactly one table and at least one chair.", v165, 2u);
      MEMORY[0x259C74820](v165, -1, -1);
    }

    (*(v114 + 8))(v162, v174);
  }

  else
  {

    v150 = v179;
    sub_257ECD4A0();

    v151 = sub_257ECDA20();
    v152 = sub_257ECFBE0();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *&v185[0] = v154;
      *v153 = 136315138;
      sub_257C82FF8(v87);
      v156 = v155;

      v157 = MEMORY[0x259C72340](v156, MEMORY[0x277D837D0]);
      v159 = v158;

      v160 = sub_257BF1FC8(v157, v159, v185);

      *(v153 + 4) = v160;
      _os_log_impl(&dword_257BAC000, v151, v152, "Error: group of %s not yet supported.", v153, 0xCu);
      v161 = __swift_destroy_boxed_opaque_existential_0(v154);
      MEMORY[0x259C74820](v154, -1, -1, v161);
      MEMORY[0x259C74820](v153, -1, -1);
    }

    else
    {
    }

    (*(v175 + 8))(v150, v174);
  }

  sub_257BBD88C(v65, 0);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  a4 = v180;
LABEL_50:
  *a4 = v40;
  a4[1] = v41;
  a4[2] = v42;
  a4[3] = v43;
  a4[4] = v44;
  a4[5] = v45;
}

void sub_257C98A6C(uint64_t a1@<X0>, uint64_t *a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (v5 < 0)
  {
    v26 = *(a1 + 48);
    v27 = *(a1 + 64);
    v24 = *(a1 + 16);
    v25 = *(a1 + 32);
    sub_257C3F96C(*a1);
    v19 = sub_257C56FFC(v18);

    v35 = v4;
    v36 = v5;
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v10;
    v42 = v11;
    sub_257D81B70(v20, v21);
    v15 = sub_257C90A14(v19, v22, a3);
    v17 = v23;
  }

  else
  {
    *&v29 = *a1;
    v30 = v7;
    v31 = v6;
    v32 = v9;
    v33 = v8;
    v35 = v4;
    v36 = v5;
    v37 = v7;
    v38 = v6;
    v39 = v9;
    v40 = v8;
    v41 = v10;
    v42 = v11;
    v12 = v4;
    sub_257D81B70(v12, v13);
    v15 = sub_257C907B4(&v29, v14, a3);
    v17 = v16;

    v34[2] = v31;
    v34[3] = v32;
    v34[4] = v33;
    v34[0] = v29;
    v34[1] = v30;
    sub_257BE4084(v34, &qword_27F8F9C90, &unk_257EDCBD0);
  }

  *a2 = v15;
  a2[1] = v17;
}

double sub_257C98BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = a7[1];
  v13 = a7[3];
  v14 = a7[5];
  if (v12)
  {
    v15 = *a7;

    if (v15 == a1 && v12 == a2)
    {
    }

    else
    {
      v17 = sub_257ED0640();

      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v44, &qword_27F8F6E68, &qword_257EDF540);
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

LABEL_7:
  v47[3] = sub_257ECD1A0();
  v47[4] = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(v47);

  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v47);
  sub_257ECD130();
  sub_257C024BC(&v41, v40);
  sub_257ECD180();
  sub_257BE4084(v40, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(&v41);
  __swift_destroy_boxed_opaque_existential_0(&v44);
  if (!a6)
  {
LABEL_20:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v41, &qword_27F8F6E68, &qword_257EDF540);
    v29 = a3;
    v28 = a4;
    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_11:
  v18 = *(v7 + *(type metadata accessor for MAGOutputEvent(0) + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  *&v44 = *v18;
  *(&v44 + 1) = v19;
  LOBYTE(v45) = v20;
  v21 = qword_2815447E0;

  if (v21 != -1)
  {
    v22 = swift_once();
  }

  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  sub_257ECFD50();

  if (v41 != 1)
  {

    goto LABEL_20;
  }

  if (v12)
  {
    v27 = a7[4];

    if (v14)
    {
      if (v27 == a5 && v14 == a6)
      {

LABEL_23:

        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        sub_257ECD180();
        sub_257BE4084(&v44, &qword_27F8F6E68, &qword_257EDF540);
        goto LABEL_25;
      }

      v30 = sub_257ED0640();

      if (v30)
      {
        goto LABEL_23;
      }
    }
  }

  *(&v42 + 1) = sub_257ECD1A0();
  v43 = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v41);
  sub_257ECD130();
  sub_257C024BC(v40, v39);
  sub_257ECD180();
  sub_257BE4084(v39, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(&v44);
LABEL_25:
  sub_257ECD130();
  sub_257C024BC(v40, v39);
  sub_257ECD180();
  sub_257BE4084(v39, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(&v41);
  v29 = a3;
  v28 = a4;
  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_26:
  v31 = a7[2];

  if (v31 != v29 || v13 != v28)
  {
    v32 = sub_257ED0640();

    if (v32)
    {
      goto LABEL_30;
    }

LABEL_31:
    *(&v42 + 1) = sub_257ECD1A0();
    v43 = MEMORY[0x277D70398];
    __swift_allocate_boxed_opaque_existential_1(&v41);

    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v41);
    sub_257ECD130();
    sub_257C024BC(v39, v38);
    sub_257ECD180();
    sub_257BE4084(v38, &qword_27F8F6E68, &qword_257EDF540);
    __swift_destroy_boxed_opaque_existential_0(v39);
    __swift_destroy_boxed_opaque_existential_0(v40);
    goto LABEL_32;
  }

LABEL_30:
  memset(v40, 0, 40);
  sub_257ECD180();
  sub_257BE4084(v40, &qword_27F8F6E68, &qword_257EDF540);
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_257EDBBA0;
  sub_257C024BC(v47, v33 + 32);
  sub_257C024BC(&v44, v33 + 72);
  sub_257C024BC(&v41, v33 + 112);
  MEMORY[0x259C6FC60](v33);

  __swift_destroy_boxed_opaque_existential_0(&v41);
  __swift_destroy_boxed_opaque_existential_0(&v44);
  return __swift_destroy_boxed_opaque_existential_0(v47);
}

double sub_257C991C0@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v3 = a2;
  v4 = a1;
  v5 = a1[2];
  if (v5 != 1)
  {
    v97 = 0;
    memset(v96, 0, sizeof(v96));
    sub_257ECD180();
    v19 = sub_257BE4084(v96, &qword_27F8F6E68, &qword_257EDF540);
    goto LABEL_38;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[9];
  v72 = a1[8];
  v76 = a1;
  v11 = a2[2];
  v83 = v9;
  v84 = v6;
  v82 = v8;
  *&v80 = 0;
  if (v11 != 1)
  {
    v18 = a2;
    v77 = 0;
    v70 = 0;
    v74 = 0;
    v75 = 0;
LABEL_10:

    v12 = 0;
    LODWORD(v81) = 1;
    v3 = v18;
    goto LABEL_11;
  }

  v71 = v10;
  v73 = 1;
  v13 = a2[4];
  v12 = a2[5];
  v15 = a2[6];
  v14 = a2[7];
  v16 = a2[8];
  v17 = a2[9];
  v18 = a2;

  v74 = v15;
  v75 = v14;
  v77 = v17;
  v70 = v16;
  if (!v12)
  {
    v9 = v83;
    v5 = v73;
    v10 = v71;
    goto LABEL_10;
  }

  sub_257C9F2C0(v13, v12, v15, v14, v16, v17);

  if (v13 == v7 && v12 == v84)
  {

    v5 = v73;
    v9 = v83;
    v3 = v18;
    goto LABEL_14;
  }

  v24 = sub_257ED0640();

  v5 = v73;
  v9 = v83;
  v3 = v18;
  if (v24)
  {
LABEL_14:
    v73 = v12;
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v98, &qword_27F8F6E68, &qword_257EDF540);
    LODWORD(v81) = 0;
    v10 = v71;
    v4 = v76;
    if (!v71)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  LODWORD(v81) = 0;
  v10 = v71;
LABEL_11:
  v4 = v76;
  v73 = v12;
  *(&v94 + 1) = sub_257ECD1A0();
  v95 = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(&v93);

  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v93);
  sub_257ECD130();
  sub_257C024BC(&v93, &v89);
  sub_257ECD180();
  sub_257BE4084(&v89, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(&v93);
  __swift_destroy_boxed_opaque_existential_0(&v98);
  if (!v10)
  {
LABEL_24:
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v98, &qword_27F8F6E68, &qword_257EDF540);
    if (v81)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_15:
  v76 = v3;
  v25 = *(v79 + *(type metadata accessor for MAGOutputEvent(0) + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v26 = *(v25 + 8);
  v27 = *(v25 + 16);
  *&v98 = *v25;
  *(&v98 + 1) = v26;
  LOBYTE(v99) = v27;
  v28 = qword_2815447E0;

  if (v28 != -1)
  {
    v29 = swift_once();
  }

  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  v69 = &v98;
  sub_257ECFD50();

  if (v93 != 1)
  {

    v9 = v83;
    v3 = v76;
    goto LABEL_24;
  }

  v9 = v83;
  v3 = v76;
  if ((v81 & 1) == 0)
  {

    if (v77)
    {
      if (v70 == v72 && v77 == v10)
      {

LABEL_28:

        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        sub_257ECD180();
        sub_257BE4084(&v93, &qword_27F8F6E68, &qword_257EDF540);
        goto LABEL_30;
      }

      v34 = sub_257ED0640();

      if (v34)
      {
        goto LABEL_28;
      }
    }
  }

  *(&v99 + 1) = sub_257ECD1A0();
  v100 = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(&v98);
  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v98);
  sub_257ECD130();
  sub_257C024BC(&v89, v86);
  sub_257ECD180();
  sub_257BE4084(v86, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(&v89);
  __swift_destroy_boxed_opaque_existential_0(&v93);
LABEL_30:
  sub_257ECD130();
  sub_257C024BC(&v89, v86);
  sub_257ECD180();
  sub_257BE4084(v86, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(&v89);
  __swift_destroy_boxed_opaque_existential_0(&v98);
  if (v81)
  {
    goto LABEL_36;
  }

LABEL_31:

  if (v74 != v82 || v75 != v9)
  {
    v35 = sub_257ED0640();

    if (v35)
    {
      goto LABEL_35;
    }

LABEL_36:

    *(&v90 + 1) = sub_257ECD1A0();
    v91 = MEMORY[0x277D70398];
    __swift_allocate_boxed_opaque_existential_1(&v89);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v89);
    sub_257ECD130();
    sub_257C024BC(v86, v85);
    sub_257ECD180();
    sub_257BE4084(v85, &qword_27F8F6E68, &qword_257EDF540);
    __swift_destroy_boxed_opaque_existential_0(v86);
    __swift_destroy_boxed_opaque_existential_0(&v98);
    goto LABEL_37;
  }

LABEL_35:

  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v98, &qword_27F8F6E68, &qword_257EDF540);
LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_257EDBBA0;
  sub_257C024BC(v96, v36 + 32);
  sub_257C024BC(&v93, v36 + 72);
  sub_257C024BC(&v89, v36 + 112);
  MEMORY[0x259C6FC60](v86, v36);

  sub_257C024BC(v86, v85);
  sub_257ECD180();
  sub_257BE4084(v85, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(&v89);
  __swift_destroy_boxed_opaque_existential_0(&v93);
  __swift_destroy_boxed_opaque_existential_0(v96);
LABEL_38:
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v69 = v79;
  if (sub_257C9A1A0(v3, sub_257C9F2A0, &v68, v4))
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v93, &qword_27F8F6E68, &qword_257EDF540);
    goto LABEL_57;
  }

  if (v5)
  {
    v38 = v5;
    v84 = sub_257ECD1A0();
    v39 = v4 + 9;
    v40 = MEMORY[0x277D84F90];
    v80 = xmmword_257EDBBA0;
    while (1)
    {
      v83 = v40;
      v41 = *(v39 - 3);
      v42 = *v39;
      v82 = *(v39 - 1);
      *(&v94 + 1) = v84;
      v95 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v93);

      swift_bridgeObjectRetain_n();

      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v93);
      if (!v42)
      {
        goto LABEL_48;
      }

      v81 = v41;
      v43 = *(v79 + *(type metadata accessor for MAGOutputEvent(0) + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
      swift_beginAccess();
      v44 = *(v43 + 8);
      v45 = *(v43 + 16);
      *&v93 = *v43;
      *(&v93 + 1) = v44;
      LOBYTE(v94) = v45;
      v46 = qword_2815447E0;

      if (v46 != -1)
      {
        v47 = swift_once();
      }

      MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
      v69 = &v93;
      sub_257ECFD50();

      if (v89 != 1)
      {
        break;
      }

      *(&v94 + 1) = v84;
      v95 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v93);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v93);
      sub_257ECD130();
      sub_257C024BC(v86, v85);
      sub_257ECD180();
      sub_257BE4084(v85, &qword_27F8F6E68, &qword_257EDF540);
      __swift_destroy_boxed_opaque_existential_0(v86);
      __swift_destroy_boxed_opaque_existential_0(&v89);

LABEL_49:
      v87 = v84;
      v88 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(v86);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
      v52 = swift_allocObject();
      *(v52 + 16) = v80;
      sub_257C024BC(v96, v52 + 32);
      sub_257C024BC(&v93, v52 + 72);
      sub_257C024BC(&v89, v52 + 112);
      MEMORY[0x259C6FC60](v86, v52);

      v40 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_257BFDA78(0, v40[2] + 1, 1, v40);
        v92 = v40;
      }

      v55 = v40[2];
      v54 = v40[3];
      if (v55 >= v54 >> 1)
      {
        v40 = sub_257BFDA78((v54 > 1), v55 + 1, 1, v40);
        v92 = v40;
      }

      v39 += 6;
      __swift_destroy_boxed_opaque_existential_0(&v89);
      __swift_destroy_boxed_opaque_existential_0(&v93);
      __swift_destroy_boxed_opaque_existential_0(v96);
      v56 = v87;
      v57 = v88;
      v58 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
      v62 = MEMORY[0x28223BE20](v58, v58, v59, v60, v61);
      v64 = &v70 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v64, v62);
      sub_257C9D038(v55, v64, &v92, v56, v57);
      v37.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0(v86);
      if (!--v38)
      {
        goto LABEL_56;
      }
    }

LABEL_48:
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v89, &qword_27F8F6E68, &qword_257EDF540);

    goto LABEL_49;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_56:
  MEMORY[0x259C6FC40](&v93, v40, v37);

  sub_257ECD130();
  sub_257C024BC(&v89, v86);
  sub_257ECD180();
  sub_257BE4084(v86, &qword_27F8F6E68, &qword_257EDF540);
  __swift_destroy_boxed_opaque_existential_0(&v89);
  __swift_destroy_boxed_opaque_existential_0(&v93);
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00, &qword_257EDB260);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_257ED9BD0;
  sub_257C024BC(&v98, v66 + 32);
  sub_257C024BC(v96, v66 + 72);
  MEMORY[0x259C6FC60](v66);

  __swift_destroy_boxed_opaque_existential_0(v96);
  return __swift_destroy_boxed_opaque_existential_0(&v98);
}

uint64_t sub_257C99FA0(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = a1[2];
  v4 = a1[3];
  v18 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_257ED0640() & 1) == 0 || (v3 != v7 || v4 != v6) && (sub_257ED0640() & 1) == 0)
  {
    v16 = 0;
    return v16 & 1;
  }

  type metadata accessor for MAGOutputEvent(0);
  swift_beginAccess();
  v10 = qword_2815447E0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  sub_257ECFD50();

  if (v19 != 1)
  {
    goto LABEL_14;
  }

  v16 = (v5 | v9) == 0;
  if (v5 && v9)
  {
    if (v18 != v8 || v5 != v9)
    {
      v16 = sub_257ED0640();
      return v16 & 1;
    }

LABEL_14:
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t sub_257C9A1A0(uint64_t result, uint64_t (*a2)(void *, void *), uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v31 = *(a4 + 16);
  v5 = *(result + 16);
  v29 = a4 + 32;
  v6 = (result + 72);
  while (1)
  {
    if (v4 == v31)
    {
      if (!v5)
      {
        return 1;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v39 = 0;
      v11 = 0;
      v12 = v31;
      goto LABEL_8;
    }

    if (v4 >= v31)
    {
      break;
    }

    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_22;
    }

    v13 = (v29 + 48 * v4);
    v8 = v13[4];
    v7 = v13[5];
    v10 = v13[2];
    v9 = v13[3];
    v11 = *v13;
    v39 = v13[1];

    if (!v5)
    {
      if (v39)
      {
LABEL_17:
        v23 = v11;
        v24 = v39;
        v25 = v10;
        v26 = v9;
        v27 = v8;
        v28 = v7;
        goto LABEL_18;
      }

      return 1;
    }

LABEL_8:
    v33 = v12;
    v34 = v5;
    v14 = v7;
    v15 = *v6;
    v35 = *(v6 - 1);
    v16 = v6;
    v19 = v6 - 3;
    v18 = *(v6 - 3);
    v17 = v19[1];
    v20 = *(v16 - 5);
    v21 = *(v16 - 4);
    v32 = v16;

    if (!v39)
    {
      if (v21)
      {
        v23 = v20;
        v24 = v21;
        v25 = v18;
        v26 = v17;
        v27 = v35;
        v28 = v15;
LABEL_18:
        sub_257C9CF08(v23, v24, v25, v26, v27, v28);
        return 0;
      }

      return 1;
    }

    if (!v21)
    {
      v7 = v14;
      goto LABEL_17;
    }

    v37[5] = v15;
    v38[0] = v11;
    v38[1] = v39;
    v38[2] = v10;
    v38[3] = v9;
    v38[4] = v8;
    v38[5] = v14;
    v37[0] = v20;
    v37[1] = v21;
    v37[2] = v18;
    v37[3] = v17;
    v37[4] = v35;
    v22 = a2(v38, v37);

    result = 0;
    if (!v36)
    {
      v4 = v33;
      v5 = v34 - 1;
      v6 = v32 + 6;
      if (v22)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_257C9A3D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v24 = v4;
    v25 = v2;
    v23 = v8;
    if (v7)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        if (!*(a1 + 16))
        {
          break;
        }

        v12 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
        sub_257ECF500();
        sub_257ED07B0();
        v26 = v12;
        sub_257ECF5D0();
        v13 = sub_257ED0800();

        v14 = -1 << *(a1 + 32);
        v15 = v13 & ~v14;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
LABEL_24:

          return;
        }

        v7 &= v7 - 1;
        v16 = ~v14;
        while (1)
        {
          v17 = sub_257ECF500();
          v19 = v18;
          if (v17 == sub_257ECF500() && v19 == v20)
          {

            goto LABEL_22;
          }

          v22 = sub_257ED0640();

          if (v22)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

LABEL_22:
        v10 = v11;
        v4 = v24;
        v2 = v25;
        v8 = v23;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

LABEL_26:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          goto LABEL_26;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

__n128 sub_257C9A628@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (v5 < 0)
  {
    v25 = *(a1 + 48);
    v27 = *(a1 + 64);
    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    sub_257C3F96C(*a1);
    v18 = sub_257C56FFC(v17);

    v35 = v4;
    v36 = v5;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v27;
    v41 = v10;
    v42 = v11;
    sub_257D81B70(v19, v20);
    sub_257C97B70(v18, v21, 1, &v30, a3);
    v26 = v30;
    v29 = v31;
    v16 = *(&v32 + 1);
    v15 = v32;
  }

  else
  {
    *&v30 = *a1;
    v31 = v7;
    v32 = v6;
    v33 = v9;
    v34 = v8;
    v35 = v4;
    v36 = v5;
    v37 = v7;
    v38 = v6;
    v39 = v9;
    v40 = v8;
    v41 = v10;
    v42 = v11;
    v12 = v4;
    sub_257D81B70(v12, v13);
    sub_257C97430(&v30, v14, 1, v43, a3);
    v26 = v43[0];
    v29 = v43[1];
    v15 = v44;
    v16 = v45;
  }

  result = v29;
  *a2 = v26;
  *(a2 + 16) = v29;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_257C9A79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C9A804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_257C9A864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C66FBC(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  v4 = sub_257ED05F0();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 104;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (1.0 - *(v12 + 2) >= 1.0 - *(v12 - 7))
          {
            break;
          }

          v13 = v12 - 72;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v28 = *(v12 + 8);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 8) = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v12 + 2) = *(v12 - 40);
          *(v12 + 3) = v17;
          v18 = *(v12 - 56);
          *v12 = *(v12 - 72);
          *(v12 + 1) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *(v13 + 8) = v19;
          *(v13 + 1) = v21;
          v12 = v13;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_257C9AC54(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257C9AA00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C66FD0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_257C9AA6C(v4);
  *a1 = v2;
}

void sub_257C9AA6C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_257ECF850();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_257C9B278(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_257C9AB64(0, v2, 1, a1);
  }
}

uint64_t sub_257C9AB64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 96 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      result = v8 - 8;
      if (*(v8 + 12) >= 0)
      {
        v9 = 88;
      }

      else
      {
        v9 = 8;
      }

      v10 = *(v8 + v9);
      if (*(v8 - 84) >= 0)
      {
        v11 = (v8 - 8);
      }

      else
      {
        v11 = (v8 - 88);
      }

      if (v10 >= *v11)
      {
LABEL_4:
        ++a3;
        v5 += 96;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = (v8 - 96);
      v19 = *(v8 + 32);
      v20 = *(v8 + 48);
      *v21 = *(v8 + 64);
      *&v21[12] = *(v8 + 76);
      v17 = *v8;
      v18 = *(v8 + 16);
      v13 = *(v8 - 48);
      *(v8 + 32) = *(v8 - 64);
      *(v8 + 48) = v13;
      v14 = *(v8 - 16);
      *(v8 + 64) = *(v8 - 32);
      *(v8 + 80) = v14;
      v15 = *(v8 - 80);
      *v8 = *(v8 - 96);
      *(v8 + 16) = v15;
      v12[2] = v19;
      v12[3] = v20;
      v12[4] = *v21;
      *(v12 + 76) = *&v21[12];
      v8 -= 96;
      *v12 = v17;
      v12[1] = v18;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_257C9AC54(double *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v7 = sub_257C66E20(v7);
    }

    v78 = v7 + 16;
    v79 = *(v7 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v7[16 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_257C9B924((*a3 + 72 * *v80), (*a3 + 72 * *v82), (*a3 + 72 * v83), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_112;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_113;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_114;
        }

        v79 = *v78 - 1;
        memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 16);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = 1.0 - v9;
      v13 = 1.0 - *(v11 + 16);
      v14 = v8 + 2;
      v15 = (v11 + 160);
      while (v5 != v14)
      {
        v16 = *v15;
        v15 += 9;
        v17 = 1.0 - v16 >= 1.0 - v9;
        ++v14;
        v9 = v16;
        if ((((v12 < v13) ^ v17) & 1) == 0)
        {
          v6 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_117;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v85 = v8;
        do
        {
          if (v8 != --v19)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = v21 + v18;
            v93 = *(v21 + v10 + 32);
            v95 = *(v21 + v10 + 48);
            v97 = *(v21 + v10 + 64);
            v89 = *(v21 + v10);
            v91 = *(v21 + v10 + 16);
            memmove((v21 + v10), (v21 + v18), 0x48uLL);
            *(v20 + 32) = v93;
            *(v20 + 48) = v95;
            *(v20 + 64) = v97;
            *v20 = v89;
            *(v20 + 16) = v91;
          }

          ++v8;
          v18 -= 72;
          v10 += 72;
        }

        while (v8 < v19);
        v5 = a3[1];
        v8 = v85;
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_116;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_118;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_257BFCB00(0, *(v7 + 2) + 1, 1, v7);
    }

    v32 = *(v7 + 2);
    v31 = *(v7 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v7 = sub_257BFCB00((v31 > 1), v32 + 1, 1, v7);
    }

    *(v7 + 2) = v33;
    v34 = &v7[16 * v32];
    *(v34 + 4) = v8;
    *(v34 + 5) = v6;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v7 + 4);
          v38 = *(v7 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_103;
          }

          v53 = &v7[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v7[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_110;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v7[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_105;
        }

        v66 = &v7[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v7[16 * v74 + 32];
        v76 = *&v7[16 * v36 + 40];
        sub_257C9B924((*a3 + 72 * v75), (*a3 + 72 * *&v7[16 * v36 + 32]), (*a3 + 72 * v76), v35);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v76 < v75)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_257C66E20(v7);
        }

        if (v74 >= *(v7 + 2))
        {
          goto LABEL_100;
        }

        v77 = &v7[16 * v74];
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        sub_257C66D94(v36);
        v33 = *(v7 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v7[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_101;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_102;
      }

      v48 = &v7[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_104;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v7[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_111;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 72 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (1.0 - *(v26 + 16) >= 1.0 - *(v26 - 56))
    {
LABEL_29:
      ++v6;
      v23 += 72;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 72;
    v94 = *(v26 + 32);
    v96 = *(v26 + 48);
    v98 = *(v26 + 64);
    v90 = *v26;
    v92 = *(v26 + 16);
    v28 = *(v26 - 24);
    *(v26 + 32) = *(v26 - 40);
    *(v26 + 48) = v28;
    *(v26 + 64) = *(v26 - 8);
    v29 = *(v26 - 56);
    *v26 = *(v26 - 72);
    *(v26 + 16) = v29;
    *(v27 + 64) = v98;
    *(v27 + 32) = v94;
    *(v27 + 48) = v96;
    v26 -= 72;
    *v27 = v90;
    *(v27 + 16) = v92;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_257C9B278(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v7 = sub_257C66E20(v7);
    }

    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v7[16 * v86];
        v88 = *&v7[16 * v86 + 24];
        sub_257C9BBC4((*a3 + 96 * v87), (*a3 + 96 * *&v7[16 * v86 + 16]), (*a3 + 96 * v88), v8);
        if (v4)
        {
          goto LABEL_115;
        }

        if (v88 < v87)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_257C66E20(v7);
        }

        if (v86 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v89 = &v7[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_257C66D94(v86 - 1);
        v86 = *(v7 + 2);
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_141;
    }

LABEL_115:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 8;
  while (1)
  {
    v9 = v6++;
    if (v6 < v5)
    {
      v10 = *a3 + 96 * v6;
      v11 = 96 * v9;
      v12 = *a3 + 96 * v9;
      v13 = (v12 + 8);
      if (*(v10 + 12) >= 0)
      {
        v14 = 88;
      }

      else
      {
        v14 = 8;
      }

      v15 = *(v10 + v14);
      if (*(v12 + 12) >= 0)
      {
        v13 = (v12 + 88);
      }

      v16 = *v13;
      v17 = v9 + 2;
      v18 = (v12 + 204);
      while (v5 != v17)
      {
        if (*v18 >= 0)
        {
          v19 = 22;
        }

        else
        {
          v19 = 2;
        }

        v20 = *&v18[v19 - 3];
        if (*(v18 - 24) >= 0)
        {
          v21 = (v18 - 5);
        }

        else
        {
          v21 = (v18 - 25);
        }

        ++v17;
        v18 += 24;
        if (v15 < v16 == v20 >= *v21)
        {
          v6 = v17 - 1;
          if (v15 >= v16)
          {
            goto LABEL_31;
          }

          goto LABEL_22;
        }
      }

      v6 = v5;
      if (v15 >= v16)
      {
        goto LABEL_31;
      }

LABEL_22:
      if (v6 < v9)
      {
        goto LABEL_134;
      }

      if (v9 < v6)
      {
        v22 = 96 * v6 - 96;
        v23 = v6;
        v90 = v9;
        do
        {
          if (v9 != --v23)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v24 = (v25 + v22);
            v98 = *(v25 + v11 + 32);
            v100 = *(v25 + v11 + 48);
            *v102 = *(v25 + v11 + 64);
            *&v102[12] = *(v25 + v11 + 76);
            v94 = *(v25 + v11);
            v96 = *(v25 + v11 + 16);
            memmove((v25 + v11), (v25 + v22), 0x60uLL);
            v24[2] = v98;
            v24[3] = v100;
            v24[4] = *v102;
            *(v24 + 76) = *&v102[12];
            *v24 = v94;
            v24[1] = v96;
          }

          ++v9;
          v22 -= 96;
          v11 += 96;
        }

        while (v9 < v23);
        v5 = a3[1];
        v9 = v90;
      }
    }

LABEL_31:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_133;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 < v5)
        {
          v5 = v9 + a4;
        }

        if (v5 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v9)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_257BFCB00(0, *(v7 + 2) + 1, 1, v7);
    }

    v40 = *(v7 + 2);
    v39 = *(v7 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v7 = sub_257BFCB00((v39 > 1), v40 + 1, 1, v7);
    }

    *(v7 + 2) = v41;
    v42 = &v7[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v6;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 4);
          v46 = *(v7 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_74:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v7[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v71 = &v7[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_88:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v7[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_95:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v83 = *&v7[16 * v82 + 32];
        v84 = *&v7[16 * v44 + 40];
        sub_257C9BBC4((*a3 + 96 * v83), (*a3 + 96 * *&v7[16 * v44 + 32]), (*a3 + 96 * v84), v43);
        if (v4)
        {
          goto LABEL_115;
        }

        if (v84 < v83)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_257C66E20(v7);
        }

        if (v82 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v85 = &v7[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        sub_257C66D94(v44);
        v41 = *(v7 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v7[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v7[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v7[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v26 = *a3;
  v27 = *a3 + 96 * v6;
  v28 = v9 - v6;
LABEL_41:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    if (*(v30 + 12) >= 0)
    {
      v31 = 88;
    }

    else
    {
      v31 = 8;
    }

    v32 = *(v30 + v31);
    if (*(v30 - 84) >= 0)
    {
      v33 = (v30 - 8);
    }

    else
    {
      v33 = (v30 - 88);
    }

    if (v32 >= *v33)
    {
LABEL_40:
      ++v6;
      v27 += 96;
      --v28;
      if (v6 != v5)
      {
        goto LABEL_41;
      }

      v6 = v5;
      goto LABEL_54;
    }

    if (!v26)
    {
      break;
    }

    v34 = (v30 - 96);
    v99 = *(v30 + 32);
    v101 = *(v30 + 48);
    *v103 = *(v30 + 64);
    *&v103[12] = *(v30 + 76);
    v95 = *v30;
    v97 = *(v30 + 16);
    v35 = *(v30 - 48);
    *(v30 + 32) = *(v30 - 64);
    *(v30 + 48) = v35;
    v36 = *(v30 - 16);
    *(v30 + 64) = *(v30 - 32);
    *(v30 + 80) = v36;
    v37 = *(v30 - 80);
    *v30 = *(v30 - 96);
    *(v30 + 16) = v37;
    v34[2] = v99;
    v34[3] = v101;
    v34[4] = *v103;
    *(v34 + 76) = *&v103[12];
    v30 -= 96;
    *v34 = v95;
    v34[1] = v97;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_257C9B924(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[9 * v11] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v12 = &v4[9 * v11];
    if (v10 >= 72 && v6 > v7)
    {
LABEL_21:
      v5 -= 9;
      do
      {
        v15 = v5 + 9;
        if (1.0 - *(v12 - 7) < 1.0 - *(v6 - 7))
        {
          v17 = v6 - 9;
          if (v15 != v6)
          {
            memmove(v5, v6 - 9, 0x48uLL);
          }

          if (v12 <= v4 || (v6 -= 9, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v16 = (v12 - 9);
        if (v15 != v12)
        {
          memmove(v5, v12 - 9, 0x48uLL);
        }

        v5 -= 9;
        v12 -= 9;
      }

      while (v16 > v4);
      v12 = v16;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[9 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[9 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      while (1.0 - v6[2] < 1.0 - v4[2])
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 9;
        if (!v14)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 9;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 9;
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v13, 0x48uLL);
      goto LABEL_13;
    }

LABEL_15:
    v6 = v7;
  }

LABEL_32:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[9 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_257C9BBC4(char *__dst, char *__src, char *a3, int *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 >= v11)
  {
    v19 = 24 * v11;
    if (a4 != __src || &__src[v19 * 4] <= a4)
    {
      memmove(a4, __src, 96 * v11);
    }

    v13 = &v4[v19];
    if (v10 >= 96 && v6 > v7)
    {
LABEL_27:
      v5 -= 24;
      do
      {
        v20 = v5 + 24;
        v21 = 0x3FFFFFFFFFFFFFFELL;
        if (*(v13 - 21) < 0)
        {
          v21 = 0x3FFFFFFFFFFFFFEALL;
        }

        v22 = *&v13[v21];
        if (*(v6 - 21) >= 0)
        {
          v23 = (v6 - 2);
        }

        else
        {
          v23 = (v6 - 22);
        }

        if (v22 < *v23)
        {
          v25 = v6 - 24;
          if (v20 != v6)
          {
            memmove(v5, v6 - 24, 0x60uLL);
          }

          if (v13 <= v4 || (v6 -= 24, v25 <= v7))
          {
            v6 = v25;
            goto LABEL_43;
          }

          goto LABEL_27;
        }

        v24 = (v13 - 24);
        if (v20 != v13)
        {
          memmove(v5, v13 - 24, 0x60uLL);
        }

        v5 -= 24;
        v13 -= 24;
      }

      while (v24 > v4);
      v13 = v24;
    }
  }

  else
  {
    v12 = 96 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12 / 4];
    if (v8 >= 96 && v6 < v5)
    {
      while (1)
      {
        v14 = v6[3] >= 0 ? 88 : 8;
        v15 = *(v6 + v14);
        v16 = (v4[3] >= 0 ? v4 + 22 : v4 + 2);
        if (v15 >= *v16)
        {
          break;
        }

        v17 = v6;
        v18 = v7 == v6;
        v6 += 24;
        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 24;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 24;
      if (v18)
      {
        goto LABEL_19;
      }

LABEL_18:
      memmove(v7, v17, 0x60uLL);
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_43:
  v26 = 24 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 4);
  }

  return 1;
}

void sub_257C9BE54(__int128 *a1, uint64_t a2)
{
  v32 = sub_257ECCCF0();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5, v6, v7, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  *&v35[13] = a1[2];
  *&v35[15] = v11;
  v35[17] = *(a1 + 8);
  v13 = *a1;
  v12 = a1[1];
  v30 = a1;
  *&v35[9] = v13;
  *&v35[11] = v12;
  v33 = sub_257ED0800();
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v31 = (v4 + 8);
  v34 = a2;

  v19 = 0;
  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      v22 = *(v34 + 48) + 96 * (__clz(__rbit64(v17)) | (v21 << 6));
      v23 = *v22;
      v24 = *(v22 + 80);
      sub_257ED07B0();
      v25 = v23;

      v26 = [v25 identifier];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v17 &= v17 - 1;
      sub_257ECCCD0();

      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v28 = v32;
      sub_257ECF400();
      (*v31)(v10, v28);
      sub_257C9C120(v35, v24);
      sub_257ED07E0();
      v29 = sub_257ED0800();

      v19 ^= v29;
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        MEMORY[0x259C732E0](v19);
        return;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257C9C120(__int128 *a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1[2];
  v30 = v12;
  v31 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v26[0] = a1;
  v27 = v14;
  v28 = v13;
  v15 = sub_257ED0800();
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v26[2] = v5 + 16;
  v26[3] = v15;
  v26[1] = v5 + 8;

  v21 = 0;
  for (i = 0; v18; v21 ^= v25)
  {
    v23 = i;
LABEL_9:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v5 + 16))(v11, *(a2 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
    sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v25 = sub_257ECF3F0();
    result = (*(v5 + 8))(v11, v4);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return MEMORY[0x259C732E0](v21);
    }

    v18 = *(a2 + 56 + 8 * v23);
    ++i;
    if (v18)
    {
      i = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_257C9C34C(__int128 *a1, uint64_t a2)
{
  v39 = sub_257ECCCF0();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5, v6, v7, v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  *&v53[13] = a1[2];
  *&v53[15] = v10;
  v53[17] = *(a1 + 8);
  v12 = *a1;
  v11 = a1[1];
  v36 = a1;
  *&v53[9] = v12;
  *&v53[11] = v11;
  v40 = sub_257ED0800();
  v13 = a2 + 56;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;
  v37 = (v4 + 8);
  v43 = a2;

  v51 = 0;
  v18 = 0;
  while (v16)
  {
LABEL_11:
    v21 = *(v43 + 48) + 96 * (__clz(__rbit64(v16)) | (v18 << 6));
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 40);
    v50 = *(v21 + 32);
    v49 = v26;
    v27 = *(v21 + 56);
    v48 = *(v21 + 48);
    v47 = v27;
    v28 = *(v21 + 72);
    v46 = *(v21 + 64);
    v45 = v28;
    v52 = *(v21 + 80);
    v44 = *(v21 + 88);
    sub_257ED07B0();
    if (v22 < 0)
    {
      MEMORY[0x259C732E0](1);

      sub_257C9BE54(v53, v23);
    }

    else
    {
      v41 = v25;
      v42 = v22;
      v29 = v24;
      MEMORY[0x259C732E0](0);
      v30 = v23;
      v31 = v23;

      v32 = [v31 identifier];
      if (!v32)
      {
        goto LABEL_16;
      }

      v33 = v32;
      v34 = v38;
      sub_257ECCCD0();

      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v35 = v39;
      sub_257ECF400();
      (*v37)(v34, v35);
      sub_257C9C120(v53, v52);
      v23 = v30;
      v24 = v29;
      v22 = v42;
      v25 = v41;
    }

    v16 &= v16 - 1;
    sub_257ED07E0();
    v19 = sub_257ED0800();
    sub_257C9F174(v23, v22, v24, v25, v50, v49, v48, v47, v46, v45, v52);
    v51 ^= v19;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      MEMORY[0x259C732E0](v51);
      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_257C9C73C(__int128 *a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v33 = a1[2];
  v34 = v12;
  v35 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v29[0] = a1;
  v31 = v14;
  v32 = v13;
  v29[1] = sub_257ED0800();
  v30 = a2;
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = (v5 + 8);

  v21 = 0;
  v22 = 0;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_8:
      v24 = *(*(v30 + 48) + 80 * (__clz(__rbit64(v18)) | (v23 << 6)));
      sub_257ED07B0();
      v25 = v24;
      v26 = [v25 identifier];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v18 &= v18 - 1;
      sub_257ECCCD0();

      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_257ECF400();
      (*v20)(v11, v4);
      v28 = sub_257ED0800();

      v21 ^= v28;
      v22 = v23;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {

        MEMORY[0x259C732E0](v21);
        return;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_257C9C990(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetectedTextBlock(0);
  v19 = *(v3 - 8);
  v8 = MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  MEMORY[0x259C732E0](v11, v8);
  v21 = v11;
  if (v11)
  {
    v12 = 0;
    v20 = a2 + 32;
    do
    {
      v13 = *(v20 + 8 * v12);
      MEMORY[0x259C732E0](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v19;
        v16 = v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80));

        v17 = *(v15 + 72);
        do
        {
          sub_257C9A79C(v16, v10, type metadata accessor for DetectedTextBlock);
          sub_257ECCCF0();
          sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_257ECF400();
          sub_257C9A804(v10, type metadata accessor for DetectedTextBlock);
          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v12;
    }

    while (v12 != v21);
  }
}

uint64_t sub_257C9CB6C(__n128 a1)
{
  sub_257ED07E0();
  sub_257ED07E0();
  return sub_257ED07E0();
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

uint64_t sub_257C9CE00@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_257C9CE74()
{
  result = qword_27F8F6D58;
  if (!qword_27F8F6D58)
  {
    sub_257BD2C2C(255, &qword_281543DC0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D58);
  }

  return result;
}

double sub_257C9CF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_257C9CF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_257C9CFC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_257C90DC8(*a1, 1);
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_257C9CFF8@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(**(v2 + 16), *(*(v2 + 16) + 8), *(*(v2 + 16) + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257C9D038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_257BE40E4(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s16MagnifierSupport14MAGOutputEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_257ECCCC0() & 1) != 0 && (v4 = type metadata accessor for MAGOutputEvent(0), (_s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v248.i64[0] = a2;
  v247.i64[0] = a1;
  v2 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v234 = &v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  *&v245 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v246.i64[0] = &v234 - v19;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v243 = &v234 - v25;
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v242 = (&v234 - v31);
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v241 = (&v234 - v37);
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v240 = (&v234 - v43);
  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  v239 = (&v234 - v49);
  MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
  v237 = (&v234 - v55);
  MEMORY[0x28223BE20](v56, v57, v58, v59, v60);
  v236 = (&v234 - v61);
  MEMORY[0x28223BE20](v62, v63, v64, v65, v66);
  v235 = (&v234 - v67);
  MEMORY[0x28223BE20](v68, v69, v70, v71, v72);
  v74 = (&v234 - v73);
  MEMORY[0x28223BE20](v75, v76, v77, v78, v79);
  v81 = (&v234 - v80);
  MEMORY[0x28223BE20](v82, v83, v84, v85, v86);
  *&v244 = &v234 - v87;
  MEMORY[0x28223BE20](v88, v89, v90, v91, v92);
  v94 = &v234 - v93;
  MEMORY[0x28223BE20](v95, v96, v97, v98, v99);
  v238 = &v234 - v100;
  MEMORY[0x28223BE20](v101, v102, v103, v104, v105);
  v107 = &v234 - v106;
  MEMORY[0x28223BE20](v108, v109, v110, v111, v112);
  v114 = &v234 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E50, &qword_257EDF518);
  MEMORY[0x28223BE20](v115 - 8, v116, v117, v118, v119);
  v121 = &v234 - v120;
  v123 = &v234 + *(v122 + 56) - v120;
  sub_257C9A79C(v247.i64[0], &v234 - v120, type metadata accessor for MAGOutputEvent.EventType);
  v124 = v248.i64[0];
  v248.i64[0] = v123;
  sub_257C9A79C(v124, v123, type metadata accessor for MAGOutputEvent.EventType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_257C9A79C(v121, v107, type metadata accessor for MAGOutputEvent.EventType);
      v180 = *v107;
      v181 = *(v107 + 2);
      v183 = *(v107 + 2);
      v182 = *(v107 + 3);
      v184 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_108;
      }

      v185 = *v184;
      v186 = *(v184 + 8);
      v187 = *(v184 + 16);
      v188 = *(v184 + 24);
      if (v180)
      {
        if (!v185)
        {

          goto LABEL_117;
        }

        v247.i64[0] = v188;
        v248.i64[0] = v121;
        v246.i64[0] = v187;
        sub_257BD2C2C(0, &qword_27F8F5938, off_279852418);
        v189 = v180;
        v190 = v185;
        v191 = sub_257ECFF50();

        v187 = v246.i64[0];
        if ((v191 & 1) == 0)
        {

          v121 = v248.i64[0];
          goto LABEL_118;
        }
      }

      else
      {
        v247.i64[0] = v188;
        v248.i64[0] = v121;
        if (v185)
        {

          v121 = v248.i64[0];
          goto LABEL_118;
        }
      }

      if (v181 != v186)
      {

        sub_257C9A804(v248.i64[0], type metadata accessor for MAGOutputEvent.EventType);
        goto LABEL_109;
      }

      v226 = v248.i64[0];
      if (v183 == v187 && v182 == v247.i64[0])
      {

LABEL_159:
        v225 = v226;
        goto LABEL_121;
      }

      v233 = sub_257ED0640();

      if (v233)
      {
        goto LABEL_159;
      }

      sub_257C9A804(v226, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_109;
    case 2u:
      v155 = v238;
      sub_257C9A79C(v121, v238, type metadata accessor for MAGOutputEvent.EventType);
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38, &qword_257EDC128);
      v157 = *(v156 + 48);
      v158 = *(v155 + v157);
      v159 = *(v156 + 64);
      v160 = *(v155 + v159);
      v161 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        sub_257C9A804(v155, type metadata accessor for DetectedDoor);
        goto LABEL_108;
      }

      v162 = *(v161 + v157);
      v163 = *(v161 + v159);
      v164 = v161;
      v165 = v234;
      sub_257C9CF58(v164, v234, type metadata accessor for DetectedDoor);
      v166 = _s16MagnifierSupport12DetectedDoorV2eeoiySbAC_ACtFZ_0(v155, v165);
      sub_257C9A804(v155, type metadata accessor for DetectedDoor);
      if ((v166 & 1) == 0)
      {
        sub_257C9A804(v165, type metadata accessor for DetectedDoor);
        goto LABEL_116;
      }

      v167 = sub_257D55520(v158, v162);

      sub_257C9A804(v165, type metadata accessor for DetectedDoor);
      if ((v167 & 1) == 0)
      {
        goto LABEL_118;
      }

      v168 = v160 == v163;
      goto LABEL_140;
    case 3u:
      sub_257C9A79C(v121, v94, type metadata accessor for MAGOutputEvent.EventType);
      v170 = *v94;
      v169 = *(v94 + 1);
      v126 = *(v94 + 4);
      v171 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_107;
      }

      v172 = *(v171 + 8);
      v173 = *(v171 + 16);
      if (!v169)
      {
        if (!v172)
        {
          goto LABEL_139;
        }

        goto LABEL_117;
      }

      if (!v172)
      {
        goto LABEL_117;
      }

      if (v170 == *v171 && v169 == v172)
      {

        goto LABEL_139;
      }

      v227 = sub_257ED0640();

      if ((v227 & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_139;
    case 4u:
      v135 = v244;
      sub_257C9A79C(v121, v244, type metadata accessor for MAGOutputEvent.EventType);
      v136 = *(v135 + 48);
      v273[2] = *(v135 + 32);
      v273[3] = v136;
      v137 = *(v135 + 64);
      v247 = *(v135 + 80);
      v273[4] = v137;
      v138 = *(v135 + 16);
      v273[0] = *v135;
      v273[1] = v138;
      v139 = *(v135 + 96);
      v140 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_257BE4084(v273, &qword_27F8F9C90, &unk_257EDCBD0);
        goto LABEL_108;
      }

      v141 = *(v140 + 48);
      v270 = *(v140 + 32);
      v271 = v141;
      v142 = *(v140 + 80);
      v272 = *(v140 + 64);
      v143 = *(v140 + 16);
      v268 = *v140;
      v269 = v143;
      v144 = *(v140 + 96);
      v145 = *&v273[0];
      v146 = *(v135 + 24);
      v147 = *(v135 + 56);
      v265 = *(v135 + 40);
      v266 = v147;
      v267 = *(v135 + 72);
      v263 = *(v135 + 8);
      v264 = v146;
      if (*&v273[0])
      {
        *(v262 + 8) = *(v135 + 8);
        *(&v262[1] + 8) = *(v135 + 24);
        *(&v262[2] + 8) = *(v135 + 40);
        *(&v262[3] + 8) = *(v135 + 56);
        v148 = *(v135 + 72);
        *&v262[0] = *&v273[0];
        *(&v262[4] + 1) = v148;
        v261[2] = v262[2];
        v261[3] = v262[3];
        v261[4] = v262[4];
        v261[0] = v262[0];
        v261[1] = v262[1];
        if (v268)
        {
          v248 = v142;
          v250[0] = v268;
          v251 = v269;
          v252 = v270;
          v253 = v141;
          v254 = v272;
          sub_257BE401C(v273, v249, &qword_27F8F9C90, &unk_257EDCBD0);
          sub_257BE401C(&v268, v249, &qword_27F8F9C90, &unk_257EDCBD0);
          sub_257BE401C(v262, v249, &qword_27F8F9C90, &unk_257EDCBD0);
          v149 = _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(v261, v250);

          v257 = v264;
          v258 = v265;
          v259 = v266;
          v255 = v145;
          v260 = v267;
          v256 = v263;
          sub_257BE4084(&v255, &qword_27F8F9C90, &unk_257EDCBD0);
          if ((v149 & 1) == 0)
          {
LABEL_155:
            sub_257BE4084(v273, &qword_27F8F9C90, &unk_257EDCBD0);
            sub_257BE4084(&v268, &qword_27F8F9C90, &unk_257EDCBD0);

LABEL_117:

LABEL_118:
            sub_257C9A804(v121, type metadata accessor for MAGOutputEvent.EventType);
LABEL_109:
            v207 = 0;
            return v207 & 1;
          }

          goto LABEL_149;
        }

        v244 = v268;
        v245 = v269;
        v246 = v270;
        v247 = v141;
        v248 = v272;
        sub_257BE401C(v262, &v255, &qword_27F8F9C90, &unk_257EDCBD0);

LABEL_135:
        *(&v262[1] + 8) = v264;
        *(&v262[2] + 8) = v265;
        *(&v262[3] + 8) = v266;
        *&v262[0] = v145;
        *(&v262[4] + 1) = v267;
        *(v262 + 8) = v263;
        v262[5] = v244;
        v262[6] = v245;
        v262[7] = v246;
        v262[8] = v247;
        v262[9] = v248;
        sub_257BE4084(v262, &qword_27F8F6660, &unk_257EDF520);
        goto LABEL_118;
      }

      if (v268)
      {
        v244 = v268;
        v245 = v269;
        v246 = v270;
        v247 = v141;
        v248 = v272;

        goto LABEL_135;
      }

      v248 = v142;
      *(&v262[1] + 8) = *(v135 + 24);
      *(&v262[2] + 8) = *(v135 + 40);
      *(&v262[3] + 8) = *(v135 + 56);
      v229 = *(v135 + 72);
      *&v262[0] = 0;
      *(&v262[4] + 1) = v229;
      *(v262 + 8) = *(v135 + 8);
      sub_257BE401C(v273, v261, &qword_27F8F9C90, &unk_257EDCBD0);
      sub_257BE401C(&v268, v261, &qword_27F8F9C90, &unk_257EDCBD0);
      sub_257BE4084(v262, &qword_27F8F9C90, &unk_257EDCBD0);
LABEL_149:
      v230 = vmovn_s32(vceqq_f32(v247, v248));
      if ((v230.i8[0] & 1) == 0 || (v230.i8[2] & 1) == 0 || (v230.i8[4] & 1) == 0)
      {
        goto LABEL_155;
      }

      if (v139)
      {
        if (!v144)
        {
          sub_257BE4084(&v268, &qword_27F8F9C90, &unk_257EDCBD0);
          sub_257BE4084(v273, &qword_27F8F9C90, &unk_257EDCBD0);
          goto LABEL_117;
        }

        sub_257C943E4(v231, v144);
        v217 = v232;

        swift_bridgeObjectRelease_n();
        sub_257BE4084(&v268, &qword_27F8F9C90, &unk_257EDCBD0);
        sub_257BE4084(v273, &qword_27F8F9C90, &unk_257EDCBD0);
LABEL_81:

        if ((v217 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else
      {
        sub_257BE4084(&v268, &qword_27F8F9C90, &unk_257EDCBD0);
        sub_257BE4084(v273, &qword_27F8F9C90, &unk_257EDCBD0);
        if (v144)
        {
          goto LABEL_117;
        }
      }

LABEL_120:
      v225 = v121;
LABEL_121:
      sub_257C9A804(v225, type metadata accessor for MAGOutputEvent.EventType);
      v207 = 1;
      return v207 & 1;
    case 5u:
      sub_257C9A79C(v121, v81, type metadata accessor for MAGOutputEvent.EventType);
      v192 = v81->i64[0];
      v247 = v81[1];
      v193 = v81[2].i64[0];
      v194 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 5)
      {

LABEL_107:

        goto LABEL_108;
      }

      v195 = v194->i64[0];
      v246 = v194[1];
      v196 = v194[2].i64[0];
      sub_257C94794(v192, v195);
      v198 = v197;

      if ((v198 & 1) == 0 || (v199 = vmovn_s32(vceqq_f32(v247, v246)), (v199.i8[0] & 1) == 0) || (v199.i8[2] & 1) == 0 || (v199.i8[4] & 1) == 0)
      {
LABEL_116:

        goto LABEL_117;
      }

      if (v193)
      {
        if (!v196)
        {
          goto LABEL_117;
        }

        sub_257C943E4(v200, v196);
        v202 = v201;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if ((v202 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else if (v196)
      {
        goto LABEL_117;
      }

      goto LABEL_120;
    case 6u:
      sub_257C9A79C(v121, v74, type metadata accessor for MAGOutputEvent.EventType);
      v208 = v74->i64[0];
      v247 = v74[1];
      v209 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_107;
      }

      v210 = v209->i64[0];
      v248 = v209[1];
      sub_257C94C00(v208, v210);
      v212 = v211;

      if (v212)
      {
        v213 = vmovn_s32(vceqq_f32(v247, v248));
        if (v213.i8[0] & 1) != 0 && (v213.i16[1] & v213.i16[2])
        {
          goto LABEL_120;
        }
      }

      goto LABEL_118;
    case 7u:
      v174 = v235;
      sub_257C9A79C(v121, v235, type metadata accessor for MAGOutputEvent.EventType);
      v176 = *v174;
      v175 = v174[1];
      v177 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_107;
      }

      v178 = *v177;
      v179 = v177[1];
      if (v176 == v178 && v175 == v179)
      {
        goto LABEL_79;
      }

      v224 = sub_257ED0640();

      if (v224)
      {
        goto LABEL_120;
      }

      goto LABEL_118;
    case 8u:
      v218 = v236;
      sub_257C9A79C(v121, v236, type metadata accessor for MAGOutputEvent.EventType);
      v219 = *v218;
      v220 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_107;
      }

      v154 = sub_257D556C8(v219, *v220);
      goto LABEL_85;
    case 9u:
      v151 = v237;
      sub_257C9A79C(v121, v237, type metadata accessor for MAGOutputEvent.EventType);
      v152 = *v151;
      v153 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_107;
      }

      v154 = sub_257D55A3C(v152, *v153);
LABEL_85:
      v207 = v154;

      goto LABEL_143;
    case 0xAu:
      v214 = v239;
      sub_257C9A79C(v121, v239, type metadata accessor for MAGOutputEvent.EventType);
      v130 = *v214;
      v129 = v214[1];
      v131 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_77;
      }

      goto LABEL_107;
    case 0xBu:
      v134 = v240;
      sub_257C9A79C(v121, v240, type metadata accessor for MAGOutputEvent.EventType);
      v130 = *v134;
      v129 = v134[1];
      v131 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_107;
      }

      goto LABEL_77;
    case 0xCu:
      v150 = v241;
      sub_257C9A79C(v121, v241, type metadata accessor for MAGOutputEvent.EventType);
      v130 = *v150;
      v129 = v150[1];
      v131 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_107;
      }

      goto LABEL_77;
    case 0xDu:
      v203 = v242;
      sub_257C9A79C(v121, v242, type metadata accessor for MAGOutputEvent.EventType);
      v204 = *v203;
      v205 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v206 = *v205;
        sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
        v207 = sub_257ECFF50();

        goto LABEL_143;
      }

      goto LABEL_108;
    case 0xEu:
      v132 = v243;
      sub_257C9A79C(v121, v243, type metadata accessor for MAGOutputEvent.EventType);
      v133 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_108;
      }

      goto LABEL_34;
    case 0xFu:
      v132 = v246.i64[0];
      sub_257C9A79C(v121, v246.i64[0], type metadata accessor for MAGOutputEvent.EventType);
      v133 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_108;
      }

LABEL_34:
      v168 = *v132 == *v133;
      goto LABEL_140;
    case 0x10u:
      v128 = v245;
      sub_257C9A79C(v121, v245, type metadata accessor for MAGOutputEvent.EventType);
      v130 = *v128;
      v129 = v128[1];
      v131 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_107;
      }

LABEL_77:
      v215 = *v131;
      v216 = v131[1];
      if (v130 == v215 && v129 == v216)
      {
LABEL_79:

        goto LABEL_120;
      }

      v217 = sub_257ED0640();

      goto LABEL_81;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() == 34)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    default:
      sub_257C9A79C(v121, v114, type metadata accessor for MAGOutputEvent.EventType);
      v125 = *v114;
      v126 = *(v114 + 2);
      v127 = v248.i64[0];
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_108:
        sub_257BE4084(v121, &qword_27F8F6E50, &qword_257EDF518);
        goto LABEL_109;
      }

      v221 = *v127;
      v173 = *(v127 + 8);
      if (v125)
      {
        if (v221)
        {
          sub_257BD2C2C(0, &qword_27F8F5938, off_279852418);
          v222 = v125;
          v223 = sub_257ECFF50();

          if ((v223 & 1) == 0)
          {
            goto LABEL_118;
          }

          goto LABEL_139;
        }

        v221 = v125;
      }

      else if (!v221)
      {
LABEL_139:
        v168 = v126 == v173;
LABEL_140:
        v207 = v168;
LABEL_143:
        sub_257C9A804(v121, type metadata accessor for MAGOutputEvent.EventType);
        return v207 & 1;
      }

      goto LABEL_118;
  }
}

uint64_t sub_257C9E5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257C9E600()
{
  result = qword_27F8F6D78;
  if (!qword_27F8F6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D78);
  }

  return result;
}

unint64_t sub_257C9E658()
{
  result = qword_27F8F6D80;
  if (!qword_27F8F6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D80);
  }

  return result;
}

unint64_t sub_257C9E6B0()
{
  result = qword_27F8F6D88;
  if (!qword_27F8F6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D88);
  }

  return result;
}

unint64_t sub_257C9E7E0()
{
  result = qword_27F8F6DA0;
  if (!qword_27F8F6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6DA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAGOutputEventCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAGOutputEventCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_257C9E9CC(uint64_t a1)
{
  sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MAGOutputEvent.EventType(319);
    if (v2 <= 0x3F)
    {
      sub_257C9EF5C(319, &qword_27F8F6DB8, type metadata accessor for MFEnvironment.UserControls, type metadata accessor for IgnoreEquatable);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257C9EB00(uint64_t a1)
{
  sub_257C9EDD4(319, &qword_27F8F6DD0, &qword_27F8F6DD8, &qword_257EDF400);
  if (v1 <= 0x3F)
  {
    sub_257C9ECD4(319);
    if (v2 <= 0x3F)
    {
      sub_257C9ED50(319);
      if (v3 <= 0x3F)
      {
        sub_257C9EDD4(319, &qword_27F8F6DF8, &unk_27F8F4D70, &unk_257ED81A0);
        if (v4 <= 0x3F)
        {
          sub_257C9EE38(319, &qword_27F8F6E00, &qword_27F8F9C90, &unk_257EDCBD0);
          if (v5 <= 0x3F)
          {
            sub_257C9EE38(319, &qword_27F8F6E18, &qword_27F8F6E20, &qword_257EDF428);
            if (v6 <= 0x3F)
            {
              sub_257C9EED4(319);
              if (v7 <= 0x3F)
              {
                sub_257C9EF5C(319, &qword_27F8F6E38, type metadata accessor for DetectedTextBlock, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_257C9EFC0(319);
                  if (v9 <= 0x3F)
                  {
                    sub_257BD2C2C(319, &qword_27F8F6E48, 0x277CCA898);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_257C9ECD4(uint64_t a1)
{
  if (!qword_27F8F6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6DD8, &qword_257EDF400);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F8F6DE0);
    }
  }
}

void sub_257C9ED50(uint64_t a1)
{
  if (!qword_27F8F6DE8)
  {
    type metadata accessor for DetectedDoor(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6DF0, &unk_257EDF408);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F8F6DE8);
    }
  }
}

void sub_257C9EDD4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_257C9EE38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E08, &qword_257EDF418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E10, &qword_257EDF420);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_257C9EED4(uint64_t a1)
{
  if (!qword_27F8F6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E30, &unk_257EDF430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E08, &qword_257EDF418);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F8F6E28);
    }
  }
}

void sub_257C9EF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_257C9EFC0(uint64_t a1)
{
  if (!qword_27F8F6E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6970, &unk_257EDB140);
    v1 = sub_257ECF870();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F6E40);
    }
  }
}

uint64_t getEnumTagSinglePayload for ColorFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_257C9F174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if ((a2 & 0x8000000000000000) == 0)
  {

    v11 = vars8;
  }

  return result;
}

unint64_t sub_257C9F1D4()
{
  result = qword_27F8F6E70;
  if (!qword_27F8F6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6E70);
  }

  return result;
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

void sub_257C9F2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_257C9F3E4()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (v18)
  {
    v25 = v15;
    sub_257BD52CC();
    v19 = v18;
    v20 = sub_257ECFD30();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    aBlock[4] = sub_257C9F688;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_16;
    v22 = _Block_copy(aBlock);
    v23 = v19;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v17, v8, v22);
    _Block_release(v22);

    (*(v2 + 8))(v8, v1);
    (*(v10 + 8))(v17, v25);
  }
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257C9F6C8(uint64_t a1, uint64_t a2)
{
  sub_257E7D908(a2);
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
  if (v3)
  {
    v3[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
    v6 = v3;
    sub_257E71464();
    v4 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
    if (v4)
    {
      v5 = v4;
      [v5 setEnabled_];
    }
  }
}

uint64_t ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_257C9F914();
  sub_257ECE250();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E88, &qword_257EDF580) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E90, &qword_257EDF588) + 28);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_257ECDF90();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = sub_257ECED70();
  v8 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E98, &qword_257EDF5C0);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t sub_257C9F8B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MAGCaptureService(0);
  sub_257C9FCF8();
  v4 = a1;
  result = sub_257ECE150();
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_257C9F914()
{
  result = qword_27F8F6E80;
  if (!qword_27F8F6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6E80);
  }

  return result;
}

uint64_t sub_257C9F968@<X0>(uint64_t a1@<X8>)
{
  sub_257C9F914();
  sub_257ECE250();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E88, &qword_257EDF580) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E90, &qword_257EDF588) + 28);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_257ECDF90();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = sub_257ECED70();
  v8 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E98, &qword_257EDF5C0);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t sub_257C9FAC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_257C9FB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257C9FB5C()
{
  result = qword_27F8F6EA0;
  if (!qword_27F8F6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E98, &qword_257EDF5C0);
    sub_257C9FC14();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6EA0);
  }

  return result;
}

unint64_t sub_257C9FC14()
{
  result = qword_27F8F6EA8;
  if (!qword_27F8F6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E88, &qword_257EDF580);
    sub_257BD2D4C(&qword_27F8F6EB0, &qword_27F8F6EB8, &qword_257EDF658, MEMORY[0x277CDDA18]);
    sub_257BD2D4C(&qword_27F8F6EC0, &qword_27F8F6E90, &qword_257EDF588, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6EA8);
  }

  return result;
}

unint64_t sub_257C9FCF8()
{
  result = qword_27F8F6ED8;
  if (!qword_27F8F6ED8)
  {
    type metadata accessor for MAGCaptureService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6ED8);
  }

  return result;
}

void sub_257C9FD54()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control;
  v7 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control];
  v8 = &qword_27F8F6000;
  if (v7 <= 0xB)
  {
    switch(v7)
    {
      case 5u:
        if (qword_281544FE0 == -1)
        {
          goto LABEL_22;
        }

        break;
      case 6u:
        if (qword_281544FE0 == -1)
        {
          goto LABEL_22;
        }

        break;
      case 0xAu:
        if (qword_281544FE0 == -1)
        {
          goto LABEL_22;
        }

        break;
      default:
        goto LABEL_35;
    }

    goto LABEL_54;
  }

  if (v7 == 12)
  {
    if (qword_281544FE0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

  if (v7 == 13)
  {
    if (qword_281544FE0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

  if (v7 != 14)
  {
    goto LABEL_35;
  }

  if (qword_281544FE0 != -1)
  {
LABEL_54:
    swift_once();
  }

LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v9 = LOBYTE(aBlock[0]);
  v10 = sub_257CA150C();
  LOBYTE(aBlock[0]) = v0[v6];
  sub_257D14A40(v10);
  v11 = sub_257ECF4C0();

  [v10 setAccessibilityLabel_];

  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v13 = v1[v12] & (v5 ^ 1);
  if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
  {
    if (!v9)
    {
      if (v1[v12] & (v5 ^ 1))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_27:
    if (v13)
    {
      goto LABEL_33;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock[0] & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v9)
  {
    goto LABEL_27;
  }

  if (v13 & 1 | ((aBlock[0] & 1) == 0))
  {
LABEL_33:
    v8 = &qword_27F8F6000;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    sub_257ECF500();
    v14 = sub_257ECF4C0();

    goto LABEL_34;
  }

LABEL_32:
  v14 = 0;
  v8 = &qword_27F8F6000;
LABEL_34:
  [v1 setAccessibilityHint_];

LABEL_35:
  v20 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed;
  v21 = v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed];
  v22 = *MEMORY[0x277D76580];
  v23 = [v1 accessibilityTraits];
  if (v21)
  {
    v24 = v23 | v22;
  }

  else
  {
    v24 = v23 & ~v22;
  }

  [v1 setAccessibilityTraits_];
  v25 = v8[492];
  swift_beginAccess();
  v26 = v1[v25];
  v27 = *MEMORY[0x277D76598];
  v28 = [v1 accessibilityTraits];
  if (v26)
  {
    v29 = v28 | v27;
  }

  else
  {
    v29 = v28 & ~v27;
  }

  [v1 setAccessibilityTraits_];
  v30 = v1[v6] - 7 < 0xFFFFFFFE;
  v31 = *MEMORY[0x277D76548];
  v32 = [v1 accessibilityTraits];
  if ((v5 & v30) != 0)
  {
    v33 = v32 & ~v31;
  }

  else
  {
    v33 = v32 | v31;
  }

  [v1 setAccessibilityTraits_];
  if (v1[v6] - 5 <= 1)
  {
    if (v5 & 1) != 0 || (v1[v20])
    {
      goto LABEL_50;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock[0])
    {
LABEL_50:
      sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
      v34 = sub_257ECF7F0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_257ED9BF0;
      type metadata accessor for MAGUtilities();
      v36 = swift_getObjCClassFromMetadata();
      v37 = [objc_opt_self() bundleForClass_];
      v38 = sub_257ECF4C0();
      v39 = sub_257ECF4C0();
      v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

      sub_257ECF500();
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = objc_allocWithZone(MEMORY[0x277D75088]);
      sub_257ECC3F0();
      v43 = sub_257ECF4C0();

      aBlock[4] = sub_257CA5EF0;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D96328;
      aBlock[3] = &block_descriptor_17;
      v44 = _Block_copy(aBlock);
      v45 = [v42 initWithName:v43 actionHandler:v44];

      _Block_release(v44);

      *(v35 + 32) = v45;
      sub_257BD2C2C(0, &qword_281543E70, 0x277D75088);
      v34 = sub_257ECF7F0();
    }

    [v1 setAccessibilityCustomActions_];
  }
}

uint64_t sub_257CA0708(char a1)
{
  v3 = sub_257ECF120();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECF190();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v11, v12, v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v17 = sub_257ECFD30();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = a1;
  aBlock[4] = sub_257CA6494;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_62;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v16, v9, v19);
  _Block_release(v19);

  (*(v23 + 8))(v9, v3);
  return (*(v10 + 8))(v16, v22);
}

void sub_257CA09D4(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_257CA0A8C();
  sub_257CA0C98();
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing) != v3)
  {
    if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing))
    {
      v4 = sub_257D15408();
    }

    else
    {
      v4 = sub_257D14B7C();
    }

    v5 = v4;
    v6 = sub_257CA150C();
    [v6 setImage:v5 forState:0];

    sub_257C9FD54();
  }
}

void sub_257CA0A8C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v8 == 1)
  {
    if (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
    {
      goto LABEL_7;
    }

    v4 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
    v5 = objc_opt_self();
    if (v4 == 1)
    {
      v6 = [v5 blackColor];
LABEL_13:
      v3 = v6;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
  {
    v7 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
    v5 = objc_opt_self();
    if (v7 == 1)
    {
      v6 = [v5 systemYellowColor];
      goto LABEL_13;
    }

LABEL_12:
    v6 = [v5 whiteColor];
    goto LABEL_13;
  }

LABEL_7:
  v1 = [objc_opt_self() whiteColor];
  v2 = [v0 traitCollection];
  v3 = sub_257C1C83C(v1, v2);

LABEL_14:
  [v0 setTintColor_];
}

void sub_257CA0C98()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3 == 1)
  {
    if (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] == 1)
    {
      v1 = [objc_opt_self() systemYellowColor];
    }

    else
    {
      if (qword_281544A78 != -1)
      {
        swift_once();
      }

      v1 = qword_281548308;
    }

    v2 = v1;
    [v0 setBackgroundColor_];
  }

  else
  {
    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor_];
  }
}

id sub_257CA0E28()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label);
  }

  else
  {
    v4 = sub_257CA0E8C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257CA0E8C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control);
  if (v3 <= 9)
  {
    if (v3 != 5 && v3 != 6 && v3 != 9)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control) > 0xCu)
  {
    if (v3 != 13 && v3 != 14)
    {
      goto LABEL_15;
    }
  }

  else if (v3 != 10 && v3 != 12)
  {
    goto LABEL_15;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v2 setText_];

LABEL_15:
  [v2 setTextAlignment_];
  v9 = v2;
  [v9 setAlpha_];
  v10 = [v9 layer];

  [v10 setCornerRadius_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setLineBreakMode_];
  [v9 setAdjustsFontSizeToFitWidth_];
  [v9 setMinimumScaleFactor_];
  v11 = [objc_opt_self() systemFontOfSize_];
  [v9 setFont_];

  [v9 setNumberOfLines_];
  LODWORD(v12) = 1.0;
  [v9 _setHyphenationFactor_];
  return v9;
}

id sub_257CA150C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v5;
    v8 = v0;
    v9 = sub_257D47B08(v4, v7);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    v13 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_257CA15F0(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_257CA0E28();
  v5 = v4;
  v6 = 0.0;
  if (v1[v3] == 1)
  {
    v6 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
    {
      v6 = 0.25;
    }
  }

  [v4 setAlpha_];

  sub_257C9FD54();
  if (v1[v3] == 1)
  {
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

uint64_t (*sub_257CA16B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257CA1740;
}

void sub_257CA1740(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_257CA0E28();
    v7 = v6;
    v8 = *(v4 + v5);
    v9 = v3[3];
    v10 = 0.0;
    if (v8 == 1)
    {
      v10 = 1.0;
      if (*(v9 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed))
      {
        v10 = 0.25;
      }
    }

    v11 = v3[4];
    [v6 setAlpha_];

    sub_257C9FD54();
    if (*(v9 + v11) == 1)
    {
      v12 = v3[3];
      [v12 setNeedsLayout];
      [v12 layoutIfNeeded];
    }
  }

  free(v3);
}

id sub_257CA1814()
{
  v1 = sub_257CA0E28();
  v2 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257CA0A8C();
  sub_257CA0C98();
  v4 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label;
  v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed;
  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label) setEnabled_];
  return [*(v0 + v4) setUserInteractionEnabled_];
}

_BYTE *sub_257CA18EC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isOn] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_peopleDetectionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_doorDetectionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_imageCaptionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_pointSpeakGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_textDetectionGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_focusLockGlowSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_freezeFrameReviewSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_clickInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control] = a1;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_config];
  *v8 = a2;
  v8[1] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_257CA1ACC();
  sub_257CA1E7C();
  sub_257CA3A1C();
  v10 = v9;
  [v10 setShowsLargeContentViewer_];
  [v10 setScalesLargeContentImage_];

  v11 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v10 addInteraction_];

  return v10;
}

void sub_257CA1ACC()
{
  v1 = v0;
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v2 = [objc_opt_self() whiteColor];
  [v1 setTintColor_];

  v3 = sub_257D14B7C();
  v4 = sub_257CA150C();
  [v4 setImage:v3 forState:0];

  v5 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = sub_257CA0E28();
  v7 = v6;
  v8 = 0.0;
  if (v1[v5] == 1)
  {
    v8 = 1.0;
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
    {
      v8 = 0.25;
    }
  }

  [v6 setAlpha_];

  sub_257C9FD54();
  if (v1[v5] == 1)
  {
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }

  v9 = [v1 layer];
  [v9 setCornerRadius_];

  v10 = [v1 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve_];

  v11 = [v1 layer];
  [v11 setMasksToBounds_];

  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton;
  v13 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___internalButton] layer];
  [v13 setCornerRadius_];

  v14 = [*&v1[v12] layer];
  [v14 setMasksToBounds_];

  [*&v1[v12] addTarget:v1 action:sel_didTap_ forControlEvents:64];
  v15 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_labelTapped_];
  v16 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton____lazy_storage___label] addGestureRecognizer_];
  [*&v1[v16] setUserInteractionEnabled_];
  [*&v1[v16] setAlpha_];
  [v1 addSubview_];
  [v1 addSubview_];
  sub_257CA3B08();
}

double sub_257CA1E7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v110 = v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40, &qword_257EDF9A0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6F80, &qword_257EDF9A8);
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = v104 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A50, &unk_257EDF9B0);
  v112 = *(v19 - 8);
  v113 = v19;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v111 = v104 - v24;
  v25 = sub_257ECF130();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27, v28, v29, v30);
  v32 = v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_257ECFD10();
  v118 = *(v33 - 8);
  v119 = v33;
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v120 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  v46 = v104 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6F88, &unk_257EDF9C0);
  MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
  v55 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control);
  if (v55 <= 9)
  {
    switch(v55)
    {
      case 5u:
        v114 = v40;
        v115 = v54;
        v79 = v104 - v53;
        v116 = v52;
        v117 = v0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257ECFD00();
        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
        v80 = sub_257ECFD90();
        (*(v26 + 8))(v32, v25);
        v121 = v80;
        sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
        sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
        v81 = v114;
        sub_257ECDE00();

        (*(v118 + 8))(v39, v119);
        (*(v120 + 8))(v46, v81);
        swift_allocObject();
        v59 = v117;
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
        v82 = v116;
        v61 = sub_257ECDE50();

        (*(v115 + 8))(v79, v82);
        v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_peopleDetectionGlowSubscription;
        goto LABEL_35;
      case 6u:
        v114 = v40;
        v115 = v54;
        v99 = v104 - v53;
        v116 = v52;
        v117 = v0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257ECFD00();
        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
        v100 = sub_257ECFD90();
        (*(v26 + 8))(v32, v25);
        v121 = v100;
        sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
        sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
        v101 = v114;
        sub_257ECDE00();

        (*(v118 + 8))(v39, v119);
        (*(v120 + 8))(v46, v101);
        swift_allocObject();
        v59 = v117;
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
        v102 = v116;
        v61 = sub_257ECDE50();

        (*(v115 + 8))(v99, v102);
        v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_focusLockGlowSubscription;
        goto LABEL_35;
      case 9u:
        v114 = v40;
        v115 = v54;
        v107 = v104 - v53;
        v116 = v52;
        v117 = v0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257ECFD00();
        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
        v63 = sub_257ECFD90();
        (*(v26 + 8))(v32, v25);
        v121 = v63;
        v105 = MEMORY[0x277CBCEC8];
        v104[1] = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
        sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
        v64 = v107;
        v65 = v114;
        sub_257ECDE00();

        (*(v118 + 8))(v39, v119);
        (*(v120 + 8))(v46, v65);
        swift_allocObject();
        v66 = v117;
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
        v67 = v116;
        v68 = sub_257ECDE50();

        (*(v115 + 8))(v64, v67);
        *(v66 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_detectionModeGlowSubscription) = v68;

        swift_beginAccess();
        sub_257ECDD30();
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
        sub_257ECDD30();
        swift_endAccess();
        sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, v105);
        sub_257ECDC50();
        v69 = [objc_opt_self() mainRunLoop];
        v121 = v69;
        v70 = sub_257ED0080();
        v71 = v110;
        (*(*(v70 - 8) + 56))(v110, 1, 1, v70);
        sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
        sub_257BD2D4C(&qword_2815444A0, &qword_27F8F6F80, &qword_257EDF9A8, MEMORY[0x277CBCAF0]);
        v59 = v66;
        sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
        v72 = v111;
        v73 = v109;
        sub_257ECDDF0();
        sub_257BE4084(v71, &unk_27F8F4DB0, &unk_257ED8210);

        (*(v108 + 8))(v18, v73);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_257BD2D4C(&qword_281544210, &unk_27F8F7A50, &unk_257EDF9B0, MEMORY[0x277CBCD60]);
        v74 = v113;
        v61 = sub_257ECDE50();

        (*(v112 + 8))(v72, v74);
        goto LABEL_25;
    }

LABEL_22:
    v83 = v0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60, &qword_257EDF9D0);
    sub_257ECDD30();
    swift_endAccess();
    v84 = MEMORY[0x277CBCEC8];
    sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
    sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40, &qword_257EDF9A0, v84);
    sub_257ECDC50();
    v85 = [objc_opt_self() mainRunLoop];
    v121 = v85;
    v86 = sub_257ED0080();
    v87 = v110;
    (*(*(v86 - 8) + 56))(v110, 1, 1, v86);
    sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
    sub_257BD2D4C(&qword_2815444A0, &qword_27F8F6F80, &qword_257EDF9A8, MEMORY[0x277CBCAF0]);
    sub_257CA64A0(&qword_281543D50, &unk_281543D40, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v88 = v111;
    v89 = v109;
    sub_257ECDDF0();
    sub_257BE4084(v87, &unk_27F8F4DB0, &unk_257ED8210);

    (*(v108 + 8))(v18, v89);
    swift_allocObject();
    v59 = v83;
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&qword_281544210, &unk_27F8F7A50, &unk_257EDF9B0, MEMORY[0x277CBCD60]);
    v90 = v113;
    v61 = sub_257ECDE50();

    (*(v112 + 8))(v88, v90);
LABEL_25:
    v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_freezeFrameReviewSubscription;
    goto LABEL_35;
  }

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control) > 0xCu)
  {
    if (v55 == 13)
    {
      v114 = v40;
      v115 = v54;
      v95 = v104 - v53;
      v116 = v52;
      v117 = v0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECFD00();
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
      v96 = sub_257ECFD90();
      (*(v26 + 8))(v32, v25);
      v121 = v96;
      sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
      sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
      v97 = v114;
      sub_257ECDE00();

      (*(v118 + 8))(v39, v119);
      (*(v120 + 8))(v46, v97);
      swift_allocObject();
      v59 = v117;
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
      v98 = v116;
      v61 = sub_257ECDE50();

      (*(v115 + 8))(v95, v98);
      v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_pointSpeakGlowSubscription;
      goto LABEL_35;
    }

    if (v55 == 14)
    {
      v114 = v40;
      v115 = v54;
      v75 = v104 - v53;
      v116 = v52;
      v117 = v0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECFD00();
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
      v76 = sub_257ECFD90();
      (*(v26 + 8))(v32, v25);
      v121 = v76;
      sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
      sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
      v77 = v114;
      sub_257ECDE00();

      (*(v118 + 8))(v39, v119);
      (*(v120 + 8))(v46, v77);
      swift_allocObject();
      v59 = v117;
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
      v78 = v116;
      v61 = sub_257ECDE50();

      (*(v115 + 8))(v75, v78);
      v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_textDetectionGlowSubscription;
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  if (v55 != 10)
  {
    if (v55 == 12)
    {
      v114 = v40;
      v115 = v54;
      v56 = v104 - v53;
      v116 = v52;
      v117 = v0;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECFD00();
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
      v57 = sub_257ECFD90();
      (*(v26 + 8))(v32, v25);
      v121 = v57;
      sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
      sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
      v58 = v114;
      sub_257ECDE00();

      (*(v118 + 8))(v39, v119);
      (*(v120 + 8))(v46, v58);
      swift_allocObject();
      v59 = v117;
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
      v60 = v116;
      v61 = sub_257ECDE50();

      (*(v115 + 8))(v56, v60);
      v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_imageCaptionGlowSubscription;
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  v114 = v40;
  v115 = v54;
  v91 = v104 - v53;
  v116 = v52;
  v117 = v0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  (*(v26 + 104))(v32, *MEMORY[0x277D851C0], v25);
  v92 = sub_257ECFD90();
  (*(v26 + 8))(v32, v25);
  v121 = v92;
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10, 0x277D85C78, MEMORY[0x277D85228]);
  v93 = v114;
  sub_257ECDE00();

  (*(v118 + 8))(v39, v119);
  (*(v120 + 8))(v46, v93);
  swift_allocObject();
  v59 = v117;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_2815442B8, &qword_27F8F6F88, &unk_257EDF9C0, MEMORY[0x277CBCD20]);
  v94 = v116;
  v61 = sub_257ECDE50();

  (*(v115 + 8))(v91, v94);
  v62 = &OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_doorDetectionGlowSubscription;
LABEL_35:
  *(v59 + *v62) = v61;

  return result;
}