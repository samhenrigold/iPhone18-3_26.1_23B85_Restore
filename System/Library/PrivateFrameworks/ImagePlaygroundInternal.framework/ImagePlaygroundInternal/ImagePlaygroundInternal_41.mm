uint64_t sub_1D26F9E18()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26F9F14, 0, 0);
}

uint64_t sub_1D26F9F14()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 624);
  if (*(v0 + 200))
  {

    if (v1 && (v3 = *(v1 + 16)) != 0)
    {
      v4 = (v1 + 40);
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = *(v0 + 480);
        v7 = *v4;
        *v6 = *(v4 - 1);
        v6[1] = v7;
        swift_storeEnumTagMultiPayload();
        sub_1D2870F68();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D27CC818(0, v5[2] + 1, 1, v5);
        }

        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          v5 = sub_1D27CC818((v8 > 1), v9 + 1, 1, v5);
        }

        v10 = *(v0 + 480);
        v11 = *(v0 + 368);
        v5[2] = v9 + 1;
        sub_1D2701854(v10, v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9);
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {

      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v5);
    v25 = *(v0 + 584);
  }

  else
  {
    v12 = *(v0 + 616);
    v13 = *(v0 + 488);

    v14 = sub_1D2691DF8(50, v12, v2);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x1D38A0BC0](v14, v16, v18, v20);
    v23 = v22;

    *v13 = v21;
    v13[1] = v23;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, *(v0 + 584));
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CC818((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = *(v0 + 488);
    v29 = *(v0 + 368);
    v25[2] = v27 + 1;
    sub_1D2701854(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27);
  }

  v30 = *(v0 + 576) + 1;
  if (v30 == *(v0 + 560))
  {
LABEL_19:
    v175 = *(v0 + 256);
    sub_1D274DDBC(v25);

    v31 = *(v0 + 8);

    return v31(v175);
  }

  v163 = (v0 + 264);
  v168 = (v0 + 272);
  v162 = (v0 + 280);
  v172 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v25;
    *(v0 + 576) = v30;
    v36 = *(v0 + 740);
    v37 = *(v0 + 552);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    sub_1D2872028();
    v40 = *(v38 + 88);
    v41 = v40(v37, v39);
    if (v41 == v36)
    {
      v42 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v42, *(v0 + 520));
      v43 = *v42;
      *(v0 + 592) = *v42;
      v44 = v42[1];
      *(v0 + 600) = v44;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
        goto LABEL_71;
      }

      v46 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v47 = sub_1D2878068();
      [v46 setString_];

      *v172 = 0;
      *(swift_task_alloc() + 16) = v172;
      sub_1D2878958();

      if (*v172 >= 50)
      {
        v128 = swift_task_alloc();
        *(v0 + 608) = v128;
        *v128 = v0;
        v128[1] = sub_1D26F8654;
        v129 = v0 + 216;
        goto LABEL_118;
      }

      v48 = *(v0 + 496);
      *v48 = v43;
      v48[1] = v44;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
      }

      v50 = v25[2];
      v49 = v25[3];
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v25 = sub_1D27CC818((v49 > 1), v50 + 1, 1, v25);
      }

      v33 = *(v0 + 496);
      goto LABEL_24;
    }

    if (v41 == *(v0 + 744))
    {
      v52 = *(v0 + 552);
      v170 = *(*(v0 + 528) + 96);
      v170(v52, *(v0 + 520));
      v53 = *v52;
      *(v0 + 640) = *v52;
      v54 = v52[1];
      *(v0 + 648) = v54;
      v55 = v52[3];
      if ((v54 & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(v54) & 0xF;
      }

      else
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (!v56)
      {
        goto LABEL_70;
      }

      v57 = v25;
      v164 = v40;
      v166 = v52[2];
      v58 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v59 = sub_1D2878068();
      [v58 setString_];

      *v168 = 0;
      *(swift_task_alloc() + 16) = v168;
      sub_1D2878958();

      if (*v168 >= 10)
      {
        v132 = v166;
        v169 = v54;
        v133 = v55;
        if (v55)
        {
          goto LABEL_133;
        }

        v134 = 0;
        do
        {
          v173 = *(v0 + 772);
          v135 = *(v0 + 544);
          v136 = *(v0 + 520);
          sub_1D2872028();
          v137 = v164(v135, v136);
          v138 = *(v0 + 544);
          if (v137 == v173)
          {
            v139 = *(v0 + 520);

            v170(v138, v139);
            v132 = *v138;
            v133 = v138[1];
          }

          else
          {
            (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
          }

          ++v134;
        }

        while (v134 != *(v0 + 560));

        if (v133)
        {
LABEL_133:
          *(v0 + 656) = v133;
          v148 = v169;
          if (v132 != v53 || (v149 = v169, v133 != v169))
          {
            if ((sub_1D2879618() & 1) == 0)
            {
              v151 = swift_task_alloc();
              *(v0 + 680) = v151;
              *v151 = v0;
              v151[1] = sub_1D26FCDE8;
              v152 = v0 + 136;
              v153 = v132;
              v154 = v133;
              v155 = v53;
              v156 = v169;
              goto LABEL_150;
            }

            v149 = v133;
          }
        }

        else
        {
          v149 = 0;
          v148 = v169;
        }

        *(v0 + 664) = v149;
        v159 = swift_task_alloc();
        *(v0 + 672) = v159;
        *v159 = v0;
        v159[1] = sub_1D26FB5E0;
        v129 = v0 + 96;
        v130 = v53;
        v131 = v148;
        goto LABEL_146;
      }

      v60 = *(v0 + 448);

      *v60 = v53;
      v60[1] = v54;
      swift_storeEnumTagMultiPayload();
      v25 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CC818(0, v57[2] + 1, 1, v57);
      }

      v50 = v25[2];
      v61 = v25[3];
      v51 = v50 + 1;
      if (v50 >= v61 >> 1)
      {
        v25 = sub_1D27CC818((v61 > 1), v50 + 1, 1, v25);
      }

      v33 = *(v0 + 448);
      goto LABEL_24;
    }

    if (v41 == *(v0 + 748))
    {
      break;
    }

    if (v41 != *(v0 + 752))
    {
      if (v41 == *(v0 + 756))
      {
        v76 = *(v0 + 552);
        v77 = *(v0 + 408);
        v78 = *(v0 + 352);
        v80 = *(v0 + 336);
        v79 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v76, *(v0 + 520));
        (*(v79 + 32))(v78, v76, v80);
        (*(v79 + 16))(v77, v78, v80);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v82 = v25[2];
        v81 = v25[3];
        v83 = v82 + 1;
        if (v82 >= v81 >> 1)
        {
          v25 = sub_1D27CC818((v81 > 1), v82 + 1, 1, v25);
        }

        v84 = *(v0 + 408);
        v85 = *(v0 + 368);
        v87 = *(v0 + 344);
        v86 = *(v0 + 352);
        v88 = *(v0 + 336);
      }

      else
      {
        if (v41 != *(v0 + 760))
        {
          if (v41 == *(v0 + 764))
          {
            v95 = *(v0 + 552);
            v96 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v95, *(v0 + 520));
            v97 = *v95;
            *v96 = v97;
            swift_storeEnumTagMultiPayload();
            v98 = v97;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v100 = v25[2];
            v99 = v25[3];
            v101 = v100 + 1;
            if (v100 >= v99 >> 1)
            {
              v25 = sub_1D27CC818((v99 > 1), v100 + 1, 1, v25);
            }

            v102 = *(v0 + 392);
          }

          else if (v41 == *(v0 + 768))
          {
            v103 = *(v0 + 552);
            v104 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v103, *(v0 + 520));
            v105 = *v103;
            v106 = type metadata accessor for PlaygroundImage(0);
            v107 = (v104 + v106[9]);
            *v107 = 0u;
            v107[1] = 0u;
            *(v104 + v106[10]) = xmmword_1D28809A0;
            v108 = v106[11];
            v109 = sub_1D2873AA8();
            (*(*(v109 - 8) + 56))(v104 + v108, 1, 1, v109);
            *v104 = v105;
            *(v104 + 8) = 0;
            *(v104 + 24) = 1;
            *(v104 + 16) = 0;
            *(v104 + 32) = 0;
            *(v104 + 40) = 0;
            *(v104 + v106[12]) = 0;
            v98 = v105;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v100 = v25[2];
            v110 = v25[3];
            v101 = v100 + 1;
            if (v100 >= v110 >> 1)
            {
              v25 = sub_1D27CC818((v110 > 1), v100 + 1, 1, v25);
            }

            v102 = *(v0 + 384);
          }

          else
          {
            if (v41 == *(v0 + 772))
            {
              v112 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v112, *(v0 + 520));
              v114 = *v112;
              v113 = v112[1];
              v115 = HIBYTE(v113) & 0xF;
              if ((v113 & 0x2000000000000000) == 0)
              {
                v115 = v114 & 0xFFFFFFFFFFFFLL;
              }

              if (!v115 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_71;
              }

              v126 = *(v0 + 416);
              *v126 = v114;
              v126[1] = v113;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
              }

              v50 = v25[2];
              v127 = v25[3];
              v51 = v50 + 1;
              if (v50 >= v127 >> 1)
              {
                v25 = sub_1D27CC818((v127 > 1), v50 + 1, 1, v25);
              }

              v33 = *(v0 + 416);
              goto LABEL_24;
            }

            v116 = *(v0 + 552);
            v117 = *(v0 + 528);
            v118 = *(v0 + 520);
            if (v41 != *(v0 + 776))
            {
              (*(v117 + 8))(*(v0 + 552), v118);
              goto LABEL_26;
            }

            v119 = *(v0 + 376);
            (*(v117 + 96))(*(v0 + 552), v118);
            v120 = *v116;
            v121 = type metadata accessor for PlaygroundImage(0);
            *(v119 + 32) = 0;
            *(v119 + 40) = 0;
            v122 = (v119 + v121[9]);
            *v122 = 0u;
            v122[1] = 0u;
            *(v119 + v121[10]) = xmmword_1D28809A0;
            v123 = v121[11];
            v124 = sub_1D2873AA8();
            (*(*(v124 - 8) + 56))(v119 + v123, 1, 1, v124);
            *v119 = v120;
            *(v119 + 8) = 3;
            *(v119 + 24) = 1;
            *(v119 + 16) = 0;
            *(v119 + v121[12]) = 0;
            v98 = v120;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v100 = v25[2];
            v125 = v25[3];
            v101 = v100 + 1;
            if (v100 >= v125 >> 1)
            {
              v25 = sub_1D27CC818((v125 > 1), v100 + 1, 1, v25);
            }

            v102 = *(v0 + 376);
          }

          v111 = *(v0 + 368);

          v25[2] = v101;
          v35 = v25 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v100;
          v33 = v102;
          goto LABEL_25;
        }

        v89 = *(v0 + 552);
        v90 = *(v0 + 400);
        v91 = *(v0 + 320);
        v92 = *(v0 + 328);
        v93 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v89, *(v0 + 520));
        (*(v91 + 32))(v92, v89, v93);
        (*(v91 + 16))(v90, v92, v93);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v82 = v25[2];
        v94 = v25[3];
        v83 = v82 + 1;
        if (v82 >= v94 >> 1)
        {
          v25 = sub_1D27CC818((v94 > 1), v82 + 1, 1, v25);
        }

        v84 = *(v0 + 400);
        v85 = *(v0 + 368);
        v87 = *(v0 + 320);
        v86 = *(v0 + 328);
        v88 = *(v0 + 312);
      }

      (*(v87 + 8))(v86, v88);
      v25[2] = v83;
      v35 = v25 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v82;
      v33 = v84;
      goto LABEL_25;
    }

    v70 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v70, *(v0 + 520));
    v43 = *v70;
    *(v0 + 616) = *v70;
    v44 = v70[1];
    *(v0 + 624) = v44;
    if ((v44 & 0x2000000000000000) != 0)
    {
      v71 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v71 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v71)
    {
      goto LABEL_71;
    }

    v72 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v73 = sub_1D2878068();
    [v72 setString_];

    *v162 = 0;
    *(swift_task_alloc() + 16) = v162;
    sub_1D2878958();

    if (*v162 >= 50)
    {
      v150 = swift_task_alloc();
      *(v0 + 632) = v150;
      *v150 = v0;
      v150[1] = sub_1D26F9E18;
      v129 = v0 + 176;
LABEL_118:
      v130 = v43;
LABEL_119:
      v131 = v44;
LABEL_146:

      return VisualSummarizationClient.summarizeContext(from:)(v129, v130, v131);
    }

    v74 = *(v0 + 472);
    *v74 = v43;
    v74[1] = v44;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v75 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v75 >> 1)
    {
      v25 = sub_1D27CC818((v75 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 472);
LABEL_24:
    v34 = *(v0 + 368);
    v25[2] = v51;
    v35 = v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v50;
LABEL_25:
    sub_1D2701854(v33, v35);
LABEL_26:
    v30 = *(v0 + 576) + 1;
    if (v30 == *(v0 + 560))
    {
      goto LABEL_19;
    }
  }

  v62 = *(v0 + 552);
  v167 = *(*(v0 + 528) + 96);
  v167(v62, *(v0 + 520));
  v63 = *v62;
  *(v0 + 688) = *v62;
  v44 = v62[1];
  *(v0 + 696) = v44;
  if ((v44 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v44) & 0xF;
  }

  else
  {
    v64 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {
LABEL_70:

LABEL_71:

    goto LABEL_26;
  }

  v171 = v62[3];
  v65 = v25;
  v165 = v62[2];
  v66 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v67 = sub_1D2878068();
  [v66 setString_];

  *v163 = 0;
  *(swift_task_alloc() + 16) = v163;
  sub_1D2878958();

  if (*v163 < 10)
  {
    v68 = *(v0 + 424);

    *v68 = v63;
    v68[1] = v44;
    swift_storeEnumTagMultiPayload();
    v25 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v65[2] + 1, 1, v65);
    }

    v50 = v25[2];
    v69 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v69 >> 1)
    {
      v25 = sub_1D27CC818((v69 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 424);
    goto LABEL_24;
  }

  v140 = v165;
  v174 = v63;
  if (!v171)
  {
    v171 = 0;
    v141 = 0;
    do
    {
      v142 = *(v0 + 772);
      v143 = *(v0 + 536);
      v144 = *(v0 + 520);
      sub_1D2872028();
      v145 = v40(v143, v144);
      v146 = *(v0 + 536);
      if (v145 == v142)
      {
        v147 = *(v0 + 520);

        v167(v146, v147);
        v140 = *v146;
        v171 = v146[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v141;
    }

    while (v141 != *(v0 + 560));

    v157 = v171;
    if (!v171)
    {
      v158 = v174;
      goto LABEL_154;
    }
  }

  v158 = v174;
  *(v0 + 704) = v171;
  if (v140 == v174)
  {
    v157 = v44;
    if (v171 == v44)
    {
      goto LABEL_154;
    }
  }

  if (sub_1D2879618())
  {
    v157 = v171;
LABEL_154:
    *(v0 + 712) = v157;
    v161 = swift_task_alloc();
    *(v0 + 720) = v161;
    *v161 = v0;
    v161[1] = sub_1D26FE5F0;
    v129 = v0 + 16;
    v130 = v158;
    goto LABEL_119;
  }

  v160 = swift_task_alloc();
  *(v0 + 728) = v160;
  *v160 = v0;
  v160[1] = sub_1D26FFDC4;
  v152 = v0 + 56;
  v153 = v140;
  v154 = v171;
  v155 = v174;
  v156 = v44;
LABEL_150:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v152, v153, v154, v155, v156);
}

uint64_t sub_1D26FB5E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FB6DC, 0, 0);
}

uint64_t sub_1D26FB6DC()
{
  v1 = *(v0 + 96);
  if (*(v0 + 120))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 456);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818((v7 > 1), v8 + 1, 1, v4);
          }

          v9 = *(v0 + 456);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v25 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 648);
    v12 = *(v0 + 640);
    v13 = *(v0 + 464);

    v14 = sub_1D2691DF8(50, v12, v11);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x1D38A0BC0](v14, v16, v18, v20);
    v23 = v22;

    *v13 = v21;
    v13[1] = v23;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, *(v0 + 584));
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CC818((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = *(v0 + 464);
    v29 = *(v0 + 368);
    v25[2] = v27 + 1;
    sub_1D2701854(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27);
  }

  v30 = *(v0 + 576) + 1;
  if (v30 == *(v0 + 560))
  {
LABEL_20:
    v173 = *(v0 + 256);
    sub_1D274DDBC(v25);

    v31 = *(v0 + 8);

    return v31(v173);
  }

  v164 = (v0 + 272);
  v160 = (v0 + 280);
  v161 = (v0 + 264);
  v167 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v25;
    *(v0 + 576) = v30;
    v36 = *(v0 + 740);
    v37 = *(v0 + 552);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    sub_1D2872028();
    v40 = *(v38 + 88);
    v41 = v40(v37, v39);
    if (v41 == v36)
    {
      v42 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v42, *(v0 + 520));
      v43 = *v42;
      *(v0 + 592) = *v42;
      v44 = v42[1];
      *(v0 + 600) = v44;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
        goto LABEL_61;
      }

      v46 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v47 = sub_1D2878068();
      [v46 setString_];

      *v167 = 0;
      *(swift_task_alloc() + 16) = v167;
      sub_1D2878958();

      if (*v167 >= 50)
      {
        v129 = swift_task_alloc();
        *(v0 + 608) = v129;
        *v129 = v0;
        v129[1] = sub_1D26F8654;
        v130 = v0 + 216;
        goto LABEL_118;
      }

      v48 = *(v0 + 496);
      *v48 = v43;
      v48[1] = v44;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
      }

      v50 = v25[2];
      v49 = v25[3];
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v25 = sub_1D27CC818((v49 > 1), v50 + 1, 1, v25);
      }

      v33 = *(v0 + 496);
      goto LABEL_25;
    }

    if (v41 != *(v0 + 744))
    {
      break;
    }

    v52 = *(v0 + 552);
    v165 = *(*(v0 + 528) + 96);
    v165(v52, *(v0 + 520));
    v53 = *v52;
    *(v0 + 640) = *v52;
    v54 = v52[1];
    *(v0 + 648) = v54;
    if ((v54 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v55 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {
      goto LABEL_60;
    }

    v170 = v52[3];
    v163 = v52[2];
    v56 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v57 = v54;
    v58 = v53;
    v59 = sub_1D2878068();
    [v56 setString_];

    *v164 = 0;
    *(swift_task_alloc() + 16) = v164;
    sub_1D2878958();

    if (*v164 >= 10)
    {
      if (v170)
      {
        goto LABEL_132;
      }

      v170 = 0;
      v133 = 0;
      do
      {
        v168 = *(v0 + 772);
        v134 = *(v0 + 544);
        v135 = *(v0 + 520);
        sub_1D2872028();
        v136 = v40(v134, v135);
        v137 = *(v0 + 544);
        if (v136 == v168)
        {
          v138 = *(v0 + 520);

          v165(v137, v138);
          v163 = *v137;
          v170 = v137[1];
        }

        else
        {
          (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
        }

        ++v133;
      }

      while (v133 != *(v0 + 560));

      v148 = v170;
      if (v170)
      {
LABEL_132:
        *(v0 + 656) = v170;
        v149 = v58;
        v150 = v57;
        if (v163 != v58 || (v148 = v57, v170 != v57))
        {
          if ((sub_1D2879618() & 1) == 0)
          {
            v152 = swift_task_alloc();
            *(v0 + 680) = v152;
            *v152 = v0;
            v152[1] = sub_1D26FCDE8;
            v153 = v0 + 136;
            v154 = v163;
            v155 = v170;
            goto LABEL_146;
          }

          v148 = v170;
        }
      }

      else
      {
        v149 = v58;
        v150 = v57;
      }

      *(v0 + 664) = v148;
      v157 = swift_task_alloc();
      *(v0 + 672) = v157;
      *v157 = v0;
      v157[1] = sub_1D26FB5E0;
      v130 = v0 + 96;
LABEL_151:
      v131 = v149;
      v132 = v150;
      goto LABEL_152;
    }

    v60 = *(v0 + 448);

    *v60 = v58;
    v60[1] = v57;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v61 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v61 >> 1)
    {
      v25 = sub_1D27CC818((v61 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 448);
LABEL_25:
    v34 = *(v0 + 368);
    v25[2] = v51;
    v35 = v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v50;
LABEL_26:
    sub_1D2701854(v33, v35);
LABEL_27:
    v30 = *(v0 + 576) + 1;
    if (v30 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  if (v41 != *(v0 + 748))
  {
    if (v41 != *(v0 + 752))
    {
      if (v41 == *(v0 + 756))
      {
        v77 = *(v0 + 552);
        v78 = *(v0 + 408);
        v79 = *(v0 + 352);
        v80 = *(v0 + 336);
        v81 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v77, *(v0 + 520));
        (*(v81 + 32))(v79, v77, v80);
        (*(v81 + 16))(v78, v79, v80);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v83 = v25[2];
        v82 = v25[3];
        v84 = v83 + 1;
        if (v83 >= v82 >> 1)
        {
          v25 = sub_1D27CC818((v82 > 1), v83 + 1, 1, v25);
        }

        v85 = *(v0 + 408);
        v86 = *(v0 + 368);
        v88 = *(v0 + 344);
        v87 = *(v0 + 352);
        v89 = *(v0 + 336);
      }

      else
      {
        if (v41 != *(v0 + 760))
        {
          if (v41 == *(v0 + 764))
          {
            v96 = *(v0 + 552);
            v97 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v96, *(v0 + 520));
            v98 = *v96;
            *v97 = v98;
            swift_storeEnumTagMultiPayload();
            v99 = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v101 = v25[2];
            v100 = v25[3];
            v102 = v101 + 1;
            if (v101 >= v100 >> 1)
            {
              v25 = sub_1D27CC818((v100 > 1), v101 + 1, 1, v25);
            }

            v103 = *(v0 + 392);
          }

          else if (v41 == *(v0 + 768))
          {
            v104 = *(v0 + 552);
            v105 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v104, *(v0 + 520));
            v106 = *v104;
            v107 = type metadata accessor for PlaygroundImage(0);
            v108 = (v105 + v107[9]);
            *v108 = 0u;
            v108[1] = 0u;
            *(v105 + v107[10]) = xmmword_1D28809A0;
            v109 = v107[11];
            v110 = sub_1D2873AA8();
            (*(*(v110 - 8) + 56))(v105 + v109, 1, 1, v110);
            *v105 = v106;
            *(v105 + 8) = 0;
            *(v105 + 24) = 1;
            *(v105 + 16) = 0;
            *(v105 + 32) = 0;
            *(v105 + 40) = 0;
            *(v105 + v107[12]) = 0;
            v99 = v106;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v101 = v25[2];
            v111 = v25[3];
            v102 = v101 + 1;
            if (v101 >= v111 >> 1)
            {
              v25 = sub_1D27CC818((v111 > 1), v101 + 1, 1, v25);
            }

            v103 = *(v0 + 384);
          }

          else
          {
            if (v41 == *(v0 + 772))
            {
              v113 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v113, *(v0 + 520));
              v114 = *v113;
              v115 = v113[1];
              v116 = HIBYTE(v115) & 0xF;
              if ((v115 & 0x2000000000000000) == 0)
              {
                v116 = v114 & 0xFFFFFFFFFFFFLL;
              }

              if (!v116 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_61;
              }

              v127 = *(v0 + 416);
              *v127 = v114;
              v127[1] = v115;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
              }

              v50 = v25[2];
              v128 = v25[3];
              v51 = v50 + 1;
              if (v50 >= v128 >> 1)
              {
                v25 = sub_1D27CC818((v128 > 1), v50 + 1, 1, v25);
              }

              v33 = *(v0 + 416);
              goto LABEL_25;
            }

            v117 = *(v0 + 552);
            v118 = *(v0 + 528);
            v119 = *(v0 + 520);
            if (v41 != *(v0 + 776))
            {
              (*(v118 + 8))(*(v0 + 552), v119);
              goto LABEL_27;
            }

            v120 = *(v0 + 376);
            (*(v118 + 96))(*(v0 + 552), v119);
            v121 = *v117;
            v122 = type metadata accessor for PlaygroundImage(0);
            *(v120 + 32) = 0;
            *(v120 + 40) = 0;
            v123 = (v120 + v122[9]);
            *v123 = 0u;
            v123[1] = 0u;
            *(v120 + v122[10]) = xmmword_1D28809A0;
            v124 = v122[11];
            v125 = sub_1D2873AA8();
            (*(*(v125 - 8) + 56))(v120 + v124, 1, 1, v125);
            *v120 = v121;
            *(v120 + 8) = 3;
            *(v120 + 24) = 1;
            *(v120 + 16) = 0;
            *(v120 + v122[12]) = 0;
            v99 = v121;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v101 = v25[2];
            v126 = v25[3];
            v102 = v101 + 1;
            if (v101 >= v126 >> 1)
            {
              v25 = sub_1D27CC818((v126 > 1), v101 + 1, 1, v25);
            }

            v103 = *(v0 + 376);
          }

          v112 = *(v0 + 368);

          v25[2] = v102;
          v35 = v25 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v101;
          v33 = v103;
          goto LABEL_26;
        }

        v90 = *(v0 + 552);
        v91 = *(v0 + 400);
        v93 = *(v0 + 320);
        v92 = *(v0 + 328);
        v94 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v90, *(v0 + 520));
        (*(v93 + 32))(v92, v90, v94);
        (*(v93 + 16))(v91, v92, v94);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v83 = v25[2];
        v95 = v25[3];
        v84 = v83 + 1;
        if (v83 >= v95 >> 1)
        {
          v25 = sub_1D27CC818((v95 > 1), v83 + 1, 1, v25);
        }

        v85 = *(v0 + 400);
        v86 = *(v0 + 368);
        v88 = *(v0 + 320);
        v87 = *(v0 + 328);
        v89 = *(v0 + 312);
      }

      (*(v88 + 8))(v87, v89);
      v25[2] = v84;
      v35 = v25 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v83;
      v33 = v85;
      goto LABEL_26;
    }

    v71 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v71, *(v0 + 520));
    v43 = *v71;
    *(v0 + 616) = *v71;
    v44 = v71[1];
    *(v0 + 624) = v44;
    if ((v44 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v72 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72)
    {
      goto LABEL_61;
    }

    v73 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v74 = sub_1D2878068();
    [v73 setString_];

    *v160 = 0;
    *(swift_task_alloc() + 16) = v160;
    sub_1D2878958();

    if (*v160 >= 50)
    {
      v151 = swift_task_alloc();
      *(v0 + 632) = v151;
      *v151 = v0;
      v151[1] = sub_1D26F9E18;
      v130 = v0 + 176;
LABEL_118:
      v131 = v43;
      v132 = v44;
LABEL_152:

      return VisualSummarizationClient.summarizeContext(from:)(v130, v131, v132);
    }

    v75 = *(v0 + 472);
    *v75 = v43;
    v75[1] = v44;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v76 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v76 >> 1)
    {
      v25 = sub_1D27CC818((v76 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 472);
    goto LABEL_25;
  }

  v62 = *(v0 + 552);
  v166 = *(*(v0 + 528) + 96);
  v166(v62, *(v0 + 520));
  v63 = *v62;
  *(v0 + 688) = *v62;
  v64 = v62[1];
  *(v0 + 696) = v64;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v65 = HIBYTE(v64) & 0xF;
  }

  else
  {
    v65 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {
LABEL_60:

LABEL_61:

    goto LABEL_27;
  }

  v171 = v62[3];
  v162 = v62[2];
  v66 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v67 = v63;
  v68 = sub_1D2878068();
  [v66 setString_];

  *v161 = 0;
  *(swift_task_alloc() + 16) = v161;
  sub_1D2878958();

  if (*v161 < 10)
  {
    v69 = *(v0 + 424);

    *v69 = v67;
    v69[1] = v64;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v70 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v70 >> 1)
    {
      v25 = sub_1D27CC818((v70 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 424);
    goto LABEL_25;
  }

  v139 = v162;
  v169 = v64;
  v140 = v67;
  v141 = v171;
  if (!v171)
  {
    v142 = 0;
    do
    {
      v172 = *(v0 + 772);
      v143 = *(v0 + 536);
      v144 = *(v0 + 520);
      sub_1D2872028();
      v145 = v40(v143, v144);
      v146 = *(v0 + 536);
      if (v145 == v172)
      {
        v147 = *(v0 + 520);

        v166(v146, v147);
        v139 = *v146;
        v141 = v146[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v142;
    }

    while (v142 != *(v0 + 560));

    if (!v141)
    {
      v156 = 0;
      v149 = v140;
      v150 = v169;
LABEL_150:
      *(v0 + 712) = v156;
      v159 = swift_task_alloc();
      *(v0 + 720) = v159;
      *v159 = v0;
      v159[1] = sub_1D26FE5F0;
      v130 = v0 + 16;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v141;
  v149 = v140;
  v150 = v169;
  if (v139 == v140)
  {
    v156 = v169;
    if (v141 == v169)
    {
      goto LABEL_150;
    }
  }

  if (sub_1D2879618())
  {
    v156 = v141;
    goto LABEL_150;
  }

  v158 = swift_task_alloc();
  *(v0 + 728) = v158;
  *v158 = v0;
  v158[1] = sub_1D26FFDC4;
  v153 = v0 + 56;
  v154 = v139;
  v155 = v141;
LABEL_146:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v153, v154, v155, v149, v150);
}

uint64_t sub_1D26FCDE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FCEE4, 0, 0);
}

uint64_t sub_1D26FCEE4()
{
  v1 = *(v0 + 136);
  if (*(v0 + 160))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 456);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818((v7 > 1), v8 + 1, 1, v4);
          }

          v9 = *(v0 + 456);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v25 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 648);
    v12 = *(v0 + 640);
    v13 = *(v0 + 464);

    v14 = sub_1D2691DF8(50, v12, v11);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x1D38A0BC0](v14, v16, v18, v20);
    v23 = v22;

    *v13 = v21;
    v13[1] = v23;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, *(v0 + 584));
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CC818((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = *(v0 + 464);
    v29 = *(v0 + 368);
    v25[2] = v27 + 1;
    sub_1D2701854(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27);
  }

  v30 = *(v0 + 576) + 1;
  if (v30 == *(v0 + 560))
  {
LABEL_20:
    v173 = *(v0 + 256);
    sub_1D274DDBC(v25);

    v31 = *(v0 + 8);

    return v31(v173);
  }

  v164 = (v0 + 272);
  v160 = (v0 + 280);
  v161 = (v0 + 264);
  v167 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v25;
    *(v0 + 576) = v30;
    v36 = *(v0 + 740);
    v37 = *(v0 + 552);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    sub_1D2872028();
    v40 = *(v38 + 88);
    v41 = v40(v37, v39);
    if (v41 == v36)
    {
      v42 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v42, *(v0 + 520));
      v43 = *v42;
      *(v0 + 592) = *v42;
      v44 = v42[1];
      *(v0 + 600) = v44;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
        goto LABEL_61;
      }

      v46 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v47 = sub_1D2878068();
      [v46 setString_];

      *v167 = 0;
      *(swift_task_alloc() + 16) = v167;
      sub_1D2878958();

      if (*v167 >= 50)
      {
        v129 = swift_task_alloc();
        *(v0 + 608) = v129;
        *v129 = v0;
        v129[1] = sub_1D26F8654;
        v130 = v0 + 216;
        goto LABEL_118;
      }

      v48 = *(v0 + 496);
      *v48 = v43;
      v48[1] = v44;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
      }

      v50 = v25[2];
      v49 = v25[3];
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v25 = sub_1D27CC818((v49 > 1), v50 + 1, 1, v25);
      }

      v33 = *(v0 + 496);
      goto LABEL_25;
    }

    if (v41 != *(v0 + 744))
    {
      break;
    }

    v52 = *(v0 + 552);
    v165 = *(*(v0 + 528) + 96);
    v165(v52, *(v0 + 520));
    v53 = *v52;
    *(v0 + 640) = *v52;
    v54 = v52[1];
    *(v0 + 648) = v54;
    if ((v54 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v55 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {
      goto LABEL_60;
    }

    v170 = v52[3];
    v163 = v52[2];
    v56 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v57 = v54;
    v58 = v53;
    v59 = sub_1D2878068();
    [v56 setString_];

    *v164 = 0;
    *(swift_task_alloc() + 16) = v164;
    sub_1D2878958();

    if (*v164 >= 10)
    {
      if (v170)
      {
        goto LABEL_132;
      }

      v170 = 0;
      v133 = 0;
      do
      {
        v168 = *(v0 + 772);
        v134 = *(v0 + 544);
        v135 = *(v0 + 520);
        sub_1D2872028();
        v136 = v40(v134, v135);
        v137 = *(v0 + 544);
        if (v136 == v168)
        {
          v138 = *(v0 + 520);

          v165(v137, v138);
          v163 = *v137;
          v170 = v137[1];
        }

        else
        {
          (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
        }

        ++v133;
      }

      while (v133 != *(v0 + 560));

      v148 = v170;
      if (v170)
      {
LABEL_132:
        *(v0 + 656) = v170;
        v149 = v58;
        v150 = v57;
        if (v163 != v58 || (v148 = v57, v170 != v57))
        {
          if ((sub_1D2879618() & 1) == 0)
          {
            v152 = swift_task_alloc();
            *(v0 + 680) = v152;
            *v152 = v0;
            v152[1] = sub_1D26FCDE8;
            v153 = v0 + 136;
            v154 = v163;
            v155 = v170;
            goto LABEL_146;
          }

          v148 = v170;
        }
      }

      else
      {
        v149 = v58;
        v150 = v57;
      }

      *(v0 + 664) = v148;
      v157 = swift_task_alloc();
      *(v0 + 672) = v157;
      *v157 = v0;
      v157[1] = sub_1D26FB5E0;
      v130 = v0 + 96;
LABEL_151:
      v131 = v149;
      v132 = v150;
      goto LABEL_152;
    }

    v60 = *(v0 + 448);

    *v60 = v58;
    v60[1] = v57;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v61 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v61 >> 1)
    {
      v25 = sub_1D27CC818((v61 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 448);
LABEL_25:
    v34 = *(v0 + 368);
    v25[2] = v51;
    v35 = v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v50;
LABEL_26:
    sub_1D2701854(v33, v35);
LABEL_27:
    v30 = *(v0 + 576) + 1;
    if (v30 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  if (v41 != *(v0 + 748))
  {
    if (v41 != *(v0 + 752))
    {
      if (v41 == *(v0 + 756))
      {
        v77 = *(v0 + 552);
        v78 = *(v0 + 408);
        v79 = *(v0 + 352);
        v80 = *(v0 + 336);
        v81 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v77, *(v0 + 520));
        (*(v81 + 32))(v79, v77, v80);
        (*(v81 + 16))(v78, v79, v80);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v83 = v25[2];
        v82 = v25[3];
        v84 = v83 + 1;
        if (v83 >= v82 >> 1)
        {
          v25 = sub_1D27CC818((v82 > 1), v83 + 1, 1, v25);
        }

        v85 = *(v0 + 408);
        v86 = *(v0 + 368);
        v88 = *(v0 + 344);
        v87 = *(v0 + 352);
        v89 = *(v0 + 336);
      }

      else
      {
        if (v41 != *(v0 + 760))
        {
          if (v41 == *(v0 + 764))
          {
            v96 = *(v0 + 552);
            v97 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v96, *(v0 + 520));
            v98 = *v96;
            *v97 = v98;
            swift_storeEnumTagMultiPayload();
            v99 = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v101 = v25[2];
            v100 = v25[3];
            v102 = v101 + 1;
            if (v101 >= v100 >> 1)
            {
              v25 = sub_1D27CC818((v100 > 1), v101 + 1, 1, v25);
            }

            v103 = *(v0 + 392);
          }

          else if (v41 == *(v0 + 768))
          {
            v104 = *(v0 + 552);
            v105 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v104, *(v0 + 520));
            v106 = *v104;
            v107 = type metadata accessor for PlaygroundImage(0);
            v108 = (v105 + v107[9]);
            *v108 = 0u;
            v108[1] = 0u;
            *(v105 + v107[10]) = xmmword_1D28809A0;
            v109 = v107[11];
            v110 = sub_1D2873AA8();
            (*(*(v110 - 8) + 56))(v105 + v109, 1, 1, v110);
            *v105 = v106;
            *(v105 + 8) = 0;
            *(v105 + 24) = 1;
            *(v105 + 16) = 0;
            *(v105 + 32) = 0;
            *(v105 + 40) = 0;
            *(v105 + v107[12]) = 0;
            v99 = v106;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v101 = v25[2];
            v111 = v25[3];
            v102 = v101 + 1;
            if (v101 >= v111 >> 1)
            {
              v25 = sub_1D27CC818((v111 > 1), v101 + 1, 1, v25);
            }

            v103 = *(v0 + 384);
          }

          else
          {
            if (v41 == *(v0 + 772))
            {
              v113 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v113, *(v0 + 520));
              v114 = *v113;
              v115 = v113[1];
              v116 = HIBYTE(v115) & 0xF;
              if ((v115 & 0x2000000000000000) == 0)
              {
                v116 = v114 & 0xFFFFFFFFFFFFLL;
              }

              if (!v116 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_61;
              }

              v127 = *(v0 + 416);
              *v127 = v114;
              v127[1] = v115;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
              }

              v50 = v25[2];
              v128 = v25[3];
              v51 = v50 + 1;
              if (v50 >= v128 >> 1)
              {
                v25 = sub_1D27CC818((v128 > 1), v50 + 1, 1, v25);
              }

              v33 = *(v0 + 416);
              goto LABEL_25;
            }

            v117 = *(v0 + 552);
            v118 = *(v0 + 528);
            v119 = *(v0 + 520);
            if (v41 != *(v0 + 776))
            {
              (*(v118 + 8))(*(v0 + 552), v119);
              goto LABEL_27;
            }

            v120 = *(v0 + 376);
            (*(v118 + 96))(*(v0 + 552), v119);
            v121 = *v117;
            v122 = type metadata accessor for PlaygroundImage(0);
            *(v120 + 32) = 0;
            *(v120 + 40) = 0;
            v123 = (v120 + v122[9]);
            *v123 = 0u;
            v123[1] = 0u;
            *(v120 + v122[10]) = xmmword_1D28809A0;
            v124 = v122[11];
            v125 = sub_1D2873AA8();
            (*(*(v125 - 8) + 56))(v120 + v124, 1, 1, v125);
            *v120 = v121;
            *(v120 + 8) = 3;
            *(v120 + 24) = 1;
            *(v120 + 16) = 0;
            *(v120 + v122[12]) = 0;
            v99 = v121;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v101 = v25[2];
            v126 = v25[3];
            v102 = v101 + 1;
            if (v101 >= v126 >> 1)
            {
              v25 = sub_1D27CC818((v126 > 1), v101 + 1, 1, v25);
            }

            v103 = *(v0 + 376);
          }

          v112 = *(v0 + 368);

          v25[2] = v102;
          v35 = v25 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v101;
          v33 = v103;
          goto LABEL_26;
        }

        v90 = *(v0 + 552);
        v91 = *(v0 + 400);
        v93 = *(v0 + 320);
        v92 = *(v0 + 328);
        v94 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v90, *(v0 + 520));
        (*(v93 + 32))(v92, v90, v94);
        (*(v93 + 16))(v91, v92, v94);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v83 = v25[2];
        v95 = v25[3];
        v84 = v83 + 1;
        if (v83 >= v95 >> 1)
        {
          v25 = sub_1D27CC818((v95 > 1), v83 + 1, 1, v25);
        }

        v85 = *(v0 + 400);
        v86 = *(v0 + 368);
        v88 = *(v0 + 320);
        v87 = *(v0 + 328);
        v89 = *(v0 + 312);
      }

      (*(v88 + 8))(v87, v89);
      v25[2] = v84;
      v35 = v25 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v83;
      v33 = v85;
      goto LABEL_26;
    }

    v71 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v71, *(v0 + 520));
    v43 = *v71;
    *(v0 + 616) = *v71;
    v44 = v71[1];
    *(v0 + 624) = v44;
    if ((v44 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v72 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72)
    {
      goto LABEL_61;
    }

    v73 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v74 = sub_1D2878068();
    [v73 setString_];

    *v160 = 0;
    *(swift_task_alloc() + 16) = v160;
    sub_1D2878958();

    if (*v160 >= 50)
    {
      v151 = swift_task_alloc();
      *(v0 + 632) = v151;
      *v151 = v0;
      v151[1] = sub_1D26F9E18;
      v130 = v0 + 176;
LABEL_118:
      v131 = v43;
      v132 = v44;
LABEL_152:

      return VisualSummarizationClient.summarizeContext(from:)(v130, v131, v132);
    }

    v75 = *(v0 + 472);
    *v75 = v43;
    v75[1] = v44;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v76 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v76 >> 1)
    {
      v25 = sub_1D27CC818((v76 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 472);
    goto LABEL_25;
  }

  v62 = *(v0 + 552);
  v166 = *(*(v0 + 528) + 96);
  v166(v62, *(v0 + 520));
  v63 = *v62;
  *(v0 + 688) = *v62;
  v64 = v62[1];
  *(v0 + 696) = v64;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v65 = HIBYTE(v64) & 0xF;
  }

  else
  {
    v65 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {
LABEL_60:

LABEL_61:

    goto LABEL_27;
  }

  v171 = v62[3];
  v162 = v62[2];
  v66 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v67 = v63;
  v68 = sub_1D2878068();
  [v66 setString_];

  *v161 = 0;
  *(swift_task_alloc() + 16) = v161;
  sub_1D2878958();

  if (*v161 < 10)
  {
    v69 = *(v0 + 424);

    *v69 = v67;
    v69[1] = v64;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v70 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v70 >> 1)
    {
      v25 = sub_1D27CC818((v70 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 424);
    goto LABEL_25;
  }

  v139 = v162;
  v169 = v64;
  v140 = v67;
  v141 = v171;
  if (!v171)
  {
    v142 = 0;
    do
    {
      v172 = *(v0 + 772);
      v143 = *(v0 + 536);
      v144 = *(v0 + 520);
      sub_1D2872028();
      v145 = v40(v143, v144);
      v146 = *(v0 + 536);
      if (v145 == v172)
      {
        v147 = *(v0 + 520);

        v166(v146, v147);
        v139 = *v146;
        v141 = v146[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v142;
    }

    while (v142 != *(v0 + 560));

    if (!v141)
    {
      v156 = 0;
      v149 = v140;
      v150 = v169;
LABEL_150:
      *(v0 + 712) = v156;
      v159 = swift_task_alloc();
      *(v0 + 720) = v159;
      *v159 = v0;
      v159[1] = sub_1D26FE5F0;
      v130 = v0 + 16;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v141;
  v149 = v140;
  v150 = v169;
  if (v139 == v140)
  {
    v156 = v169;
    if (v141 == v169)
    {
      goto LABEL_150;
    }
  }

  if (sub_1D2879618())
  {
    v156 = v141;
    goto LABEL_150;
  }

  v158 = swift_task_alloc();
  *(v0 + 728) = v158;
  *v158 = v0;
  v158[1] = sub_1D26FFDC4;
  v153 = v0 + 56;
  v154 = v139;
  v155 = v141;
LABEL_146:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v153, v154, v155, v149, v150);
}

uint64_t sub_1D26FE5F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FE6EC, 0, 0);
}

uint64_t sub_1D26FE6EC()
{
  v1 = *(v0 + 16);
  if (*(v0 + 40))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 432);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818((v7 > 1), v8 + 1, 1, v4);
          }

          v9 = *(v0 + 432);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v25 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 696);
    v12 = *(v0 + 688);
    v13 = *(v0 + 440);

    v14 = sub_1D2691DF8(50, v12, v11);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x1D38A0BC0](v14, v16, v18, v20);
    v23 = v22;

    *v13 = v21;
    v13[1] = v23;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, *(v0 + 584));
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CC818((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = *(v0 + 440);
    v29 = *(v0 + 368);
    v25[2] = v27 + 1;
    sub_1D2701854(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27);
  }

  v30 = *(v0 + 576) + 1;
  if (v30 == *(v0 + 560))
  {
LABEL_20:
    v169 = *(v0 + 256);
    sub_1D274DDBC(v25);

    v31 = *(v0 + 8);

    return v31(v169);
  }

  v160 = (v0 + 272);
  v154 = (v0 + 280);
  v155 = (v0 + 264);
  v164 = (v0 + 288);
  v33 = 0x1E6977000uLL;
  while (1)
  {
    *(v0 + 584) = v25;
    *(v0 + 576) = v30;
    v34 = *(v0 + 740);
    v35 = *(v0 + 552);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    sub_1D2872028();
    v38 = *(v36 + 88);
    v39 = v38(v35, v37);
    if (v39 == v34)
    {
      v40 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v40, *(v0 + 520));
      v41 = *v40;
      *(v0 + 592) = *v40;
      v42 = v40[1];
      *(v0 + 600) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v44 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
        v45 = sub_1D2878068();
        [v44 setString_];

        *v164 = 0;
        *(swift_task_alloc() + 16) = v164;
        sub_1D2878958();

        if (*v164 >= 50)
        {
          v126 = swift_task_alloc();
          *(v0 + 608) = v126;
          *v126 = v0;
          v126[1] = sub_1D26F8654;
          v127 = v0 + 216;
          goto LABEL_119;
        }

        v46 = *(v0 + 496);
        *v46 = v41;
        v46[1] = v42;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v48 = v25[2];
        v47 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v25 = sub_1D27CC818((v47 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 496);
        goto LABEL_71;
      }

      goto LABEL_24;
    }

    if (v39 == *(v0 + 744))
    {
      v51 = *(v0 + 552);
      v161 = *(*(v0 + 528) + 96);
      v161(v51, *(v0 + 520));
      v52 = *v51;
      *(v0 + 640) = *v51;
      v42 = v51[1];
      *(v0 + 648) = v42;
      v53 = v51[3];
      if ((v42 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v54 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        v156 = v38;
        v165 = v25;
        v158 = v51[2];
        v55 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
        v56 = sub_1D2878068();
        [v55 setString_];

        *v160 = 0;
        *(swift_task_alloc() + 16) = v160;
        sub_1D2878958();

        if (*v160 >= 10)
        {
          if (v53)
          {
            goto LABEL_133;
          }

          v129 = 0;
          v130 = 0;
          do
          {
            v167 = *(v0 + 772);
            v131 = *(v0 + 544);
            v132 = *(v0 + 520);
            sub_1D2872028();
            v133 = v156(v131, v132);
            v134 = *(v0 + 544);
            if (v133 == v167)
            {
              v135 = *(v0 + 520);

              v161(v134, v135);
              v129 = v134[1];
              v158 = *v134;
            }

            else
            {
              (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
            }

            ++v130;
          }

          while (v130 != *(v0 + 560));

          v53 = v129;
          if (v129)
          {
LABEL_133:
            *(v0 + 656) = v53;
            if (v158 != v52 || (v143 = v42, v53 != v42))
            {
              if ((sub_1D2879618() & 1) == 0)
              {
                v145 = swift_task_alloc();
                *(v0 + 680) = v145;
                *v145 = v0;
                v145[1] = sub_1D26FCDE8;
                v146 = v0 + 136;
                v147 = v158;
                v148 = v53;
                v149 = v52;
                goto LABEL_147;
              }

              v143 = v53;
            }
          }

          else
          {
            v143 = 0;
          }

          *(v0 + 664) = v143;
          v151 = swift_task_alloc();
          *(v0 + 672) = v151;
          *v151 = v0;
          v151[1] = sub_1D26FB5E0;
          v127 = v0 + 96;
          v128 = v52;
          goto LABEL_152;
        }

        v57 = *(v0 + 448);

        *v57 = v52;
        v57[1] = v42;
        swift_storeEnumTagMultiPayload();
        v25 = v165;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v165[2] + 1, 1, v165);
        }

        v33 = 0x1E6977000;
        v48 = v25[2];
        v58 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v58 >> 1)
        {
          v25 = sub_1D27CC818((v58 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 448);
LABEL_71:
        v72 = *(v0 + 368);
        v25[2] = v49;
        v73 = v25 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v48;
        goto LABEL_72;
      }

LABEL_59:

      goto LABEL_24;
    }

    if (v39 == *(v0 + 748))
    {
      break;
    }

    if (v39 == *(v0 + 752))
    {
      v66 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v66, *(v0 + 520));
      v41 = *v66;
      *(v0 + 616) = *v66;
      v42 = v66[1];
      *(v0 + 624) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v67 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
        v68 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
        v69 = sub_1D2878068();
        [v68 setString_];

        *v154 = 0;
        *(swift_task_alloc() + 16) = v154;
        sub_1D2878958();

        if (*v154 >= 50)
        {
          v144 = swift_task_alloc();
          *(v0 + 632) = v144;
          *v144 = v0;
          v144[1] = sub_1D26F9E18;
          v127 = v0 + 176;
LABEL_119:
          v128 = v41;
LABEL_152:

          return VisualSummarizationClient.summarizeContext(from:)(v127, v128, v42);
        }

        v70 = *(v0 + 472);
        *v70 = v41;
        v70[1] = v42;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v48 = v25[2];
        v71 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v71 >> 1)
        {
          v25 = sub_1D27CC818((v71 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 472);
        goto LABEL_71;
      }
    }

    else
    {
      if (v39 == *(v0 + 756))
      {
        v74 = *(v0 + 552);
        v75 = *(v0 + 408);
        v76 = *(v0 + 352);
        v78 = *(v0 + 336);
        v77 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v74, *(v0 + 520));
        (*(v77 + 32))(v76, v74, v78);
        (*(v77 + 16))(v75, v76, v78);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v79 = v25[3];
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v25 = sub_1D27CC818((v79 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 408);
        v83 = *(v0 + 368);
        v85 = *(v0 + 344);
        v84 = *(v0 + 352);
        v86 = *(v0 + 336);
LABEL_85:
        (*(v85 + 8))(v84, v86);
        v25[2] = v81;
        v93 = v25 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
        v94 = *(v83 + 72);
        goto LABEL_99;
      }

      if (v39 == *(v0 + 760))
      {
        v87 = *(v0 + 552);
        v88 = *(v0 + 400);
        v89 = *(v0 + 320);
        v90 = *(v0 + 328);
        v91 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v87, *(v0 + 520));
        (*(v89 + 32))(v90, v87, v91);
        (*(v89 + 16))(v88, v90, v91);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v92 = v25[3];
        v81 = v80 + 1;
        if (v80 >= v92 >> 1)
        {
          v25 = sub_1D27CC818((v92 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 400);
        v83 = *(v0 + 368);
        v85 = *(v0 + 320);
        v84 = *(v0 + 328);
        v86 = *(v0 + 312);
        goto LABEL_85;
      }

      if (v39 == *(v0 + 764))
      {
        v95 = *(v0 + 552);
        v96 = *(v0 + 392);
        (*(*(v0 + 528) + 96))(v95, *(v0 + 520));
        v97 = *v95;
        *v96 = v97;
        swift_storeEnumTagMultiPayload();
        v98 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v99 = v25[3];
        v100 = v80 + 1;
        if (v80 >= v99 >> 1)
        {
          v25 = sub_1D27CC818((v99 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 392);
        goto LABEL_98;
      }

      if (v39 == *(v0 + 768))
      {
        v101 = *(v0 + 552);
        v102 = *(v0 + 384);
        (*(*(v0 + 528) + 96))(v101, *(v0 + 520));
        v103 = *v101;
        v104 = type metadata accessor for PlaygroundImage(0);
        v105 = (v102 + v104[9]);
        *v105 = 0u;
        v105[1] = 0u;
        *(v102 + v104[10]) = xmmword_1D28809A0;
        v106 = v104[11];
        v107 = sub_1D2873AA8();
        (*(*(v107 - 8) + 56))(v102 + v106, 1, 1, v107);
        *v102 = v103;
        *(v102 + 8) = 0;
        *(v102 + 24) = 1;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 40) = 0;
        *(v102 + v104[12]) = 0;
        v98 = v103;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v108 = v25[3];
        v100 = v80 + 1;
        if (v80 >= v108 >> 1)
        {
          v25 = sub_1D27CC818((v108 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 384);
        goto LABEL_98;
      }

      if (v39 != *(v0 + 772))
      {
        v114 = *(v0 + 552);
        v115 = *(v0 + 528);
        v116 = *(v0 + 520);
        if (v39 != *(v0 + 776))
        {
          (*(v115 + 8))(*(v0 + 552), v116);
          goto LABEL_25;
        }

        v117 = *(v0 + 376);
        (*(v115 + 96))(*(v0 + 552), v116);
        v118 = *v114;
        v119 = type metadata accessor for PlaygroundImage(0);
        *(v117 + 32) = 0;
        *(v117 + 40) = 0;
        v120 = (v117 + v119[9]);
        *v120 = 0u;
        v120[1] = 0u;
        *(v117 + v119[10]) = xmmword_1D28809A0;
        v121 = v119[11];
        v122 = sub_1D2873AA8();
        (*(*(v122 - 8) + 56))(v117 + v121, 1, 1, v122);
        *v117 = v118;
        *(v117 + 8) = 3;
        *(v117 + 24) = 1;
        *(v117 + 16) = 0;
        *(v117 + v119[12]) = 0;
        v98 = v118;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v123 = v25[3];
        v100 = v80 + 1;
        if (v80 >= v123 >> 1)
        {
          v25 = sub_1D27CC818((v123 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 376);
LABEL_98:
        v109 = *(v0 + 368);

        v25[2] = v100;
        v93 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
        v94 = *(v109 + 72);
LABEL_99:
        v73 = &v93[v94 * v80];
        v50 = v82;
LABEL_72:
        sub_1D2701854(v50, v73);
        goto LABEL_25;
      }

      v110 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v110, *(v0 + 520));
      v111 = *v110;
      v112 = v110[1];
      v113 = HIBYTE(v112) & 0xF;
      if ((v112 & 0x2000000000000000) == 0)
      {
        v113 = v111 & 0xFFFFFFFFFFFFLL;
      }

      if (v113 && !sub_1D27018B8(*(v0 + 296)))
      {
        v124 = *(v0 + 416);
        *v124 = v111;
        v124[1] = v112;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v48 = v25[2];
        v125 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v125 >> 1)
        {
          v25 = sub_1D27CC818((v125 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 416);
        goto LABEL_71;
      }
    }

LABEL_24:

LABEL_25:
    v30 = *(v0 + 576) + 1;
    if (v30 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  v59 = *(v0 + 552);
  v162 = (*(v0 + 528) + 96);
  v159 = *v162;
  (*v162)(v59, *(v0 + 520));
  v60 = *v59;
  *(v0 + 688) = *v59;
  v42 = v59[1];
  *(v0 + 696) = v42;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v61 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    goto LABEL_59;
  }

  v163 = v59[3];
  v166 = v25;
  v157 = v59[2];
  v62 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
  v63 = sub_1D2878068();
  [v62 setString_];

  *v155 = 0;
  *(swift_task_alloc() + 16) = v155;
  sub_1D2878958();

  if (*v155 < 10)
  {
    v64 = *(v0 + 424);

    *v64 = v60;
    v64[1] = v42;
    swift_storeEnumTagMultiPayload();
    v25 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v166[2] + 1, 1, v166);
    }

    v33 = 0x1E6977000;
    v48 = v25[2];
    v65 = v25[3];
    v49 = v48 + 1;
    if (v48 >= v65 >> 1)
    {
      v25 = sub_1D27CC818((v65 > 1), v48 + 1, 1, v25);
    }

    v50 = *(v0 + 424);
    goto LABEL_71;
  }

  v136 = v163;
  if (!v163)
  {
    v137 = 0;
    do
    {
      v168 = *(v0 + 772);
      v138 = *(v0 + 536);
      v139 = *(v0 + 520);
      sub_1D2872028();
      v140 = v38(v138, v139);
      v141 = *(v0 + 536);
      if (v140 == v168)
      {
        v142 = *(v0 + 520);

        v159(v141, v142);
        v136 = v141[1];
        v157 = *v141;
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v137;
    }

    while (v137 != *(v0 + 560));

    if (!v136)
    {
      v150 = 0;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v136;
  if (v157 == v60)
  {
    v150 = v42;
    if (v136 == v42)
    {
      goto LABEL_151;
    }
  }

  if (sub_1D2879618())
  {
    v150 = v136;
LABEL_151:
    *(v0 + 712) = v150;
    v153 = swift_task_alloc();
    *(v0 + 720) = v153;
    *v153 = v0;
    v153[1] = sub_1D26FE5F0;
    v127 = v0 + 16;
    v128 = v60;
    goto LABEL_152;
  }

  v152 = swift_task_alloc();
  *(v0 + 728) = v152;
  *v152 = v0;
  v152[1] = sub_1D26FFDC4;
  v146 = v0 + 56;
  v147 = v157;
  v148 = v136;
  v149 = v60;
LABEL_147:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v146, v147, v148, v149, v42);
}

uint64_t sub_1D26FFDC4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FFEC0, 0, 0);
}

uint64_t sub_1D26FFEC0()
{
  v1 = *(v0 + 56);
  if (*(v0 + 80))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 432);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818((v7 > 1), v8 + 1, 1, v4);
          }

          v9 = *(v0 + 432);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v25 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 696);
    v12 = *(v0 + 688);
    v13 = *(v0 + 440);

    v14 = sub_1D2691DF8(50, v12, v11);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x1D38A0BC0](v14, v16, v18, v20);
    v23 = v22;

    *v13 = v21;
    v13[1] = v23;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, *(v0 + 584));
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CC818((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = *(v0 + 440);
    v29 = *(v0 + 368);
    v25[2] = v27 + 1;
    sub_1D2701854(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27);
  }

  v30 = *(v0 + 576) + 1;
  if (v30 == *(v0 + 560))
  {
LABEL_20:
    v169 = *(v0 + 256);
    sub_1D274DDBC(v25);

    v31 = *(v0 + 8);

    return v31(v169);
  }

  v160 = (v0 + 272);
  v154 = (v0 + 280);
  v155 = (v0 + 264);
  v164 = (v0 + 288);
  v33 = 0x1E6977000uLL;
  while (1)
  {
    *(v0 + 584) = v25;
    *(v0 + 576) = v30;
    v34 = *(v0 + 740);
    v35 = *(v0 + 552);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    sub_1D2872028();
    v38 = *(v36 + 88);
    v39 = v38(v35, v37);
    if (v39 == v34)
    {
      v40 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v40, *(v0 + 520));
      v41 = *v40;
      *(v0 + 592) = *v40;
      v42 = v40[1];
      *(v0 + 600) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v44 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
        v45 = sub_1D2878068();
        [v44 setString_];

        *v164 = 0;
        *(swift_task_alloc() + 16) = v164;
        sub_1D2878958();

        if (*v164 >= 50)
        {
          v126 = swift_task_alloc();
          *(v0 + 608) = v126;
          *v126 = v0;
          v126[1] = sub_1D26F8654;
          v127 = v0 + 216;
          goto LABEL_119;
        }

        v46 = *(v0 + 496);
        *v46 = v41;
        v46[1] = v42;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v48 = v25[2];
        v47 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v25 = sub_1D27CC818((v47 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 496);
        goto LABEL_71;
      }

      goto LABEL_24;
    }

    if (v39 == *(v0 + 744))
    {
      v51 = *(v0 + 552);
      v161 = *(*(v0 + 528) + 96);
      v161(v51, *(v0 + 520));
      v52 = *v51;
      *(v0 + 640) = *v51;
      v42 = v51[1];
      *(v0 + 648) = v42;
      v53 = v51[3];
      if ((v42 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v54 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        v156 = v38;
        v165 = v25;
        v158 = v51[2];
        v55 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
        v56 = sub_1D2878068();
        [v55 setString_];

        *v160 = 0;
        *(swift_task_alloc() + 16) = v160;
        sub_1D2878958();

        if (*v160 >= 10)
        {
          if (v53)
          {
            goto LABEL_133;
          }

          v129 = 0;
          v130 = 0;
          do
          {
            v167 = *(v0 + 772);
            v131 = *(v0 + 544);
            v132 = *(v0 + 520);
            sub_1D2872028();
            v133 = v156(v131, v132);
            v134 = *(v0 + 544);
            if (v133 == v167)
            {
              v135 = *(v0 + 520);

              v161(v134, v135);
              v129 = v134[1];
              v158 = *v134;
            }

            else
            {
              (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
            }

            ++v130;
          }

          while (v130 != *(v0 + 560));

          v53 = v129;
          if (v129)
          {
LABEL_133:
            *(v0 + 656) = v53;
            if (v158 != v52 || (v143 = v42, v53 != v42))
            {
              if ((sub_1D2879618() & 1) == 0)
              {
                v145 = swift_task_alloc();
                *(v0 + 680) = v145;
                *v145 = v0;
                v145[1] = sub_1D26FCDE8;
                v146 = v0 + 136;
                v147 = v158;
                v148 = v53;
                v149 = v52;
                goto LABEL_147;
              }

              v143 = v53;
            }
          }

          else
          {
            v143 = 0;
          }

          *(v0 + 664) = v143;
          v151 = swift_task_alloc();
          *(v0 + 672) = v151;
          *v151 = v0;
          v151[1] = sub_1D26FB5E0;
          v127 = v0 + 96;
          v128 = v52;
          goto LABEL_152;
        }

        v57 = *(v0 + 448);

        *v57 = v52;
        v57[1] = v42;
        swift_storeEnumTagMultiPayload();
        v25 = v165;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v165[2] + 1, 1, v165);
        }

        v33 = 0x1E6977000;
        v48 = v25[2];
        v58 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v58 >> 1)
        {
          v25 = sub_1D27CC818((v58 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 448);
LABEL_71:
        v72 = *(v0 + 368);
        v25[2] = v49;
        v73 = v25 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v48;
        goto LABEL_72;
      }

LABEL_59:

      goto LABEL_24;
    }

    if (v39 == *(v0 + 748))
    {
      break;
    }

    if (v39 == *(v0 + 752))
    {
      v66 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v66, *(v0 + 520));
      v41 = *v66;
      *(v0 + 616) = *v66;
      v42 = v66[1];
      *(v0 + 624) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v67 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
        v68 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
        v69 = sub_1D2878068();
        [v68 setString_];

        *v154 = 0;
        *(swift_task_alloc() + 16) = v154;
        sub_1D2878958();

        if (*v154 >= 50)
        {
          v144 = swift_task_alloc();
          *(v0 + 632) = v144;
          *v144 = v0;
          v144[1] = sub_1D26F9E18;
          v127 = v0 + 176;
LABEL_119:
          v128 = v41;
LABEL_152:

          return VisualSummarizationClient.summarizeContext(from:)(v127, v128, v42);
        }

        v70 = *(v0 + 472);
        *v70 = v41;
        v70[1] = v42;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v48 = v25[2];
        v71 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v71 >> 1)
        {
          v25 = sub_1D27CC818((v71 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 472);
        goto LABEL_71;
      }
    }

    else
    {
      if (v39 == *(v0 + 756))
      {
        v74 = *(v0 + 552);
        v75 = *(v0 + 408);
        v76 = *(v0 + 352);
        v78 = *(v0 + 336);
        v77 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v74, *(v0 + 520));
        (*(v77 + 32))(v76, v74, v78);
        (*(v77 + 16))(v75, v76, v78);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v79 = v25[3];
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v25 = sub_1D27CC818((v79 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 408);
        v83 = *(v0 + 368);
        v85 = *(v0 + 344);
        v84 = *(v0 + 352);
        v86 = *(v0 + 336);
LABEL_85:
        (*(v85 + 8))(v84, v86);
        v25[2] = v81;
        v93 = v25 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
        v94 = *(v83 + 72);
        goto LABEL_99;
      }

      if (v39 == *(v0 + 760))
      {
        v87 = *(v0 + 552);
        v88 = *(v0 + 400);
        v89 = *(v0 + 320);
        v90 = *(v0 + 328);
        v91 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v87, *(v0 + 520));
        (*(v89 + 32))(v90, v87, v91);
        (*(v89 + 16))(v88, v90, v91);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v92 = v25[3];
        v81 = v80 + 1;
        if (v80 >= v92 >> 1)
        {
          v25 = sub_1D27CC818((v92 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 400);
        v83 = *(v0 + 368);
        v85 = *(v0 + 320);
        v84 = *(v0 + 328);
        v86 = *(v0 + 312);
        goto LABEL_85;
      }

      if (v39 == *(v0 + 764))
      {
        v95 = *(v0 + 552);
        v96 = *(v0 + 392);
        (*(*(v0 + 528) + 96))(v95, *(v0 + 520));
        v97 = *v95;
        *v96 = v97;
        swift_storeEnumTagMultiPayload();
        v98 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v99 = v25[3];
        v100 = v80 + 1;
        if (v80 >= v99 >> 1)
        {
          v25 = sub_1D27CC818((v99 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 392);
        goto LABEL_98;
      }

      if (v39 == *(v0 + 768))
      {
        v101 = *(v0 + 552);
        v102 = *(v0 + 384);
        (*(*(v0 + 528) + 96))(v101, *(v0 + 520));
        v103 = *v101;
        v104 = type metadata accessor for PlaygroundImage(0);
        v105 = (v102 + v104[9]);
        *v105 = 0u;
        v105[1] = 0u;
        *(v102 + v104[10]) = xmmword_1D28809A0;
        v106 = v104[11];
        v107 = sub_1D2873AA8();
        (*(*(v107 - 8) + 56))(v102 + v106, 1, 1, v107);
        *v102 = v103;
        *(v102 + 8) = 0;
        *(v102 + 24) = 1;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 40) = 0;
        *(v102 + v104[12]) = 0;
        v98 = v103;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v108 = v25[3];
        v100 = v80 + 1;
        if (v80 >= v108 >> 1)
        {
          v25 = sub_1D27CC818((v108 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 384);
        goto LABEL_98;
      }

      if (v39 != *(v0 + 772))
      {
        v114 = *(v0 + 552);
        v115 = *(v0 + 528);
        v116 = *(v0 + 520);
        if (v39 != *(v0 + 776))
        {
          (*(v115 + 8))(*(v0 + 552), v116);
          goto LABEL_25;
        }

        v117 = *(v0 + 376);
        (*(v115 + 96))(*(v0 + 552), v116);
        v118 = *v114;
        v119 = type metadata accessor for PlaygroundImage(0);
        *(v117 + 32) = 0;
        *(v117 + 40) = 0;
        v120 = (v117 + v119[9]);
        *v120 = 0u;
        v120[1] = 0u;
        *(v117 + v119[10]) = xmmword_1D28809A0;
        v121 = v119[11];
        v122 = sub_1D2873AA8();
        (*(*(v122 - 8) + 56))(v117 + v121, 1, 1, v122);
        *v117 = v118;
        *(v117 + 8) = 3;
        *(v117 + 24) = 1;
        *(v117 + 16) = 0;
        *(v117 + v119[12]) = 0;
        v98 = v118;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v80 = v25[2];
        v123 = v25[3];
        v100 = v80 + 1;
        if (v80 >= v123 >> 1)
        {
          v25 = sub_1D27CC818((v123 > 1), v80 + 1, 1, v25);
        }

        v82 = *(v0 + 376);
LABEL_98:
        v109 = *(v0 + 368);

        v25[2] = v100;
        v93 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
        v94 = *(v109 + 72);
LABEL_99:
        v73 = &v93[v94 * v80];
        v50 = v82;
LABEL_72:
        sub_1D2701854(v50, v73);
        goto LABEL_25;
      }

      v110 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v110, *(v0 + 520));
      v111 = *v110;
      v112 = v110[1];
      v113 = HIBYTE(v112) & 0xF;
      if ((v112 & 0x2000000000000000) == 0)
      {
        v113 = v111 & 0xFFFFFFFFFFFFLL;
      }

      if (v113 && !sub_1D27018B8(*(v0 + 296)))
      {
        v124 = *(v0 + 416);
        *v124 = v111;
        v124[1] = v112;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v48 = v25[2];
        v125 = v25[3];
        v49 = v48 + 1;
        if (v48 >= v125 >> 1)
        {
          v25 = sub_1D27CC818((v125 > 1), v48 + 1, 1, v25);
        }

        v50 = *(v0 + 416);
        goto LABEL_71;
      }
    }

LABEL_24:

LABEL_25:
    v30 = *(v0 + 576) + 1;
    if (v30 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  v59 = *(v0 + 552);
  v162 = (*(v0 + 528) + 96);
  v159 = *v162;
  (*v162)(v59, *(v0 + 520));
  v60 = *v59;
  *(v0 + 688) = *v59;
  v42 = v59[1];
  *(v0 + 696) = v42;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v61 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    goto LABEL_59;
  }

  v163 = v59[3];
  v166 = v25;
  v157 = v59[2];
  v62 = [objc_allocWithZone(*(v33 + 2696)) initWithUnit_];
  v63 = sub_1D2878068();
  [v62 setString_];

  *v155 = 0;
  *(swift_task_alloc() + 16) = v155;
  sub_1D2878958();

  if (*v155 < 10)
  {
    v64 = *(v0 + 424);

    *v64 = v60;
    v64[1] = v42;
    swift_storeEnumTagMultiPayload();
    v25 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v166[2] + 1, 1, v166);
    }

    v33 = 0x1E6977000;
    v48 = v25[2];
    v65 = v25[3];
    v49 = v48 + 1;
    if (v48 >= v65 >> 1)
    {
      v25 = sub_1D27CC818((v65 > 1), v48 + 1, 1, v25);
    }

    v50 = *(v0 + 424);
    goto LABEL_71;
  }

  v136 = v163;
  if (!v163)
  {
    v137 = 0;
    do
    {
      v168 = *(v0 + 772);
      v138 = *(v0 + 536);
      v139 = *(v0 + 520);
      sub_1D2872028();
      v140 = v38(v138, v139);
      v141 = *(v0 + 536);
      if (v140 == v168)
      {
        v142 = *(v0 + 520);

        v159(v141, v142);
        v136 = v141[1];
        v157 = *v141;
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v137;
    }

    while (v137 != *(v0 + 560));

    if (!v136)
    {
      v150 = 0;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v136;
  if (v157 == v60)
  {
    v150 = v42;
    if (v136 == v42)
    {
      goto LABEL_151;
    }
  }

  if (sub_1D2879618())
  {
    v150 = v136;
LABEL_151:
    *(v0 + 712) = v150;
    v153 = swift_task_alloc();
    *(v0 + 720) = v153;
    *v153 = v0;
    v153[1] = sub_1D26FE5F0;
    v127 = v0 + 16;
    v128 = v60;
    goto LABEL_152;
  }

  v152 = swift_task_alloc();
  *(v0 + 728) = v152;
  *v152 = v0;
  v152[1] = sub_1D26FFDC4;
  v146 = v0 + 56;
  v147 = v157;
  v148 = v136;
  v149 = v60;
LABEL_147:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v146, v147, v148, v149, v42);
}

uint64_t PromptElementConceptExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D27015F0(uint64_t *a2@<X8>)
{
  v3 = swift_allocObject();
  type metadata accessor for VisualSummarizationClient();
  v4 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v4 + 24) = sub_1D2873DD8();
  v5 = sub_1D27D8C8C();

  *(v4 + 16) = v5 & 1;
  *(v3 + 16) = v4;
  *a2 = v3;
}

uint64_t type metadata accessor for PromptElementConceptExtractor.Concept(uint64_t a1)
{
  result = qword_1EC6E0730;
  if (!qword_1EC6E0730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D270172C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2701790(uint64_t a1)
{
  v2 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27017EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0728, &qword_1D289F358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2701854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1D27018B8(uint64_t a1)
{
  v2 = sub_1D2872018();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1D2872038();
  v7 = MEMORY[0x1EEE9AC00](v29);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v28 = v12;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v26 = *(v11 + 56);
  v14 = (v11 - 8);
  v15 = (v3 + 88);
  v27 = *MEMORY[0x1E696E360];
  v25 = *MEMORY[0x1E696E340];
  v16 = (v3 + 8);
  v17 = v10 - 1;
  while (1)
  {
    v18 = v29;
    v19 = v11;
    v28(v9, v13, v29, v7);
    sub_1D2872028();
    (*v14)(v9, v18);
    v20 = (*v15)(v5, v2);
    if (v20 == v27)
    {
      break;
    }

    v21 = v20;
    (*v16)(v5, v2);
    result = v21 == v25;
    v23 = v21 == v25 || v17-- == 0;
    v13 += v26;
    v11 = v19;
    if (v23)
    {
      return result;
    }
  }

  (*v16)(v5, v2);
  return 1;
}

void sub_1D2701B2C(uint64_t a1)
{
  sub_1D2701BD4();
  if (v1 <= 0x3F)
  {
    sub_1D2877E58();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CVBuffer(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PlaygroundImage(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2701BD4()
{
  if (!qword_1EC6E0740)
  {
    v0 = sub_1D28721C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6E0740);
    }
  }
}

unint64_t sub_1D2701C20()
{
  result = qword_1EC6E0748;
  if (!qword_1EC6E0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0748);
  }

  return result;
}

unint64_t sub_1D2701C78()
{
  result = qword_1EC6E0750;
  if (!qword_1EC6E0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0750);
  }

  return result;
}

uint64_t type metadata accessor for EditorViewController(uint64_t a1)
{
  result = qword_1EC6E0788;
  if (!qword_1EC6E0788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2701D1C(uint64_t a1)
{
  sub_1D2702C60(319, &qword_1ED8A6BF0, MEMORY[0x1E696E310]);
  if (v1 <= 0x3F)
  {
    sub_1D2702C60(319, &qword_1EC6E0798, MEMORY[0x1E696E2B8]);
    if (v2 <= 0x3F)
    {
      sub_1D2702C60(319, &qword_1EC6E07A0, MEMORY[0x1E696E290]);
      if (v3 <= 0x3F)
      {
        sub_1D2702C60(319, &qword_1EC6E07A8, MEMORY[0x1E696E3C0]);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

double sub_1D2701EF0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EC6E0758);
  if (v5)
  {
    v6 = *(v0 + qword_1EC6E0768);
    v7 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
    if (v6 == v7)
    {
      *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = v6;
      sub_1D2870F78();
      sub_1D23068A8(v7);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v13[-2] = v5;
      LOBYTE(v13[-1]) = v6;
      v13[1] = v5;
      sub_1D245EB0C();
      sub_1D2870F78();
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D28725E8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "creationViewModel is nil", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

double sub_1D270214C()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EC6E0758))
  {
    v5 = *(v0 + qword_1EC6E0770);
    sub_1D2870F78();
    if (v5)
    {
      v6 = v5;
      ComposingViewModel.load(fromAPIRecipe:)(v6);
    }

    else
    {
      ComposingViewModel.reset()();
    }
  }

  else
  {
    sub_1D28725E8();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "creationViewModel is nil", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_1D2702300()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EC6E0758))
  {
    v5 = *(v0 + qword_1EC6E0778);
    if (v5)
    {
      sub_1D2870F78();
      v6 = v5;
      sub_1D231C140(v6);
    }
  }

  else
  {
    sub_1D28725E8();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "creationViewModel is nil", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D27024D4(_OWORD *a1)
{
  *(v1 + qword_1EC6E0758) = 0;
  *(v1 + qword_1EC6E0760) = 0;
  *(v1 + qword_1EC6E0768) = 0;
  *(v1 + qword_1EC6E0770) = 0;
  *(v1 + qword_1EC6E0778) = 0;
  *(v1 + qword_1EC6E0780) = 0;
  v2 = qword_1EC6E3F70;
  v3 = sub_1D2872008();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = qword_1EC6E3F78;
  v5 = sub_1D2871E18();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_1EC6E3F80;
  v7 = sub_1D2871DD8();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = qword_1EC6E3F88;
  v9 = sub_1D2872088();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  return sub_1D28759F8();
}

uint64_t sub_1D27026D0(uint64_t a1, _OWORD *a2)
{
  *(v2 + qword_1EC6E0758) = 0;
  *(v2 + qword_1EC6E0760) = 0;
  *(v2 + qword_1EC6E0768) = 0;
  *(v2 + qword_1EC6E0770) = 0;
  *(v2 + qword_1EC6E0778) = 0;
  *(v2 + qword_1EC6E0780) = 0;
  v3 = qword_1EC6E3F70;
  v4 = sub_1D2872008();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = qword_1EC6E3F78;
  v6 = sub_1D2871E18();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = qword_1EC6E3F80;
  v8 = sub_1D2871DD8();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = qword_1EC6E3F88;
  v10 = sub_1D2872088();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  return sub_1D28759E8();
}

id sub_1D2702890(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EC6E0758] = 0;
  *&v1[qword_1EC6E0760] = 0;
  v1[qword_1EC6E0768] = 0;
  *&v1[qword_1EC6E0770] = 0;
  *&v1[qword_1EC6E0778] = 0;
  *&v1[qword_1EC6E0780] = 0;
  v4 = qword_1EC6E3F70;
  v5 = sub_1D2872008();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = qword_1EC6E3F78;
  v7 = sub_1D2871E18();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = qword_1EC6E3F80;
  v9 = sub_1D2871DD8();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = qword_1EC6E3F88;
  v11 = sub_1D2872088();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1D2702A8C()
{

  sub_1D22BD238(v0 + qword_1EC6E3F70, &qword_1EC6D9A30, &qword_1D287EFC0);
  sub_1D22BD238(v0 + qword_1EC6E3F78, &unk_1EC6D94A0, &qword_1D287D400);
  sub_1D22BD238(v0 + qword_1EC6E3F80, &qword_1EC6E07B0, &unk_1D289F500);
  return sub_1D22BD238(v0 + qword_1EC6E3F88, &qword_1EC6E07B8, &qword_1D28AC680);
}

uint64_t sub_1D2702B70(uint64_t a1)
{

  sub_1D22BD238(a1 + qword_1EC6E3F70, &qword_1EC6D9A30, &qword_1D287EFC0);
  sub_1D22BD238(a1 + qword_1EC6E3F78, &unk_1EC6D94A0, &qword_1D287D400);
  sub_1D22BD238(a1 + qword_1EC6E3F80, &qword_1EC6E07B0, &unk_1D289F500);
  return sub_1D22BD238(a1 + qword_1EC6E3F88, &qword_1EC6E07B8, &qword_1D28AC680);
}

void sub_1D2702C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s19BlockingSubCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x39)
  {
    goto LABEL_17;
  }

  if (a2 + 199 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 199) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 199;
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

      return (*a1 | (v4 << 8)) - 199;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 199;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v6 >= 0x38)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s19BlockingSubCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 199 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 199) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x39)
  {
    v4 = 0;
  }

  if (a2 > 0x38)
  {
    v5 = ((a2 - 57) >> 8) + 1;
    *result = a2 - 57;
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
    *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D2702E18(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 5;
  v4 = (v1 & 3 | (4 * (v1 >> 5))) - 12;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_1D2702E4C(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 3 | (32 * a2);
  }

  else
  {
    *result = (a2 & 3 | (32 * (a2 >> 2))) + 96;
  }

  return result;
}

uint64_t sub_1D2702EB0(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 3)
  {
    v2 = 5461577;
    v3 = 0x6F6F626154;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 >> 5)
    {
      v2 = 0x654E797465666153;
    }

    v4 = (a1 >> 5) <= 1u;
LABEL_7:
    if (v4)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  if ((a1 >> 5) > 5u)
  {
    if (v1 == 6)
    {
      v8 = 0x656C7069746C754DLL;
      if (a1 != 194)
      {
        v8 = 0xD00000000000001CLL;
      }

      v9 = 0xD000000000000018;
      if (a1 == 192)
      {
        v9 = 0xD00000000000001ELL;
      }

      if (a1 <= 0xC1u)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      v10 = 0x42726579614C4955;
      if (a1 == 226)
      {
        v10 = 0xD00000000000001ALL;
      }

      v11 = 0xD000000000000021;
      if (a1 == 224)
      {
        v11 = 0xD00000000000001FLL;
      }

      if (a1 <= 0xE1u)
      {
        return v11;
      }

      else
      {
        return v10;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      v2 = 0x6566615374786554;
      v3 = 0xD000000000000016;
      if (a1 != 162)
      {
        v3 = 0xD00000000000001CLL;
      }

      if (a1 != 160)
      {
        v2 = 0x73696C6B636F6C42;
      }

      v4 = a1 <= 0xA1u;
      goto LABEL_7;
    }

    v6 = 0x6669636570736E55;
    v7 = 0xD000000000000011;
    if (a1 != 130)
    {
      v7 = 0x6867697279706F43;
    }

    if (a1 != 128)
    {
      v6 = 0x727265764F534D47;
    }

    if (a1 <= 0x81u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

unint64_t sub_1D2703190(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x727265764F736D67;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x6566615374786574;
      break;
    case 5:
      result = 0x73696C6B636F6C62;
      break;
    case 6:
      result = 7566953;
      break;
    case 7:
      result = 0x654E797465666173;
      break;
    case 8:
      result = 0x6F6F626174;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x656C7069746C756DLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x42726579614C6975;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D27033F8(void *a1, int a2)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0930, &qword_1D289F920);
  v111 = *(v3 - 8);
  v112 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0938, &qword_1D289F928);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v69 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0940, &qword_1D289F930);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v69 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0948, &qword_1D289F938);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v69 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0950, &qword_1D289F940);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v69 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0958, &qword_1D289F948);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v69 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0960, &qword_1D289F950);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v69 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0968, &qword_1D289F958);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v69 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0970, &qword_1D289F960);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v69 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0978, &qword_1D289F968);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0980, &qword_1D289F970);
  v123 = *(v15 - 8);
  v124 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0988, &qword_1D289F978);
  v120 = *(v17 - 8);
  v121 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0990, &qword_1D289F980);
  v117 = *(v19 - 8);
  v118 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0998, &qword_1D289F988);
  v114 = *(v21 - 8);
  v115 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v69 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09A0, &qword_1D289F990);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v69 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09A8, &qword_1D289F998);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - v24;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09B0, &qword_1D289F9A0);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v69 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09B8, &qword_1D289F9A8);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v69 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09C0, &qword_1D289F9B0);
  v70 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09C8, &qword_1D289F9B8);
  v69 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v69 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09D0, &qword_1D289F9C0);
  v34 = *(v33 - 8);
  v125 = v33;
  v126 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v69 - v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2708110();
  v37 = v36;
  v38 = v127;
  sub_1D2879888();
  v39 = v38 >> 5;
  if (v39 <= 3)
  {
    if ((v38 >> 5) > 1u)
    {
      v40 = v125;
      v41 = v37;
      v46 = v38 & 0x1F;
      if (v39 == 2)
      {
        v128 = 8;
        sub_1D2708554();
        v42 = v119;
        sub_1D2879548();
        v128 = v46;
        sub_1D2708848();
        v43 = v121;
        sub_1D2879598();
        v44 = v120;
      }

      else
      {
        v128 = 9;
        sub_1D27084AC();
        v42 = v122;
        sub_1D2879548();
        v128 = v46;
        sub_1D2708848();
        v43 = v124;
        sub_1D2879598();
        v44 = v123;
      }
    }

    else
    {
      v40 = v125;
      v41 = v37;
      if (v38 >> 5)
      {
        v128 = 7;
        sub_1D27085A8();
        v42 = v116;
        sub_1D2879548();
        v128 = v38 & 0x1F;
        sub_1D2708848();
        v43 = v118;
        sub_1D2879598();
        v44 = v117;
      }

      else
      {
        v128 = 6;
        sub_1D27085FC();
        v42 = v113;
        sub_1D2879548();
        v128 = v38;
        sub_1D2708848();
        v43 = v115;
        sub_1D2879598();
        v44 = v114;
      }
    }

    (*(v44 + 8))(v42, v43);
    return (*(v126 + 8))(v41, v40);
  }

  if ((v38 >> 5) > 5u)
  {
    if (v39 == 6)
    {
      v47 = v38;
      v48 = v125;
      v49 = v37;
      if (v47 > 193)
      {
        if (v47 == 194)
        {
          v128 = 14;
          sub_1D2708308();
          v58 = v95;
          sub_1D2879548();
          (*(v96 + 8))(v58, v97);
        }

        else
        {
          v128 = 15;
          sub_1D27082B4();
          v67 = v98;
          sub_1D2879548();
          (*(v99 + 8))(v67, v100);
        }
      }

      else if (v47 == 192)
      {
        v128 = 12;
        sub_1D27083B0();
        v50 = v89;
        sub_1D2879548();
        (*(v90 + 8))(v50, v91);
      }

      else
      {
        v128 = 13;
        sub_1D270835C();
        v63 = v92;
        sub_1D2879548();
        (*(v93 + 8))(v63, v94);
      }
    }

    else
    {
      v54 = v38;
      v48 = v125;
      v49 = v37;
      if (v54 > 225)
      {
        if (v54 == 226)
        {
          v128 = 18;
          sub_1D27081B8();
          v60 = v107;
          sub_1D2879548();
          v62 = v108;
          v61 = v109;
        }

        else
        {
          v128 = 19;
          sub_1D2708164();
          v60 = v110;
          sub_1D2879548();
          v62 = v111;
          v61 = v112;
        }

        (*(v62 + 8))(v60, v61);
      }

      else if (v54 == 224)
      {
        v128 = 16;
        sub_1D2708260();
        v55 = v101;
        sub_1D2879548();
        (*(v102 + 8))(v55, v103);
      }

      else
      {
        v128 = 17;
        sub_1D270820C();
        v65 = v104;
        sub_1D2879548();
        (*(v105 + 8))(v65, v106);
      }
    }

    return (*(v126 + 8))(v49, v48);
  }

  if (v39 != 4)
  {
    v51 = v38;
    v48 = v125;
    v49 = v37;
    if (v51 > 161)
    {
      if (v51 == 162)
      {
        v128 = 10;
        sub_1D2708458();
        v59 = v83;
        sub_1D2879548();
        (*(v84 + 8))(v59, v85);
      }

      else
      {
        v128 = 11;
        sub_1D2708404();
        v68 = v86;
        sub_1D2879548();
        (*(v87 + 8))(v68, v88);
      }
    }

    else if (v51 == 160)
    {
      v128 = 4;
      sub_1D27086A4();
      v52 = v77;
      sub_1D2879548();
      (*(v78 + 8))(v52, v79);
    }

    else
    {
      v128 = 5;
      sub_1D2708650();
      v64 = v80;
      sub_1D2879548();
      (*(v81 + 8))(v64, v82);
    }

    return (*(v126 + 8))(v49, v48);
  }

  if (v38 > 0x81u)
  {
    if (v38 == 130)
    {
      v128 = 2;
      sub_1D270874C();
      v56 = v71;
      v57 = v125;
      sub_1D2879548();
      (*(v72 + 8))(v56, v73);
      return (*(v126 + 8))(v37, v57);
    }

    v128 = 3;
    sub_1D27086F8();
    v66 = v74;
    v45 = v125;
    sub_1D2879548();
    (*(v75 + 8))(v66, v76);
  }

  else if (v38 == 128)
  {
    v128 = 0;
    sub_1D27087F4();
    v45 = v125;
    sub_1D2879548();
    (*(v69 + 8))(v32, v30);
  }

  else
  {
    v128 = 1;
    sub_1D27087A0();
    v45 = v125;
    sub_1D2879548();
    (*(v70 + 8))(v29, v27);
  }

  return (*(v126 + 8))(v37, v45);
}

uint64_t sub_1D27047BC(uint64_t a1)
{
  v2 = sub_1D27083B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D27047F8(uint64_t a1)
{
  v2 = sub_1D27083B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704834(uint64_t a1)
{
  v2 = sub_1D2708650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704870(uint64_t a1)
{
  v2 = sub_1D2708650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27048B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2706048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D27048E8(uint64_t a1)
{
  v2 = sub_1D2708110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704924(uint64_t a1)
{
  v2 = sub_1D2708110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704960(uint64_t a1)
{
  v2 = sub_1D27086F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D270499C(uint64_t a1)
{
  v2 = sub_1D27086F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27049D8(uint64_t a1)
{
  v2 = sub_1D270820C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704A14(uint64_t a1)
{
  v2 = sub_1D270820C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704A50(uint64_t a1)
{
  v2 = sub_1D2708260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704A8C(uint64_t a1)
{
  v2 = sub_1D2708260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704AC8(uint64_t a1)
{
  v2 = sub_1D27082B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704B04(uint64_t a1)
{
  v2 = sub_1D27082B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704B40(uint64_t a1)
{
  v2 = sub_1D27087A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704B7C(uint64_t a1)
{
  v2 = sub_1D27087A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704BB8(uint64_t a1)
{
  v2 = sub_1D27085FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704BF4(uint64_t a1)
{
  v2 = sub_1D27085FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704C30(uint64_t a1)
{
  v2 = sub_1D270874C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704C6C(uint64_t a1)
{
  v2 = sub_1D270874C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704CA8(uint64_t a1)
{
  v2 = sub_1D2708404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704CE4(uint64_t a1)
{
  v2 = sub_1D2708404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704D20(uint64_t a1)
{
  v2 = sub_1D2708308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704D5C(uint64_t a1)
{
  v2 = sub_1D2708308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704D98(uint64_t a1)
{
  v2 = sub_1D2708458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704DD4(uint64_t a1)
{
  v2 = sub_1D2708458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704E10(uint64_t a1)
{
  v2 = sub_1D27081B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704E4C(uint64_t a1)
{
  v2 = sub_1D27081B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704E88(uint64_t a1)
{
  v2 = sub_1D27085A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704EC4(uint64_t a1)
{
  v2 = sub_1D27085A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704F00(uint64_t a1)
{
  v2 = sub_1D27084AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704F3C(uint64_t a1)
{
  v2 = sub_1D27084AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D2704F78(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001D28C0670 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D270500C(uint64_t a1)
{
  v2 = sub_1D2708554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2705048(uint64_t a1)
{
  v2 = sub_1D2708554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2705084(uint64_t a1)
{
  v2 = sub_1D27086A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D27050C0(uint64_t a1)
{
  v2 = sub_1D27086A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27050FC(uint64_t a1)
{
  v2 = sub_1D2708164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2705138(uint64_t a1)
{
  v2 = sub_1D2708164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2705174(uint64_t a1)
{
  v2 = sub_1D270835C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D27051B0(uint64_t a1)
{
  v2 = sub_1D270835C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27051EC(uint64_t a1)
{
  v2 = sub_1D27087F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2705228(uint64_t a1)
{
  v2 = sub_1D27087F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2705264@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2706680(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D27052C0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D27053D0(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D27054CC()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

unint64_t sub_1D27055D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D270889C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D2705608(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E55;
  v5 = 0xEE006E6F69746365;
  v6 = 0x6A65526567616D49;
  v7 = 0x80000001D28AEF60;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 0x6572617774666F53;
    v7 = 0xED0000726F727245;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D28AEF30;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D2705784()
{
  v1 = *v0;
  v2 = 0x6669636570736E55;
  v3 = 0x6A65526567616D49;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x6572617774666F53;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1D2705858()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

double sub_1D27058FC(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

uint64_t sub_1D270598C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

unint64_t sub_1D2705A2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D270893C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D2705A5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0xE500000000000000;
  v5 = 0x7475706E49;
  if (v2 != 1)
  {
    v5 = 0x74757074754FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6669636570736E55;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D2705B6C()
{
  v1 = 0x7475706E49;
  if (*v0 != 1)
  {
    v1 = 0x74757074754FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E55;
  }
}

uint64_t sub_1D2705BC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7475706E49;
  if (v2 != 1)
  {
    v4 = 0x74757074754FLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6669636570736E55;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646569;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7475706E49;
  if (*a2 != 1)
  {
    v8 = 0x74757074754FLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6669636570736E55;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646569;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}

unint64_t sub_1D2705CC4()
{
  result = qword_1EC6E07C0;
  if (!qword_1EC6E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E07C0);
  }

  return result;
}

unint64_t sub_1D2705D1C()
{
  result = qword_1EC6E07C8;
  if (!qword_1EC6E07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E07C8);
  }

  return result;
}

uint64_t sub_1D2705D70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = a1 >> 5;
  if (v3 > 3)
  {
    if ((a1 >> 5) > 5u)
    {
      if (v3 == 6)
      {
        if (a1 > 0xC1u)
        {
          if (a1 == 194)
          {
            if (a2 != 194)
            {
              return 0;
            }
          }

          else if (a2 != 195)
          {
            return 0;
          }
        }

        else if (a1 == 192)
        {
          if (a2 != 192)
          {
            return 0;
          }
        }

        else if (a2 != 193)
        {
          return 0;
        }
      }

      else if (a1 > 0xE1u)
      {
        if (a1 == 226)
        {
          if (a2 != 226)
          {
            return 0;
          }
        }

        else if (a2 != 227)
        {
          return 0;
        }
      }

      else if (a1 == 224)
      {
        if (a2 != 224)
        {
          return 0;
        }
      }

      else if (a2 != 225)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (a1 > 0x81u)
      {
        if (a1 == 130)
        {
          if (a2 != 130)
          {
            return 0;
          }
        }

        else if (a2 != 131)
        {
          return 0;
        }
      }

      else if (a1 == 128)
      {
        if (a2 != 128)
        {
          return 0;
        }
      }

      else if (a2 != 129)
      {
        return 0;
      }
    }

    else if (a1 > 0xA1u)
    {
      if (a1 == 162)
      {
        if (a2 != 162)
        {
          return 0;
        }
      }

      else if (a2 != 163)
      {
        return 0;
      }
    }

    else if (a1 == 160)
    {
      if (a2 != 160)
      {
        return 0;
      }
    }

    else if (a2 != 161)
    {
      return 0;
    }

    return 1;
  }

  if ((a1 >> 5) > 1u)
  {
    if (v3 == 2)
    {
      if ((a2 & 0xE0) != 0x40)
      {
        return 0;
      }
    }

    else if ((a2 & 0xE0) != 0x60)
    {
      return 0;
    }

LABEL_28:
    v2 = a2 & 0x1F;
    v4 = a1 & 0x1F;
    if ((a1 & 0x1F) == 0)
    {
      goto LABEL_6;
    }

LABEL_29:
    if (v4 == 1)
    {
      v5 = 0x7475706E49;
    }

    else
    {
      v5 = 0x74757074754FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    goto LABEL_35;
  }

  if (a1 >> 5)
  {
    if ((a2 & 0xE0) != 0x20)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (a2 > 0x1Fu)
  {
    return 0;
  }

  v4 = a1;
  if (a1)
  {
    goto LABEL_29;
  }

LABEL_6:
  v5 = 0x6669636570736E55;
  v6 = 0xEB00000000646569;
LABEL_35:
  v7 = 0xE500000000000000;
  v8 = 0x7475706E49;
  if (v2 != 1)
  {
    v8 = 0x74757074754FLL;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6669636570736E55;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646569;
  }

  if (v5 == v9 && v6 == v10)
  {

    return 1;
  }

  else
  {
    v12 = sub_1D2879618();

    return v12 & 1;
  }
}

uint64_t sub_1D2706048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1D2879618() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727265764F736D67 && a2 == 0xEB00000000656469 || (sub_1D2879618() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D28C0520 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D2879618() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6566615374786574 && a2 == 0xEF6C65646F4D7974 || (sub_1D2879618() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696C6B636F6C62 && a2 == 0xE900000000000074 || (sub_1D2879618() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7566953 && a2 == 0xE300000000000000 || (sub_1D2879618() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654E797465666173 && a2 == 0xE900000000000074 || (sub_1D2879618() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F6F626174 && a2 == 0xE500000000000000 || (sub_1D2879618() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D28C0540 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D28C0560 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D28C0580 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D28C05A0 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D28C05C0 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xEE00656C706F6550 || (sub_1D2879618() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D28C05E0 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D28C0600 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D28C0620 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D28C0650 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x42726579614C6975 && a2 == 0xEF676E696B636F6CLL)
  {

    return 19;
  }

  else
  {
    v6 = sub_1D2879618();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1D2706680(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07D0, &qword_1D289F870);
  v157 = *(v2 - 8);
  v158 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v151 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07D8, &qword_1D289F878);
  v152 = *(v4 - 8);
  v153 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v150 = &v96 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07E0, &qword_1D289F880);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v149 = &v96 - v6;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07E8, &qword_1D289F888);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v148 = &v96 - v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07F0, &qword_1D289F890);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v147 = &v96 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07F8, &qword_1D289F898);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v146 = &v96 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0800, &qword_1D289F8A0);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v145 = &v96 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0808, &qword_1D289F8A8);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v144 = &v96 - v11;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0810, &qword_1D289F8B0);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v143 = &v96 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0818, &qword_1D289F8B8);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v141 = &v96 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0820, &qword_1D289F8C0);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v142 = &v96 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0828, &qword_1D289F8C8);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v140 = &v96 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0830, &qword_1D289F8D0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v156 = &v96 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0838, &qword_1D289F8D8);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v139 = &v96 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0840, &qword_1D289F8E0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v155 = &v96 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0848, &qword_1D289F8E8);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v138 = &v96 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0850, &qword_1D289F8F0);
  v108 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v137 = &v96 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0858, &qword_1D289F8F8);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v154 = &v96 - v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0860, &qword_1D289F900);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v23 = &v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0868, &qword_1D289F908);
  v102 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v96 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0870, &qword_1D289F910);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v96 - v29;
  v31 = a1[3];
  v160 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D2708110();
  v32 = v159;
  sub_1D2879868();
  if (v32)
  {
LABEL_45:
    v89 = v160;
    goto LABEL_46;
  }

  v98 = v26;
  v97 = v24;
  v99 = v23;
  v33 = v154;
  v34 = v155;
  v35 = v156;
  v100 = 0;
  v37 = v157;
  v36 = v158;
  v101 = v28;
  v38 = v30;
  v159 = sub_1D2879538();
  if (*(v159 + 16) != 1 || *(v159 + 32) == 20)
  {
    v44 = v27;
    v27 = sub_1D28791F8();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0880, &qword_1D289F918);
    *v46 = &_s19BlockingSubCategoryON;
    sub_1D28794B8();
    sub_1D28791E8();
    (*(*(v27 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v101 + 8))(v30, v44);
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v39 = v36;
  v41 = v152;
  v40 = v153;
  switch(*(v159 + 32))
  {
    case 1:
      v161 = 1;
      sub_1D27087A0();
      v71 = v99;
      v72 = v100;
      sub_1D2879498();
      if (v72)
      {
        goto LABEL_43;
      }

      (*(v103 + 8))(v71, v104);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 129;
      goto LABEL_52;
    case 2:
      v161 = 2;
      sub_1D270874C();
      v62 = v100;
      sub_1D2879498();
      if (v62)
      {
        goto LABEL_43;
      }

      (*(v106 + 8))(v33, v107);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 130;
      goto LABEL_52;
    case 3:
      v161 = 3;
      sub_1D27086F8();
      v65 = v137;
      v66 = v100;
      sub_1D2879498();
      if (v66)
      {
        goto LABEL_43;
      }

      (*(v108 + 8))(v65, v105);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 131;
      goto LABEL_52;
    case 4:
      v161 = 4;
      sub_1D27086A4();
      v53 = v138;
      v54 = v100;
      sub_1D2879498();
      if (v54)
      {
        goto LABEL_43;
      }

      (*(v110 + 8))(v53, v109);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 160;
      goto LABEL_52;
    case 5:
      v161 = 5;
      sub_1D2708650();
      v75 = v100;
      sub_1D2879498();
      if (v75)
      {
        goto LABEL_43;
      }

      (*(v111 + 8))(v34, v112);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 161;
      goto LABEL_52;
    case 6:
      v161 = 6;
      sub_1D27085FC();
      v78 = v139;
      v79 = v100;
      sub_1D2879498();
      if (v79)
      {
        goto LABEL_43;
      }

      v80 = v27;
      sub_1D2708500();
      v81 = v114;
      sub_1D2879528();
      v82 = v101;
      (*(v113 + 8))(v78, v81);
      (*(v82 + 8))(v38, v80);
      swift_unknownObjectRelease();
      v27 = v161;
      goto LABEL_52;
    case 7:
      v161 = 7;
      sub_1D27085A8();
      v67 = v100;
      sub_1D2879498();
      if (v67)
      {
        goto LABEL_43;
      }

      v68 = v27;
      sub_1D2708500();
      v69 = v116;
      sub_1D2879528();
      v70 = v101;
      (*(v115 + 8))(v35, v69);
      (*(v70 + 8))(v38, v68);
      swift_unknownObjectRelease();
      v27 = v161 | 0x20u;
      goto LABEL_52;
    case 8:
      v161 = 8;
      sub_1D2708554();
      v87 = v140;
      v88 = v100;
      sub_1D2879498();
      if (v88)
      {
        goto LABEL_43;
      }

      v93 = v27;
      sub_1D2708500();
      v94 = v118;
      sub_1D2879528();
      v95 = v101;
      (*(v117 + 8))(v87, v94);
      (*(v95 + 8))(v38, v93);
      swift_unknownObjectRelease();
      v27 = v161 | 0x40u;
      goto LABEL_52;
    case 9:
      v161 = 9;
      sub_1D27084AC();
      v57 = v142;
      v58 = v100;
      sub_1D2879498();
      if (v58)
      {
        goto LABEL_43;
      }

      v59 = v27;
      sub_1D2708500();
      v60 = v122;
      sub_1D2879528();
      v61 = v101;
      (*(v120 + 8))(v57, v60);
      (*(v61 + 8))(v38, v59);
      swift_unknownObjectRelease();
      v27 = v161 | 0x60u;
      goto LABEL_52;
    case 0xA:
      v161 = 10;
      sub_1D2708458();
      v85 = v141;
      v86 = v100;
      sub_1D2879498();
      if (v86)
      {
        goto LABEL_43;
      }

      (*(v119 + 8))(v85, v121);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 162;
      goto LABEL_52;
    case 0xB:
      v161 = 11;
      sub_1D2708404();
      v51 = v143;
      v52 = v100;
      sub_1D2879498();
      if (v52)
      {
        goto LABEL_43;
      }

      (*(v123 + 8))(v51, v124);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 163;
      goto LABEL_52;
    case 0xC:
      v161 = 12;
      sub_1D27083B0();
      v55 = v144;
      v56 = v100;
      sub_1D2879498();
      if (v56)
      {
        goto LABEL_43;
      }

      (*(v125 + 8))(v55, v126);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 192;
      goto LABEL_52;
    case 0xD:
      v161 = 13;
      sub_1D270835C();
      v76 = v145;
      v77 = v100;
      sub_1D2879498();
      if (v77)
      {
        goto LABEL_43;
      }

      (*(v127 + 8))(v76, v128);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 193;
      goto LABEL_52;
    case 0xE:
      v161 = 14;
      sub_1D2708308();
      v49 = v146;
      v50 = v100;
      sub_1D2879498();
      if (v50)
      {
        goto LABEL_43;
      }

      (*(v129 + 8))(v49, v130);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 194;
      goto LABEL_52;
    case 0xF:
      v161 = 15;
      sub_1D27082B4();
      v63 = v147;
      v64 = v100;
      sub_1D2879498();
      if (v64)
      {
        goto LABEL_43;
      }

      (*(v131 + 8))(v63, v132);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 195;
      goto LABEL_52;
    case 0x10:
      v161 = 16;
      sub_1D2708260();
      v47 = v148;
      v48 = v100;
      sub_1D2879498();
      if (v48)
      {
        goto LABEL_43;
      }

      (*(v133 + 8))(v47, v134);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 224;
      goto LABEL_52;
    case 0x11:
      v161 = 17;
      sub_1D270820C();
      v73 = v149;
      v74 = v100;
      sub_1D2879498();
      if (v74)
      {
        goto LABEL_43;
      }

      (*(v135 + 8))(v73, v136);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 225;
      goto LABEL_52;
    case 0x12:
      v161 = 18;
      sub_1D27081B8();
      v83 = v150;
      v84 = v100;
      sub_1D2879498();
      if (v84)
      {
        goto LABEL_43;
      }

      (*(v41 + 8))(v83, v40);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 226;
      goto LABEL_52;
    case 0x13:
      v161 = 19;
      sub_1D2708164();
      v91 = v151;
      v92 = v100;
      sub_1D2879498();
      if (v92)
      {
        (*(v101 + 8))(v38, v27);
        swift_unknownObjectRelease();
      }

      else
      {
        (*(v37 + 8))(v91, v39);
        (*(v101 + 8))(v38, v27);
        swift_unknownObjectRelease();
        v27 = 227;
      }

      v89 = v160;
      break;
    default:
      v161 = 0;
      sub_1D27087F4();
      v42 = v98;
      v43 = v100;
      sub_1D2879498();
      if (v43)
      {
LABEL_43:
        (*(v101 + 8))(v38, v27);
        goto LABEL_44;
      }

      (*(v102 + 8))(v42, v97);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 128;
LABEL_52:
      v89 = v160;
      break;
  }

LABEL_46:
  __swift_destroy_boxed_opaque_existential_0(v89);
  return v27;
}

unint64_t sub_1D2708110()
{
  result = qword_1EC6E0878;
  if (!qword_1EC6E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0878);
  }

  return result;
}

unint64_t sub_1D2708164()
{
  result = qword_1EC6E0888;
  if (!qword_1EC6E0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0888);
  }

  return result;
}

unint64_t sub_1D27081B8()
{
  result = qword_1EC6E0890;
  if (!qword_1EC6E0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0890);
  }

  return result;
}

unint64_t sub_1D270820C()
{
  result = qword_1EC6E0898;
  if (!qword_1EC6E0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0898);
  }

  return result;
}

unint64_t sub_1D2708260()
{
  result = qword_1EC6E08A0;
  if (!qword_1EC6E08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08A0);
  }

  return result;
}

unint64_t sub_1D27082B4()
{
  result = qword_1EC6E08A8;
  if (!qword_1EC6E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08A8);
  }

  return result;
}

unint64_t sub_1D2708308()
{
  result = qword_1EC6E08B0;
  if (!qword_1EC6E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08B0);
  }

  return result;
}

unint64_t sub_1D270835C()
{
  result = qword_1EC6E08B8;
  if (!qword_1EC6E08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08B8);
  }

  return result;
}

unint64_t sub_1D27083B0()
{
  result = qword_1EC6E08C0;
  if (!qword_1EC6E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08C0);
  }

  return result;
}

unint64_t sub_1D2708404()
{
  result = qword_1EC6E08C8;
  if (!qword_1EC6E08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08C8);
  }

  return result;
}

unint64_t sub_1D2708458()
{
  result = qword_1EC6E08D0;
  if (!qword_1EC6E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08D0);
  }

  return result;
}

unint64_t sub_1D27084AC()
{
  result = qword_1EC6E08D8;
  if (!qword_1EC6E08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08D8);
  }

  return result;
}

unint64_t sub_1D2708500()
{
  result = qword_1EC6E08E0;
  if (!qword_1EC6E08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08E0);
  }

  return result;
}

unint64_t sub_1D2708554()
{
  result = qword_1EC6E08E8;
  if (!qword_1EC6E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08E8);
  }

  return result;
}

unint64_t sub_1D27085A8()
{
  result = qword_1EC6E08F0;
  if (!qword_1EC6E08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08F0);
  }

  return result;
}

unint64_t sub_1D27085FC()
{
  result = qword_1EC6E08F8;
  if (!qword_1EC6E08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08F8);
  }

  return result;
}

unint64_t sub_1D2708650()
{
  result = qword_1EC6E0900;
  if (!qword_1EC6E0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0900);
  }

  return result;
}

unint64_t sub_1D27086A4()
{
  result = qword_1EC6E0908;
  if (!qword_1EC6E0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0908);
  }

  return result;
}

unint64_t sub_1D27086F8()
{
  result = qword_1EC6E0910;
  if (!qword_1EC6E0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0910);
  }

  return result;
}

unint64_t sub_1D270874C()
{
  result = qword_1EC6E0918;
  if (!qword_1EC6E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0918);
  }

  return result;
}

unint64_t sub_1D27087A0()
{
  result = qword_1EC6E0920;
  if (!qword_1EC6E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0920);
  }

  return result;
}

unint64_t sub_1D27087F4()
{
  result = qword_1EC6E0928;
  if (!qword_1EC6E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0928);
  }

  return result;
}

unint64_t sub_1D2708848()
{
  result = qword_1EC6E09D8;
  if (!qword_1EC6E09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09D8);
  }

  return result;
}

unint64_t sub_1D270889C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2879488();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D27088E8()
{
  result = qword_1EC6E09E0;
  if (!qword_1EC6E09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09E0);
  }

  return result;
}

unint64_t sub_1D270893C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2879488();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D2708988()
{
  result = qword_1EC6E09E8;
  if (!qword_1EC6E09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09E8);
  }

  return result;
}

uint64_t _s19BlockingSubCategoryO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19BlockingSubCategoryO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2708C70()
{
  result = qword_1EC6E09F0;
  if (!qword_1EC6E09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09F0);
  }

  return result;
}

unint64_t sub_1D2708CC8()
{
  result = qword_1EC6E09F8;
  if (!qword_1EC6E09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09F8);
  }

  return result;
}

unint64_t sub_1D2708D20()
{
  result = qword_1EC6E0A00;
  if (!qword_1EC6E0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A00);
  }

  return result;
}

unint64_t sub_1D2708D78()
{
  result = qword_1EC6E0A08;
  if (!qword_1EC6E0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A08);
  }

  return result;
}

unint64_t sub_1D2708DD0()
{
  result = qword_1EC6E0A10;
  if (!qword_1EC6E0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A10);
  }

  return result;
}

unint64_t sub_1D2708E28()
{
  result = qword_1EC6E0A18;
  if (!qword_1EC6E0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A18);
  }

  return result;
}

unint64_t sub_1D2708E80()
{
  result = qword_1EC6E0A20;
  if (!qword_1EC6E0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A20);
  }

  return result;
}

unint64_t sub_1D2708ED8()
{
  result = qword_1EC6E0A28;
  if (!qword_1EC6E0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A28);
  }

  return result;
}

unint64_t sub_1D2708F30()
{
  result = qword_1EC6E0A30;
  if (!qword_1EC6E0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A30);
  }

  return result;
}

unint64_t sub_1D2708F88()
{
  result = qword_1EC6E0A38;
  if (!qword_1EC6E0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A38);
  }

  return result;
}

unint64_t sub_1D2708FE0()
{
  result = qword_1EC6E0A40;
  if (!qword_1EC6E0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A40);
  }

  return result;
}

unint64_t sub_1D2709038()
{
  result = qword_1EC6E0A48;
  if (!qword_1EC6E0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A48);
  }

  return result;
}

unint64_t sub_1D2709090()
{
  result = qword_1EC6E0A50;
  if (!qword_1EC6E0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A50);
  }

  return result;
}

unint64_t sub_1D27090E8()
{
  result = qword_1EC6E0A58;
  if (!qword_1EC6E0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A58);
  }

  return result;
}

unint64_t sub_1D2709140()
{
  result = qword_1EC6E0A60;
  if (!qword_1EC6E0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A60);
  }

  return result;
}

unint64_t sub_1D2709198()
{
  result = qword_1EC6E0A68;
  if (!qword_1EC6E0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A68);
  }

  return result;
}

unint64_t sub_1D27091F0()
{
  result = qword_1EC6E0A70;
  if (!qword_1EC6E0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A70);
  }

  return result;
}

unint64_t sub_1D2709248()
{
  result = qword_1EC6E0A78;
  if (!qword_1EC6E0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A78);
  }

  return result;
}

unint64_t sub_1D27092A0()
{
  result = qword_1EC6E0A80;
  if (!qword_1EC6E0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A80);
  }

  return result;
}

unint64_t sub_1D27092F8()
{
  result = qword_1EC6E0A88;
  if (!qword_1EC6E0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A88);
  }

  return result;
}

unint64_t sub_1D2709350()
{
  result = qword_1EC6E0A90;
  if (!qword_1EC6E0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A90);
  }

  return result;
}

unint64_t sub_1D27093A8()
{
  result = qword_1EC6E0A98;
  if (!qword_1EC6E0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A98);
  }

  return result;
}

unint64_t sub_1D2709400()
{
  result = qword_1EC6E0AA0;
  if (!qword_1EC6E0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AA0);
  }

  return result;
}

unint64_t sub_1D2709458()
{
  result = qword_1EC6E0AA8;
  if (!qword_1EC6E0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AA8);
  }

  return result;
}

unint64_t sub_1D27094B0()
{
  result = qword_1EC6E0AB0;
  if (!qword_1EC6E0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AB0);
  }

  return result;
}

unint64_t sub_1D2709508()
{
  result = qword_1EC6E0AB8;
  if (!qword_1EC6E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AB8);
  }

  return result;
}

unint64_t sub_1D2709560()
{
  result = qword_1EC6E0AC0;
  if (!qword_1EC6E0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AC0);
  }

  return result;
}

unint64_t sub_1D27095B8()
{
  result = qword_1EC6E0AC8;
  if (!qword_1EC6E0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AC8);
  }

  return result;
}

unint64_t sub_1D2709610()
{
  result = qword_1EC6E0AD0;
  if (!qword_1EC6E0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AD0);
  }

  return result;
}

unint64_t sub_1D2709668()
{
  result = qword_1EC6E0AD8;
  if (!qword_1EC6E0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AD8);
  }

  return result;
}

unint64_t sub_1D27096C0()
{
  result = qword_1EC6E0AE0;
  if (!qword_1EC6E0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AE0);
  }

  return result;
}

unint64_t sub_1D2709718()
{
  result = qword_1EC6E0AE8;
  if (!qword_1EC6E0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AE8);
  }

  return result;
}

unint64_t sub_1D2709770()
{
  result = qword_1EC6E0AF0;
  if (!qword_1EC6E0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AF0);
  }

  return result;
}

unint64_t sub_1D27097C8()
{
  result = qword_1EC6E0AF8;
  if (!qword_1EC6E0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AF8);
  }

  return result;
}

unint64_t sub_1D2709820()
{
  result = qword_1EC6E0B00;
  if (!qword_1EC6E0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B00);
  }

  return result;
}

unint64_t sub_1D2709878()
{
  result = qword_1EC6E0B08;
  if (!qword_1EC6E0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B08);
  }

  return result;
}

unint64_t sub_1D27098D0()
{
  result = qword_1EC6E0B10;
  if (!qword_1EC6E0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B10);
  }

  return result;
}

unint64_t sub_1D2709928()
{
  result = qword_1EC6E0B18;
  if (!qword_1EC6E0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B18);
  }

  return result;
}

unint64_t sub_1D2709980()
{
  result = qword_1EC6E0B20;
  if (!qword_1EC6E0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B20);
  }

  return result;
}

unint64_t sub_1D27099D8()
{
  result = qword_1EC6E0B28;
  if (!qword_1EC6E0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B28);
  }

  return result;
}

unint64_t sub_1D2709A30()
{
  result = qword_1EC6E0B30;
  if (!qword_1EC6E0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B30);
  }

  return result;
}

unint64_t sub_1D2709A88()
{
  result = qword_1EC6E0B38;
  if (!qword_1EC6E0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B38);
  }

  return result;
}

unint64_t sub_1D2709AE0()
{
  result = qword_1EC6E0B40;
  if (!qword_1EC6E0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B40);
  }

  return result;
}

unint64_t sub_1D2709B38()
{
  result = qword_1EC6E0B48;
  if (!qword_1EC6E0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B48);
  }

  return result;
}

unint64_t sub_1D2709B90()
{
  result = qword_1EC6E0B50;
  if (!qword_1EC6E0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B50);
  }

  return result;
}

unint64_t sub_1D2709BE8()
{
  result = qword_1EC6E0B58;
  if (!qword_1EC6E0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B58);
  }

  return result;
}

unint64_t sub_1D2709C40()
{
  result = qword_1EC6E0B60;
  if (!qword_1EC6E0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B60);
  }

  return result;
}

void sub_1D2709CB4(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    sub_1D2872698();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a1;
      _os_log_impl(&dword_1D226E000, v9, v10, "Tried to initialise CreationViewStyle from unknown GPStyle: %ld. Fallback on GenerativePlayground", v11, 0xCu);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = 4;
  }

  else
  {
    v8 = 0x401u >> (8 * a1);
  }

  *a2 = v8;
}

uint64_t type metadata accessor for OnboardingTextViewModifier(uint64_t a1)
{
  result = qword_1ED89F840;
  if (!qword_1ED89F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2709ECC(uint64_t a1)
{
  sub_1D24AF338(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D2709F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v40);
  v48 = &v40 - v2;
  v47 = sub_1D2875C28();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v46 = sub_1D2875C48();
  v8 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B68, &qword_1D28A0D00);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B70, &qword_1D28A0D08);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = sub_1D28764D8();
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B78, &unk_1D28A0D40);
  (*(*(v21 - 8) + 16))(v15, v42, v21);
  v22 = &v15[*(v13 + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  sub_1D2876438();
  sub_1D270AAEC();
  v23 = v16;
  sub_1D2876758();
  sub_1D22BD238(v15, &qword_1EC6E0B68, &qword_1D28A0D00);
  v24 = *(v45 + *(type metadata accessor for OnboardingTextViewModifier(0) + 20));
  v25 = swift_getKeyPath();
  v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B80, &qword_1D28A0D80) + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = swift_getKeyPath();
  v28 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B88, &unk_1D28A0DB8) + 36)];
  *v28 = v27;
  v28[8] = 1;
  sub_1D2875C18();
  v29 = v47;
  (*(v3 + 16))(v44, v7, v47);
  sub_1D2875C38();
  (*(v3 + 8))(v7, v29);
  v30 = v46;
  (*(v8 + 16))(v43, v12, v46);
  sub_1D270B36C(&qword_1ED89D4C8, MEMORY[0x1E697FBD0], MEMORY[0x1E697FBC8]);
  v31 = v30;
  v32 = sub_1D2874988();
  v33 = v48;
  (*(v8 + 8))(v12, v31);
  *&v18[*(v23 + 36)] = v32;
  v34 = *MEMORY[0x1E697E6C0];
  v35 = sub_1D2874E88();
  (*(*(v35 - 8) + 104))(v33, v34, v35);
  sub_1D270B36C(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
    sub_1D270ABD0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    v37 = v41;
    sub_1D28769B8();
    sub_1D22BD238(v33, &unk_1EC6DE860, &unk_1D287CD70);
    sub_1D22990C0(v18);
    sub_1D2739754(1, 1, v49);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B90, &qword_1D28A0DC8);
    v38 = v37 + *(result + 36);
    v39 = v49[1];
    *v38 = v49[0];
    *(v38 + 16) = v39;
    *(v38 + 32) = v49[2];
    *(v38 + 48) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D270A560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D2875F38();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B98, &qword_1D28A0DD0) + 36));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(type metadata accessor for OnboardingTextViewModifier(0) + 20)) = 0x3FF0000000000000;
  KeyPath = swift_getKeyPath();
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BA0, &qword_1D28A0E40) + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  LOBYTE(KeyPath) = sub_1D2876328();
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BA8, &qword_1D28A0E48) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  LOBYTE(KeyPath) = sub_1D2876398();
  sub_1D2874298();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BB0, &qword_1D28A0E50) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = sub_1D2877848();
  v21 = v20;
  v22 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BB8, &qword_1D28A0E58) + 36));
  *v22 = sub_1D2877848();
  v22[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BC0, &qword_1D28A0E60);
  sub_1D270A744(a1, a2, v22 + *(v24 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BC8, &qword_1D28A0E68);
  v26 = (v22 + *(result + 36));
  *v26 = v19;
  v26[1] = v21;
  return result;
}

uint64_t sub_1D270A744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a1;
  v36 = a3;
  v3 = sub_1D2877548();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7C0, &qword_1D288DD90);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BD0, &qword_1D28AAE90);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1D2875868();
  v21 = *(*(v20 - 8) + 104);
  v21(v18, v19, v20);
  v22 = [objc_opt_self() systemFillColor];
  *&v18[*(v13 + 60)] = sub_1D2877128();
  *&v18[*(v13 + 64)] = 256;
  v21(v5, v19, v20);
  if (sub_1D2875F48())
  {
    v23 = v31;
    sub_1D2870F78();
  }

  else
  {
    v37 = sub_1D2877098();
    v23 = sub_1D28748D8();
  }

  sub_1D270AE34(v5, v9);
  v24 = v33;
  v25 = v34;
  *&v9[*(v33 + 52)] = v23;
  *&v9[*(v24 + 56)] = 256;
  sub_1D270AE98(v9, v25);
  sub_1D22BD1D0(v18, v15, &qword_1EC6E0BD0, &qword_1D28AAE90);
  v26 = v35;
  sub_1D22BD1D0(v25, v35, &qword_1EC6DC7C0, &qword_1D288DD90);
  v27 = v36;
  sub_1D22BD1D0(v15, v36, &qword_1EC6E0BD0, &qword_1D28AAE90);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BD8, &unk_1D28A0E70);
  sub_1D22BD1D0(v26, v27 + *(v28 + 48), &qword_1EC6DC7C0, &qword_1D288DD90);
  sub_1D22BD238(v25, &qword_1EC6DC7C0, &qword_1D288DD90);
  sub_1D22BD238(v18, &qword_1EC6E0BD0, &qword_1D28AAE90);
  sub_1D22BD238(v26, &qword_1EC6DC7C0, &qword_1D288DD90);
  return sub_1D22BD238(v15, &qword_1EC6E0BD0, &qword_1D28AAE90);
}

unint64_t sub_1D270AAEC()
{
  result = qword_1ED89DDB0;
  if (!qword_1ED89DDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B68, &qword_1D28A0D00);
    sub_1D22BB9D8(&qword_1ED89D470, &qword_1EC6E0B78, &unk_1D28A0D40, MEMORY[0x1E697FDF8]);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030, &unk_1D2880540, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDB0);
  }

  return result;
}

unint64_t sub_1D270ABD0()
{
  result = qword_1ED89D8F0;
  if (!qword_1ED89D8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B70, &qword_1D28A0D08);
    sub_1D270AC88();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918, &qword_1D288E3A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8F0);
  }

  return result;
}

unint64_t sub_1D270AC88()
{
  result = qword_1ED89DA70;
  if (!qword_1ED89DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B88, &unk_1D28A0DB8);
    sub_1D270AD40();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8, &qword_1D2880900, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA70);
  }

  return result;
}

unint64_t sub_1D270AD40()
{
  result = qword_1ED89DCE0;
  if (!qword_1ED89DCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B80, &qword_1D28A0D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B68, &qword_1D28A0D00);
    sub_1D270AAEC();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0, &unk_1D288E500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCE0);
  }

  return result;
}

uint64_t sub_1D270AE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2877548();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D270AE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7C0, &qword_1D288DD90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D270AF08()
{
  result = qword_1ED89DC78;
  if (!qword_1ED89DC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B90, &qword_1D28A0DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B70, &qword_1D28A0D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    sub_1D270ABD0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22F5CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC78);
  }

  return result;
}

unint64_t sub_1D270B030()
{
  result = qword_1EC6D79D0;
  if (!qword_1EC6D79D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BB8, &qword_1D28A0E58);
    sub_1D270B144(&qword_1EC6D7A40, &qword_1EC6E0BB0, &qword_1D28A0E50, sub_1D270B114);
    sub_1D22BB9D8(&qword_1EC6D78A0, &qword_1EC6E0BC8, &qword_1D28A0E68, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79D0);
  }

  return result;
}

uint64_t sub_1D270B144(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1D270B1C8()
{
  result = qword_1EC6D7BB8;
  if (!qword_1EC6D7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BA0, &qword_1D28A0E40);
    sub_1D270B280();
    sub_1D22BB9D8(&qword_1ED89D2B8, &qword_1EC6DA270, &qword_1D28880F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BB8);
  }

  return result;
}

unint64_t sub_1D270B280()
{
  result = qword_1EC6D7D60;
  if (!qword_1EC6D7D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B98, &qword_1D28A0DD0);
    sub_1D270B36C(&qword_1ED89D398, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1D270B36C(&qword_1ED89F850, type metadata accessor for OnboardingTextViewModifier, &unk_1D28A0CA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D60);
  }

  return result;
}

uint64_t sub_1D270B36C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D270B3E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BE0, &unk_1D28A0F18);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-v4];
  v23 = *(v1 + 24);
  v20 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  if (v22)
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 1.0;
  }

  sub_1D2877AE8();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BE8, &qword_1D28A0F28);
  (*(*(v11 - 8) + 16))(v5, a1, v11);
  v12 = &v5[*(v3 + 36)];
  *v12 = v6;
  v12[1] = v6;
  *(v12 + 2) = v8;
  *(v12 + 3) = v10;
  v13 = *(v1 + 8);
  LOBYTE(v12) = *(v1 + 16);
  *&v20 = *v1;
  v14 = v20;
  *(&v20 + 1) = v13;
  v21 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  MEMORY[0x1D389FF60](&v22, v15);
  v19[15] = v22;
  v22 = v14;
  v16 = swift_allocObject();
  v17 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v1 + 32);
  sub_1D250D77C(&v22, &v20);
  sub_1D2870F78();
  sub_1D270B8F0(&v23, &v20);
  sub_1D270B960();
  sub_1D2876F58();

  return sub_1D270BA50(v5);
}

void *sub_1D270B60C(uint64_t *a1)
{
  v2 = sub_1D28760E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  v6 = a1[1];
  LOBYTE(v4) = *(a1 + 16);
  *&v14 = *a1;
  *(&v14 + 1) = v6;
  v15 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  result = MEMORY[0x1D389FF60](v13, v8);
  if (LOBYTE(v13[0]) == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v12[-16] = a1;
    v16 = v7;
    v14 = *(a1 + 3);
    v10 = swift_allocObject();
    v11 = *(a1 + 1);
    *(v10 + 16) = *a1;
    *(v10 + 32) = v11;
    *(v10 + 48) = a1[4];
    sub_1D250D77C(&v16, v13);
    sub_1D2870F78();
    sub_1D270B8F0(&v14, v13);
    sub_1D2877938();
    sub_1D28760D8();
    sub_1D2874BD8();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_1D270B804(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  sub_1D28774F8();
  sub_1D2877938();
  sub_1D2874BE8();

  return result;
}

uint64_t sub_1D270B8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D270B960()
{
  result = qword_1ED89DD80;
  if (!qword_1ED89DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BE0, &unk_1D28A0F18);
    sub_1D270B9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD80);
  }

  return result;
}

unint64_t sub_1D270B9EC()
{
  result = qword_1ED89D420;
  if (!qword_1ED89D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BE8, &qword_1D28A0F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D420);
  }

  return result;
}

uint64_t sub_1D270BA50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BE0, &unk_1D28A0F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_30()
{

  return swift_deallocObject();
}

double sub_1D270BB40(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();
  return result;
}

uint64_t sub_1D270BBA0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v30 = a3;
  v31 = type metadata accessor for PlaygroundImage(0);
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v29 = *(v4 + 16);
  v20 = sub_1D2871818();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v23 = v21 + 16;
  v32 = a2;
  v22(v19, a2, v20);
  v19[*(v17 + 44)] = v30 & 1;
  sub_1D22BD1D0(a1, v15, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D22BD1D0(v15, v12, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v24 = (*(v7 + 48))(v12, 1, v31);
  v25 = (v23 - 8);
  if (v24 == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v26 = sub_1D2719850(v19);
    (*v25)(v32, v20, v26);
    sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
  }

  else
  {
    sub_1D23EEBD4(v12, v9);
    v27 = sub_1D27192DC(v19, v9);
    (*v25)(v32, v20, v27);
    sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D23D4DFC(v9);
  }

  sub_1D22BD238(v15, &unk_1EC6DE5A0, &unk_1D287F0E0);
  return sub_1D22BD238(v19, &qword_1EC6DCAB8, &qword_1D28A11A0);
}

uint64_t sub_1D270BEC8(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v4 + 64) = swift_task_alloc();
  sub_1D2878568();
  *(v4 + 72) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D270BFA0, v6, v5);
}

uint64_t sub_1D270BFA0()
{
  if (*(v0 + 105) == 1)
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 64);
    sub_1D270C724(*(v0 + 56) + *(**(v0 + 56) + 160), *(v0 + 104) & 1, v2);
    v3 = type metadata accessor for PlaygroundImage(0);
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      v16 = *(v0 + 64);
      v17 = *(v0 + 48);

      sub_1D23EEBD4(v16, v17);
      (*(v4 + 56))(v17, 0, 1, v3);
      goto LABEL_13;
    }

    sub_1D22BD238(*(v0 + 64), &unk_1EC6DE5A0, &unk_1D287F0E0);
    v1 = *(v0 + 56);
  }

  v5 = *(v0 + 104);
  v6 = swift_task_alloc();
  *v6 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  v6[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 40) = v1;
  sub_1D2583618();
  sub_1D28719E8();

  v7 = *(*v1 + 192);
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_1D25D0C1C(v5 & 1);
    if ((v10 & 1) != 0 && *(*(v8 + 56) + v9) == 1)
    {
      v11 = *(v0 + 48);

      v12 = type metadata accessor for PlaygroundImage(0);
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
LABEL_13:

      v18 = *(v0 + 8);

      return v18();
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1D270C2A8;
  v14 = *(v0 + 48);

  return sub_1D270DC44(v14, v5 & 1);
}

uint64_t sub_1D270C2A8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D270C3C8, v3, v2);
}

uint64_t sub_1D270C3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D270C430()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  return *(v0 + 49);
}

void sub_1D270C4D0(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
    sub_1D28719D8();
  }
}

uint64_t sub_1D270C5E0()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  return *(v0 + 48);
}

uint64_t sub_1D270C680()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D270C724@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(v3 + 16);
  v12 = sub_1D2871818();
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  v10[*(v8 + 44)] = a2 & 1;
  swift_beginAccess();
  v13 = *(v11 + 16);
  if (*(v13 + 16) && (v14 = sub_1D25D0A7C(v10), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v17 = sub_1D2870F78();
    sub_1D27190D8(v17);
    sub_1D22BD238(v10, &qword_1EC6DCAB8, &qword_1D28A11A0);
    v18 = *(*v16 + 112);
    swift_beginAccess();
    sub_1D239A330(v16 + v18, a3);

    v19 = 0;
  }

  else
  {
    swift_endAccess();
    sub_1D22BD238(v10, &qword_1EC6DCAB8, &qword_1D28A11A0);
    v19 = 1;
  }

  v20 = type metadata accessor for PlaygroundImage(0);
  return (*(*(v20 - 8) + 56))(a3, v19, 1, v20);
}

uint64_t sub_1D270C914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658, &qword_1D28A1160);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  if (*(v0 + 96))
  {
    v4 = *(v0 + 96);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660, &unk_1D289A660);
    v4 = swift_allocObject();
    v6 = (v4 + *(*v4 + 104));
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08, &unk_1D28A1180);
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = v1[7];
    *&v3[v8] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v3[v1[8]] = 0;
    v3[v1[9]] = 0;
    *v6 = 0;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668, &unk_1D289A670) + 28);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670, &unk_1D28A1190);
    bzero(v6 + v9, *(*(v10 - 8) + 64));
    sub_1D22EC9BC(v3, v6 + v9, &qword_1EC6DF658, &qword_1D28A1160);
    *(v4 + 16) = &unk_1D28A1170;
    *(v4 + 24) = v5;
    *(v4 + 32) = 0;
    *(v0 + 96) = v4;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v4;
}

uint64_t sub_1D270CB24(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1D2872438();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = sub_1D2878568();
  v2[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[15] = v5;
  v2[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D270CC1C, v5, v4);
}

uint64_t sub_1D270CC1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = v2[10];
    v0[18] = v3;
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v4 = objc_allocWithZone(MEMORY[0x1E6978868]);
      v5 = v3;
      v6 = [v4 init];
      v0[19] = v6;
      [v6 setNetworkAccessAllowed_];
      [v6 setDeliveryMode_];
      [v6 setSynchronous_];
      v0[20] = sub_1D2878558();
      v7 = swift_task_alloc();
      v0[21] = v7;
      *v7 = v0;
      v7[1] = sub_1D270CE18;
      v8 = v0[12];

      return sub_1D23E4308(v8, v5);
    }
  }

  sub_1D233F184();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D270CE18()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v5 = sub_1D270D270;
  }

  else
  {
    *(v2 + 184) = v3;
    *(v2 + 192) = v4;
    v5 = sub_1D270CF7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D270CF7C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = sub_1D263A720();
  *(v0 + 248) = 0;
  *(v0 + 252) = 1;
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  v4[1].i64[0] = v0 + 248;
  v4[1].i64[1] = v2;
  v4[2] = vdupq_n_s64(0x4080000000000000uLL);
  v4[3].i64[0] = v1;
  v4[3].i8[8] = v3 & 1;
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *(v5 + 16) = v0 + 248;
  v6 = sub_1D2878558();
  *(v0 + 216) = v6;
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  v8 = type metadata accessor for PlaygroundImage(0);
  *v7 = v0;
  v7[1] = sub_1D270D0DC;
  v9 = *(v0 + 64);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v9, &unk_1D289A680, v4, sub_1D2643374, v5, v6, v10, v8);
}

uint64_t sub_1D270D0DC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1D270D3FC;
  }

  else
  {
    v5 = sub_1D270D2E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270D270()
{

  *(v0 + 240) = *(v0 + 176);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D270D494, v1, v2);
}

uint64_t sub_1D270D2E4()
{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[15];
  v6 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1D270D374, v5, v6);
}

uint64_t sub_1D270D374()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270D3FC()
{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v0[30] = v0[29];
  v5 = v0[15];
  v6 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1D270D494, v5, v6);
}

uint64_t sub_1D270D494()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270D510()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658, &qword_1D28A1160);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  if (*(v0 + 104))
  {
    v4 = *(v0 + 104);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660, &unk_1D289A660);
    v4 = swift_allocObject();
    v6 = (v4 + *(*v4 + 104));
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08, &unk_1D28A1180);
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = v1[7];
    *&v3[v8] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v3[v1[8]] = 0;
    v3[v1[9]] = 0;
    *v6 = 0;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668, &unk_1D289A670) + 28);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670, &unk_1D28A1190);
    bzero(v6 + v9, *(*(v10 - 8) + 64));
    sub_1D22EC9BC(v3, v6 + v9, &qword_1EC6DF658, &qword_1D28A1160);
    *(v4 + 16) = &unk_1D28A11F0;
    *(v4 + 24) = v5;
    *(v4 + 32) = 0;
    *(v0 + 104) = v4;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v4;
}

uint64_t sub_1D270D720(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_1D2878568();
  v2[10] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D270D7B8, v4, v3);
}

uint64_t sub_1D270D7B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = v2[10];
    v0[14] = v3;
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v4 = objc_allocWithZone(MEMORY[0x1E6978868]);
      v5 = v3;
      v6 = [v4 init];
      v0[15] = v6;
      [v6 setNetworkAccessAllowed_];
      [v6 setDeliveryMode_];
      [v6 setSynchronous_];
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_1D270D9A0;
      v8 = v0[8];

      return sub_1D23E3EFC(v8, v5, v6);
    }
  }

  sub_1D233F184();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1D270D9A0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D270DB68;
  }

  else
  {
    v5 = sub_1D270DAF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270DAF4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270DB68()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1D270DBDC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D26421EC();

  sub_1D2870F68();
  return result;
}

uint64_t sub_1D270DC44(uint64_t a1, char a2)
{
  *(v3 + 520) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  v4 = sub_1D2878538();
  *(v3 + 256) = v4;
  *(v3 + 264) = *(v4 - 8);
  *(v3 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v3 + 280) = swift_task_alloc();
  v5 = sub_1D2871818();
  *(v3 + 288) = v5;
  *(v3 + 296) = *(v5 - 8);
  *(v3 + 304) = swift_task_alloc();
  v6 = type metadata accessor for PlaygroundImage(0);
  *(v3 + 312) = v6;
  *(v3 + 320) = *(v6 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  v7 = sub_1D2873CB8();
  *(v3 + 352) = v7;
  *(v3 + 360) = *(v7 - 8);
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  sub_1D2878568();
  *(v3 + 408) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v3 + 416) = v9;
  *(v3 + 424) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D270DED0, v9, v8);
}

uint64_t sub_1D270DED0(uint64_t a1)
{
  v67 = v1;
  sub_1D28724F8();
  sub_1D2870F78();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A08();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 400);
  v7 = *(v1 + 352);
  v6 = *(v1 + 360);
  if (v4)
  {
    v59 = *(v1 + 520);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315394;
    v62 = v5;
    v66 = v9;
    sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D28795C8();
    v12 = v11;

    v13 = sub_1D23D7C84(v10, v12, &v66);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (v59)
    {
      v14 = 0x696665446C6C7566;
    }

    else
    {
      v14 = 0x69616E626D756874;
    }

    if (v59)
    {
      v15 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v15 = 0xE90000000000006CLL;
    }

    v16 = sub_1D23D7C84(v14, v15, &v66);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D226E000, v2, v3, "Will load image with id: %s, type: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v17 = *(v6 + 8);
    v17(v62, v7);
  }

  else
  {

    v17 = *(v6 + 8);
    v17(v5, v7);
  }

  *(v1 + 432) = v17;
  v18 = *(v1 + 248);
  swift_beginAccess();
  if (*(v18 + 80))
  {
    v63 = *(v1 + 408);
    v19 = *(v1 + 248);
    v20 = *(v1 + 520);
    v21 = swift_task_alloc();
    v22 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
    *(v1 + 440) = v22;
    *v21 = v22;
    v21[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v1 + 448) = *(*v19 + 224);
    *(v1 + 160) = v19;
    *(v1 + 456) = sub_1D2583618();
    sub_1D28719E8();

    *(v1 + 168) = v19;
    v23 = swift_task_alloc();
    *v23 = v22;
    v23[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    v24 = *(*v19 + 192);
    *(v1 + 464) = v24;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v19 + v24);
    *(v19 + v24) = 0x8000000000000000;
    sub_1D24E8AB8(2, v20 & 1, isUniquelyReferenced_nonNull_native);
    *(v19 + v24) = v66;
    swift_endAccess();
    *(v1 + 176) = v19;
    v26 = swift_task_alloc();
    *v26 = v22;
    v26[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    if (v20)
    {
      *(v1 + 496) = sub_1D270D510();
      sub_1D2870F78();
      v27 = swift_task_alloc();
      *(v1 + 504) = v27;
      *v27 = v1;
      v27[1] = sub_1D270EA38;
      v28 = *(v1 + 328);
    }

    else
    {
      *(v1 + 472) = sub_1D270C914();
      sub_1D2870F78();
      v45 = swift_task_alloc();
      *(v1 + 480) = v45;
      *v45 = v1;
      v45[1] = sub_1D270E8BC;
      v28 = *(v1 + 336);
    }

    v46 = MEMORY[0x1E69E85E0];

    return sub_1D271066C(v28, v63, v46);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A08();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v1 + 392);
    v33 = *(v1 + 352);
    if (v31)
    {
      v57 = *(v1 + 520);
      v64 = *(v1 + 352);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66 = v35;
      *v34 = 136315394;
      v60 = v32;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v36 = sub_1D28795C8();
      v38 = v37;

      v39 = sub_1D23D7C84(v36, v38, &v66);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      if (v57)
      {
        v40 = 0x696665446C6C7566;
      }

      else
      {
        v40 = 0x69616E626D756874;
      }

      if (v57)
      {
        v41 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v41 = 0xE90000000000006CLL;
      }

      v42 = sub_1D23D7C84(v40, v41, &v66);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1D226E000, v29, v30, "Asset unavailable with id: %s, type: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v35, -1, -1);
      MEMORY[0x1D38A3520](v34, -1, -1);

      v43 = v60;
      v44 = v64;
    }

    else
    {

      v43 = v32;
      v44 = v33;
    }

    v17(v43, v44);
    v56 = *(v1 + 320);
    v58 = *(v1 + 520);
    v48 = *(v1 + 248);
    v61 = *(v1 + 240);
    v65 = *(v1 + 312);
    v49 = swift_task_alloc();
    v50 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
    *v49 = v50;
    v49[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v1 + 136) = v48;
    sub_1D2583618();
    sub_1D28719E8();

    *(v1 + 144) = v48;
    v51 = swift_task_alloc();
    *v51 = v50;
    v51[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    v52 = *(*v48 + 192);
    swift_beginAccess();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v48 + v52);
    *(v48 + v52) = 0x8000000000000000;
    sub_1D24E8AB8(1, v58 & 1, v53);
    *(v48 + v52) = v66;
    swift_endAccess();
    *(v1 + 152) = v48;
    v54 = swift_task_alloc();
    *v54 = v50;
    v54[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    (*(v56 + 56))(v61, 1, 1, v65);

    v55 = *(v1 + 8);

    return v55();
  }
}

uint64_t sub_1D270E8BC()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_1D270F104;
  }

  else
  {
    v5 = sub_1D270EBB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270EA38()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_1D270FE64;
  }

  else
  {
    v5 = sub_1D270F90C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270EBB4()
{
  v41 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  if (v5)
  {
    v34 = *(v0 + 520);
    v38 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315394;
    v36 = v6;
    sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D28795C8();
    v13 = v12;

    v14 = sub_1D23D7C84(v11, v13, &v40);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    if (v34)
    {
      v15 = 0x696665446C6C7566;
    }

    else
    {
      v15 = 0x69616E626D756874;
    }

    if (v34)
    {
      v16 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v16 = 0xE90000000000006CLL;
    }

    v17 = sub_1D23D7C84(v15, v16, &v40);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    v36(v38, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v18 = *(v0 + 464);
  v19 = *(v0 + 440);
  v32 = *(v0 + 344);
  v33 = *(v0 + 320);
  v28 = *(v0 + 296);
  v29 = *(v0 + 288);
  v30 = *(v0 + 304);
  v31 = *(v0 + 280);
  v39 = *(v0 + 520);
  v20 = *(v0 + 248);
  v35 = *(v0 + 312);
  v37 = *(v0 + 240);
  v21 = swift_task_alloc();
  *v21 = v19;
  v21[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 216) = v20;
  sub_1D28719E8();

  *(v0 + 224) = v20;
  v22 = swift_task_alloc();
  *v22 = v19;
  v22[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v20 + v18);
  *(v20 + v18) = 0x8000000000000000;
  sub_1D24E8AB8(0, v39 & 1, isUniquelyReferenced_nonNull_native);
  *(v20 + v18) = v40;
  swift_endAccess();
  *(v0 + 232) = v20;
  v24 = swift_task_alloc();
  *v24 = v19;
  v24[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D28719F8();

  (*(v28 + 16))(v30, v20 + *(*v20 + 160), v29);
  sub_1D239A330(v32, v31);
  v25 = *(v33 + 56);
  v25(v31, 0, 1, v35);
  sub_1D270BBA0(v31, v30, v39 & 1);
  sub_1D23EEBD4(v32, v37);
  v25(v37, 0, 1, v35);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D270F104()
{
  v61 = v0;
  v1 = *(v0 + 488);

  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 432);
    v7 = *(v0 + 376);
    v8 = *(v0 + 352);
    if (v5)
    {
      v54 = *(v0 + 520);
      v59 = *(v0 + 376);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v60 = v10;
      *v9 = 136315394;
      v57 = v6;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v11 = sub_1D28795C8();
      v13 = v12;

      v14 = sub_1D23D7C84(v11, v13, &v60);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      if (v54)
      {
        v15 = 0x696665446C6C7566;
      }

      else
      {
        v15 = 0x69616E626D756874;
      }

      if (v54)
      {
        v16 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v16 = 0xE90000000000006CLL;
      }

      v17 = sub_1D23D7C84(v15, v16, &v60);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v10, -1, -1);
      MEMORY[0x1D38A3520](v9, -1, -1);

      v57(v59, v8);
    }

    else
    {

      v6(v7, v8);
    }

    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v38 = *(v0 + 256);
    (*(*(v0 + 320) + 56))(*(v0 + 240), 1, 1, *(v0 + 312));
    (*(v37 + 8))(v36, v38);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v18 = v1;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 432);
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    if (v21)
    {
      v48 = *(v0 + 520);
      v25 = swift_slowAlloc();
      v55 = v24;
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v25 = 136315650;
      v52 = v22;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = sub_1D28795C8();
      v49 = v23;
      v29 = v28;

      v30 = sub_1D23D7C84(v27, v29, &v60);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      if (v48)
      {
        v31 = 0x696665446C6C7566;
      }

      else
      {
        v31 = 0x69616E626D756874;
      }

      if (v48)
      {
        v32 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v32 = 0xE90000000000006CLL;
      }

      v33 = sub_1D23D7C84(v31, v32, &v60);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2112;
      v34 = v1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v35;
      *v26 = v35;
      _os_log_impl(&dword_1D226E000, v19, v20, "Image request failed with id: %s, type: %s, error: %@", v25, 0x20u);
      sub_1D22BD238(v26, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v50, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);

      v52(v49, v55);
    }

    else
    {

      v22(v23, v24);
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 440);
    v56 = *(v0 + 320);
    v58 = *(v0 + 312);
    v51 = *(v0 + 520);
    v41 = *(v0 + 248);
    v53 = *(v0 + 240);
    v42 = swift_task_alloc();
    *v42 = v40;
    v42[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v0 + 192) = v41;
    sub_1D28719E8();

    *(v0 + 200) = v41;
    v43 = swift_task_alloc();
    *v43 = v40;
    v43[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v41 + v39);
    *(v41 + v39) = 0x8000000000000000;
    sub_1D24E8AB8(3, v51 & 1, isUniquelyReferenced_nonNull_native);
    *(v41 + v39) = v60;
    swift_endAccess();
    *(v0 + 208) = v41;
    v45 = swift_task_alloc();
    *v45 = v40;
    v45[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    (*(v56 + 56))(v53, 1, 1, v58);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1D270F90C()
{
  v41 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 344);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  if (v5)
  {
    v34 = *(v0 + 520);
    v38 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315394;
    v36 = v6;
    sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D28795C8();
    v13 = v12;

    v14 = sub_1D23D7C84(v11, v13, &v40);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    if (v34)
    {
      v15 = 0x696665446C6C7566;
    }

    else
    {
      v15 = 0x69616E626D756874;
    }

    if (v34)
    {
      v16 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v16 = 0xE90000000000006CLL;
    }

    v17 = sub_1D23D7C84(v15, v16, &v40);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    v36(v38, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v18 = *(v0 + 464);
  v19 = *(v0 + 440);
  v32 = *(v0 + 344);
  v33 = *(v0 + 320);
  v28 = *(v0 + 296);
  v29 = *(v0 + 288);
  v30 = *(v0 + 304);
  v31 = *(v0 + 280);
  v39 = *(v0 + 520);
  v20 = *(v0 + 248);
  v35 = *(v0 + 312);
  v37 = *(v0 + 240);
  v21 = swift_task_alloc();
  *v21 = v19;
  v21[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 216) = v20;
  sub_1D28719E8();

  *(v0 + 224) = v20;
  v22 = swift_task_alloc();
  *v22 = v19;
  v22[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v20 + v18);
  *(v20 + v18) = 0x8000000000000000;
  sub_1D24E8AB8(0, v39 & 1, isUniquelyReferenced_nonNull_native);
  *(v20 + v18) = v40;
  swift_endAccess();
  *(v0 + 232) = v20;
  v24 = swift_task_alloc();
  *v24 = v19;
  v24[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D28719F8();

  (*(v28 + 16))(v30, v20 + *(*v20 + 160), v29);
  sub_1D239A330(v32, v31);
  v25 = *(v33 + 56);
  v25(v31, 0, 1, v35);
  sub_1D270BBA0(v31, v30, v39 & 1);
  sub_1D23EEBD4(v32, v37);
  v25(v37, 0, 1, v35);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D270FE64()
{
  v61 = v0;
  v1 = *(v0 + 512);

  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 432);
    v7 = *(v0 + 376);
    v8 = *(v0 + 352);
    if (v5)
    {
      v54 = *(v0 + 520);
      v59 = *(v0 + 376);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v60 = v10;
      *v9 = 136315394;
      v57 = v6;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v11 = sub_1D28795C8();
      v13 = v12;

      v14 = sub_1D23D7C84(v11, v13, &v60);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      if (v54)
      {
        v15 = 0x696665446C6C7566;
      }

      else
      {
        v15 = 0x69616E626D756874;
      }

      if (v54)
      {
        v16 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v16 = 0xE90000000000006CLL;
      }

      v17 = sub_1D23D7C84(v15, v16, &v60);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v10, -1, -1);
      MEMORY[0x1D38A3520](v9, -1, -1);

      v57(v59, v8);
    }

    else
    {

      v6(v7, v8);
    }

    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v38 = *(v0 + 256);
    (*(*(v0 + 320) + 56))(*(v0 + 240), 1, 1, *(v0 + 312));
    (*(v37 + 8))(v36, v38);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v18 = v1;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 432);
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    if (v21)
    {
      v48 = *(v0 + 520);
      v25 = swift_slowAlloc();
      v55 = v24;
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v25 = 136315650;
      v52 = v22;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = sub_1D28795C8();
      v49 = v23;
      v29 = v28;

      v30 = sub_1D23D7C84(v27, v29, &v60);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      if (v48)
      {
        v31 = 0x696665446C6C7566;
      }

      else
      {
        v31 = 0x69616E626D756874;
      }

      if (v48)
      {
        v32 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v32 = 0xE90000000000006CLL;
      }

      v33 = sub_1D23D7C84(v31, v32, &v60);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2112;
      v34 = v1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v35;
      *v26 = v35;
      _os_log_impl(&dword_1D226E000, v19, v20, "Image request failed with id: %s, type: %s, error: %@", v25, 0x20u);
      sub_1D22BD238(v26, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v50, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);

      v52(v49, v55);
    }

    else
    {

      v22(v23, v24);
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 440);
    v56 = *(v0 + 320);
    v58 = *(v0 + 312);
    v51 = *(v0 + 520);
    v41 = *(v0 + 248);
    v53 = *(v0 + 240);
    v42 = swift_task_alloc();
    *v42 = v40;
    v42[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v0 + 192) = v41;
    sub_1D28719E8();

    *(v0 + 200) = v41;
    v43 = swift_task_alloc();
    *v43 = v40;
    v43[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v41 + v39);
    *(v41 + v39) = 0x8000000000000000;
    sub_1D24E8AB8(3, v51 & 1, isUniquelyReferenced_nonNull_native);
    *(v41 + v39) = v60;
    swift_endAccess();
    *(v0 + 208) = v41;
    v45 = swift_task_alloc();
    *v45 = v40;
    v45[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    (*(v56 + 56))(v53, 1, 1, v58);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1D271066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v6 = sub_1D2871818();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C00, &qword_1D28A11B0);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08, &unk_1D28A1180);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_1D28784F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[15] = v8;
  v4[16] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D2710818, v8, v10);
}

uint64_t sub_1D2710818()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = (v0[6] + *(*v0[6] + 104));
  os_unfair_lock_lock(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668, &unk_1D289A670);
  sub_1D22BD1D0(v4 + *(v5 + 28), v3, &qword_1EC6E0C00, &qword_1D28A11B0);
  os_unfair_lock_unlock(v4);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[9];
    v7 = v0[6];
    sub_1D22BD238(v0[10], &qword_1EC6E0C00, &qword_1D28A11B0);
    sub_1D2871808();
    v8 = swift_task_alloc();
    v0[17] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    v0[19] = v10;
    v11 = type metadata accessor for PlaygroundImage(0);
    *v10 = v0;
    v10[1] = sub_1D2710B2C;
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return MEMORY[0x1EEE6DE18](v14, &unk_1D28A11C0, v8, sub_1D2719DC0, v9, v12, v13, v11);
  }

  else
  {
    v15 = v0[13];
    v16 = v0[14];
    sub_1D22EC9BC(v0[10], v16, &qword_1EC6DAE08, &unk_1D28A1180);
    sub_1D22BD1D0(v16, v15, &qword_1EC6DAE08, &unk_1D28A1180);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[13];
    v19 = v0[14];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      swift_willThrowTypedImpl();
      sub_1D22BD238(v19, &qword_1EC6DAE08, &unk_1D28A1180);
    }

    else
    {
      v21 = v0[3];
      sub_1D22BD238(v0[14], &qword_1EC6DAE08, &unk_1D28A1180);
      sub_1D23EEBD4(v18, v21);
    }

    v20 = v0[1];

    return v20();
  }
}