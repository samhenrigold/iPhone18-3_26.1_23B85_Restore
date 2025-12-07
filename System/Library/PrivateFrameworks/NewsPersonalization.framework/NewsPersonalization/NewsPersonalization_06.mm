uint64_t sub_1C6B9C76C(uint64_t a1, BOOL *a2, uint64_t *a3, size_t *a4, uint64_t a5, void *a6, uint64_t a7, _OWORD *a8, uint64_t (*a9)(char *), uint64_t a10)
{
  v115 = a7;
  v121 = a6;
  v104 = a5;
  v124 = a4;
  v105 = sub_1C6D789A0();
  v14 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v15);
  v96 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1C6B9F664(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v103 = &v93 - v24;
  v25 = type metadata accessor for EventArticleFeatures(0);
  v102 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v114 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v113 = (&v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v32);
  v119 = &v93 - v33;
  v112 = type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
  MEMORY[0x1EEE9AC00](v112, v34);
  v117 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9F664(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v17);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v116 = &v93 - v38;
  v120 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v39 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v40);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v122 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v43);
  v47 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
    goto LABEL_31;
  }

  v118 = v42;
  v98 = v21;
  v93 = a2;
  *a3 = v48;
  if (qword_1EDCDF7A0 != -1)
  {
LABEL_32:
    v44 = swift_once();
  }

  v49 = *algn_1EDCF0308;
  v50 = MEMORY[0x1EEE9AC00](v44, v45);
  *(&v93 - 2) = a1;
  v110 = v49;
  v111 = v51;
  result = (v51)(sub_1C6B9F514, v50);
  v53 = *(a1 + 16);
  a1 = *(v53 + 16);
  v54 = v117;
  v55 = v116;
  v56 = v104;
  if (a1)
  {
    v97 = a10;
    v100 = a9;
    v39 += 6;
    v57 = v14;
    v14 += 6;
    v94 = (v57 + 4);
    v95 = (v57 + 1);
    v109 = v53;
    v108 = v39;
    v99 = a8;
    v123 = v47;
    do
    {
      if (a1 > *(v53 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      --a1;
      sub_1C6B9F51C(v53 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * a1, v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (*(*v124 + 16) >= v56)
      {
        result = sub_1C6B9F584(v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        break;
      }

      if (__OFADD__(*v121, 1))
      {
        goto LABEL_30;
      }

      ++*v121;
      sub_1C6B9F374(v47, v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((*v39)(v55, 1, v120) == 1)
      {
        sub_1C6B9F3F4(v55, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      }

      else
      {
        v58 = v56;
        v59 = v118;
        sub_1C6B9F6C8(v55, v118, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v60 = a8[7];
        v125[4] = a8[6];
        v125[5] = v60;
        v61 = a8[9];
        v125[6] = a8[8];
        v125[7] = v61;
        v62 = a8[3];
        v125[0] = a8[2];
        v125[1] = v62;
        v63 = a8[5];
        v125[2] = a8[4];
        v125[3] = v63;
        sub_1C6B9D638(v59, v125, v54);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v66 = *v54;
        v67 = *(v54 + 1);
        if (EnumCaseMultiPayload != 1)
        {
          sub_1C6B9F5EC(0);
          v70 = *(v69 + 48);
          v106 = *&v54[*(v69 + 64)];
          v71 = sub_1C6B9F6C8(&v54[v70], v119, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v73 = v123;
          if (v100)
          {
            v71 = v100(v123);
          }

          v74 = MEMORY[0x1EEE9AC00](v71, v72);
          v107 = *&v66;
          *(&v93 - 2) = v66;
          *(&v93 - 1) = v67;
          v111(sub_1C6B9F65C, v74);
          sub_1C6B9F51C(v119, v113, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v75 = *(v101 + 24);
          v76 = MEMORY[0x1E69AA900];
          v77 = v103;
          sub_1C6B9F374(&v73[v75], v103, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          v78 = *v14;
          v79 = (*v14)(v77, 1, v105);
          sub_1C6B9F3F4(v77, &qword_1EDCE66F0, v76);
          v80 = 0.0;
          if (v79 != 1)
          {
            v81 = v98;
            sub_1C6B9F374(&v123[v75], v98, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
            v82 = v105;
            if (v78(v81, 1, v105) == 1)
            {
              v83 = v96;
              sub_1C6D78990();
              if (v78(v81, 1, v82) != 1)
              {
                sub_1C6B9F3F4(v98, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
              }
            }

            else
            {
              v83 = v96;
              (*v94)(v96, v81, v82);
            }

            sub_1C6D78970();
            v85 = v84;
            (*v95)(v83, v82);
            v80 = v85;
          }

          a8 = v99;
          sub_1C6C758F0(v106, v107, v67, *v99, v113, *(v99 + 2), *(v99 + 3), v114, v80);
          v86 = v124;
          v87 = *v124;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v86 = v87;
          v53 = v109;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v87 = sub_1C6B65E2C(0, v87[2] + 1, 1, v87);
            *v124 = v87;
          }

          v56 = v104;
          v47 = v123;
          v90 = v87[2];
          v89 = v87[3];
          if (v90 >= v89 >> 1)
          {
            v92 = sub_1C6B65E2C((v89 > 1), v90 + 1, 1, v87);
            *v124 = v92;
          }

          sub_1C6B9F584(v119, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          sub_1C6B9F584(v118, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v91 = *v124;
          *(v91 + 16) = v90 + 1;
          sub_1C6B9F6C8(v114, v91 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v90, type metadata accessor for EventArticleFeatures);
          v54 = v117;
          v55 = v116;
          v39 = v108;
          goto LABEL_7;
        }

        v68 = MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v65);
        *(&v93 - 2) = v66;
        *(&v93 - 1) = v67;
        v111(sub_1C6B9F5E4, v68);

        v54 = v117;
        sub_1C6B9F584(v59, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v55 = v116;
        v56 = v58;
        v53 = v109;
        v39 = v108;
      }

      v47 = v123;
LABEL_7:
      result = sub_1C6B9F584(v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    }

    while (a1);
  }

  *v93 = *(*v124 + 16) >= v56;
  return result;
}

uint64_t sub_1C6B9D35C(void *a1)
{
  v2 = MEMORY[0x1E69AA900];
  sub_1C6B9F664(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v16 - v5;
  v7 = sub_1C6D789A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000013, 0x80000001C6D9C1A0);
  MEMORY[0x1CCA55B00](*a1, a1[1]);
  MEMORY[0x1CCA55B00](2108704, 0xE300000000000000);
  v12 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B9F374(a1 + *(v12 + 36), v6, &qword_1EDCE66F0, v2);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_1C6D78990();
    if (v13(v6, 1, v7) != 1)
    {
      sub_1C6B9F3F4(v6, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_1C6D79E60();
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1CCA55B00](0x206874697720, 0xE600000000000000);
  v16[1] = *(a1[2] + 16);
  v14 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v14);

  MEMORY[0x1CCA55B00](0x73746E65766520, 0xE700000000000000);
  return v17;
}

uint64_t sub_1C6B9D638@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v181 = a2;
  v176 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v176, v5);
  v180 = (&v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B9F664(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v171 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v170 = &v163 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v175 = &v163 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v169 = &v163 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v168 = &v163 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v174 = &v163 - v25;
  v26 = sub_1C6D78A00();
  v27 = *(v26 - 8);
  v177 = v26;
  v178 = v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v167 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v166 = &v163 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v173 = &v163 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v165 = &v163 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v164 = &v163 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v172 = &v163 - v44;
  v45 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v179 = (&v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v163 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9F664(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v7);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v163 - v54;
  v56 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v58);
  v60 = (&v163 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v55);
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {
    sub_1C6B9F3F4(v55, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    *a3 = -2.31584178e77;
    *(a3 + 1) = 0x80000001C6D9BD70;
  }

  else
  {
    sub_1C6B9F6C8(v55, v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B9F51C(a1, v51, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v62 = v60;
    v63 = v51;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v105 = v181[2];
        if (v105 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v106 < v105)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v102 = "Article Visited Event with probability ";
        goto LABEL_43;
      case 2u:
        v89 = v51;
        v90 = v180;
        sub_1C6B9F6C8(v89, v180, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        v91 = v181[4];
        if (v91 <= 0.0 || (v92 = v181[3], sub_1C6BFE0B4(0.0, 1.0), v93 >= v91))
        {
          v182 = 0;
          v183 = 0xE000000000000000;
          sub_1C6D79D50();
          MEMORY[0x1CCA55B00](0xD000000000000024, 0x80000001C6D9C080);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
          v122 = v182;
          v123 = v183;
          v124 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
          v125 = v90;
          goto LABEL_64;
        }

        v181 = v60;
        v94 = v175;
        v95 = *(v176 + 28);
        sub_1C6B9F374(v90 + v95, v175, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v97 = v177;
        v96 = v178;
        v98 = *(v178 + 48);
        if (v98(v94, 1, v177) == 1)
        {
          v99 = v173;
          sub_1C6D789F0();
          if (v98(v94, 1, v97) != 1)
          {
            sub_1C6B9F3F4(v94, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v99 = v173;
          (*(v96 + 32))(v173, v94, v97);
        }

        sub_1C6D789C0();
        v130 = v129;
        v179 = *(v96 + 8);
        v179(v99, v97);
        if (v92 > v130)
        {
          v182 = 0;
          v183 = 0xE000000000000000;
          sub_1C6D79D50();
          MEMORY[0x1CCA55B00](0xD000000000000021, 0x80000001C6D9C0B0);
          v131 = v171;
          sub_1C6B9F374(v180 + v95, v171, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          if (v98(v131, 1, v97) == 1)
          {
            v132 = v167;
            sub_1C6D789F0();
            if (v98(v131, 1, v97) != 1)
            {
              sub_1C6B9F3F4(v131, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v132 = v167;
            (*(v96 + 32))(v167, v131, v97);
          }

          sub_1C6D789C0();
          v179(v132, v97);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
          sub_1C6D79910();
          v122 = v182;
          v123 = v183;
          sub_1C6B9F584(v180, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
          v126 = v181;
          goto LABEL_65;
        }

        sub_1C6B9F5EC(0);
        v134 = v133;
        v135 = *(v133 + 48);
        *a3 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
        *(a3 + 1) = v136;
        sub_1C6B9F51C(v181, a3 + v135, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v137 = v170;
        sub_1C6B9F374(v180 + v95, v170, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        if (v98(v137, 1, v97) == 1)
        {
          v138 = v166;
          sub_1C6D789F0();
          if (v98(v137, 1, v97) != 1)
          {
            sub_1C6B9F3F4(v137, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v138 = v166;
          (*(v178 + 32))(v166, v137, v97);
        }

        v156 = *(v134 + 64);
        v157 = sub_1C6D789E0();
        v179(v138, v97);
        sub_1C6B9F584(v180, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        sub_1C6B9F584(v181, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        *(a3 + v156) = v157;
        type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
        return swift_storeEnumTagMultiPayload();
      case 3u:
        v103 = v181[5];
        if (v103 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v104 < v103)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v81 = "Article Shared Event with probability ";
        goto LABEL_53;
      case 4u:
        v84 = v181[6];
        if (v84 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v85 < v84)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v86 = "Article Liked Event with probability ";
        goto LABEL_67;
      case 5u:
        v112 = v181[7];
        if (v112 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v113 < v112)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v77 = "ent with probability ";
        v78 = 0xD000000000000028;
        goto LABEL_68;
      case 6u:
        v116 = v181[8];
        if (v116 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v117 < v116)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v86 = "Article Saved Event with probability ";
        goto LABEL_67;
      case 7u:
        v82 = 0x80000001C6D9BE50;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD000000000000018;
        goto LABEL_61;
      case 8u:
        v82 = 0x80000001C6D9BE30;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD00000000000001ALL;
        goto LABEL_61;
      case 9u:
        v82 = 0x80000001C6D9BE10;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD00000000000001BLL;
        goto LABEL_61;
      case 0xAu:
        v82 = 0x80000001C6D9BDF0;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD00000000000001DLL;
        goto LABEL_61;
      case 0xBu:
        v82 = 0x80000001C6D9BDD0;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD00000000000001CLL;
        goto LABEL_61;
      case 0xCu:
        v87 = v181[9];
        if (v87 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v88 < v87)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v86 = "Track Visited Event with probability ";
LABEL_67:
        v77 = (v86 - 32);
        v78 = 0xD000000000000025;
        goto LABEL_68;
      case 0xDu:
        v114 = v181[10];
        if (v114 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v115 < v114)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v81 = "Track Listened Event with probability ";
        goto LABEL_53;
      case 0xEu:
        v79 = v181[11];
        if (v79 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v80 < v79)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v81 = "Track Finished Event with probability ";
LABEL_53:
        v77 = (v81 - 32);
        v78 = 0xD000000000000026;
        goto LABEL_68;
      case 0xFu:
        v100 = v181[12];
        if (v100 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v101 < v100)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v102 = "Article Unliked Event with probability ";
        goto LABEL_43;
      case 0x10u:
        v75 = v181[13];
        if (v75 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v76 < v75)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v77 = "Event with probability ";
        v78 = 0xD00000000000002ALL;
        goto LABEL_68;
      case 0x11u:
        v107 = v181[14];
        if (v107 > 0.0)
        {
          sub_1C6BFE0B4(0.0, 1.0);
          if (v108 < v107)
          {
            goto LABEL_56;
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        v102 = "Article Unsaved Event with probability ";
LABEL_43:
        v109 = (v102 - 32) | 0x8000000000000000;
        v78 = 0xD000000000000027;
        goto LABEL_69;
      case 0x12u:
        v82 = 0x80000001C6D9BDB0;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD00000000000001ELL;
        goto LABEL_61;
      case 0x13u:
        v82 = 0x80000001C6D9BD90;
        sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v83 = 0xD000000000000019;
LABEL_61:
        *a3 = v83;
        *(a3 + 1) = v82;
        goto LABEL_70;
      case 0x14u:
        v110 = v181[15];
        if (v110 > 0.0 && (sub_1C6BFE0B4(0.0, 1.0), v111 < v110))
        {
LABEL_56:
          sub_1C6B9F5EC(0);
          v119 = *(v118 + 48);
          v120 = *(v118 + 64);
          *a3 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
          *(a3 + 1) = v121;
          sub_1C6B9F6C8(v60, a3 + v119, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          *(a3 + v120) = 0.0;
          type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
        }

        else
        {
          v182 = 0;
          v183 = 0xE000000000000000;
          sub_1C6D79D50();
          v77 = "Skipping Tag Muted event";
          v78 = 0xD00000000000002BLL;
LABEL_68:
          v109 = v77 | 0x8000000000000000;
LABEL_69:
          MEMORY[0x1CCA55B00](v78, v109);
          sub_1C6D79910();
          MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
          v127 = v182;
          v128 = v183;
          sub_1C6B9F584(v60, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          *a3 = v127;
          *(a3 + 1) = v128;
LABEL_70:
          type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
        }

        swift_storeEnumTagMultiPayload();
        return sub_1C6B9F584(v63, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      default:
        v64 = v179;
        sub_1C6B9F6C8(v51, v179, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v65 = v181[1];
        v66 = v178;
        if (v65 > 0.0)
        {
          v67 = *v181;
          sub_1C6BFE0B4(0.0, 1.0);
          if (v68 < v65)
          {
            v69 = *(v45 + 24);
            v70 = v174;
            sub_1C6B9F374(v64 + v69, v174, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            v71 = *(v66 + 48);
            v72 = v177;
            v73 = v71(v70, 1, v177);
            v181 = a3;
            if (v73 == 1)
            {
              v74 = v172;
              sub_1C6D789F0();
              if (v71(v70, 1, v72) != 1)
              {
                sub_1C6B9F3F4(v70, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
              }
            }

            else
            {
              v74 = v172;
              (*(v66 + 32))(v172, v70, v72);
            }

            sub_1C6D789C0();
            v140 = v139;
            v141 = *(v66 + 8);
            v141(v74, v72);
            if (v67 <= v140)
            {
              v180 = v141;
              sub_1C6B9F5EC(0);
              v145 = v144;
              v146 = v62;
              v147 = *(v144 + 48);
              v148 = Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
              v149 = v181;
              *v181 = v148;
              *(v149 + 1) = v150;
              sub_1C6B9F51C(v146, v149 + v147, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v151 = v168;
              sub_1C6B9F374(v179 + v69, v168, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
              v152 = v72;
              if (v71(v151, 1, v72) == 1)
              {
                v153 = v164;
                sub_1C6D789F0();
                v154 = v71(v151, 1, v72);
                v155 = v180;
                if (v154 != 1)
                {
                  sub_1C6B9F3F4(v151, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
                }
              }

              else
              {
                v153 = v164;
                (*(v178 + 32))(v164, v151, v72);
                v155 = v180;
              }

              v161 = *(v145 + 64);
              v162 = sub_1C6D789E0();
              v155(v153, v152);
              sub_1C6B9F584(v179, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              sub_1C6B9F584(v146, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              *(v181 + v161) = v162;
              type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
            }

            else
            {
              v182 = 0;
              v183 = 0xE000000000000000;
              sub_1C6D79D50();
              MEMORY[0x1CCA55B00](0xD000000000000021, 0x80000001C6D9C170);
              v142 = v169;
              sub_1C6B9F374(v179 + v69, v169, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
              if (v71(v142, 1, v72) == 1)
              {
                v143 = v165;
                sub_1C6D789F0();
                if (v71(v142, 1, v72) != 1)
                {
                  sub_1C6B9F3F4(v142, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
                }
              }

              else
              {
                v143 = v165;
                (*(v178 + 32))(v165, v142, v72);
              }

              sub_1C6D789C0();
              v141(v143, v72);
              sub_1C6D79910();
              MEMORY[0x1CCA55B00](0xD000000000000027, 0x80000001C6D9C0E0);
              sub_1C6D79910();
              v158 = v182;
              v159 = v183;
              sub_1C6B9F584(v179, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
              sub_1C6B9F584(v62, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
              v160 = v181;
              *v181 = v158;
              *(v160 + 1) = v159;
              type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
            }

            return swift_storeEnumTagMultiPayload();
          }
        }

        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1C6D79D50();
        MEMORY[0x1CCA55B00](0xD000000000000024, 0x80000001C6D9C140);
        sub_1C6D79910();
        MEMORY[0x1CCA55B00](0x74617320746F6E20, 0xEE00646569667369);
        v122 = v182;
        v123 = v183;
        v124 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        v125 = v64;
LABEL_64:
        sub_1C6B9F584(v125, v124);
        v126 = v60;
LABEL_65:
        sub_1C6B9F584(v126, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        *a3 = v122;
        *(a3 + 1) = v123;
        break;
    }
  }

  type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C6B9ECFC(uint64_t a1, uint64_t a2)
{
  sub_1C6D79D50();

  MEMORY[0x1CCA55B00](a1, a2);
  return 0xD000000000000010;
}

unint64_t sub_1C6B9ED7C(uint64_t a1, uint64_t a2)
{
  sub_1C6D79D50();

  MEMORY[0x1CCA55B00](a1, a2);
  return 0xD000000000000017;
}

void sub_1C6B9EDFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v27 = a2;
    *&v28 = MEMORY[0x1E69E7CC0];
    sub_1C6B393F4(0, v9, 0);
    v10 = v28;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1C6B9F51C(v11, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v13 = *v8;
      v14 = v8[1];
      sub_1C6B1CD10(*v8, v14);
      sub_1C6B9F584(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      *&v28 = v10;
      v16 = v10[2];
      v15 = v10[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_1C6B393F4((v15 > 1), v16 + 1, 1);
        v10 = v28;
      }

      v10[2] = v17;
      v18 = &v10[2 * v16];
      v18[4] = v13;
      v18[5] = v14;
      v11 += v12;
      --v9;
    }

    while (v9);
    v28 = xmmword_1C6D7F510;
    a2 = v27;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    v28 = xmmword_1C6D7F510;
    if (!v17)
    {
LABEL_11:

      v23 = *(&v28 + 1);
      *a2 = v28;
      a2[1] = v23;
      v24 = *MEMORY[0x1E6996120];
      v25 = sub_1C6D78760();
      (*(*(v25 - 8) + 104))(a2, v24, v25);
      return;
    }
  }

  v19 = 0;
  v20 = v10 + 5;
  while (v19 < v10[2])
  {
    ++v19;
    v22 = *(v20 - 1);
    v21 = *v20;
    sub_1C6B1CD10(v22, *v20);
    sub_1C6D75E80();
    sub_1C6B1C9F0(v22, v21);
    v20 += 2;
    if (v17 == v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t ArticleUserEventHistoryFeaturesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B9F0CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_2, a2, a4);
  sub_1C6B16F28(v13, a3 + 16);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  LOBYTE(v10) = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  *(a3 + 56) = v10 & 1;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return a3;
}

uint64_t sub_1C6B9F1A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_1C6B9F0CC(a1, v11, v12, a4, a5);
}

void sub_1C6B9F304(uint64_t a1)
{
  if (!qword_1EDCEA340)
  {
    sub_1C6D783E0();
    sub_1C6D78760();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA340);
    }
  }
}

uint64_t sub_1C6B9F374(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B9F664(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B9F3F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B9F664(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6B9F480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ArticleUserEventHistoryFeaturesFactory.Validation(uint64_t a1)
{
  result = qword_1EDCE0120;
  if (!qword_1EDCE0120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B9F51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B9F584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6B9F5EC(uint64_t a1)
{
  if (!qword_1EDCDFB20)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticle(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDCDFB20);
    }
  }
}

void sub_1C6B9F664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B9F6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1C6B9F730@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  v4 = [a1 articleSeenConditions];
  [v4 duration];
  v52 = v5;

  v6 = [a1 articleSeenConditions];
  [v6 probability];
  v51 = v7;

  v8 = [a1 articleVisitedConditions];
  [v8 probability];
  v50 = v9;

  v10 = [a1 articleReadConditions];
  [v10 duration];
  v49 = v11;

  v12 = [a1 articleReadConditions];
  [v12 probability];
  v48 = v13;

  v14 = [a1 articleSharedConditions];
  [v14 probability];
  v47 = v15;

  v16 = [a1 articleLikedConditions];
  [v16 probability];
  v46 = v17;

  v18 = [a1 articleDislikedConditions];
  [v18 probability];
  v45 = v19;

  v20 = [a1 articleSavedConditions];
  [v20 probability];
  v22 = v21;

  v23 = [a1 trackVisitedConditions];
  [v23 probability];
  v25 = v24;

  v26 = [a1 trackListenedConditions];
  [v26 probability];
  v28 = v27;

  v29 = [a1 trackFinishedConditions];
  [v29 probability];
  v31 = v30;

  v32 = [a1 articleUnlikedConditions];
  [v32 probability];
  v34 = v33;

  v35 = [a1 articleUndislikedConditions];
  [v35 probability];
  v37 = v36;

  v38 = [a1 articleUnsavedConditions];
  [v38 probability];
  v40 = v39;

  v41 = [a1 notificationVendedConditions];
  [v41 probability];
  v43 = v42;

  *a2 = v52;
  *(a2 + 1) = v51;
  *(a2 + 2) = v50;
  *(a2 + 3) = v49;
  *(a2 + 4) = v48;
  *(a2 + 5) = v47;
  result = v45;
  *(a2 + 6) = v46;
  a2[7] = v45;
  *(a2 + 8) = v22;
  *(a2 + 9) = v25;
  *(a2 + 10) = v28;
  *(a2 + 11) = v31;
  *(a2 + 12) = v34;
  *(a2 + 13) = v37;
  *(a2 + 14) = v40;
  *(a2 + 15) = v43;
  return result;
}

void sub_1C6B9FA7C(uint64_t a1)
{
  sub_1C6B9F5EC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

char *NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:)(void *a1, double a2, double a3)
{
  [a1 clicks];
  if (v5 > 0.0 || (result = [a1 impressions], v7 > 0.0))
  {
    [v3 impressions];
    [a1 impressions];
    [a1 impressions];
    sub_1C6D798D0();
    v9 = v8;
    [v3 clicks];
    [a1 clicks];
    [a1 impressions];
    sub_1C6D798D0();
    [v3 setClicks_];
    [v3 setImpressions_];
    result = [v3 eventCount];
    if (result == -1)
    {
      __break(1u);
    }

    else
    {

      return [v3 setEventCount_];
    }
  }

  return result;
}

id NTPBPersonalizationAggregate.apply(aggregateModification:decayRate:bias:baseline:topicConfiguration:)(void *a1, void *a2, void *a3, double a4, double a5)
{
  v6 = v5;
  v9 = a1;
  [a1 clicks];
  if (v10 > 0.0 || (result = [v9 impressions], v12 > 0.0))
  {
    [v6 impressions];
    [v9 impressions];
    [v9 impressions];
    sub_1C6D798D0();
    v14 = v13;
    [v6 clicks];
    [v9 clicks];
    [v9 impressions];
    sub_1C6D798D0();
    v16 = v15;
    if (!a3)
    {
      goto LABEL_18;
    }

    v9 = a3;
    if (![v9 capAtBaseline])
    {

      goto LABEL_18;
    }

    if (qword_1EDCE7498 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v30 = qword_1EDCE74A0;
      v17 = sub_1C6D79A90();
      sub_1C6B1D314(0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C6D7E630;
      v19 = [v6 featureKey];
      if (v19)
      {
        v20 = v19;
        sub_1C6D795A0();
      }

      sub_1C6B95D68();
      v21 = sub_1C6D795F0();
      MEMORY[0x1CCA55B00](v21);

      v22 = MEMORY[0x1E69E6158];
      *(v18 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1C6B2064C();
      *(v18 + 64) = v23;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0xE000000000000000;
      sub_1C6D78D30("Found capAtBaseline set for aggregate %{public}@", 48, 2, &dword_1C6B09000, v30, v17, v18);

      v24 = 0.0;
      if (v14 > 0.0)
      {
        v25 = v16 / v14;
        if (v16 / v14 <= 0.0)
        {
          v25 = 0.0;
        }

        v24 = 1.0;
        if (v25 <= 1.0)
        {
          v24 = v25;
        }
      }

      [a2 ctr];
      if (v26 >= v24)
      {
        a2 = sub_1C6D79A90();
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1C6D807C0;
        sub_1C6D79910();
        *(v28 + 56) = v22;
        *(v28 + 64) = v23;
        *(v28 + 32) = 0;
        *(v28 + 40) = 0xE000000000000000;
        sub_1C6D79910();
        *(v28 + 96) = v22;
        *(v28 + 104) = v23;
        *(v28 + 72) = 0;
        *(v28 + 80) = 0xE000000000000000;
        sub_1C6D79910();
        *(v28 + 136) = v22;
        *(v28 + 144) = v23;
        *(v28 + 112) = 0;
        *(v28 + 120) = 0xE000000000000000;
        sub_1C6D78D30("Found aggregateCTR %{public}@ did not exceeded baseline CTR %{public}@, leaving aggregate uncapped with new clicks %{public}@", 125, 2, &dword_1C6B09000, v30, a2, v28);
      }

      else
      {
        v16 = v14 * v26;
        a2 = sub_1C6D79A90();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1C6D807C0;
        sub_1C6D79910();
        *(v27 + 56) = v22;
        *(v27 + 64) = v23;
        *(v27 + 32) = 0;
        *(v27 + 40) = 0xE000000000000000;
        sub_1C6D79910();
        *(v27 + 96) = v22;
        *(v27 + 104) = v23;
        *(v27 + 72) = 0;
        *(v27 + 80) = 0xE000000000000000;
        sub_1C6D79910();
        *(v27 + 136) = v22;
        *(v27 + 144) = v23;
        *(v27 + 112) = 0;
        *(v27 + 120) = 0xE000000000000000;
        sub_1C6D78D30("Found aggregateCTR %{public}@ exceeded baseline CTR %{public}@, capping aggregate with new clicks %{public}@", 108, 2, &dword_1C6B09000, v30, a2, v27);
      }

LABEL_18:
      [v6 setClicks_];
      [v6 setImpressions_];
      v29 = [v6 eventCount];
      if (v29 != -1)
      {
        break;
      }

      __break(1u);
LABEL_22:
      swift_once();
    }

    return [v6 setEventCount_];
  }

  return result;
}

void sub_1C6BA012C(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v42[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1C6D79470();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D75B30();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1C6D79460();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1C864(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v13 dictionary];
  sub_1C6D79490();

  v15 = sub_1C6D79480();

  v42[0] = 0;
  v16 = [v12 dataWithJSONObject:v15 options:2 error:v42];

  v17 = v42[0];
  if (!v16)
  {
    v25 = v17;
    sub_1C6D75CC0();

    swift_willThrow();
    goto LABEL_5;
  }

  v18 = sub_1C6D75E60();
  v20 = v19;

  sub_1C6D75B70();
  swift_allocObject();
  sub_1C6D75B60();
  sub_1C6D75B20();
  sub_1C6D75B40();
  v42[0] = v18;
  v42[1] = v20;
  sub_1C6B1CCBC();
  v21 = v41;
  v22 = sub_1C6D75B50();
  v24 = v23;

  if (v21)
  {
    sub_1C6B1C9F0(v18, v20);
LABEL_5:

    return;
  }

  sub_1C6B1C9F0(v18, v20);

  v41 = sub_1C6BA0CEC(&qword_1EDCE66A8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v26 = v37;
  v27 = v39;
  sub_1C6D79450();
  sub_1C6B1CD10(v22, v24);
  sub_1C6B1CD64(v22, v24, v26);
  sub_1C6B1C9F0(v22, v24);
  v28 = v34;
  sub_1C6D79440();
  sub_1C6B1C9F0(v22, v24);
  (*(v38 + 8))(v26, v27);
  v29 = sub_1C6B1D0FC();
  v31 = v30;
  (*(v35 + 8))(v28, v36);
  v32 = v40;
  *v40 = v29;
  v32[1] = v31;
  v32[2] = v11;
  v32[3] = v13;
}

uint64_t ComputeServiceConfiguration.version.getter()
{
  v1 = [*(v0 + 24) version];
  v2 = sub_1C6D795A0();

  return v2;
}

uint64_t ComputeServiceConfiguration.humanReadableIdentifier.getter()
{
  v1 = [*(v0 + 24) version];
  v2 = sub_1C6D795A0();

  return v2;
}

uint64_t ComputeServiceConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ComputeServiceConfiguration.packageIDs.getter()
{
  v1 = [*(v0 + 24) packageAssetIDs];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C6D79780();

  return v3;
}

uint64_t ComputeServiceConfiguration.computeUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 24) mlComputeUnits];
  v4 = sub_1C6D78420();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x1E69960A0];
  }

  else
  {
    v6 = qword_1E8296F00[(v3 - 1)];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

id ComputeServiceConfiguration.graphUnloadIdleDuration.getter()
{
  v1 = [*(v0 + 24) unloadGraphOnBackgroundConfiguration];
  v2 = [v1 graphIdleDuration];

  return v2;
}

double ComputeServiceConfiguration.init(with:)@<D0>(uint64_t a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69B53E8]);
  v5 = sub_1C6D79480();

  v6 = [v4 initWithDictionary_];

  sub_1C6BA012C(v6, &v9);
  if (!v2)
  {
    v8 = v11;
    *a2 = v9;
    result = *&v10;
    *(a2 + 8) = v10;
    *(a2 + 24) = v8;
  }

  return result;
}

id ComputeServiceConfiguration.isIdentical(to:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = [*(v1 + 24) dictionary];
  if (result)
  {
    v4 = result;
    v5 = [v2 dictionary];
    sub_1C6D79490();

    v6 = sub_1C6D79480();

    v7 = [v4 isEqualToDictionary_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6BA0958()
{
  v1 = [*(v0 + 24) packageAssetIDs];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C6D79780();

  return v3;
}

uint64_t sub_1C6BA09B8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 24) mlComputeUnits];
  v4 = sub_1C6D78420();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x1E69960A0];
  }

  else
  {
    v6 = qword_1E8296F00[(v3 - 1)];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1C6BA0A5C()
{
  v1 = [*(v0 + 24) version];
  v2 = sub_1C6D795A0();

  return v2;
}

uint64_t sub_1C6BA0AB4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Digest.hex.getter(uint64_t a1, uint64_t a2)
{
  sub_1C6D796D0();
  sub_1C6BA0C44(0, &qword_1EDCE7F50, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1C6B1D900();
  return sub_1C6D79660();
}

uint64_t sub_1C6BA0B6C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1C6B1D314(0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7508];
  *(v4 + 16) = xmmword_1C6D7E630;
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_1C6D795C0();
  *a2 = result;
  a2[1] = v8;
  return result;
}

unint64_t sub_1C6BA0BF0()
{
  result = qword_1EC1D71B8;
  if (!qword_1EC1D71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D71B8);
  }

  return result;
}

void sub_1C6BA0C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C6BA0C98()
{
  result = qword_1EDCE8F68;
  if (!qword_1EDCE8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE8F68);
  }

  return result;
}

uint64_t sub_1C6BA0CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C6BA0D60()
{
  result = qword_1EC1D71C0;
  if (!qword_1EC1D71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D71C0);
  }

  return result;
}

void sub_1C6BA0DB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v114 = a3;
  v118 = a2;
  v106 = sub_1C6D76950();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v9);
  v105 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C6D768B0();
  v115 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v11);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D775C0();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v116 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v117 = &v100 - v18;
  v112 = sub_1C6D77C10();
  v120 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v19);
  v113 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v100 - v23;
  v119 = sub_1C6D77880();
  v109 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v25);
  v125 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA1AC0(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C6D77290();
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  (*(v37 + 16))(&v100 - v36, a1, v33, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = sub_1C6D76F90();
    (*(*(v43 - 8) + 56))(a6, 1, 1, v43);
    return;
  }

  v103 = a6;
  (*(v29 + 8))(v32, v28);
  v38 = sub_1C6D77270();
  v39 = sub_1C6D77330();
  v41 = v40;

  if (v6)
  {
    return;
  }

  sub_1C6BA1B54(&qword_1EC1D6A30, MEMORY[0x1E69B47B0], MEMORY[0x1E69B47C0]);
  v42 = v119;
  sub_1C6D75AF0();
  v118 = 0;
  v101 = v39;
  sub_1C6D77840();
  sub_1C6D77BF0();
  v44 = *(v120 + 8);
  v45 = v112;
  v120 += 8;
  v102 = v44;
  v44(v24, v112);
  v47 = v107;
  v46 = v108;
  (*(v107 + 104))(v116, *MEMORY[0x1E69B4640], v108);
  sub_1C6BA1B54(&qword_1EC1D71C8, MEMORY[0x1E69B4648], MEMORY[0x1E69B4650]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v123 == v121 && v124 == v122)
  {
    v48 = *(v47 + 8);
    v48(v116, v46);
    v48(v117, v46);

    v49 = v113;
  }

  else
  {
    v50 = sub_1C6D7A130();
    v51 = *(v47 + 8);
    v51(v116, v46);
    v51(v117, v46);

    v52 = v103;
    v49 = v113;
    if ((v50 & 1) == 0)
    {
      (*(v109 + 8))(v125, v42);
      sub_1C6B1C9F0(v101, v41);
      v84 = sub_1C6D76F90();
      (*(*(v84 - 8) + 56))(v52, 1, 1, v84);
      return;
    }
  }

  v117 = v41;
  v53 = v125;
  sub_1C6D77840();
  v54 = sub_1C6D77C00();
  v102(v49, v45);
  v55 = v110;
  sub_1C6D76A00();
  v56 = sub_1C6D768A0();
  v57 = v55;
  v58 = *(v115 + 8);
  v115 += 8;
  v58(v57, v111);
  if (v56 >= v54)
  {
    if (qword_1EDCE03B8 != -1)
    {
      swift_once();
    }

    v70 = qword_1EDCE03C0;
    sub_1C6B1D314(0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1C6D7EB10;
    v72 = v113;
    sub_1C6D77840();
    v73 = sub_1C6D77C00();
    v102(v72, v45);
    v123 = v73;
    v74 = sub_1C6D7A0E0();
    v76 = v75;
    v77 = MEMORY[0x1E69E6158];
    *(v71 + 56) = MEMORY[0x1E69E6158];
    v78 = sub_1C6B2064C();
    *(v71 + 64) = v78;
    *(v71 + 32) = v74;
    *(v71 + 40) = v76;
    v79 = v110;
    sub_1C6D76A00();
    v80 = sub_1C6D768A0();
    v58(v79, v111);
    v123 = v80;
    v81 = sub_1C6D7A0E0();
    *(v71 + 96) = v77;
    *(v71 + 104) = v78;
    *(v71 + 72) = v81;
    *(v71 + 80) = v82;
    v83 = sub_1C6D79AC0();
    sub_1C6D78D30("AudioEngageEvent seen, but failed track visited duration requirement to become trackListened action. See time played as %{public}@ but required %{public}@", 154, 2, &dword_1C6B09000, v70, v83, v71);
    sub_1C6B1C9F0(v101, v117);

    (*(v109 + 8))(v53, v119);
  }

  else
  {
    sub_1C6D77840();
    v59 = sub_1C6D77C00();
    v60 = v102;
    v102(v49, v45);
    v61 = v105;
    sub_1C6D76A20();
    v62 = sub_1C6D768A0();
    v63 = *(v104 + 8);
    v63(v61, v106);
    if (v59 < v62)
    {
      v64 = v103;
      v103[3] = v42;
      v65 = MEMORY[0x1E69B47B0];
      v64[4] = sub_1C6BA1B54(&qword_1EC1D71D0, MEMORY[0x1E69B47B0], &protocol conformance descriptor for AudioEngageEvent.Model);
      v64[5] = sub_1C6BA1B54(&qword_1EC1D71D8, v65, &protocol conformance descriptor for AudioEngageEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v64);
      (*(v109 + 32))(boxed_opaque_existential_2, v53, v42);
      sub_1C6B1C9F0(v101, v117);
      v67 = *MEMORY[0x1E69E3608];
      v68 = sub_1C6D76F90();
      v69 = *(v68 - 8);
      (*(v69 + 104))(v64, v67, v68);
      (*(v69 + 56))(v64, 0, 1, v68);
      return;
    }

    v85 = v117;
    if (qword_1EDCE03B8 != -1)
    {
      swift_once();
    }

    v116 = qword_1EDCE03C0;
    sub_1C6B1D314(0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1C6D7EB10;
    v87 = v113;
    sub_1C6D77840();
    v88 = sub_1C6D77C00();
    v60(v87, v112);
    v123 = v88;
    v89 = sub_1C6D7A0E0();
    v91 = v90;
    v92 = MEMORY[0x1E69E6158];
    *(v86 + 56) = MEMORY[0x1E69E6158];
    v93 = sub_1C6B2064C();
    *(v86 + 64) = v93;
    *(v86 + 32) = v89;
    *(v86 + 40) = v91;
    v94 = v105;
    sub_1C6D76A20();
    v95 = sub_1C6D768A0();
    v63(v94, v106);
    v123 = v95;
    v96 = sub_1C6D7A0E0();
    *(v86 + 96) = v92;
    *(v86 + 104) = v93;
    *(v86 + 72) = v96;
    *(v86 + 80) = v97;
    v98 = sub_1C6D79AC0();
    sub_1C6D78D30("AudioEngageEvent seen, but exceeded track listened duration requirement to become trackListened action. See time played as %{public}@ but required %{public}@", 157, 2, &dword_1C6B09000, v116, v98, v86);
    sub_1C6B1C9F0(v101, v85);

    (*(v109 + 8))(v53, v119);
  }

  v99 = sub_1C6D76F90();
  (*(*(v99 - 8) + 56))(v103, 1, 1, v99);
}

void sub_1C6BA1AC0(uint64_t a1)
{
  if (!qword_1EDCE6098)
  {
    sub_1C6D77890();
    sub_1C6BA1B54(&qword_1EDCE5F40, MEMORY[0x1E69B47C8], MEMORY[0x1E69B4798]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6098);
    }
  }
}

uint64_t sub_1C6BA1B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(uint64_t a1)
{
  result = qword_1EDCE4E60;
  if (!qword_1EDCE4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BA1E08()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D71E0);
  __swift_project_value_buffer(v0, qword_1EC1D71E0);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "tag_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagIgnore._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5970 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D71E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagIgnore.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  sub_1C6D78A40();
  sub_1C6BA26AC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagIgnore.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
  sub_1C6BA26AC(&qword_1EC1D71F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA229C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA26AC(&qword_1EC1D7218, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA2318@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5970 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D71E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA23C0(uint64_t a1)
{
  v2 = sub_1C6BA26AC(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA242C(uint64_t a1, uint64_t a2)
{
  sub_1C6BA26AC(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);

  return sub_1C6D78C20();
}

uint64_t sub_1C6BA25C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6BA26AC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6BA26AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 24);
  sub_1C6BA28D4(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(uint64_t a1)
{
  result = qword_1EDCE3B00;
  if (!qword_1EDCE3B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.recipe.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 20);
  sub_1C6BA28D4(v1 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6BA28D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BA57E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BA2944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.recipe.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(v1 + *(v7 + 20), v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BA2944(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BA28D4(v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA2B68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(a1 + *(v8 + 20), v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BA2944(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA2D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA31F8(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 20);
  sub_1C6BA28D4(a2 + v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    sub_1C6D78A30();
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    }
  }

  else
  {
    sub_1C6BA2944(v9, v15);
  }

  return sub_1C6BA30C8;
}

void sub_1C6BA30C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6BA31F8((*a1)[5], v4);
    sub_1C6BA28D4(v9 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    sub_1C6BA2944(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6BA325C(v5);
  }

  else
  {
    sub_1C6BA28D4(v9 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    sub_1C6BA2944(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6BA31F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BA325C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.hasRecipe.getter()
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(v0 + *(v5 + 20), v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BA28D4(v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.clearRecipe()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 20);
  sub_1C6BA28D4(v0 + v1, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA35FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BA57E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BA367C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BA28D4(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA3814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 24);
  sub_1C6BA28D4(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BA3B9C;
}

void sub_1C6BA3B9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BA28D4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BA28D4(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BA28D4(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0) + 24);
  sub_1C6BA28D4(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BA40A4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7220);
  __swift_project_value_buffer(v0, qword_1EC1D7220);
  sub_1C6BA57E8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "recipe";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5978 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7220);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BA43C0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6BA4474(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6BA43C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6BA57A0(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BA4474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6D78A00();
  sub_1C6BA57A0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BA4598(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BA47BC(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BA4598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(a1 + *(v14 + 20), v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BA28D4(v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  sub_1C6BA2944(v8, v13);
  sub_1C6BA57A0(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D78CF0();
  return sub_1C6BA325C(v13);
}

uint64_t sub_1C6BA47BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA35FC(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BA57A0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  sub_1C6BA57A0(&qword_1EC1D7238, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA4A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BA4BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA57A0(&qword_1EC1D7250, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA4C20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5978 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7220);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA4CC8(uint64_t a1)
{
  v2 = sub_1C6BA57A0(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA4D34(uint64_t a1, uint64_t a2)
{
  sub_1C6BA57A0(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B33_RecipeSessionEventCookModeViewedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v53 = &v52 - v9;
  sub_1C6BA56CC(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v52 - v20;
  sub_1C6BA56CC(0, &qword_1EC1D7258, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6BA35FC(v59 + v28, v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BA35FC(v30, &v26[v29], qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BA35FC(v26, v21, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6BA2944(&v26[v29], v17);
      v37 = static Com_Apple_News_Personalization_SessionRecipe.== infix(_:_:)(v21, v17);
      sub_1C6BA325C(v17);
      sub_1C6BA325C(v21);
      sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6BA325C(v21);
LABEL_6:
    v33 = &qword_1EC1D7258;
    v34 = qword_1EDCE5428;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe;
    v36 = v26;
LABEL_14:
    sub_1C6BA5744(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6BA35FC(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6BA35FC(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BA57A0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6BA35FC(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6BA57A0(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6BA55D0(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6BA57E8(319, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6BA57E8(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6BA56CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BA57E8(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BA5744(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BA56CC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BA57A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BA57E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.recipe.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  sub_1C6BA592C(v1 + v3);
  sub_1C6BA2944(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(uint64_t a1)
{
  result = qword_1EDCE2A40;
  if (!qword_1EDCE2A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BA592C(uint64_t a1)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.recipe.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  sub_1C6BA5B4C(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BA2944(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BA592C(v6);
  }

  return result;
}

uint64_t sub_1C6BA5B4C(uint64_t a1, uint64_t a2)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BA5BE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  sub_1C6BA5B4C(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BA2944(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA592C(v7);
  }

  return result;
}

uint64_t sub_1C6BA5D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA31F8(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  sub_1C6BA592C(a2 + v9);
  sub_1C6BA2944(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6BA5B4C(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    sub_1C6D78A30();
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA592C(v9);
    }
  }

  else
  {
    sub_1C6BA2944(v9, v15);
  }

  return sub_1C6BA60C0;
}

void sub_1C6BA60C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6BA31F8((*a1)[5], v4);
    sub_1C6BA592C(v9 + v3);
    sub_1C6BA2944(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6BA61CC(v5, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  else
  {
    sub_1C6BA592C(v9 + v3);
    sub_1C6BA2944(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6BA61CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.hasRecipe.getter()
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  sub_1C6BA5B4C(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BA592C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.clearRecipe()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  sub_1C6BA592C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C6BA6528()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7260);
  __swift_project_value_buffer(v0, qword_1EC1D7260);
  sub_1C6BA7420(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "recipe";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5980 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BA67C8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6BA67C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6BA73D8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BA68D4(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BA68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  sub_1C6BA5B4C(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BA592C(v8);
  }

  sub_1C6BA2944(v8, v13);
  sub_1C6BA73D8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D78CF0();
  return sub_1C6BA61CC(v13, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  sub_1C6BA73D8(&qword_1EC1D7278, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA6B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6BA6C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA73D8(&qword_1EC1D7290, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA6CA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5980 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA6D50(uint64_t a1)
{
  v2 = sub_1C6BA73D8(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA6DBC(uint64_t a1, uint64_t a2)
{
  sub_1C6BA73D8(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE5SavedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6BA7344(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6BA5B4C(a1 + v18, v17);
  sub_1C6BA5B4C(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6BA592C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6BA73D8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6BA5B4C(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6BA61CC(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
LABEL_6:
    sub_1C6BA61CC(v17, sub_1C6BA7344);
    goto LABEL_7;
  }

  sub_1C6BA2944(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionRecipe.== infix(_:_:)(v12, v8);
  sub_1C6BA61CC(v8, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA61CC(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA592C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6BA7290(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6BA7420(319, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6BA7344(uint64_t a1)
{
  if (!qword_1EC1D7258)
  {
    sub_1C6BA7420(255, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7258);
    }
  }
}

uint64_t sub_1C6BA73D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BA7420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 24);
  sub_1C6BA28D4(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(uint64_t a1)
{
  result = qword_1EDCE29B0;
  if (!qword_1EDCE29B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.recipe.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 20);
  sub_1C6BA28D4(v1 + v3, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.recipe.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(v1 + *(v7 + 20), v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BA2944(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BA28D4(v6, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA7824@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(a1 + *(v8 + 20), v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BA2944(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  return result;
}

uint64_t sub_1C6BA79E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA31F8(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 20);
  sub_1C6BA28D4(a2 + v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6BA2944(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    sub_1C6D78A30();
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    }
  }

  else
  {
    sub_1C6BA2944(v9, v15);
  }

  return sub_1C6BA30C8;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.hasRecipe.getter()
{
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(v0 + *(v5 + 20), v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BA28D4(v4, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.clearRecipe()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 20);
  sub_1C6BA28D4(v0 + v1, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(v1 + *(v8 + 24), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BA28D4(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA80C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(a1 + *(v9 + 24), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BA28D4(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6BA8260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 24);
  sub_1C6BA28D4(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6BA35FC(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BA3B9C;
}

BOOL Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(v0 + *(v6 + 24), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BA28D4(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0) + 24);
  sub_1C6BA28D4(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BA8970()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7298);
  __swift_project_value_buffer(v0, qword_1EC1D7298);
  sub_1C6BA57E8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "recipe";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5988 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BA8C8C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6BA8D40(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6BA8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  sub_1C6BA9DD8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BA8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6D78A00();
  sub_1C6BA9DD8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BA8E64(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BA9088(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BA8E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(a1 + *(v14 + 20), v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BA28D4(v8, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  }

  sub_1C6BA2944(v8, v13);
  sub_1C6BA9DD8(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D78CF0();
  return sub_1C6BA325C(v13);
}

uint64_t sub_1C6BA9088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA35FC(a1 + *(v15 + 24), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BA28D4(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BA9DD8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  sub_1C6BA9DD8(&qword_1EC1D72B0, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BA93AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BA9DD8(&qword_1EC1D72C8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BA9428@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5988 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BA94D0(uint64_t a1)
{
  v2 = sub_1C6BA9DD8(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BA953C(uint64_t a1, uint64_t a2)
{
  sub_1C6BA9DD8(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_b19_RecipeSessionEventE6ViewedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_1C6D78A00();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69AAB70];
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v53 = &v52 - v9;
  sub_1C6BA56CC(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v5);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v52 - v12;
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v52 - v20;
  sub_1C6BA56CC(0, &qword_1EC1D7258, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v52 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  sub_1C6BA35FC(v59 + v28, v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6BA35FC(v30, &v26[v29], qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BA35FC(v26, v21, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      sub_1C6BA2944(&v26[v29], v17);
      v37 = static Com_Apple_News_Personalization_SessionRecipe.== infix(_:_:)(v21, v17);
      sub_1C6BA325C(v17);
      sub_1C6BA325C(v21);
      sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C6BA325C(v21);
LABEL_6:
    v33 = &qword_1EC1D7258;
    v34 = qword_1EDCE5428;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe;
    v36 = v26;
LABEL_14:
    sub_1C6BA5744(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BA28D4(v26, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
LABEL_8:
  v38 = *(v27 + 24);
  v39 = v55;
  v40 = *(v54 + 48);
  v41 = MEMORY[0x1E69AAB70];
  sub_1C6BA35FC(v59 + v38, v55, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6BA35FC(v31 + v38, v39 + v40, &qword_1EDCDFD00, v41);
  v43 = v56;
  v42 = v57;
  v44 = *(v56 + 48);
  if (v44(v39, 1, v57) == 1)
  {
    if (v44(v39 + v40, 1, v42) == 1)
    {
      sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BA9DD8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v53;
  sub_1C6BA35FC(v39, v53, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v44(v39 + v40, 1, v42) == 1)
  {
    (*(v43 + 8))(v45, v42);
LABEL_13:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    v36 = v39;
    goto LABEL_14;
  }

  v48 = v39 + v40;
  v49 = v52;
  (*(v43 + 32))(v52, v48, v42);
  sub_1C6BA9DD8(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v50 = sub_1C6D79560();
  v51 = *(v43 + 8);
  v51(v49, v42);
  v51(v45, v42);
  sub_1C6BA28D4(v39, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1C6BA9DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1C6BA9E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 217))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 216);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C6BA9EB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C6BA9F44(uint64_t a1, void *a2)
{
  v5 = sub_1C6D78760();
  v104 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BAAE9C(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v97 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v95 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = &v90 - v19;
  v103 = sub_1C6D783E0();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v20);
  v96 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v94 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v105 = &v90 - v27;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v90 - v31;
  v33 = [a2 fullBodyEmbeddingDimension];
  v34 = [a2 maxSessionEvents];
  v35 = [a2 maxTopicIds];
  v36 = [a2 titleEmbeddingDimension];
  sub_1C6B9F730([a2 eventConditions], &v110);
  v109[0] = v33;
  v109[1] = v34;
  v109[2] = v35;
  v109[3] = v36;
  v106 = a1;
  v101 = sub_1C6B9A0A0(a1, v109, 0, 0);
  v37 = sub_1C6BAA970(v2);
  v93 = "subscriptionController";
  *&v98 = v32;
  sub_1C6D783C0();
  v38 = v37[2];
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v91 = v5;
    v107 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v38, 0);
    v40 = v107;
    v41 = v37 + 5;
    v42 = v38;
    do
    {
      v43 = *(v41 - 1);
      v44 = *v41;
      v107 = v40;
      v46 = *(v40 + 16);
      v45 = *(v40 + 24);

      if (v46 >= v45 >> 1)
      {
        sub_1C6B39280((v45 > 1), v46 + 1, 1);
        v40 = v107;
      }

      *(v40 + 16) = v46 + 1;
      v47 = v40 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      v41 += 3;
      --v42;
    }

    while (v42);
    v5 = v91;
    v48 = v104;
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v48 = v104;
  }

  v49 = v99;
  sub_1C6D78740();
  v50 = *(v48 + 56);
  v50(v49, 0, 1, v5);
  sub_1C6D78830();
  v99 = "sessionEvent.followedTags";
  sub_1C6D783C0();
  if (v38)
  {
    v51 = v5;
    v107 = v39;
    sub_1C6B3922C(0, v38, 0);
    v52 = v107;
    v53 = *(v107 + 16);
    v54 = 6;
    do
    {
      v55 = v37[v54];
      v107 = v52;
      v56 = *(v52 + 24);
      if (v53 >= v56 >> 1)
      {
        sub_1C6B3922C((v56 > 1), v53 + 1, 1);
        v52 = v107;
      }

      *(v52 + 16) = v53 + 1;
      *(v52 + 4 * v53 + 32) = v55;
      v54 += 3;
      ++v53;
      --v38;
    }

    while (v38);

    v5 = v51;
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  v57 = v100;
  *v100 = v52;
  (*(v48 + 104))(v57, *MEMORY[0x1E6996138], v5);
  v50(v57, 0, 1, v5);
  sub_1C6D78830();
  sub_1C6D77FA0();
  v58 = sub_1C6D77F90();
  v59 = v102;
  if (v58)
  {
    if (qword_1EDCE96C8 != -1)
    {
      swift_once();
    }

    v105 = qword_1EDCE96D0;
    sub_1C6BAAE9C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v100 = v60;
    v61 = swift_allocObject();
    v98 = xmmword_1C6D7E630;
    *(v61 + 16) = xmmword_1C6D7E630;
    v107 = 0;
    v108 = 0xE000000000000000;
    v62 = v94;
    sub_1C6D783C0();
    v63 = v95;
    sub_1C6D78820();
    v64 = *(v59 + 8);
    v64(v62, v103);
    v65 = v48;
    v66 = *(v48 + 48);
    if (v66(v63, 1, v5))
    {
      sub_1C6BAAF00(v63);
      v67 = 0x80000001C6D9C630;
      v68 = 0xD000000000000019;
    }

    else
    {
      v69 = v92;
      (*(v65 + 16))(v92, v63, v5);
      sub_1C6BAAF00(v63);
      v70 = sub_1C6D78750();
      v67 = v71;
      (*(v65 + 8))(v69, v5);
      v68 = v70;
    }

    v72 = v5;
    MEMORY[0x1CCA55B00](v68, v67);

    v73 = v107;
    v74 = v108;
    *(v61 + 56) = MEMORY[0x1E69E6158];
    v75 = sub_1C6B2064C();
    *(v61 + 64) = v75;
    *(v61 + 32) = v73;
    *(v61 + 40) = v74;
    v76 = sub_1C6D79AC0();
    sub_1C6D78D30("Event aggregation work provided followedTags Feature %{public}@", 63, 2, &dword_1C6B09000, v105, v76, v61);

    v77 = swift_allocObject();
    *(v77 + 16) = v98;
    v107 = 0;
    v108 = 0xE000000000000000;
    v78 = v96;
    sub_1C6D783C0();
    v79 = v97;
    sub_1C6D78820();
    v64(v78, v103);
    if (v66(v79, 1, v72))
    {
      sub_1C6BAAF00(v79);
      v80 = 0x80000001C6D9C630;
      v81 = 0xD000000000000019;
    }

    else
    {
      v82 = v104;
      v83 = v92;
      (*(v104 + 16))(v92, v79, v72);
      sub_1C6BAAF00(v79);
      v84 = sub_1C6D78750();
      v80 = v85;
      (*(v82 + 8))(v83, v72);
      v81 = v84;
    }

    MEMORY[0x1CCA55B00](v81, v80);

    v86 = v107;
    v87 = v108;
    *(v77 + 56) = MEMORY[0x1E69E6158];
    *(v77 + 64) = v75;
    *(v77 + 32) = v86;
    *(v77 + 40) = v87;
    v88 = sub_1C6D79AC0();
    sub_1C6D78D30("Event aggregation work provided followedTagsDateAdded Feature %{public}@", 72, 2, &dword_1C6B09000, v105, v88, v77);
  }

  return v101;
}

void *sub_1C6BAA970(uint64_t a1)
{
  v2 = sub_1C6D75F50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 subscriptionsWithType_];
    if (v13)
    {
      v14 = v13;
      sub_1C6BAAF8C();
      v15 = sub_1C6D79780();

      if (v15 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
      {
        v41 = v10;
        v42 = v6;
        v44 = v12;
        v17 = 0;
        v47 = v15 & 0xFFFFFFFFFFFFFF8;
        v48 = v15 & 0xC000000000000001;
        v39 = (v3 + 8);
        v40 = (v3 + 32);
        v46 = xmmword_1C6D7E630;
        v45 = MEMORY[0x1E69E7CC0];
        v43 = v2;
LABEL_6:
        v2 = v17;
        while (1)
        {
          if (v48)
          {
            v19 = MEMORY[0x1CCA56240](v2, v15);
          }

          else
          {
            if (v2 >= *(v47 + 16))
            {
              goto LABEL_31;
            }

            v19 = *(v15 + 8 * v2 + 32);
          }

          v3 = v19;
          v17 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          v20 = [v19 tagID];
          if (v20)
          {
            v21 = v20;
            v6 = sub_1C6D795A0();
            v23 = v22;

            v24 = [v3 dateAdded];
            if (v24)
            {
              v26 = v42;
              v27 = v24;
              sub_1C6D75F20();

              v28 = v41;
              v29 = v26;
              v30 = v43;
              (*v40)(v41, v29, v43);
              sub_1C6D75F10();
              v32 = v31;
              (*v39)(v28, v30);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v33 = v45;
              }

              else
              {
                v33 = sub_1C6B65E60(0, v45[2] + 1, 1, v45);
              }

              v12 = v33[2];
              v34 = v33[3];
              v3 = (v12 + 1);
              if (v12 >= v34 >> 1)
              {
                v33 = sub_1C6B65E60((v34 > 1), v12 + 1, 1, v33);
              }

              v35 = v32;
              v33[2] = v3;
              v45 = v33;
              v36 = &v33[3 * v12];
              *(v36 + 4) = v6;
              *(v36 + 5) = v23;
              v36[12] = v35;
              if (v17 == i)
              {
LABEL_28:

                return v45;
              }

              goto LABEL_6;
            }

            if (qword_1EDCE96C8 != -1)
            {
              swift_once();
            }

            v12 = qword_1EDCE96D0;
            v18 = sub_1C6D79AA0();
            sub_1C6BAAE9C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
            v10 = swift_allocObject();
            *(v10 + 1) = v46;
            *(v10 + 7) = MEMORY[0x1E69E6158];
            *(v10 + 8) = sub_1C6B2064C();
            *(v10 + 4) = v6;
            *(v10 + 5) = v23;
            sub_1C6D78D30("Encountered subscription without a date added. Tag ID: %{public}@", 65, 2, &dword_1C6B09000, v12, v18, v10);
          }

          else
          {
            if (qword_1EDCE96C8 != -1)
            {
              swift_once();
            }

            v12 = qword_1EDCE96D0;
            v25 = sub_1C6D79AA0();
            sub_1C6D78D30("Encountered subscription without a tagID %{public}@", 51, 2, &dword_1C6B09000, v12, v25, MEMORY[0x1E69E7CC0]);
          }

          ++v2;
          if (v17 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }
    }

    else
    {
    }
  }

  return &unk_1F4671770;
}

uint64_t ArticleEventFeaturesProvider.deinit()
{

  return v0;
}

uint64_t ArticleEventFeaturesProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C6BAAE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6BAAF00(uint64_t a1)
{
  sub_1C6BAAE9C(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6BAAF8C()
{
  result = qword_1EDCDF8E0;
  if (!qword_1EDCDF8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCDF8E0);
  }

  return result;
}

id FCPersonalizationData.createAggregate(for:clicks:impressions:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_1C6D79570();
  v7 = [v3 createAggregateWith:v6 clicks:a2 impressions:a3];

  return v7;
}

uint64_t FCPersonalizationData.update(with:option:updateBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6BAB388(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v13 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D79950();
  (*(v10 + 16))(v13, a2, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C6BABCD0;
  *(v17 + 24) = v16;
  v29 = sub_1C6BAB430;
  v30 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C6BAB458;
  v28 = &block_descriptor;
  v18 = _Block_copy(&aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1C6BAB4B4;
  *(v20 + 24) = v19;
  v29 = sub_1C6BAB504;
  v30 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C6BAB52C;
  v28 = &block_descriptor_12;
  v21 = _Block_copy(&aBlock);

  [v4 updateAggregatesWith:v14 creationBlock:v18 updateBlock:v21];
  _Block_release(v18);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_5;
  }

  v24 = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1C6BAB388(uint64_t a1)
{
  if (!qword_1EDCEA830)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA4D0, 0x1E69B6EE8);
    sub_1C6B0C790(&qword_1EDCEA4E0, &qword_1EDCEA4D0, 0x1E69B6EE8, &protocol conformance descriptor for NTPBPersonalizationAggregate);
    v1 = sub_1C6D76200();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA830);
    }
  }
}

id sub_1C6BAB458(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1C6D795A0();
  v4 = v2(v3);

  return v4;
}

void sub_1C6BAB4B4(void *a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v3 = a1;
  v2(&v5);
  v4 = v5;
}

void sub_1C6BAB52C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t FCPersonalizationData.lookupAll()()
{
  v1 = [v0 allAggregates];
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v2 = sub_1C6D79490();

  return v2;
}

uint64_t FCPersonalizationData.lookup(with:option:)(uint64_t a1, uint64_t a2)
{
  sub_1C6BAB388(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = sub_1C6D79950();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C6BABA88;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1C6BABCC4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6BAB458;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);

  v14 = [v2 lookupAggregatesWith:v9 creationBlock:v13];
  _Block_release(v13);

  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v15 = sub_1C6D79490();

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BAB884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BAB388(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a3, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == *MEMORY[0x1E69E3220])
  {
    (*(v8 + 96))(v12, v7);
    (*v12)(&v16, a1, a2);

    return v16;
  }

  else
  {
    if (v13 != *MEMORY[0x1E69E3228])
    {
      (*(v8 + 8))(v12, v7);
    }

    return 0;
  }
}

uint64_t objectdestroyTm()
{
  sub_1C6BAB388(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1C6BABB00(void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *v4;
  v9 = sub_1C6D79570();
  v10 = [v8 createAggregateWith:v9 clicks:a3 impressions:a4];

  *a2 = v10;
}

uint64_t sub_1C6BABBFC()
{
  v1 = [*v0 allAggregates];
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v2 = sub_1C6D79490();

  return v2;
}

uint64_t ArticleUndislikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleUndislikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6BAD140(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleUndislikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6BAD140(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleUndislikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CB0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUndislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6BAC43C(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6BAC548(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77CA0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleUndislikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CC0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUndislikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CE0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUndislikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CD0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6BACE80(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77CA0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleUndislikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77CE0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6BAD140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6BAD1E0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CA0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6BAD2E0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77CB0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUndislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6BAD430(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77CA0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6BAD550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6BAD658(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77CA0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6BAD744()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77CE0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.vendedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(v1 + *(v8 + 20), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(uint64_t a1)
{
  result = qword_1EDCE3D00;
  if (!qword_1EDCE3D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BADA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(a1 + *(v9 + 20), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6BADC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 20);
  sub_1C6BAE5E8(a2 + v10, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.vendedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 20);
  sub_1C6BAE5E8(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventNotificationVended.vendedAt.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6BAE568(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BAE5E8(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BAE078;
}

void sub_1C6BAE078(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventNotificationVended.hasVendedAt.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(v0 + *(v6 + 20), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BAE5E8(v5, &qword_1EDCE66F0, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventNotificationVended.clearVendedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 20);
  sub_1C6BAE5E8(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(v1 + *(v7 + 24), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6BAE568(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BB0874(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BAE5E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BB0874(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BAE658@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(a1 + *(v8 + 24), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BAE5E8(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6BAE81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 24);
  sub_1C6BAE5E8(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 24);
  sub_1C6BAE5E8(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventNotificationVended.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6BAE568(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BAE5E8(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6BAEC68;
}

void sub_1C6BAEC68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6BAE5E8(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventNotificationVended.hasArticle.getter()
{
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(v0 + *(v5 + 24), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BAE5E8(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventNotificationVended.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0) + 24);
  sub_1C6BAE5E8(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v4 = *(v3 + 20);
  v5 = sub_1C6D789A0();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BAF120()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D72D8);
  __swift_project_value_buffer(v0, qword_1EC1D72D8);
  sub_1C6BB0874(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "vended_at";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "article";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventNotificationVended._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D72D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6BAF444(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6BAF4F8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6BAF444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6D789A0();
  sub_1C6BB082C(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BAF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6BB082C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6BAF61C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BAF868(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BAF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(a1 + *(v15 + 20), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BAE5E8(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BB082C(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6BAF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BAE568(a1 + *(v14 + 24), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BAE5E8(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6BB082C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t Com_Apple_News_Personalization_SessionEventNotificationVended.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  sub_1C6BB082C(&qword_1EC1D72F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BAFB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = sub_1C6D789A0();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6BAFC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BB082C(&qword_1EC1D7310, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BAFCA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D72D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BAFD4C(uint64_t a1)
{
  v2 = sub_1C6BB082C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BAFDB8(uint64_t a1, uint64_t a2)
{
  sub_1C6BB082C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B31_SessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v52 = &v50 - v9;
  sub_1C6BB0758(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v50 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69AA900];
  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v50 - v20;
  sub_1C6BB0758(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v17);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v50 - v25;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v28 = *(v27 + 20);
  v29 = *(v23 + 56);
  v58 = a1;
  sub_1C6BAE568(a1 + v28, v26, &qword_1EDCE66F0, v17);
  v30 = v59 + v28;
  v31 = v59;
  sub_1C6BAE568(v30, &v26[v29], &qword_1EDCE66F0, v17);
  v32 = *(v14 + 48);
  if (v32(v26, 1, v13) != 1)
  {
    sub_1C6BAE568(v26, v21, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v26[v29], 1, v13) != 1)
    {
      v37 = v53;
      (*(v14 + 32))(v53, &v26[v29], v13);
      sub_1C6BB082C(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v38 = sub_1C6D79560();
      v39 = *(v14 + 8);
      v39(v37, v13);
      v39(v21, v13);
      sub_1C6BAE5E8(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v21, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v26;
LABEL_14:
    sub_1C6BB07D0(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v26[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6BAE5E8(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v40 = *(v27 + 24);
  v41 = v55;
  v42 = *(v54 + 48);
  sub_1C6BAE568(v58 + v40, v55, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6BAE568(v31 + v40, v41 + v42, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v43 = v57;
  v44 = *(v56 + 48);
  if (v44(v41, 1, v57) == 1)
  {
    if (v44(v41 + v42, 1, v43) == 1)
    {
      sub_1C6BAE5E8(v41, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6BB082C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v46 = sub_1C6D79560();
      return v46 & 1;
    }

    goto LABEL_13;
  }

  v45 = v52;
  sub_1C6BAE568(v41, v52, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v44(v41 + v42, 1, v43) == 1)
  {
    sub_1C6B7F770(v45);
LABEL_13:
    v33 = &qword_1EC1D69F0;
    v34 = &qword_1EDCE52B0;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v36 = v41;
    goto LABEL_14;
  }

  v48 = v51;
  sub_1C6B483C8(v41 + v42, v51);
  v49 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v45, v48);
  sub_1C6B7F770(v48);
  sub_1C6B7F770(v45);
  sub_1C6BAE5E8(v41, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_15:
  v46 = 0;
  return v46 & 1;
}

void sub_1C6BB065C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6BB0874(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6BB0874(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6BB0758(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BB0874(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BB07D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BB0758(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BB082C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BB0874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6BB08D8(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA56240](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1C6BB1AA0(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1C6BB09CC(uint64_t a1)
{
  v2 = v1;
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = aBlock - v11;
  i = [v1 topics];
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C6BB2590();
  v14 = sub_1C6D79780();

  if (v14 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {

LABEL_5:
    v15 = swift_allocObject();
    v16 = __OFADD__(i, 2);
    v17 = i + 2;
    if (!v16)
    {
      break;
    }

    __break(1u);
LABEL_20:
    ;
  }

  v18 = v15;
  v19 = sub_1C6D763C0();
  *(v18 + 16) = MEMORY[0x1CCA559A0](v17, MEMORY[0x1E69E6158], v19, MEMORY[0x1E69E6168]);
  v20 = [v2 globalCohorts];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 cohortWithPreferredType_];

    if (v22)
    {
      v23 = [v22 hasRawClicks];
      v24 = &selRef_rawClicks;
      if (!v23)
      {
        v24 = &selRef_clicks;
      }

      [v22 *v24];
      [v22 clicks];
      [v22 impressions];
      sub_1C6D763A0();
      (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
      sub_1C6BC161C(v12, 42, 0xE100000000000000);
    }
  }

  v25 = [v2 publisherID];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C6D795A0();
    v29 = v28;

    v30 = [v2 publisherCohorts];
    if (v30 && (v31 = v30, v32 = [v30 cohortWithPreferredType_], v31, v32))
    {
      v33 = [v32 hasRawClicks];
      v34 = &selRef_rawClicks;
      if (!v33)
      {
        v34 = &selRef_clicks;
      }

      [v32 *v34];
      [v32 clicks];
      [v32 impressions];
      sub_1C6D763A0();
      (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
      sub_1C6BC161C(v7, v27, v29);
    }

    else
    {
    }
  }

  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v18;
  aBlock[4] = sub_1C6BB25E4;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6BB25F8;
  aBlock[3] = &block_descriptor_7;
  v36 = _Block_copy(aBlock);

  [v2 enumerateTopicCohortsWithBlock_];
  _Block_release(v36);
  swift_beginAccess();
  v37 = *(v18 + 16);

  return v37;
}

void sub_1C6BB0E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v19 - v12;
  v14 = [a3 cohortWithPreferredType_];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 hasRawClicks];
    v17 = &selRef_rawClicks;
    if (!v16)
    {
      v17 = &selRef_clicks;
    }

    [v15 *v17];
    [v15 clicks];
    [v15 impressions];
    sub_1C6D763A0();
    v18 = sub_1C6D763C0();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    swift_beginAccess();

    sub_1C6BC161C(v13, a1, a2);
    swift_endAccess();
  }
}

uint64_t sub_1C6BB104C()
{
  v1 = v0;
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = aBlock - v5;
  i = [v0 topics];
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C6BB2590();
  v8 = sub_1C6D79780();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {

LABEL_5:
    v9 = swift_allocObject();
    v10 = __OFADD__(i, 2);
    v11 = i + 2;
    if (!v10)
    {
      break;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v12 = v9;
  v13 = sub_1C6D763C0();
  *(v12 + 16) = MEMORY[0x1CCA559A0](v11, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6168]);
  v14 = [v1 globalConversionStats];
  if (v14)
  {
    v15 = v14;
    [v14 conversions];
    [v15 conversions];
    [v15 impressions];
    sub_1C6D763A0();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    sub_1C6BC161C(v6, 42, 0xE100000000000000);
  }

  v16 = [v1 publisherID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C6D795A0();
    v20 = v19;

    v21 = [v1 publisherConversionStats];
    if (v21)
    {
      v22 = v21;
      [v21 conversions];
      [v22 conversions];
      [v22 impressions];
      sub_1C6D763A0();
      (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
      sub_1C6BC161C(v6, v18, v20);
    }

    else
    {
    }
  }

  aBlock[4] = sub_1C6BB25DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6BB25F8;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);

  [v1 enumerateTopicConversionStatsWithBlock_];
  _Block_release(v23);
  swift_beginAccess();
  v24 = *(v12 + 16);

  return v24;
}

uint64_t sub_1C6BB1424(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1C6B21C54(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;

  [a3 conversions];
  [a3 conversions];
  [a3 impressions];
  sub_1C6D763A0();
  v11 = sub_1C6D763C0();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  swift_beginAccess();
  sub_1C6BC161C(v10, a1, a2);
  return swift_endAccess();
}

void sub_1C6BB15A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6D795A0();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, v8);
}

id sub_1C6BB1634()
{
  v1 = v0;
  v2 = sub_1C6D76190();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v36 - v10;
  i = [v1 topics];
  if (!i)
  {
    goto LABEL_5;
  }

  sub_1C6BB2590();
  v13 = sub_1C6D79780();

  if (v13 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {

LABEL_5:
    if (!__OFADD__(i, 1))
    {
      break;
    }

    __break(1u);
LABEL_29:
    ;
  }

  v14 = MEMORY[0x1CCA559A0](i + 1, MEMORY[0x1E69E6158], v2, MEMORY[0x1E69E6168]);
  v46 = v14;
  v15 = [v1 publisherID];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v44 = sub_1C6D795A0();
  v18 = v17;

  v19 = [v1 publisherTagMetadata];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 hasFlowRate];
    if (v21)
    {
      [v20 flowRate];
      v41 = v22;
    }

    else
    {
      v41 = 0.0;
    }

    if ([v20 hasSubscriptionRate])
    {
      [v20 subscriptionRate];
      v39 = v23;
    }

    else
    {
      v39 = 0.0;
    }

    v38 = [v20 hasQuality];
    v42 = v18;
    if (v38)
    {
      [v20 quality];
      v37 = v24;
    }

    else
    {
      v37 = 0.0;
    }

    v25 = [v20 hasContentAndRelevanceInfo];
    v43 = v3;
    if (v25)
    {
      LODWORD(v36) = v21;
      result = [v20 contentAndRelevanceInfo];
      if (!result)
      {
        __break(1u);
        goto LABEL_31;
      }

      v27 = result;
      [result contentRating];
    }

    v28 = [v20 hasContentAndRelevanceInfo];
    v29 = v28;
    if (!v28)
    {
LABEL_24:
      LOBYTE(v45) = v29 ^ 1;
      sub_1C6D76180();
      (*(v43 + 32))(v6, v11, v2);
      v31 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v31;
      sub_1C6BC4FE8(v6, v44, v42, isUniquelyReferenced_nonNull_native);

      v14 = v45;
      v46 = v45;
      goto LABEL_25;
    }

    v36 = v6;
    result = [v20 contentAndRelevanceInfo];
    if (result)
    {
      v30 = result;
      [result relevanceRating];

      v6 = v36;
      goto LABEL_24;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_25:
  v33 = [v1 topics];
  if (v33)
  {
    v34 = v33;
    sub_1C6BB2590();
    v35 = sub_1C6D79780();

    sub_1C6BB08D8(v35, &v46);

    return v46;
  }

  return v14;
}

id sub_1C6BB1AA0(id *a1, uint64_t a2)
{
  sub_1C6B21C54(0, &unk_1EDCEA840, MEMORY[0x1E69E31D0], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v26 - v7;
  v9 = *a1;
  result = [*a1 tagID];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = result;
  v12 = sub_1C6D795A0();
  v38 = v13;

  if ([v9 hasFlowRate])
  {
    [v9 flowRate];
    v36 = v14;
  }

  else
  {
    v36 = 0;
  }

  if ([v9 hasSubscriptionRate])
  {
    [v9 subscriptionRate];
    v34 = v15;
  }

  else
  {
    v34 = 0;
  }

  if ([v9 hasQuality])
  {
    [v9 quality];
    v32 = v16;
  }

  else
  {
    v32 = 0;
  }

  if ([v9 hasOntologyLevel])
  {
    v30 = [v9 ontologyLevel];
  }

  else
  {
    v30 = 0;
  }

  v17 = [v9 hasContentAndRelevanceInfo];
  v18 = v17;
  if (!v17)
  {
    v27 = 0;
    goto LABEL_18;
  }

  result = [v9 contentAndRelevanceInfo];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = result;
  v20 = [result contentRating];

  v27 = v20;
LABEL_18:
  v21 = [v9 hasContentAndRelevanceInfo];
  v22 = v21;
  v29 = a2;
  v28 = v12;
  if (!v21)
  {
    v24 = v8;
    goto LABEL_22;
  }

  result = [v9 contentAndRelevanceInfo];
  if (result)
  {
    v23 = result;
    v24 = v8;
    [result relevanceRating];

LABEL_22:
    [v9 isManagedTopic];
    [v9 isManagedTopicWinner];
    [v9 isEligibleForGrouping];
    [v9 isEligibleForGroupingIfFavorited];
    [v9 isEligibleForGroupingIfAutofavorited];
    v40 = v18 ^ 1;
    v39 = v22 ^ 1;
    sub_1C6D76180();
    v25 = sub_1C6D76190();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    return sub_1C6BC189C(v24, v28, v38);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C6BB1E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v60 = a1;
  sub_1C6B21C54(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v40 - v6;
  if ([v2 respondsToSelector_])
  {
    v8 = [v2 iAdCategories];
    if (v8)
    {
      v9 = v8;
      v57 = sub_1C6D79780();
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v10 = [v2 itemID];
  v11 = sub_1C6D795A0();
  v55 = v12;
  v56 = v11;

  v53 = [v2 respondsToSelector_];
  if (v53)
  {
    v54 = [v2 bodyTextLength];
  }

  else
  {
    v54 = 0;
  }

  v50 = [v2 halfLife];
  if (([v2 respondsToSelector_] & 1) != 0 && (v13 = objc_msgSend(v2, sel_halfLifeOverride)) != 0)
  {
    v52 = 0;
    v51 = v13;
  }

  else
  {
    v51 = 0.0;
    v52 = 1;
  }

  v49 = [v2 hasVideo];
  v48 = [v2 isANF];
  v47 = [v2 isPaid];
  if ([v2 respondsToSelector_])
  {
    v46 = [v2 isBundlePaid];
  }

  else
  {
    v46 = 0;
  }

  v14 = [v2 publishDate];
  if (v14)
  {
    v15 = v14;
    sub_1C6D75F20();

    v16 = sub_1C6D75F50();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  }

  else
  {
    v17 = sub_1C6D75F50();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  v18 = [v2 publisherID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1C6D795A0();
    v44 = v21;
    v45 = v20;
  }

  else
  {
    v44 = 0xE000000000000000;
    v45 = 0;
  }

  v22 = [v2 sourceFeedID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C6D795A0();
    v42 = v25;
    v43 = v24;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v26 = [v2 topicIDs];
  v58 = v7;
  if (v26)
  {
    v27 = v26;
    v41 = sub_1C6D79780();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B21C54(0, &qword_1EDCEA438, sub_1C6B620B4, MEMORY[0x1E69E6F90]);
  sub_1C6B620B4(0);
  v29 = v28;
  v30 = *(*(v28 - 8) + 72);
  v31 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C6D7EB10;
  v33 = v32 + v31;
  v40 = *(v29 + 48);
  v34 = *MEMORY[0x1E69E32C8];
  v35 = sub_1C6D763D0();
  v36 = *(*(v35 - 8) + 104);
  v36(v33, v34, v35);
  *(v33 + v40) = sub_1C6BB09CC(0);
  v37 = v33 + v30;
  v38 = *(v29 + 48);
  v36(v37, *MEMORY[0x1E69E32D0], v35);
  *(v37 + v38) = sub_1C6BB09CC(1);
  v40 = sub_1C6B60B8C(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1C6BB104C();
  if ([v2 respondsToSelector_])
  {
    [v2 hasAudioTrack];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 isFeatured];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 isFeatureCandidate];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 isEvergreen];
  }

  sub_1C6BB1634();
  if ([v2 respondsToSelector_])
  {
    [v2 reduceVisibility];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 webConverted];
  }

  if ([v2 respondsToSelector_])
  {
    [v2 conditionalScore];
  }

  return sub_1C6D76150();
}

unint64_t sub_1C6BB2590()
{
  result = qword_1EDCEA8F0;
  if (!qword_1EDCEA8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA8F0);
  }

  return result;
}

void *sub_1C6BB25FC(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1C6D783E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v72 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a2;
  v74 = a3;
  sub_1C6D784F0();
  if (v3)
  {
    return a1;
  }

  v67 = v11;
  v71 = v8;
  sub_1C6D78500();
  a1 = v76;

  v17 = [a1 tagScoringConfiguration];

  if (!v17)
  {
    sub_1C6BB31B8();
    v70 = swift_allocError();
    swift_willThrow();
    (*(v13 + 8))(v16, v72);
    return a1;
  }

  v68 = v7;
  v69 = v13;
  v18 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v18 = &selRef_nonBundleOutputConfiguration;
  }

  v19 = [v17 *v18];
  v20 = [v19 scoredTagsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  sub_1C6BB320C();
  v21 = sub_1C6D786D0();
  v70 = 0;
  v59 = v17;
  v23 = a3;
  v26 = *(a3 + 56);
  v25 = a3 + 56;
  v24 = v26;
  v27 = -1 << *(v23 + 32);
  if (-v27 < 64)
  {
    v28 = ~(-1 << -v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v24;
  v58[1] = -1 << *(v23 + 32);
  v30 = (63 - v27) >> 6;
  v62 = v21 + 32;
  v31 = v21;
  swift_bridgeObjectRetain_n();
  v63 = v31;

  v32 = 0;
  a1 = MEMORY[0x1E69E7CC8];
  v33 = 0;
  v34 = 0;
  v36 = v68;
  v35 = v69;
  v37 = v71;
  v61 = v23;
  v60 = v16;
  if (v29)
  {
    while (1)
    {
LABEL_18:
      v39 = *(v63 + 16);
      if (v33 == v39)
      {
LABEL_16:

        (*(v37 + 8))(v67, v36);
        (*(v35 + 8))(v16, v72);
        sub_1C6B688C4(v23);

        swift_bridgeObjectRelease_n();
        return a1;
      }

      if (v33 >= v39)
      {
        goto LABEL_34;
      }

      v65 = v32;
      v66 = (v29 - 1) & v29;
      v40 = (*(v23 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v29)))));
      v41 = *v40;
      v42 = v40[1];
      v43 = *(v62 + 4 * v33);
      v44 = v33;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = a1;
      v47 = sub_1C6B5DEA8(v41, v42);
      v48 = a1[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_35;
      }

      v51 = v46;
      v52 = a1[3];
      v64 = v44 + 1;
      if (v52 < v50)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      sub_1C6B7337C();
      if (v51)
      {
LABEL_26:

        a1 = v75;
        *(v75[7] + 4 * v47) = v43;

        goto LABEL_30;
      }

LABEL_28:
      a1 = v75;
      v75[(v47 >> 6) + 8] |= 1 << v47;
      v54 = (a1[6] + 16 * v47);
      *v54 = v41;
      v54[1] = v42;
      *(a1[7] + 4 * v47) = v43;

      v55 = a1[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_36;
      }

      a1[2] = v57;
LABEL_30:
      v32 = v65;
      v34 = v65;
      v29 = v66;
      v23 = v61;
      v36 = v68;
      v35 = v69;
      v37 = v71;
      v16 = v60;
      v33 = v64;
      if (!v66)
      {
        goto LABEL_14;
      }
    }

    sub_1C6B6F710(v50, isUniquelyReferenced_nonNull_native);
    v47 = sub_1C6B5DEA8(v41, v42);
    if ((v51 & 1) != (v53 & 1))
    {
      goto LABEL_37;
    }

LABEL_25:
    if (v51)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

LABEL_14:
  while (1)
  {
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v38 >= v30)
    {
      goto LABEL_16;
    }

    v29 = *(v25 + 8 * v38);
    ++v34;
    if (v29)
    {
      v32 = v38;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6BB2BE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v8 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75F80();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D783E0();
  v50 = *(v17 - 8);
  v51 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [*(a1 + 24) tagScoringConfiguration];
  if (!v22)
  {
    sub_1C6BB31B8();
    swift_allocError();
    return swift_willThrow();
  }

  v47 = v11;
  v48 = a4;
  v49 = v4;
  v23 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v23 = &selRef_nonBundleOutputConfiguration;
  }

  v24 = *v23;
  v46 = v22;
  v25 = [v22 v24];
  v26 = [v25 scoredTagsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  sub_1C6D75F70();
  v27 = sub_1C6D75F60();
  v29 = v28;
  (*(v13 + 8))(v16, v12);
  v30 = v21;
  if (qword_1EDCE2538 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDCE2540;
  sub_1C6B1A360(0, &qword_1EDCEA8A0, sub_1C6B47670);
  v32 = swift_allocObject();
  v52 = xmmword_1C6D7E630;
  *(v32 + 16) = xmmword_1C6D7E630;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1C6B2064C();
  *(v32 + 32) = v27;
  *(v32 + 40) = v29;
  v45[1] = v29;

  v33 = sub_1C6D79AC0();
  sub_1C6D78D30("Running on global graph with request ID %{public}@", 50, 2, &dword_1C6B09000, v31, v33, v32);

  v34 = v54;
  v35 = *(v54 + 16);
  if (!v35)
  {
    goto LABEL_10;
  }

  v45[0] = v27;
  v36 = sub_1C6B6732C(v35, 0);
  v37 = sub_1C6B67FC8(&v53, v36 + 4, v35, v34);
  v38 = v53;

  result = sub_1C6B688C4(v38);
  if (v37 == v35)
  {
    v30 = v21;
LABEL_10:
    sub_1C6B1A360(0, &qword_1EDCE7D20, sub_1C6B9F304);
    sub_1C6B9F304(0);
    *(swift_allocObject() + 16) = v52;
    sub_1C6D783C0();
    sub_1C6D78740();
    sub_1C6D787D0();
    sub_1C6B1A360(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
    v40 = v50;
    v41 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v52;
    v43 = v51;
    (*(v40 + 16))(v42 + v41, v30, v51);
    sub_1C6B68E34(v42);
    swift_setDeallocating();
    v44 = *(v40 + 8);
    v44(v42 + v41, v43);
    swift_deallocClassInstance();
    sub_1C6D78790();

    return (v44)(v30, v43);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6BB31B8()
{
  result = qword_1EC1D7318;
  if (!qword_1EC1D7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7318);
  }

  return result;
}

unint64_t sub_1C6BB320C()
{
  result = qword_1EDCE7A60;
  if (!qword_1EDCE7A60)
  {
    sub_1C6B7A08C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7A60);
  }

  return result;
}

unint64_t sub_1C6BB3278()
{
  result = qword_1EC1D7320;
  if (!qword_1EC1D7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7320);
  }

  return result;
}

uint64_t sub_1C6BB32CC(void *a1)
{
  sub_1C6BB5940(0);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1C6BB6250(0, &qword_1EDCEA7D0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = sub_1C6D770E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v32 = &v29 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D760A0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BB66F4(v7, &qword_1EDCEA7D0, MEMORY[0x1E69E39F8]);
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDCE2358;
    v17 = sub_1C6D79AA0();
    sub_1C6D78D30("Not fetching sports location recommendation mappings because user has not opted in to sharing their location.", 109, 2, &dword_1C6B09000, v16, v17, MEMORY[0x1E69E7CC0]);
    v18 = MEMORY[0x1E69E39F8];
    sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A18]);
    sub_1C6BB6390(&unk_1EDCE61D0, v18, MEMORY[0x1E69E3A00]);
    sub_1C6BB6390(&unk_1EDCE61C0, v18, MEMORY[0x1E69E3A08]);
    sub_1C6D763E0();
    sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1C6D78300();
  }

  else
  {
    v30 = *(v9 + 32);
    v30(v32, v7, v8);
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDCE2358;
    v21 = sub_1C6D79AC0();
    sub_1C6D78D30("Fetching Sports Location Recommendation Mappings", 48, 2, &dword_1C6B09000, v20, v21, MEMORY[0x1E69E7CC0]);
    swift_getObjectType();
    sub_1C6D79B50();

    v22 = sub_1C6D78210();
    sub_1C6B0C69C(0, &qword_1EDCE7F20, 0x1E69B5598);
    sub_1C6D782A0();

    v23 = v32;
    (*(v9 + 16))(v12, v32, v8);
    v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25 = swift_allocObject();
    v30((v25 + v24), v12, v8);
    v26 = sub_1C6D78210();
    sub_1C6D782A0();

    v27 = sub_1C6D78210();
    v28 = sub_1C6D78330();

    (*(v9 + 8))(v23, v8);
    return v28;
  }
}

uint64_t sub_1C6BB3870(id *a1)
{
  v1 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_locationRecommendationMappingsResourceId)) != 0)
  {
    v3 = v2;
    v4 = sub_1C6D795A0();
    v6 = v5;

    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDCE2358;
    sub_1C6B1D314(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C6D7E630;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1C6B2064C();
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;

    v9 = sub_1C6D79AC0();
    sub_1C6D78D30("Found resource ID %{public}@", 28, 2, &dword_1C6B09000, v7, v9, v8);

    v10 = sub_1C6BB3AA4(v4, v6);

    return v10;
  }

  else
  {
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDCE2358;
    v13 = sub_1C6D79AA0();
    sub_1C6D78D30("Found no location recommendation mapping resource ID", 52, 2, &dword_1C6B09000, v12, v13, MEMORY[0x1E69E7CC0]);
    sub_1C6BB633C();
    swift_allocError();
    *v14 = 1;
    sub_1C6BB64E0(0, &qword_1EDCE5D48, &qword_1EDCE7F20, 0x1E69B5598, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1C6D782F0();
  }
}

uint64_t sub_1C6BB3AA4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCE2358;
  sub_1C6B1D314(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D7E630;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6B2064C();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_1C6D79AC0();
  sub_1C6D78D30("Fetching mapping resource with id %{public}@", 44, 2, &dword_1C6B09000, v5, v7, v6);

  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1C6B0C69C(0, &qword_1EDCE7F20, 0x1E69B5598);
  sub_1C6D783A0();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = a2;

  v11 = sub_1C6D78210();
  sub_1C6D782B0();

  v12 = sub_1C6D78210();
  v13 = sub_1C6D782E0();

  return v13;
}

uint64_t sub_1C6BB3CA8(void **a1, void *a2)
{
  v119 = a2;
  sub_1C6BB6250(0, &qword_1EDCE62E8, sub_1C6BB5940, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v107 - v5;
  sub_1C6BB5940(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v118 = &v107 - v15;
  v16 = sub_1C6D75DE0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v107 - v24;
  v26 = *a1;
  v27 = [v26 fileURL];
  if (v27)
  {
    v114 = v12;
    v115 = v6;
    v116 = v9;
    v117 = v8;
    v28 = v27;
    sub_1C6D75D90();

    v120 = v17;
    (*(v17 + 32))(v25, v20, v16);
    v29 = [v26 resourceID];
    v30 = sub_1C6D795A0();
    v32 = v31;

    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDCE2358;
    sub_1C6B1D314(0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C6D7EB10;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1C6B2064C();
    *(v34 + 64) = v36;
    *(v34 + 32) = v30;
    *(v34 + 40) = v32;
    sub_1C6BB6390(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v37 = sub_1C6D7A0E0();
    *(v34 + 96) = v35;
    *(v34 + 104) = v36;
    *(v34 + 72) = v37;
    *(v34 + 80) = v38;
    v39 = sub_1C6D79AC0();
    sub_1C6D78D30("Got mapping resource %{public}@ at %{public}@", 45, 2, &dword_1C6B09000, v33, v39, v34);

    v40 = v121;
    v41 = sub_1C6D75E00();
    if (v40)
    {
      v43 = v16;
      v44 = sub_1C6D79AA0();
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1C6D7E630;
      v122 = 0;
      v123 = 0xE000000000000000;
      v124 = v40;
      sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
      sub_1C6D79E60();
      v46 = v122;
      v47 = v123;
      *(v45 + 56) = v35;
      *(v45 + 64) = v36;
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      sub_1C6D78D30("Failed to read mapping data from disk with error %{public}@", 59, 2, &dword_1C6B09000, v33, v44, v45);

      sub_1C6BB633C();
      swift_allocError();
      *v48 = 0;
      sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v49 = sub_1C6D782F0();

      (*(v120 + 8))(v25, v43);
      return v49;
    }

    v59 = v42;
    v110 = v25;
    v112 = v33;
    v121 = v41;
    v60 = sub_1C6D79AA0();
    result = swift_allocObject();
    v61 = result;
    *(result + 16) = xmmword_1C6D7E630;
    v122 = 0;
    v123 = 0xE000000000000000;
    v62 = v59 >> 62;
    v113 = v59;
    v111 = 0;
    if ((v59 >> 62) > 1)
    {
      v64 = 0;
      v63 = MEMORY[0x1E69E6158];
      if (v62 != 2 || (v66 = v121[2], v65 = v121[3], v64 = v65 - v66, !__OFSUB__(v65, v66)))
      {
LABEL_18:
        v109 = xmmword_1C6D7E630;
        v108 = v16;
        v67 = [objc_opt_self() stringFromByteCount:v64 countStyle:2];
        v68 = sub_1C6D795A0();
        v70 = v69;

        MEMORY[0x1CCA55B00](v68, v70);

        v71 = v122;
        v72 = v123;
        v61[7] = v63;
        v61[8] = v36;
        v61[4] = v71;
        v61[5] = v72;
        v73 = v112;
        sub_1C6D78D30("Got mapping resource data of size %{public}@", 44, 2, &dword_1C6B09000, v112, v60, v61);

        v74 = objc_allocWithZone(MEMORY[0x1E69B6E98]);
        v75 = v121;
        v76 = v113;
        sub_1C6B1CD10(v121, v113);
        v77 = sub_1C6D75E50();
        sub_1C6B1C9F0(v75, v76);
        v78 = [v74 initWithData_];

        if (!v78)
        {
          v92 = swift_allocObject();
          *(v92 + 16) = v109;
          v93 = v110;
          v94 = v108;
          v95 = sub_1C6D7A0E0();
          *(v92 + 56) = MEMORY[0x1E69E6158];
          *(v92 + 64) = v36;
          *(v92 + 32) = v95;
          *(v92 + 40) = v96;
          v97 = sub_1C6D79AC0();
          sub_1C6D78D30("Failed to get location mapping data from disk at path %{public}@", 64, 2, &dword_1C6B09000, v73, v97, v92);

          sub_1C6BB633C();
          swift_allocError();
          *v98 = 0;
          sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v49 = sub_1C6D782F0();
          sub_1C6B1C9F0(v75, v76);
          (*(v120 + 8))(v93, v94);
          return v49;
        }

        v79 = v78;
        v80 = [v78 locationMappings];
        if (v80)
        {
          v81 = v80;
          v82 = swift_allocObject();
          *(v82 + 16) = v109;
          v122 = [v81 count];
          v83 = sub_1C6D7A0E0();
          *(v82 + 56) = MEMORY[0x1E69E6158];
          *(v82 + 64) = v36;
          *(v82 + 32) = v83;
          *(v82 + 40) = v84;
          v85 = sub_1C6D79AC0();
          v86 = v112;
          sub_1C6D78D30("Decoded location mapping with %{public}@ locations", 50, 2, &dword_1C6B09000, v112, v85, v82);

          v87 = v115;
          sub_1C6BB4978(v119, v115);
          v89 = v116;
          v88 = v117;
          if ((*(v116 + 48))(v87, 1, v117) != 1)
          {
            v106 = v118;
            (*(v89 + 32))(v118, v87, v88);
            (*(v89 + 16))(v114, v106, v88);
            sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v49 = sub_1C6D78300();

            sub_1C6B1C9F0(v121, v113);
            (*(v89 + 8))(v106, v88);
            goto LABEL_26;
          }

          sub_1C6BB66F4(v87, &qword_1EDCE62E8, sub_1C6BB5940);
          v90 = sub_1C6D79AA0();
          sub_1C6D78D30("Failed to process location mapping into tag mappings", 52, 2, &dword_1C6B09000, v86, v90, MEMORY[0x1E69E7CC0]);
          sub_1C6BB633C();
          swift_allocError();
          *v91 = 0;
          sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v49 = sub_1C6D782F0();
        }

        else
        {
          v99 = sub_1C6D79AA0();
          v100 = swift_allocObject();
          *(v100 + 16) = v109;
          v101 = [v79 description];
          v102 = sub_1C6D795A0();
          v104 = v103;

          *(v100 + 56) = MEMORY[0x1E69E6158];
          *(v100 + 64) = v36;
          *(v100 + 32) = v102;
          *(v100 + 40) = v104;
          sub_1C6D78D30("Decoded location mapping message successfully but found no locations %{public}@", 79, 2, &dword_1C6B09000, v112, v99, v100);

          sub_1C6BB633C();
          swift_allocError();
          *v105 = 0;
          sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v49 = sub_1C6D782F0();
        }

        sub_1C6B1C9F0(v121, v113);
LABEL_26:
        (*(v120 + 8))(v110, v108);
        return v49;
      }

      __break(1u);
    }

    else
    {
      v63 = MEMORY[0x1E69E6158];
      if (!v62)
      {
        v64 = BYTE6(v59);
        goto LABEL_18;
      }
    }

    if (!__OFSUB__(HIDWORD(v121), v121))
    {
      v64 = HIDWORD(v121) - v121;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    if (qword_1EDCE2350 != -1)
    {
      swift_once();
    }

    v50 = qword_1EDCE2358;
    v51 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1C6D7E630;
    v53 = [v26 description];
    v54 = sub_1C6D795A0();
    v56 = v55;

    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = sub_1C6B2064C();
    *(v52 + 32) = v54;
    *(v52 + 40) = v56;
    sub_1C6D78D30("Found no fileURL on returned FCResource %{public}@", 50, 2, &dword_1C6B09000, v50, v51, v52);

    sub_1C6BB633C();
    swift_allocError();
    *v57 = 2;
    sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  return result;
}

uint64_t sub_1C6BB4978@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1C6BB6250(0, &qword_1EDCE61E0, sub_1C6BB63D8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v70 = &v61 - v7;
  sub_1C6BB63D8(0);
  v69 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = &v61 - v14;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v66 = &v61 - v18;
  v19 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v20 = [v2 locationMappings];
  if (v20)
  {
    v21 = v20;
    v72 = 0;
    sub_1C6B0C69C(0, &unk_1EDCDF7D0, 0x1E69B6E90);
    sub_1C6D79770();

    v22 = v72;
    if (v72)
    {
      v2 = a1;
      sub_1C6D770C0();
      v24 = v23;
      sub_1C6D770D0();
      v65 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v24 longitude:v25];
      v26 = v22 & 0xFFFFFFFFFFFFFF8;
      if (v22 >> 62)
      {
        v27 = sub_1C6D79E90();
        v61 = a2;
        if (v27)
        {
LABEL_5:
          v28 = 0;
          v63 = (v9 + 48);
          v64 = v22 & 0xC000000000000001;
          v29 = MEMORY[0x1E69E7CC8];
          v62 = v22 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v64)
            {
              v30 = MEMORY[0x1CCA56240](v28, v22);
              a2 = v70;
              v19 = (v28 + 1);
              if (__OFADD__(v28, 1))
              {
LABEL_14:
                __break(1u);
                goto LABEL_15;
              }
            }

            else
            {
              a2 = v70;
              if (v28 >= *(v26 + 16))
              {
                __break(1u);
                goto LABEL_21;
              }

              v30 = *(v22 + 8 * v28 + 32);
              v19 = (v28 + 1);
              if (__OFADD__(v28, 1))
              {
                goto LABEL_14;
              }
            }

            sub_1C6BB5A6C(a2);
            v31 = v69;
            if ((*v63)(a2, 1, v69) == 1)
            {
              break;
            }

            v71 = v30;
            v32 = v66;
            sub_1C6BB6548(a2, v66);
            v33 = v29;
            v34 = v27;
            v35 = v67;
            sub_1C6BB65AC(v32, v67);

            v36 = v22;
            v37 = v68;
            sub_1C6BB65AC(v32, v68);
            v38 = sub_1C6BEED64(*(v37 + *(v31 + 48)));

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72 = v33;
            sub_1C6BC51F4(v38, v35, isUniquelyReferenced_nonNull_native);
            v2 = sub_1C6D770E0();
            v40 = *(*(v2 - 1) + 8);
            v41 = v35;
            v27 = v34;
            v40(v41, v2);

            v29 = v72;
            sub_1C6BB6610(v32);
            v42 = v37;
            v22 = v36;
            v26 = v62;
            v40(v42, v2);
            ++v28;
            if (v19 == v27)
            {
              goto LABEL_23;
            }
          }

          sub_1C6BB66F4(a2, &qword_1EDCE61E0, sub_1C6BB63D8);
          if (qword_1EDCE2350 != -1)
          {
            swift_once();
          }

          v50 = qword_1EDCE2358;
          v51 = sub_1C6D79AA0();
          sub_1C6B1D314(0);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1C6D7E630;
          v53 = v30;
          v54 = [v53 description];
          v55 = sub_1C6D795A0();
          v57 = v56;

          *(v52 + 56) = MEMORY[0x1E69E6158];
          *(v52 + 64) = sub_1C6B2064C();
          *(v52 + 32) = v55;
          *(v52 + 40) = v57;
          sub_1C6D78D30("Failed to process locationMapping %{public}@", 44, 2, &dword_1C6B09000, v50, v51, v52);

          v49 = 1;
          a2 = v61;
          goto LABEL_24;
        }
      }

      else
      {
        v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v61 = a2;
        if (v27)
        {
          goto LABEL_5;
        }
      }

LABEL_23:

      sub_1C6D770E0();
      v58 = MEMORY[0x1E69E39F8];
      sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A18]);
      sub_1C6BB6390(&unk_1EDCE61D0, v58, MEMORY[0x1E69E3A00]);
      sub_1C6BB6390(&unk_1EDCE61C0, v58, MEMORY[0x1E69E3A08]);
      a2 = v61;
      sub_1C6D763E0();

      v49 = 0;
      goto LABEL_24;
    }
  }

LABEL_15:
  if (qword_1EDCE2350 != -1)
  {
LABEL_21:
    swift_once();
  }

  v43 = qword_1EDCE2358;
  v44 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C6D7E630;
  v72 = [v2 v19[474]];
  sub_1C6BB64E0(0, &qword_1EC1D7400, &unk_1EC1D7408, 0x1E695DF70, MEMORY[0x1E69E6720]);
  v46 = sub_1C6D795F0();
  v48 = v47;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1C6B2064C();
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  sub_1C6D78D30("Failed to cast NTPBLocationRecommendationMappings.locationMappings as [NTPBLocationRecommendationMapping]. NTPBLocationRecommendationMappings.locationMappings: %{public}@", 170, 2, &dword_1C6B09000, v43, v44, v45);

  v49 = 1;
LABEL_24:
  sub_1C6BB5940(0);
  return (*(*(v59 - 8) + 56))(a2, v49, 1, v59);
}

uint64_t sub_1C6BB50F0(uint64_t a1)
{
  sub_1C6BB5940(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCE2358;
  v4 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1C6D78D30("Failed to fetch sports location recommendation mappings %{public}@, returning empty TagMappings", 95, 2, &dword_1C6B09000, v3, v4, v5);

  sub_1C6D770E0();
  v6 = MEMORY[0x1E69E39F8];
  sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A18]);
  sub_1C6BB6390(&unk_1EDCE61D0, v6, MEMORY[0x1E69E3A00]);
  sub_1C6BB6390(&unk_1EDCE61C0, v6, MEMORY[0x1E69E3A08]);
  sub_1C6D763E0();
  sub_1C6BB6250(0, &qword_1EDCE5DC8, sub_1C6BB5940, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78300();
}

id sub_1C6BB539C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v45 = a5;
  v43 = a3;
  v44 = a4;
  v41 = a2;
  sub_1C6BB6250(0, &qword_1EDCE5E20, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v42 = &v39 - v8;
  v9 = sub_1C6D75F50();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDCE2358;
  sub_1C6B1D314(0);
  v40 = v16;
  v17 = swift_allocObject();
  v39 = xmmword_1C6D7E630;
  *(v17 + 16) = xmmword_1C6D7E630;
  v18 = [v14 resourceID];
  v19 = sub_1C6D795A0();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1C6B2064C();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = sub_1C6D79AC0();
  sub_1C6D78D30("Got back resource %{public}@", 28, 2, &dword_1C6B09000, v15, v22, v17);

  v23 = [v14 fetchDate];
  sub_1C6D75F20();

  sub_1C6D75EF0();
  v25 = v24;
  v26 = *(v10 + 8);
  v26(v13, v9);
  sub_1C6D79930();
  if (v27 < fabs(v25))
  {
    v28 = v9;
    v29 = swift_allocObject();
    *(v29 + 16) = v39;
    v30 = [v14 fetchDate];
    sub_1C6D75F20();

    sub_1C6D75EF0();
    v32 = v31;
    v26(v13, v28);
    v33 = MEMORY[0x1E69E6438];
    *(v29 + 56) = MEMORY[0x1E69E63B0];
    *(v29 + 64) = v33;
    *(v29 + 32) = fabs(v32);
    sub_1C6D79AC0();
    sub_1C6D78D30("Refreshing mapping resource asynchronously due to age=%fs", *&v39);

    __swift_project_boxed_opaque_existential_1(v41 + 4, v41[7]);
    v34 = *MEMORY[0x1E69D63C0];
    v35 = sub_1C6D77F70();
    v36 = *(v35 - 8);
    v37 = v42;
    (*(v36 + 104))(v42, v34, v35);
    (*(v36 + 56))(v37, 0, 1, v35);
    sub_1C6D79370();

    sub_1C6BB66F4(v37, &qword_1EDCE5E20, MEMORY[0x1E69D63E8]);
  }

  *v45 = v14;
  return v14;
}

uint64_t sub_1C6BB57CC(uint64_t a1)
{
  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCE2358;
  v2 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C6B2064C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1C6D78D30("Failed to fetch sports location mapping resource. Error=%{public}@)", 67, 2, &dword_1C6B09000, v1, v2, v3);
}

uint64_t sub_1C6BB58F8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1C6BB5940(uint64_t a1)
{
  if (!qword_1EDCE62F0)
  {
    sub_1C6D770E0();
    v1 = MEMORY[0x1E69E39F8];
    sub_1C6BB6390(&qword_1EDCE61B0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A18]);
    sub_1C6BB6390(&unk_1EDCE61D0, v1, MEMORY[0x1E69E3A00]);
    sub_1C6BB6390(&unk_1EDCE61C0, v1, MEMORY[0x1E69E3A08]);
    v2 = sub_1C6D763F0();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDCE62F0);
    }
  }
}

uint64_t sub_1C6BB5A6C@<X0>(uint64_t a2@<X8>)
{
  v3 = [v2 recommendationProviders];
  if (v3)
  {
    v4 = v3;
    sub_1C6B0C69C(0, &unk_1EDCDF818, 0x1E69B6F98);
    sub_1C6D79770();
  }

  if (qword_1EDCE2350 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCE2358;
  v6 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  [v13 recommendationProviders];
  sub_1C6BB64E0(0, &qword_1EC1D7400, &unk_1EC1D7408, 0x1E695DF70, MEMORY[0x1E69E6720]);
  v8 = sub_1C6D795F0();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1C6D78D30("Failed to cast NTPBLocationRecommendationMapping.recommendationProviders as [NTPBRecommendationProvider]. NTPBLocationRecommendationMapping.recommendationProviders: %{public}@", 175, 2, &dword_1C6B09000, v5, v6, v7);

  sub_1C6BB63D8(0);
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

void sub_1C6BB6250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C6BB633C()
{
  result = qword_1EC1D73F0;
  if (!qword_1EC1D73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D73F0);
  }

  return result;
}

uint64_t sub_1C6BB6390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BB63D8(uint64_t a1)
{
  if (!qword_1EDCE61E8)
  {
    sub_1C6D770E0();
    sub_1C6BB6250(255, &unk_1EDCDFA30, sub_1C6BB647C, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE61E8);
    }
  }
}

void sub_1C6BB647C()
{
  if (!qword_1EDCDFB60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB60);
    }
  }
}

void sub_1C6BB64E0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0C69C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C6BB6548(uint64_t a1, uint64_t a2)
{
  sub_1C6BB63D8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BB65AC(uint64_t a1, uint64_t a2)
{
  sub_1C6BB63D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BB6610(uint64_t a1)
{
  sub_1C6BB63D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6BB66F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BB6250(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SportsLocationRecommendationMappingsService.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SportsLocationRecommendationMappingsService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6BB68B8()
{
  result = qword_1EC1D7418;
  if (!qword_1EC1D7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7418);
  }

  return result;
}

uint64_t dispatch thunk of LocalNewsAutoFavoritesProviderType.autoFavorites(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C6BB6A40;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C6BB6A40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1C6BB6B34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v43 = a2;
  v8 = sub_1C6D77E40();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C6D77570();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB6FCC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v38 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6BB7060(&qword_1EC1D7420, MEMORY[0x1E69B4608], MEMORY[0x1E69B4610]);
      v29 = v44;
      sub_1C6D75AF0();
      v31 = v40;
      sub_1C6D77560();
      v32 = sub_1C6D77E30();
      v34 = v33;
      sub_1C6B1C9F0(v26, v28);
      (*(v41 + 8))(v31, v42);
      (*(v39 + 8))(v13, v29);
      *a5 = v32;
      a5[1] = v34;
      v35 = *MEMORY[0x1E69E3650];
      v36 = sub_1C6D76F90();
      v37 = *(v36 - 8);
      (*(v37 + 104))(a5, v35, v36);
      (*(v37 + 56))(a5, 0, 1, v36);
    }
  }

  else
  {
    v30 = sub_1C6D76F90();
    (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
  }
}

void sub_1C6BB6FCC(uint64_t a1)
{
  if (!qword_1EDCE6020)
  {
    sub_1C6D77580();
    sub_1C6BB7060(&qword_1EDCE5FA0, MEMORY[0x1E69B4618], MEMORY[0x1E69B4600]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6020);
    }
  }
}

uint64_t sub_1C6BB7060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hasFeatures.getter()
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(v0 + *(v5 + 36), v4, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v6 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BB7DB4(v4, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return v7;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(uint64_t a1)
{
  result = qword_1EDCE2D80;
  if (!qword_1EDCE2D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.features.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(v1 + *(v7 + 36), v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v8 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  *(a1 + 3) = 0;
  *a1 = 0;
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return result;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hasEmbedding.getter()
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(v0 + *(v5 + 40), v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BB7DB4(v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return v7;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.embedding.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(v1 + *(v7 + 40), v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a1 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hasBodyEmbedding.getter()
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(v0 + *(v5 + 44), v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6BB7DB4(v4, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return v7;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.bodyEmbedding.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(v1 + *(v7 + 44), v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a1 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.topicIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1C6BB799C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(a1 + *(v8 + 36), v7, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v7, a2, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  *(a2 + 3) = 0;
  *a2 = 0;
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v7, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return result;
}

uint64_t sub_1C6BB7B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v8, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 36);
  sub_1C6BB7DB4(a2 + v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7E24(v8, a2 + v9, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.features.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 36);
  sub_1C6BB7DB4(v1 + v3, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7E24(a1, v1 + v3, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v4 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6BB7D34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BBB75C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6BB7DB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BBB75C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BB7E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.features.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 36);
  *(v5 + 12) = v16;
  sub_1C6BB7D34(v1 + v16, v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *(v15 + 3) = 0;
    *v15 = 0;
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return sub_1C6BB80E0;
}

uint64_t sub_1C6BB8128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.clearFeatures()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 36);
  sub_1C6BB7DB4(v0 + v1, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v2 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6BB8258@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(a1 + *(v8 + 40), v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t sub_1C6BB83F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 40);
  sub_1C6BB7DB4(a2 + v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(v8, a2 + v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.embedding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 40);
  sub_1C6BB7DB4(v1 + v3, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(a1, v1 + v3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.embedding.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 40);
  *(v5 + 12) = v16;
  sub_1C6BB7D34(v1 + v16, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6BBB7C0;
}

void sub_1C6BB884C(uint64_t **a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v16 = (*a1)[1];
  if (a2)
  {
    sub_1C6BB8128(v12, v11, a6);
    sub_1C6BB7DB4(v15 + v10, a3, a4);
    sub_1C6BB7E24(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1C6BB8984(v12, a5);
  }

  else
  {
    sub_1C6BB7DB4(v15 + v10, a3, a4);
    sub_1C6BB7E24(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v16);

  free(v9);
}

uint64_t sub_1C6BB8984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.clearEmbedding()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 40);
  sub_1C6BB7DB4(v0 + v1, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6BB8A7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(a1 + *(v8 + 44), v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v7, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t sub_1C6BB8C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 44);
  sub_1C6BB7DB4(a2 + v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(v8, a2 + v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.bodyEmbedding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 44);
  sub_1C6BB7DB4(v1 + v3, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7E24(a1, v1 + v3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.bodyEmbedding.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 44);
  *(v5 + 12) = v16;
  sub_1C6BB7D34(v1 + v16, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6BB9070;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.clearBodyEmbedding()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 44);
  sub_1C6BB7DB4(v0 + v1, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.adCategories.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 2) = v2;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6D78A30();
  v4 = v3[9];
  v5 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v3[10];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), &a1[v6], 1, 1, v7);
  v8 = &a1[v3[11]];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_1C6BB941C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7428);
  __swift_project_value_buffer(v0, qword_1EC1D7428);
  sub_1C6BBB75C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D824E0;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v5 = "topic_ids";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 2;
  *v9 = "publisher_id";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "features";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "length";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "embedding";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "body_embedding";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "ad_categories";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5998 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          goto LABEL_15;
        case 2:
          sub_1C6D78B50();
          break;
        case 3:
          sub_1C6BB9924(a1, v5, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_1C6BB9A8C(a1, v5, a2, a3);
      }

      else if (result == 7)
      {
LABEL_15:
        sub_1C6D78B10();
      }
    }

    else if (result == 4)
    {
      sub_1C6D78B90();
    }

    else
    {
      sub_1C6BB99D8(a1, v5, a2, a3);
    }
  }
}

uint64_t sub_1C6BB9924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  sub_1C6BBB714(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BB99D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BB9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C6D78C50(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1C6D78CA0(), !v4))
    {
      result = sub_1C6BB9C78(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 12))
        {
          sub_1C6D78CD0();
        }

        sub_1C6BB9EB8(v3, a1, a2, a3);
        sub_1C6BBA0F8(v3, a1, a2, a3);
        if (*(*(v3 + 16) + 16))
        {
          sub_1C6D78C50();
        }

        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
        return sub_1C6D78A20();
      }
    }
  }

  return result;
}

uint64_t sub_1C6BB9C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(a1 + *(v14 + 36), v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BBB714(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
}

uint64_t sub_1C6BB9EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(a1 + *(v14 + 40), v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6BBA0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BB7D34(a1 + *(v14 + 44), v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BBB714(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6BBB714(&qword_1EC1D7440, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BBA3C4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  *(a2 + 2) = v4;
  sub_1C6D78A30();
  v5 = a1[9];
  v6 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[10];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), &a2[v7], 1, 1, v8);
  v9 = &a2[a1[11]];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_1C6BBA4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6BBA568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6BBA630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BBB714(&qword_1EC1D7450, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BBA6AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5998 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BBA754(uint64_t a1)
{
  v2 = sub_1C6BBB714(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BBA7C0(uint64_t a1, uint64_t a2)
{
  sub_1C6BBB714(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B46Storage_CompressedSessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v79 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v81 = &v75 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = &v75 - v16;
  sub_1C6BBB640(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v75 - v22;
  v24 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v10);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v75 - v31;
  sub_1C6BBB640(0, &qword_1EC1D7458, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v75 - v36;
  v38 = *a1;
  v39 = *a2;
  v40 = *(*a1 + 16);
  if (v40 != *(*a2 + 16))
  {
    goto LABEL_40;
  }

  if (v40 && v38 != v39)
  {
    v41 = (v38 + 32);
    v42 = (v39 + 32);
    while (*v41 == *v42)
    {
      ++v41;
      ++v42;
      if (!--v40)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_40;
  }

LABEL_7:
  if (a1[2] != a2[2])
  {
LABEL_40:
    v65 = 0;
    return v65 & 1;
  }

  v43 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  v78 = a2;
  v44 = *(v43 + 36);
  v45 = a1;
  v46 = *(v34 + 48);
  v76 = v43;
  v77 = v45;
  sub_1C6BB7D34(v45 + v44, v37, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v47 = v78 + v44;
  v48 = v78;
  sub_1C6BB7D34(v47, &v37[v46], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v49 = *(v25 + 48);
  if (v49(v37, 1, v24) == 1)
  {
    if (v49(&v37[v46], 1, v24) == 1)
    {
      sub_1C6BB7DB4(v37, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      goto LABEL_16;
    }

LABEL_13:
    v50 = &qword_1EC1D7458;
    v51 = qword_1EDCE5190;
    v52 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures;
    v53 = v37;
LABEL_14:
    sub_1C6BBB6B8(v53, v50, v51, v52);
    goto LABEL_40;
  }

  sub_1C6BB7D34(v37, v32, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v49(&v37[v46], 1, v24) == 1)
  {
    sub_1C6BB8984(v32, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    goto LABEL_13;
  }

  sub_1C6BB7E24(&v37[v46], v28, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v54 = static Com_Apple_News_Personalization_ArticleFeatures.== infix(_:_:)(v32, v28);
  sub_1C6BB8984(v28, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB8984(v32, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7DB4(v37, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((v54 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  v55 = v77;
  if (v77[3] != v48[3])
  {
    goto LABEL_40;
  }

  v56 = *(v76 + 40);
  v57 = v84;
  v58 = *(v84 + 48);
  sub_1C6BB7D34(v77 + v56, v23, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v48 + v56, &v23[v58], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v59 = v86;
  v60 = *(v85 + 48);
  if (v60(v23, 1, v86) == 1)
  {
    if (v60(&v23[v58], 1, v59) == 1)
    {
      sub_1C6BB7DB4(v23, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v66 = v83;
  sub_1C6BB7D34(v23, v83, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v60(&v23[v58], 1, v59) == 1)
  {
    sub_1C6BB8984(v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_27:
    v50 = &qword_1EC1D6BA8;
    v51 = qword_1EDCEA710;
    v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v53 = v23;
    goto LABEL_14;
  }

  v67 = &v23[v58];
  v68 = v81;
  sub_1C6BB7E24(v67, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (!sub_1C6B5E090(*v66, *(v66 + 8), *v68, *(v68 + 8)))
  {
    sub_1C6BB8984(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v71 = v23;
LABEL_39:
    sub_1C6BB7DB4(v71, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_40;
  }

  v85 = *(v59 + 20);
  sub_1C6D78A40();
  sub_1C6BBB714(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v69 = sub_1C6D79560();
  sub_1C6BB8984(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v23, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v69 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v61 = *(v76 + 44);
  v62 = v48;
  v63 = *(v57 + 48);
  v64 = v82;
  sub_1C6BB7D34(v55 + v61, v82, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v62 + v61, v64 + v63, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v60(v64, 1, v59) == 1)
  {
    if (v60((v64 + v63), 1, v59) == 1)
    {
      sub_1C6BB7DB4(v64, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_23;
    }

    goto LABEL_33;
  }

  v70 = v80;
  sub_1C6BB7D34(v64, v80, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v60((v64 + v63), 1, v59) == 1)
  {
    sub_1C6BB8984(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_33:
    v50 = &qword_1EC1D6BA8;
    v51 = qword_1EDCEA710;
    v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v53 = v64;
    goto LABEL_14;
  }

  v72 = v79;
  sub_1C6BB7E24(v64 + v63, v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (!sub_1C6B5E090(*v70, *(v70 + 8), *v72, *(v72 + 8)))
  {
    sub_1C6BB8984(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v71 = v64;
    goto LABEL_39;
  }

  sub_1C6D78A40();
  sub_1C6BBB714(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v73 = sub_1C6D79560();
  sub_1C6BB8984(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v64, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v73 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_23:
  if ((sub_1C6B5AC24(*(v55 + 2), *(v78 + 2)) & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1C6D78A40();
  sub_1C6BBB714(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v65 = sub_1C6D79560();
  return v65 & 1;
}